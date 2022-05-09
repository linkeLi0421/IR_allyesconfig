; ModuleID = '/llk/IR_all_yes/drivers/input/misc/da9063_onkey.c_pt.bc'
source_filename = "../drivers/input/misc/da9063_onkey.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.da906x_chip_config = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr }
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
%struct.da9063_onkey = type { %struct.delayed_work, ptr, ptr, ptr, ptr, [32 x i8], i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_da9063_onkey__230_278_da9063_onkey_driver_init6 = internal global ptr @da9063_onkey_driver_init, section ".initcall6.init", align 4
@da9063_onkey_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @da9063_onkey_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @da9063_compatible_reg_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_da9063_onkey_driver_exit = internal global ptr @da9063_onkey_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author231 = internal constant [60 x i8] c"da9063_onkey.author=S Twiss <stwiss.opensource@diasemi.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description232 = internal constant [82 x i8] c"da9063_onkey.description=Onkey device driver for Dialog DA9063, DA9062 and DA9061\00", section ".modinfo", align 1
@__UNIQUE_ID_file233 = internal constant [50 x i8] c"da9063_onkey.file=drivers/input/misc/da9063_onkey\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [25 x i8] c"da9063_onkey.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias235 = internal constant [41 x i8] c"da9063_onkey.alias=platform:da9063-onkey\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"da9063-onkey\00", [19 x i8] zeroinitializer }, align 32
@da9063_compatible_reg_id_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlg,da9063-onkey\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @da9063_regs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlg,da9062-onkey\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @da9062_regs }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@da9063_onkey_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 207, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to allocate memory.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"da9063_onkey_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/input/misc/da9063_onkey.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@da9063_onkey_probe._entry_ptr = internal global ptr @da9063_onkey_probe._entry, section ".printk_index", align 4
@da9063_onkey_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 216, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Parent regmap unavailable.\0A\00", [36 x i8] zeroinitializer }, align 32
@da9063_onkey_probe._entry_ptr.8 = internal global ptr @da9063_onkey_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dlg,disable-key-power\00", [42 x i8] zeroinitializer }, align 32
@da9063_onkey_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 225, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to allocated input device.\0A\00", [61 x i8] zeroinitializer }, align 32
@da9063_onkey_probe._entry_ptr.12 = internal global ptr @da9063_onkey_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s/input0\00", [22 x i8] zeroinitializer }, align 32
@da9063_onkey_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&(&onkey->work)->work)\00", [55 x i8] zeroinitializer }, align 32
@da9063_onkey_probe.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&(&onkey->work)->timer\00", [41 x i8] zeroinitializer }, align 32
@da9063_onkey_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 243, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to add cancel poll action: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@da9063_onkey_probe._entry_ptr.19 = internal global ptr @da9063_onkey_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ONKEY\00", [26 x i8] zeroinitializer }, align 32
@da9063_onkey_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 257, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to request IRQ %d: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@da9063_onkey_probe._entry_ptr.23 = internal global ptr @da9063_onkey_probe._entry.21, section ".printk_index", align 4
@da9063_onkey_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 264, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to register input device: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@da9063_onkey_probe._entry_ptr.26 = internal global ptr @da9063_onkey_probe._entry.24, section ".printk_index", align 4
@da9063_poll_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 99, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to read ON status: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"da9063_poll_on\00", [17 x i8] zeroinitializer }, align 32
@da9063_poll_on._entry_ptr = internal global ptr @da9063_poll_on._entry, section ".printk_index", align 4
@da9063_poll_on._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.3, i32 110, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to reset the Key Delay %d\0A\00", [62 x i8] zeroinitializer }, align 32
@da9063_poll_on._entry_ptr.31 = internal global ptr @da9063_poll_on._entry.29, section ".printk_index", align 4
@da9063_poll_on._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.3, i32 129, ptr @.str.34, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Cannot read FAULT_LOG: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@da9063_poll_on._entry_ptr.35 = internal global ptr @da9063_poll_on._entry.32, section ".printk_index", align 4
@da9063_poll_on._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.28, ptr @.str.3, i32 137, ptr @.str.34, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Cannot reset KEY_RESET fault log: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@da9063_poll_on._entry_ptr.38 = internal global ptr @da9063_poll_on._entry.36, section ".printk_index", align 4
@da9063_poll_on.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.28, ptr @.str.3, ptr @.str.40, i8 0, i8 35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"da9063_onkey\00", [19 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Sending SHUTDOWN to PMIC ...\0A\00", [34 x i8] zeroinitializer }, align 32
@da9063_poll_on._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.28, ptr @.str.3, i32 150, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cannot SHUTDOWN PMIC: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@da9063_poll_on._entry_ptr.43 = internal global ptr @da9063_poll_on._entry.41, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@da9063_onkey_irq_handler.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.44, ptr @.str.3, ptr @.str.45, i8 0, i8 43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"da9063_onkey_irq_handler\00", [39 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"KEY_POWER long press.\0A\00", [41 x i8] zeroinitializer }, align 32
@da9063_onkey_irq_handler.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.44, ptr @.str.3, ptr @.str.46, i8 0, i8 44, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"KEY_POWER short press.\0A\00", [40 x i8] zeroinitializer }, align 32
@da9063_regs = internal constant { %struct.da906x_chip_config, [60 x i8] } { %struct.da906x_chip_config { i32 1, i32 15, i32 5, i32 19, i32 1, i32 16, i32 32, i32 2, ptr @.str }, [60 x i8] zeroinitializer }, align 32
@da9062_regs = internal constant { %struct.da906x_chip_config, [60 x i8] } { %struct.da906x_chip_config { i32 1, i32 15, i32 5, i32 19, i32 1, i32 16, i32 32, i32 2, ptr @.str.47 }, [60 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"da9062-onkey\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.48 = private unnamed_addr constant [20 x i8] c"da9063_onkey_driver\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 271, i32 31 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 274, i32 11 }
@___asan_gen_.54 = private unnamed_addr constant [31 x i8] c"da9063_compatible_reg_id_table\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 75, i32 34 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 207, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 216, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 221, i32 9 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 225, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 230, i32 45 }
@___asan_gen_.99 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 237, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 241, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 247, i32 38 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 256, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 263, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 98, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 109, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 128, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 135, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 142, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 148, i32 5 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 173, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 179, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant [12 x i8] c"da9063_regs\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 45, i32 40 }
@___asan_gen_.180 = private unnamed_addr constant [12 x i8] c"da9062_regs\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 60, i32 40 }
@___asan_gen_.183 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.184 = private constant [37 x i8] c"../drivers/input/misc/da9063_onkey.c\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 72, i32 10 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @__UNIQUE_ID_alias235, ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_da9063_onkey_driver_exit, ptr @__initcall__kmod_da9063_onkey__230_278_da9063_onkey_driver_init6, ptr @da9063_onkey_driver_exit, ptr @da9063_onkey_probe._entry, ptr @da9063_onkey_probe._entry.10, ptr @da9063_onkey_probe._entry.17, ptr @da9063_onkey_probe._entry.21, ptr @da9063_onkey_probe._entry.24, ptr @da9063_onkey_probe._entry.6, ptr @da9063_onkey_probe._entry_ptr, ptr @da9063_onkey_probe._entry_ptr.12, ptr @da9063_onkey_probe._entry_ptr.19, ptr @da9063_onkey_probe._entry_ptr.23, ptr @da9063_onkey_probe._entry_ptr.26, ptr @da9063_onkey_probe._entry_ptr.8, ptr @da9063_poll_on._entry, ptr @da9063_poll_on._entry.29, ptr @da9063_poll_on._entry.32, ptr @da9063_poll_on._entry.36, ptr @da9063_poll_on._entry.41, ptr @da9063_poll_on._entry_ptr, ptr @da9063_poll_on._entry_ptr.31, ptr @da9063_poll_on._entry_ptr.35, ptr @da9063_poll_on._entry_ptr.38, ptr @da9063_poll_on._entry_ptr.43, ptr @da9063_onkey_driver, ptr @.str, ptr @da9063_compatible_reg_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @da9063_onkey_probe.__key, ptr @.str.14, ptr @da9063_onkey_probe.__key.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @da9063_regs, ptr @da9062_regs, ptr @.str.47], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_onkey_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_compatible_reg_id_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_onkey_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_onkey_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_onkey_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_onkey_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_onkey_probe.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_onkey_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_onkey_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_onkey_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_poll_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_poll_on._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_poll_on._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_poll_on._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_poll_on._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_regs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_regs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @da9063_onkey_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @da9063_onkey_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @da9063_onkey_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @da9063_onkey_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9063_onkey_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_match_node(ptr noundef nonnull @da9063_compatible_reg_id_table, ptr noundef %1) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 152, i32 noundef 3520) #6
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %config = getelementptr inbounds %struct.da9063_onkey, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %config, align 4
  %dev8 = getelementptr inbounds %struct.da9063_onkey, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %dev8, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %call10 = tail call ptr @dev_get_regmap(ptr noundef %7, ptr noundef null) #6
  %regmap = getelementptr inbounds %struct.da9063_onkey, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call10, ptr %regmap, align 4
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %do.end16, label %if.end18

do.end16:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end18:                                         ; preds = %if.end6
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %call.i152 = tail call ptr @of_find_property(ptr noundef %10, ptr noundef nonnull @.str.9, ptr noundef null) #6
  %tobool.i.not = icmp eq ptr %call.i152, null
  %key_power = getelementptr inbounds %struct.da9063_onkey, ptr %call.i, i32 0, i32 6
  %frombool = zext i1 %tobool.i.not to i8
  %11 = ptrtoint ptr %key_power to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool, ptr %key_power, align 4
  %call23 = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #6
  %input = getelementptr inbounds %struct.da9063_onkey, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call23, ptr %input, align 4
  %tobool25.not = icmp eq ptr %call23, null
  br i1 %tobool25.not, label %do.end29, label %if.end31

do.end29:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #9
  br label %cleanup

if.end31:                                         ; preds = %if.end18
  %13 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %config, align 4
  %name = getelementptr inbounds %struct.da906x_chip_config, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name, align 4
  %17 = ptrtoint ptr %call23 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %call23, align 8
  %phys = getelementptr inbounds %struct.da9063_onkey, ptr %call.i, i32 0, i32 5
  %18 = load ptr, ptr %config, align 4
  %name36 = getelementptr inbounds %struct.da906x_chip_config, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %name36 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name36, align 4
  %call37 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 32, ptr noundef nonnull @.str.13, ptr noundef %20)
  %21 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %input, align 4
  %phys41 = getelementptr inbounds %struct.input_dev, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %phys41 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %phys, ptr %phys41, align 4
  %24 = load ptr, ptr %input, align 4
  %parent45 = getelementptr inbounds %struct.input_dev, ptr %24, i32 0, i32 40, i32 1
  %25 = ptrtoint ptr %parent45 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dev, ptr %parent45, align 8
  %26 = load ptr, ptr %input, align 4
  tail call void @input_set_capability(ptr noundef %26, i32 noundef 1, i32 noundef 116) #6
  tail call void @__init_work(ptr noundef nonnull %call.i, i32 noundef 0) #6
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -64, ptr %call.i, align 4
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.14, ptr noundef nonnull @da9063_onkey_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry57 = getelementptr inbounds %struct.work_struct, ptr %call.i, i32 0, i32 1
  %28 = ptrtoint ptr %entry57 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %entry57, ptr %entry57, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %call.i, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %entry57, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.work_struct, ptr %call.i, i32 0, i32 2
  %30 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @da9063_poll_on, ptr %func, align 4
  %timer = getelementptr inbounds %struct.delayed_work, ptr %call.i, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.16, ptr noundef nonnull @da9063_onkey_probe.__key.15) #6
  %call69 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @da9063_cancel_poll, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end76, label %do.end74

