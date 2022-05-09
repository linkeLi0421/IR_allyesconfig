; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-jz4780.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-jz4780.c"
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ingenic_i2c_config = type { i32, i32, i32, i32 }
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
%struct.jz4780_i2c = type { ptr, i32, ptr, %struct.i2c_adapter, ptr, %struct.spinlock, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, [200 x i32], [200 x i32], i32, %struct.completion }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_i2c_jz4780__297_866_jz4780_i2c_driver_init6 = internal global ptr @jz4780_i2c_driver_init, section ".initcall6.init", align 4
@jz4780_i2c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @jz4780_i2c_probe, ptr @jz4780_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @jz4780_i2c_of_matches, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_jz4780_i2c_driver_exit = internal global ptr @jz4780_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file298 = internal constant [46 x i8] c"i2c_jz4780.file=drivers/i2c/busses/i2c-jz4780\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [23 x i8] c"i2c_jz4780.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author300 = internal constant [42 x i8] c"i2c_jz4780.author=ztyan<ztyan@ingenic.cn>\00", section ".modinfo", align 1
@__UNIQUE_ID_description301 = internal constant [50 x i8] c"i2c_jz4780.description=i2c driver for JZ4780 SoCs\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"jz4780-i2c\00", [21 x i8] zeroinitializer }, align 32
@jz4780_i2c_of_matches = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4770-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4780_i2c_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4780-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4780_i2c_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,x1000-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @x1000_i2c_config }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@jz4780_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 774, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error: No device match found\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"jz4780_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/i2c/busses/i2c-jz4780.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@jz4780_i2c_probe._entry_ptr = internal global ptr @jz4780_i2c_probe._entry, section ".printk_index", align 4
@jz4780_i2c_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @jz4780_i2c_xfer, ptr null, ptr null, ptr null, ptr @jz4780_i2c_functionality, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@jz4780_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&i2c->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@jz4780_i2c_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 806, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"clock-frequency not specified in DT\0A\00", [59 x i8] zeroinitializer }, align 32
@jz4780_i2c_probe._entry_ptr.11 = internal global ptr @jz4780_i2c_probe._entry.9, section ".printk_index", align 4
@jz4780_i2c_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 813, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"clock-frequency minimum is 1000\0A\00", [63 x i8] zeroinitializer }, align 32
@jz4780_i2c_probe._entry_ptr.14 = internal global ptr @jz4780_i2c_probe._entry.12, section ".printk_index", align 4
@jz4780_i2c_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 818, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Bus frequency is %d KHz\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@jz4780_i2c_probe._entry_ptr.18 = internal global ptr @jz4780_i2c_probe._entry.15, section ".printk_index", align 4
@jz4780_i2c_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 699, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"I2C prepare failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"jz4780_i2c_xfer\00", [16 x i8] zeroinitializer }, align 32
@jz4780_i2c_xfer._entry_ptr = internal global ptr @jz4780_i2c_xfer._entry, section ".printk_index", align 4
@jz4780_i2c_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 217, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"enable failed: ENSTA=0x%04x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"jz4780_i2c_enable\00", [46 x i8] zeroinitializer }, align 32
@jz4780_i2c_enable._entry_ptr = internal global ptr @jz4780_i2c_enable._entry, section ".printk_index", align 4
@jz4780_i2c_set_target._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 242, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"set device to address 0x%02x failed, STA=0x%04x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"jz4780_i2c_set_target\00", [42 x i8] zeroinitializer }, align 32
@jz4780_i2c_set_target._entry_ptr = internal global ptr @jz4780_i2c_set_target._entry, section ".printk_index", align 4
@jz4780_i2c_xfer_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 607, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"irq read timeout\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"jz4780_i2c_xfer_read\00", [43 x i8] zeroinitializer }, align 32
@jz4780_i2c_xfer_read._entry_ptr = internal global ptr @jz4780_i2c_xfer_read._entry, section ".printk_index", align 4
@jz4780_i2c_xfer_read.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.26, ptr @.str.3, ptr @.str.28, i8 0, i8 -104, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2c_jz4780\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"send cmd count:%d  %d\0A\00", [41 x i8] zeroinitializer }, align 32
@jz4780_i2c_xfer_read.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.26, ptr @.str.3, ptr @.str.29, i8 0, i8 -104, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"receive data count:%d  %d\0A\00", [37 x i8] zeroinitializer }, align 32
@jz4780_i2c_txabrt.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.30, ptr @.str.3, ptr @.str.31, i8 0, i8 -116, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"jz4780_i2c_txabrt\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"txabrt: 0x%08x, cmd: %d, send: %d, recv: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@jz4780_i2c_xfer_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 677, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"write wait timeout\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"jz4780_i2c_xfer_write\00", [42 x i8] zeroinitializer }, align 32
@jz4780_i2c_xfer_write._entry_ptr = internal global ptr @jz4780_i2c_xfer_write._entry, section ".printk_index", align 4
@jz4780_i2c_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 396, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"unable to disable device during cleanup!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"jz4780_i2c_cleanup\00", [45 x i8] zeroinitializer }, align 32
@jz4780_i2c_cleanup._entry_ptr = internal global ptr @jz4780_i2c_cleanup._entry, section ".printk_index", align 4
@jz4780_i2c_cleanup._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.3, i32 401, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"device has interrupts after a complete cleanup!\0A\00", [47 x i8] zeroinitializer }, align 32
@jz4780_i2c_cleanup._entry_ptr.38 = internal global ptr @jz4780_i2c_cleanup._entry.36, section ".printk_index", align 4
@jz4780_i2c_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 198, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"disable failed: ENSTA=0x%04x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"jz4780_i2c_disable\00", [45 x i8] zeroinitializer }, align 32
@jz4780_i2c_disable._entry_ptr = internal global ptr @jz4780_i2c_disable._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@jz4780_i2c_set_speed.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.42, ptr @.str.3, ptr @.str.43, i8 0, i8 64, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"jz4780_i2c_set_speed\00", [43 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"i2c not disabled\0A\00", [46 x i8] zeroinitializer }, align 32
@jz4780_i2c_irq.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.44, ptr @.str.3, ptr @.str.45, i8 0, i8 113, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"jz4780_i2c_irq\00", [17 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"received fifo overflow!\0A\00", [39 x i8] zeroinitializer }, align 32
@jz4780_i2c_config = internal constant { %struct.ingenic_i2c_config, [16 x i8] } { %struct.ingenic_i2c_config { i32 0, i32 16, i32 8, i32 7 }, [16 x i8] zeroinitializer }, align 32
@x1000_i2c_config = internal constant { %struct.ingenic_i2c_config, [16 x i8] } { %struct.ingenic_i2c_config { i32 1, i32 64, i32 32, i32 31 }, [16 x i8] zeroinitializer }, align 32
@___asan_gen_.46 = private unnamed_addr constant [18 x i8] c"jz4780_i2c_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 857, i32 31 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 861, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant [22 x i8] c"jz4780_i2c_of_matches\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 753, i32 34 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 774, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [21 x i8] c"jz4780_i2c_algorithm\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 732, i32 35 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 787, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 803, i32 48 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 806, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 813, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 818, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 699, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 217, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 240, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 607, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 608, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 610, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 559, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 677, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 395, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 400, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 198, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 87, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 259, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 453, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant [18 x i8] c"jz4780_i2c_config\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 737, i32 40 }
@___asan_gen_.211 = private unnamed_addr constant [17 x i8] c"x1000_i2c_config\00", align 1
@___asan_gen_.212 = private constant [35 x i8] c"../drivers/i2c/busses/i2c-jz4780.c\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 745, i32 40 }
@llvm.compiler.used = appending global [75 x ptr] [ptr @__UNIQUE_ID_author300, ptr @__UNIQUE_ID_description301, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__exitcall_jz4780_i2c_driver_exit, ptr @__initcall__kmod_i2c_jz4780__297_866_jz4780_i2c_driver_init6, ptr @jz4780_i2c_cleanup._entry, ptr @jz4780_i2c_cleanup._entry.36, ptr @jz4780_i2c_cleanup._entry_ptr, ptr @jz4780_i2c_cleanup._entry_ptr.38, ptr @jz4780_i2c_disable._entry, ptr @jz4780_i2c_disable._entry_ptr, ptr @jz4780_i2c_driver_exit, ptr @jz4780_i2c_enable._entry, ptr @jz4780_i2c_enable._entry_ptr, ptr @jz4780_i2c_probe._entry, ptr @jz4780_i2c_probe._entry.12, ptr @jz4780_i2c_probe._entry.15, ptr @jz4780_i2c_probe._entry.9, ptr @jz4780_i2c_probe._entry_ptr, ptr @jz4780_i2c_probe._entry_ptr.11, ptr @jz4780_i2c_probe._entry_ptr.14, ptr @jz4780_i2c_probe._entry_ptr.18, ptr @jz4780_i2c_set_target._entry, ptr @jz4780_i2c_set_target._entry_ptr, ptr @jz4780_i2c_xfer._entry, ptr @jz4780_i2c_xfer._entry_ptr, ptr @jz4780_i2c_xfer_read._entry, ptr @jz4780_i2c_xfer_read._entry_ptr, ptr @jz4780_i2c_xfer_write._entry, ptr @jz4780_i2c_xfer_write._entry_ptr, ptr @jz4780_i2c_driver, ptr @.str, ptr @jz4780_i2c_of_matches, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @jz4780_i2c_algorithm, ptr @jz4780_i2c_probe.__key, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @init_completion.__key, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @jz4780_i2c_config, ptr @x1000_i2c_config], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_i2c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_i2c_of_matches to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_i2c_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_i2c_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_i2c_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_i2c_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_i2c_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_i2c_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_i2c_set_target._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_i2c_xfer_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_i2c_xfer_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_i2c_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_i2c_cleanup._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_i2c_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_i2c_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x1000_i2c_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @jz4780_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @jz4780_i2c_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @jz4780_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @jz4780_i2c_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jz4780_i2c_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %clk_freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_freq) #9
  %0 = ptrtoint ptr %clk_freq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %clk_freq, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 3120, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @device_get_match_data(ptr noundef %dev) #9
  %cdata = getelementptr inbounds %struct.jz4780_i2c, ptr %call.i, i32 0, i32 4
  %1 = ptrtoint ptr %cdata to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %cdata, align 8
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %adap = getelementptr inbounds %struct.jz4780_i2c, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %adap to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %adap, align 8
  %algo = getelementptr inbounds %struct.jz4780_i2c, ptr %call.i, i32 0, i32 3, i32 2
  %3 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @jz4780_i2c_algorithm, ptr %algo, align 8
  %algo_data = getelementptr inbounds %struct.jz4780_i2c, ptr %call.i, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %algo_data, align 4
  %retries = getelementptr inbounds %struct.jz4780_i2c, ptr %call.i, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 5, ptr %retries, align 8
  %parent = getelementptr inbounds %struct.jz4780_i2c, ptr %call.i, i32 0, i32 3, i32 9, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %of_node17 = getelementptr inbounds %struct.jz4780_i2c, ptr %call.i, i32 0, i32 3, i32 9, i32 27
  %9 = ptrtoint ptr %of_node17 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %of_node17, align 8
  %name = getelementptr inbounds %struct.jz4780_i2c, ptr %call.i, i32 0, i32 3, i32 12
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %strcpy = tail call ptr @strcpy(ptr noundef %name, ptr noundef %11) #13
  %trans_waitq = getelementptr inbounds %struct.jz4780_i2c, ptr %call.i, i32 0, i32 18
  %12 = ptrtoint ptr %trans_waitq to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %trans_waitq, align 4
  %wait.i = getelementptr inbounds %struct.jz4780_i2c, ptr %call.i, i32 0, i32 18, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @init_completion.__key) #9
  %lock = getelementptr inbounds %struct.jz4780_i2c, ptr %call.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @jz4780_i2c_probe.__key, i16 noundef signext 3) #9
  %call25 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call25, ptr %call.i, align 8
  %cmp.i = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %call25 to i32
  br label %cleanup

