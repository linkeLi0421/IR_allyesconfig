; ModuleID = '/llk/IR_all_yes/drivers/input/keyboard/lm8323.c_pt.bc'
source_filename = "../drivers/input/keyboard/lm8323.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.atomic_t = type { i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.lm8323_platform_data = type { i32, i32, i32, i32, i8, ptr, [3 x ptr], ptr }
%struct.lm8323_chip = type { %struct.mutex, ptr, ptr, i8, i8, i32, [32 x i8], [128 x i16], i32, i32, i32, i32, [3 x %struct.lm8323_pwm] }
%struct.lm8323_pwm = type { i32, i32, i32, i32, i8, i8, %struct.mutex, %struct.work_struct, %struct.led_classdev, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.__va_list = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__initcall__kmod_lm8323__291_840_lm8323_i2c_driver_init6 = internal global ptr @lm8323_i2c_driver_init, section ".initcall6.init", align 4
@lm8323_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @lm8323_probe, ptr @lm8323_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lm8323_pm_ops, ptr null, ptr null }, ptr @lm8323_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_lm8323_i2c_driver_exit = internal global ptr @lm8323_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author292 = internal constant [65 x i8] c"lm8323.author=Timo O. Karjalainen <timo.o.karjalainen@nokia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [27 x i8] c"lm8323.author=Daniel Stone\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [52 x i8] c"lm8323.author=Felipe Balbi <felipe.balbi@nokia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [40 x i8] c"lm8323.description=LM8323 keypad driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [42 x i8] c"lm8323.file=drivers/input/keyboard/lm8323\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [19 x i8] c"lm8323.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lm8323\00", [25 x i8] zeroinitializer }, align 32
@lm8323_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @lm8323_suspend, ptr @lm8323_resume, ptr @lm8323_suspend, ptr @lm8323_resume, ptr @lm8323_suspend, ptr @lm8323_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@lm8323_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"lm8323\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@lm8323_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 630, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"missing platform_data\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lm8323_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/input/keyboard/lm8323.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lm8323_probe._entry_ptr = internal global ptr @lm8323_probe._entry, section ".printk_index", align 4
@lm8323_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 636, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"invalid x size %d specified\0A\00", [35 x i8] zeroinitializer }, align 32
@lm8323_probe._entry_ptr.8 = internal global ptr @lm8323_probe._entry.6, section ".printk_index", align 4
@lm8323_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 642, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"invalid y size %d specified\0A\00", [35 x i8] zeroinitializer }, align 32
@lm8323_probe._entry_ptr.11 = internal global ptr @lm8323_probe._entry.9, section ".printk_index", align 4
@lm8323_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&lm->lock\00", [22 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@lm8323_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 676, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"timeout waiting for initialisation\0A\00", [60 x i8] zeroinitializer }, align 32
@lm8323_probe._entry_ptr.15 = internal global ptr @lm8323_probe._entry.13, section ".printk_index", align 4
@lm8323_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 687, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"device not found\0A\00", [46 x i8] zeroinitializer }, align 32
@lm8323_probe._entry_ptr.18 = internal global ptr @lm8323_probe._entry.16, section ".printk_index", align 4
@dev_attr_disable_kp = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @lm8323_show_disable, ptr @lm8323_set_disable }, [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LM8323 keypad\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s/input-kp\00", [20 x i8] zeroinitializer }, align 32
@lm8323_probe.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.21, i8 0, i8 -76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error registering input device\0A\00", [32 x i8] zeroinitializer }, align 32
@lm8323_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 729, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"could not get IRQ %d\0A\00", [42 x i8] zeroinitializer }, align 32
@lm8323_probe._entry_ptr.24 = internal global ptr @lm8323_probe._entry.22, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@lm8323_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 171, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tried to send %d bytes\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lm8323_write\00", [19 x i8] zeroinitializer }, align 32
@lm8323_write._entry_ptr = internal global ptr @lm8323_write._entry, section ".printk_index", align 4
@lm8323_write._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.3, i32 190, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sent %d bytes of %d total\0A\00", [37 x i8] zeroinitializer }, align 32
@lm8323_write._entry_ptr.29 = internal global ptr @lm8323_write._entry.27, section ".printk_index", align 4
@lm8323_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 212, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sending read cmd 0x%02x failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lm8323_read\00", [20 x i8] zeroinitializer }, align 32
@lm8323_read._entry_ptr = internal global ptr @lm8323_read._entry, section ".printk_index", align 4
@lm8323_read._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.3, i32 219, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wanted %d bytes, got %d\0A\00", [39 x i8] zeroinitializer }, align 32
@lm8323_read._entry_ptr.34 = internal global ptr @lm8323_read._entry.32, section ".printk_index", align 4
@init_pwm.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&pwm->work)\00", [34 x i8] zeroinitializer }, align 32
@init_pwm.__key.36 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&pwm->lock\00", [21 x i8] zeroinitializer }, align 32
@lm8323_pwm_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @lm8323_pwm_group, ptr null], [24 x i8] zeroinitializer }, align 32
@init_pwm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 579, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"couldn't register PWM %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"init_pwm\00", [23 x i8] zeroinitializer }, align 32
@init_pwm._entry_ptr = internal global ptr @init_pwm._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@lm8323_pwm_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @lm8323_pwm_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@lm8323_pwm_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_time, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_time = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @lm8323_pwm_show_time, ptr @lm8323_pwm_store_time }, [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"time\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"disable_kp\00", [21 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@lm8323_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 385, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"chip lost config; reinitialising\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lm8323_irq\00", [21 x i8] zeroinitializer }, align 32
@lm8323_irq._entry_ptr = internal global ptr @lm8323_irq._entry, section ".printk_index", align 4
@process_keys._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.3, i32 261, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed reading fifo \0A\00", [42 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"process_keys\00", [19 x i8] zeroinitializer }, align 32
@process_keys._entry_ptr = internal global ptr @process_keys._entry, section ".printk_index", align 4
@___asan_gen_.48 = private unnamed_addr constant [18 x i8] c"lm8323_i2c_driver\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 829, i32 26 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 831, i32 11 }
@___asan_gen_.54 = private unnamed_addr constant [14 x i8] c"lm8323_pm_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 822, i32 8 }
@___asan_gen_.57 = private unnamed_addr constant [10 x i8] c"lm8323_id\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 824, i32 35 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 630, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 635, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 641, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 655, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 675, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 687, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant [20 x i8] c"dev_attr_disable_kp\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 704, i32 31 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 706, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 722, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 729, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 171, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 189, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 211, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 218, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 570, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 571, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant [18 x i8] c"lm8323_pwm_groups\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 579, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant [17 x i8] c"lm8323_pwm_group\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 553, i32 1 }
@___asan_gen_.183 = private unnamed_addr constant [17 x i8] c"lm8323_pwm_attrs\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 549, i32 26 }
@___asan_gen_.186 = private unnamed_addr constant [14 x i8] c"dev_attr_time\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 547, i32 8 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 528, i32 22 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 616, i32 8 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 595, i32 22 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 384, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.216 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.217 = private constant [35 x i8] c"../drivers/input/keyboard/lm8323.c\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 261, i32 3 }
@llvm.compiler.used = appending global [79 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_lm8323_i2c_driver_exit, ptr @__initcall__kmod_lm8323__291_840_lm8323_i2c_driver_init6, ptr @init_pwm._entry, ptr @init_pwm._entry_ptr, ptr @lm8323_i2c_driver_exit, ptr @lm8323_irq._entry, ptr @lm8323_irq._entry_ptr, ptr @lm8323_probe._entry, ptr @lm8323_probe._entry.13, ptr @lm8323_probe._entry.16, ptr @lm8323_probe._entry.22, ptr @lm8323_probe._entry.6, ptr @lm8323_probe._entry.9, ptr @lm8323_probe._entry_ptr, ptr @lm8323_probe._entry_ptr.11, ptr @lm8323_probe._entry_ptr.15, ptr @lm8323_probe._entry_ptr.18, ptr @lm8323_probe._entry_ptr.24, ptr @lm8323_probe._entry_ptr.8, ptr @lm8323_read._entry, ptr @lm8323_read._entry.32, ptr @lm8323_read._entry_ptr, ptr @lm8323_read._entry_ptr.34, ptr @lm8323_write._entry, ptr @lm8323_write._entry.27, ptr @lm8323_write._entry_ptr, ptr @lm8323_write._entry_ptr.29, ptr @process_keys._entry, ptr @process_keys._entry_ptr, ptr @lm8323_i2c_driver, ptr @.str, ptr @lm8323_pm_ops, ptr @lm8323_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @lm8323_probe.__key, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @dev_attr_disable_kp, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @init_pwm.__key, ptr @.str.35, ptr @init_pwm.__key.36, ptr @.str.37, ptr @lm8323_pwm_groups, ptr @.str.38, ptr @.str.39, ptr @lm8323_pwm_group, ptr @lm8323_pwm_attrs, ptr @dev_attr_time, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm8323_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm8323_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm8323_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm8323_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm8323_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm8323_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm8323_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm8323_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm8323_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_disable_kp to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm8323_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm8323_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm8323_write._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm8323_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm8323_read._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_pwm.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_pwm.__key.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm8323_pwm_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_pwm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm8323_pwm_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm8323_pwm_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_time to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm8323_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_keys._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lm8323_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lm8323_i2c_driver) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lm8323_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @i2c_del_driver(ptr noundef nonnull @lm8323_i2c_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm8323_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %data = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #12
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %data, align 1, !annotation !124
  %3 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !124
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %size_x = getelementptr inbounds %struct.lm8323_platform_data, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %size_x to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size_x, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not = icmp eq i32 %6, 0
  br i1 %tobool1.not, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false2

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %size_y = getelementptr inbounds %struct.lm8323_platform_data, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %size_y to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size_y, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not = icmp eq i32 %8, 0
  br i1 %tobool3.not, label %lor.lhs.false2.do.end_crit_edge, label %if.end

lor.lhs.false2.do.end_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false2.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %6)
  %cmp = icmp sgt i32 %6, 8
  br i1 %cmp, label %do.end9, label %if.end12

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %6) #15
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %8)
  %cmp14 = icmp sgt i32 %8, 12
  br i1 %cmp14, label %do.end18, label %if.end21

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %8) #15
  br label %cleanup

