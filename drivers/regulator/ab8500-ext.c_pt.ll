; ModuleID = '/llk/IR_all_yes/drivers/regulator/ab8500-ext.c_pt.bc'
source_filename = "../drivers/regulator/ab8500-ext.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ab8500_ext_regulator_info = type { ptr, %struct.regulator_desc, ptr, i8, i8, i8, i8, i8, i8, i8 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_consumer_supply = type { ptr, ptr }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.ab8500 = type { ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, i32, ptr, i32, i8, ptr, ptr, ptr, [4 x i32], [4 x i32], ptr, ptr, i32, ptr, i32 }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }

@__initcall__kmod_ab8500_ext__293_462_ab8500_ext_regulator_init4 = internal global ptr @ab8500_ext_regulator_init, section ".initcall4.init", align 4
@ab8500_ext_regulator_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ab8500_ext_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ab8500_ext_regulator_exit = internal global ptr @ab8500_ext_regulator_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file294 = internal constant [45 x i8] c"ab8500_ext.file=drivers/regulator/ab8500-ext\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [26 x i8] c"ab8500_ext.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [65 x i8] c"ab8500_ext.author=Bengt Jonsson <bengt.g.jonsson@stericsson.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description297 = internal constant [56 x i8] c"ab8500_ext.description=AB8500 external regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias298 = internal constant [47 x i8] c"ab8500_ext.alias=platform:ab8500-ext-regulator\00", section ".modinfo", align 1
@ab8500_ext_regulator_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 458, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013Failed to register ab8500 ext regulator: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ab8500_ext_regulator_init\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/regulator/ab8500-ext.c\00", [33 x i8] zeroinitializer }, align 32
@ab8500_ext_regulator_init._entry_ptr = internal global ptr @ab8500_ext_regulator_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ab8500-ext-regulator\00", [43 x i8] zeroinitializer }, align 32
@ab8500_ext_regulator_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 401, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"null mfd parent\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ab8500_ext_regulator_probe\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ab8500_ext_regulator_probe._entry_ptr = internal global ptr @ab8500_ext_regulator_probe._entry, section ".printk_index", align 4
@ab8500_ext_regulator_info = internal global { [3 x %struct.ab8500_ext_regulator_info], [212 x i8] } { [3 x %struct.ab8500_ext_regulator_info] [%struct.ab8500_ext_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.13, ptr null, ptr @.str.14, i8 0, ptr null, ptr null, i32 0, i8 0, i32 1, i32 0, ptr @ab8500_ext_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null, i8 4, i8 8, i8 3, i8 1, i8 1, i8 3, i8 2 }, %struct.ab8500_ext_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.15, ptr null, ptr @.str.16, i8 0, ptr null, ptr null, i32 1, i8 0, i32 1, i32 0, ptr @ab8500_ext_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null, i8 4, i8 8, i8 12, i8 4, i8 4, i8 12, i8 8 }, %struct.ab8500_ext_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.17, ptr null, ptr @.str.18, i8 0, ptr null, ptr null, i32 2, i8 0, i32 1, i32 0, ptr @ab8500_ext_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null, i8 4, i8 8, i8 48, i8 16, i8 16, i8 48, i8 32 }], [212 x i8] zeroinitializer }, align 32
@ab8500_ext_regulator_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.2, i32 435, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register regulator %s\0A\00", [63 x i8] zeroinitializer }, align 32
@ab8500_ext_regulator_probe._entry_ptr.10 = internal global ptr @ab8500_ext_regulator_probe._entry.8, section ".printk_index", align 4
@ab8500_ext_regulator_probe.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.5, ptr @.str.2, ptr @.str.12, i8 0, i8 109, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ab8500_ext\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s-probed\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VEXTSUPPLY1\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ab8500_ext1\00", [20 x i8] zeroinitializer }, align 32
@ab8500_ext_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @ab8500_ext_list_voltage, ptr @ab8500_ext_set_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ab8500_ext_regulator_enable, ptr @ab8500_ext_regulator_disable, ptr @ab8500_ext_regulator_is_enabled, ptr @ab8500_ext_regulator_set_mode, ptr @ab8500_ext_regulator_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VEXTSUPPLY2\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ab8500_ext2\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VEXTSUPPLY3\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ab8500_ext3\00", [20 x i8] zeroinitializer }, align 32
@ab8500_ext_list_voltage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 314, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"regulator constraints null pointer\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ab8500_ext_list_voltage\00", [40 x i8] zeroinitializer }, align 32
@ab8500_ext_list_voltage._entry_ptr = internal global ptr @ab8500_ext_list_voltage._entry, section ".printk_index", align 4
@ab8500_ext_set_voltage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 292, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"No regulator constraints\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ab8500_ext_set_voltage\00", [41 x i8] zeroinitializer }, align 32
@ab8500_ext_set_voltage._entry_ptr = internal global ptr @ab8500_ext_set_voltage._entry, section ".printk_index", align 4
@ab8500_ext_set_voltage._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 303, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Requested min %duV max %duV != constrained min %duV max %duV\0A\00", [34 x i8] zeroinitializer }, align 32
@ab8500_ext_set_voltage._entry_ptr.25 = internal global ptr @ab8500_ext_set_voltage._entry.23, section ".printk_index", align 4
@ab8500_ext_regulator_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 118, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"regulator info null pointer\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ab8500_ext_regulator_enable\00", [36 x i8] zeroinitializer }, align 32
@ab8500_ext_regulator_enable._entry_ptr = internal global ptr @ab8500_ext_regulator_enable._entry, section ".printk_index", align 4
@ab8500_ext_regulator_enable._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 136, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"couldn't set enable bits for regulator\0A\00", [56 x i8] zeroinitializer }, align 32
@ab8500_ext_regulator_enable._entry_ptr.30 = internal global ptr @ab8500_ext_regulator_enable._entry.28, section ".printk_index", align 4
@ab8500_ext_regulator_enable.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.27, ptr @.str.2, ptr @.str.31, i8 0, i8 35, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"%s-enable (bank, reg, mask, value): 0x%02x, 0x%02x, 0x%02x, 0x%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@ab8500_ext_regulator_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.32, ptr @.str.2, i32 155, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ab8500_ext_regulator_disable\00", [35 x i8] zeroinitializer }, align 32
@ab8500_ext_regulator_disable._entry_ptr = internal global ptr @ab8500_ext_regulator_disable._entry, section ".printk_index", align 4
@ab8500_ext_regulator_disable._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.2, i32 172, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"couldn't set disable bits for regulator\0A\00", [55 x i8] zeroinitializer }, align 32
@ab8500_ext_regulator_disable._entry_ptr.35 = internal global ptr @ab8500_ext_regulator_disable._entry.33, section ".printk_index", align 4
@ab8500_ext_regulator_disable.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.32, ptr @.str.2, ptr @.str.36, i8 0, i8 44, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%s-disable (bank, reg, mask, value): 0x%02x, 0x%02x, 0x%02x, 0x%02x\0A\00", [59 x i8] zeroinitializer }, align 32
@ab8500_ext_regulator_is_enabled._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.37, ptr @.str.2, i32 191, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ab8500_ext_regulator_is_enabled\00", [32 x i8] zeroinitializer }, align 32
@ab8500_ext_regulator_is_enabled._entry_ptr = internal global ptr @ab8500_ext_regulator_is_enabled._entry, section ".printk_index", align 4
@ab8500_ext_regulator_is_enabled._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 199, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"couldn't read 0x%x register\0A\00", [35 x i8] zeroinitializer }, align 32
@ab8500_ext_regulator_is_enabled._entry_ptr.40 = internal global ptr @ab8500_ext_regulator_is_enabled._entry.38, section ".printk_index", align 4
@ab8500_ext_regulator_is_enabled.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.37, ptr @.str.2, ptr @.str.41, i8 0, i8 51, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"%s-is_enabled (bank, reg, mask, value): 0x%02x, 0x%02x, 0x%02x, 0x%02x\0A\00", [56 x i8] zeroinitializer }, align 32
@ab8500_ext_regulator_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.42, ptr @.str.2, i32 223, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ab8500_ext_regulator_set_mode\00", [34 x i8] zeroinitializer }, align 32
@ab8500_ext_regulator_set_mode._entry_ptr = internal global ptr @ab8500_ext_regulator_set_mode._entry, section ".printk_index", align 4
@ab8500_ext_regulator_set_mode._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.2, i32 250, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Could not set regulator mode.\0A\00", [33 x i8] zeroinitializer }, align 32
@ab8500_ext_regulator_set_mode._entry_ptr.45 = internal global ptr @ab8500_ext_regulator_set_mode._entry.43, section ".printk_index", align 4
@ab8500_ext_regulator_set_mode.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.42, ptr @.str.2, ptr @.str.46, i8 0, i8 64, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s-set_mode (bank, reg, mask, value): 0x%x, 0x%x, 0x%x, 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@ab8500_ext_regulator_get_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.47, ptr @.str.2, i32 272, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ab8500_ext_regulator_get_mode\00", [34 x i8] zeroinitializer }, align 32
@ab8500_ext_regulator_get_mode._entry_ptr = internal global ptr @ab8500_ext_regulator_get_mode._entry, section ".printk_index", align 4
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ab8500-ext-supply1\00", [45 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ab8500-ext-supply2\00", [45 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ab8500-ext-supply3\00", [45 x i8] zeroinitializer }, align 32
@ab8500_ext_supply3_consumers = internal global { [1 x %struct.regulator_consumer_supply], [24 x i8] } { [1 x %struct.regulator_consumer_supply] [%struct.regulator_consumer_supply { ptr @.str.52, ptr @.str.53 }], [24 x i8] zeroinitializer }, align 32
@ab8500_ext_regulators = internal global { [3 x { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }], [180 x i8] } { [3 x { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }] [{ ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.48, i32 1800000, i32 1800000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 -64, i8 0 }, i32 0, ptr null, ptr null, ptr null }, { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.49, i32 1360000, i32 1360000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0 }, i32 0, ptr null, ptr null, ptr null }, { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.50, i32 3400000, i32 3400000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 8, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 64, i8 0 }, i32 1, ptr @ab8500_ext_supply3_consumers, ptr null, ptr null }], [180 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sim-detect.0\00", [19 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vinvsim\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@___asan_gen_.54 = private unnamed_addr constant [28 x i8] c"ab8500_ext_regulator_driver\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 445, i32 31 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 458, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 448, i32 13 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 401, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [26 x i8] c"ab8500_ext_regulator_info\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 336, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 434, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 439, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 339, i32 13 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 340, i32 16 }
@___asan_gen_.108 = private unnamed_addr constant [25 x i8] c"ab8500_ext_regulator_ops\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 325, i32 35 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 357, i32 13 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 358, i32 16 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 375, i32 13 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 376, i32 16 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 314, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 292, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 300, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 118, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 135, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 140, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 155, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 171, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 176, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 191, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 198, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 203, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 223, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 249, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 254, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 272, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 51, i32 12 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 62, i32 12 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 70, i32 12 }
@___asan_gen_.225 = private unnamed_addr constant [29 x i8] c"ab8500_ext_supply3_consumers\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 39, i32 41 }
@___asan_gen_.228 = private unnamed_addr constant [22 x i8] c"ab8500_ext_regulators\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 47, i32 35 }
@___asan_gen_.234 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.235 = private constant [34 x i8] c"../drivers/regulator/ab8500-ext.c\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 41, i32 2 }
@llvm.compiler.used = appending global [84 x ptr] [ptr @__UNIQUE_ID_alias298, ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description297, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_ab8500_ext_regulator_exit, ptr @__initcall__kmod_ab8500_ext__293_462_ab8500_ext_regulator_init4, ptr @ab8500_ext_list_voltage._entry, ptr @ab8500_ext_list_voltage._entry_ptr, ptr @ab8500_ext_regulator_disable._entry, ptr @ab8500_ext_regulator_disable._entry.33, ptr @ab8500_ext_regulator_disable._entry_ptr, ptr @ab8500_ext_regulator_disable._entry_ptr.35, ptr @ab8500_ext_regulator_enable._entry, ptr @ab8500_ext_regulator_enable._entry.28, ptr @ab8500_ext_regulator_enable._entry_ptr, ptr @ab8500_ext_regulator_enable._entry_ptr.30, ptr @ab8500_ext_regulator_exit, ptr @ab8500_ext_regulator_get_mode._entry, ptr @ab8500_ext_regulator_get_mode._entry_ptr, ptr @ab8500_ext_regulator_init._entry, ptr @ab8500_ext_regulator_init._entry_ptr, ptr @ab8500_ext_regulator_is_enabled._entry, ptr @ab8500_ext_regulator_is_enabled._entry.38, ptr @ab8500_ext_regulator_is_enabled._entry_ptr, ptr @ab8500_ext_regulator_is_enabled._entry_ptr.40, ptr @ab8500_ext_regulator_probe._entry, ptr @ab8500_ext_regulator_probe._entry.8, ptr @ab8500_ext_regulator_probe._entry_ptr, ptr @ab8500_ext_regulator_probe._entry_ptr.10, ptr @ab8500_ext_regulator_set_mode._entry, ptr @ab8500_ext_regulator_set_mode._entry.43, ptr @ab8500_ext_regulator_set_mode._entry_ptr, ptr @ab8500_ext_regulator_set_mode._entry_ptr.45, ptr @ab8500_ext_set_voltage._entry, ptr @ab8500_ext_set_voltage._entry.23, ptr @ab8500_ext_set_voltage._entry_ptr, ptr @ab8500_ext_set_voltage._entry_ptr.25, ptr @ab8500_ext_regulator_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @ab8500_ext_regulator_info, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @ab8500_ext_regulator_ops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @ab8500_ext_supply3_consumers, ptr @ab8500_ext_regulators, ptr @.str.52, ptr @.str.53], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_ext_regulator_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_ext_regulator_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_ext_regulator_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_ext_regulator_info to i32), i32 780, i32 992, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_ext_regulator_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_ext_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_ext_list_voltage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_ext_set_voltage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_ext_set_voltage._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_ext_regulator_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_ext_regulator_enable._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_ext_regulator_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_ext_regulator_disable._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_ext_regulator_is_enabled._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_ext_regulator_is_enabled._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_ext_regulator_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_ext_regulator_set_mode._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_ext_regulator_get_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_ext_supply3_consumers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_ext_regulators to i32), i32 684, i32 864, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_ext_regulator_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ab8500_ext_regulator_driver, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ab8500_ext_regulator_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @ab8500_ext_regulator_driver) #5
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
define internal i32 @ab8500_ext_regulator_probe(ptr noundef %pdev) #4 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #5
  %4 = getelementptr inbounds i8, ptr %config, i32 12
  %5 = call ptr @memset(ptr %4, i32 0, i32 12)
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #8
  br label %cleanup38