if.end31:                                         ; preds = %if.end7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call33 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #9
  %clk = getelementptr inbounds %struct.jz4780_i2c, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call33, ptr %clk, align 8
  %cmp.i153 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i153, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %call33 to i32
  br label %cleanup

if.end39:                                         ; preds = %if.end31
  %call.i154 = tail call i32 @clk_prepare(ptr noundef %call33) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i154)
  %tobool.not.i = icmp eq i32 %call.i154, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end39
  %call1.i = tail call i32 @clk_enable(ptr noundef %call33) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end44, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %call33) #9
  br label %cleanup

if.end44:                                         ; preds = %if.end.i
  %18 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %19, ptr noundef nonnull @.str.8, ptr noundef nonnull %clk_freq, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool48.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool48.not, label %if.end54, label %if.end44.err.sink.split_crit_edge

if.end44.err.sink.split_crit_edge:                ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.sink.split

if.end54:                                         ; preds = %if.end44
  %20 = ptrtoint ptr %clk_freq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %clk_freq, align 4
  %div = udiv i32 %21, 1000
  %speed = getelementptr inbounds %struct.jz4780_i2c, ptr %call.i, i32 0, i32 14
  %22 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %21)
  %23 = icmp ult i32 %21, 1000
  br i1 %23, label %if.end54.err.sink.split_crit_edge, label %if.end61

if.end54.err.sink.split_crit_edge:                ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.sink.split

if.end61:                                         ; preds = %if.end54
  call fastcc void @jz4780_i2c_set_speed(ptr noundef nonnull %call.i)
  %24 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %speed, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %25) #12
  %26 = ptrtoint ptr %cdata to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cdata, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp69 = icmp eq i32 %29, 0
  br i1 %cmp69, label %if.then70, label %if.end61.if.end73_crit_edge

if.end61.if.end73_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

if.then70:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.i, align 8
  %32 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %31) #9, !srcloc !120
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  %33 = and i16 %32, 32767
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  call void @arm_heavy_mb() #9
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i, align 8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %35, i16 %33) #9, !srcloc !123
  br label %if.end73

if.end73:                                         ; preds = %if.then70, %if.end61.if.end73_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  call void @arm_heavy_mb() #9
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call.i, align 8
  %add.ptr.i = getelementptr i8, ptr %37, i32 48
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 0) #9, !srcloc !123
  %call74 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %if.end73.err_crit_edge, label %if.end78

if.end73.err_crit_edge:                           ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end78:                                         ; preds = %if.end73
  %irq = getelementptr inbounds %struct.jz4780_i2c, ptr %call.i, i32 0, i32 1
  %38 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call74, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %39 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i155 = icmp eq ptr %40, null
  br i1 %tobool.not.i155, label %if.end.i156, label %if.end78.dev_name.exit_crit_edge

if.end78.dev_name.exit_crit_edge:                 ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i156:                                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i156, %if.end78.dev_name.exit_crit_edge
  %retval.0.i157 = phi ptr [ %42, %if.end.i156 ], [ %40, %if.end78.dev_name.exit_crit_edge ]
  %call.i158 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call74, ptr noundef nonnull @jz4780_i2c_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i157, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i158)
  %tobool84.not = icmp eq i32 %call.i158, 0
  br i1 %tobool84.not, label %if.end86, label %dev_name.exit.err_crit_edge

dev_name.exit.err_crit_edge:                      ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end86:                                         ; preds = %dev_name.exit
  %call88 = call i32 @i2c_add_adapter(ptr noundef %adap) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %cmp89 = icmp slt i32 %call88, 0
  br i1 %cmp89, label %if.end86.err_crit_edge, label %if.end86.cleanup_crit_edge

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end86.err_crit_edge:                           ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

err.sink.split:                                   ; preds = %if.end54.err.sink.split_crit_edge, %if.end44.err.sink.split_crit_edge
  %.str.13.sink = phi ptr [ @.str.10, %if.end44.err.sink.split_crit_edge ], [ @.str.13, %if.end54.err.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %call.i.i, %if.end44.err.sink.split_crit_edge ], [ -22, %if.end54.err.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.13.sink) #12
  br label %err

err:                                              ; preds = %err.sink.split, %if.end86.err_crit_edge, %dev_name.exit.err_crit_edge, %if.end73.err_crit_edge
  %ret.0 = phi i32 [ %call74, %if.end73.err_crit_edge ], [ %call.i158, %dev_name.exit.err_crit_edge ], [ %call88, %if.end86.err_crit_edge ], [ %ret.0.ph, %err.sink.split ]
  %43 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %clk, align 8
  call void @clk_disable(ptr noundef %44) #9
  call void @clk_unprepare(ptr noundef %44) #9
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end86.cleanup_crit_edge, %if.then3.i, %if.end39.cleanup_crit_edge, %if.then36, %if.then28, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %if.then28 ], [ %17, %if.then36 ], [ %ret.0, %err ], [ -19, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end86.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i154, %if.end39.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_freq) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jz4780_i2c_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk = getelementptr inbounds %struct.jz4780_i2c, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %3) #9
  tail call void @clk_unprepare(ptr noundef %3) #9
  %adap = getelementptr inbounds %struct.jz4780_i2c, ptr %1, i32 0, i32 3
  tail call void @i2c_del_adapter(ptr noundef %adap) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @jz4780_i2c_set_speed(ptr noundef %i2c) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.jz4780_i2c, ptr %i2c, i32 0, i32 2
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 8
  %call = tail call i32 @clk_get_rate(ptr noundef %1) #9
  %div = udiv i32 %call, 1000
  %speed = getelementptr inbounds %struct.jz4780_i2c, ptr %i2c, i32 0, i32 14
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed, align 8
  %call1 = tail call fastcc i32 @jz4780_i2c_disable(ptr noundef %i2c)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %do.body

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jz4780_i2c_set_speed.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@jz4780_i2c_set_speed, %if.end9)) #9
          to label %if.then8 [label %if.end9], !srcloc !124

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.jz4780_i2c, ptr %i2c, i32 0, i32 3, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jz4780_i2c_set_speed.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.43) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %do.body, %entry.if.end9_crit_edge
  %div10 = sdiv i32 %div, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 101, i32 %3)
  %cmp = icmp slt i32 %3, 101
  %mul = mul i32 %div10, 4000
  %div12 = sdiv i32 %mul, 8700
  %mul13 = mul i32 %div10, 600
  %div14 = sdiv i32 %mul13, 1900
  %cnt_high.0 = select i1 %cmp, i32 %div12, i32 %div14
  %sub = sub nsw i32 %div10, %cnt_high.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %4 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c, align 8
  br i1 %cmp, label %if.then17, label %if.else30

