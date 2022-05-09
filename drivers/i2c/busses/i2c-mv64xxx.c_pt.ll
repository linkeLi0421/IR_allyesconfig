; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-mv64xxx.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-mv64xxx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mv64xxx_i2c_regs = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.mv64xxx_i2c_data = type { ptr, i32, i32, i32, i32, i32, i32, ptr, %struct.mv64xxx_i2c_regs, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.spinlock, ptr, %struct.i2c_adapter, i8, i8, ptr, i8, i8, %struct.i2c_bus_recovery_info }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_bus_recovery_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mv64xxx_i2c_pdata = type { i32, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__initcall__kmod_i2c_mv64xxx__289_1076_mv64xxx_i2c_driver_init6 = internal global ptr @mv64xxx_i2c_driver_init, section ".initcall6.init", align 4
@mv64xxx_i2c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mv64xxx_i2c_probe, ptr @mv64xxx_i2c_remove, ptr @mv64xxx_i2c_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mv64xxx_i2c_of_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mv64xxx_i2c_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mv64xxx_i2c_driver_exit = internal global ptr @mv64xxx_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [53 x i8] c"i2c_mv64xxx.author=Mark A. Greer <mgreer@mvista.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [68 x i8] c"i2c_mv64xxx.description=Marvell mv64xxx host bridge i2c ctlr driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [48 x i8] c"i2c_mv64xxx.file=drivers/i2c/busses/i2c-mv64xxx\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [24 x i8] c"i2c_mv64xxx.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mv64xxx_i2c\00", [20 x i8] zeroinitializer }, align 32
@mv64xxx_i2c_of_match_table = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mv64xxx_i2c_regs_sun4i }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mv64xxx_i2c_regs_sun4i }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,mv64xxx-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mv64xxx_i2c_regs_mv64xxx }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,mv78230-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mv64xxx_i2c_regs_mv64xxx }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,mv78230-a0-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mv64xxx_i2c_regs_mv64xxx }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@mv64xxx_i2c_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @mv64xxx_i2c_runtime_suspend, ptr @mv64xxx_i2c_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mv64xxx_i2c adapter\00", [44 x i8] zeroinitializer }, align 32
@mv64xxx_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&drv_data->waitq\00", [47 x i8] zeroinitializer }, align 32
@mv64xxx_i2c_probe.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&drv_data->lock\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@mv64xxx_i2c_regs_mv64xxx = internal global { %struct.mv64xxx_i2c_regs, [25 x i8] } { %struct.mv64xxx_i2c_regs { i8 0, i8 16, i8 4, i8 8, i8 12, i8 12, i8 28 }, [25 x i8] zeroinitializer }, align 32
@mv64xxx_i2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @mv64xxx_i2c_xfer, ptr null, ptr null, ptr null, ptr @mv64xxx_i2c_functionality, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mv64xxx_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 1016, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"mv64xxx: Can't register intr handler irq%d: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mv64xxx_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/i2c/busses/i2c-mv64xxx.c\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mv64xxx_i2c_probe._entry_ptr = internal global ptr @mv64xxx_i2c_probe._entry, section ".printk_index", align 4
@mv64xxx_i2c_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.8, i32 1020, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"mv64xxx: Can't add i2c adapter, rc: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@mv64xxx_i2c_probe._entry_ptr.13 = internal global ptr @mv64xxx_i2c_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"allwinner,sun4i-a10-i2c\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"allwinner,sun6i-a31-i2c\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"marvell,mv78230-i2c\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"marvell,mv78230-a0-i2c\00", [41 x i8] zeroinitializer }, align 32
@mv64xxx_i2c_init_recovery_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.8, i32 897, ptr @.str.21, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"can't get pinctrl, bus recovery not supported\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mv64xxx_i2c_init_recovery_info\00", [33 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mv64xxx_i2c_init_recovery_info._entry_ptr = internal global ptr @mv64xxx_i2c_init_recovery_info._entry, section ".printk_index", align 4
@mv64xxx_i2c_wait_for_completion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.8, i32 570, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"mv64xxx: I2C bus locked, block: %d, time_left: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mv64xxx_i2c_wait_for_completion\00", [32 x i8] zeroinitializer }, align 32
@mv64xxx_i2c_wait_for_completion._entry_ptr = internal global ptr @mv64xxx_i2c_wait_for_completion._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mv64xxx_i2c_fsm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.8, i32 332, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"mv64xxx_i2c_fsm: Ctlr Error -- state: 0x%x, status: 0x%x, addr: 0x%x, flags: 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mv64xxx_i2c_fsm\00", [16 x i8] zeroinitializer }, align 32
@mv64xxx_i2c_fsm._entry_ptr = internal global ptr @mv64xxx_i2c_fsm._entry, section ".printk_index", align 4
@mv64xxx_i2c_do_action._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.8, i32 426, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"mv64xxx_i2c_do_action: Invalid action: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mv64xxx_i2c_do_action\00", [42 x i8] zeroinitializer }, align 32
@mv64xxx_i2c_do_action._entry_ptr = internal global ptr @mv64xxx_i2c_do_action._entry, section ".printk_index", align 4
@mv64xxx_i2c_regs_sun4i = internal global { %struct.mv64xxx_i2c_regs, [25 x i8] } { %struct.mv64xxx_i2c_regs { i8 0, i8 4, i8 8, i8 12, i8 16, i8 20, i8 24 }, [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.28 = internal global [14 x i64] [i64 12, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 7, i64 8, i64 9, i64 10, i64 25, i64 27]
@__sancov_gen_cov_switch_values.29 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.31 = private unnamed_addr constant [19 x i8] c"mv64xxx_i2c_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1065, i32 31 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1070, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant [27 x i8] c"mv64xxx_i2c_of_match_table\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 762, i32 34 }
@___asan_gen_.40 = private unnamed_addr constant [19 x i8] c"mv64xxx_i2c_pm_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1058, i32 32 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 952, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 955, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 956, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 966, i32 45 }
@___asan_gen_.61 = private unnamed_addr constant [25 x i8] c"mv64xxx_i2c_regs_mv64xxx\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 155, i32 32 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"mv64xxx_i2c_algo\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 750, i32 35 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1014, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1019, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 826, i32 31 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 829, i32 34 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 830, i32 34 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 859, i32 34 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 866, i32 34 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 897, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 567, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 328, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 424, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant [23 x i8] c"mv64xxx_i2c_regs_sun4i\00", align 1
@___asan_gen_.146 = private constant [36 x i8] c"../drivers/i2c/busses/i2c-mv64xxx.c\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 165, i32 32 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_mv64xxx_i2c_driver_exit, ptr @__initcall__kmod_i2c_mv64xxx__289_1076_mv64xxx_i2c_driver_init6, ptr @mv64xxx_i2c_do_action._entry, ptr @mv64xxx_i2c_do_action._entry_ptr, ptr @mv64xxx_i2c_driver_exit, ptr @mv64xxx_i2c_fsm._entry, ptr @mv64xxx_i2c_fsm._entry_ptr, ptr @mv64xxx_i2c_init_recovery_info._entry, ptr @mv64xxx_i2c_init_recovery_info._entry_ptr, ptr @mv64xxx_i2c_probe._entry, ptr @mv64xxx_i2c_probe._entry.11, ptr @mv64xxx_i2c_probe._entry_ptr, ptr @mv64xxx_i2c_probe._entry_ptr.13, ptr @mv64xxx_i2c_wait_for_completion._entry, ptr @mv64xxx_i2c_wait_for_completion._entry_ptr, ptr @mv64xxx_i2c_driver, ptr @.str, ptr @mv64xxx_i2c_of_match_table, ptr @mv64xxx_i2c_pm_ops, ptr @.str.1, ptr @mv64xxx_i2c_probe.__key, ptr @.str.2, ptr @mv64xxx_i2c_probe.__key.3, ptr @.str.4, ptr @.str.5, ptr @mv64xxx_i2c_regs_mv64xxx, ptr @mv64xxx_i2c_algo, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @mv64xxx_i2c_regs_sun4i], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv64xxx_i2c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv64xxx_i2c_of_match_table to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv64xxx_i2c_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv64xxx_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv64xxx_i2c_probe.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv64xxx_i2c_regs_mv64xxx to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv64xxx_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv64xxx_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv64xxx_i2c_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv64xxx_i2c_init_recovery_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv64xxx_i2c_wait_for_completion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv64xxx_i2c_fsm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv64xxx_i2c_do_action._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv64xxx_i2c_regs_sun4i to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mv64xxx_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mv64xxx_i2c_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mv64xxx_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @mv64xxx_i2c_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv64xxx_i2c_probe(ptr noundef %pd) #2 align 64 {
entry:
  %bus_freq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pd, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pd, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pd, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1608, i32 noundef 3520) #9
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pd, i32 noundef 0) #9
  %reg_base = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %call.i, i32 0, i32 7
  %4 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call8, ptr %reg_base, align 4
  %cmp.i204 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i204, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %adapter = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %call.i, i32 0, i32 23
  %name = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %call.i, i32 0, i32 23, i32 12
  %call15 = tail call i32 @strlcpy(ptr noundef %name, ptr noundef nonnull @.str.1, i32 noundef 48) #9
  %waitq = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %call.i, i32 0, i32 20
  tail call void @__init_waitqueue_head(ptr noundef %waitq, ptr noundef nonnull @.str.2, ptr noundef nonnull @mv64xxx_i2c_probe.__key) #9
  %lock = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %call.i, i32 0, i32 21
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @mv64xxx_i2c_probe.__key.3, i16 noundef signext 3) #9
  %call21 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #9
  %clk = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %call.i, i32 0, i32 18
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call21, ptr %clk, align 4
  %cmp.i205 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i205, label %if.then24, label %if.end14.if.end30_crit_edge

if.end14.if.end30_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then24:                                        ; preds = %if.end14
  %cmp = icmp eq ptr %call21, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %if.then24.cleanup_crit_edge, label %if.end28

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %clk, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end28, %if.end14.if.end30_crit_edge
  %call32 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.5) #9
  %reg_clk = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %call.i, i32 0, i32 19
  %8 = ptrtoint ptr %reg_clk to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call32, ptr %reg_clk, align 8
  %cmp.i206 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i206, label %if.then35, label %if.end30.if.end42_crit_edge

if.end30.if.end42_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then35:                                        ; preds = %if.end30
  %cmp38 = icmp eq ptr %call32, inttoptr (i32 -517 to ptr)
  br i1 %cmp38, label %if.then35.cleanup_crit_edge, label %if.end40

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end40:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %reg_clk to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %reg_clk, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.end40, %if.end30.if.end42_crit_edge
  %call43 = tail call i32 @platform_get_irq(ptr noundef %pd, i32 noundef 0) #9
  %irq = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call43, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp45 = icmp slt i32 %call43, 0
  br i1 %cmp45, label %if.end42.cleanup_crit_edge, label %if.end48

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end48:                                         ; preds = %if.end42
  br i1 %tobool.not, label %if.else, label %if.then50

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  %freq_m51 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %call.i, i32 0, i32 16
  %13 = ptrtoint ptr %freq_m51 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %freq_m51, align 4
  %freq_n = getelementptr inbounds %struct.mv64xxx_i2c_pdata, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %freq_n to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %freq_n, align 4
  %freq_n52 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %call.i, i32 0, i32 17
  %16 = ptrtoint ptr %freq_n52 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %freq_n52, align 8
  %timeout = getelementptr inbounds %struct.mv64xxx_i2c_pdata, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %timeout, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %18) #9
  %timeout55 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %call.i, i32 0, i32 23, i32 7
  %19 = ptrtoint ptr %timeout55 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call2.i, ptr %timeout55, align 4
  %offload_enabled = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %call.i, i32 0, i32 24
  %20 = ptrtoint ptr %offload_enabled to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %offload_enabled, align 8
  %reg_offsets = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %call.i, i32 0, i32 8
  %21 = call ptr @memcpy(ptr %reg_offsets, ptr @mv64xxx_i2c_regs_mv64xxx, i32 7)
  br label %if.end66

if.else:                                          ; preds = %if.end48
  %of_node57 = getelementptr inbounds %struct.platform_device, ptr %pd, i32 0, i32 3, i32 27
  %22 = ptrtoint ptr %of_node57 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node57, align 8
  %tobool58.not = icmp eq ptr %23, null
  br i1 %tobool58.not, label %if.else.if.end66_crit_edge, label %if.then59

if.else.if.end66_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then59:                                        ; preds = %if.else
  %24 = ptrtoint ptr %of_node57 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %of_node57, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bus_freq.i) #9
  %26 = ptrtoint ptr %bus_freq.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %bus_freq.i, align 4, !annotation !86
  %27 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clk, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.then59.mv64xxx_of_config.exit.thread_crit_edge, label %if.end.i208

if.then59.mv64xxx_of_config.exit.thread_crit_edge: ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #11
  br label %mv64xxx_of_config.exit.thread

if.end.i208:                                      ; preds = %if.then59
  %call.i207 = tail call i32 @clk_get_rate(ptr noundef nonnull %28) #9
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %25, ptr noundef nonnull @.str.14, ptr noundef nonnull %bus_freq.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool3.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool3.not.i, label %if.end.i208.if.end5.i_crit_edge, label %if.then4.i