if.end:                                           ; preds = %entry
  %version.i.i = getelementptr inbounds %struct.ab8500, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.not.i = icmp eq i32 %7, 0
  br i1 %cmp.i.not.i, label %is_ab8500_2p0_or_earlier.exit, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

is_ab8500_2p0_or_earlier.exit:                    ; preds = %if.end
  %chip_id.i = getelementptr inbounds %struct.ab8500, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %9)
  %cmp.i = icmp ugt i8 %9, 32
  br i1 %cmp.i, label %is_ab8500_2p0_or_earlier.exit.if.end5_crit_edge, label %if.then4

is_ab8500_2p0_or_earlier.exit.if.end5_crit_edge:  ; preds = %is_ab8500_2p0_or_earlier.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then4:                                         ; preds = %is_ab8500_2p0_or_earlier.exit
  call void @__sanitizer_cov_trace_pc() #7
  store i8 48, ptr getelementptr inbounds ([3 x %struct.ab8500_ext_regulator_info], ptr @ab8500_ext_regulator_info, i32 0, i32 2, i32 6), align 1
  store i8 48, ptr getelementptr inbounds ([3 x %struct.ab8500_ext_regulator_info], ptr @ab8500_ext_regulator_info, i32 0, i32 2, i32 7), align 4
  store i8 16, ptr getelementptr inbounds ([3 x %struct.ab8500_ext_regulator_info], ptr @ab8500_ext_regulator_info, i32 0, i32 2, i32 8), align 1
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %is_ab8500_2p0_or_earlier.exit.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %driver_data12 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %init_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end5
  %i.066 = phi i32 [ 0, %if.end5 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [3 x %struct.ab8500_ext_regulator_info], ptr @ab8500_ext_regulator_info, i32 0, i32 %i.066
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %arrayidx, align 4
  %arrayidx9 = getelementptr [3 x %struct.regulator_init_data], ptr @ab8500_ext_regulators, i32 0, i32 %i.066
  %driver_data = getelementptr [3 x %struct.regulator_init_data], ptr @ab8500_ext_regulators, i32 0, i32 %i.066, i32 5
  %11 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data, align 4
  %cfg = getelementptr [3 x %struct.ab8500_ext_regulator_info], ptr @ab8500_ext_regulator_info, i32 0, i32 %i.066, i32 2
  %13 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %cfg, align 4
  %14 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev, ptr %config, align 4
  %15 = ptrtoint ptr %driver_data12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx, ptr %driver_data12, align 4
  %16 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx9, ptr %init_data, align 4
  %desc = getelementptr [3 x %struct.ab8500_ext_regulator_info], ptr @ab8500_ext_regulator_info, i32 0, i32 %i.066, i32 1
  %call15 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %desc, ptr noundef nonnull %config) #5
  %cmp.i61 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i61, label %cleanup, label %do.body25