if.end21:                                         ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 2092) #16
  %call23 = tail call ptr @input_allocate_device() #12
  %tobool24.not = icmp eq ptr %call7.i.i, null
  %tobool26.not = icmp eq ptr %call23, null
  %or.cond = select i1 %tobool24.not, i1 true, i1 %tobool26.not
  br i1 %or.cond, label %if.end21.fail1_crit_edge, label %if.end28

if.end21.fail1_crit_edge:                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail1

if.end28:                                         ; preds = %if.end21
  %client29 = getelementptr inbounds %struct.lm8323_chip, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %client29 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %client, ptr %client29, align 4
  %idev30 = getelementptr inbounds %struct.lm8323_chip, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %idev30 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call23, ptr %idev30, align 8
  tail call void @__mutex_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @lm8323_probe.__key) #12
  %12 = ptrtoint ptr %size_x to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size_x, align 4
  %size_x35 = getelementptr inbounds %struct.lm8323_chip, ptr %call7.i.i, i32 0, i32 8
  %14 = ptrtoint ptr %size_x35 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %size_x35, align 4
  %15 = ptrtoint ptr %size_y to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size_y, align 4
  %size_y37 = getelementptr inbounds %struct.lm8323_chip, ptr %call7.i.i, i32 0, i32 9
  %17 = ptrtoint ptr %size_y37 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %size_y37, align 8
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 4
  %debounce_time38 = getelementptr inbounds %struct.lm8323_chip, ptr %call7.i.i, i32 0, i32 10
  %20 = ptrtoint ptr %debounce_time38 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %debounce_time38, align 4
  %active_time = getelementptr inbounds %struct.lm8323_platform_data, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %active_time to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %active_time, align 4
  %active_time39 = getelementptr inbounds %struct.lm8323_chip, ptr %call7.i.i, i32 0, i32 11
  %23 = ptrtoint ptr %active_time39 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %active_time39, align 8
  tail call void (ptr, i32, ...) @lm8323_write(ptr noundef nonnull %call7.i.i, i32 noundef 2, i32 noundef 131, i32 noundef 170) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %24, 10
  %call41249 = call fastcc i32 @lm8323_read(ptr noundef nonnull %call7.i.i, i8 noundef zeroext -126, ptr noundef nonnull %data, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call41249)
  %cmp42250 = icmp eq i32 %call41249, 1
  br i1 %cmp42250, label %if.end28.while.body_crit_edge, label %if.end28.while.end_crit_edge

if.end28.while.end_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end28.while.body_crit_edge:                    ; preds = %if.end28
  br label %while.body

while.body:                                       ; preds = %if.end53.while.body_crit_edge, %if.end28.while.body_crit_edge
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %data, align 1
  %27 = and i8 %26, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool43.not = icmp eq i8 %27, 0
  br i1 %tobool43.not, label %if.end45, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end45:                                         ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp46 = icmp slt i32 %sub, 0
  br i1 %cmp46, label %do.end51, label %if.end53

do.end51:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #15
  br label %while.end

if.end53:                                         ; preds = %if.end45
  call void @msleep(i32 noundef 1) #12
  %call41 = call fastcc i32 @lm8323_read(ptr noundef nonnull %call7.i.i, i8 noundef zeroext -126, ptr noundef nonnull %data, i32 noundef 1)
  %cmp42 = icmp eq i32 %call41, 1
  br i1 %cmp42, label %if.end53.while.body_crit_edge, label %if.end53.while.end_crit_edge

