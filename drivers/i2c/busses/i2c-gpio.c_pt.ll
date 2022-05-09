; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-gpio.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-gpio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.atomic_t = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.i2c_gpio_private_data = type { ptr, ptr, %struct.i2c_adapter, %struct.i2c_algo_bit_data, %struct.i2c_gpio_platform_data, ptr, %struct.completion, i64 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.i2c_gpio_platform_data = type { i32, i32, i8 }
%struct.i2c_lock_operations = type { ptr, ptr, ptr }

@__initcall__kmod_i2c_gpio__290_513_i2c_gpio_init4 = internal global ptr @i2c_gpio_init, section ".initcall4.init", align 4
@i2c_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @i2c_gpio_probe, ptr @i2c_gpio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @i2c_gpio_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_i2c_gpio_exit = internal global ptr @i2c_gpio_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [43 x i8] c"i2c_gpio.author=Haavard Skinnemoen (Atmel)\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [64 x i8] c"i2c_gpio.description=Platform-independent bitbanging I2C driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [42 x i8] c"i2c_gpio.file=drivers/i2c/busses/i2c-gpio\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [24 x i8] c"i2c_gpio.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias295 = internal constant [33 x i8] c"i2c_gpio.alias=platform:i2c-gpio\00", section ".modinfo", align 1
@i2c_gpio_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 509, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013i2c-gpio: probe failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c_gpio_init\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/i2c/busses/i2c-gpio.c\00", [34 x i8] zeroinitializer }, align 32
@i2c_gpio_init._entry_ptr = internal global ptr @i2c_gpio_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c-gpio\00", [23 x i8] zeroinitializer }, align 32
@i2c_gpio_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"i2c-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sda\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"scl\00", [28 x i8] zeroinitializer }, align 32
@i2c_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 412, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Slow GPIO pins might wreak havoc into I2C/SMBus bus timing\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"i2c_gpio_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@i2c_gpio_probe._entry_ptr = internal global ptr @i2c_gpio_probe._entry, section ".printk_index", align 4
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2c-gpio%d\00", [21 x i8] zeroinitializer }, align 32
@i2c_gpio_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.2, i32 463, ptr @.str.13, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"using lines %u (SDA) and %u (SCL%s)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@i2c_gpio_probe._entry_ptr.14 = internal global ptr @i2c_gpio_probe._entry.11, section ".printk_index", align 4
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c", no clock stretching\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"i2c-gpio,delay-us\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"i2c-gpio,timeout-ms\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"i2c-gpio,sda-open-drain\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"i2c-gpio,scl-open-drain\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"i2c-gpio,scl-output-only\00", [39 x i8] zeroinitializer }, align 32
@i2c_gpio_get_desc.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 82, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c_gpio\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"i2c_gpio_get_desc\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"got GPIO from name %s\0A\00", [41 x i8] zeroinitializer }, align 32
@i2c_gpio_get_desc.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.23, ptr @.str.2, ptr @.str.25, i8 0, i8 84, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"got GPIO from index %u\0A\00", [40 x i8] zeroinitializer }, align 32
@i2c_gpio_get_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.23, ptr @.str.2, i32 352, ptr @.str.27, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"error trying to get descriptor: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@i2c_gpio_get_desc._entry_ptr = internal global ptr @i2c_gpio_get_desc._entry, section ".printk_index", align 4
@i2c_gpio_debug_dir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"i2c-fault-injector\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"incomplete_address_phase\00", [39 x i8] zeroinitializer }, align 32
@fops_incomplete_addr_phase = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_incomplete_addr_phase_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"incomplete_write_byte\00", [42 x i8] zeroinitializer }, align 32
@fops_incomplete_write_byte = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_incomplete_write_byte_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"inject_panic\00", [19 x i8] zeroinitializer }, align 32
@fops_inject_panic = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_inject_panic_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lose_arbitration\00", [47 x i8] zeroinitializer }, align 32
@fops_lose_arbitration = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_lose_arbitration_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@fops_scl = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_scl_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@fops_sda = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_sda_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"i2c_gpio_fault_injector_scl_irq\00", [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"I2C fault injector induced panic\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4294966779, i64 4294967274, i64 4294967294]
@___asan_gen_.37 = private unnamed_addr constant [16 x i8] c"i2c_gpio_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 494, i32 31 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 509, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 496, i32 11 }
@___asan_gen_.55 = private unnamed_addr constant [16 x i8] c"i2c_gpio_dt_ids\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 486, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 399, i32 37 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 407, i32 37 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 412, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 441, i32 44 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 460, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 308, i32 27 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 310, i32 32 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 314, i32 29 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 316, i32 29 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 318, i32 29 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 331, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 337, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 352, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [19 x i8] c"i2c_gpio_debug_dir\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 75, i32 23 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 267, i32 43 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 278, i32 29 }
@___asan_gen_.142 = private unnamed_addr constant [27 x i8] c"fops_incomplete_addr_phase\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 280, i32 29 }
@___asan_gen_.148 = private unnamed_addr constant [27 x i8] c"fops_incomplete_write_byte\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 165, i32 1 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 283, i32 30 }
@___asan_gen_.154 = private unnamed_addr constant [18 x i8] c"fops_inject_panic\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 255, i32 1 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 285, i32 30 }
@___asan_gen_.160 = private unnamed_addr constant [22 x i8] c"fops_lose_arbitration\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 229, i32 1 }
@___asan_gen_.163 = private unnamed_addr constant [9 x i8] c"fops_scl\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 103, i32 1 }
@___asan_gen_.166 = private unnamed_addr constant [9 x i8] c"fops_sda\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 104, i32 1 }
@___asan_gen_.169 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 87, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 146, i32 1 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 184, i32 6 }
@___asan_gen_.181 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.182 = private constant [33 x i8] c"../drivers/i2c/busses/i2c-gpio.c\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 236, i32 8 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_alias295, ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_i2c_gpio_exit, ptr @__initcall__kmod_i2c_gpio__290_513_i2c_gpio_init4, ptr @i2c_gpio_exit, ptr @i2c_gpio_get_desc._entry, ptr @i2c_gpio_get_desc._entry_ptr, ptr @i2c_gpio_init._entry, ptr @i2c_gpio_init._entry_ptr, ptr @i2c_gpio_probe._entry, ptr @i2c_gpio_probe._entry.11, ptr @i2c_gpio_probe._entry_ptr, ptr @i2c_gpio_probe._entry_ptr.14, ptr @i2c_gpio_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @i2c_gpio_dt_ids, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @i2c_gpio_debug_dir, ptr @.str.28, ptr @.str.29, ptr @fops_incomplete_addr_phase, ptr @.str.30, ptr @fops_incomplete_write_byte, ptr @.str.31, ptr @fops_inject_panic, ptr @.str.32, ptr @fops_lose_arbitration, ptr @fops_scl, ptr @fops_sda, ptr @init_completion.__key, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_gpio_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_gpio_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_gpio_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_gpio_get_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_gpio_debug_dir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_incomplete_addr_phase to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_incomplete_write_byte to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_inject_panic to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_lose_arbitration to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_scl to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_sda to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_gpio_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @i2c_gpio_driver, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @i2c_gpio_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @i2c_gpio_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_gpio_probe(ptr noundef %pdev) #4 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1488, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %adap2 = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %call.i, i32 0, i32 2
  %bit_data3 = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %call.i, i32 0, i32 3
  %pdata4 = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %call.i, i32 0, i32 4
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #9
  %2 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg.i, align 4, !annotation !109
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.17, ptr noundef %pdata4, i32 noundef 1, i32 noundef 0) #9
  %call.i.i28.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.18, ptr noundef nonnull %reg.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i28.i)
  %tobool.not.i = icmp sgt i32 %call.i.i28.i, -1
  br i1 %tobool.not.i, label %if.else.i.i, label %if.then6.of_i2c_gpio_get_props.exit_crit_edge