if.then17:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %5, i16 25344) #9, !srcloc !123
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %cnt_high.0)
  %cmp19 = icmp slt i32 %cnt_high.0, 14
  %6 = trunc i32 %cnt_high.0 to i16
  %phi.cast2 = add i16 %6, -8
  %cond = select i1 %cmp19, i16 6, i16 %phi.cast2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %7 = tail call i16 @llvm.bswap.i16(i16 %cond) #9
  %8 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %7) #9, !srcloc !123
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %sub)
  %cmp22 = icmp slt i32 %sub, 9
  %10 = trunc i32 %sub to i16
  %phi.cast3 = add i16 %10, -1
  %cond28 = select i1 %cmp22, i16 8, i16 %phi.cast3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %11 = tail call i16 @llvm.bswap.i16(i16 %cond28) #9
  %12 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c, align 8
  %add.ptr.i5 = getelementptr i8, ptr %13, i32 24
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i5, i16 %11) #9, !srcloc !123
  br label %if.end49

if.else30:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %5, i16 25856) #9, !srcloc !123
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %cnt_high.0)
  %cmp32 = icmp slt i32 %cnt_high.0, 14
  %14 = trunc i32 %cnt_high.0 to i16
  %phi.cast = add i16 %14, -8
  %cond38 = select i1 %cmp32, i16 6, i16 %phi.cast
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %15 = tail call i16 @llvm.bswap.i16(i16 %cond38) #9
  %16 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c, align 8
  %add.ptr.i6 = getelementptr i8, ptr %17, i32 28
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i6, i16 %15) #9, !srcloc !123
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %sub)
  %cmp41 = icmp slt i32 %sub, 9
  %18 = trunc i32 %sub to i16
  %phi.cast1 = add i16 %18, -1
  %cond47 = select i1 %cmp41, i16 8, i16 %phi.cast1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %19 = tail call i16 @llvm.bswap.i16(i16 %cond47) #9
  %20 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c, align 8
  %add.ptr.i7 = getelementptr i8, ptr %21, i32 32
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i7, i16 %19) #9, !srcloc !123
  br label %if.end49

if.end49:                                         ; preds = %if.else30, %if.then17
  %.4 = phi i32 [ 450, %if.else30 ], [ 400, %if.then17 ]
  %. = phi i32 [ 450, %if.else30 ], [ 300, %if.then17 ]
  %mul55 = mul nuw nsw i32 %.4, %div
  %mul58 = mul nuw nsw i32 %., %div
  %div5915 = udiv i32 %mul58, 1000000
  %22 = tail call i32 @llvm.smin.i32(i32 %div5915, i32 254)
  %23 = trunc i32 %22 to i16
  %conv68 = add nuw nsw i16 %23, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %24 = tail call i16 @llvm.bswap.i16(i16 %conv68) #9
  %25 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i2c, align 8
  %add.ptr.i8 = getelementptr i8, ptr %26, i32 148
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i8, i16 %24) #9, !srcloc !123
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999, i32 %mul55)
  %cmp73 = icmp ugt i32 %mul55, 999999
  %cdata = getelementptr inbounds %struct.jz4780_i2c, ptr %i2c, i32 0, i32 4
  %27 = ptrtoint ptr %cdata to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cdata, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp76.not = icmp eq i32 %30, 0
  br i1 %cmp73, label %if.then75, label %if.else83

if.then75:                                        ; preds = %if.end49
  %div5614 = udiv i32 %mul55, 1000000
  %31 = tail call i32 @llvm.smin.i32(i32 %div5614, i32 256)
  %32 = trunc i32 %31 to i16
  %33 = add nsw i16 %32, -1
  br i1 %cmp76.not, label %if.else80, label %if.then78

if.then78:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %34 = tail call i16 @llvm.bswap.i16(i16 %33) #9
  %35 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i2c, align 8
  %add.ptr.i9 = getelementptr i8, ptr %36, i32 124
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i9, i16 %34) #9, !srcloc !123
  br label %if.end91

if.else80:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #11
  %conv81 = or i16 %33, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %37 = tail call i16 @llvm.bswap.i16(i16 %conv81) #9
  %38 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i2c, align 8
  %add.ptr.i10 = getelementptr i8, ptr %39, i32 208
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i10, i16 %37) #9, !srcloc !123
  br label %if.end91

if.else83:                                        ; preds = %if.end49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %40 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i2c, align 8
  br i1 %cmp76.not, label %if.else89, label %if.then88

if.then88:                                        ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i11 = getelementptr i8, ptr %41, i32 124
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i11, i16 0) #9, !srcloc !123
  br label %if.end91

if.else89:                                        ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i12 = getelementptr i8, ptr %41, i32 208
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12, i16 0) #9, !srcloc !123
  br label %if.end91

if.end91:                                         ; preds = %if.else89, %if.then88, %if.else80, %if.then78
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jz4780_i2c_irq(i32 noundef %irqno, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.jz4780_i2c, ptr %dev_id, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 48
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #9, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  %3 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_id, align 8
  %add.ptr.i238 = getelementptr i8, ptr %4, i32 44
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i238) #9, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  %6 = and i16 %5, %2
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %conv4 = zext i16 %7 to i32
  %and5 = and i32 %conv4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_id, align 8
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 48
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 0) #9, !srcloc !123
  %trans_waitq.i = getelementptr inbounds %struct.jz4780_i2c, ptr %dev_id, i32 0, i32 18
  tail call void @complete(ptr noundef %trans_waitq.i) #9
  br label %done

if.end:                                           ; preds = %entry
  %and7 = and i32 %conv4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end18, label %do.body

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jz4780_i2c_irq.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@jz4780_i2c_irq, %do.end)) #9
          to label %if.then16 [label %do.end], !srcloc !124

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.jz4780_i2c, ptr %dev_id, i32 0, i32 3, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jz4780_i2c_irq.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.45) #9
  br label %do.end

do.end:                                           ; preds = %if.then16, %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %10 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_id, align 8
  %add.ptr.i.i239 = getelementptr i8, ptr %11, i32 48
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i239, i16 0) #9, !srcloc !123
  %trans_waitq.i240 = getelementptr inbounds %struct.jz4780_i2c, ptr %dev_id, i32 0, i32 18
  tail call void @complete(ptr noundef %trans_waitq.i240) #9
  br label %done

if.end18:                                         ; preds = %if.end
  %is_write = getelementptr inbounds %struct.jz4780_i2c, ptr %dev_id, i32 0, i32 12
  %12 = ptrtoint ptr %is_write to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %is_write, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %while.cond.preheader, label %if.end42

while.cond.preheader:                             ; preds = %if.end18
  %rbuf = getelementptr inbounds %struct.jz4780_i2c, ptr %dev_id, i32 0, i32 6
  %rd_data_xfered = getelementptr inbounds %struct.jz4780_i2c, ptr %dev_id, i32 0, i32 8
  %rd_total_len = getelementptr inbounds %struct.jz4780_i2c, ptr %dev_id, i32 0, i32 7
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.cond.preheader
  %14 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_id, align 8
  %add.ptr.i241 = getelementptr i8, ptr %15, i32 112
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i241) #9, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  %17 = and i16 %16, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool24.not = icmp eq i16 %17, 0
  br i1 %tobool24.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %18 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_id, align 8
  %add.ptr.i242 = getelementptr i8, ptr %19, i32 16
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i242) #9, !srcloc !120
  %21 = lshr i16 %20, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  %conv28 = trunc i16 %21 to i8
  %22 = ptrtoint ptr %rbuf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rbuf, align 8
  %incdec.ptr = getelementptr i8, ptr %23, i32 1
  store ptr %incdec.ptr, ptr %rbuf, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv28, ptr %23, align 1
  %25 = ptrtoint ptr %rd_data_xfered to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rd_data_xfered, align 8
  %inc = add i32 %26, 1
  store i32 %inc, ptr %rd_data_xfered, align 8
  %27 = ptrtoint ptr %rd_total_len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rd_total_len, align 4
  %cmp30 = icmp eq i32 %inc, %28
  br i1 %cmp30, label %cleanup.thread, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %29 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_id, align 8
  %add.ptr.i.i243 = getelementptr i8, ptr %30, i32 48
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i243, i16 0) #9, !srcloc !123
  %trans_waitq.i244 = getelementptr inbounds %struct.jz4780_i2c, ptr %dev_id, i32 0, i32 18
  tail call void @complete(ptr noundef %trans_waitq.i244) #9
  br label %done

while.end:                                        ; preds = %while.cond
  %31 = ptrtoint ptr %rd_total_len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rd_total_len, align 4
  %33 = ptrtoint ptr %rd_data_xfered to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rd_data_xfered, align 8
  %sub = sub i32 %32, %34
  %cdata = getelementptr inbounds %struct.jz4780_i2c, ptr %dev_id, i32 0, i32 4
  %35 = ptrtoint ptr %cdata to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cdata, align 8
  %fifosize = getelementptr inbounds %struct.ingenic_i2c_config, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %fifosize to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %fifosize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %38)
  %cmp36.not = icmp sgt i32 %sub, %38
  br i1 %cmp36.not, label %while.end.cleanup_crit_edge, label %if.then38

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then38:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %39 = trunc i32 %sub to i16
  %conv40 = add i16 %39, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %40 = tail call i16 @llvm.bswap.i16(i16 %conv40) #9
  %41 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_id, align 8
  %add.ptr.i245 = getelementptr i8, ptr %42, i32 56
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i245, i16 %40) #9, !srcloc !123
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %while.end.cleanup_crit_edge
  %and44 = and i32 %conv4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %cleanup.done_crit_edge, label %if.then46