do.end74:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %call69) #9
  br label %cleanup

if.end76:                                         ; preds = %if.end31
  %call77 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp = icmp slt i32 %call77, 0
  br i1 %cmp, label %if.end76.cleanup_crit_edge, label %if.end79

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end79:                                         ; preds = %if.end76
  %call81 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call77, ptr noundef null, ptr noundef nonnull @da9063_onkey_irq_handler, i32 noundef 8200, ptr noundef nonnull @.str.20, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end88, label %do.end86

do.end86:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %call77, i32 noundef %call81) #9
  br label %cleanup

if.end88:                                         ; preds = %if.end79
  %31 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %input, align 4
  %call90 = tail call i32 @input_register_device(ptr noundef %32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end88.cleanup_crit_edge, label %do.end95

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end95:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %call90) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end95, %if.end88.cleanup_crit_edge, %do.end86, %if.end76.cleanup_crit_edge, %do.end74, %do.end29, %do.end16, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call69, %do.end74 ], [ %call81, %do.end86 ], [ %call90, %do.end95 ], [ -12, %do.end29 ], [ -6, %do.end16 ], [ -12, %do.end ], [ -6, %entry.cleanup_crit_edge ], [ %call77, %if.end76.cleanup_crit_edge ], [ 0, %if.end88.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @da9063_poll_on(ptr noundef %work) #2 align 64 {
entry:
  %val = alloca i32, align 4
  %fault_log = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %config1 = getelementptr inbounds %struct.da9063_onkey, ptr %work, i32 0, i32 4
  %0 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !105
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fault_log) #6
  %3 = ptrtoint ptr %fault_log to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %fault_log, align 4
  %regmap = getelementptr inbounds %struct.da9063_onkey, ptr %work, i32 0, i32 3
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %call = call i32 @regmap_read(ptr noundef %5, i32 noundef %7, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.da9063_onkey, ptr %work, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.27, i32 noundef %call) #9
  br label %if.then65

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %onkey_nonkey_mask = getelementptr inbounds %struct.da906x_chip_config, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %onkey_nonkey_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %onkey_nonkey_mask, align 4
  %and = and i32 %13, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then3:                                         ; preds = %if.end
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %onkey_pwr_signalling = getelementptr inbounds %struct.da906x_chip_config, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %onkey_pwr_signalling to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %onkey_pwr_signalling, align 4
  %onkey_nonkey_lock_mask = getelementptr inbounds %struct.da906x_chip_config, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %onkey_nonkey_lock_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %onkey_nonkey_lock_mask, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end12, label %do.end10