if.then6.of_i2c_gpio_get_props.exit_crit_edge:    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %of_i2c_gpio_get_props.exit

if.else.i.i:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg.i, align 4
  %call2.i.i = call i32 @__msecs_to_jiffies(i32 noundef %4) #9
  %timeout.i = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %call.i, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call2.i.i, ptr %timeout.i, align 4
  br label %of_i2c_gpio_get_props.exit

of_i2c_gpio_get_props.exit:                       ; preds = %if.else.i.i, %if.then6.of_i2c_gpio_get_props.exit_crit_edge
  %call.i.i = call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.19, ptr noundef null) #9
  %tobool.i.not.i = icmp eq ptr %call.i.i, null
  %sda_is_open_drain.i = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %call.i, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %sda_is_open_drain.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %sda_is_open_drain.i, align 4
  %bf.shl.i = select i1 %tobool.i.not.i, i8 0, i8 -128
  %bf.clear.i = and i8 %bf.load.i, 127
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %sda_is_open_drain.i, align 4
  %call.i29.i = call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.20, ptr noundef null) #9
  %tobool.i30.not.i = icmp eq ptr %call.i29.i, null
  %7 = ptrtoint ptr %sda_is_open_drain.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load6.i = load i8, ptr %sda_is_open_drain.i, align 4
  %bf.shl8.i = select i1 %tobool.i30.not.i, i8 0, i8 64
  %bf.clear9.i = and i8 %bf.load6.i, -65
  %bf.set10.i = or i8 %bf.clear9.i, %bf.shl8.i
  store i8 %bf.set10.i, ptr %sda_is_open_drain.i, align 4
  %call.i31.i = call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.21, ptr noundef null) #9
  %tobool.i32.not.i = icmp eq ptr %call.i31.i, null
  %8 = ptrtoint ptr %sda_is_open_drain.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load14.i = load i8, ptr %sda_is_open_drain.i, align 4
  %bf.shl16.i = select i1 %tobool.i32.not.i, i8 0, i8 32
  %bf.clear17.i = and i8 %bf.load14.i, -33
  %bf.set18.i = or i8 %bf.clear17.i, %bf.shl16.i
  store i8 %bf.set18.i, ptr %sda_is_open_drain.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #9
  br label %if.end12