if.end.i208.if.end5.i_crit_edge:                  ; preds = %if.end.i208
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i208
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %bus_freq.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 100000, ptr %bus_freq.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %if.end.i208.if.end5.i_crit_edge
  %call6.i = call i32 @of_device_is_compatible(ptr noundef %25, ptr noundef nonnull @.str.15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %lor.lhs.false.i, label %if.end5.i.if.then10.i_crit_edge

if.end5.i.if.then10.i_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10.i

lor.lhs.false.i:                                  ; preds = %if.end5.i
  %call8.i = call i32 @of_device_is_compatible(ptr noundef %25, ptr noundef nonnull @.str.16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %lor.lhs.false.i.if.end11.i_crit_edge, label %lor.lhs.false.i.if.then10.i_crit_edge

lor.lhs.false.i.if.then10.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10.i

lor.lhs.false.i.if.end11.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

if.then10.i:                                      ; preds = %lor.lhs.false.i.if.then10.i_crit_edge, %if.end5.i.if.then10.i_crit_edge
  %clk_n_base_0.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %call.i, i32 0, i32 28
  %30 = ptrtoint ptr %clk_n_base_0.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %clk_n_base_0.i, align 1
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then10.i, %lor.lhs.false.i.if.end11.i_crit_edge
  %31 = ptrtoint ptr %bus_freq.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bus_freq.i, align 4
  %clk_n_base_0.i.i.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %call.i, i32 0, i32 28
  %33 = ptrtoint ptr %clk_n_base_0.i.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %clk_n_base_0.i.i.i, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i.i.i = icmp eq i8 %34, 0
  %freq_m.i.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %call.i, i32 0, i32 16
  %freq_n.i.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %call.i, i32 0, i32 17
  br label %for.cond1.preheader.i.i

for.cond1.preheader.i.i:                          ; preds = %for.inc9.i.i.for.cond1.preheader.i.i_crit_edge, %if.end11.i
  %n.037.i.i = phi i32 [ 0, %if.end11.i ], [ %inc10.i.i, %for.inc9.i.i.for.cond1.preheader.i.i_crit_edge ]
  %best_delta.036.i.i = phi i32 [ 2147483647, %if.end11.i ], [ %best_delta.242.i.i, %for.inc9.i.i.for.cond1.preheader.i.i_crit_edge ]
  %shl4.i.i.i = shl i32 2, %n.037.i.i
  br label %for.body3.i.i

for.cond1.i.i:                                    ; preds = %if.end.i.i.for.cond1.i.i_crit_edge, %for.body3.i.i.for.cond1.i.i_crit_edge
  %best_delta.242.i.i = phi i32 [ %sub.i.i209, %if.end.i.i.for.cond1.i.i_crit_edge ], [ %best_delta.133.i.i, %for.body3.i.i.for.cond1.i.i_crit_edge ]
  %inc.i.i = add nuw nsw i32 %m.034.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 16
  br i1 %exitcond.not.i.i, label %for.inc9.i.i, label %for.cond1.i.i.for.body3.i.i_crit_edge

for.cond1.i.i.for.body3.i.i_crit_edge:            ; preds = %for.cond1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body3.i.i

for.body3.i.i:                                    ; preds = %for.cond1.i.i.for.body3.i.i_crit_edge, %for.cond1.preheader.i.i
  %m.034.i.i = phi i32 [ 0, %for.cond1.preheader.i.i ], [ %inc.i.i, %for.cond1.i.i.for.body3.i.i_crit_edge ]
  %best_delta.133.i.i = phi i32 [ %best_delta.036.i.i, %for.cond1.preheader.i.i ], [ %best_delta.242.i.i, %for.cond1.i.i.for.body3.i.i_crit_edge ]
  %35 = mul nuw nsw i32 %m.034.i.i, 10
  %mul3.i.i.i = add nuw nsw i32 %35, 10
  %mul1.i.i.i = shl i32 %mul3.i.i.i, %n.037.i.i
  %mul5.i.i.i = mul i32 %mul3.i.i.i, %shl4.i.i.i
  %mul1.pn.i.i.i = select i1 %tobool.not.i.i.i, i32 %mul5.i.i.i, i32 %mul1.i.i.i
  %retval.0.i.i.i = sdiv i32 %call.i207, %mul1.pn.i.i.i
  %sub.i.i209 = sub i32 %32, %retval.0.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i209)
  %cmp4.i.i = icmp sgt i32 %sub.i.i209, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i209, i32 %best_delta.133.i.i)
  %cmp5.i.i = icmp slt i32 %sub.i.i209, %best_delta.133.i.i
  %or.cond.i.i = select i1 %cmp4.i.i, i1 %cmp5.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end.i.i, label %for.body3.i.i.for.cond1.i.i_crit_edge

for.body3.i.i.for.cond1.i.i_crit_edge:            ; preds = %for.body3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond1.i.i

if.end.i.i:                                       ; preds = %for.body3.i.i
  %36 = ptrtoint ptr %freq_m.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %m.034.i.i, ptr %freq_m.i.i, align 4
  %37 = ptrtoint ptr %freq_n.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %n.037.i.i, ptr %freq_n.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i209)
  %cmp6.i.i = icmp eq i32 %sub.i.i209, 0
  br i1 %cmp6.i.i, label %if.end.i.i.if.end14.i_crit_edge, label %if.end.i.i.for.cond1.i.i_crit_edge

if.end.i.i.for.cond1.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond1.i.i

if.end.i.i.if.end14.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

for.inc9.i.i:                                     ; preds = %for.cond1.i.i
  %inc10.i.i = add nuw nsw i32 %n.037.i.i, 1
  %exitcond39.not.i.i = icmp eq i32 %inc10.i.i, 8
  br i1 %exitcond39.not.i.i, label %mv64xxx_find_baud_factors.exit.i, label %for.inc9.i.i.for.cond1.preheader.i.i_crit_edge

for.inc9.i.i.for.cond1.preheader.i.i_crit_edge:   ; preds = %for.inc9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond1.preheader.i.i

mv64xxx_find_baud_factors.exit.i:                 ; preds = %for.inc9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %best_delta.242.i.i)
  %cmp12.i.not.i = icmp eq i32 %best_delta.242.i.i, 2147483647
  br i1 %cmp12.i.not.i, label %mv64xxx_find_baud_factors.exit.i.mv64xxx_of_config.exit.thread_crit_edge, label %mv64xxx_find_baud_factors.exit.i.if.end14.i_crit_edge

mv64xxx_find_baud_factors.exit.i.if.end14.i_crit_edge: ; preds = %mv64xxx_find_baud_factors.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

mv64xxx_find_baud_factors.exit.i.mv64xxx_of_config.exit.thread_crit_edge: ; preds = %mv64xxx_find_baud_factors.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mv64xxx_of_config.exit.thread

if.end14.i:                                       ; preds = %mv64xxx_find_baud_factors.exit.i.if.end14.i_crit_edge, %if.end.i.i.if.end14.i_crit_edge
  %call.i.i = call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #9
  %rstc.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %call.i, i32 0, i32 26
  %38 = ptrtoint ptr %rstc.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i.i, ptr %rstc.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %mv64xxx_of_config.exit, label %if.end21.i

if.end21.i:                                       ; preds = %if.end14.i
  %timeout.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %call.i, i32 0, i32 23, i32 7
  %39 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 100, ptr %timeout.i, align 4
  %call22.i = call ptr @of_match_device(ptr noundef nonnull @mv64xxx_i2c_of_match_table, ptr noundef %dev) #9
  %tobool23.not.i = icmp eq ptr %call22.i, null
  br i1 %tobool23.not.i, label %if.end21.i.mv64xxx_of_config.exit.thread_crit_edge, label %if.end25.i

if.end21.i.mv64xxx_of_config.exit.thread_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mv64xxx_of_config.exit.thread

if.end25.i:                                       ; preds = %if.end21.i
  %reg_offsets.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %call.i, i32 0, i32 8
  %data.i = getelementptr inbounds %struct.of_device_id, ptr %call22.i, i32 0, i32 3
  %40 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data.i, align 4
  %42 = call ptr @memcpy(ptr %reg_offsets.i, ptr %41, i32 7)
  %call26.i = call i32 @of_device_is_compatible(ptr noundef %25, ptr noundef nonnull @.str.17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end25.i.if.end31.i_crit_edge, label %if.then28.i

if.end25.i.if.end31.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31.i

if.then28.i:                                      ; preds = %if.end25.i
  %offload_enabled.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %call.i, i32 0, i32 24
  %43 = ptrtoint ptr %offload_enabled.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %offload_enabled.i, align 8
  %44 = ptrtoint ptr %bus_freq.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bus_freq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100001, i32 %45)
  %cmp.i210 = icmp ult i32 %45, 100001
  br i1 %cmp.i210, label %if.then29.i, label %if.then28.i.if.end31.i_crit_edge

if.then28.i.if.end31.i_crit_edge:                 ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31.i

if.then29.i:                                      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #11
  %errata_delay.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %call.i, i32 0, i32 25
  %46 = ptrtoint ptr %errata_delay.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %errata_delay.i, align 1
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then29.i, %if.then28.i.if.end31.i_crit_edge, %if.end25.i.if.end31.i_crit_edge
  %call32.i = call i32 @of_device_is_compatible(ptr noundef %25, ptr noundef nonnull @.str.18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.end31.i.if.end40.i_crit_edge, label %if.then34.i

if.end31.i.if.end40.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i

if.then34.i:                                      ; preds = %if.end31.i
  %offload_enabled35.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %call.i, i32 0, i32 24
  %47 = ptrtoint ptr %offload_enabled35.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %offload_enabled35.i, align 8
  %48 = ptrtoint ptr %bus_freq.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bus_freq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100001, i32 %49)
  %cmp36.i = icmp ult i32 %49, 100001
  br i1 %cmp36.i, label %if.then37.i, label %if.then34.i.if.end40.i_crit_edge

if.then34.i.if.end40.i_crit_edge:                 ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i

if.then37.i:                                      ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #11
  %errata_delay38.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %call.i, i32 0, i32 25
  %50 = ptrtoint ptr %errata_delay38.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %errata_delay38.i, align 1
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then37.i, %if.then34.i.if.end40.i_crit_edge, %if.end31.i.if.end40.i_crit_edge
  %call41.i = call i32 @of_device_is_compatible(ptr noundef %25, ptr noundef nonnull @.str.16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %if.end40.i.mv64xxx_of_config.exit.thread226_crit_edge, label %if.then43.i

if.end40.i.mv64xxx_of_config.exit.thread226_crit_edge: ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mv64xxx_of_config.exit.thread226

if.then43.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  %irq_clear_inverted.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %call.i, i32 0, i32 27
  %51 = ptrtoint ptr %irq_clear_inverted.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %irq_clear_inverted.i, align 8
  br label %mv64xxx_of_config.exit.thread226

mv64xxx_of_config.exit.thread:                    ; preds = %if.end21.i.mv64xxx_of_config.exit.thread_crit_edge, %mv64xxx_find_baud_factors.exit.i.mv64xxx_of_config.exit.thread_crit_edge, %if.then59.mv64xxx_of_config.exit.thread_crit_edge
  %retval.0.i211.ph = phi i32 [ -22, %mv64xxx_find_baud_factors.exit.i.mv64xxx_of_config.exit.thread_crit_edge ], [ -19, %if.then59.mv64xxx_of_config.exit.thread_crit_edge ], [ -19, %if.end21.i.mv64xxx_of_config.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bus_freq.i) #9
  br label %cleanup

mv64xxx_of_config.exit.thread226:                 ; preds = %if.then43.i, %if.end40.i.mv64xxx_of_config.exit.thread226_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bus_freq.i) #9
  br label %if.end66

mv64xxx_of_config.exit:                           ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %call.i.i to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bus_freq.i) #9
  br label %cleanup

if.end66:                                         ; preds = %mv64xxx_of_config.exit.thread226, %if.else.if.end66_crit_edge, %if.then50
  %rinfo1.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %call.i, i32 0, i32 29
  %call.i212 = call ptr @devm_pinctrl_get(ptr noundef %dev) #9
  %pinctrl.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %call.i, i32 0, i32 29, i32 10
  %53 = ptrtoint ptr %pinctrl.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i212, ptr %pinctrl.i, align 4
  %cmp.i.i213 = icmp ugt ptr %call.i212, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i213, label %if.then.i215, label %if.else.i217

if.then.i215:                                     ; preds = %if.end66
  %cmp.i214 = icmp eq ptr %call.i212, inttoptr (i32 -517 to ptr)
  br i1 %cmp.i214, label %if.then.i215.cleanup_crit_edge, label %mv64xxx_i2c_init_recovery_info.exit

if.then.i215.cleanup_crit_edge:                   ; preds = %if.then.i215
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else.i217:                                     ; preds = %if.end66
  %tobool.not.i216 = icmp eq ptr %call.i212, null
  br i1 %tobool.not.i216, label %if.else.i217.if.end71_crit_edge, label %if.end12.i

if.else.i217.if.end71_crit_edge:                  ; preds = %if.else.i217
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

if.end12.i:                                       ; preds = %if.else.i217
  call void @__sanitizer_cov_trace_pc() #11
  %bus_recovery_info.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %call.i, i32 0, i32 23, i32 16
  %54 = ptrtoint ptr %bus_recovery_info.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %rinfo1.i, ptr %bus_recovery_info.i, align 4
  br label %if.end71

mv64xxx_i2c_init_recovery_info.exit:              ; preds = %if.then.i215
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.19) #12
  %55 = ptrtoint ptr %pinctrl.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pinctrl.i, align 4
  %cmp69 = icmp eq ptr %56, inttoptr (i32 -517 to ptr)
  br i1 %cmp69, label %mv64xxx_i2c_init_recovery_info.exit.cleanup_crit_edge, label %mv64xxx_i2c_init_recovery_info.exit.if.end71_crit_edge

mv64xxx_i2c_init_recovery_info.exit.if.end71_crit_edge: ; preds = %mv64xxx_i2c_init_recovery_info.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

mv64xxx_i2c_init_recovery_info.exit.cleanup_crit_edge: ; preds = %mv64xxx_i2c_init_recovery_info.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end71:                                         ; preds = %mv64xxx_i2c_init_recovery_info.exit.if.end71_crit_edge, %if.end12.i, %if.else.i217.if.end71_crit_edge
  %dev74 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %call.i, i32 0, i32 23, i32 9
  %parent = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %call.i, i32 0, i32 23, i32 9, i32 1
  %57 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %dev, ptr %parent, align 8
  %algo = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %call.i, i32 0, i32 23, i32 2
  %58 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @mv64xxx_i2c_algo, ptr %algo, align 8
  %59 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %adapter, align 8
  %class = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %call.i, i32 0, i32 23, i32 1
  %60 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 256, ptr %class, align 4
  %id = getelementptr inbounds %struct.platform_device, ptr %pd, i32 0, i32 1
  %61 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %id, align 4
  %nr = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %call.i, i32 0, i32 23, i32 11
  %63 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %nr, align 4
  %of_node80 = getelementptr inbounds %struct.platform_device, ptr %pd, i32 0, i32 3, i32 27
  %64 = ptrtoint ptr %of_node80 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %of_node80, align 8
  %of_node83 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %call.i, i32 0, i32 23, i32 9, i32 27
  %66 = ptrtoint ptr %of_node83 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %65, ptr %of_node83, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pd, i32 0, i32 3, i32 8
  %67 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i.i219 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %call.i, i32 0, i32 23, i32 9, i32 8
  %68 = ptrtoint ptr %driver_data.i.i219 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call.i, ptr %driver_data.i.i219, align 4
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 1000) #9
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #9
  call void @pm_runtime_enable(ptr noundef %dev) #9
  %disable_depth.i = getelementptr inbounds %struct.platform_device, ptr %pd, i32 0, i32 3, i32 12, i32 15
  %69 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i220 = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i220, label %if.end71.if.end96_crit_edge, label %if.then90