do.end10:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %dev11 = getelementptr inbounds %struct.da9063_onkey, ptr %work, i32 0, i32 2
  %20 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev11, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.30, i32 noundef %call.i) #9
  br label %if.then65

if.end12:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %input = getelementptr inbounds %struct.da9063_onkey, ptr %work, i32 0, i32 1
  %22 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %input, align 4
  call void @input_event(ptr noundef %23, i32 noundef 1, i32 noundef 116, i32 noundef 0) #6
  %24 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %input, align 4
  call void @input_event(ptr noundef %25, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %if.end14

if.end14:                                         ; preds = %if.end12, %if.end.if.end14_crit_edge
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %onkey_fault_log = getelementptr inbounds %struct.da906x_chip_config, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %onkey_fault_log to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %onkey_fault_log, align 4
  %call16 = call i32 @regmap_read(ptr noundef %27, i32 noundef %29, ptr noundef nonnull %fault_log) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.else, label %do.end21

do.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %input22 = getelementptr inbounds %struct.da9063_onkey, ptr %work, i32 0, i32 1
  %30 = ptrtoint ptr %input22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %input22, align 4
  %dev23 = getelementptr inbounds %struct.input_dev, ptr %31, i32 0, i32 40
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev23, ptr noundef nonnull @.str.33, i32 noundef %call16) #9
  br label %err_poll