if.end53.while.end_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end53.while.body_crit_edge:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %if.end53.while.end_crit_edge, %do.end51, %while.body.while.end_crit_edge, %if.end28.while.end_crit_edge
  call fastcc void @lm8323_configure(ptr noundef nonnull %call7.i.i)
  %call.i = call fastcc i32 @lm8323_read(ptr noundef %call7.i.i, i8 noundef zeroext -128, ptr noundef nonnull %data, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %while.end.for.body_crit_edge, label %do.end62

while.end.for.body_crit_edge:                     ; preds = %while.end
  br label %for.body

do.end62:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #15
  br label %fail1

for.body:                                         ; preds = %init_pwm.exit.for.body_crit_edge, %while.end.for.body_crit_edge
  %pwm.0251 = phi i32 [ %add67, %init_pwm.exit.for.body_crit_edge ], [ 0, %while.end.for.body_crit_edge ]
  %add67 = add nuw nsw i32 %pwm.0251, 1
  %arrayidx69 = getelementptr %struct.lm8323_platform_data, ptr %1, i32 0, i32 6, i32 %pwm.0251
  %29 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx69, align 4
  %arrayidx.i = getelementptr %struct.lm8323_chip, ptr %call7.i.i, i32 0, i32 12, i32 %pwm.0251
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add67, ptr %arrayidx.i, align 4
  %fade_time.i = getelementptr %struct.lm8323_chip, ptr %call7.i.i, i32 0, i32 12, i32 %pwm.0251, i32 1
  %enabled.i = getelementptr %struct.lm8323_chip, ptr %call7.i.i, i32 0, i32 12, i32 %pwm.0251, i32 4
  %work.i = getelementptr %struct.lm8323_chip, ptr %call7.i.i, i32 0, i32 12, i32 %pwm.0251, i32 7
  %32 = call ptr @memset(ptr %fade_time.i, i32 0, i32 14)
  call void @__init_work(ptr noundef %work.i, i32 noundef 0) #12
  %33 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -64, ptr %work.i, align 4
  %lockdep_map.i = getelementptr %struct.lm8323_chip, ptr %call7.i.i, i32 0, i32 12, i32 %pwm.0251, i32 7, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @init_pwm.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry14.i = getelementptr %struct.lm8323_chip, ptr %call7.i.i, i32 0, i32 12, i32 %pwm.0251, i32 7, i32 1
  %34 = ptrtoint ptr %entry14.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %entry14.i, ptr %entry14.i, align 8
  %prev.i.i = getelementptr %struct.lm8323_chip, ptr %call7.i.i, i32 0, i32 12, i32 %pwm.0251, i32 7, i32 1, i32 1
  %35 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %entry14.i, ptr %prev.i.i, align 4
  %func.i = getelementptr %struct.lm8323_chip, ptr %call7.i.i, i32 0, i32 12, i32 %pwm.0251, i32 7, i32 2
  %36 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @lm8323_pwm_work, ptr %func.i, align 8
  %lock.i = getelementptr %struct.lm8323_chip, ptr %call7.i.i, i32 0, i32 12, i32 %pwm.0251, i32 6
  call void @__mutex_init(ptr noundef %lock.i, ptr noundef nonnull @.str.37, ptr noundef nonnull @init_pwm.__key.36) #12
  %chip.i = getelementptr %struct.lm8323_chip, ptr %call7.i.i, i32 0, i32 12, i32 %pwm.0251, i32 9
  %37 = ptrtoint ptr %chip.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call7.i.i, ptr %chip.i, align 8
  %tobool21.not.i = icmp eq ptr %30, null
  br i1 %tobool21.not.i, label %for.body.init_pwm.exit_crit_edge, label %if.then22.i

for.body.init_pwm.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %init_pwm.exit

if.then22.i:                                      ; preds = %for.body
  %cdev.i = getelementptr %struct.lm8323_chip, ptr %call7.i.i, i32 0, i32 12, i32 %pwm.0251, i32 8
  %38 = ptrtoint ptr %cdev.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %30, ptr %cdev.i, align 8
  %brightness_set.i = getelementptr %struct.lm8323_chip, ptr %call7.i.i, i32 0, i32 12, i32 %pwm.0251, i32 8, i32 5
  %39 = ptrtoint ptr %brightness_set.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @lm8323_pwm_set_brightness, ptr %brightness_set.i, align 4
  %groups.i = getelementptr %struct.lm8323_chip, ptr %call7.i.i, i32 0, i32 12, i32 %pwm.0251, i32 8, i32 12
  %40 = ptrtoint ptr %groups.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @lm8323_pwm_groups, ptr %groups.i, align 8
  %call.i.i = call i32 @led_classdev_register_ext(ptr noundef %dev, ptr noundef %cdev.i, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp27.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp27.i, label %fail2, label %if.end32.i

if.end32.i:                                       ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %enabled.i, align 4
  br label %init_pwm.exit

init_pwm.exit:                                    ; preds = %if.end32.i, %for.body.init_pwm.exit_crit_edge
  %exitcond.not = icmp eq i32 %add67, 3
  br i1 %exitcond.not, label %for.end, label %init_pwm.exit.for.body_crit_edge

init_pwm.exit.for.body_crit_edge:                 ; preds = %init_pwm.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %init_pwm.exit
  %kp_enabled = getelementptr inbounds %struct.lm8323_chip, ptr %call7.i.i, i32 0, i32 3
  %42 = ptrtoint ptr %kp_enabled to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %kp_enabled, align 4
  %call76 = call i32 @device_create_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_disable_kp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %for.end.while.body144_crit_edge, label %if.end80

for.end.while.body144_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body144

if.end80:                                         ; preds = %for.end
  %name = getelementptr inbounds %struct.lm8323_platform_data, ptr %1, i32 0, i32 7
  %43 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %name, align 4
  %tobool81.not = icmp eq ptr %44, null
  %..str.19 = select i1 %tobool81.not, ptr @.str.19, ptr %44
  %45 = ptrtoint ptr %call23 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %..str.19, ptr %call23, align 8
  %phys = getelementptr inbounds %struct.lm8323_chip, ptr %call7.i.i, i32 0, i32 6
  %init_name.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 3
  %46 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %47, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end80.dev_name.exit_crit_edge

if.end80.dev_name.exit_crit_edge:                 ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end80.dev_name.exit_crit_edge
  %retval.0.i242 = phi ptr [ %49, %if.end.i ], [ %47, %if.end80.dev_name.exit_crit_edge ]
  %call86 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 32, ptr noundef nonnull @.str.20, ptr noundef %retval.0.i242)
  %phys89 = getelementptr inbounds %struct.input_dev, ptr %call23, i32 0, i32 1
  %50 = ptrtoint ptr %phys89 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %phys, ptr %phys89, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call23, i32 0, i32 5
  %51 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 18, ptr %evbit, align 8
  %mscbit = getelementptr inbounds %struct.input_dev, ptr %call23, i32 0, i32 9
  %52 = ptrtoint ptr %mscbit to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mscbit, align 4
  %or.i = or i32 %53, 16
  store i32 %or.i, ptr %mscbit, align 4
  %keymap = getelementptr inbounds %struct.lm8323_platform_data, ptr %1, i32 0, i32 5
  %keybit = getelementptr inbounds %struct.input_dev, ptr %call23, i32 0, i32 6
  br label %for.body95

for.body95:                                       ; preds = %for.body95.for.body95_crit_edge, %dev_name.exit
  %i.0252 = phi i32 [ 0, %dev_name.exit ], [ %inc104, %for.body95.for.body95_crit_edge ]
  %54 = ptrtoint ptr %keymap to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %keymap, align 4
  %arrayidx96 = getelementptr i16, ptr %55, i32 %i.0252
  %56 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx96, align 2
  %conv97 = zext i16 %57 to i32
  %rem.i = and i32 %conv97, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %conv97, 5
  %add.ptr.i = getelementptr i32, ptr %keybit, i32 %div2.i
  %58 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %add.ptr.i, align 4
  %or.i239 = or i32 %shl.i, %59
  store i32 %or.i239, ptr %add.ptr.i, align 4
  %60 = load ptr, ptr %keymap, align 4
  %arrayidx100 = getelementptr i16, ptr %60, i32 %i.0252
  %61 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %arrayidx100, align 2
  %arrayidx102 = getelementptr %struct.lm8323_chip, ptr %call7.i.i, i32 0, i32 7, i32 %i.0252
  %63 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %arrayidx102, align 2
  %inc104 = add nuw nsw i32 %i.0252, 1
  %exitcond258.not = icmp eq i32 %inc104, 128
  br i1 %exitcond258.not, label %for.end105, label %for.body95.for.body95_crit_edge

for.body95.for.body95_crit_edge:                  ; preds = %for.body95
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body95

for.end105:                                       ; preds = %for.body95
  %64 = ptrtoint ptr %keybit to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %keybit, align 4
  %and.i = and i32 %65, -2
  store i32 %and.i, ptr %keybit, align 4
  %repeat = getelementptr inbounds %struct.lm8323_platform_data, ptr %1, i32 0, i32 4
  %66 = ptrtoint ptr %repeat to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %repeat, align 4, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool108.not = icmp eq i8 %67, 0
  br i1 %tobool108.not, label %for.end105.if.end112_crit_edge, label %if.then109

for.end105.if.end112_crit_edge:                   ; preds = %for.end105
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end112

if.then109:                                       ; preds = %for.end105
  call void @__sanitizer_cov_trace_pc() #14
  %68 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %evbit, align 4
  %or.i240 = or i32 %69, 1048576
  store i32 %or.i240, ptr %evbit, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.then109, %for.end105.if.end112_crit_edge
  %call113 = call i32 @input_register_device(ptr noundef nonnull %call23) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.end126, label %do.body116

do.body116:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm8323_probe.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lm8323_probe, %if.then121)) #12
          to label %fail3 [label %if.then121], !srcloc !126

if.then121:                                       ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm8323_probe.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.21) #12
  br label %fail3

if.end126:                                        ; preds = %if.end112
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %70 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %irq, align 4
  %call127 = call i32 @request_threaded_irq(i32 noundef %71, ptr noundef null, ptr noundef nonnull @lm8323_irq, i32 noundef 8200, ptr noundef nonnull @.str, ptr noundef nonnull %call7.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %if.end135, label %do.end132

do.end132:                                        ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #14
  %72 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %73) #15
  call void @input_unregister_device(ptr noundef nonnull %call23) #12
  br label %fail3

if.end135:                                        ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #14
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %74 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call137 = call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #12
  %75 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %irq, align 4
  %call.i243 = call i32 @irq_set_irq_wake(i32 noundef %76, i32 noundef 1) #12
  br label %cleanup

fail3:                                            ; preds = %do.end132, %if.then121, %do.body116
  %idev.0 = phi ptr [ %call23, %if.then121 ], [ null, %do.end132 ], [ %call23, %do.body116 ]
  %err.0 = phi i32 [ %call113, %if.then121 ], [ %call127, %do.end132 ], [ %call113, %do.body116 ]
  call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_disable_kp) #12
  br label %while.body144

fail2:                                            ; preds = %if.then22.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %add67) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pwm.0251)
  %cmp142254.not = icmp eq i32 %pwm.0251, 0
  br i1 %cmp142254.not, label %fail2.fail1_crit_edge, label %fail2.while.body144_crit_edge

fail2.while.body144_crit_edge:                    ; preds = %fail2
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body144

fail2.fail1_crit_edge:                            ; preds = %fail2
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail1

while.body144:                                    ; preds = %fail2.while.body144_crit_edge, %fail3, %for.end.while.body144_crit_edge
  %err.1265 = phi i32 [ -1, %fail2.while.body144_crit_edge ], [ %err.0, %fail3 ], [ %call76, %for.end.while.body144_crit_edge ]
  %idev.1264 = phi ptr [ %call23, %fail2.while.body144_crit_edge ], [ %idev.0, %fail3 ], [ %call23, %for.end.while.body144_crit_edge ]
  %pwm.0248263 = phi i32 [ %pwm.0251, %fail2.while.body144_crit_edge ], [ 3, %fail3 ], [ 3, %for.end.while.body144_crit_edge ]
  %dec255 = add nsw i32 %pwm.0248263, -1
  %enabled = getelementptr %struct.lm8323_chip, ptr %call7.i.i, i32 0, i32 12, i32 %dec255, i32 4
  %77 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %enabled, align 4, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool147.not = icmp eq i8 %78, 0
  br i1 %tobool147.not, label %while.body144.if.end151_crit_edge, label %if.then148

while.body144.if.end151_crit_edge:                ; preds = %while.body144
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end151

if.then148:                                       ; preds = %while.body144
  call void @__sanitizer_cov_trace_pc() #14
  %cdev = getelementptr %struct.lm8323_chip, ptr %call7.i.i, i32 0, i32 12, i32 %dec255, i32 8
  call void @led_classdev_unregister(ptr noundef %cdev) #12
  br label %if.end151

if.end151:                                        ; preds = %if.then148, %while.body144.if.end151_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %pwm.0248263)
  %cmp142 = icmp ugt i32 %pwm.0248263, 1
  br i1 %cmp142, label %while.body144.1, label %if.end151.fail1_crit_edge

if.end151.fail1_crit_edge:                        ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail1