do.body25:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_ext_regulator_probe.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_ext_regulator_probe, %for.inc)) #5
          to label %if.then31 [label %for.inc], !srcloc !139

if.then31:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %desc, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_ext_regulator_probe.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef %18) #5
  br label %for.inc

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %desc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef %20) #8
  %21 = ptrtoint ptr %call15 to i32
  br label %cleanup38

for.inc:                                          ; preds = %if.then31, %do.body25
  %inc = add nuw nsw i32 %i.066, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.inc.cleanup38_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup38_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup38

cleanup38:                                        ; preds = %for.inc.cleanup38_crit_edge, %cleanup, %do.end
  %retval.2 = phi i32 [ %21, %cleanup ], [ -22, %do.end ], [ 0, %for.inc.cleanup38_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #5
  ret i32 %retval.2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_ext_list_voltage(ptr noundef %rdev, i32 noundef %selector) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %constraints = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 14
  %0 = ptrtoint ptr %constraints to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %constraints, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call ptr @rdev_get_dev(ptr noundef %rdev) #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.19) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %min_uV = getelementptr inbounds %struct.regulation_constraints, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %min_uV to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %min_uV, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %land.lhs.true

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %max_uV = getelementptr inbounds %struct.regulation_constraints, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %max_uV to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_uV, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp ne i32 %5, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp5 = icmp eq i32 %3, %5
  %or.cond = select i1 %tobool1.not, i1 %cmp5, i1 false
  br i1 %or.cond, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %if.end.if.end9_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %land.lhs.true.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %if.end9 ], [ %3, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_ext_set_voltage(ptr noundef %rdev, i32 noundef %min_uV, i32 noundef %max_uV, ptr nocapture noundef readnone %selector) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %constraints = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 14
  %0 = ptrtoint ptr %constraints to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %constraints, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call ptr @rdev_get_dev(ptr noundef %rdev) #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.21) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %min_uV1 = getelementptr inbounds %struct.regulation_constraints, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %min_uV1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %min_uV1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %min_uV)
  %cmp = icmp eq i32 %3, %min_uV
  br i1 %cmp, label %land.lhs.true, label %if.end.do.end8_crit_edge

if.end.do.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end8

land.lhs.true:                                    ; preds = %if.end
  %max_uV2 = getelementptr inbounds %struct.regulation_constraints, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %max_uV2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_uV2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %max_uV)
  %cmp3 = icmp eq i32 %5, %max_uV
  br i1 %cmp3, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.do.end8_crit_edge

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end8

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end8:                                          ; preds = %land.lhs.true.do.end8_crit_edge, %if.end.do.end8_crit_edge
  %call9 = tail call ptr @rdev_get_dev(ptr noundef %rdev) #5
  %6 = ptrtoint ptr %min_uV1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %min_uV1, align 4
  %max_uV11 = getelementptr inbounds %struct.regulation_constraints, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %max_uV11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_uV11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call9, ptr noundef nonnull @.str.24, i32 noundef %min_uV, i32 noundef %max_uV, i32 noundef %7, i32 noundef %9) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %land.lhs.true.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end8 ], [ -22, %do.end ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_ext_regulator_enable(ptr noundef %rdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call ptr @rdev_get_dev(ptr noundef %rdev) #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call1, ptr noundef nonnull @.str.26) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %cfg = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %land.lhs.true.if.else_crit_edge, label %if.then4

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %update_val_hp = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %call, i32 0, i32 7
  br label %if.end5

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %update_val = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %call, i32 0, i32 6
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then4
  %regval.0.in = phi ptr [ %update_val_hp, %if.then4 ], [ %update_val, %if.else ]
  %4 = ptrtoint ptr %regval.0.in to i32
  call void @__asan_load1_noabort(i32 %4)
  %regval.0 = load i8, ptr %regval.0.in, align 1
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %update_bank = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %call, i32 0, i32 3
  %7 = ptrtoint ptr %update_bank to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %update_bank, align 4
  %update_reg = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %call, i32 0, i32 4
  %9 = ptrtoint ptr %update_reg to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %update_reg, align 1
  %update_mask = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %call, i32 0, i32 5
  %11 = ptrtoint ptr %update_mask to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %update_mask, align 2
  %call6 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %6, i8 noundef zeroext %8, i8 noundef zeroext %10, i8 noundef zeroext %12, i8 noundef zeroext %regval.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %do.end11, label %do.body14

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %call12 = tail call ptr @rdev_get_dev(ptr noundef %rdev) #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call12, ptr noundef nonnull @.str.29) #8
  br label %cleanup

do.body14:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_ext_regulator_enable.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_ext_regulator_enable, %cleanup)) #5
          to label %if.then20 [label %cleanup], !srcloc !139