if.else:                                          ; preds = %if.end14
  %32 = ptrtoint ptr %fault_log to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fault_log, align 4
  %onkey_key_reset_mask = getelementptr inbounds %struct.da906x_chip_config, ptr %1, i32 0, i32 6
  %34 = ptrtoint ptr %onkey_key_reset_mask to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %onkey_key_reset_mask, align 4
  %and24 = and i32 %35, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.else.err_poll_crit_edge, label %if.then26

if.else.err_poll_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_poll

if.then26:                                        ; preds = %if.else
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap, align 4
  %38 = ptrtoint ptr %onkey_fault_log to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %onkey_fault_log, align 4
  %call30 = call i32 @regmap_write(ptr noundef %37, i32 noundef %39, i32 noundef %35) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %do.body39, label %do.end35

do.end35:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  %input36 = getelementptr inbounds %struct.da9063_onkey, ptr %work, i32 0, i32 1
  %40 = ptrtoint ptr %input36 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %input36, align 4
  %dev37 = getelementptr inbounds %struct.input_dev, ptr %41, i32 0, i32 40
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev37, ptr noundef nonnull @.str.37, i32 noundef %call30) #9
  br label %err_poll

do.body39:                                        ; preds = %if.then26
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @da9063_poll_on.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@da9063_poll_on, %if.then45)) #6
          to label %do.end50 [label %if.then45], !srcloc !106