cleanup.done_crit_edge:                           ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end42:                                         ; preds = %if.end18
  %and44.old = and i32 %conv4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.old)
  %tobool45.not.old = icmp eq i32 %and44.old, 0
  br i1 %tobool45.not.old, label %if.end42.done_crit_edge, label %if.end42.if.else_crit_edge

if.end42.if.else_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.end42.done_crit_edge:                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.then46:                                        ; preds = %cleanup
  %43 = ptrtoint ptr %is_write to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pr = load i32, ptr %is_write, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp48 = icmp eq i32 %.pr, 0
  br i1 %cmp48, label %if.then50, label %if.then46.if.else_crit_edge

if.then46.if.else_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then50:                                        ; preds = %if.then46
  %44 = ptrtoint ptr %rd_total_len to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rd_total_len, align 4
  %rd_cmd_xfered = getelementptr inbounds %struct.jz4780_i2c, ptr %dev_id, i32 0, i32 9
  %46 = ptrtoint ptr %rd_cmd_xfered to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rd_cmd_xfered, align 4
  %sub52 = sub i32 %45, %47
  %48 = ptrtoint ptr %cdata to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cdata, align 8
  %fifosize54 = getelementptr inbounds %struct.ingenic_i2c_config, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %fifosize54 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %fifosize54, align 4
  %52 = ptrtoint ptr %rd_data_xfered to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rd_data_xfered, align 8
  %sub58.neg = xor i32 %47, -1
  %sub55 = add i32 %51, %sub58.neg
  %sub59 = add i32 %sub55, %53
  %54 = tail call i32 @llvm.smin.i32(i32 %sub52, i32 %sub59)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp64.not = icmp eq i32 %47, 0
  br i1 %cmp64.not, label %if.then50.if.end79_crit_edge, label %if.then66

if.then50.if.end79_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

if.then66:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  %tx_level = getelementptr inbounds %struct.ingenic_i2c_config, ptr %49, i32 0, i32 2
  %55 = ptrtoint ptr %tx_level to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tx_level, align 4
  %57 = xor i32 %56, -1
  %sub71 = add i32 %51, %57
  %58 = tail call i32 @llvm.smin.i32(i32 %54, i32 %sub71)
  br label %if.end79

if.end79:                                         ; preds = %if.then66, %if.then50.if.end79_crit_edge
  %cmd_to_send.0 = phi i32 [ %58, %if.then66 ], [ %54, %if.then50.if.end79_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmd_to_send.0)
  %tobool80.not = icmp eq i32 %cmd_to_send.0, 0
  br i1 %tobool80.not, label %if.end79.if.end86_crit_edge, label %if.then81

if.end79.if.end86_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86

if.then81:                                        ; preds = %if.end79
  %add = add i32 %cmd_to_send.0, %47
  %59 = ptrtoint ptr %rd_cmd_xfered to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %add, ptr %rd_cmd_xfered, align 4
  %sub85 = sub i32 %45, %add
  %sub.i = add i32 %cmd_to_send.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp9.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp9.i, label %if.then81.for.body.i_crit_edge, label %if.then81.for.end.i_crit_edge

if.then81.for.end.i_crit_edge:                    ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.then81.for.body.i_crit_edge:                   ; preds = %if.then81
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then81.for.body.i_crit_edge
  %i.010.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then81.for.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %60 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev_id, align 8
  %add.ptr.i.i246 = getelementptr i8, ptr %61, i32 16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i246, i16 1) #9, !srcloc !123
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %sub.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.then81.for.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub85)
  %cmp1.i = icmp eq i32 %sub85, 0
  br i1 %cmp1.i, label %land.lhs.true.i, label %for.end.i.if.else.i_crit_edge

for.end.i.if.else.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %for.end.i
  %62 = ptrtoint ptr %cdata to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cdata, align 8
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp2.not.i = icmp eq i32 %65, 0
  br i1 %cmp2.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.end86.thread

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.end86.thread:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %66 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev_id, align 8
  %add.ptr.i7.i = getelementptr i8, ptr %67, i32 16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i7.i, i16 3) #9, !srcloc !123
  br label %if.then89

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %for.end.i.if.else.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %68 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev_id, align 8
  %add.ptr.i8.i = getelementptr i8, ptr %69, i32 16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i8.i, i16 1) #9, !srcloc !123
  br label %if.end86

if.end86:                                         ; preds = %if.else.i, %if.end79.if.end86_crit_edge
  %cmd_left.0 = phi i32 [ %sub52, %if.end79.if.end86_crit_edge ], [ %sub85, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmd_left.0)
  %cmp87 = icmp eq i32 %cmd_left.0, 0
  br i1 %cmp87, label %if.end86.if.then89_crit_edge, label %if.end86.done_crit_edge

if.end86.done_crit_edge:                          ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end86.if.then89_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then89

if.then89:                                        ; preds = %if.end86.if.then89_crit_edge, %if.end86.thread
  %70 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev_id, align 8
  %add.ptr.i247 = getelementptr i8, ptr %71, i32 48
  %72 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i247) #9, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  %73 = and i16 %72, -4097
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %74 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev_id, align 8
  %add.ptr.i248 = getelementptr i8, ptr %75, i32 48
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i248, i16 %73) #9, !srcloc !123
  %76 = ptrtoint ptr %cdata to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cdata, align 8
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp95 = icmp eq i32 %79, 0
  br i1 %cmp95, label %if.then97, label %if.then89.done_crit_edge

if.then89.done_crit_edge:                         ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.then97:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev_id, align 8
  %82 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %81) #9, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  %83 = and i16 %82, 32767
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %84 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev_id, align 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %85, i16 %83) #9, !srcloc !123
  br label %done

if.else:                                          ; preds = %if.then46.if.else_crit_edge, %if.end42.if.else_crit_edge
  %86 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev_id, align 8
  %add.ptr.i249 = getelementptr i8, ptr %87, i32 112
  %88 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i249) #9, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  %wt_len = getelementptr inbounds %struct.jz4780_i2c, ptr %dev_id, i32 0, i32 11
  %89 = and i16 %88, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %89)
  %tobool108.not263 = icmp eq i16 %89, 0
  br i1 %tobool108.not263, label %if.else.while.end133thread-pre-split_crit_edge, label %land.rhs.lr.ph

if.else.while.end133thread-pre-split_crit_edge:   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end133thread-pre-split

land.rhs.lr.ph:                                   ; preds = %if.else
  %wbuf = getelementptr inbounds %struct.jz4780_i2c, ptr %dev_id, i32 0, i32 10
  %stop_hold = getelementptr inbounds %struct.jz4780_i2c, ptr %dev_id, i32 0, i32 13
  %cdata122 = getelementptr inbounds %struct.jz4780_i2c, ptr %dev_id, i32 0, i32 4
  %90 = ptrtoint ptr %wt_len to i32
  call void @__asan_load4_noabort(i32 %90)
  %.pr264 = load i32, ptr %wt_len, align 4
  br label %land.rhs

land.rhs:                                         ; preds = %if.end129.land.rhs_crit_edge, %land.rhs.lr.ph
  %91 = phi i32 [ %.pr264, %land.rhs.lr.ph ], [ %dec, %if.end129.land.rhs_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp109 = icmp sgt i32 %91, 0
  br i1 %cmp109, label %while.body111, label %land.rhs.while.end133thread-pre-split_crit_edge

land.rhs.while.end133thread-pre-split_crit_edge:  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end133thread-pre-split

while.body111:                                    ; preds = %land.rhs
  %92 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev_id, align 8
  %add.ptr.i250 = getelementptr i8, ptr %93, i32 112
  %94 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i250) #9, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  %95 = ptrtoint ptr %wbuf to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %wbuf, align 8
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %96, align 1
  %conv116 = zext i8 %98 to i16
  %99 = ptrtoint ptr %wt_len to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %wt_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %100)
  %cmp118 = icmp eq i32 %100, 1
  br i1 %cmp118, label %land.lhs.true, label %while.body111.if.end129_crit_edge

while.body111.if.end129_crit_edge:                ; preds = %while.body111
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end129

land.lhs.true:                                    ; preds = %while.body111
  %101 = ptrtoint ptr %stop_hold to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %stop_hold, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool120.not = icmp eq i32 %102, 0
  br i1 %tobool120.not, label %land.lhs.true121, label %land.lhs.true.if.end129_crit_edge

land.lhs.true.if.end129_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end129

land.lhs.true121:                                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %103 = ptrtoint ptr %cdata122 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %cdata122, align 8
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %104, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp124.not = icmp eq i32 %106, 0
  %or = or i16 %conv116, 512
  %spec.select = select i1 %cmp124.not, i16 %conv116, i16 %or
  br label %if.end129

if.end129:                                        ; preds = %land.lhs.true121, %land.lhs.true.if.end129_crit_edge, %while.body111.if.end129_crit_edge
  %data.0 = phi i16 [ %conv116, %land.lhs.true.if.end129_crit_edge ], [ %conv116, %while.body111.if.end129_crit_edge ], [ %spec.select, %land.lhs.true121 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %107 = tail call i16 @llvm.bswap.i16(i16 %data.0) #9
  %108 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev_id, align 8
  %add.ptr.i251 = getelementptr i8, ptr %109, i32 16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i251, i16 %107) #9, !srcloc !123
  %110 = ptrtoint ptr %wbuf to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %wbuf, align 8
  %incdec.ptr131 = getelementptr i8, ptr %111, i32 1
  store ptr %incdec.ptr131, ptr %wbuf, align 8
  %112 = ptrtoint ptr %wt_len to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %wt_len, align 4
  %dec = add i32 %113, -1
  store i32 %dec, ptr %wt_len, align 4
  %114 = and i16 %94, 512
  %tobool108.not = icmp eq i16 %114, 0
  br i1 %tobool108.not, label %if.end129.while.end133_crit_edge, label %if.end129.land.rhs_crit_edge