if.end71.if.end96_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end96

if.then90:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  %call92 = call i32 @mv64xxx_i2c_runtime_resume(ptr noundef %dev)
  br label %if.end96

if.end96:                                         ; preds = %if.then90, %if.end71.if.end96_crit_edge
  %70 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %irq, align 8
  %call.i221 = call i32 @request_threaded_irq(i32 noundef %71, ptr noundef nonnull @mv64xxx_i2c_intr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i221)
  %tobool99.not = icmp eq i32 %call.i221, 0
  br i1 %tobool99.not, label %if.else107, label %do.end103

do.end103:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %irq, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev74, ptr noundef nonnull @.str.6, i32 noundef %73, i32 noundef %call.i221) #12
  br label %exit_disable_pm

if.else107:                                       ; preds = %if.end96
  %call109 = call i32 @i2c_add_numbered_adapter(ptr noundef %adapter) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %cmp110.not = icmp eq i32 %call109, 0
  br i1 %cmp110.not, label %if.else107.cleanup_crit_edge, label %do.end114

if.else107.cleanup_crit_edge:                     ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end114:                                        ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i32 0, %call109
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev74, ptr noundef nonnull @.str.12, i32 noundef %sub) #12
  %74 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %irq, align 8
  %call120 = call ptr @free_irq(i32 noundef %75, ptr noundef nonnull %call.i) #9
  br label %exit_disable_pm

exit_disable_pm:                                  ; preds = %do.end114, %do.end103
  %rc.0 = phi i32 [ %call.i221, %do.end103 ], [ %call109, %do.end114 ]
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  %runtime_status.i = getelementptr inbounds %struct.platform_device, ptr %pd, i32 0, i32 3, i32 12, i32 18
  %76 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %77)
  %cmp.i222 = icmp eq i32 %77, 2
  br i1 %cmp.i222, label %exit_disable_pm.cleanup_crit_edge, label %if.then124

exit_disable_pm.cleanup_crit_edge:                ; preds = %exit_disable_pm
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then124:                                       ; preds = %exit_disable_pm
  call void @__sanitizer_cov_trace_pc() #11
  %call126 = call i32 @mv64xxx_i2c_runtime_suspend(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.then124, %exit_disable_pm.cleanup_crit_edge, %if.else107.cleanup_crit_edge, %mv64xxx_i2c_init_recovery_info.exit.cleanup_crit_edge, %if.then.i215.cleanup_crit_edge, %mv64xxx_of_config.exit, %mv64xxx_of_config.exit.thread, %if.end42.cleanup_crit_edge, %if.then35.cleanup_crit_edge, %if.then24.cleanup_crit_edge, %if.then11, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then11 ], [ -19, %land.lhs.true.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -517, %if.then24.cleanup_crit_edge ], [ -517, %if.then35.cleanup_crit_edge ], [ %call43, %if.end42.cleanup_crit_edge ], [ %52, %mv64xxx_of_config.exit ], [ -517, %mv64xxx_i2c_init_recovery_info.exit.cleanup_crit_edge ], [ 0, %if.else107.cleanup_crit_edge ], [ %rc.0, %if.then124 ], [ %rc.0, %exit_disable_pm.cleanup_crit_edge ], [ %retval.0.i211.ph, %mv64xxx_of_config.exit.thread ], [ -517, %if.then.i215.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv64xxx_i2c_remove(ptr noundef %pd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pd, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %adapter = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 23
  tail call void @i2c_del_adapter(ptr noundef %adapter) #9
  %irq = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 8
  %call1 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pd, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  %runtime_status.i = getelementptr inbounds %struct.platform_device, ptr %pd, i32 0, i32 3, i32 12, i32 18
  %4 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp eq i32 %5, 2
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %rstc.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %7, i32 0, i32 26
  %8 = ptrtoint ptr %rstc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rstc.i, align 4
  %call1.i = tail call i32 @reset_control_assert(ptr noundef %9) #9
  %reg_clk.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %7, i32 0, i32 19
  %10 = ptrtoint ptr %reg_clk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_clk.i, align 8
  tail call void @clk_disable(ptr noundef %11) #9
  tail call void @clk_unprepare(ptr noundef %11) #9
  %clk.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %7, i32 0, i32 18
  %12 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %13) #9
  tail call void @clk_unprepare(ptr noundef %13) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv64xxx_i2c_shutdown(ptr noundef %pd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pd, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  %runtime_status.i = getelementptr inbounds %struct.platform_device, ptr %pd, i32 0, i32 3, i32 12, i32 18
  %0 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pd, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %rstc.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %3, i32 0, i32 26
  %4 = ptrtoint ptr %rstc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rstc.i, align 4
  %call1.i = tail call i32 @reset_control_assert(ptr noundef %5) #9
  %reg_clk.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %3, i32 0, i32 19
  %6 = ptrtoint ptr %reg_clk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_clk.i, align 8
  tail call void @clk_disable(ptr noundef %7) #9
  tail call void @clk_unprepare(ptr noundef %7) #9
  %clk.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %3, i32 0, i32 18
  %8 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %9) #9
  tail call void @clk_unprepare(ptr noundef %9) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv64xxx_i2c_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %3) #9
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %reg_clk = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %reg_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_clk, align 8
  %call.i7 = tail call i32 @clk_prepare(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7)
  %tobool.not.i8 = icmp eq i32 %call.i7, 0
  br i1 %tobool.not.i8, label %if.end.i11, label %clk_prepare_enable.exit.clk_prepare_enable.exit13_crit_edge

clk_prepare_enable.exit.clk_prepare_enable.exit13_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit13

if.end.i11:                                       ; preds = %clk_prepare_enable.exit
  %call1.i9 = tail call i32 @clk_enable(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i9)
  %tobool2.not.i10 = icmp eq i32 %call1.i9, 0
  br i1 %tobool2.not.i10, label %if.end.i11.clk_prepare_enable.exit13_crit_edge, label %if.then3.i12

if.end.i11.clk_prepare_enable.exit13_crit_edge:   ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit13

if.then3.i12:                                     ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %5) #9
  br label %clk_prepare_enable.exit13

clk_prepare_enable.exit13:                        ; preds = %if.then3.i12, %if.end.i11.clk_prepare_enable.exit13_crit_edge, %clk_prepare_enable.exit.clk_prepare_enable.exit13_crit_edge
  %rstc = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 26
  %6 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rstc, align 4
  %call3 = tail call i32 @reset_control_reset(ptr noundef %7) #9
  tail call fastcc void @mv64xxx_i2c_hw_init(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv64xxx_i2c_intr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %buf.i72.i = alloca [2 x i32], align 4
  %buf.i.i = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %dev_id, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %offload_enabled = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %dev_id, i32 0, i32 24
  %0 = ptrtoint ptr %offload_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %offload_enabled, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %reg_base.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %dev_id, i32 0, i32 7
  %2 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 216
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %5 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_base.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %6, i32 212
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #9, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  %8 = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool9.not.i = icmp eq i32 %8, 0
  %rc12.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %dev_id, i32 0, i32 15
  br i1 %tobool9.not.i, label %if.end11.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %rc12.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -5, ptr %rc12.i, align 8
  br label %do.body.i

if.end11.i:                                       ; preds = %if.end.i
  %10 = ptrtoint ptr %rc12.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %rc12.i, align 8
  %num_msgs.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %dev_id, i32 0, i32 1
  %11 = ptrtoint ptr %num_msgs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_msgs.i, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %12, label %if.end11.i.do.body.i_crit_edge [
    i32 1, label %land.lhs.true.i
    i32 2, label %land.lhs.true22.i
  ]

if.end11.i.do.body.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

land.lhs.true.i:                                  ; preds = %if.end11.i
  %14 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_id, align 8
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %flags.i, align 2
  %18 = and i16 %17, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool14.not.i = icmp eq i16 %18, 0
  br i1 %tobool14.not.i, label %land.lhs.true.i.do.body.i_crit_edge, label %if.then15.i

land.lhs.true.i.do.body.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.then15.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i.i)
  %19 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 200
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !88
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !91
  %23 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %buf.i.i, align 4
  %24 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_base.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %25, i32 204
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i) #9, !srcloc !88
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  %buf.i.i.4.buf.i.i.4.buf.i.4.buf.i.4.buf.4.buf.4.buf.4..sroa_idx = getelementptr inbounds i8, ptr %buf.i.i, i32 4
  %28 = ptrtoint ptr %buf.i.i.4.buf.i.i.4.buf.i.4.buf.i.4.buf.4.buf.4.buf.4..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %buf.i.i.4.buf.i.i.4.buf.i.4.buf.i.4.buf.4.buf.4.buf.4..sroa_idx, align 4
  %buf10.i.i = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  %29 = ptrtoint ptr %buf10.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %buf10.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 2
  %31 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %len.i.i, align 4
  %conv.i.i = zext i16 %32 to i32
  %33 = call ptr @memcpy(ptr %30, ptr %buf.i.i, i32 %conv.i.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i.i)
  %34 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_id, align 8
  %incdec.ptr.i = getelementptr %struct.i2c_msg, ptr %35, i32 1
  store ptr %incdec.ptr.i, ptr %dev_id, align 8
  %36 = ptrtoint ptr %num_msgs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_msgs.i, align 4
  %dec.i = add i32 %37, -1
  store i32 %dec.i, ptr %num_msgs.i, align 4
  br label %do.body.i

land.lhs.true22.i:                                ; preds = %if.end11.i
  %38 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_id, align 8
  %flags25.i = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %flags25.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %flags25.i, align 2
  %42 = and i16 %41, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool28.not.i = icmp eq i16 %42, 0
  br i1 %tobool28.not.i, label %land.lhs.true29.i, label %land.lhs.true22.i.do.body.i_crit_edge

land.lhs.true22.i.do.body.i_crit_edge:            ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

land.lhs.true29.i:                                ; preds = %land.lhs.true22.i
  %flags32.i = getelementptr %struct.i2c_msg, ptr %39, i32 1, i32 1
  %43 = ptrtoint ptr %flags32.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %flags32.i, align 2
  %45 = and i16 %44, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool35.not.i = icmp eq i16 %45, 0
  br i1 %tobool35.not.i, label %land.lhs.true29.i.do.body.i_crit_edge, label %if.then36.i

land.lhs.true29.i.do.body.i_crit_edge:            ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.then36.i:                                      ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i72.i)
  %46 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i75.i = getelementptr i8, ptr %47, i32 200
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i75.i) #9, !srcloc !88
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !91
  %50 = ptrtoint ptr %buf.i72.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %buf.i72.i, align 4
  %51 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg_base.i, align 4
  %add.ptr5.i76.i = getelementptr i8, ptr %52, i32 204
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i76.i) #9, !srcloc !88
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  %buf.i72.i.4.buf.i72.i.4.buf.i72.4.buf.i72.4.buf.4.buf.4.buf.4..sroa_idx = getelementptr inbounds i8, ptr %buf.i72.i, i32 4
  %55 = ptrtoint ptr %buf.i72.i.4.buf.i72.i.4.buf.i72.4.buf.i72.4.buf.4.buf.4.buf.4..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %buf.i72.i.4.buf.i72.i.4.buf.i72.4.buf.i72.4.buf.4.buf.4.buf.4..sroa_idx, align 4
  %buf10.i77.i = getelementptr %struct.i2c_msg, ptr %39, i32 1, i32 3
  %56 = ptrtoint ptr %buf10.i77.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %buf10.i77.i, align 4
  %len.i78.i = getelementptr %struct.i2c_msg, ptr %39, i32 1, i32 2
  %58 = ptrtoint ptr %len.i78.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %len.i78.i, align 4
  %conv.i79.i = zext i16 %59 to i32
  %60 = call ptr @memcpy(ptr %57, ptr %buf.i72.i, i32 %conv.i79.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i72.i)
  %61 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev_id, align 8
  %add.ptr40.i = getelementptr %struct.i2c_msg, ptr %62, i32 2
  store ptr %add.ptr40.i, ptr %dev_id, align 8
  %63 = ptrtoint ptr %num_msgs.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_msgs.i, align 4
  %sub.i = add i32 %64, -2
  store i32 %sub.i, ptr %num_msgs.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.then36.i, %land.lhs.true29.i.do.body.i_crit_edge, %land.lhs.true22.i.do.body.i_crit_edge, %if.then15.i, %land.lhs.true.i.do.body.i_crit_edge, %if.end11.i.do.body.i_crit_edge, %if.then10.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  tail call void @arm_heavy_mb() #9
  %65 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %reg_base.i, align 4
  %add.ptr45.i = getelementptr i8, ptr %66, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45.i, i32 0) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !95
  tail call void @arm_heavy_mb() #9
  %67 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %reg_base.i, align 4
  %add.ptr50.i = getelementptr i8, ptr %68, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50.i, i32 0) #9, !srcloc !94
  %block.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %dev_id, i32 0, i32 14
  %69 = ptrtoint ptr %block.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %block.i, align 4
  %waitq.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %dev_id, i32 0, i32 20
  tail call void @__wake_up(ptr noundef %waitq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.body.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %rc.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ 1, %do.body.i ], [ 0, %if.then.if.end_crit_edge ]
  %reg_base = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %dev_id, i32 0, i32 7
  %control = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %dev_id, i32 0, i32 8, i32 3
  %70 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %reg_base, align 4
  %72 = ptrtoint ptr %control to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %control, align 1
  %conv64 = zext i8 %73 to i32
  %add.ptr65 = getelementptr i8, ptr %71, i32 %conv64
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr65) #9, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !96
  %75 = and i32 %74, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool3.not66 = icmp eq i32 %75, 0
  br i1 %tobool3.not66, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %status8 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %dev_id, i32 0, i32 8, i32 4
  %state.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %dev_id, i32 0, i32 3
  %action72.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %dev_id, i32 0, i32 4
  %rc.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %dev_id, i32 0, i32 15
  %msg31.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %dev_id, i32 0, i32 22
  %bytes_left41.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %dev_id, i32 0, i32 11
  %aborting63.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %dev_id, i32 0, i32 5
  %cntl_bits.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %dev_id, i32 0, i32 6
  %byte_posn.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %dev_id, i32 0, i32 12
  %send_stop.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %dev_id, i32 0, i32 13
  %adapter.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %dev_id, i32 0, i32 23
  %dev.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %dev_id, i32 0, i32 23, i32 9
  %data90.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %dev_id, i32 0, i32 8, i32 2
  %block.i59 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %dev_id, i32 0, i32 14
  %errata_delay111.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %dev_id, i32 0, i32 25
  %waitq.i60 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %dev_id, i32 0, i32 20
  %addr2.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %dev_id, i32 0, i32 10
  %addr1.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %dev_id, i32 0, i32 9
  %num_msgs.i45 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %dev_id, i32 0, i32 1
  %irq_clear_inverted = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %dev_id, i32 0, i32 27
  br label %while.body