if.then45:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #8
  %input46 = getelementptr inbounds %struct.da9063_onkey, ptr %work, i32 0, i32 1
  %42 = ptrtoint ptr %input46 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %input46, align 4
  %dev47 = getelementptr inbounds %struct.input_dev, ptr %43, i32 0, i32 40
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @da9063_poll_on.__UNIQUE_ID_ddebug227, ptr noundef %dev47, ptr noundef nonnull @.str.40) #6
  br label %do.end50

do.end50:                                         ; preds = %if.then45, %do.body39
  %44 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap, align 4
  %onkey_shutdown = getelementptr inbounds %struct.da906x_chip_config, ptr %1, i32 0, i32 3
  %46 = ptrtoint ptr %onkey_shutdown to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %onkey_shutdown, align 4
  %onkey_shutdown_mask = getelementptr inbounds %struct.da906x_chip_config, ptr %1, i32 0, i32 7
  %48 = ptrtoint ptr %onkey_shutdown_mask to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %onkey_shutdown_mask, align 4
  %call52 = call i32 @regmap_write(ptr noundef %45, i32 noundef %47, i32 noundef %49) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %do.end50.err_poll_crit_edge, label %do.end57

do.end50.err_poll_crit_edge:                      ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_poll

do.end57:                                         ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #8
  %input58 = getelementptr inbounds %struct.da9063_onkey, ptr %work, i32 0, i32 1
  %50 = ptrtoint ptr %input58 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %input58, align 4
  %dev59 = getelementptr inbounds %struct.input_dev, ptr %51, i32 0, i32 40
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev59, ptr noundef nonnull @.str.42, i32 noundef %call52) #9
  br label %err_poll

err_poll:                                         ; preds = %do.end57, %do.end50.err_poll_crit_edge, %do.end35, %if.else.err_poll_crit_edge, %do.end21
  br i1 %tobool2.not, label %err_poll.if.end69_crit_edge, label %err_poll.if.then65_crit_edge

err_poll.if.then65_crit_edge:                     ; preds = %err_poll
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then65

err_poll.if.end69_crit_edge:                      ; preds = %err_poll
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then65:                                        ; preds = %err_poll.if.then65_crit_edge, %do.end10, %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %52 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %52, ptr noundef %work, i32 noundef 5) #6
  br label %if.end69

if.end69:                                         ; preds = %if.then65, %err_poll.if.end69_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fault_log) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @da9063_cancel_poll(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %data) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9063_onkey_irq_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %config1 = getelementptr inbounds %struct.da9063_onkey, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !105
  %regmap = getelementptr inbounds %struct.da9063_onkey, ptr %data, i32 0, i32 3
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %val) #6
  %key_power = getelementptr inbounds %struct.da9063_onkey, ptr %data, i32 0, i32 6
  %7 = ptrtoint ptr %key_power to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %key_power, align 4, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp ne i8 %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  %or.cond = select i1 %tobool.not, i1 %tobool2.not, i1 false
  br i1 %or.cond, label %land.lhs.true3, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true3:                                   ; preds = %entry
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %onkey_nonkey_mask = getelementptr inbounds %struct.da906x_chip_config, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %onkey_nonkey_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %onkey_nonkey_mask, align 4
  %and = and i32 %12, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %land.lhs.true3.if.else_crit_edge, label %if.then