while.body144.1:                                  ; preds = %if.end151
  %dec255.1 = add nsw i32 %pwm.0248263, -2
  %enabled.1 = getelementptr %struct.lm8323_chip, ptr %call7.i.i, i32 0, i32 12, i32 %dec255.1, i32 4
  %79 = ptrtoint ptr %enabled.1 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %enabled.1, align 4, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool147.not.1 = icmp eq i8 %80, 0
  br i1 %tobool147.not.1, label %while.body144.1.if.end151.1_crit_edge, label %if.then148.1

while.body144.1.if.end151.1_crit_edge:            ; preds = %while.body144.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end151.1

if.then148.1:                                     ; preds = %while.body144.1
  call void @__sanitizer_cov_trace_pc() #14
  %cdev.1 = getelementptr %struct.lm8323_chip, ptr %call7.i.i, i32 0, i32 12, i32 %dec255.1, i32 8
  call void @led_classdev_unregister(ptr noundef %cdev.1) #12
  br label %if.end151.1

if.end151.1:                                      ; preds = %if.then148.1, %while.body144.1.if.end151.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %pwm.0248263)
  %cmp142.1 = icmp ugt i32 %pwm.0248263, 2
  br i1 %cmp142.1, label %while.body144.2, label %if.end151.1.fail1_crit_edge

if.end151.1.fail1_crit_edge:                      ; preds = %if.end151.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail1

while.body144.2:                                  ; preds = %if.end151.1
  %dec255.2 = add nsw i32 %pwm.0248263, -3
  %enabled.2 = getelementptr %struct.lm8323_chip, ptr %call7.i.i, i32 0, i32 12, i32 %dec255.2, i32 4
  %81 = ptrtoint ptr %enabled.2 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %enabled.2, align 4, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool147.not.2 = icmp eq i8 %82, 0
  br i1 %tobool147.not.2, label %while.body144.2.fail1_crit_edge, label %if.then148.2

while.body144.2.fail1_crit_edge:                  ; preds = %while.body144.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail1

if.then148.2:                                     ; preds = %while.body144.2
  call void @__sanitizer_cov_trace_pc() #14
  %cdev.2 = getelementptr %struct.lm8323_chip, ptr %call7.i.i, i32 0, i32 12, i32 %dec255.2, i32 8
  call void @led_classdev_unregister(ptr noundef %cdev.2) #12
  br label %fail1

fail1:                                            ; preds = %if.then148.2, %while.body144.2.fail1_crit_edge, %if.end151.1.fail1_crit_edge, %if.end151.fail1_crit_edge, %fail2.fail1_crit_edge, %do.end62, %if.end21.fail1_crit_edge
  %idev.2 = phi ptr [ %call23, %do.end62 ], [ %call23, %if.end21.fail1_crit_edge ], [ %call23, %fail2.fail1_crit_edge ], [ %idev.1264, %while.body144.2.fail1_crit_edge ], [ %idev.1264, %if.then148.2 ], [ %idev.1264, %if.end151.1.fail1_crit_edge ], [ %idev.1264, %if.end151.fail1_crit_edge ]
  %err.2 = phi i32 [ -19, %do.end62 ], [ -12, %if.end21.fail1_crit_edge ], [ -1, %fail2.fail1_crit_edge ], [ %err.1265, %while.body144.2.fail1_crit_edge ], [ %err.1265, %if.then148.2 ], [ %err.1265, %if.end151.1.fail1_crit_edge ], [ %err.1265, %if.end151.fail1_crit_edge ]
  call void @input_free_device(ptr noundef %idev.2) #12
  call void @kfree(ptr noundef %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %fail1, %if.end135, %do.end18, %do.end9, %do.end
  %retval.0 = phi i32 [ -22, %do.end9 ], [ -22, %do.end18 ], [ %err.2, %fail1 ], [ 0, %if.end135 ], [ -22, %do.end ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm8323_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %3, i32 noundef 0) #12
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call3 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %1) #12
  %idev = getelementptr inbounds %struct.lm8323_chip, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %idev, align 4
  tail call void @input_unregister_device(ptr noundef %7) #12
  %client4 = getelementptr inbounds %struct.lm8323_chip, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %client4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client4, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_disable_kp) #12
  %enabled = getelementptr %struct.lm8323_chip, ptr %1, i32 0, i32 12, i32 0, i32 4
  %10 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %enabled, align 4, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %cdev = getelementptr %struct.lm8323_chip, ptr %1, i32 0, i32 12, i32 0, i32 8
  tail call void @led_classdev_unregister(ptr noundef %cdev) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %enabled.1 = getelementptr %struct.lm8323_chip, ptr %1, i32 0, i32 12, i32 1, i32 4
  %12 = ptrtoint ptr %enabled.1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %enabled.1, align 4, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.1 = icmp eq i8 %13, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  %cdev.1 = getelementptr %struct.lm8323_chip, ptr %1, i32 0, i32 12, i32 1, i32 8
  tail call void @led_classdev_unregister(ptr noundef %cdev.1) #12
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %enabled.2 = getelementptr %struct.lm8323_chip, ptr %1, i32 0, i32 12, i32 2, i32 4
  %14 = ptrtoint ptr %enabled.2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %enabled.2, align 4, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.2 = icmp eq i8 %15, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  %cdev.2 = getelementptr %struct.lm8323_chip, ptr %1, i32 0, i32 12, i32 2, i32 8
  tail call void @led_classdev_unregister(ptr noundef %cdev.2) #12
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  tail call void @kfree(ptr noundef %1) #12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lm8323_read(ptr nocapture noundef readonly %lm, i8 noundef zeroext %cmd, ptr noundef %buf, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  %cmd.addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmd.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %cmd, ptr %cmd.addr, align 1
  %client = getelementptr inbounds %struct.lm8323_chip, ptr %lm, i32 0, i32 1
  %1 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %client, align 4
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %2, ptr noundef nonnull %cmd.addr, i32 noundef 1, i16 noundef zeroext 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -121, i32 %call.i)
  %cmp = icmp eq i32 %call.i, -121
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge, !prof !127

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client, align 4
  %call.i41 = call i32 @i2c_transfer_buffer_flags(ptr noundef %4, ptr noundef nonnull %cmd.addr, i32 noundef 1, i16 noundef zeroext 0) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call.i41, %if.then ], [ %call.i, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.0)
  %cmp4.not = icmp eq i32 %ret.0, 1
  %5 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client, align 4
  br i1 %cmp4.not, label %if.end13, label %do.end, !prof !128

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %cmd.addr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cmd.addr, align 1
  %conv = zext i8 %8 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %conv) #15
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %call.i42 = call i32 @i2c_transfer_buffer_flags(ptr noundef %6, ptr noundef %buf, i32 noundef %len, i16 noundef zeroext 1) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i42, i32 %len)
  %cmp16.not = icmp eq i32 %call.i42, %len
  br i1 %cmp16.not, label %if.end13.cleanup_crit_edge, label %do.end27, !prof !128

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end27:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %client, align 4
  %dev29 = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29, ptr noundef nonnull @.str.33, i32 noundef %len, i32 noundef %call.i42) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end27, %if.end13.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %call.i42, %do.end27 ], [ %len, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lm8323_configure(ptr nocapture noundef readonly %lm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %size_x = getelementptr inbounds %struct.lm8323_chip, ptr %lm, i32 0, i32 8
  %0 = ptrtoint ptr %size_x to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size_x, align 4
  %size_y = getelementptr inbounds %struct.lm8323_chip, ptr %lm, i32 0, i32 9
  %2 = ptrtoint ptr %size_y to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size_y, align 4
  %debounce_time = getelementptr inbounds %struct.lm8323_chip, ptr %lm, i32 0, i32 10
  %4 = ptrtoint ptr %debounce_time to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debounce_time, align 4
  %shr = ashr i32 %5, 2
  %active_time = getelementptr inbounds %struct.lm8323_chip, ptr %lm, i32 0, i32 11
  %shl = shl i32 %1, 4
  %or = or i32 %shl, %3
  tail call void (ptr, i32, ...) @lm8323_write(ptr noundef %lm, i32 noundef 2, i32 noundef 129, i32 noundef 0)
  tail call void (ptr, i32, ...) @lm8323_write(ptr noundef %lm, i32 noundef 2, i32 noundef 147, i32 noundef 11)
  tail call void (ptr, i32, ...) @lm8323_write(ptr noundef %lm, i32 noundef 2, i32 noundef 144, i32 noundef %or)
  %6 = ptrtoint ptr %active_time to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %active_time, align 4
  %shr.i = ashr i32 %7, 2
  tail call void (ptr, i32, ...) @lm8323_write(ptr noundef %lm, i32 noundef 2, i32 noundef 139, i32 noundef %shr.i) #12
  tail call void (ptr, i32, ...) @lm8323_write(ptr noundef %lm, i32 noundef 2, i32 noundef 143, i32 noundef %shr)
  tail call void (ptr, i32, ...) @lm8323_write(ptr noundef %lm, i32 noundef 3, i32 noundef 134, i32 noundef 255, i32 noundef 255)
  tail call void (ptr, i32, ...) @lm8323_write(ptr noundef %lm, i32 noundef 3, i32 noundef 133, i32 noundef 0, i32 noundef 0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm8323_irq(i32 noundef %irq, ptr noundef %_lm) #2 align 64 {
entry:
  %error.i = alloca i8, align 1
  %key_fifo.i = alloca [16 x i8], align 1
  %ints = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ints) #12
  %0 = ptrtoint ptr %ints to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %ints, align 1, !annotation !124
  tail call void @mutex_lock_nested(ptr noundef %_lm, i32 noundef 0) #12
  %call44 = call fastcc i32 @lm8323_read(ptr noundef %_lm, i8 noundef zeroext -126, ptr noundef nonnull %ints, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call44)
  %cmp45 = icmp eq i32 %call44, 1
  br i1 %cmp45, label %land.rhs.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %entry
  %keys_down.i = getelementptr inbounds %struct.lm8323_chip, ptr %_lm, i32 0, i32 5
  %kp_enabled.i = getelementptr inbounds %struct.lm8323_chip, ptr %_lm, i32 0, i32 3
  %idev.i = getelementptr inbounds %struct.lm8323_chip, ptr %_lm, i32 0, i32 2
  %active_time.i = getelementptr inbounds %struct.lm8323_chip, ptr %_lm, i32 0, i32 11
  %client.i = getelementptr inbounds %struct.lm8323_chip, ptr %_lm, i32 0, i32 1
  %lock.i = getelementptr %struct.lm8323_chip, ptr %_lm, i32 0, i32 12, i32 0, i32 6
  %running.i = getelementptr %struct.lm8323_chip, ptr %_lm, i32 0, i32 12, i32 0, i32 5
  %desired_brightness.i = getelementptr %struct.lm8323_chip, ptr %_lm, i32 0, i32 12, i32 0, i32 3
  %brightness.i = getelementptr %struct.lm8323_chip, ptr %_lm, i32 0, i32 12, i32 0, i32 2
  %work.i = getelementptr %struct.lm8323_chip, ptr %_lm, i32 0, i32 12, i32 0, i32 7
  %lock.i.1 = getelementptr %struct.lm8323_chip, ptr %_lm, i32 0, i32 12, i32 1, i32 6
  %running.i.1 = getelementptr %struct.lm8323_chip, ptr %_lm, i32 0, i32 12, i32 1, i32 5
  %desired_brightness.i.1 = getelementptr %struct.lm8323_chip, ptr %_lm, i32 0, i32 12, i32 1, i32 3
  %brightness.i.1 = getelementptr %struct.lm8323_chip, ptr %_lm, i32 0, i32 12, i32 1, i32 2
  %work.i.1 = getelementptr %struct.lm8323_chip, ptr %_lm, i32 0, i32 12, i32 1, i32 7
  %lock.i.2 = getelementptr %struct.lm8323_chip, ptr %_lm, i32 0, i32 12, i32 2, i32 6
  %running.i.2 = getelementptr %struct.lm8323_chip, ptr %_lm, i32 0, i32 12, i32 2, i32 5
  %desired_brightness.i.2 = getelementptr %struct.lm8323_chip, ptr %_lm, i32 0, i32 12, i32 2, i32 3
  %brightness.i.2 = getelementptr %struct.lm8323_chip, ptr %_lm, i32 0, i32 12, i32 2, i32 2
  %work.i.2 = getelementptr %struct.lm8323_chip, ptr %_lm, i32 0, i32 12, i32 2, i32 7
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.2.land.rhs_crit_edge, %land.rhs.lr.ph
  %1 = ptrtoint ptr %ints to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ints, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %3 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %while.body.if.end_crit_edge, label %if.then, !prof !127

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %key_fifo.i) #12
  %4 = call ptr @memset(ptr %key_fifo.i, i32 255, i32 16)
  %5 = ptrtoint ptr %keys_down.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %keys_down.i, align 4
  %call.i = call fastcc i32 @lm8323_read(ptr noundef %_lm, i8 noundef zeroext -119, ptr noundef nonnull %key_fifo.i, i32 noundef 15) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.46) #15
  br label %process_keys.exit