if.then20:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  %call21 = tail call ptr @rdev_get_dev(ptr noundef %rdev) #5
  %desc = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %call, i32 0, i32 1
  %13 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %desc, align 4
  %15 = ptrtoint ptr %update_bank to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %update_bank, align 4
  %conv = zext i8 %16 to i32
  %17 = ptrtoint ptr %update_reg to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %update_reg, align 1
  %conv24 = zext i8 %18 to i32
  %19 = ptrtoint ptr %update_mask to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %update_mask, align 2
  %conv26 = zext i8 %20 to i32
  %conv27 = zext i8 %regval.0 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_ext_regulator_enable.__UNIQUE_ID_ddebug288, ptr noundef %call21, ptr noundef nonnull @.str.31, ptr noundef %14, i32 noundef %conv, i32 noundef %conv24, i32 noundef %conv26, i32 noundef %conv27) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %do.body14, %do.end11, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call6, %do.end11 ], [ 0, %if.then20 ], [ 0, %do.body14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_ext_regulator_disable(ptr noundef %rdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call ptr @rdev_get_dev(ptr noundef %rdev) #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call1, ptr noundef nonnull @.str.26) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %cfg = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end5_crit_edge, label %if.then4

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %update_val_hw = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %call, i32 0, i32 9
  %4 = ptrtoint ptr %update_val_hw to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %update_val_hw, align 2
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %regval.0 = phi i8 [ %5, %if.then4 ], [ 0, %land.lhs.true.if.end5_crit_edge ], [ 0, %if.end.if.end5_crit_edge ]
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  %update_bank = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %call, i32 0, i32 3
  %8 = ptrtoint ptr %update_bank to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %update_bank, align 4
  %update_reg = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %call, i32 0, i32 4
  %10 = ptrtoint ptr %update_reg to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %update_reg, align 1
  %update_mask = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %call, i32 0, i32 5
  %12 = ptrtoint ptr %update_mask to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %update_mask, align 2
  %call6 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %7, i8 noundef zeroext %9, i8 noundef zeroext %11, i8 noundef zeroext %13, i8 noundef zeroext %regval.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %do.end11, label %do.body14

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %call12 = tail call ptr @rdev_get_dev(ptr noundef %rdev) #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call12, ptr noundef nonnull @.str.34) #8
  br label %cleanup

do.body14:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_ext_regulator_disable.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_ext_regulator_disable, %cleanup)) #5
          to label %if.then20 [label %cleanup], !srcloc !139