while.body:                                       ; preds = %if.end21.while.body_crit_edge, %while.body.lr.ph
  %76 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %reg_base, align 4
  %78 = ptrtoint ptr %status8 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %status8, align 4
  %conv9 = zext i8 %79 to i32
  %add.ptr10 = getelementptr i8, ptr %77, i32 %conv9
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #9, !srcloc !88
  %81 = tail call i32 @llvm.bswap.i32(i32 %80)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  %82 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %83)
  %cmp.i = icmp eq i32 %83, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.i36

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %84 = ptrtoint ptr %action72.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 8, ptr %action72.i, align 8
  br label %sw.bb119.i

if.end.i36:                                       ; preds = %while.body
  %85 = add i32 %81, -8
  %86 = tail call i32 @llvm.fshl.i32(i32 %85, i32 %85, i32 29) #9
  %87 = zext i32 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %86, label %do.end.i [
    i32 0, label %if.end.i36.mv64xxx_i2c_fsm.exit.thread71_crit_edge
    i32 1, label %if.end.i36.mv64xxx_i2c_fsm.exit.thread71_crit_edge74
    i32 2, label %sw.bb3.i
    i32 25, label %if.end.i36.sw.bb8.i_crit_edge
    i32 4, label %if.end.i36.sw.bb8.i_crit_edge75
    i32 7, label %sw.bb30.i
    i32 27, label %if.end.i36.sw.bb40.i_crit_edge
    i32 9, label %if.end.i36.sw.bb48.i_crit_edge
    i32 10, label %mv64xxx_i2c_fsm.exit.thread73
    i32 3, label %if.end.i36.sw.bb71.i_crit_edge
    i32 5, label %if.end.i36.sw.bb71.i_crit_edge76
    i32 8, label %if.end.i36.sw.bb71.i_crit_edge77
  ]

if.end.i36.sw.bb71.i_crit_edge77:                 ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb71.i

if.end.i36.sw.bb71.i_crit_edge76:                 ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb71.i

if.end.i36.sw.bb71.i_crit_edge:                   ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb71.i

if.end.i36.sw.bb48.i_crit_edge:                   ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb48.i

if.end.i36.sw.bb40.i_crit_edge:                   ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb40.i

if.end.i36.sw.bb8.i_crit_edge75:                  ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb8.i

if.end.i36.sw.bb8.i_crit_edge:                    ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb8.i

if.end.i36.mv64xxx_i2c_fsm.exit.thread71_crit_edge74: ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #11
  br label %mv64xxx_i2c_fsm.exit.thread71

if.end.i36.mv64xxx_i2c_fsm.exit.thread71_crit_edge: ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #11
  br label %mv64xxx_i2c_fsm.exit.thread71

mv64xxx_i2c_fsm.exit.thread71:                    ; preds = %if.end.i36.mv64xxx_i2c_fsm.exit.thread71_crit_edge, %if.end.i36.mv64xxx_i2c_fsm.exit.thread71_crit_edge74
  %88 = ptrtoint ptr %action72.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 3, ptr %action72.i, align 8
  %89 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 4, ptr %state.i, align 4
  br label %do.body17.i

sw.bb3.i:                                         ; preds = %if.end.i36
  %90 = ptrtoint ptr %msg31.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %msg31.i, align 4
  %flags.i37 = getelementptr inbounds %struct.i2c_msg, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %flags.i37 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %flags.i37, align 2
  %94 = and i16 %93, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %94)
  %tobool.not.i38 = icmp eq i16 %94, 0
  br i1 %tobool.not.i38, label %sw.bb3.i.sw.bb8.i_crit_edge, label %sw.bb3.i.do.body32.i.sink.split_crit_edge

sw.bb3.i.do.body32.i.sink.split_crit_edge:        ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body32.i.sink.split

sw.bb3.i.sw.bb8.i_crit_edge:                      ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb8.i

sw.bb8.i:                                         ; preds = %sw.bb3.i.sw.bb8.i_crit_edge, %if.end.i36.sw.bb8.i_crit_edge, %if.end.i36.sw.bb8.i_crit_edge75
  %95 = ptrtoint ptr %bytes_left41.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %bytes_left41.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp9.i = icmp eq i32 %96, 0
  br i1 %cmp9.i, label %sw.bb8.i.if.then14.i_crit_edge, label %lor.lhs.false.i

sw.bb8.i.if.then14.i_crit_edge:                   ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14.i

lor.lhs.false.i:                                  ; preds = %sw.bb8.i
  %97 = ptrtoint ptr %aborting63.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %aborting63.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool11.not.i = icmp eq i32 %98, 0
  br i1 %tobool11.not.i, label %lor.lhs.false.i.mv64xxx_i2c_fsm.exit.thread72_crit_edge, label %land.lhs.true.i39

lor.lhs.false.i.mv64xxx_i2c_fsm.exit.thread72_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mv64xxx_i2c_fsm.exit.thread72

land.lhs.true.i39:                                ; preds = %lor.lhs.false.i
  %99 = ptrtoint ptr %byte_posn.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %byte_posn.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp12.not.i = icmp eq i32 %100, 0
  br i1 %cmp12.not.i, label %land.lhs.true.i39.mv64xxx_i2c_fsm.exit.thread72_crit_edge, label %land.lhs.true.i39.if.then14.i_crit_edge

land.lhs.true.i39.if.then14.i_crit_edge:          ; preds = %land.lhs.true.i39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14.i

land.lhs.true.i39.mv64xxx_i2c_fsm.exit.thread72_crit_edge: ; preds = %land.lhs.true.i39
  call void @__sanitizer_cov_trace_pc() #11
  br label %mv64xxx_i2c_fsm.exit.thread72

if.then14.i:                                      ; preds = %land.lhs.true.i39.if.then14.i_crit_edge, %sw.bb8.i.if.then14.i_crit_edge
  %101 = ptrtoint ptr %send_stop.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %send_stop.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool15.not.i = icmp eq i32 %102, 0
  br i1 %tobool15.not.i, label %lor.lhs.false16.i, label %if.then14.i.if.then19.i_crit_edge

if.then14.i.if.then19.i_crit_edge:                ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19.i

lor.lhs.false16.i:                                ; preds = %if.then14.i
  %103 = ptrtoint ptr %aborting63.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %aborting63.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool18.not.i = icmp eq i32 %104, 0
  br i1 %tobool18.not.i, label %mv64xxx_i2c_fsm.exit.thread70, label %lor.lhs.false16.i.if.then19.i_crit_edge

lor.lhs.false16.i.if.then19.i_crit_edge:          ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19.i

if.then19.i:                                      ; preds = %lor.lhs.false16.i.if.then19.i_crit_edge, %if.then14.i.if.then19.i_crit_edge
  %105 = ptrtoint ptr %action72.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 8, ptr %action72.i, align 8
  %106 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 1, ptr %state.i, align 4
  br label %sw.bb119.i

mv64xxx_i2c_fsm.exit.thread70:                    ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #11
  %107 = ptrtoint ptr %action72.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 2, ptr %action72.i, align 8
  %108 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 3, ptr %state.i, align 4
  br label %do.body.i47

mv64xxx_i2c_fsm.exit.thread72:                    ; preds = %land.lhs.true.i39.mv64xxx_i2c_fsm.exit.thread72_crit_edge, %lor.lhs.false.i.mv64xxx_i2c_fsm.exit.thread72_crit_edge
  %109 = ptrtoint ptr %action72.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 5, ptr %action72.i, align 8
  %110 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 6, ptr %state.i, align 4
  %dec.i40 = add i32 %96, -1
  %111 = ptrtoint ptr %bytes_left41.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %dec.i40, ptr %bytes_left41.i, align 8
  br label %do.body48.i

sw.bb30.i:                                        ; preds = %if.end.i36
  %112 = ptrtoint ptr %msg31.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %msg31.i, align 4
  %flags32.i41 = getelementptr inbounds %struct.i2c_msg, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %flags32.i41 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %flags32.i41, align 2
  %116 = and i16 %115, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %116)
  %tobool35.not.i42 = icmp eq i16 %116, 0
  br i1 %tobool35.not.i42, label %sw.bb30.i.sw.bb40.i_crit_edge, label %sw.bb30.i.do.body32.i.sink.split_crit_edge

sw.bb30.i.do.body32.i.sink.split_crit_edge:       ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body32.i.sink.split

sw.bb30.i.sw.bb40.i_crit_edge:                    ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb40.i

sw.bb40.i:                                        ; preds = %sw.bb30.i.sw.bb40.i_crit_edge, %if.end.i36.sw.bb40.i_crit_edge
  %117 = ptrtoint ptr %bytes_left41.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %bytes_left41.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp42.i = icmp eq i32 %118, 0
  br i1 %cmp42.i, label %if.then44.i, label %sw.bb40.i.sw.bb48.i_crit_edge

sw.bb40.i.sw.bb48.i_crit_edge:                    ; preds = %sw.bb40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb48.i

if.then44.i:                                      ; preds = %sw.bb40.i
  call void @__sanitizer_cov_trace_pc() #11
  %119 = ptrtoint ptr %action72.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 8, ptr %action72.i, align 8
  %120 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 1, ptr %state.i, align 4
  br label %sw.bb119.i

sw.bb48.i:                                        ; preds = %sw.bb40.i.sw.bb48.i_crit_edge, %if.end.i36.sw.bb48.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1342177280, i32 %80)
  %cmp49.not.i = icmp eq i32 %80, 1342177280
  %121 = ptrtoint ptr %bytes_left41.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %bytes_left41.i, align 8
  br i1 %cmp49.not.i, label %if.else53.i, label %sw.bb48.i.if.end57.i_crit_edge

sw.bb48.i.if.end57.i_crit_edge:                   ; preds = %sw.bb48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.i

if.else53.i:                                      ; preds = %sw.bb48.i
  call void @__sanitizer_cov_trace_pc() #11
  %dec56.i = add i32 %122, -1
  %123 = ptrtoint ptr %bytes_left41.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %dec56.i, ptr %bytes_left41.i, align 8
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.else53.i, %sw.bb48.i.if.end57.i_crit_edge
  %124 = phi i32 [ %dec56.i, %if.else53.i ], [ %122, %sw.bb48.i.if.end57.i_crit_edge ]
  %.sink.i = phi i32 [ 6, %if.else53.i ], [ 1, %sw.bb48.i.if.end57.i_crit_edge ]
  %125 = ptrtoint ptr %action72.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %.sink.i, ptr %action72.i, align 8
  %126 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 7, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %124)
  %cmp60.i = icmp eq i32 %124, 1
  br i1 %cmp60.i, label %if.end57.i.if.then65.i_crit_edge, label %lor.lhs.false62.i

if.end57.i.if.then65.i_crit_edge:                 ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then65.i

lor.lhs.false62.i:                                ; preds = %if.end57.i
  %127 = ptrtoint ptr %aborting63.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %aborting63.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool64.not.i = icmp eq i32 %128, 0
  br i1 %tobool64.not.i, label %lor.lhs.false62.i.mv64xxx_i2c_fsm.exit_crit_edge, label %lor.lhs.false62.i.if.then65.i_crit_edge

lor.lhs.false62.i.if.then65.i_crit_edge:          ; preds = %lor.lhs.false62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then65.i

lor.lhs.false62.i.mv64xxx_i2c_fsm.exit_crit_edge: ; preds = %lor.lhs.false62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mv64xxx_i2c_fsm.exit

if.then65.i:                                      ; preds = %lor.lhs.false62.i.if.then65.i_crit_edge, %if.end57.i.if.then65.i_crit_edge
  %129 = ptrtoint ptr %cntl_bits.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %cntl_bits.i, align 8
  %and66.i = and i32 %130, -5
  store i32 %and66.i, ptr %cntl_bits.i, align 8
  br label %mv64xxx_i2c_fsm.exit

mv64xxx_i2c_fsm.exit.thread73:                    ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #11
  %131 = ptrtoint ptr %action72.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 7, ptr %action72.i, align 8
  %132 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 1, ptr %state.i, align 4
  br label %sw.bb85.i

sw.bb71.i:                                        ; preds = %if.end.i36.sw.bb71.i_crit_edge, %if.end.i36.sw.bb71.i_crit_edge76, %if.end.i36.sw.bb71.i_crit_edge77
  %133 = ptrtoint ptr %action72.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 8, ptr %action72.i, align 8
  %134 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 1, ptr %state.i, align 4
  %135 = ptrtoint ptr %rc.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 -6, ptr %rc.i, align 8
  br label %sw.bb119.i

do.end.i:                                         ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #11
  %136 = ptrtoint ptr %msg31.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %msg31.i, align 4
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %137, align 4
  %conv76.i = zext i16 %139 to i32
  %flags78.i = getelementptr inbounds %struct.i2c_msg, ptr %137, i32 0, i32 1
  %140 = ptrtoint ptr %flags78.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %flags78.i, align 2
  %conv79.i = zext i16 %141 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.24, i32 noundef %83, i32 noundef %81, i32 noundef %conv76.i, i32 noundef %conv79.i) #12
  %142 = ptrtoint ptr %action72.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 8, ptr %action72.i, align 8
  tail call fastcc void @mv64xxx_i2c_hw_init(ptr noundef %dev_id) #9
  %call.i = tail call i32 @i2c_recover_bus(ptr noundef %adapter.i) #9
  %143 = ptrtoint ptr %rc.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 -11, ptr %rc.i, align 8
  br label %mv64xxx_i2c_fsm.exit