if.end.i:                                         ; preds = %if.then
  %arrayidx.i = getelementptr [16 x i8], ptr %key_fifo.i, i32 0, i32 %call.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx.i, align 1
  %10 = ptrtoint ptr %key_fifo.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %key_fifo.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not52.i = icmp eq i8 %11, 0
  br i1 %tobool.not52.i, label %while.end.ithread-pre-split, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

while.body.i:                                     ; preds = %if.end10.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %12 = phi i8 [ %28, %if.end10.i.while.body.i_crit_edge ], [ %11, %if.end.i.while.body.i_crit_edge ]
  %inc53.i = phi i32 [ %inc.i, %if.end10.i.while.body.i_crit_edge ], [ 1, %if.end.i.while.body.i_crit_edge ]
  %13 = ptrtoint ptr %kp_enabled.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %kp_enabled.i, align 4, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool5.not.i = icmp eq i8 %14, 0
  br i1 %tobool5.not.i, label %while.body.i.if.end10.i_crit_edge, label %if.then6.i

while.body.i.if.end10.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i

if.then6.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %15 = and i8 %12, 127
  %idxprom.i = zext i8 %15 to i32
  %arrayidx4.i = getelementptr %struct.lm8323_chip, ptr %_lm, i32 0, i32 7, i32 %idxprom.i
  %16 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx4.i, align 2
  %18 = ptrtoint ptr %idev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %idev.i, align 4
  call void @input_event(ptr noundef %19, i32 noundef 4, i32 noundef 4, i32 noundef %idxprom.i) #12
  %20 = ptrtoint ptr %idev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %idev.i, align 4
  %conv8.i = zext i16 %17 to i32
  %.lobit.i = lshr i8 %12, 7
  %22 = zext i8 %.lobit.i to i32
  call void @input_event(ptr noundef %21, i32 noundef 1, i32 noundef %conv8.i, i32 noundef %22) #12
  %23 = ptrtoint ptr %idev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %idev.i, align 4
  call void @input_event(ptr noundef %24, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then6.i, %while.body.i.if.end10.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %tobool11.not.i = icmp sgt i8 %12, -1
  %25 = ptrtoint ptr %keys_down.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %keys_down.i, align 4
  %..i = select i1 %tobool11.not.i, i32 -1, i32 1
  %dec.i = add i32 %26, %..i
  store i32 %dec.i, ptr %keys_down.i, align 4
  %inc.i = add i32 %inc53.i, 1
  %arrayidx1.i = getelementptr [16 x i8], ptr %key_fifo.i, i32 0, i32 %inc53.i
  %27 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx1.i, align 1
  %tobool.not.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i, label %if.end10.i.while.end.i_crit_edge, label %if.end10.i.while.body.i_crit_edge

if.end10.i.while.body.i_crit_edge:                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

if.end10.i.while.end.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.end.ithread-pre-split:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %keys_down.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pr = load i32, ptr %keys_down.i, align 4
  br label %while.end.i

while.end.i:                                      ; preds = %while.end.ithread-pre-split, %if.end10.i.while.end.i_crit_edge
  %30 = phi i32 [ %.pr, %while.end.ithread-pre-split ], [ %dec.i, %if.end10.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool17.not.i = icmp eq i32 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool19.not.i = icmp eq i32 %30, 0
  br i1 %tobool17.not.i, label %land.lhs.true.i, label %land.lhs.true23.critedge.i

land.lhs.true.i:                                  ; preds = %while.end.i
  br i1 %tobool19.not.i, label %land.lhs.true.i.process_keys.exit_crit_edge, label %if.then20.i

land.lhs.true.i.process_keys.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %process_keys.exit

if.then20.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, ...) @lm8323_write(ptr noundef %_lm, i32 noundef 2, i32 noundef 139, i32 noundef 0) #12
  br label %process_keys.exit

land.lhs.true23.critedge.i:                       ; preds = %while.end.i
  br i1 %tobool19.not.i, label %if.then26.i, label %land.lhs.true23.critedge.i.process_keys.exit_crit_edge

land.lhs.true23.critedge.i.process_keys.exit_crit_edge: ; preds = %land.lhs.true23.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %process_keys.exit

if.then26.i:                                      ; preds = %land.lhs.true23.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %active_time.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %active_time.i, align 4
  %shr.i.i = ashr i32 %32, 2
  call void (ptr, i32, ...) @lm8323_write(ptr noundef %_lm, i32 noundef 2, i32 noundef 139, i32 noundef %shr.i.i) #12
  br label %process_keys.exit

process_keys.exit:                                ; preds = %if.then26.i, %land.lhs.true23.critedge.i.process_keys.exit_crit_edge, %if.then20.i, %land.lhs.true.i.process_keys.exit_crit_edge, %do.end.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %key_fifo.i) #12
  br label %if.end