if.else:                                          ; preds = %if.end
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %9 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %platform_data.i, align 8
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %if.else.if.end12_crit_edge, label %if.then9

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %11 = call ptr @memcpy(ptr %pdata4, ptr %10, i32 12)
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.else.if.end12_crit_edge, %of_i2c_gpio_get_props.exit
  %sda_is_open_drain = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %call.i, i32 0, i32 4, i32 2
  %12 = ptrtoint ptr %sda_is_open_drain to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %sda_is_open_drain, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool13.not = icmp sgt i8 %bf.load, -1
  %. = select i1 %tobool13.not, i32 15, i32 7
  %call17 = call fastcc ptr @i2c_gpio_get_desc(ptr noundef %dev1, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %.)
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call17, ptr %call.i, align 8
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %call17 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end12
  %15 = ptrtoint ptr %sda_is_open_drain to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load24 = load i8, ptr %sda_is_open_drain, align 4
  %16 = and i8 %bf.load24, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool27.not = icmp eq i8 %16, 0
  %.179 = select i1 %tobool27.not, i32 15, i32 7
  %call31 = call fastcc ptr @i2c_gpio_get_desc(ptr noundef %dev1, ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef %.179)
  %scl = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %call.i, i32 0, i32 1
  %17 = ptrtoint ptr %scl to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call31, ptr %scl, align 4
  %cmp.i181 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i181, label %if.then34, label %if.end37

if.then34:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %call31 to i32
  br label %cleanup

if.end37:                                         ; preds = %if.end23
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 8
  %call39 = call i32 @gpiod_cansleep(ptr noundef %20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %lor.lhs.false, label %if.end37.do.end_crit_edge

if.end37.do.end_crit_edge:                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end37
  %21 = ptrtoint ptr %scl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %scl, align 4
  %call42 = call i32 @gpiod_cansleep(ptr noundef %22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.else45, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end37.do.end_crit_edge
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.6) #12
  br label %if.end46

if.else45:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %can_do_atomic = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %call.i, i32 0, i32 3, i32 9
  %23 = ptrtoint ptr %can_do_atomic to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %can_do_atomic, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.else45, %do.end
  %setsda = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %call.i, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %setsda to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @i2c_gpio_setsda_val, ptr %setsda, align 4
  %setscl = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %call.i, i32 0, i32 3, i32 2
  %25 = ptrtoint ptr %setscl to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @i2c_gpio_setscl_val, ptr %setscl, align 4
  %26 = ptrtoint ptr %sda_is_open_drain to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load47 = load i8, ptr %sda_is_open_drain, align 4
  %27 = and i8 %bf.load47, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool51.not = icmp eq i8 %27, 0
  br i1 %tobool51.not, label %if.then52, label %if.end46.if.end53_crit_edge

if.end46.if.end53_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then52:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  %getscl = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %call.i, i32 0, i32 3, i32 4
  %28 = ptrtoint ptr %getscl to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @i2c_gpio_getscl, ptr %getscl, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.end46.if.end53_crit_edge
  %getsda = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %call.i, i32 0, i32 3, i32 3
  %29 = ptrtoint ptr %getsda to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @i2c_gpio_getsda, ptr %getsda, align 4
  %30 = ptrtoint ptr %pdata4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pdata4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool54.not = icmp eq i32 %31, 0
  br i1 %tobool54.not, label %if.else58, label %if.then55

if.then55:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  %udelay57 = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %call.i, i32 0, i32 3, i32 7
  %32 = ptrtoint ptr %udelay57 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %udelay57, align 4
  br label %if.end70

if.else58:                                        ; preds = %if.end53
  %33 = ptrtoint ptr %sda_is_open_drain to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load60 = load i8, ptr %sda_is_open_drain, align 4
  %34 = and i8 %bf.load60, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool64.not = icmp eq i8 %34, 0
  %udelay68 = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %call.i, i32 0, i32 3, i32 7
  br i1 %tobool64.not, label %if.else67, label %if.then65

if.then65:                                        ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %udelay68 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 50, ptr %udelay68, align 4
  br label %if.end70

if.else67:                                        ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %udelay68 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 5, ptr %udelay68, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.else67, %if.then65, %if.then55
  %timeout = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %call.i, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool71.not = icmp eq i32 %38, 0
  %spec.select = select i1 %tobool71.not, i32 10, i32 %38
  %39 = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %call.i, i32 0, i32 3, i32 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %spec.select, ptr %39, align 4
  %41 = ptrtoint ptr %bit_data3 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i, ptr %bit_data3, align 4
  %42 = ptrtoint ptr %adap2 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %adap2, align 8
  %name83 = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %call.i, i32 0, i32 2, i32 12
  br i1 %tobool5.not, label %if.else82, label %if.then79

if.then79:                                        ; preds = %if.end70
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %43 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i182 = icmp eq ptr %44, null
  br i1 %tobool.not.i182, label %if.end.i, label %if.then79.dev_name.exit_crit_edge

if.then79.dev_name.exit_crit_edge:                ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then79.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %46, %if.end.i ], [ %44, %if.then79.dev_name.exit_crit_edge ]
  %call81 = call i32 @strlcpy(ptr noundef %name83, ptr noundef %retval.0.i, i32 noundef 48) #9
  br label %if.end86

if.else82:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %47 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %id, align 4
  %call85 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name83, i32 noundef 48, ptr noundef nonnull @.str.10, i32 noundef %48)
  br label %if.end86