mv64xxx_i2c_fsm.exit:                             ; preds = %do.end.i, %if.then65.i, %lor.lhs.false62.i.mv64xxx_i2c_fsm.exit_crit_edge
  %144 = ptrtoint ptr %action72.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %.pr67 = load i32, ptr %action72.i, align 8
  %145 = zext i32 %.pr67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %145, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %.pr67, label %do.end117.i [
    i32 2, label %mv64xxx_i2c_fsm.exit.do.body.i47_crit_edge
    i32 1, label %do.body13.i
    i32 3, label %mv64xxx_i2c_fsm.exit.do.body17.i_crit_edge
    i32 4, label %mv64xxx_i2c_fsm.exit.do.body32.i_crit_edge
    i32 5, label %mv64xxx_i2c_fsm.exit.do.body48.i_crit_edge
    i32 6, label %sw.bb64.i
    i32 7, label %mv64xxx_i2c_fsm.exit.sw.bb85.i_crit_edge
    i32 8, label %mv64xxx_i2c_fsm.exit.sw.bb119.i_crit_edge
  ]

mv64xxx_i2c_fsm.exit.sw.bb119.i_crit_edge:        ; preds = %mv64xxx_i2c_fsm.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb119.i

mv64xxx_i2c_fsm.exit.sw.bb85.i_crit_edge:         ; preds = %mv64xxx_i2c_fsm.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb85.i

mv64xxx_i2c_fsm.exit.do.body48.i_crit_edge:       ; preds = %mv64xxx_i2c_fsm.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body48.i

mv64xxx_i2c_fsm.exit.do.body32.i_crit_edge:       ; preds = %mv64xxx_i2c_fsm.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body32.i

mv64xxx_i2c_fsm.exit.do.body17.i_crit_edge:       ; preds = %mv64xxx_i2c_fsm.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body17.i

mv64xxx_i2c_fsm.exit.do.body.i47_crit_edge:       ; preds = %mv64xxx_i2c_fsm.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i47

do.body.i47:                                      ; preds = %mv64xxx_i2c_fsm.exit.do.body.i47_crit_edge, %mv64xxx_i2c_fsm.exit.thread70
  %146 = ptrtoint ptr %num_msgs.i45 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %num_msgs.i45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %cmp.i46 = icmp eq i32 %147, 0
  br i1 %cmp.i46, label %do.body2.i, label %do.end5.i, !prof !98

do.body2.i:                                       ; preds = %do.body.i47
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/i2c/busses/i2c-mv64xxx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 359, 0\0A.popsection", ""() #9, !srcloc !99
  unreachable

do.end5.i:                                        ; preds = %do.body.i47
  %148 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dev_id, align 8
  %incdec.ptr.i48 = getelementptr %struct.i2c_msg, ptr %149, i32 1
  store ptr %incdec.ptr.i48, ptr %dev_id, align 8
  %dec.i49 = add i32 %147, -1
  %150 = ptrtoint ptr %num_msgs.i45 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %dec.i49, ptr %num_msgs.i45, align 4
  %151 = ptrtoint ptr %msg31.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %incdec.ptr.i48, ptr %msg31.i, align 4
  %152 = ptrtoint ptr %byte_posn.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 0, ptr %byte_posn.i, align 4
  %len.i.i50 = getelementptr %struct.i2c_msg, ptr %149, i32 1, i32 2
  %153 = ptrtoint ptr %len.i.i50 to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %len.i.i50, align 4
  %conv.i.i51 = zext i16 %154 to i32
  %155 = ptrtoint ptr %bytes_left41.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %conv.i.i51, ptr %bytes_left41.i, align 8
  %156 = ptrtoint ptr %aborting63.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 0, ptr %aborting63.i, align 4
  %157 = ptrtoint ptr %rc.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 0, ptr %rc.i, align 8
  %158 = ptrtoint ptr %cntl_bits.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 196, ptr %cntl_bits.i, align 8
  %flags.i.i.i = getelementptr %struct.i2c_msg, ptr %149, i32 1, i32 1
  %159 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %flags.i.i.i, align 2
  %161 = and i16 %160, 1
  %162 = and i16 %160, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %162)
  %tobool4.not.i.i.i = icmp eq i16 %162, 0
  %163 = ptrtoint ptr %incdec.ptr.i48 to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %incdec.ptr.i48, align 4
  br i1 %tobool4.not.i.i.i, label %if.else.i.i.i, label %if.then5.i.i.i

if.then5.i.i.i:                                   ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %165 = lshr i16 %164, 7
  %166 = and i16 %165, 6
  %167 = or i16 %161, %166
  %or828.i.i.i = or i16 %167, 240
  %or8.i.i.i = zext i16 %or828.i.i.i to i32
  %168 = ptrtoint ptr %addr1.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %or8.i.i.i, ptr %addr1.i, align 8
  %169 = ptrtoint ptr %incdec.ptr.i48 to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %incdec.ptr.i48, align 4
  %171 = and i16 %170, 255
  %and11.i.i.i = zext i16 %171 to i32
  br label %mv64xxx_i2c_send_start.exit.i

if.else.i.i.i:                                    ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %172 = shl i16 %164, 1
  %173 = and i16 %172, 254
  %or1529.i.i.i = or i16 %173, %161
  %or15.i.i.i = zext i16 %or1529.i.i.i to i32
  %174 = ptrtoint ptr %addr1.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %or15.i.i.i, ptr %addr1.i, align 8
  br label %mv64xxx_i2c_send_start.exit.i

mv64xxx_i2c_send_start.exit.i:                    ; preds = %if.else.i.i.i, %if.then5.i.i.i
  %and11.sink.i.i.i = phi i32 [ 0, %if.else.i.i.i ], [ %and11.i.i.i, %if.then5.i.i.i ]
  %175 = ptrtoint ptr %addr2.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %and11.sink.i.i.i, ptr %addr2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %176 = ptrtoint ptr %cntl_bits.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %cntl_bits.i, align 8
  %or.i.i = or i32 %177, 32
  %178 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #9
  %179 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %reg_base, align 4
  %181 = ptrtoint ptr %control to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %control, align 1
  %conv3.i.i = zext i8 %182 to i32
  %add.ptr.i.i52 = getelementptr i8, ptr %180, i32 %conv3.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i52, i32 %178) #9, !srcloc !94
  %183 = ptrtoint ptr %errata_delay111.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %errata_delay111.i, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %184)
  %tobool7.not.i = icmp eq i8 %184, 0
  br i1 %tobool7.not.i, label %mv64xxx_i2c_send_start.exit.i.if.end9.i_crit_edge, label %if.then8.i

mv64xxx_i2c_send_start.exit.i.if.end9.i_crit_edge: ; preds = %mv64xxx_i2c_send_start.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

if.then8.i:                                       ; preds = %mv64xxx_i2c_send_start.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %185 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %185(i32 noundef 1073740) #9
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then8.i, %mv64xxx_i2c_send_start.exit.i.if.end9.i_crit_edge
  %186 = ptrtoint ptr %num_msgs.i45 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %num_msgs.i45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %187)
  %cmp11.i = icmp eq i32 %187, 1
  %conv.i = zext i1 %cmp11.i to i32
  %188 = ptrtoint ptr %send_stop.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %conv.i, ptr %send_stop.i, align 8
  br label %mv64xxx_i2c_do_action.exit

do.body13.i:                                      ; preds = %mv64xxx_i2c_fsm.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  tail call void @arm_heavy_mb() #9
  %189 = ptrtoint ptr %cntl_bits.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %cntl_bits.i, align 8
  %191 = tail call i32 @llvm.bswap.i32(i32 %190) #9
  %192 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %reg_base, align 4
  %194 = ptrtoint ptr %control to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %control, align 1
  %conv15.i = zext i8 %195 to i32
  %add.ptr.i56 = getelementptr i8, ptr %193, i32 %conv15.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 %191) #9, !srcloc !94
  br label %mv64xxx_i2c_do_action.exit

do.body17.i:                                      ; preds = %mv64xxx_i2c_fsm.exit.do.body17.i_crit_edge, %mv64xxx_i2c_fsm.exit.thread71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  %196 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %addr1.i, align 8
  %198 = tail call i32 @llvm.bswap.i32(i32 %197) #9
  %199 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %reg_base, align 4
  %201 = ptrtoint ptr %data90.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %data90.i, align 2
  %conv21.i = zext i8 %202 to i32
  %add.ptr22.i = getelementptr i8, ptr %200, i32 %conv21.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 %198) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void @arm_heavy_mb() #9
  %203 = ptrtoint ptr %cntl_bits.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %cntl_bits.i, align 8
  %205 = tail call i32 @llvm.bswap.i32(i32 %204) #9
  %206 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %reg_base, align 4
  %208 = ptrtoint ptr %control to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %control, align 1
  %conv29.i = zext i8 %209 to i32
  %add.ptr30.i = getelementptr i8, ptr %207, i32 %conv29.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 %205) #9, !srcloc !94
  br label %mv64xxx_i2c_do_action.exit

do.body32.i.sink.split:                           ; preds = %sw.bb30.i.do.body32.i.sink.split_crit_edge, %sw.bb3.i.do.body32.i.sink.split_crit_edge
  %210 = ptrtoint ptr %action72.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 4, ptr %action72.i, align 8
  %211 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 5, ptr %state.i, align 4
  br label %do.body32.i

do.body32.i:                                      ; preds = %do.body32.i.sink.split, %mv64xxx_i2c_fsm.exit.do.body32.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  tail call void @arm_heavy_mb() #9
  %212 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %addr2.i, align 4
  %214 = tail call i32 @llvm.bswap.i32(i32 %213) #9
  %215 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %reg_base, align 4
  %217 = ptrtoint ptr %data90.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %data90.i, align 2
  %conv37.i = zext i8 %218 to i32
  %add.ptr38.i = getelementptr i8, ptr %216, i32 %conv37.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i, i32 %214) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !105
  tail call void @arm_heavy_mb() #9
  %219 = ptrtoint ptr %cntl_bits.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %cntl_bits.i, align 8
  %221 = tail call i32 @llvm.bswap.i32(i32 %220) #9
  %222 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %reg_base, align 4
  %224 = ptrtoint ptr %control to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %control, align 1
  %conv45.i = zext i8 %225 to i32
  %add.ptr46.i = getelementptr i8, ptr %223, i32 %conv45.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46.i, i32 %221) #9, !srcloc !94
  br label %mv64xxx_i2c_do_action.exit

do.body48.i:                                      ; preds = %mv64xxx_i2c_fsm.exit.do.body48.i_crit_edge, %mv64xxx_i2c_fsm.exit.thread72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !106
  tail call void @arm_heavy_mb() #9
  %226 = ptrtoint ptr %msg31.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %msg31.i, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %227, i32 0, i32 3
  %228 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %buf.i, align 4
  %230 = ptrtoint ptr %byte_posn.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %byte_posn.i, align 4
  %inc.i = add i32 %231, 1
  store i32 %inc.i, ptr %byte_posn.i, align 4
  %arrayidx.i = getelementptr i8, ptr %229, i32 %231
  %232 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %arrayidx.i, align 1
  %conv50.i = zext i8 %233 to i32
  %234 = shl nuw i32 %conv50.i, 24
  %235 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %reg_base, align 4
  %237 = ptrtoint ptr %data90.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %data90.i, align 2
  %conv54.i = zext i8 %238 to i32
  %add.ptr55.i = getelementptr i8, ptr %236, i32 %conv54.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55.i, i32 %234) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %239 = ptrtoint ptr %cntl_bits.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %cntl_bits.i, align 8
  %241 = tail call i32 @llvm.bswap.i32(i32 %240) #9
  %242 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %reg_base, align 4
  %244 = ptrtoint ptr %control to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %control, align 1
  %conv62.i = zext i8 %245 to i32
  %add.ptr63.i = getelementptr i8, ptr %243, i32 %conv62.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63.i, i32 %241) #9, !srcloc !94
  br label %mv64xxx_i2c_do_action.exit

sw.bb64.i:                                        ; preds = %mv64xxx_i2c_fsm.exit
  call void @__sanitizer_cov_trace_pc() #11
  %246 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %reg_base, align 4
  %248 = ptrtoint ptr %data90.i to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %data90.i, align 2
  %conv68.i = zext i8 %249 to i32
  %add.ptr69.i = getelementptr i8, ptr %247, i32 %conv68.i
  %250 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr69.i) #9, !srcloc !88
  %251 = lshr i32 %250, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %conv71.i = trunc i32 %251 to i8
  %252 = ptrtoint ptr %msg31.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %msg31.i, align 4
  %buf73.i = getelementptr inbounds %struct.i2c_msg, ptr %253, i32 0, i32 3
  %254 = ptrtoint ptr %buf73.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %buf73.i, align 4
  %256 = ptrtoint ptr %byte_posn.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %byte_posn.i, align 4
  %inc75.i = add i32 %257, 1
  store i32 %inc75.i, ptr %byte_posn.i, align 4
  %arrayidx76.i = getelementptr i8, ptr %255, i32 %257
  %258 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 %conv71.i, ptr %arrayidx76.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  %259 = ptrtoint ptr %cntl_bits.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %cntl_bits.i, align 8
  %261 = tail call i32 @llvm.bswap.i32(i32 %260) #9
  %262 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %reg_base, align 4
  %264 = ptrtoint ptr %control to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %control, align 1
  %conv83.i = zext i8 %265 to i32
  %add.ptr84.i = getelementptr i8, ptr %263, i32 %conv83.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i, i32 %261) #9, !srcloc !94
  br label %mv64xxx_i2c_do_action.exit