if.end:                                           ; preds = %process_keys.exit, %while.body.if.end_crit_edge
  %33 = ptrtoint ptr %ints to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ints, align 1
  %35 = and i8 %34, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool12.not = icmp eq i8 %35, 0
  br i1 %tobool12.not, label %if.end.if.end14_crit_edge, label %if.then13

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %error.i) #12
  %36 = ptrtoint ptr %error.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -1, ptr %error.i, align 1, !annotation !124
  %call.i39 = call fastcc i32 @lm8323_read(ptr noundef %_lm, i8 noundef zeroext -116, ptr noundef nonnull %error.i, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %error.i) #12
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end.if.end14_crit_edge
  %37 = ptrtoint ptr %ints to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ints, align 1
  %39 = and i8 %38, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool17.not = icmp eq i8 %39, 0
  br i1 %tobool17.not, label %if.end14.if.end20_crit_edge, label %do.end

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

do.end:                                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %client.i, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %41, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.44) #15
  call fastcc void @lm8323_configure(ptr noundef %_lm)
  br label %if.end20

if.end20:                                         ; preds = %do.end, %if.end14.if.end20_crit_edge
  %42 = ptrtoint ptr %ints to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ints, align 1
  %44 = and i8 %43, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool25.not = icmp eq i8 %44, 0
  br i1 %tobool25.not, label %if.end20.for.inc_crit_edge, label %if.then26

if.end20.for.inc_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then26:                                        ; preds = %if.end20
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #12
  %45 = ptrtoint ptr %running.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %running.i, align 1
  %46 = ptrtoint ptr %desired_brightness.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %desired_brightness.i, align 4
  %48 = ptrtoint ptr %brightness.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %brightness.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp.not.i = icmp eq i32 %47, %49
  br i1 %cmp.not.i, label %if.then26.pwm_done.exit_crit_edge, label %if.then.i

if.then26.pwm_done.exit_crit_edge:                ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  br label %pwm_done.exit

if.then.i:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %50 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %50, ptr noundef %work.i) #12
  br label %pwm_done.exit

pwm_done.exit:                                    ; preds = %if.then.i, %if.then26.pwm_done.exit_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i) #12
  br label %for.inc

for.inc:                                          ; preds = %pwm_done.exit, %if.end20.for.inc_crit_edge
  %51 = ptrtoint ptr %ints to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %ints, align 1
  %53 = and i8 %52, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool25.not.1 = icmp eq i8 %53, 0
  br i1 %tobool25.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then26.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.then26.1:                                      ; preds = %for.inc
  call void @mutex_lock_nested(ptr noundef %lock.i.1, i32 noundef 0) #12
  %54 = ptrtoint ptr %running.i.1 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %running.i.1, align 1
  %55 = ptrtoint ptr %desired_brightness.i.1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %desired_brightness.i.1, align 4
  %57 = ptrtoint ptr %brightness.i.1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %brightness.i.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp.not.i.1 = icmp eq i32 %56, %58
  br i1 %cmp.not.i.1, label %if.then26.1.pwm_done.exit.1_crit_edge, label %if.then.i.1

if.then26.1.pwm_done.exit.1_crit_edge:            ; preds = %if.then26.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %pwm_done.exit.1

if.then.i.1:                                      ; preds = %if.then26.1
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %59 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.1 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %59, ptr noundef %work.i.1) #12
  br label %pwm_done.exit.1

pwm_done.exit.1:                                  ; preds = %if.then.i.1, %if.then26.1.pwm_done.exit.1_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i.1) #12
  %60 = ptrtoint ptr %ints to i32
  call void @__asan_load1_noabort(i32 %60)
  %.pr46 = load i8, ptr %ints, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %pwm_done.exit.1, %for.inc.for.inc.1_crit_edge
  %61 = phi i8 [ %.pr46, %pwm_done.exit.1 ], [ %52, %for.inc.for.inc.1_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %61)
  %tobool25.not.2 = icmp sgt i8 %61, -1
  br i1 %tobool25.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then26.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.then26.2:                                      ; preds = %for.inc.1
  call void @mutex_lock_nested(ptr noundef %lock.i.2, i32 noundef 0) #12
  %62 = ptrtoint ptr %running.i.2 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %running.i.2, align 1
  %63 = ptrtoint ptr %desired_brightness.i.2 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %desired_brightness.i.2, align 4
  %65 = ptrtoint ptr %brightness.i.2 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %brightness.i.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %66)
  %cmp.not.i.2 = icmp eq i32 %64, %66
  br i1 %cmp.not.i.2, label %if.then26.2.pwm_done.exit.2_crit_edge, label %if.then.i.2

if.then26.2.pwm_done.exit.2_crit_edge:            ; preds = %if.then26.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %pwm_done.exit.2

if.then.i.2:                                      ; preds = %if.then26.2
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %67 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.2 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %67, ptr noundef %work.i.2) #12
  br label %pwm_done.exit.2

pwm_done.exit.2:                                  ; preds = %if.then.i.2, %if.then26.2.pwm_done.exit.2_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i.2) #12
  br label %for.inc.2

for.inc.2:                                        ; preds = %pwm_done.exit.2, %for.inc.1.for.inc.2_crit_edge
  %call = call fastcc i32 @lm8323_read(ptr noundef %_lm, i8 noundef zeroext -126, ptr noundef nonnull %ints, i32 noundef 1)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %for.inc.2.land.rhs_crit_edge, label %for.inc.2.while.end_crit_edge

for.inc.2.while.end_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

for.inc.2.land.rhs_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

while.end:                                        ; preds = %for.inc.2.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  call void @mutex_unlock(ptr noundef %_lm) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ints) #12
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lm8323_write(ptr nocapture noundef readonly %lm, i32 noundef %len, ...) unnamed_addr #2 align 64 {
entry:
  %ap = alloca %struct.__va_list, align 4
  %data = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ap) #12
  %0 = ptrtoint ptr %ap to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ap, align 4, !annotation !124
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #12
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %data, align 8
  call void @llvm.va_start(ptr nonnull %ap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp22 = icmp sgt i32 %len, 0
  br i1 %cmp22, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.03 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %2)
  %argp.cur = load ptr, ptr %ap, align 4
  %argp.next = getelementptr inbounds i8, ptr %argp.cur, i32 4
  store ptr %argp.next, ptr %ap, align 4
  %3 = ptrtoint ptr %argp.cur to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %argp.cur, align 4
  %conv = trunc i32 %4 to i8
  %arrayidx = getelementptr [8 x i8], ptr %data, i32 0, i32 %i.03
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.va_end(ptr nonnull %ap)
  %client3 = getelementptr inbounds %struct.lm8323_chip, ptr %lm, i32 0, i32 1
  %6 = ptrtoint ptr %client3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client3, align 4
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %7, ptr noundef nonnull %data, i32 noundef %len, i16 noundef zeroext 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -121, i32 %call.i)
  %cmp4 = icmp eq i32 %call.i, -121
  br i1 %cmp4, label %if.then12, label %for.end.if.end16_crit_edge, !prof !127

for.end.if.end16_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then12:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %client3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client3, align 4
  %call.i1 = call i32 @i2c_transfer_buffer_flags(ptr noundef %9, ptr noundef nonnull %data, i32 noundef %len, i16 noundef zeroext 0) #12
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %for.end.if.end16_crit_edge
  %ret.0 = phi i32 [ %call.i1, %if.then12 ], [ %call.i, %for.end.if.end16_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %ret.0, i32 %len)
  %cmp17.not = icmp eq i32 %ret.0, %len
  br i1 %cmp17.not, label %if.end16.cleanup_crit_edge, label %do.end28, !prof !128

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end28:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %client3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client3, align 4
  %dev30 = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30, ptr noundef nonnull @.str.28, i32 noundef %len, i32 noundef %ret.0) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %if.end16.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ap) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lm8323_pwm_work(ptr noundef %work) #2 align 64 {
entry:
  %pwm_cmds = alloca [3 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -112
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %pwm_cmds) #12
  %0 = ptrtoint ptr %pwm_cmds to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %pwm_cmds, align 2, !annotation !124
  %1 = getelementptr inbounds [3 x i16], ptr %pwm_cmds, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %1, align 2, !annotation !124
  %3 = getelementptr inbounds [3 x i16], ptr %pwm_cmds, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %3, align 2, !annotation !124
  %lock = getelementptr i8, ptr %work, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %running = getelementptr i8, ptr %work, i32 -95
  %5 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %running, align 1, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %desired_brightness = getelementptr i8, ptr %work, i32 -100
  %7 = ptrtoint ptr %desired_brightness to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %desired_brightness, align 4
  %brightness = getelementptr i8, ptr %work, i32 -104
  %9 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %brightness, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp = icmp eq i32 %8, %10
  br i1 %cmp, label %lor.lhs.false.out_crit_edge, label %while.body.lr.ph

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