if.end86:                                         ; preds = %if.else82, %dev_name.exit
  %algo_data = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %call.i, i32 0, i32 2, i32 3
  %49 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %bit_data3, ptr %algo_data, align 4
  %class = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %call.i, i32 0, i32 2, i32 1
  %50 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 129, ptr %class, align 4
  %parent = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %call.i, i32 0, i32 2, i32 9, i32 1
  %51 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %dev1, ptr %parent, align 8
  %of_node89 = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %call.i, i32 0, i32 2, i32 9, i32 27
  %52 = ptrtoint ptr %of_node89 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %1, ptr %of_node89, align 8
  %id90 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %53 = ptrtoint ptr %id90 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %id90, align 4
  %nr = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %call.i, i32 0, i32 2, i32 11
  %55 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %nr, align 4
  %call91 = call i32 @i2c_bit_add_numbered_bus(ptr noundef %adap2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end94, label %if.end86.cleanup_crit_edge

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end94:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %56 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %57 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %call.i, align 8
  %call99 = call i32 @desc_to_gpio(ptr noundef %58) #9
  %59 = ptrtoint ptr %scl to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %scl, align 4
  %call101 = call i32 @desc_to_gpio(ptr noundef %60) #9
  %61 = ptrtoint ptr %sda_is_open_drain to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load103 = load i8, ptr %sda_is_open_drain, align 4
  %62 = and i8 %bf.load103, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool107.not = icmp eq i8 %62, 0
  %cond = select i1 %tobool107.not, ptr @.str.16, ptr @.str.15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %call99, i32 noundef %call101, ptr noundef nonnull %cond) #12
  call fastcc void @i2c_gpio_fault_injector_init(ptr noundef %pdev)
  br label %cleanup

cleanup:                                          ; preds = %if.end94, %if.end86.cleanup_crit_edge, %if.then34, %if.then20, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %if.then20 ], [ %18, %if.then34 ], [ 0, %if.end94 ], [ -12, %entry.cleanup_crit_edge ], [ %call91, %if.end86.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_gpio_remove(ptr nocapture noundef readonly %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %debug_dir.i = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %debug_dir.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debug_dir.i, align 4
  tail call void @debugfs_remove(ptr noundef %3) #9
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  %adap1 = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %5, i32 0, i32 2
  tail call void @i2c_del_adapter(ptr noundef %adap1) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @i2c_gpio_get_desc(ptr noundef %dev, ptr noundef %con_id, i32 noundef %index, i32 noundef %gflags) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef %con_id, i32 noundef %gflags) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_gpio_get_desc.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_gpio_get_desc, %cleanup)) #9
          to label %if.then6 [label %cleanup], !srcloc !110

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_gpio_get_desc.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef %con_id) #9
  br label %cleanup

if.end7:                                          ; preds = %entry
  %call8 = tail call ptr @devm_gpiod_get_index(ptr noundef %dev, ptr noundef null, i32 noundef %index, i32 noundef %gflags) #9
  %cmp.i64 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i64, label %if.end29, label %do.body11

do.body11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_gpio_get_desc.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_gpio_get_desc, %cleanup)) #9
          to label %if.then25 [label %cleanup], !srcloc !110

if.then25:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_gpio_get_desc.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %index) #9
  br label %cleanup

if.end29:                                         ; preds = %if.end7
  %magicptr = ptrtoint ptr %call8 to i32
  %0 = zext i32 %magicptr to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %magicptr, label %do.end43 [
    i32 -22, label %if.end29.cleanup_crit_edge
    i32 -2, label %if.end29.cleanup_crit_edge71
    i32 -517, label %if.end29.cleanup_crit_edge72
  ]

if.end29.cleanup_crit_edge72:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29.cleanup_crit_edge71:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end43:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %call8 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %1) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end43, %if.end29.cleanup_crit_edge, %if.end29.cleanup_crit_edge71, %if.end29.cleanup_crit_edge72, %if.then25, %do.body11, %if.then6, %do.body
  %retval.0 = phi ptr [ %call, %if.then6 ], [ %call8, %if.then25 ], [ %call8, %do.end43 ], [ %call, %do.body ], [ %call8, %do.body11 ], [ inttoptr (i32 -517 to ptr), %if.end29.cleanup_crit_edge ], [ inttoptr (i32 -517 to ptr), %if.end29.cleanup_crit_edge71 ], [ inttoptr (i32 -517 to ptr), %if.end29.cleanup_crit_edge72 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i2c_gpio_setsda_val(ptr nocapture noundef readonly %data, i32 noundef %state) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  tail call void @gpiod_set_value_cansleep(ptr noundef %1, i32 noundef %state) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i2c_gpio_setscl_val(ptr nocapture noundef readonly %data, i32 noundef %state) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %scl = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %scl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scl, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %1, i32 noundef %state) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_gpio_getscl(ptr nocapture noundef readonly %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %scl = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %scl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scl, align 4
  %call = tail call i32 @gpiod_get_value_cansleep(ptr noundef %1) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_gpio_getsda(ptr nocapture noundef readonly %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %call = tail call i32 @gpiod_get_value_cansleep(ptr noundef %1) #9
  ret i32 %call
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_bit_add_numbered_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @desc_to_gpio(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i2c_gpio_fault_injector_init(ptr nocapture noundef readonly %pdev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = load ptr, ptr @i2c_gpio_debug_dir, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then:                                          ; preds = %entry
  %call1 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.28, ptr noundef null) #9
  store ptr %call1, ptr @i2c_gpio_debug_dir, align 4
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 8
  %5 = load ptr, ptr @i2c_gpio_debug_dir, align 4
  %call5 = tail call ptr @debugfs_create_dir(ptr noundef %4, ptr noundef %5) #9
  %debug_dir = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %debug_dir to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5, ptr %debug_dir, align 4
  %tobool7.not = icmp eq ptr %call5, null
  br i1 %tobool7.not, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %scl_irq_completion = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %scl_irq_completion to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %scl_irq_completion, align 4
  %wait.i = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %1, i32 0, i32 6, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @init_completion.__key) #9
  %8 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %debug_dir, align 4
  %call11 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.29, i16 noundef zeroext 128, ptr noundef %9, ptr noundef %1, ptr noundef nonnull @fops_incomplete_addr_phase) #9
  %10 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %debug_dir, align 4
  %call13 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.30, i16 noundef zeroext 128, ptr noundef %11, ptr noundef %1, ptr noundef nonnull @fops_incomplete_write_byte) #9
  %getscl = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %1, i32 0, i32 3, i32 4
  %12 = ptrtoint ptr %getscl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %getscl, align 8
  %tobool14.not = icmp eq ptr %13, null
  br i1 %tobool14.not, label %if.end9.if.end20_crit_edge, label %if.then15