sw.bb85.i:                                        ; preds = %mv64xxx_i2c_fsm.exit.sw.bb85.i_crit_edge, %mv64xxx_i2c_fsm.exit.thread73
  %266 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %reg_base, align 4
  %268 = ptrtoint ptr %data90.i to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %data90.i, align 2
  %conv91.i = zext i8 %269 to i32
  %add.ptr92.i = getelementptr i8, ptr %267, i32 %conv91.i
  %270 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr92.i) #9, !srcloc !88
  %271 = lshr i32 %270, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  %conv96.i = trunc i32 %271 to i8
  %272 = ptrtoint ptr %msg31.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %msg31.i, align 4
  %buf98.i = getelementptr inbounds %struct.i2c_msg, ptr %273, i32 0, i32 3
  %274 = ptrtoint ptr %buf98.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %buf98.i, align 4
  %276 = ptrtoint ptr %byte_posn.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %byte_posn.i, align 4
  %inc100.i = add i32 %277, 1
  store i32 %inc100.i, ptr %byte_posn.i, align 4
  %arrayidx101.i = getelementptr i8, ptr %275, i32 %277
  %278 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 %conv96.i, ptr %arrayidx101.i, align 1
  %279 = ptrtoint ptr %cntl_bits.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %cntl_bits.i, align 8
  %and.i = and i32 %280, -129
  store i32 %and.i, ptr %cntl_bits.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !111
  tail call void @arm_heavy_mb() #9
  %281 = ptrtoint ptr %cntl_bits.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %cntl_bits.i, align 8
  %or.i = or i32 %282, 16
  %283 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %284 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %reg_base, align 4
  %286 = ptrtoint ptr %control to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %control, align 1
  %conv109.i = zext i8 %287 to i32
  %add.ptr110.i = getelementptr i8, ptr %285, i32 %conv109.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr110.i, i32 %283) #9, !srcloc !94
  %288 = ptrtoint ptr %block.i59 to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 0, ptr %block.i59, align 4
  %289 = ptrtoint ptr %errata_delay111.i to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %errata_delay111.i, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %290)
  %tobool112.not.i = icmp eq i8 %290, 0
  br i1 %tobool112.not.i, label %sw.bb85.i.if.end114.i_crit_edge, label %if.then113.i

sw.bb85.i.if.end114.i_crit_edge:                  ; preds = %sw.bb85.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114.i

if.then113.i:                                     ; preds = %sw.bb85.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %291 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %291(i32 noundef 1073740) #9
  br label %if.end114.i

if.end114.i:                                      ; preds = %if.then113.i, %sw.bb85.i.if.end114.i_crit_edge
  tail call void @__wake_up(ptr noundef %waitq.i60, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %mv64xxx_i2c_do_action.exit

do.end117.i:                                      ; preds = %mv64xxx_i2c_fsm.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.26, i32 noundef %.pr67) #12
  %292 = ptrtoint ptr %rc.i to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 -5, ptr %rc.i, align 8
  br label %sw.bb119.i

sw.bb119.i:                                       ; preds = %do.end117.i, %mv64xxx_i2c_fsm.exit.sw.bb119.i_crit_edge, %sw.bb71.i, %if.then44.i, %if.then19.i, %if.then.i
  %293 = ptrtoint ptr %cntl_bits.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %cntl_bits.i, align 8
  %and121.i = and i32 %294, -129
  store i32 %and121.i, ptr %cntl_bits.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %295 = ptrtoint ptr %cntl_bits.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %cntl_bits.i, align 8
  %or125.i = or i32 %296, 16
  %297 = tail call i32 @llvm.bswap.i32(i32 %or125.i) #9
  %298 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %reg_base, align 4
  %300 = ptrtoint ptr %control to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %control, align 1
  %conv129.i = zext i8 %301 to i32
  %add.ptr130.i = getelementptr i8, ptr %299, i32 %conv129.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr130.i, i32 %297) #9, !srcloc !94
  %302 = ptrtoint ptr %block.i59 to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 0, ptr %block.i59, align 4
  tail call void @__wake_up(ptr noundef %waitq.i60, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %mv64xxx_i2c_do_action.exit

mv64xxx_i2c_do_action.exit:                       ; preds = %sw.bb119.i, %if.end114.i, %sw.bb64.i, %do.body48.i, %do.body32.i, %do.body17.i, %do.body13.i, %if.end9.i
  %303 = ptrtoint ptr %irq_clear_inverted to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %irq_clear_inverted, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %304)
  %tobool14.not = icmp eq i8 %304, 0
  br i1 %tobool14.not, label %mv64xxx_i2c_do_action.exit.if.end21_crit_edge, label %do.body

mv64xxx_i2c_do_action.exit.if.end21_crit_edge:    ; preds = %mv64xxx_i2c_do_action.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

do.body:                                          ; preds = %mv64xxx_i2c_do_action.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !113
  tail call void @arm_heavy_mb() #9
  %305 = ptrtoint ptr %cntl_bits.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %cntl_bits.i, align 8
  %or = or i32 %306, 8
  %307 = tail call i32 @llvm.bswap.i32(i32 %or)
  %308 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %reg_base, align 4
  %310 = ptrtoint ptr %control to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %control, align 1
  %conv19 = zext i8 %311 to i32
  %add.ptr20 = getelementptr i8, ptr %309, i32 %conv19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %307) #9, !srcloc !94
  br label %if.end21

if.end21:                                         ; preds = %do.body, %mv64xxx_i2c_do_action.exit.if.end21_crit_edge
  %312 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %reg_base, align 4
  %314 = ptrtoint ptr %control to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %control, align 1
  %conv = zext i8 %315 to i32
  %add.ptr = getelementptr i8, ptr %313, i32 %conv
  %316 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !96
  %317 = and i32 %316, 134217728
  %tobool3.not = icmp eq i32 %317, 0
  br i1 %tobool3.not, label %if.end21.while.end_crit_edge, label %if.end21.while.body_crit_edge

if.end21.while.body_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end21.while.end_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end21.while.end_crit_edge, %if.end.while.end_crit_edge
  %rc.1.lcssa = phi i32 [ %rc.0, %if.end.while.end_crit_edge ], [ 1, %if.end21.while.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  ret i32 %rc.1.lcssa
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_numbered_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv64xxx_i2c_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rstc = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rstc, align 4
  %call1 = tail call i32 @reset_control_assert(ptr noundef %3) #9
  %reg_clk = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %reg_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_clk, align 8
  tail call void @clk_disable(ptr noundef %5) #9
  tail call void @clk_unprepare(ptr noundef %5) #9
  %clk = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %7) #9
  tail call void @clk_unprepare(ptr noundef %7) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv64xxx_i2c_xfer(ptr noundef %adap, ptr noundef %msgs, i32 noundef %num) #2 align 64 {
entry:
  %buf.i89.i = alloca [2 x i32], align 4
  %buf.i.i = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %do.body

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !114
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #9, !srcloc !115
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !116
  br label %cleanup

do.body:                                          ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %cmp.not = icmp eq ptr %4, null
  br i1 %cmp.not, label %do.end12, label %do.body6, !prof !117

do.body6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/i2c/busses/i2c-mv64xxx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 729, 0\0A.popsection", ""() #9, !srcloc !118
  unreachable

do.end12:                                         ; preds = %do.body
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %msgs, ptr %1, align 8
  %num_msgs = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %num_msgs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %num, ptr %num_msgs, align 4
  %offload_enabled.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 24
  %7 = ptrtoint ptr %offload_enabled.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %offload_enabled.i, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %do.end12.if.else_crit_edge, label %if.end.i

do.end12.if.else_crit_edge:                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.end.i:                                         ; preds = %do.end12
  %9 = zext i32 %num to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %num, label %if.end.i.if.else_crit_edge [
    i32 1, label %land.lhs.true.i
    i32 2, label %land.lhs.true5.i
  ]

if.end.i.if.else_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true.i:                                  ; preds = %if.end.i
  %len.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %10 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %len.i.i, align 4
  %12 = add i16 %11, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %12)
  %13 = icmp ult i16 %12, 8
  br i1 %13, label %land.lhs.true.i50, label %land.lhs.true.i.if.else_crit_edge

land.lhs.true.i.if.else_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true5.i:                                 ; preds = %if.end.i
  %len.i27.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %14 = ptrtoint ptr %len.i27.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %len.i27.i, align 4
  %16 = add i16 %15, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %16)
  %17 = icmp ult i16 %16, 8
  br i1 %17, label %land.lhs.true7.i, label %land.lhs.true5.i.if.else_crit_edge

land.lhs.true5.i.if.else_crit_edge:               ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true7.i:                                 ; preds = %land.lhs.true5.i
  %len.i28.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 1, i32 2
  %18 = ptrtoint ptr %len.i28.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %len.i28.i, align 4
  %20 = add i16 %19, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %20)
  %21 = icmp ult i16 %20, 8
  br i1 %21, label %land.lhs.true9.i, label %land.lhs.true7.i.if.else_crit_edge

land.lhs.true7.i.if.else_crit_edge:               ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true9.i:                                 ; preds = %land.lhs.true7.i
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %flags.i, align 2
  %24 = and i16 %23, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool10.not.i = icmp eq i16 %24, 0
  br i1 %tobool10.not.i, label %land.lhs.true11.i, label %land.lhs.true9.i.if.else_crit_edge

land.lhs.true9.i.if.else_crit_edge:               ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true11.i:                                ; preds = %land.lhs.true9.i
  %flags13.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 1, i32 1
  %25 = ptrtoint ptr %flags13.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %flags13.i, align 2
  %27 = and i16 %26, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool16.not.i = icmp eq i16 %27, 0
  br i1 %tobool16.not.i, label %land.lhs.true11.i.if.else_crit_edge, label %if.then45.i

land.lhs.true11.i.if.else_crit_edge:              ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true.i50:                                ; preds = %land.lhs.true.i
  %lock.i65 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 21
  %call3.i66 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i65) #9
  %28 = ptrtoint ptr %msgs to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %msgs, align 4
  %conv6.i67 = zext i16 %29 to i32
  %shl.i68 = shl nuw nsw i32 %conv6.i67, 2
  %flags8.i69 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %30 = ptrtoint ptr %flags8.i69 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %flags8.i69, align 2
  %32 = and i16 %31, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool.not.i4970 = icmp eq i16 %32, 0
  %spec.select.v.i71 = select i1 %tobool.not.i4970, i32 524288, i32 528384
  %spec.select.i72 = or i32 %spec.select.v.i71, %shl.i68
  %33 = and i16 %31, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool17.not.i = icmp eq i16 %33, 0
  %34 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %len.i.i, align 4
  %conv21.i = zext i16 %35 to i32
  br i1 %tobool17.not.i, label %if.then18.i, label %if.then33.i

if.then18.i:                                      ; preds = %land.lhs.true.i50
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = shl nuw nsw i32 %conv21.i, 13
  %or23.i = add nsw i32 %sub.i, -8191
  %or24.i = or i32 %or23.i, %spec.select.i72
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i.i)
  %38 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %buf.i.i, align 4
  %buf.i.i.4.buf.i.i.4.buf.i.4.buf.i.4.buf.4.buf.4.buf.4..sroa_idx = getelementptr inbounds i8, ptr %buf.i.i, i32 4
  %39 = ptrtoint ptr %buf.i.i.4.buf.i.i.4.buf.i.4.buf.i.4.buf.4.buf.4.buf.4..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %buf.i.i.4.buf.i.i.4.buf.i.4.buf.i.4.buf.4.buf.4.buf.4..sroa_idx, align 4
  %buf1.i.i = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 3
  %40 = ptrtoint ptr %buf1.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buf1.i.i, align 4
  %len.i.i51 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 2
  %42 = ptrtoint ptr %len.i.i51 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %len.i.i51, align 4
  %conv.i.i = zext i16 %43 to i32
  %44 = call ptr @memcpy(ptr %buf.i.i, ptr %41, i32 %conv.i.i)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void @arm_heavy_mb() #9
  %45 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %buf.i.i.0.buf.i.i.0.buf.i.0.buf.i.0.buf.0.buf.0.buf.0..i.i = load i32, ptr %buf.i.i, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %buf.i.i.0.buf.i.i.0.buf.i.0.buf.i.0.buf.0.buf.0.buf.0..i.i) #9
  %reg_base.i.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 7
  %47 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %48, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %46) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  tail call void @arm_heavy_mb() #9
  %49 = ptrtoint ptr %buf.i.i.4.buf.i.i.4.buf.i.4.buf.i.4.buf.4.buf.4.buf.4..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %49)
  %buf.i.i.4.buf.i.i.4.buf.i.4.buf.i.4.buf.4.buf.4.buf.4..i.i = load i32, ptr %buf.i.i.4.buf.i.i.4.buf.i.4.buf.i.4.buf.4.buf.4.buf.4..sroa_idx, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %buf.i.i.4.buf.i.i.4.buf.i.4.buf.i.4.buf.4.buf.4.buf.4..i.i) #9
  %51 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %52, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i, i32 %50) #9, !srcloc !94
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i.i)
  br label %mv64xxx_i2c_offload_xfer.exit

if.then33.i:                                      ; preds = %land.lhs.true.i50
  call void @__sanitizer_cov_trace_pc() #11
  %sub38.i = shl nuw i32 %conv21.i, 16
  %or40.i = add i32 %sub38.i, -65534
  %or41.i = or i32 %or40.i, %spec.select.i72
  br label %mv64xxx_i2c_offload_xfer.exit