land.lhs.true3.if.else_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  %input = getelementptr inbounds %struct.da9063_onkey, ptr %data, i32 0, i32 1
  %13 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %input, align 4
  call void @input_event(ptr noundef %14, i32 noundef 1, i32 noundef 116, i32 noundef 1) #6
  %15 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %input, align 4
  call void @input_event(ptr noundef %16, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %17 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %17, ptr noundef %data, i32 noundef 0) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @da9063_onkey_irq_handler.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@da9063_onkey_irq_handler, %if.then11)) #6
          to label %if.end33 [label %if.then11], !srcloc !106

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.da9063_onkey, ptr %data, i32 0, i32 2
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @da9063_onkey_irq_handler.__UNIQUE_ID_ddebug228, ptr noundef %19, ptr noundef nonnull @.str.45) #6
  br label %if.end33

if.else:                                          ; preds = %land.lhs.true3.if.else_crit_edge, %entry.if.else_crit_edge
  %input12 = getelementptr inbounds %struct.da9063_onkey, ptr %data, i32 0, i32 1
  %20 = ptrtoint ptr %input12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %input12, align 4
  call void @input_event(ptr noundef %21, i32 noundef 1, i32 noundef 116, i32 noundef 1) #6
  %22 = ptrtoint ptr %input12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %input12, align 4
  call void @input_event(ptr noundef %23, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %24 = ptrtoint ptr %input12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %input12, align 4
  call void @input_event(ptr noundef %25, i32 noundef 1, i32 noundef 116, i32 noundef 0) #6
  %26 = ptrtoint ptr %input12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %input12, align 4
  call void @input_event(ptr noundef %27, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @da9063_onkey_irq_handler.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@da9063_onkey_irq_handler, %if.then28)) #6
          to label %if.end33 [label %if.then28], !srcloc !106

if.then28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %dev29 = getelementptr inbounds %struct.da9063_onkey, ptr %data, i32 0, i32 2
  %28 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev29, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @da9063_onkey_irq_handler.__UNIQUE_ID_ddebug229, ptr noundef %29, ptr noundef nonnull @.str.46) #6
  br label %if.end33

if.end33:                                         ; preds = %if.then28, %if.else, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !33, !34, !36, !38, !39, !40, !41, !43, !44, !45, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !90, !92, !94}
!llvm.module.flags = !{!96, !97, !98, !99, !100, !101, !102, !103}
!llvm.ident = !{!104}