if.end9.if.end20_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %debug_dir, align 4
  %call17 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.31, i16 noundef zeroext 128, ptr noundef %15, ptr noundef %1, ptr noundef nonnull @fops_inject_panic) #9
  %16 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %debug_dir, align 4
  %call19 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.32, i16 noundef zeroext 128, ptr noundef %17, ptr noundef %1, ptr noundef nonnull @fops_lose_arbitration) #9
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %if.end9.if.end20_crit_edge
  %18 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %debug_dir, align 4
  %call22 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.5, i16 noundef zeroext 384, ptr noundef %19, ptr noundef %1, ptr noundef nonnull @fops_scl) #9
  %20 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %debug_dir, align 4
  %call24 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.4, i16 noundef zeroext 384, ptr noundef %21, ptr noundef %1, ptr noundef nonnull @fops_sda) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end4.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file_unsafe(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_incomplete_addr_phase_open(ptr noundef %inode, ptr noundef %file) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef null, ptr noundef nonnull @fops_incomplete_addr_phase_set, ptr noundef nonnull @.str.34) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_incomplete_addr_phase_set(ptr noundef %data, i64 noundef %addr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 127, i64 %addr)
  %cmp = icmp ugt i64 %addr, 127
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %addr.tr = trunc i64 %addr to i32
  %0 = shl nuw nsw i32 %addr.tr, 2
  %conv = or i32 %0, 3
  tail call fastcc void @i2c_gpio_incomplete_transfer(ptr noundef %data, i32 noundef %conv, i8 noundef zeroext 9)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i2c_gpio_incomplete_transfer(ptr noundef %priv, i32 noundef %pattern, i8 noundef zeroext %pattern_size) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_data1 = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %priv, i32 0, i32 3
  %adap = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %priv, i32 0, i32 2
  %lock_ops.i = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %priv, i32 0, i32 2, i32 4
  %0 = ptrtoint ptr %lock_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock_ops.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void %3(ptr noundef %adap, i32 noundef 1) #9
  %setsda = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %priv, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %setsda to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %setsda, align 4
  %6 = ptrtoint ptr %bit_data1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bit_data1, align 4
  tail call void %5(ptr noundef %7, i32 noundef 0) #9
  %udelay = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %priv, i32 0, i32 3, i32 7
  %8 = ptrtoint ptr %udelay to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %udelay, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %10(i32 noundef %9) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %pattern_size)
  %cmp895.not = icmp eq i8 %pattern_size, 0
  br i1 %cmp895.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %conv = zext i8 %pattern_size to i32
  %setscl = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %priv, i32 0, i32 3, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.096.in = phi i32 [ %conv, %for.body.lr.ph ], [ %i.096, %for.body.for.body_crit_edge ]
  %i.096 = add nsw i32 %i.096.in, -1
  %11 = ptrtoint ptr %setscl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %setscl, align 4
  %13 = ptrtoint ptr %bit_data1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bit_data1, align 4
  tail call void %12(ptr noundef %14, i32 noundef 0) #9
  %15 = ptrtoint ptr %udelay to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %udelay, align 4
  %div = sdiv i32 %16, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %17(i32 noundef %div) #9
  %18 = ptrtoint ptr %setsda to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %setsda, align 4
  %20 = ptrtoint ptr %bit_data1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bit_data1, align 4
  %shr = lshr i32 %pattern, %i.096
  %and = and i32 %shr, 1
  tail call void %19(ptr noundef %21, i32 noundef %and) #9
  %22 = ptrtoint ptr %udelay to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %udelay, align 4
  %add = add i32 %23, 1
  %div30 = sdiv i32 %add, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %24(i32 noundef %div30) #9
  %25 = ptrtoint ptr %setscl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %setscl, align 4
  %27 = ptrtoint ptr %bit_data1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bit_data1, align 4
  tail call void %26(ptr noundef %28, i32 noundef 1) #9
  %29 = ptrtoint ptr %udelay to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %udelay, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %31(i32 noundef %30) #9
  %cmp8 = icmp ugt i32 %i.096.in, 1
  br i1 %cmp8, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %32 = ptrtoint ptr %lock_ops.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %lock_ops.i, align 8
  %unlock_bus.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %unlock_bus.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %unlock_bus.i, align 4
  tail call void %35(ptr noundef %adap, i32 noundef 1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_incomplete_write_byte_open(ptr noundef %inode, ptr noundef %file) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef null, ptr noundef nonnull @fops_incomplete_write_byte_set, ptr noundef nonnull @.str.34) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_incomplete_write_byte_set(ptr noundef %data, i64 noundef %addr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 127, i64 %addr)
  %cmp = icmp ugt i64 %addr, 127
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %addr.tr = trunc i64 %addr to i32
  %0 = shl nuw nsw i32 %addr.tr, 11
  %or2 = or i32 %0, 513
  tail call fastcc void @i2c_gpio_incomplete_transfer(ptr noundef %data, i32 noundef %or2, i8 noundef zeroext 18)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_inject_panic_open(ptr noundef %inode, ptr noundef %file) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef null, ptr noundef nonnull @fops_inject_panic_set, ptr noundef nonnull @.str.34) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_inject_panic_set(ptr noundef %data, i64 noundef %duration) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 100000, i64 %duration)
  %cmp = icmp ugt i64 %duration, 100000
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %scl_irq_data = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %scl_irq_data to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %duration, ptr %scl_irq_data, align 8
  %call = tail call fastcc i32 @i2c_gpio_fi_act_on_scl_irq(ptr noundef %data, ptr noundef nonnull @inject_panic_irq)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_gpio_fi_act_on_scl_irq(ptr noundef %priv, ptr noundef %handler) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %scl = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %scl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scl, align 4
  %call = tail call i32 @gpiod_to_irq(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %adap = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %priv, i32 0, i32 2
  %lock_ops.i = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %priv, i32 0, i32 2, i32 4
  %2 = ptrtoint ptr %lock_ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock_ops.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void %5(ptr noundef %adap, i32 noundef 1) #9
  %6 = ptrtoint ptr %scl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %scl, align 4
  %call2 = tail call i32 @gpiod_direction_input(ptr noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.unlock_crit_edge

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end4:                                          ; preds = %if.end
  %scl_irq_completion = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %priv, i32 0, i32 6
  %8 = ptrtoint ptr %scl_irq_completion to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %scl_irq_completion, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %call, ptr noundef %handler, ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.35, ptr noundef %priv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.output_crit_edge

if.end4.output_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %output

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call i32 @wait_for_completion_interruptible(ptr noundef %scl_irq_completion) #9
  %call11 = tail call ptr @free_irq(i32 noundef %call, ptr noundef %priv) #9
  br label %output

output:                                           ; preds = %if.end8, %if.end4.output_crit_edge
  %9 = ptrtoint ptr %scl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %scl, align 4
  %call13 = tail call i32 @gpiod_direction_output(ptr noundef %10, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  %spec.select = select i1 %tobool14.not, i32 %call.i, i32 %call13
  br label %unlock

unlock:                                           ; preds = %output, %if.end.unlock_crit_edge
  %ret.0 = phi i32 [ %call2, %if.end.unlock_crit_edge ], [ %spec.select, %output ]
  %11 = ptrtoint ptr %lock_ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lock_ops.i, align 8
  %unlock_bus.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %unlock_bus.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %unlock_bus.i, align 4
  tail call void %14(ptr noundef %adap, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %unlock ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inject_panic_irq(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #7 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %scl_irq_data = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %dev_id, i32 0, i32 7
  %0 = ptrtoint ptr %scl_irq_data to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %scl_irq_data, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %conv6 = trunc i64 %1 to i32
  tail call void %2(i32 noundef %conv6) #9
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.36) #13
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_input(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_lose_arbitration_open(ptr noundef %inode, ptr noundef %file) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef null, ptr noundef nonnull @fops_lose_arbitration_set, ptr noundef nonnull @.str.34) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_lose_arbitration_set(ptr noundef %data, i64 noundef %duration) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 100000, i64 %duration)
  %cmp = icmp ugt i64 %duration, 100000
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %scl_irq_data = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %scl_irq_data to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %duration, ptr %scl_irq_data, align 8
  %call = tail call fastcc i32 @i2c_gpio_fi_act_on_scl_irq(ptr noundef %data, ptr noundef nonnull @lose_arbitration_irq)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lose_arbitration_irq(i32 noundef %irq, ptr noundef %dev_id) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_data = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %dev_id, i32 0, i32 3
  %setsda = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %dev_id, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %setsda to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %setsda, align 4
  %2 = ptrtoint ptr %bit_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bit_data, align 8
  tail call void %1(ptr noundef %3, i32 noundef 0) #9
  %scl_irq_data = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %dev_id, i32 0, i32 7
  %4 = ptrtoint ptr %scl_irq_data to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %scl_irq_data, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %conv7 = trunc i64 %5 to i32
  tail call void %6(i32 noundef %conv7) #9
  %7 = ptrtoint ptr %setsda to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %setsda, align 4
  %9 = ptrtoint ptr %bit_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bit_data, align 8
  tail call void %8(ptr noundef %10, i32 noundef 1) #9
  %scl_irq_completion = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %dev_id, i32 0, i32 6
  tail call void @complete(ptr noundef %scl_irq_completion) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_scl_open(ptr noundef %inode, ptr noundef %file) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @fops_scl_get, ptr noundef nonnull @fops_scl_set, ptr noundef nonnull @.str.34) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_scl_get(ptr noundef %data, ptr nocapture noundef writeonly %val) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adap = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %data, i32 0, i32 2
  %lock_ops.i = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %data, i32 0, i32 2, i32 4
  %0 = ptrtoint ptr %lock_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock_ops.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void %3(ptr noundef %adap, i32 noundef 1) #9
  %bit_data = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %data, i32 0, i32 3
  %getscl = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %data, i32 0, i32 3, i32 4
  %4 = ptrtoint ptr %getscl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %getscl, align 8
  %6 = ptrtoint ptr %bit_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bit_data, align 8
  %call = tail call i32 %5(ptr noundef %7) #9
  %conv = sext i32 %call to i64
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv, ptr %val, align 8
  %9 = ptrtoint ptr %lock_ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lock_ops.i, align 8
  %unlock_bus.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %unlock_bus.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %unlock_bus.i, align 4
  tail call void %12(ptr noundef %adap, i32 noundef 1) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_scl_set(ptr noundef %data, i64 noundef %val) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adap = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %data, i32 0, i32 2
  %lock_ops.i = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %data, i32 0, i32 2, i32 4
  %0 = ptrtoint ptr %lock_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock_ops.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void %3(ptr noundef %adap, i32 noundef 1) #9
  %bit_data = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %data, i32 0, i32 3
  %setscl = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %data, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %setscl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %setscl, align 8
  %6 = ptrtoint ptr %bit_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bit_data, align 8
  %conv = trunc i64 %val to i32
  tail call void %5(ptr noundef %7, i32 noundef %conv) #9
  %8 = ptrtoint ptr %lock_ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lock_ops.i, align 8
  %unlock_bus.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %unlock_bus.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %unlock_bus.i, align 4
  tail call void %11(ptr noundef %adap, i32 noundef 1) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_sda_open(ptr noundef %inode, ptr noundef %file) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @fops_sda_get, ptr noundef nonnull @fops_sda_set, ptr noundef nonnull @.str.34) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_sda_get(ptr noundef %data, ptr nocapture noundef writeonly %val) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adap = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %data, i32 0, i32 2
  %lock_ops.i = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %data, i32 0, i32 2, i32 4
  %0 = ptrtoint ptr %lock_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock_ops.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void %3(ptr noundef %adap, i32 noundef 1) #9
  %bit_data = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %data, i32 0, i32 3
  %getsda = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %data, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %getsda to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %getsda, align 4
  %6 = ptrtoint ptr %bit_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bit_data, align 8
  %call = tail call i32 %5(ptr noundef %7) #9
  %conv = sext i32 %call to i64
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv, ptr %val, align 8
  %9 = ptrtoint ptr %lock_ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lock_ops.i, align 8
  %unlock_bus.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %unlock_bus.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %unlock_bus.i, align 4
  tail call void %12(ptr noundef %adap, i32 noundef 1) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_sda_set(ptr noundef %data, i64 noundef %val) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adap = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %data, i32 0, i32 2
  %lock_ops.i = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %data, i32 0, i32 2, i32 4
  %0 = ptrtoint ptr %lock_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock_ops.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void %3(ptr noundef %adap, i32 noundef 1) #9
  %bit_data = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %data, i32 0, i32 3
  %setsda = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %data, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %setsda to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %setsda, align 4
  %6 = ptrtoint ptr %bit_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bit_data, align 8
  %conv = trunc i64 %val to i32
  tail call void %5(ptr noundef %7, i32 noundef %conv) #9
  %8 = ptrtoint ptr %lock_ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lock_ops.i, align 8
  %unlock_bus.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %unlock_bus.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %unlock_bus.i, align 4
  tail call void %11(ptr noundef %adap, i32 noundef 1) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !16, !17, !18, !19, !21, !23, !25, !27, !29, !30, !31, !32, !33, !34, !36, !38, !39, !40, !41, !42, !43, !45, !47, !49, !51, !53, !55, !56, !57, !58, !60, !61, !63, !64, !65, !66, !68, !70, !72, !74, !76, !78, !80, !81, !83, !84, !86, !88, !90, !92, !94, !96, !98}