while.body.lr.ph:                                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp2.not = icmp eq i32 %8, 0
  %sub = sub i32 %8, %10
  %11 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %fade_time = getelementptr i8, ptr %work, i32 -108
  %12 = ptrtoint ptr %fade_time to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fade_time, align 4
  %div = sdiv i32 %13, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %div)
  %cmp13 = icmp sgt i32 %div, 64
  %hz.0 = select i1 %cmp13, i32 64, i32 2048
  %mul = mul i32 %hz.0, %13
  %mul18 = mul i32 %11, 1000
  %div19 = sdiv i32 %mul, %mul18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div19)
  %cmp20 = icmp eq i32 %div19, 0
  %14 = tail call i32 @llvm.smin.i32(i32 %div19, i32 63)
  %phi.bo = shl i32 %14, 8
  %phi.bo77 = and i32 %phi.bo, 16128
  %perstep.0 = select i1 %cmp20, i32 256, i32 %phi.bo77
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp5 = icmp sgt i32 %8, %10
  %shl = select i1 %cmp13, i32 16384, i32 0
  %cond43 = select i1 %cmp5, i32 0, i32 128
  %or = or i32 %shl, %cond43
  %or41 = or i32 %or, %perstep.0
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %num_cmds.080 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %while.body.while.body_crit_edge ]
  %steps.079 = phi i32 [ %11, %while.body.lr.ph ], [ %sub46, %while.body.while.body_crit_edge ]
  %15 = tail call i32 @llvm.smin.i32(i32 %steps.079, i32 126)
  %and40 = and i32 %15, 127
  %or44 = or i32 %or41, %and40
  %conv45 = trunc i32 %or44 to i16
  %inc = add i32 %num_cmds.080, 1
  %arrayidx = getelementptr [3 x i16], ptr %pwm_cmds, i32 0, i32 %num_cmds.080
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv45, ptr %arrayidx, align 2
  %sub46 = sub i32 %steps.079, %15
  %tobool29.not = icmp eq i32 %sub46, 0
  br i1 %tobool29.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %num_cmds.080)
  %cmp16.i = icmp ult i32 %num_cmds.080, 2147483647
  br i1 %cmp16.i, label %for.body.lr.ph.i, label %while.end.lm8323_write_pwm.exit_crit_edge

while.end.lm8323_write_pwm.exit_crit_edge:        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %lm8323_write_pwm.exit

for.body.lr.ph.i:                                 ; preds = %while.end
  %chip.i.i = getelementptr i8, ptr %work, i32 444
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.017.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i16, ptr %pwm_cmds, i32 %i.017.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx.i, align 2
  %19 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chip.i.i, align 4
  %shl.i.i = shl i32 %i.017.i, 2
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr, align 4
  %or.i.i = or i32 %22, %shl.i.i
  %conv.i.i = zext i16 %18 to i32
  %23 = lshr i32 %conv.i.i, 8
  %and2.i.i = and i32 %conv.i.i, 255
  tail call void (ptr, i32, ...) @lm8323_write(ptr noundef %20, i32 noundef 4, i32 noundef 149, i32 noundef %or.i.i, i32 noundef %23, i32 noundef %and2.i.i) #12
  %inc.i = add nuw nsw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %i.017.i, %num_cmds.080
  br i1 %exitcond.not.i, label %for.end.loopexit.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.loopexit.i:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %phi.bo.i = shl i32 %inc, 2
  br label %lm8323_write_pwm.exit

lm8323_write_pwm.exit:                            ; preds = %for.end.loopexit.i, %while.end.lm8323_write_pwm.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %while.end.lm8323_write_pwm.exit_crit_edge ], [ %phi.bo.i, %for.end.loopexit.i ]
  %chip.i11.i = getelementptr i8, ptr %work, i32 444
  %24 = ptrtoint ptr %chip.i11.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chip.i11.i, align 4
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr, align 4
  %or.i13.i = or i32 %27, %i.0.lcssa.i
  %conv.i14.i = select i1 %cmp2.not, i32 200, i32 192
  tail call void (ptr, i32, ...) @lm8323_write(ptr noundef %25, i32 noundef 4, i32 noundef 149, i32 noundef %or.i13.i, i32 noundef %conv.i14.i, i32 noundef 0) #12
  %28 = ptrtoint ptr %chip.i11.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chip.i11.i, align 4
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr, align 4
  tail call void (ptr, i32, ...) @lm8323_write(ptr noundef %29, i32 noundef 2, i32 noundef 150, i32 noundef %31) #12
  %32 = ptrtoint ptr %running to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %running, align 1
  %33 = ptrtoint ptr %desired_brightness to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %desired_brightness, align 4
  %35 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %brightness, align 4
  br label %out

out:                                              ; preds = %lm8323_write_pwm.exit, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %pwm_cmds) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lm8323_pwm_set_brightness(ptr noundef %led_cdev, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr i8, ptr %led_cdev, i32 400
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %lock = getelementptr i8, ptr %led_cdev, i32 -136
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %desired_brightness = getelementptr i8, ptr %led_cdev, i32 -144
  %2 = ptrtoint ptr %desired_brightness to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %brightness, ptr %desired_brightness, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #12
  %3 = tail call i32 @llvm.read_register.i32(metadata !114) #12
  %and.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %6, 15728640
  %7 = tail call i32 @llvm.read_register.i32(metadata !114) #12
  %and.i.i28 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i28 to ptr
  %preempt_count.i29 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i29 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i29, align 4
  %and3 = and i32 %10, 983040
  %or = or i32 %and3, %and
  %11 = tail call i32 @llvm.read_register.i32(metadata !114) #12
  %and.i.i30 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i30 to ptr
  %preempt_count.i31 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i31 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i31, align 4
  %and5 = and i32 %14, 65280
  %or6 = or i32 %or, %and5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or6)
  %tobool.not = icmp eq i32 %or6, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %work = getelementptr i8, ptr %led_cdev, i32 -44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %15 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %work) #12
  br label %if.end19

if.else:                                          ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #12
  %pm_suspend = getelementptr inbounds %struct.lm8323_chip, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %pm_suspend to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pm_suspend, align 1, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool9.not = icmp eq i8 %17, 0
  %work14 = getelementptr i8, ptr %led_cdev, i32 -44
  br i1 %tobool9.not, label %if.then13, label %if.else16, !prof !128

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %18 = load ptr, ptr @system_wq, align 4
  %call.i.i32 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %work14) #12
  br label %if.end

if.else16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lm8323_pwm_work(ptr noundef %work14)
  br label %if.end

if.end:                                           ; preds = %if.else16, %if.then13
  tail call void @mutex_unlock(ptr noundef %1) #12
  br label %if.end19

if.end19:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm8323_pwm_show_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %fade_time = getelementptr i8, ptr %1, i32 -152
  %2 = ptrtoint ptr %fade_time to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fade_time, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm8323_pwm_store_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %time = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %time) #12
  %2 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %time, align 4, !annotation !124
  %call1 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %time) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %time, align 4
  %fade_time = getelementptr i8, ptr %1, i32 -152
  %5 = ptrtoint ptr %fade_time to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %fade_time, align 4
  %call2 = call i32 @strlen(ptr noundef %buf) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %time) #12
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm8323_show_disable(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %kp_enabled = getelementptr inbounds %struct.lm8323_chip, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %kp_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %kp_enabled, align 4, !range !125
  %4 = xor i8 %3, 1
  %5 = zext i8 %4 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.43, i32 noundef %5)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm8323_set_disable(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #12
  %2 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %i, align 4, !annotation !124
  %call1 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #12
  %3 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  %kp_enabled = getelementptr inbounds %struct.lm8323_chip, ptr %1, i32 0, i32 3
  %frombool = zext i1 %tobool2.not to i8
  %5 = ptrtoint ptr %kp_enabled to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %kp_enabled, align 4
  call void @mutex_unlock(ptr noundef %1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm8323_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr i8, ptr %dev, i32 932
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call1 = tail call i32 @irq_set_irq_wake(i32 noundef %3, i32 noundef 0) #12
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %5) #12
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #12
  %pm_suspend = getelementptr inbounds %struct.lm8323_chip, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %pm_suspend to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %pm_suspend, align 1
  tail call void @mutex_unlock(ptr noundef %1) #12
  %enabled = getelementptr %struct.lm8323_chip, ptr %1, i32 0, i32 12, i32 0, i32 4
  %7 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %enabled, align 4, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %cdev = getelementptr %struct.lm8323_chip, ptr %1, i32 0, i32 12, i32 0, i32 8
  tail call void @led_classdev_suspend(ptr noundef %cdev) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %enabled.1 = getelementptr %struct.lm8323_chip, ptr %1, i32 0, i32 12, i32 1, i32 4
  %9 = ptrtoint ptr %enabled.1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %enabled.1, align 4, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.1 = icmp eq i8 %10, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  %cdev.1 = getelementptr %struct.lm8323_chip, ptr %1, i32 0, i32 12, i32 1, i32 8
  tail call void @led_classdev_suspend(ptr noundef %cdev.1) #12
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %enabled.2 = getelementptr %struct.lm8323_chip, ptr %1, i32 0, i32 12, i32 2, i32 4
  %11 = ptrtoint ptr %enabled.2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %enabled.2, align 4, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.2 = icmp eq i8 %12, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  %cdev.2 = getelementptr %struct.lm8323_chip, ptr %1, i32 0, i32 12, i32 2, i32 8
  tail call void @led_classdev_suspend(ptr noundef %cdev.2) #12
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm8323_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #12
  %pm_suspend = getelementptr inbounds %struct.lm8323_chip, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pm_suspend to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %pm_suspend, align 1
  tail call void @mutex_unlock(ptr noundef %1) #12
  %enabled = getelementptr %struct.lm8323_chip, ptr %1, i32 0, i32 12, i32 0, i32 4
  %3 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enabled, align 4, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %cdev = getelementptr %struct.lm8323_chip, ptr %1, i32 0, i32 12, i32 0, i32 8
  tail call void @led_classdev_resume(ptr noundef %cdev) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %enabled.1 = getelementptr %struct.lm8323_chip, ptr %1, i32 0, i32 12, i32 1, i32 4
  %5 = ptrtoint ptr %enabled.1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %enabled.1, align 4, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.1 = icmp eq i8 %6, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  %cdev.1 = getelementptr %struct.lm8323_chip, ptr %1, i32 0, i32 12, i32 1, i32 8
  tail call void @led_classdev_resume(ptr noundef %cdev.1) #12
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %enabled.2 = getelementptr %struct.lm8323_chip, ptr %1, i32 0, i32 12, i32 2, i32 4
  %7 = ptrtoint ptr %enabled.2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %enabled.2, align 4, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.2 = icmp eq i8 %8, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  %cdev.2 = getelementptr %struct.lm8323_chip, ptr %1, i32 0, i32 12, i32 2, i32 8
  tail call void @led_classdev_resume(ptr noundef %cdev.2) #12
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %irq = getelementptr i8, ptr %dev, i32 932
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %10) #12
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq, align 4
  %call5 = tail call i32 @irq_set_irq_wake(i32 noundef %12, i32 noundef 1) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !39, !40, !41, !43, !44, !45, !47, !49, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !79, !80, !82, !83, !84, !85, !87, !88, !90, !92, !93, !95, !97, !98, !100, !102, !103, !104, !105, !107, !108, !109, !110, !112}