if.end129.land.rhs_crit_edge:                     ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

if.end129.while.end133_crit_edge:                 ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end133

while.end133thread-pre-split:                     ; preds = %land.rhs.while.end133thread-pre-split_crit_edge, %if.else.while.end133thread-pre-split_crit_edge
  %115 = ptrtoint ptr %wt_len to i32
  call void @__asan_load4_noabort(i32 %115)
  %.pr265 = load i32, ptr %wt_len, align 4
  br label %while.end133

while.end133:                                     ; preds = %while.end133thread-pre-split, %if.end129.while.end133_crit_edge
  %116 = phi i32 [ %.pr265, %while.end133thread-pre-split ], [ %dec, %if.end129.while.end133_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp135 = icmp eq i32 %116, 0
  br i1 %cmp135, label %if.then137, label %while.end133.done_crit_edge

while.end133.done_crit_edge:                      ; preds = %while.end133
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.then137:                                       ; preds = %while.end133
  %stop_hold138 = getelementptr inbounds %struct.jz4780_i2c, ptr %dev_id, i32 0, i32 13
  %117 = ptrtoint ptr %stop_hold138 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %stop_hold138, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool139.not = icmp eq i32 %118, 0
  br i1 %tobool139.not, label %land.lhs.true140, label %if.then137.if.end150_crit_edge

if.then137.if.end150_crit_edge:                   ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end150

land.lhs.true140:                                 ; preds = %if.then137
  %cdata141 = getelementptr inbounds %struct.jz4780_i2c, ptr %dev_id, i32 0, i32 4
  %119 = ptrtoint ptr %cdata141 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %cdata141, align 8
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %120, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %cmp143 = icmp eq i32 %122, 0
  br i1 %cmp143, label %if.then145, label %land.lhs.true140.if.end150_crit_edge

land.lhs.true140.if.end150_crit_edge:             ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end150

if.then145:                                       ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #11
  %123 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev_id, align 8
  %125 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %124) #9, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  %126 = and i16 %125, 32767
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %127 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev_id, align 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %128, i16 %126) #9, !srcloc !123
  br label %if.end150

if.end150:                                        ; preds = %if.then145, %land.lhs.true140.if.end150_crit_edge, %if.then137.if.end150_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %129 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev_id, align 8
  %add.ptr.i.i252 = getelementptr i8, ptr %130, i32 48
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i252, i16 0) #9, !srcloc !123
  %trans_waitq.i253 = getelementptr inbounds %struct.jz4780_i2c, ptr %dev_id, i32 0, i32 18
  tail call void @complete(ptr noundef %trans_waitq.i253) #9
  br label %done

done:                                             ; preds = %if.end150, %while.end133.done_crit_edge, %if.then97, %if.then89.done_crit_edge, %if.end86.done_crit_edge, %if.end42.done_crit_edge, %cleanup.done_crit_edge, %cleanup.thread, %do.end, %if.then
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jz4780_i2c_xfer(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msg, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  tail call fastcc void @jz4780_i2c_set_speed(ptr noundef %1) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 108
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 256) #9, !srcloc !123
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %add.ptr.i10.i.i = getelementptr i8, ptr %5, i32 156
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i10.i.i) #9, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  %7 = and i16 %6, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not.i.i = icmp eq i16 %7, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i.i:                                       ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 15000, i32 noundef 2) #9
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %add.ptr.i10.1.i.i = getelementptr i8, ptr %9, i32 156
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i10.1.i.i) #9, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  %11 = and i16 %10, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not.1.i.i = icmp eq i16 %11, 0
  br i1 %tobool.not.1.i.i, label %if.end.1.i.i, label %if.end.i.i.if.end_crit_edge

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.1.i.i:                                     ; preds = %if.end.i.i
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 15000, i32 noundef 2) #9
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %add.ptr.i10.2.i.i = getelementptr i8, ptr %13, i32 156
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i10.2.i.i) #9, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  %15 = and i16 %14, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not.2.i.i = icmp eq i16 %15, 0
  br i1 %tobool.not.2.i.i, label %if.end.2.i.i, label %if.end.1.i.i.if.end_crit_edge

if.end.1.i.i.if.end_crit_edge:                    ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.2.i.i:                                     ; preds = %if.end.1.i.i
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 15000, i32 noundef 2) #9
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %add.ptr.i10.3.i.i = getelementptr i8, ptr %17, i32 156
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i10.3.i.i) #9, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  %19 = and i16 %18, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.not.3.i.i = icmp eq i16 %19, 0
  br i1 %tobool.not.3.i.i, label %if.end.3.i.i, label %if.end.2.i.i.if.end_crit_edge

if.end.2.i.i.if.end_crit_edge:                    ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.3.i.i:                                     ; preds = %if.end.2.i.i
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 15000, i32 noundef 2) #9
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  %add.ptr.i10.4.i.i = getelementptr i8, ptr %21, i32 156
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i10.4.i.i) #9, !srcloc !120
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  %conv.4.i.i = zext i16 %23 to i32
  %and.4.i.i = and i32 %conv.4.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i.i)
  %tobool.not.4.i.i = icmp eq i32 %and.4.i.i, 0
  br i1 %tobool.not.4.i.i, label %do.end, label %if.end.3.i.i.if.end_crit_edge

if.end.3.i.i.if.end_crit_edge:                    ; preds = %if.end.3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %if.end.3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 15000, i32 noundef 2) #9
  %dev.i.i = getelementptr inbounds %struct.jz4780_i2c, ptr %1, i32 0, i32 3, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.21, i32 noundef %conv.4.i.i) #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.19) #12
  br label %out

if.end:                                           ; preds = %if.end.3.i.i.if.end_crit_edge, %if.end.2.i.i.if.end_crit_edge, %if.end.1.i.i.if.end_crit_edge, %if.end.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %24 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %msg, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %27, i32 4
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #9, !srcloc !120
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %29)
  %cmp.not = icmp eq i16 %25, %29
  br i1 %cmp.not, label %if.end.if.end12_crit_edge, label %if.then5

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then5:                                         ; preds = %if.end
  %30 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %msg, align 4
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 8
  %add.ptr.i.i = getelementptr i8, ptr %33, i32 112
  %34 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #9, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  %35 = and i16 %34, 9216
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %35)
  %36 = icmp eq i16 %35, 1024
  br i1 %36, label %if.then5.jz4780_i2c_set_target.exit.thread_crit_edge, label %if.end.i

if.then5.jz4780_i2c_set_target.exit.thread_crit_edge: ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %jz4780_i2c_set_target.exit.thread

if.end.i:                                         ; preds = %if.then5
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 15000, i32 noundef 2) #9
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 8
  %add.ptr.i.1.i = getelementptr i8, ptr %38, i32 112
  %39 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.1.i) #9, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  %40 = and i16 %39, 9216
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %40)
  %41 = icmp eq i16 %40, 1024
  br i1 %41, label %if.end.i.jz4780_i2c_set_target.exit.thread_crit_edge, label %if.end.1.i

if.end.i.jz4780_i2c_set_target.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %jz4780_i2c_set_target.exit.thread

if.end.1.i:                                       ; preds = %if.end.i
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 15000, i32 noundef 2) #9
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 8
  %add.ptr.i.2.i = getelementptr i8, ptr %43, i32 112
  %44 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.2.i) #9, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  %45 = and i16 %44, 9216
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %45)
  %46 = icmp eq i16 %45, 1024
  br i1 %46, label %if.end.1.i.jz4780_i2c_set_target.exit.thread_crit_edge, label %if.end.2.i

if.end.1.i.jz4780_i2c_set_target.exit.thread_crit_edge: ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %jz4780_i2c_set_target.exit.thread

if.end.2.i:                                       ; preds = %if.end.1.i
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 15000, i32 noundef 2) #9
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 8
  %add.ptr.i.3.i = getelementptr i8, ptr %48, i32 112
  %49 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.3.i) #9, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  %50 = and i16 %49, 9216
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %50)
  %51 = icmp eq i16 %50, 1024
  br i1 %51, label %if.end.2.i.jz4780_i2c_set_target.exit.thread_crit_edge, label %if.end.3.i

if.end.2.i.jz4780_i2c_set_target.exit.thread_crit_edge: ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %jz4780_i2c_set_target.exit.thread

if.end.3.i:                                       ; preds = %if.end.2.i
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 15000, i32 noundef 2) #9
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 8
  %add.ptr.i.4.i = getelementptr i8, ptr %53, i32 112
  %54 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.4.i) #9, !srcloc !120
  %55 = tail call i16 @llvm.bswap.i16(i16 %54) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  %conv.4.i = zext i16 %55 to i32
  %56 = and i32 %conv.4.i, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %56)
  %57 = icmp eq i32 %56, 4
  br i1 %57, label %if.end.3.i.jz4780_i2c_set_target.exit.thread_crit_edge, label %jz4780_i2c_set_target.exit

if.end.3.i.jz4780_i2c_set_target.exit.thread_crit_edge: ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %jz4780_i2c_set_target.exit.thread