if.then20:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  %call21 = tail call ptr @rdev_get_dev(ptr noundef %rdev) #5
  %desc = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %call, i32 0, i32 1
  %14 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %desc, align 4
  %16 = ptrtoint ptr %update_bank to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %update_bank, align 4
  %conv = zext i8 %17 to i32
  %18 = ptrtoint ptr %update_reg to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %update_reg, align 1
  %conv24 = zext i8 %19 to i32
  %20 = ptrtoint ptr %update_mask to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %update_mask, align 2
  %conv26 = zext i8 %21 to i32
  %conv27 = zext i8 %regval.0 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_ext_regulator_disable.__UNIQUE_ID_ddebug289, ptr noundef %call21, ptr noundef nonnull @.str.36, ptr noundef %15, i32 noundef %conv, i32 noundef %conv24, i32 noundef %conv26, i32 noundef %conv27) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %do.body14, %do.end11, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call6, %do.end11 ], [ 0, %if.then20 ], [ 0, %do.body14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_ext_regulator_is_enabled(ptr noundef %rdev) #4 align 64 {
entry:
  %regval = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %regval) #5
  %0 = ptrtoint ptr %regval to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %regval, align 1, !annotation !141
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call ptr @rdev_get_dev(ptr noundef %rdev) #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call1, ptr noundef nonnull @.str.26) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  %update_bank = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %update_bank to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %update_bank, align 4
  %update_reg = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %call, i32 0, i32 4
  %5 = ptrtoint ptr %update_reg to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %update_reg, align 1
  %call2 = call i32 @abx500_get_register_interruptible(ptr noundef %2, i8 noundef zeroext %4, i8 noundef zeroext %6, ptr noundef nonnull %regval) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end7, label %do.body11

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call8 = call ptr @rdev_get_dev(ptr noundef %rdev) #5
  %7 = ptrtoint ptr %update_reg to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %update_reg, align 1
  %conv = zext i8 %8 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call8, ptr noundef nonnull @.str.39, i32 noundef %conv) #8
  br label %cleanup