!0 = !{ptr @__initcall__kmod_da9063_onkey__230_278_da9063_onkey_driver_init6, !1, !"__initcall__kmod_da9063_onkey__230_278_da9063_onkey_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/misc/da9063_onkey.c", i32 278, i32 1}
!2 = !{ptr @__exitcall_da9063_onkey_driver_exit, !1, !"__exitcall_da9063_onkey_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author231, !4, !"__UNIQUE_ID_author231", i1 false, i1 false}
!4 = !{!"../drivers/input/misc/da9063_onkey.c", i32 280, i32 1}
!5 = !{ptr @__UNIQUE_ID_description232, !6, !"__UNIQUE_ID_description232", i1 false, i1 false}
!6 = !{!"../drivers/input/misc/da9063_onkey.c", i32 281, i32 1}
!7 = !{ptr @__UNIQUE_ID_file233, !8, !"__UNIQUE_ID_file233", i1 false, i1 false}
!8 = !{!"../drivers/input/misc/da9063_onkey.c", i32 282, i32 1}
!9 = !{ptr @__UNIQUE_ID_license234, !8, !"__UNIQUE_ID_license234", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias235, !11, !"__UNIQUE_ID_alias235", i1 false, i1 false}
!11 = !{!"../drivers/input/misc/da9063_onkey.c", i32 283, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/misc/da9063_onkey.c", i32 274, i32 11}
!14 = !{ptr @da9063_onkey_driver, !15, !"da9063_onkey_driver", i1 false, i1 false}
!15 = !{!"../drivers/input/misc/da9063_onkey.c", i32 271, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/misc/da9063_onkey.c", i32 207, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @da9063_onkey_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @da9063_onkey_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/misc/da9063_onkey.c", i32 216, i32 3}
!26 = !{ptr @da9063_onkey_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @da9063_onkey_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/misc/da9063_onkey.c", i32 221, i32 9}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/misc/da9063_onkey.c", i32 225, i32 3}
!32 = !{ptr @da9063_onkey_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @da9063_onkey_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/misc/da9063_onkey.c", i32 230, i32 45}
!36 = !{ptr @da9063_onkey_probe.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/input/misc/da9063_onkey.c", i32 237, i32 2}
!38 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @da9063_onkey_probe.__key.15, !37, !"__key", i1 false, i1 false}
!40 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/input/misc/da9063_onkey.c", i32 241, i32 3}
!43 = !{ptr @da9063_onkey_probe._entry.17, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @da9063_onkey_probe._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/input/misc/da9063_onkey.c", i32 247, i32 38}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/input/misc/da9063_onkey.c", i32 256, i32 3}
!49 = !{ptr @da9063_onkey_probe._entry.21, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @da9063_onkey_probe._entry_ptr.23, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/input/misc/da9063_onkey.c", i32 263, i32 3}
!53 = !{ptr @da9063_onkey_probe._entry.24, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @da9063_onkey_probe._entry_ptr.26, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/input/misc/da9063_onkey.c", i32 98, i32 3}
!57 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @da9063_poll_on._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @da9063_poll_on._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/input/misc/da9063_onkey.c", i32 109, i32 4}
!62 = !{ptr @da9063_poll_on._entry.29, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @da9063_poll_on._entry_ptr.31, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/input/misc/da9063_onkey.c", i32 128, i32 3}
!66 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @da9063_poll_on._entry.32, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @da9063_poll_on._entry_ptr.35, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/input/misc/da9063_onkey.c", i32 135, i32 4}
!71 = !{ptr @da9063_poll_on._entry.36, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @da9063_poll_on._entry_ptr.38, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/input/misc/da9063_onkey.c", i32 142, i32 4}
!75 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @da9063_poll_on.__UNIQUE_ID_ddebug227, !74, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!77 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/input/misc/da9063_onkey.c", i32 148, i32 5}
!79 = !{ptr @da9063_poll_on._entry.41, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @da9063_poll_on._entry_ptr.43, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.44, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/input/misc/da9063_onkey.c", i32 173, i32 3}
!83 = !{ptr @.str.45, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @da9063_onkey_irq_handler.__UNIQUE_ID_ddebug228, !82, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!85 = !{ptr @.str.46, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/input/misc/da9063_onkey.c", i32 179, i32 3}
!87 = !{ptr @da9063_onkey_irq_handler.__UNIQUE_ID_ddebug229, !86, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!88 = !{ptr @da9063_compatible_reg_id_table, !89, !"da9063_compatible_reg_id_table", i1 false, i1 false}
!89 = !{!"../drivers/input/misc/da9063_onkey.c", i32 75, i32 34}
!90 = !{ptr @da9063_regs, !91, !"da9063_regs", i1 false, i1 false}
!91 = !{!"../drivers/input/misc/da9063_onkey.c", i32 45, i32 40}
!92 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/input/misc/da9063_onkey.c", i32 72, i32 10}
!94 = !{ptr @da9062_regs, !95, !"da9062_regs", i1 false, i1 false}
!95 = !{!"../drivers/input/misc/da9063_onkey.c", i32 60, i32 40}
!96 = !{i32 1, !"wchar_size", i32 2}
!97 = !{i32 1, !"min_enum_size", i32 4}
!98 = !{i32 8, !"branch-target-enforcement", i32 0}
!99 = !{i32 8, !"sign-return-address", i32 0}
!100 = !{i32 8, !"sign-return-address-all", i32 0}
!101 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!102 = !{i32 7, !"uwtable", i32 1}
!103 = !{i32 7, !"frame-pointer", i32 2}
!104 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!105 = !{!"auto-init"}
!106 = !{i64 2148958829, i64 2148958834, i64 2148958847, i64 2148958891, i64 2148958925, i64 2148958946}
!107 = !{i8 0, i8 2}