if.then45.i:                                      ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #11
  %lock.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 21
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %53 = ptrtoint ptr %msgs to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %msgs, align 4
  %conv6.i = zext i16 %54 to i32
  %shl.i = shl nuw nsw i32 %conv6.i, 2
  %55 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %flags.i, align 2
  %57 = and i16 %56, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool.not.i49 = icmp eq i16 %57, 0
  %spec.select.v.i = select i1 %tobool.not.i49, i32 524288, i32 528384
  %58 = ptrtoint ptr %len.i27.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %len.i27.i, align 4
  %conv48.i = zext i16 %59 to i32
  %60 = ptrtoint ptr %len.i28.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %len.i28.i, align 4
  %conv52.i = zext i16 %61 to i32
  %sub49.i = shl nuw nsw i32 %conv48.i, 13
  %shl54.i = add nsw i32 %sub49.i, -8192
  %sub53.i = shl nuw i32 %conv52.i, 16
  %shl56.i = add i32 %sub53.i, -65536
  %spec.select.i = or i32 %shl.i, %spec.select.v.i
  %or55.i = or i32 %spec.select.i, %shl54.i
  %or58.i = or i32 %or55.i, %shl56.i
  %or59.i = or i32 %or58.i, 1048579
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i89.i)
  %64 = ptrtoint ptr %buf.i89.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -1, ptr %buf.i89.i, align 4
  %buf.i89.i.4.buf.i89.i.4.buf.i89.4.buf.i89.4.buf.4.buf.4.buf.4..sroa_idx = getelementptr inbounds i8, ptr %buf.i89.i, i32 4
  %65 = ptrtoint ptr %buf.i89.i.4.buf.i89.i.4.buf.i89.4.buf.i89.4.buf.4.buf.4.buf.4..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %buf.i89.i.4.buf.i89.i.4.buf.i89.4.buf.i89.4.buf.4.buf.4.buf.4..sroa_idx, align 4
  %buf1.i91.i = getelementptr inbounds %struct.i2c_msg, ptr %63, i32 0, i32 3
  %66 = ptrtoint ptr %buf1.i91.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %buf1.i91.i, align 4
  %len.i92.i = getelementptr inbounds %struct.i2c_msg, ptr %63, i32 0, i32 2
  %68 = ptrtoint ptr %len.i92.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %len.i92.i, align 4
  %conv.i93.i = zext i16 %69 to i32
  %70 = call ptr @memcpy(ptr %buf.i89.i, ptr %67, i32 %conv.i93.i)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void @arm_heavy_mb() #9
  %71 = ptrtoint ptr %buf.i89.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %buf.i89.i.0.buf.i89.i.0.buf.i89.0.buf.i89.0.buf.0.buf.0.buf.0..i94.i = load i32, ptr %buf.i89.i, align 4
  %72 = tail call i32 @llvm.bswap.i32(i32 %buf.i89.i.0.buf.i89.i.0.buf.i89.0.buf.i89.0.buf.0.buf.0.buf.0..i94.i) #9
  %reg_base.i95.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 7
  %73 = ptrtoint ptr %reg_base.i95.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %reg_base.i95.i, align 4
  %add.ptr.i96.i = getelementptr i8, ptr %74, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i96.i, i32 %72) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  tail call void @arm_heavy_mb() #9
  %75 = ptrtoint ptr %buf.i89.i.4.buf.i89.i.4.buf.i89.4.buf.i89.4.buf.4.buf.4.buf.4..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %75)
  %buf.i89.i.4.buf.i89.i.4.buf.i89.4.buf.i89.4.buf.4.buf.4.buf.4..i97.i = load i32, ptr %buf.i89.i.4.buf.i89.i.4.buf.i89.4.buf.i89.4.buf.4.buf.4.buf.4..sroa_idx, align 4
  %76 = tail call i32 @llvm.bswap.i32(i32 %buf.i89.i.4.buf.i89.i.4.buf.i89.4.buf.i89.4.buf.4.buf.4.buf.4..i97.i) #9
  %77 = ptrtoint ptr %reg_base.i95.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %reg_base.i95.i, align 4
  %add.ptr7.i98.i = getelementptr i8, ptr %78, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i98.i, i32 %76) #9, !srcloc !94
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i89.i)
  br label %mv64xxx_i2c_offload_xfer.exit

mv64xxx_i2c_offload_xfer.exit:                    ; preds = %if.then45.i, %if.then33.i, %if.then18.i
  %call3.i76 = phi i32 [ %call3.i66, %if.then33.i ], [ %call3.i, %if.then45.i ], [ %call3.i66, %if.then18.i ]
  %lock.i74 = phi ptr [ %lock.i65, %if.then33.i ], [ %lock.i, %if.then45.i ], [ %lock.i65, %if.then18.i ]
  %ctrl_reg.1.i = phi i32 [ %or41.i, %if.then33.i ], [ %or59.i, %if.then45.i ], [ %or24.i, %if.then18.i ]
  %block.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 14
  %79 = ptrtoint ptr %block.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 1, ptr %block.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  tail call void @arm_heavy_mb() #9
  %80 = tail call i32 @llvm.bswap.i32(i32 %ctrl_reg.1.i) #9
  %reg_base.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 7
  %81 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %82, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %80) #9, !srcloc !94
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i74, i32 noundef %call3.i76) #9
  tail call fastcc void @mv64xxx_i2c_wait_for_completion(ptr noundef %1) #9
  %rc.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 15
  br label %if.end19

if.else:                                          ; preds = %land.lhs.true11.i.if.else_crit_edge, %land.lhs.true9.i.if.else_crit_edge, %land.lhs.true7.i.if.else_crit_edge, %land.lhs.true5.i.if.else_crit_edge, %land.lhs.true.i.if.else_crit_edge, %if.end.i.if.else_crit_edge, %do.end12.if.else_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num)
  %cmp17 = icmp eq i32 %num, 1
  %conv = zext i1 %cmp17 to i32
  %lock.i52 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 21
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i52) #9
  %state.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 3
  %83 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 2, ptr %state.i, align 4
  %send_stop.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 13
  %84 = ptrtoint ptr %send_stop.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %conv, ptr %send_stop.i, align 8
  %block.i53 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 14
  %85 = ptrtoint ptr %block.i53 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 1, ptr %block.i53, align 4
  %86 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %1, align 8
  %msg.i.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 22
  %88 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %87, ptr %msg.i.i, align 4
  %byte_posn.i.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 12
  %89 = ptrtoint ptr %byte_posn.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %byte_posn.i.i, align 4
  %len.i.i54 = getelementptr inbounds %struct.i2c_msg, ptr %87, i32 0, i32 2
  %90 = ptrtoint ptr %len.i.i54 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %len.i.i54, align 4
  %conv.i.i55 = zext i16 %91 to i32
  %bytes_left.i.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 11
  %92 = ptrtoint ptr %bytes_left.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %conv.i.i55, ptr %bytes_left.i.i, align 8
  %aborting.i.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 5
  %93 = ptrtoint ptr %aborting.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %aborting.i.i, align 4
  %rc.i.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 15
  %94 = ptrtoint ptr %rc.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %rc.i.i, align 8
  %cntl_bits.i.i.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 6
  %95 = ptrtoint ptr %cntl_bits.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 196, ptr %cntl_bits.i.i.i, align 8
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %87, i32 0, i32 1
  %96 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %flags.i.i.i, align 2
  %98 = and i16 %97, 1
  %99 = and i16 %97, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %99)
  %tobool4.not.i.i.i = icmp eq i16 %99, 0
  %100 = ptrtoint ptr %87 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %87, align 4
  br i1 %tobool4.not.i.i.i, label %if.else.i.i.i, label %if.then5.i.i.i

if.then5.i.i.i:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %102 = lshr i16 %101, 7
  %103 = and i16 %102, 6
  %104 = or i16 %98, %103
  %or828.i.i.i = or i16 %104, 240
  %or8.i.i.i = zext i16 %or828.i.i.i to i32
  %addr1.i.i.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 9
  %105 = ptrtoint ptr %addr1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %or8.i.i.i, ptr %addr1.i.i.i, align 8
  %106 = ptrtoint ptr %87 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %87, align 4
  %108 = and i16 %107, 255
  %and11.i.i.i = zext i16 %108 to i32
  br label %mv64xxx_i2c_execute_msg.exit

if.else.i.i.i:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %109 = shl i16 %101, 1
  %110 = and i16 %109, 254
  %or1529.i.i.i = or i16 %110, %98
  %or15.i.i.i = zext i16 %or1529.i.i.i to i32
  %addr116.i.i.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 9
  %111 = ptrtoint ptr %addr116.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %or15.i.i.i, ptr %addr116.i.i.i, align 8
  br label %mv64xxx_i2c_execute_msg.exit

mv64xxx_i2c_execute_msg.exit:                     ; preds = %if.else.i.i.i, %if.then5.i.i.i
  %and11.sink.i.i.i = phi i32 [ 0, %if.else.i.i.i ], [ %and11.i.i.i, %if.then5.i.i.i ]
  %112 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 10
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %and11.sink.i.i.i, ptr %112, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %114 = ptrtoint ptr %cntl_bits.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %cntl_bits.i.i.i, align 8
  %or.i.i = or i32 %115, 32
  %116 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #9
  %reg_base.i.i56 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 7
  %117 = ptrtoint ptr %reg_base.i.i56 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %reg_base.i.i56, align 4
  %control.i.i = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %1, i32 0, i32 8, i32 3
  %119 = ptrtoint ptr %control.i.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %control.i.i, align 1
  %conv3.i.i = zext i8 %120 to i32
  %add.ptr.i.i57 = getelementptr i8, ptr %118, i32 %conv3.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i57, i32 %116) #9, !srcloc !94
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i52, i32 noundef %call2.i) #9
  tail call fastcc void @mv64xxx_i2c_wait_for_completion(ptr noundef %1) #9
  br label %if.end19

if.end19:                                         ; preds = %mv64xxx_i2c_execute_msg.exit, %mv64xxx_i2c_offload_xfer.exit
  %rc.0.in = phi ptr [ %rc.i, %mv64xxx_i2c_offload_xfer.exit ], [ %rc.i.i, %mv64xxx_i2c_execute_msg.exit ]
  %121 = ptrtoint ptr %rc.0.in to i32
  call void @__asan_load4_noabort(i32 %121)
  %rc.0 = load i32, ptr %rc.0.in, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %cmp20 = icmp slt i32 %rc.0, 0
  %spec.select = select i1 %cmp20, i32 %rc.0, i32 %num
  %122 = ptrtoint ptr %num_msgs to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %num_msgs, align 4
  %123 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr null, ptr %1, align 8
  %call.i58 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 12, i32 22
  %124 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %124)
  store volatile i64 %call.i58, ptr %last_busy.i, align 8
  %call.i59 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 13) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end19 ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mv64xxx_i2c_functionality(ptr nocapture noundef readnone %adap) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592715
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mv64xxx_i2c_wait_for_completion(ptr noundef %drv_data) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry93 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %drv_data, i32 0, i32 23
  %timeout = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %drv_data, i32 0, i32 23, i32 7
  %0 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timeout, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.8, i32 noundef 547) #9
  %block = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %drv_data, i32 0, i32 14
  %2 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool5.not = icmp eq i32 %1, 0
  %4 = select i1 %tobool.not, i1 %tobool5.not, i1 false
  %__ret.0 = select i1 %4, i32 1, i32 %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %tobool7.not = icmp eq i32 %__ret.0, 0
  %5 = select i1 %tobool.not, i1 true, i1 %tobool7.not
  br i1 %5, label %entry.if.end37_crit_edge, label %if.then10

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then10:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %6 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  %7 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %timeout, align 4
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %waitq = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %drv_data, i32 0, i32 20
  %call206 = call i32 @prepare_to_wait_event(ptr noundef %waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #9
  %9 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool16.not207 = icmp eq i32 %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool21.not208 = icmp eq i32 %8, 0
  %11 = select i1 %tobool16.not207, i1 %tobool21.not208, i1 false
  %__ret11.1209 = select i1 %11, i32 1, i32 %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret11.1209)
  %tobool27.not210 = icmp eq i32 %__ret11.1209, 0
  %12 = select i1 %tobool16.not207, i1 true, i1 %tobool27.not210
  br i1 %12, label %if.then10.for.end_crit_edge, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  br label %cleanup

if.then10.for.end_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then10.cleanup_crit_edge
  %__ret11.1211 = phi i32 [ %__ret11.1, %cleanup.cleanup_crit_edge ], [ %__ret11.1209, %if.then10.cleanup_crit_edge ]
  %call34 = call i32 @schedule_timeout(i32 noundef %__ret11.1211) #9
  %call = call i32 @prepare_to_wait_event(ptr noundef %waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #9
  %13 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool16.not = icmp eq i32 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool21.not = icmp eq i32 %call34, 0
  %15 = select i1 %tobool16.not, i1 %tobool21.not, i1 false
  %__ret11.1 = select i1 %15, i32 1, i32 %call34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret11.1)
  %tobool27.not = icmp eq i32 %__ret11.1, 0
  %16 = select i1 %tobool16.not, i1 true, i1 %tobool27.not
  br i1 %16, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then10.for.end_crit_edge
  %__ret11.1.lcssa = phi i32 [ %__ret11.1209, %if.then10.for.end_crit_edge ], [ %__ret11.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %waitq, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %if.end37

if.end37:                                         ; preds = %for.end, %entry.if.end37_crit_edge
  %__ret.1 = phi i32 [ %__ret.0, %entry.if.end37_crit_edge ], [ %__ret11.1.lcssa, %for.end ]
  %lock = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %drv_data, i32 0, i32 21
  %call43 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1)
  %tobool48.not = icmp eq i32 %__ret.1, 0
  br i1 %tobool48.not, label %if.end37.land.lhs.true58_crit_edge, label %if.else

if.end37.land.lhs.true58_crit_edge:               ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true58

if.else:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1)
  %cmp50 = icmp slt i32 %__ret.1, 0
  br i1 %cmp50, label %if.else.land.lhs.true58_crit_edge, label %if.else.if.else147_crit_edge

if.else.if.else147_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else147

if.else.land.lhs.true58_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true58

land.lhs.true58:                                  ; preds = %if.else.land.lhs.true58_crit_edge, %if.end37.land.lhs.true58_crit_edge
  %.sink = phi i32 [ -110, %if.end37.land.lhs.true58_crit_edge ], [ %__ret.1, %if.else.land.lhs.true58_crit_edge ]
  %rc = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %drv_data, i32 0, i32 15
  %17 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink, ptr %rc, align 8
  %18 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool60.not = icmp eq i32 %19, 0
  br i1 %tobool60.not, label %land.lhs.true58.if.else147_crit_edge, label %if.then61

land.lhs.true58.if.else147_crit_edge:             ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else147

if.then61:                                        ; preds = %land.lhs.true58
  %aborting = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %drv_data, i32 0, i32 5
  %20 = ptrtoint ptr %aborting to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %aborting, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call43) #9
  %21 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %timeout, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.8, i32 noundef 563) #9
  %23 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool74.not = icmp eq i32 %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool80.not = icmp eq i32 %22, 0
  %25 = select i1 %tobool74.not, i1 %tobool80.not, i1 false
  %__ret63.0 = select i1 %25, i32 1, i32 %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret63.0)
  %tobool87.not = icmp eq i32 %__ret63.0, 0
  %26 = select i1 %tobool74.not, i1 true, i1 %tobool87.not
  br i1 %26, label %if.then61.if.end131_crit_edge, label %if.then92

if.then61.if.end131_crit_edge:                    ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end131