do.body11:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_ext_regulator_is_enabled.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_ext_regulator_is_enabled, %do.end26)) #5
          to label %if.then16 [label %do.end26], !srcloc !139

if.then16:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #7
  %call17 = call ptr @rdev_get_dev(ptr noundef %rdev) #5
  %desc = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %call, i32 0, i32 1
  %9 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %desc, align 4
  %11 = ptrtoint ptr %update_bank to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %update_bank, align 4
  %conv19 = zext i8 %12 to i32
  %13 = ptrtoint ptr %update_reg to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %update_reg, align 1
  %conv21 = zext i8 %14 to i32
  %update_mask = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %call, i32 0, i32 5
  %15 = ptrtoint ptr %update_mask to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %update_mask, align 2
  %conv22 = zext i8 %16 to i32
  %17 = ptrtoint ptr %regval to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %regval, align 1
  %conv23 = zext i8 %18 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_ext_regulator_is_enabled.__UNIQUE_ID_ddebug290, ptr noundef %call17, ptr noundef nonnull @.str.41, ptr noundef %10, i32 noundef %conv19, i32 noundef %conv21, i32 noundef %conv22, i32 noundef %conv23) #5
  br label %do.end26

do.end26:                                         ; preds = %if.then16, %do.body11
  %19 = ptrtoint ptr %regval to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %regval, align 1
  %update_mask28 = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %call, i32 0, i32 5
  %21 = ptrtoint ptr %update_mask28 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %update_mask28, align 2
  %and59 = and i8 %22, %20
  %update_val_lp = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %call, i32 0, i32 8
  %23 = ptrtoint ptr %update_val_lp to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %update_val_lp, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %and59, i8 %24)
  %cmp31 = icmp eq i8 %and59, %24
  br i1 %cmp31, label %do.end26.cleanup_crit_edge, label %lor.lhs.false

do.end26.cleanup_crit_edge:                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #7
  %update_val_hp = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %call, i32 0, i32 7
  %25 = ptrtoint ptr %update_val_hp to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %update_val_hp, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %and59, i8 %26)
  %cmp38 = icmp eq i8 %and59, %26
  %spec.select = zext i1 %cmp38 to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %do.end26.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call2, %do.end7 ], [ 1, %do.end26.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %regval) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_ext_regulator_set_mode(ptr noundef %rdev, i32 noundef %mode) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call ptr @rdev_get_dev(ptr noundef %rdev) #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call1, ptr noundef nonnull @.str.26) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %if.end.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 4, label %sw.bb2
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %update_val_hp = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %call, i32 0, i32 7
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %update_val_lp = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %call, i32 0, i32 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb
  %regval.0.in = phi ptr [ %update_val_lp, %sw.bb2 ], [ %update_val_hp, %sw.bb ]
  %1 = ptrtoint ptr %regval.0.in to i32
  call void @__asan_load1_noabort(i32 %1)
  %regval.0 = load i8, ptr %regval.0.in, align 1
  %call3 = tail call i32 @ab8500_ext_regulator_is_enabled(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %sw.epilog.if.end34_crit_edge, label %land.lhs.true

sw.epilog.if.end34_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

land.lhs.true:                                    ; preds = %sw.epilog
  %cfg = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %land.lhs.true.if.then8_crit_edge, label %land.lhs.true5

land.lhs.true.if.then8_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool7.not = icmp eq i8 %5, 0
  br i1 %tobool7.not, label %land.lhs.true5.if.then8_crit_edge, label %land.lhs.true5.if.end34_crit_edge

land.lhs.true5.if.end34_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

land.lhs.true5.if.then8_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

if.then8:                                         ; preds = %land.lhs.true5.if.then8_crit_edge, %land.lhs.true.if.then8_crit_edge
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  %update_bank = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %call, i32 0, i32 3
  %8 = ptrtoint ptr %update_bank to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %update_bank, align 4
  %update_reg = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %call, i32 0, i32 4
  %10 = ptrtoint ptr %update_reg to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %update_reg, align 1
  %update_mask = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %call, i32 0, i32 5
  %12 = ptrtoint ptr %update_mask to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %update_mask, align 2
  %call9 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %7, i8 noundef zeroext %9, i8 noundef zeroext %11, i8 noundef zeroext %13, i8 noundef zeroext %regval.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %do.end14, label %do.body17

do.end14:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  %call15 = tail call ptr @rdev_get_dev(ptr noundef %rdev) #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call15, ptr noundef nonnull @.str.44) #8
  br label %cleanup

do.body17:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_ext_regulator_set_mode.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ab8500_ext_regulator_set_mode, %if.end34)) #5
          to label %if.then23 [label %if.end34], !srcloc !139