!llvm.named.register.sp = !{!114}
!llvm.module.flags = !{!115, !116, !117, !118, !119, !120, !121, !122}
!llvm.ident = !{!123}

!0 = !{ptr @__initcall__kmod_lm8323__291_840_lm8323_i2c_driver_init6, !1, !"__initcall__kmod_lm8323__291_840_lm8323_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/keyboard/lm8323.c", i32 840, i32 1}
!2 = !{ptr @__exitcall_lm8323_i2c_driver_exit, !1, !"__exitcall_lm8323_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author292, !4, !"__UNIQUE_ID_author292", i1 false, i1 false}
!4 = !{!"../drivers/input/keyboard/lm8323.c", i32 842, i32 1}
!5 = !{ptr @__UNIQUE_ID_author293, !6, !"__UNIQUE_ID_author293", i1 false, i1 false}
!6 = !{!"../drivers/input/keyboard/lm8323.c", i32 843, i32 1}
!7 = !{ptr @__UNIQUE_ID_author294, !8, !"__UNIQUE_ID_author294", i1 false, i1 false}
!8 = !{!"../drivers/input/keyboard/lm8323.c", i32 844, i32 1}
!9 = !{ptr @__UNIQUE_ID_description295, !10, !"__UNIQUE_ID_description295", i1 false, i1 false}
!10 = !{!"../drivers/input/keyboard/lm8323.c", i32 845, i32 1}
!11 = !{ptr @__UNIQUE_ID_file296, !12, !"__UNIQUE_ID_file296", i1 false, i1 false}
!12 = !{!"../drivers/input/keyboard/lm8323.c", i32 846, i32 1}
!13 = !{ptr @__UNIQUE_ID_license297, !12, !"__UNIQUE_ID_license297", i1 false, i1 false}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/keyboard/lm8323.c", i32 831, i32 11}
!16 = !{ptr @lm8323_i2c_driver, !17, !"lm8323_i2c_driver", i1 false, i1 false}
!17 = !{!"../drivers/input/keyboard/lm8323.c", i32 829, i32 26}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/input/keyboard/lm8323.c", i32 630, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @lm8323_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @lm8323_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/keyboard/lm8323.c", i32 635, i32 3}
!28 = !{ptr @lm8323_probe._entry.6, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @lm8323_probe._entry_ptr.8, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/keyboard/lm8323.c", i32 641, i32 3}
!32 = !{ptr @lm8323_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @lm8323_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @lm8323_probe.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/input/keyboard/lm8323.c", i32 655, i32 2}
!36 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/input/keyboard/lm8323.c", i32 675, i32 4}
!39 = !{ptr @lm8323_probe._entry.13, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @lm8323_probe._entry_ptr.15, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/input/keyboard/lm8323.c", i32 687, i32 3}
!43 = !{ptr @lm8323_probe._entry.16, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @lm8323_probe._entry_ptr.18, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/input/keyboard/lm8323.c", i32 704, i32 31}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/input/keyboard/lm8323.c", i32 706, i32 4}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/input/keyboard/lm8323.c", i32 722, i32 3}
!51 = !{ptr @lm8323_probe.__UNIQUE_ID_ddebug290, !50, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/input/keyboard/lm8323.c", i32 729, i32 3}
!54 = !{ptr @lm8323_probe._entry.22, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @lm8323_probe._entry_ptr.24, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/input/keyboard/lm8323.c", i32 171, i32 3}
!58 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @lm8323_write._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @lm8323_write._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/input/keyboard/lm8323.c", i32 189, i32 3}
!63 = !{ptr @lm8323_write._entry.27, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @lm8323_write._entry_ptr.29, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/input/keyboard/lm8323.c", i32 211, i32 3}
!67 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @lm8323_read._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @lm8323_read._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/input/keyboard/lm8323.c", i32 218, i32 3}
!72 = !{ptr @lm8323_read._entry.32, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @lm8323_read._entry_ptr.34, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @init_pwm.__key, !75, !"__key", i1 false, i1 false}
!75 = !{!"../drivers/input/keyboard/lm8323.c", i32 570, i32 2}
!76 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @init_pwm.__key.36, !78, !"__key", i1 false, i1 false}
!78 = !{!"../drivers/input/keyboard/lm8323.c", i32 571, i32 2}
!79 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/input/keyboard/lm8323.c", i32 579, i32 4}
!82 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @init_pwm._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @init_pwm._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @lm8323_pwm_groups, !86, !"lm8323_pwm_groups", i1 false, i1 false}
!86 = !{!"../drivers/input/keyboard/lm8323.c", i32 553, i32 1}
!87 = !{ptr @lm8323_pwm_group, !86, !"lm8323_pwm_group", i1 false, i1 false}
!88 = !{ptr @lm8323_pwm_attrs, !89, !"lm8323_pwm_attrs", i1 false, i1 false}
!89 = !{!"../drivers/input/keyboard/lm8323.c", i32 549, i32 26}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/input/keyboard/lm8323.c", i32 547, i32 8}
!92 = !{ptr @dev_attr_time, !91, !"dev_attr_time", i1 false, i1 false}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/input/keyboard/lm8323.c", i32 528, i32 22}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/input/keyboard/lm8323.c", i32 616, i32 8}
!97 = !{ptr @dev_attr_disable_kp, !96, !"dev_attr_disable_kp", i1 false, i1 false}
!98 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/input/keyboard/lm8323.c", i32 595, i32 22}
!100 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/input/keyboard/lm8323.c", i32 384, i32 4}
!102 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @lm8323_irq._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @lm8323_irq._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/input/keyboard/lm8323.c", i32 261, i32 3}
!107 = !{ptr @.str.47, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @process_keys._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @process_keys._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @lm8323_pm_ops, !111, !"lm8323_pm_ops", i1 false, i1 false}
!111 = !{!"../drivers/input/keyboard/lm8323.c", i32 822, i32 8}
!112 = !{ptr @lm8323_id, !113, !"lm8323_id", i1 false, i1 false}
!113 = !{!"../drivers/input/keyboard/lm8323.c", i32 824, i32 35}
!114 = !{!"sp"}
!115 = !{i32 1, !"wchar_size", i32 2}
!116 = !{i32 1, !"min_enum_size", i32 4}
!117 = !{i32 8, !"branch-target-enforcement", i32 0}
!118 = !{i32 8, !"sign-return-address", i32 0}
!119 = !{i32 8, !"sign-return-address-all", i32 0}
!120 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!121 = !{i32 7, !"uwtable", i32 1}
!122 = !{i32 7, !"frame-pointer", i32 2}
!123 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!124 = !{!"auto-init"}
!125 = !{i8 0, i8 2}
!126 = !{i64 2148973509, i64 2148973514, i64 2148973527, i64 2148973571, i64 2148973605, i64 2148973626}
!127 = !{!"branch_weights", i32 1, i32 2000}
!128 = !{!"branch_weights", i32 2000, i32 1}