jz4780_i2c_set_target.exit.thread:                ; preds = %if.end.3.i.jz4780_i2c_set_target.exit.thread_crit_edge, %if.end.2.i.jz4780_i2c_set_target.exit.thread_crit_edge, %if.end.1.i.jz4780_i2c_set_target.exit.thread_crit_edge, %if.end.i.jz4780_i2c_set_target.exit.thread_crit_edge, %if.then5.jz4780_i2c_set_target.exit.thread_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %conv7.i = shl i16 %31, 8
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 8
  %add.ptr.i21.i = getelementptr i8, ptr %59, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i21.i, i16 %conv7.i) #9, !srcloc !123
  br label %if.end12

jz4780_i2c_set_target.exit:                       ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 15000, i32 noundef 2) #9
  %dev.i = getelementptr inbounds %struct.jz4780_i2c, ptr %1, i32 0, i32 3, i32 9
  %conv7.mask = and i16 %31, 255
  %conv12.i = zext i16 %conv7.mask to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.23, i32 noundef %conv12.i, i32 noundef %conv.4.i) #12
  br label %out

if.end12:                                         ; preds = %jz4780_i2c_set_target.exit.thread, %if.end.if.end12_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp1358 = icmp sgt i32 %count, 0
  br i1 %cmp1358, label %if.end12.for.body_crit_edge, label %if.end12.out_crit_edge

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end12.for.body_crit_edge
  %i.061 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end12.for.body_crit_edge ]
  %msg.addr.059 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %msg, %if.end12.for.body_crit_edge ]
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg.addr.059, i32 0, i32 1
  %60 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %flags, align 2
  %62 = and i16 %61, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool16.not = icmp eq i16 %62, 0
  %buf20 = getelementptr inbounds %struct.i2c_msg, ptr %msg.addr.059, i32 0, i32 3
  %63 = ptrtoint ptr %buf20 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %buf20, align 4
  %len21 = getelementptr inbounds %struct.i2c_msg, ptr %msg.addr.059, i32 0, i32 2
  %65 = ptrtoint ptr %len21 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %len21, align 4
  %conv22 = zext i16 %66 to i32
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %call19 = tail call fastcc i32 @jz4780_i2c_xfer_read(ptr noundef %1, ptr noundef %64, i32 noundef %conv22)
  br label %if.end24

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %call23 = tail call fastcc i32 @jz4780_i2c_xfer_write(ptr noundef %1, ptr noundef %64, i32 noundef %conv22, i32 noundef %count, i32 noundef %i.061)
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then17
  %ret.0 = phi i32 [ %call19, %if.then17 ], [ %call23, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool25.not = icmp eq i32 %ret.0, 0
  br i1 %tobool25.not, label %for.inc, label %if.end24.out_crit_edge

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.inc:                                          ; preds = %if.end24
  %inc = add nuw nsw i32 %i.061, 1
  %incdec.ptr = getelementptr %struct.i2c_msg, ptr %msg.addr.059, i32 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

out:                                              ; preds = %for.inc.out_crit_edge, %if.end24.out_crit_edge, %if.end12.out_crit_edge, %jz4780_i2c_set_target.exit, %do.end
  %ret.1 = phi i32 [ -110, %do.end ], [ -6, %jz4780_i2c_set_target.exit ], [ 0, %if.end12.out_crit_edge ], [ %ret.0, %if.end24.out_crit_edge ], [ %count, %for.inc.out_crit_edge ]
  %lock.i = getelementptr inbounds %struct.jz4780_i2c, ptr %1, i32 0, i32 5
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %cdata.i = getelementptr inbounds %struct.jz4780_i2c, ptr %1, i32 0, i32 4
  %67 = ptrtoint ptr %cdata.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cdata.i, align 8
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp6.i = icmp eq i32 %70, 0
  br i1 %cmp6.i, label %if.then.i, label %out.if.end.i52_crit_edge

out.if.end.i52_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i52

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 8
  %73 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %72) #9, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  %74 = and i16 %73, 32767
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %76, i16 %74) #9, !srcloc !123
  br label %if.end.i52

if.end.i52:                                       ; preds = %if.then.i, %out.if.end.i52_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %1, align 8
  %add.ptr.i.i51 = getelementptr i8, ptr %78, i32 48
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i51, i16 0) #9, !srcloc !123
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %1, align 8
  %add.ptr.i2.i = getelementptr i8, ptr %80, i32 84
  %81 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i2.i) #9, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %1, align 8
  %add.ptr.i3.i = getelementptr i8, ptr %83, i32 64
  %84 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i3.i) #9, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  %85 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %1, align 8
  %87 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %86) #9, !srcloc !120
  %88 = tail call i16 @llvm.bswap.i16(i16 %87) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  %89 = and i16 %88, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %90 = tail call i16 @llvm.bswap.i16(i16 %89) #9
  %91 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %92, i16 %90) #9, !srcloc !123
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %93 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %93(i32 noundef 2147480) #9
  %94 = or i16 %88, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %95 = tail call i16 @llvm.bswap.i16(i16 %94) #9
  %96 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %97, i16 %95) #9, !srcloc !123
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #9
  %call20.i = tail call fastcc i32 @jz4780_i2c_disable(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool.not.i, label %if.end.i52.if.end25.i_crit_edge, label %do.end24.i

if.end.i52.if.end25.i_crit_edge:                  ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i

do.end24.i:                                       ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i53 = getelementptr inbounds %struct.jz4780_i2c, ptr %1, i32 0, i32 3, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i53, ptr noundef nonnull @.str.34) #12
  br label %if.end25.i

if.end25.i:                                       ; preds = %do.end24.i, %if.end.i52.if.end25.i_crit_edge
  %98 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %1, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %99, i32 48
  %100 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i4.i) #9, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  %101 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %1, align 8
  %add.ptr.i5.i = getelementptr i8, ptr %102, i32 44
  %103 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i5.i) #9, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  %104 = and i16 %103, %100
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %104)
  %tobool31.not.i = icmp eq i16 %104, 0
  br i1 %tobool31.not.i, label %if.end25.i.jz4780_i2c_cleanup.exit_crit_edge, label %do.end37.i, !prof !125

if.end25.i.jz4780_i2c_cleanup.exit_crit_edge:     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %jz4780_i2c_cleanup.exit

do.end37.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev39.i = getelementptr inbounds %struct.jz4780_i2c, ptr %1, i32 0, i32 3, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev39.i, ptr noundef nonnull @.str.37) #12
  br label %jz4780_i2c_cleanup.exit

jz4780_i2c_cleanup.exit:                          ; preds = %do.end37.i, %if.end25.i.jz4780_i2c_cleanup.exit_crit_edge
  ret i32 %ret.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @jz4780_i2c_functionality(ptr nocapture noundef readnone %adap) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592713
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @jz4780_i2c_xfer_read(ptr noundef %i2c, ptr noundef %buf, i32 noundef %len) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = mul i32 %len, 300
  %mul = add i32 %0, 1500
  %1 = call ptr @memset(ptr %buf, i32 0, i32 %len)
  %lock = getelementptr inbounds %struct.jz4780_i2c, ptr %i2c, i32 0, i32 5
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %stop_hold = getelementptr inbounds %struct.jz4780_i2c, ptr %i2c, i32 0, i32 13
  %2 = ptrtoint ptr %stop_hold to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %stop_hold, align 4
  %is_write = getelementptr inbounds %struct.jz4780_i2c, ptr %i2c, i32 0, i32 12
  %3 = ptrtoint ptr %is_write to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %is_write, align 8
  %rbuf = getelementptr inbounds %struct.jz4780_i2c, ptr %i2c, i32 0, i32 6
  %4 = ptrtoint ptr %rbuf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %buf, ptr %rbuf, align 8
  %rd_total_len = getelementptr inbounds %struct.jz4780_i2c, ptr %i2c, i32 0, i32 7
  %5 = ptrtoint ptr %rd_total_len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %len, ptr %rd_total_len, align 4
  %rd_data_xfered = getelementptr inbounds %struct.jz4780_i2c, ptr %i2c, i32 0, i32 8
  %6 = ptrtoint ptr %rd_data_xfered to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %rd_data_xfered, align 8
  %rd_cmd_xfered = getelementptr inbounds %struct.jz4780_i2c, ptr %i2c, i32 0, i32 9
  %7 = ptrtoint ptr %rd_cmd_xfered to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %rd_cmd_xfered, align 4
  %cdata = getelementptr inbounds %struct.jz4780_i2c, ptr %i2c, i32 0, i32 4
  %8 = ptrtoint ptr %cdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cdata, align 8
  %fifosize = getelementptr inbounds %struct.ingenic_i2c_config, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %fifosize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fifosize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %len)
  %cmp6.not = icmp slt i32 %11, %len
  br i1 %cmp6.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %12 = trunc i32 %len to i16
  %conv8 = add i16 %12, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv8) #9
  %14 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c, align 8
  %add.ptr.i = getelementptr i8, ptr %15, i32 56
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %13) #9, !srcloc !123
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rx_level = getelementptr inbounds %struct.ingenic_i2c_config, ptr %9, i32 0, i32 3
  %16 = ptrtoint ptr %rx_level to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_level, align 4
  %conv10 = trunc i32 %17 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %18 = tail call i16 @llvm.bswap.i16(i16 %conv10) #9
  %19 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c, align 8
  %add.ptr.i5 = getelementptr i8, ptr %20, i32 56
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i5, i16 %18) #9, !srcloc !123
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %21 = ptrtoint ptr %cdata to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cdata, align 8
  %tx_level = getelementptr inbounds %struct.ingenic_i2c_config, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %tx_level to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_level, align 4
  %conv12 = trunc i32 %24 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %25 = tail call i16 @llvm.bswap.i16(i16 %conv12) #9
  %26 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i2c, align 8
  %add.ptr.i6 = getelementptr i8, ptr %27, i32 60
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i6, i16 %25) #9, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %28 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c, align 8
  %add.ptr.i7 = getelementptr i8, ptr %29, i32 48
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i7, i16 22016) #9, !srcloc !123
  %30 = ptrtoint ptr %cdata to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cdata, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp14 = icmp eq i32 %33, 0
  br i1 %cmp14, label %if.then16, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i2c, align 8
  %36 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %35) #9, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  %37 = or i16 %36, -32768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %38 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i2c, align 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %39, i16 %37) #9, !srcloc !123
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.end.if.end20_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  %trans_waitq = getelementptr inbounds %struct.jz4780_i2c, ptr %i2c, i32 0, i32 18
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul) #9
  %call23 = tail call i32 @wait_for_completion_timeout(ptr noundef %trans_waitq, i32 noundef %call2.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool.not = icmp eq i32 %call23, 0
  br i1 %tobool.not, label %do.end27, label %if.end20.if.end65_crit_edge

if.end20.if.end65_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

do.end27:                                         ; preds = %if.end20
  %dev = getelementptr inbounds %struct.jz4780_i2c, ptr %i2c, i32 0, i32 3, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jz4780_i2c_xfer_read.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@jz4780_i2c_xfer_read, %do.body42)) #9
          to label %if.then35 [label %do.body42], !srcloc !124