!llvm.module.flags = !{!100, !101, !102, !103, !104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = !{ptr @__initcall__kmod_i2c_gpio__290_513_i2c_gpio_init4, !1, !"__initcall__kmod_i2c_gpio__290_513_i2c_gpio_init4", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-gpio.c", i32 513, i32 1}
!2 = !{ptr @__exitcall_i2c_gpio_exit, !3, !"__exitcall_i2c_gpio_exit", i1 false, i1 false}
!3 = !{!"../drivers/i2c/busses/i2c-gpio.c", i32 519, i32 1}
!4 = !{ptr @__UNIQUE_ID_author291, !5, !"__UNIQUE_ID_author291", i1 false, i1 false}
!5 = !{!"../drivers/i2c/busses/i2c-gpio.c", i32 521, i32 1}
!6 = !{ptr @__UNIQUE_ID_description292, !7, !"__UNIQUE_ID_description292", i1 false, i1 false}
!7 = !{!"../drivers/i2c/busses/i2c-gpio.c", i32 522, i32 1}
!8 = !{ptr @__UNIQUE_ID_file293, !9, !"__UNIQUE_ID_file293", i1 false, i1 false}
!9 = !{!"../drivers/i2c/busses/i2c-gpio.c", i32 523, i32 1}
!10 = !{ptr @__UNIQUE_ID_license294, !9, !"__UNIQUE_ID_license294", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_alias295, !12, !"__UNIQUE_ID_alias295", i1 false, i1 false}
!12 = !{!"../drivers/i2c/busses/i2c-gpio.c", i32 524, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/i2c/busses/i2c-gpio.c", i32 509, i32 3}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @i2c_gpio_init._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @i2c_gpio_init._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/i2c/busses/i2c-gpio.c", i32 496, i32 11}
!21 = !{ptr @i2c_gpio_driver, !22, !"i2c_gpio_driver", i1 false, i1 false}
!22 = !{!"../drivers/i2c/busses/i2c-gpio.c", i32 494, i32 31}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/i2c/busses/i2c-gpio.c", i32 399, i32 37}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/i2c/busses/i2c-gpio.c", i32 407, i32 37}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/i2c/busses/i2c-gpio.c", i32 412, i32 3}
!29 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @i2c_gpio_probe._entry, !28, !"_entry", i1 false, i1 false}
!33 = !{ptr @i2c_gpio_probe._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/i2c/busses/i2c-gpio.c", i32 441, i32 44}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/i2c/busses/i2c-gpio.c", i32 460, i32 2}
!38 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @i2c_gpio_probe._entry.11, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @i2c_gpio_probe._entry_ptr.14, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/i2c/busses/i2c-gpio.c", i32 308, i32 27}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/i2c/busses/i2c-gpio.c", i32 310, i32 32}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/i2c/busses/i2c-gpio.c", i32 314, i32 29}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/i2c/busses/i2c-gpio.c", i32 316, i32 29}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/i2c/busses/i2c-gpio.c", i32 318, i32 29}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/i2c/busses/i2c-gpio.c", i32 331, i32 3}
!55 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @i2c_gpio_get_desc.__UNIQUE_ID_ddebug288, !54, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/i2c/busses/i2c-gpio.c", i32 337, i32 3}
!60 = !{ptr @i2c_gpio_get_desc.__UNIQUE_ID_ddebug289, !59, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/i2c/busses/i2c-gpio.c", i32 352, i32 3}
!63 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @i2c_gpio_get_desc._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @i2c_gpio_get_desc._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/i2c/busses/i2c-gpio.c", i32 267, i32 43}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/i2c/busses/i2c-gpio.c", i32 278, i32 29}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/i2c/busses/i2c-gpio.c", i32 280, i32 29}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/i2c/busses/i2c-gpio.c", i32 283, i32 30}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/i2c/busses/i2c-gpio.c", i32 285, i32 30}
!76 = !{ptr @i2c_gpio_debug_dir, !77, !"i2c_gpio_debug_dir", i1 false, i1 false}
!77 = !{!"../drivers/i2c/busses/i2c-gpio.c", i32 75, i32 23}
!78 = !{ptr @init_completion.__key, !79, !"__key", i1 false, i1 false}
!79 = !{!"../include/linux/completion.h", i32 87, i32 2}
!80 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @fops_incomplete_addr_phase, !82, !"fops_incomplete_addr_phase", i1 false, i1 false}
!82 = !{!"../drivers/i2c/busses/i2c-gpio.c", i32 146, i32 1}
!83 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @fops_incomplete_write_byte, !85, !"fops_incomplete_write_byte", i1 false, i1 false}
!85 = !{!"../drivers/i2c/busses/i2c-gpio.c", i32 165, i32 1}
!86 = !{ptr @fops_inject_panic, !87, !"fops_inject_panic", i1 false, i1 false}
!87 = !{!"../drivers/i2c/busses/i2c-gpio.c", i32 255, i32 1}
!88 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/i2c/busses/i2c-gpio.c", i32 184, i32 6}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/i2c/busses/i2c-gpio.c", i32 236, i32 8}
!92 = !{ptr @fops_lose_arbitration, !93, !"fops_lose_arbitration", i1 false, i1 false}
!93 = !{!"../drivers/i2c/busses/i2c-gpio.c", i32 229, i32 1}
!94 = !{ptr @fops_scl, !95, !"fops_scl", i1 false, i1 false}
!95 = !{!"../drivers/i2c/busses/i2c-gpio.c", i32 103, i32 1}
!96 = !{ptr @fops_sda, !97, !"fops_sda", i1 false, i1 false}
!97 = !{!"../drivers/i2c/busses/i2c-gpio.c", i32 104, i32 1}
!98 = !{ptr @i2c_gpio_dt_ids, !99, !"i2c_gpio_dt_ids", i1 false, i1 false}
!99 = !{!"../drivers/i2c/busses/i2c-gpio.c", i32 486, i32 34}
!100 = !{i32 1, !"wchar_size", i32 2}
!101 = !{i32 1, !"min_enum_size", i32 4}
!102 = !{i32 8, !"branch-target-enforcement", i32 0}
!103 = !{i32 8, !"sign-return-address", i32 0}
!104 = !{i32 8, !"sign-return-address-all", i32 0}
!105 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!106 = !{i32 7, !"uwtable", i32 1}
!107 = !{i32 7, !"frame-pointer", i32 2}
!108 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!109 = !{!"auto-init"}
!110 = !{i64 2148327881, i64 2148327886, i64 2148327899, i64 2148327943, i64 2148327977, i64 2148327998}