if.then92:                                        ; preds = %if.then61
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry93) #9
  %27 = call ptr @memset(ptr %__wq_entry93, i32 255, i32 20)
  %28 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %timeout, align 4
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry93, i32 noundef 0) #9
  %waitq99 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %drv_data, i32 0, i32 20
  %call100213 = call i32 @prepare_to_wait_event(ptr noundef %waitq99, ptr noundef nonnull %__wq_entry93, i32 noundef 2) #9
  %30 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool103.not214 = icmp eq i32 %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool109.not215 = icmp eq i32 %29, 0
  %32 = select i1 %tobool103.not214, i1 %tobool109.not215, i1 false
  %__ret94.1216 = select i1 %32, i32 1, i32 %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret94.1216)
  %tobool116.not217 = icmp eq i32 %__ret94.1216, 0
  %33 = select i1 %tobool103.not214, i1 true, i1 %tobool116.not217
  br i1 %33, label %if.then92.for.end127_crit_edge, label %if.then92.cleanup124_crit_edge

if.then92.cleanup124_crit_edge:                   ; preds = %if.then92
  br label %cleanup124

if.then92.for.end127_crit_edge:                   ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end127

cleanup124:                                       ; preds = %cleanup124.cleanup124_crit_edge, %if.then92.cleanup124_crit_edge
  %__ret94.1218 = phi i32 [ %__ret94.1, %cleanup124.cleanup124_crit_edge ], [ %__ret94.1216, %if.then92.cleanup124_crit_edge ]
  %call123 = call i32 @schedule_timeout(i32 noundef %__ret94.1218) #9
  %call100 = call i32 @prepare_to_wait_event(ptr noundef %waitq99, ptr noundef nonnull %__wq_entry93, i32 noundef 2) #9
  %34 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool103.not = icmp eq i32 %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool109.not = icmp eq i32 %call123, 0
  %36 = select i1 %tobool103.not, i1 %tobool109.not, i1 false
  %__ret94.1 = select i1 %36, i32 1, i32 %call123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret94.1)
  %tobool116.not = icmp eq i32 %__ret94.1, 0
  %37 = select i1 %tobool103.not, i1 true, i1 %tobool116.not
  br i1 %37, label %cleanup124.for.end127_crit_edge, label %cleanup124.cleanup124_crit_edge

cleanup124.cleanup124_crit_edge:                  ; preds = %cleanup124
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup124

cleanup124.for.end127_crit_edge:                  ; preds = %cleanup124
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end127

for.end127:                                       ; preds = %cleanup124.for.end127_crit_edge, %if.then92.for.end127_crit_edge
  %__ret94.1.lcssa = phi i32 [ %__ret94.1216, %if.then92.for.end127_crit_edge ], [ %__ret94.1, %cleanup124.for.end127_crit_edge ]
  call void @finish_wait(ptr noundef %waitq99, ptr noundef nonnull %__wq_entry93) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry93) #9
  br label %if.end131

if.end131:                                        ; preds = %for.end127, %if.then61.if.end131_crit_edge
  %__ret63.1 = phi i32 [ %__ret63.0, %if.then61.if.end131_crit_edge ], [ %__ret94.1.lcssa, %for.end127 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %__ret63.1)
  %cmp133 = icmp slt i32 %__ret63.1, 1
  br i1 %cmp133, label %land.lhs.true135, label %if.end131.if.end149_crit_edge

if.end131.if.end149_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end149

land.lhs.true135:                                 ; preds = %if.end131
  %38 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool137.not = icmp eq i32 %39, 0
  br i1 %tobool137.not, label %land.lhs.true135.if.end149_crit_edge, label %if.then138

land.lhs.true135.if.end149_crit_edge:             ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end149

if.then138:                                       ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #11
  %state = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %drv_data, i32 0, i32 3
  %40 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %state, align 4
  %dev = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %drv_data, i32 0, i32 23, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %39, i32 noundef %__ret63.1) #12
  call fastcc void @mv64xxx_i2c_hw_init(ptr noundef %drv_data)
  %call145 = call i32 @i2c_recover_bus(ptr noundef %adapter) #9
  br label %if.end149

if.else147:                                       ; preds = %land.lhs.true58.if.else147_crit_edge, %if.else.if.else147_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call43) #9
  br label %if.end149

if.end149:                                        ; preds = %if.else147, %if.then138, %land.lhs.true135.if.end149_crit_edge, %if.end131.if.end149_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

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
define internal fastcc void @mv64xxx_i2c_hw_init(ptr nocapture noundef %drv_data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %offload_enabled = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %drv_data, i32 0, i32 24
  %0 = ptrtoint ptr %offload_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %offload_enabled, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.do.body13_crit_edge, label %do.body

entry.do.body13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body13

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %reg_base = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %drv_data, i32 0, i32 7
  %2 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !123
  tail call void @arm_heavy_mb() #9
  %4 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 0) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !124
  tail call void @arm_heavy_mb() #9
  %6 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base, align 4
  %add.ptr8 = getelementptr i8, ptr %7, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 0) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !125
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_base, align 4
  %add.ptr12 = getelementptr i8, ptr %9, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 0) #9, !srcloc !94
  br label %do.body13

do.body13:                                        ; preds = %do.body, %entry.do.body13_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !126
  tail call void @arm_heavy_mb() #9
  %reg_base15 = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %drv_data, i32 0, i32 7
  %10 = ptrtoint ptr %reg_base15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_base15, align 4
  %reg_offsets = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %drv_data, i32 0, i32 8
  %soft_reset = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %drv_data, i32 0, i32 8, i32 6
  %12 = ptrtoint ptr %soft_reset to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %soft_reset, align 2
  %conv = zext i8 %13 to i32
  %add.ptr16 = getelementptr i8, ptr %11, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 0) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  tail call void @arm_heavy_mb() #9
  %freq_m = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %drv_data, i32 0, i32 16
  %14 = ptrtoint ptr %freq_m to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %freq_m, align 4
  %and = shl i32 %15, 3
  %shl = and i32 %and, 120
  %freq_n = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %drv_data, i32 0, i32 17
  %16 = ptrtoint ptr %freq_n to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %freq_n, align 8
  %and19 = and i32 %17, 7
  %or = or i32 %shl, %and19
  %18 = shl nuw nsw i32 %or, 24
  %19 = ptrtoint ptr %reg_base15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_base15, align 4
  %clock = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %drv_data, i32 0, i32 8, i32 5
  %21 = ptrtoint ptr %clock to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %clock, align 1
  %conv22 = zext i8 %22 to i32
  %add.ptr23 = getelementptr i8, ptr %20, i32 %conv22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %18) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !128
  tail call void @arm_heavy_mb() #9
  %23 = ptrtoint ptr %reg_base15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_base15, align 4
  %25 = ptrtoint ptr %reg_offsets to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %reg_offsets, align 8
  %conv28 = zext i8 %26 to i32
  %add.ptr29 = getelementptr i8, ptr %24, i32 %conv28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 0) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !129
  tail call void @arm_heavy_mb() #9
  %27 = ptrtoint ptr %reg_base15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_base15, align 4
  %ext_addr = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %drv_data, i32 0, i32 8, i32 1
  %29 = ptrtoint ptr %ext_addr to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ext_addr, align 1
  %conv34 = zext i8 %30 to i32
  %add.ptr35 = getelementptr i8, ptr %28, i32 %conv34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 0) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !130
  tail call void @arm_heavy_mb() #9
  %31 = ptrtoint ptr %reg_base15 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg_base15, align 4
  %control = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %drv_data, i32 0, i32 8, i32 3
  %33 = ptrtoint ptr %control to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %control, align 1
  %conv40 = zext i8 %34 to i32
  %add.ptr41 = getelementptr i8, ptr %32, i32 %conv40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 1342177280) #9, !srcloc !94
  %errata_delay = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %drv_data, i32 0, i32 25
  %35 = ptrtoint ptr %errata_delay to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %errata_delay, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool42.not = icmp eq i8 %36, 0
  br i1 %tobool42.not, label %do.body13.if.end44_crit_edge, label %if.then43

do.body13.if.end44_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then43:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 1073740) #9
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %do.body13.if.end44_crit_edge
  %state = getelementptr inbounds %struct.mv64xxx_i2c_data, ptr %drv_data, i32 0, i32 3
  %38 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %state, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_recover_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !51, !52, !53, !54, !56, !58, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !71, !73, !75}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @__initcall__kmod_i2c_mv64xxx__289_1076_mv64xxx_i2c_driver_init6, !1, !"__initcall__kmod_i2c_mv64xxx__289_1076_mv64xxx_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-mv64xxx.c", i32 1076, i32 1}
!2 = !{ptr @__exitcall_mv64xxx_i2c_driver_exit, !1, !"__exitcall_mv64xxx_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-mv64xxx.c", i32 1078, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-mv64xxx.c", i32 1079, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-mv64xxx.c", i32 1080, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-mv64xxx.c", i32 1070, i32 11}
!12 = !{ptr @mv64xxx_i2c_driver, !13, !"mv64xxx_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-mv64xxx.c", i32 1065, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-mv64xxx.c", i32 952, i32 34}
!16 = !{ptr @mv64xxx_i2c_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/i2c/busses/i2c-mv64xxx.c", i32 955, i32 2}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @mv64xxx_i2c_probe.__key.3, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/i2c/busses/i2c-mv64xxx.c", i32 956, i32 2}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/i2c/busses/i2c-mv64xxx.c", i32 966, i32 45}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/i2c/busses/i2c-mv64xxx.c", i32 1014, i32 3}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @mv64xxx_i2c_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @mv64xxx_i2c_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/i2c/busses/i2c-mv64xxx.c", i32 1019, i32 3}
!34 = !{ptr @mv64xxx_i2c_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @mv64xxx_i2c_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @mv64xxx_i2c_regs_mv64xxx, !37, !"mv64xxx_i2c_regs_mv64xxx", i1 false, i1 false}
!37 = !{!"../drivers/i2c/busses/i2c-mv64xxx.c", i32 155, i32 32}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/i2c/busses/i2c-mv64xxx.c", i32 826, i32 31}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/i2c/busses/i2c-mv64xxx.c", i32 829, i32 34}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/i2c/busses/i2c-mv64xxx.c", i32 830, i32 34}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/i2c/busses/i2c-mv64xxx.c", i32 859, i32 34}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/i2c/busses/i2c-mv64xxx.c", i32 866, i32 34}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/i2c/busses/i2c-mv64xxx.c", i32 897, i32 3}
!50 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @mv64xxx_i2c_init_recovery_info._entry, !49, !"_entry", i1 false, i1 false}
!53 = !{ptr @mv64xxx_i2c_init_recovery_info._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @mv64xxx_i2c_algo, !55, !"mv64xxx_i2c_algo", i1 false, i1 false}
!55 = !{!"../drivers/i2c/busses/i2c-mv64xxx.c", i32 750, i32 35}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/i2c/busses/i2c-mv64xxx.c", i32 567, i32 4}
!58 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @mv64xxx_i2c_wait_for_completion._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @mv64xxx_i2c_wait_for_completion._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/i2c/busses/i2c-mv64xxx.c", i32 328, i32 3}
!63 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @mv64xxx_i2c_fsm._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @mv64xxx_i2c_fsm._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/i2c/busses/i2c-mv64xxx.c", i32 424, i32 3}
!68 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @mv64xxx_i2c_do_action._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @mv64xxx_i2c_do_action._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @mv64xxx_i2c_of_match_table, !72, !"mv64xxx_i2c_of_match_table", i1 false, i1 false}
!72 = !{!"../drivers/i2c/busses/i2c-mv64xxx.c", i32 762, i32 34}
!73 = !{ptr @mv64xxx_i2c_regs_sun4i, !74, !"mv64xxx_i2c_regs_sun4i", i1 false, i1 false}
!74 = !{!"../drivers/i2c/busses/i2c-mv64xxx.c", i32 165, i32 32}
!75 = !{ptr @mv64xxx_i2c_pm_ops, !76, !"mv64xxx_i2c_pm_ops", i1 false, i1 false}
!76 = !{!"../drivers/i2c/busses/i2c-mv64xxx.c", i32 1058, i32 32}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{!"auto-init"}
!87 = !{i8 0, i8 2}
!88 = !{i64 6851662}
!89 = !{i64 2155730460}
!90 = !{i64 2155730983}
!91 = !{i64 2155729414}
!92 = !{i64 2155729937}
!93 = !{i64 2155731313}
!94 = !{i64 6851244}
!95 = !{i64 2155731715}
!96 = !{i64 2155732632}
!97 = !{i64 2155733328}
!98 = !{!"branch_weights", i32 1, i32 2000}
!99 = !{i64 2155717446, i64 2155717943, i64 2155717483, i64 2155717539, i64 2155717573, i64 2155717597, i64 2155717638, i64 2155717659, i64 2155717687, i64 2155717721}
!100 = !{i64 2155716716}
!101 = !{i64 2155719502}
!102 = !{i64 2155720014}
!103 = !{i64 2155720518}
!104 = !{i64 2155721030}
!105 = !{i64 2155721534}
!106 = !{i64 2155722072}
!107 = !{i64 2155722654}
!108 = !{i64 2155723516}
!109 = !{i64 2155723779}
!110 = !{i64 2155724641}
!111 = !{i64 2155725098}
!112 = !{i64 2155728423}
!113 = !{i64 2155733703}
!114 = !{i64 2148237279}
!115 = !{i64 722102, i64 722127, i64 722149, i64 722165, i64 722177, i64 722197, i64 722221, i64 722237, i64 722249}
!116 = !{i64 2148237467}
!117 = !{!"branch_weights", i32 2000, i32 1}
!118 = !{i64 2155744082, i64 2155744579, i64 2155744119, i64 2155744175, i64 2155744209, i64 2155744233, i64 2155744274, i64 2155744295, i64 2155744323, i64 2155744357}
!119 = !{i64 2155740939}
!120 = !{i64 2155741361}
!121 = !{i64 2155742762}
!122 = !{i64 2155708884}
!123 = !{i64 2155709286}
!124 = !{i64 2155709688}
!125 = !{i64 2155710090}
!126 = !{i64 2155710515}
!127 = !{i64 2155711087}
!128 = !{i64 2155711706}
!129 = !{i64 2155712151}
!130 = !{i64 2155712819}