if.then35:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #11
  %cmd = getelementptr inbounds %struct.jz4780_i2c, ptr %i2c, i32 0, i32 17
  %40 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cmd, align 4
  %arrayidx = getelementptr %struct.jz4780_i2c, ptr %i2c, i32 0, i32 16, i32 %41
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jz4780_i2c_xfer_read.__UNIQUE_ID_ddebug295, ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %41, i32 noundef %43) #9
  br label %do.body42

do.body42:                                        ; preds = %if.then35, %do.end27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jz4780_i2c_xfer_read.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@jz4780_i2c_xfer_read, %if.end65)) #9
          to label %if.then56 [label %if.end65], !srcloc !124

if.then56:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #11
  %cmd59 = getelementptr inbounds %struct.jz4780_i2c, ptr %i2c, i32 0, i32 17
  %44 = ptrtoint ptr %cmd59 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cmd59, align 4
  %arrayidx61 = getelementptr %struct.jz4780_i2c, ptr %i2c, i32 0, i32 15, i32 %45
  %46 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx61, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jz4780_i2c_xfer_read.__UNIQUE_ID_ddebug296, ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %45, i32 noundef %47) #9
  br label %if.end65

if.end65:                                         ; preds = %if.then56, %do.body42, %if.end20.if.end65_crit_edge
  %ret.0 = phi i32 [ 0, %if.end20.if.end65_crit_edge ], [ -5, %if.then56 ], [ -5, %do.body42 ]
  %48 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i2c, align 8
  %add.ptr.i8 = getelementptr i8, ptr %49, i32 128
  %50 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i8) #9, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool67.not = icmp eq i16 %50, 0
  br i1 %tobool67.not, label %if.end65.if.end70_crit_edge, label %if.then68

if.end65.if.end70_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then68:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jz4780_i2c_txabrt.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@jz4780_i2c_xfer_read, %if.end70)) #9
          to label %if.then.i [label %if.end70], !srcloc !124

if.then.i:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #11
  %51 = tail call i16 @llvm.bswap.i16(i16 %50) #9
  %conv69 = zext i16 %51 to i32
  %dev.i = getelementptr inbounds %struct.jz4780_i2c, ptr %i2c, i32 0, i32 3, i32 9
  %cmd.i = getelementptr inbounds %struct.jz4780_i2c, ptr %i2c, i32 0, i32 17
  %52 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cmd.i, align 4
  %arrayidx.i = getelementptr %struct.jz4780_i2c, ptr %i2c, i32 0, i32 16, i32 %53
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i, align 4
  %arrayidx6.i = getelementptr %struct.jz4780_i2c, ptr %i2c, i32 0, i32 15, i32 %53
  %56 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx6.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jz4780_i2c_txabrt.__UNIQUE_ID_ddebug294, ptr noundef %dev.i, ptr noundef nonnull @.str.31, i32 noundef %conv69, i32 noundef %53, i32 noundef %55, i32 noundef %57) #9
  br label %if.end70

if.end70:                                         ; preds = %if.then.i, %if.then68, %if.end65.if.end70_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end65.if.end70_crit_edge ], [ -5, %if.then68 ], [ -5, %if.then.i ]
  ret i32 %ret.1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @jz4780_i2c_xfer_write(ptr noundef %i2c, ptr noundef %buf, i32 noundef %len, i32 noundef %cnt, i32 noundef %idx) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = mul i32 %len, 300
  %mul = add i32 %0, 1500
  %lock = getelementptr inbounds %struct.jz4780_i2c, ptr %i2c, i32 0, i32 5
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %sub = add i32 %cnt, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %idx)
  %cmp6 = icmp sgt i32 %sub, %idx
  %spec.select = zext i1 %cmp6 to i32
  %1 = getelementptr inbounds %struct.jz4780_i2c, ptr %i2c, i32 0, i32 13
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %spec.select, ptr %1, align 4
  %is_write = getelementptr inbounds %struct.jz4780_i2c, ptr %i2c, i32 0, i32 12
  %3 = ptrtoint ptr %is_write to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %is_write, align 8
  %wbuf = getelementptr inbounds %struct.jz4780_i2c, ptr %i2c, i32 0, i32 10
  %4 = ptrtoint ptr %wbuf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %buf, ptr %wbuf, align 8
  %wt_len = getelementptr inbounds %struct.jz4780_i2c, ptr %i2c, i32 0, i32 11
  %5 = ptrtoint ptr %wt_len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %len, ptr %wt_len, align 4
  %cdata = getelementptr inbounds %struct.jz4780_i2c, ptr %i2c, i32 0, i32 4
  %6 = ptrtoint ptr %cdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cdata, align 8
  %tx_level = getelementptr inbounds %struct.ingenic_i2c_config, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %tx_level to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_level, align 4
  %conv9 = trunc i32 %9 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv9) #9
  %11 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c, align 8
  %add.ptr.i = getelementptr i8, ptr %12, i32 60
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %10) #9, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %13 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c, align 8
  %add.ptr.i73 = getelementptr i8, ptr %14, i32 48
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i73, i16 20480) #9, !srcloc !123
  %15 = ptrtoint ptr %cdata to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cdata, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp11 = icmp eq i32 %18, 0
  br i1 %cmp11, label %if.then13, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c, align 8
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %20) #9, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  %22 = or i16 %21, -32768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %23 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i2c, align 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %24, i16 %22) #9, !srcloc !123
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %entry.if.end17_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  %trans_waitq = getelementptr inbounds %struct.jz4780_i2c, ptr %i2c, i32 0, i32 18
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul) #9
  %call20 = tail call i32 @wait_for_completion_timeout(ptr noundef %trans_waitq, i32 noundef %call2.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool.not = icmp eq i32 %call20, 0
  br i1 %tobool.not, label %if.end17.do.end40_crit_edge, label %land.lhs.true

if.end17.do.end40_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end40

land.lhs.true:                                    ; preds = %if.end17
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool22.not = icmp eq i32 %26, 0
  br i1 %tobool22.not, label %land.lhs.true.for.body_crit_edge, label %land.lhs.true.if.end41_crit_edge

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

land.lhs.true.for.body_crit_edge:                 ; preds = %land.lhs.true
  br label %for.body

for.body:                                         ; preds = %if.end34.for.body_crit_edge, %land.lhs.true.for.body_crit_edge
  %timeout.082 = phi i32 [ %dec, %if.end34.for.body_crit_edge ], [ 30000, %land.lhs.true.for.body_crit_edge ]
  %27 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i2c, align 8
  %add.ptr.i74 = getelementptr i8, ptr %28, i32 112
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i74) #9, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  %30 = and i16 %29, 9216
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %30)
  %.not = icmp eq i16 %30, 1024
  br i1 %.not, label %for.body.if.end41_crit_edge, label %if.end34

for.body.if.end41_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.end34:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 2147480) #9
  %dec = add nsw i32 %timeout.082, -1
  %cmp24 = icmp ugt i32 %timeout.082, 1
  br i1 %cmp24, label %if.end34.for.body_crit_edge, label %if.end34.do.end40_crit_edge

if.end34.do.end40_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end40

if.end34.for.body_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.end40:                                         ; preds = %if.end34.do.end40_crit_edge, %if.end17.do.end40_crit_edge
  %dev = getelementptr inbounds %struct.jz4780_i2c, ptr %i2c, i32 0, i32 3, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32) #12
  br label %if.end41

if.end41:                                         ; preds = %do.end40, %for.body.if.end41_crit_edge, %land.lhs.true.if.end41_crit_edge
  %ret.0 = phi i32 [ -5, %do.end40 ], [ 0, %land.lhs.true.if.end41_crit_edge ], [ 0, %for.body.if.end41_crit_edge ]
  %32 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i2c, align 8
  %add.ptr.i75 = getelementptr i8, ptr %33, i32 128
  %34 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i75) #9, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool43.not = icmp eq i16 %34, 0
  br i1 %tobool43.not, label %if.end41.if.end46_crit_edge, label %if.then44