if.then23:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #7
  %call24 = tail call ptr @rdev_get_dev(ptr noundef %rdev) #5
  %desc = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %call, i32 0, i32 1
  %14 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %desc, align 4
  %16 = ptrtoint ptr %update_bank to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %update_bank, align 4
  %conv = zext i8 %17 to i32
  %18 = ptrtoint ptr %update_reg to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %update_reg, align 1
  %conv27 = zext i8 %19 to i32
  %20 = ptrtoint ptr %update_mask to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %update_mask, align 2
  %conv29 = zext i8 %21 to i32
  %conv30 = zext i8 %regval.0 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_ext_regulator_set_mode.__UNIQUE_ID_ddebug291, ptr noundef %call24, ptr noundef nonnull @.str.46, ptr noundef %15, i32 noundef %conv, i32 noundef %conv27, i32 noundef %conv29, i32 noundef %conv30) #5
  br label %if.end34

if.end34:                                         ; preds = %if.then23, %do.body17, %land.lhs.true5.if.end34_crit_edge, %sw.epilog.if.end34_crit_edge
  %update_val = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %call, i32 0, i32 6
  %22 = ptrtoint ptr %update_val to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %regval.0, ptr %update_val, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %do.end14, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end34 ], [ %call9, %do.end14 ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_ext_regulator_get_mode(ptr noundef %rdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call ptr @rdev_get_dev(ptr noundef %rdev) #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call1, ptr noundef nonnull @.str.26) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_val = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %update_val to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %update_val, align 1
  %update_val_hp = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %call, i32 0, i32 7
  %2 = ptrtoint ptr %update_val_hp to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %update_val_hp, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp3 = icmp eq i8 %1, %3
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %update_val_lp = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %call, i32 0, i32 8
  %4 = ptrtoint ptr %update_val_lp to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %update_val_lp, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %5)
  %cmp9 = icmp eq i8 %1, %5
  %. = select i1 %cmp9, i32 4, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 2, %if.end.cleanup_crit_edge ], [ %., %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @abx500_mask_and_set_register_interruptible(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @abx500_get_register_interruptible(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !17, !18, !19, !21, !23, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !115, !116, !117, !119, !121, !123, !125, !127, !128}
!llvm.module.flags = !{!130, !131, !132, !133, !134, !135, !136, !137}
!llvm.ident = !{!138}

!0 = !{ptr @__initcall__kmod_ab8500_ext__293_462_ab8500_ext_regulator_init4, !1, !"__initcall__kmod_ab8500_ext__293_462_ab8500_ext_regulator_init4", i1 false, i1 false}
!1 = !{!"../drivers/regulator/ab8500-ext.c", i32 462, i32 1}
!2 = !{ptr @__exitcall_ab8500_ext_regulator_exit, !3, !"__exitcall_ab8500_ext_regulator_exit", i1 false, i1 false}
!3 = !{!"../drivers/regulator/ab8500-ext.c", i32 468, i32 1}
!4 = !{ptr @__UNIQUE_ID_file294, !5, !"__UNIQUE_ID_file294", i1 false, i1 false}
!5 = !{!"../drivers/regulator/ab8500-ext.c", i32 470, i32 1}
!6 = !{ptr @__UNIQUE_ID_license295, !5, !"__UNIQUE_ID_license295", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author296, !8, !"__UNIQUE_ID_author296", i1 false, i1 false}
!8 = !{!"../drivers/regulator/ab8500-ext.c", i32 471, i32 1}
!9 = !{ptr @__UNIQUE_ID_description297, !10, !"__UNIQUE_ID_description297", i1 false, i1 false}
!10 = !{!"../drivers/regulator/ab8500-ext.c", i32 472, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias298, !12, !"__UNIQUE_ID_alias298", i1 false, i1 false}
!12 = !{!"../drivers/regulator/ab8500-ext.c", i32 473, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/regulator/ab8500-ext.c", i32 458, i32 3}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ab8500_ext_regulator_init._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @ab8500_ext_regulator_init._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/regulator/ab8500-ext.c", i32 448, i32 13}
!21 = !{ptr @ab8500_ext_regulator_driver, !22, !"ab8500_ext_regulator_driver", i1 false, i1 false}
!22 = !{!"../drivers/regulator/ab8500-ext.c", i32 445, i32 31}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/regulator/ab8500-ext.c", i32 401, i32 3}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ab8500_ext_regulator_probe._entry, !24, !"_entry", i1 false, i1 false}
!29 = !{ptr @ab8500_ext_regulator_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/regulator/ab8500-ext.c", i32 434, i32 4}
!32 = !{ptr @ab8500_ext_regulator_probe._entry.8, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @ab8500_ext_regulator_probe._entry_ptr.10, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/regulator/ab8500-ext.c", i32 439, i32 3}
!36 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @ab8500_ext_regulator_probe.__UNIQUE_ID_ddebug292, !35, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/regulator/ab8500-ext.c", i32 339, i32 13}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/regulator/ab8500-ext.c", i32 340, i32 16}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/regulator/ab8500-ext.c", i32 357, i32 13}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/regulator/ab8500-ext.c", i32 358, i32 16}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/regulator/ab8500-ext.c", i32 375, i32 13}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/regulator/ab8500-ext.c", i32 376, i32 16}
!50 = !{ptr @ab8500_ext_regulator_info, !51, !"ab8500_ext_regulator_info", i1 false, i1 false}
!51 = !{!"../drivers/regulator/ab8500-ext.c", i32 336, i32 3}
!52 = !{ptr @ab8500_ext_regulator_ops, !53, !"ab8500_ext_regulator_ops", i1 false, i1 false}
!53 = !{!"../drivers/regulator/ab8500-ext.c", i32 325, i32 35}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/regulator/ab8500-ext.c", i32 314, i32 3}
!56 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @ab8500_ext_list_voltage._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @ab8500_ext_list_voltage._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/regulator/ab8500-ext.c", i32 292, i32 3}
!61 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @ab8500_ext_set_voltage._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @ab8500_ext_set_voltage._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/regulator/ab8500-ext.c", i32 300, i32 2}
!66 = !{ptr @ab8500_ext_set_voltage._entry.23, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @ab8500_ext_set_voltage._entry_ptr.25, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/regulator/ab8500-ext.c", i32 118, i32 3}
!70 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @ab8500_ext_regulator_enable._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @ab8500_ext_regulator_enable._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/regulator/ab8500-ext.c", i32 135, i32 3}
!75 = !{ptr @ab8500_ext_regulator_enable._entry.28, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @ab8500_ext_regulator_enable._entry_ptr.30, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/regulator/ab8500-ext.c", i32 140, i32 2}
!79 = !{ptr @ab8500_ext_regulator_enable.__UNIQUE_ID_ddebug288, !78, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/regulator/ab8500-ext.c", i32 155, i32 3}
!82 = !{ptr @ab8500_ext_regulator_disable._entry, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @ab8500_ext_regulator_disable._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/regulator/ab8500-ext.c", i32 171, i32 3}
!86 = !{ptr @ab8500_ext_regulator_disable._entry.33, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @ab8500_ext_regulator_disable._entry_ptr.35, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/regulator/ab8500-ext.c", i32 176, i32 2}
!90 = !{ptr @ab8500_ext_regulator_disable.__UNIQUE_ID_ddebug289, !89, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!91 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/regulator/ab8500-ext.c", i32 191, i32 3}
!93 = !{ptr @ab8500_ext_regulator_is_enabled._entry, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @ab8500_ext_regulator_is_enabled._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/regulator/ab8500-ext.c", i32 198, i32 3}
!97 = !{ptr @ab8500_ext_regulator_is_enabled._entry.38, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @ab8500_ext_regulator_is_enabled._entry_ptr.40, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/regulator/ab8500-ext.c", i32 203, i32 2}
!101 = !{ptr @ab8500_ext_regulator_is_enabled.__UNIQUE_ID_ddebug290, !100, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!102 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/regulator/ab8500-ext.c", i32 223, i32 3}
!104 = !{ptr @ab8500_ext_regulator_set_mode._entry, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @ab8500_ext_regulator_set_mode._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.44, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/regulator/ab8500-ext.c", i32 249, i32 4}
!108 = !{ptr @ab8500_ext_regulator_set_mode._entry.43, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @ab8500_ext_regulator_set_mode._entry_ptr.45, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.46, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/regulator/ab8500-ext.c", i32 254, i32 3}
!112 = !{ptr @ab8500_ext_regulator_set_mode.__UNIQUE_ID_ddebug291, !111, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!113 = !{ptr @.str.47, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/regulator/ab8500-ext.c", i32 272, i32 3}
!115 = !{ptr @ab8500_ext_regulator_get_mode._entry, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @ab8500_ext_regulator_get_mode._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.48, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/regulator/ab8500-ext.c", i32 51, i32 12}
!119 = !{ptr @.str.49, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/regulator/ab8500-ext.c", i32 62, i32 12}
!121 = !{ptr @.str.50, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/regulator/ab8500-ext.c", i32 70, i32 12}
!123 = !{ptr @ab8500_ext_regulators, !124, !"ab8500_ext_regulators", i1 false, i1 false}
!124 = !{!"../drivers/regulator/ab8500-ext.c", i32 47, i32 35}
!125 = !{ptr @.str.52, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/regulator/ab8500-ext.c", i32 41, i32 2}
!127 = !{ptr @.str.53, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @ab8500_ext_supply3_consumers, !129, !"ab8500_ext_supply3_consumers", i1 false, i1 false}
!129 = !{!"../drivers/regulator/ab8500-ext.c", i32 39, i32 41}
!130 = !{i32 1, !"wchar_size", i32 2}
!131 = !{i32 1, !"min_enum_size", i32 4}
!132 = !{i32 8, !"branch-target-enforcement", i32 0}
!133 = !{i32 8, !"sign-return-address", i32 0}
!134 = !{i32 8, !"sign-return-address-all", i32 0}
!135 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!136 = !{i32 7, !"uwtable", i32 1}
!137 = !{i32 7, !"frame-pointer", i32 2}
!138 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!139 = !{i64 2148701995, i64 2148702000, i64 2148702013, i64 2148702057, i64 2148702091, i64 2148702112}
!140 = !{i8 0, i8 2}
!141 = !{!"auto-init"}