if.end41.if.end46_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jz4780_i2c_txabrt.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@jz4780_i2c_xfer_write, %if.end46)) #9
          to label %if.then.i [label %if.end46], !srcloc !124

if.then.i:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  %35 = tail call i16 @llvm.bswap.i16(i16 %34) #9
  %conv45 = zext i16 %35 to i32
  %dev.i = getelementptr inbounds %struct.jz4780_i2c, ptr %i2c, i32 0, i32 3, i32 9
  %cmd.i = getelementptr inbounds %struct.jz4780_i2c, ptr %i2c, i32 0, i32 17
  %36 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cmd.i, align 4
  %arrayidx.i = getelementptr %struct.jz4780_i2c, ptr %i2c, i32 0, i32 16, i32 %37
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i, align 4
  %arrayidx6.i = getelementptr %struct.jz4780_i2c, ptr %i2c, i32 0, i32 15, i32 %37
  %40 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx6.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jz4780_i2c_txabrt.__UNIQUE_ID_ddebug294, ptr noundef %dev.i, ptr noundef nonnull @.str.31, i32 noundef %conv45, i32 noundef %37, i32 noundef %39, i32 noundef %41) #9
  br label %if.end46

if.end46:                                         ; preds = %if.then.i, %if.then44, %if.end41.if.end46_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end41.if.end46_crit_edge ], [ -5, %if.then44 ], [ -5, %if.then.i ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @jz4780_i2c_disable(ptr noundef %i2c) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %0 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 108
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 0) #9, !srcloc !123
  %2 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c, align 8
  %add.ptr.i10 = getelementptr i8, ptr %3, i32 156
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i10) #9, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  %5 = and i16 %4, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 15000, i32 noundef 2) #9
  %6 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c, align 8
  %add.ptr.i10.1 = getelementptr i8, ptr %7, i32 156
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i10.1) #9, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  %9 = and i16 %8, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not.1 = icmp eq i16 %9, 0
  br i1 %tobool.not.1, label %if.end.cleanup_crit_edge, label %if.end.1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.1:                                         ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 15000, i32 noundef 2) #9
  %10 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c, align 8
  %add.ptr.i10.2 = getelementptr i8, ptr %11, i32 156
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i10.2) #9, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  %13 = and i16 %12, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not.2 = icmp eq i16 %13, 0
  br i1 %tobool.not.2, label %if.end.1.cleanup_crit_edge, label %if.end.2

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.2:                                         ; preds = %if.end.1
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 15000, i32 noundef 2) #9
  %14 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c, align 8
  %add.ptr.i10.3 = getelementptr i8, ptr %15, i32 156
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i10.3) #9, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  %17 = and i16 %16, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not.3 = icmp eq i16 %17, 0
  br i1 %tobool.not.3, label %if.end.2.cleanup_crit_edge, label %if.end.3

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.3:                                         ; preds = %if.end.2
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 15000, i32 noundef 2) #9
  %18 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i2c, align 8
  %add.ptr.i10.4 = getelementptr i8, ptr %19, i32 156
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i10.4) #9, !srcloc !120
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  %conv.4 = zext i16 %21 to i32
  %and.4 = and i32 %conv.4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool.not.4, label %if.end.3.cleanup_crit_edge, label %if.end.4

if.end.3.cleanup_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.4:                                         ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 15000, i32 noundef 2) #9
  %dev = getelementptr inbounds %struct.jz4780_i2c, ptr %i2c, i32 0, i32 3, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39, i32 noundef %conv.4) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %if.end.3.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %if.end.4 ], [ 0, %if.end.3.cleanup_crit_edge ], [ 0, %if.end.2.cleanup_crit_edge ], [ 0, %if.end.1.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare ptr @strcpy(ptr noalias returned writeonly, ptr noalias nocapture readonly) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !42, !44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !97, !99, !100, !101, !103, !104, !105, !107, !109}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @__initcall__kmod_i2c_jz4780__297_866_jz4780_i2c_driver_init6, !1, !"__initcall__kmod_i2c_jz4780__297_866_jz4780_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-jz4780.c", i32 866, i32 1}
!2 = !{ptr @__exitcall_jz4780_i2c_driver_exit, !1, !"__exitcall_jz4780_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file298, !4, !"__UNIQUE_ID_file298", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-jz4780.c", i32 868, i32 1}
!5 = !{ptr @__UNIQUE_ID_license299, !4, !"__UNIQUE_ID_license299", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author300, !7, !"__UNIQUE_ID_author300", i1 false, i1 false}
!7 = !{!"../drivers/i2c/busses/i2c-jz4780.c", i32 869, i32 1}
!8 = !{ptr @__UNIQUE_ID_description301, !9, !"__UNIQUE_ID_description301", i1 false, i1 false}
!9 = !{!"../drivers/i2c/busses/i2c-jz4780.c", i32 870, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-jz4780.c", i32 861, i32 11}
!12 = !{ptr @jz4780_i2c_driver, !13, !"jz4780_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-jz4780.c", i32 857, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-jz4780.c", i32 774, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @jz4780_i2c_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @jz4780_i2c_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = distinct !{null, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/i2c/busses/i2c-jz4780.c", i32 784, i32 26}
!24 = !{ptr @jz4780_i2c_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/i2c/busses/i2c-jz4780.c", i32 787, i32 2}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/i2c/busses/i2c-jz4780.c", i32 803, i32 48}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/i2c/busses/i2c-jz4780.c", i32 806, i32 3}
!31 = !{ptr @jz4780_i2c_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @jz4780_i2c_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/i2c/busses/i2c-jz4780.c", i32 813, i32 3}
!35 = !{ptr @jz4780_i2c_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @jz4780_i2c_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/i2c/busses/i2c-jz4780.c", i32 818, i32 2}
!39 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @jz4780_i2c_probe._entry.15, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @jz4780_i2c_probe._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @jz4780_i2c_algorithm, !43, !"jz4780_i2c_algorithm", i1 false, i1 false}
!43 = !{!"../drivers/i2c/busses/i2c-jz4780.c", i32 732, i32 35}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/i2c/busses/i2c-jz4780.c", i32 699, i32 3}
!46 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @jz4780_i2c_xfer._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @jz4780_i2c_xfer._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/i2c/busses/i2c-jz4780.c", i32 217, i32 2}
!51 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @jz4780_i2c_enable._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @jz4780_i2c_enable._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/i2c/busses/i2c-jz4780.c", i32 240, i32 2}
!56 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @jz4780_i2c_set_target._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @jz4780_i2c_set_target._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/i2c/busses/i2c-jz4780.c", i32 607, i32 3}
!61 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @jz4780_i2c_xfer_read._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @jz4780_i2c_xfer_read._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/i2c/busses/i2c-jz4780.c", i32 608, i32 3}
!66 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @jz4780_i2c_xfer_read.__UNIQUE_ID_ddebug295, !65, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/i2c/busses/i2c-jz4780.c", i32 610, i32 3}
!70 = !{ptr @jz4780_i2c_xfer_read.__UNIQUE_ID_ddebug296, !69, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/i2c/busses/i2c-jz4780.c", i32 559, i32 2}
!73 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @jz4780_i2c_txabrt.__UNIQUE_ID_ddebug294, !72, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/i2c/busses/i2c-jz4780.c", i32 677, i32 3}
!77 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @jz4780_i2c_xfer_write._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @jz4780_i2c_xfer_write._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/i2c/busses/i2c-jz4780.c", i32 395, i32 3}
!82 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @jz4780_i2c_cleanup._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @jz4780_i2c_cleanup._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/i2c/busses/i2c-jz4780.c", i32 400, i32 3}
!87 = !{ptr @jz4780_i2c_cleanup._entry.36, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @jz4780_i2c_cleanup._entry_ptr.38, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/i2c/busses/i2c-jz4780.c", i32 198, i32 2}
!91 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @jz4780_i2c_disable._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @jz4780_i2c_disable._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @init_completion.__key, !95, !"__key", i1 false, i1 false}
!95 = !{!"../include/linux/completion.h", i32 87, i32 2}
!96 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.42, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/i2c/busses/i2c-jz4780.c", i32 259, i32 3}
!99 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @jz4780_i2c_set_speed.__UNIQUE_ID_ddebug288, !98, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!101 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/i2c/busses/i2c-jz4780.c", i32 453, i32 3}
!103 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @jz4780_i2c_irq.__UNIQUE_ID_ddebug289, !102, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!105 = !{ptr @jz4780_i2c_of_matches, !106, !"jz4780_i2c_of_matches", i1 false, i1 false}
!106 = !{!"../drivers/i2c/busses/i2c-jz4780.c", i32 753, i32 34}
!107 = !{ptr @jz4780_i2c_config, !108, !"jz4780_i2c_config", i1 false, i1 false}
!108 = !{!"../drivers/i2c/busses/i2c-jz4780.c", i32 737, i32 40}
!109 = !{ptr @x1000_i2c_config, !110, !"x1000_i2c_config", i1 false, i1 false}
!110 = !{!"../drivers/i2c/busses/i2c-jz4780.c", i32 745, i32 40}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{i64 6881818}
!121 = !{i64 2155620920}
!122 = !{i64 2155621305}
!123 = !{i64 6881618}
!124 = !{i64 2148741656, i64 2148741661, i64 2148741674, i64 2148741718, i64 2148741752, i64 2148741773}
!125 = !{!"branch_weights", i32 2000, i32 1}
