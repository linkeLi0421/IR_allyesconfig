; ModuleID = '/llk/IR_all_yes/drivers/power/supply/88pm860x_charger.c_pt.bc'
source_filename = "../drivers/power/supply/88pm860x_charger.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.pm860x_charger_info = type { ptr, ptr, ptr, ptr, ptr, %struct.mutex, i32, [7 x i32], i8 }
%struct.pm860x_chip = type { ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr, ptr, i32, i32, i16, i32, i32, i32, i32, i8, i8, i32 }
%union.power_supply_propval = type { i32 }

@__initcall__kmod_88pm860x_charger__212_754_pm860x_charger_driver_init6 = internal global ptr @pm860x_charger_driver_init, section ".initcall6.init", align 4
@pm860x_charger_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pm860x_charger_probe, ptr @pm860x_charger_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pm860x_charger_driver_exit = internal global ptr @pm860x_charger_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description213 = internal constant [61 x i8] c"88pm860x_charger.description=Marvell 88PM860x Charger driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file214 = internal constant [60 x i8] c"88pm860x_charger.file=drivers/power/supply/88pm860x_charger\00", section ".modinfo", align 1
@__UNIQUE_ID_license215 = internal constant [29 x i8] c"88pm860x_charger.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"88pm860x-charger\00", [47 x i8] zeroinitializer }, align 32
@pm860x_charger_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 692, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Missed I2C address of 88PM8606!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pm860x_charger_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/power/supply/88pm860x_charger.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pm860x_charger_probe._entry_ptr = internal global ptr @pm860x_charger_probe._entry, section ".printk_index", align 4
@pm860x_charger_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&info->lock\00", [20 x i8] zeroinitializer }, align 32
@pm860x_supplied_to = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.14], [28 x i8] zeroinitializer }, align 32
@pm860x_charger_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.15, i32 4, ptr null, i32 0, ptr @pm860x_usb_props, i32 2, ptr @pm860x_usb_get_prop, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@pm860x_charger_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 722, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to request IRQ: #%d: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@pm860x_charger_probe._entry_ptr.9 = internal global ptr @pm860x_charger_probe._entry.7, section ".printk_index", align 4
@set_vchg_threshold.__UNIQUE_ID_ddebug192 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.3, ptr @.str.12, i8 0, i8 36, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"88pm860x_charger\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"set_vchg_threshold\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"VCHG_LOWTH:%dmv, 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@set_vchg_threshold.__UNIQUE_ID_ddebug193 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.3, ptr @.str.13, i8 0, i8 38, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"VCHG_HIGHTH:%dmv, 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"battery-monitor\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"usb\00", [28 x i8] zeroinitializer }, align 32
@pm860x_usb_props = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 4], [24 x i8] zeroinitializer }, align 32
@__const.set_charging_fsm.fsm_state = private unnamed_addr constant [4 x [16 x i8]] [[16 x i8] c"init\00\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"discharge\00\00\00\00\00\00\00", [16 x i8] c"precharge\00\00\00\00\00\00\00", [16 x i8] c"fastcharge\00\00\00\00\00\00"], align 1
@set_charging_fsm.__UNIQUE_ID_ddebug200 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.16, ptr @.str.3, ptr @.str.17, i8 0, i8 79, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"set_charging_fsm\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Entering FSM:%s, Charger:%s, Battery:%s, Allowed:%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"online\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"N/A\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"present\00", [24 x i8] zeroinitializer }, align 32
@set_charging_fsm.__UNIQUE_ID_ddebug201 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.16, ptr @.str.3, ptr @.str.21, i8 0, i8 79, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"set_charging_fsm:vbatt:%d(mV)\0A\00", [33 x i8] zeroinitializer }, align 32
@set_charging_fsm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.16, ptr @.str.3, i32 383, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"FSM meets wrong state:%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@set_charging_fsm._entry_ptr = internal global ptr @set_charging_fsm._entry, section ".printk_index", align 4
@set_charging_fsm.__UNIQUE_ID_ddebug202 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.16, ptr @.str.3, ptr @.str.24, i8 0, i8 97, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Out FSM:%s, Charger:%s, Battery:%s, Allowed:%d\0A\00", [48 x i8] zeroinitializer }, align 32
@start_precharge.__UNIQUE_ID_ddebug196 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.25, ptr @.str.3, ptr @.str.26, i8 0, i8 45, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"start_precharge\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Start Pre-charging!\0A\00", [43 x i8] zeroinitializer }, align 32
@stop_charge.__UNIQUE_ID_ddebug198 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.27, ptr @.str.3, ptr @.str.28, i8 0, i8 68, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stop_charge\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Stop charging!\0A\00", [16 x i8] zeroinitializer }, align 32
@start_fastcharge.__UNIQUE_ID_ddebug197 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.29, ptr @.str.3, ptr @.str.30, i8 0, i8 55, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"start_fastcharge\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Start Fast-charging!\0A\00", [42 x i8] zeroinitializer }, align 32
@power_off_notification.__UNIQUE_ID_ddebug199 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.31, ptr @.str.3, ptr @.str.32, i8 0, i8 70, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"power_off_notification\00", [41 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Power-off notification!\0A\00", [39 x i8] zeroinitializer }, align 32
@set_vbatt_threshold.__UNIQUE_ID_ddebug194 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.33, ptr @.str.3, ptr @.str.34, i8 0, i8 41, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"set_vbatt_threshold\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"VBAT Min:%dmv, LOWTH:0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@set_vbatt_threshold.__UNIQUE_ID_ddebug195 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.33, ptr @.str.3, ptr @.str.35, i8 0, i8 43, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"VBAT Max:%dmv, HIGHTH:0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"usb supply detect\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"charge done\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"charge timeout\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"charge fault\00", [19 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temperature\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vbatt\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vchg\00", [27 x i8] zeroinitializer }, align 32
@pm860x_charger_handler.__UNIQUE_ID_ddebug203 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.43, ptr @.str.3, ptr @.str.44, i8 0, i8 104, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pm860x_charger_handler\00", [41 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s, Charger:%s, Allowed:%d\0A\00", [36 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@pm860x_done_handler.__UNIQUE_ID_ddebug206 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.45, ptr @.str.3, ptr @.str.46, i8 0, i8 -128, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pm860x_done_handler\00", [44 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s, Allowed: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@pm860x_exception_handler.__UNIQUE_ID_ddebug205 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.47, ptr @.str.3, ptr @.str.48, i8 0, i8 115, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pm860x_exception_handler\00", [39 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s, irq: %d\0A\00", [19 x i8] zeroinitializer }, align 32
@pm860x_temp_handler.__UNIQUE_ID_ddebug204 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.49, ptr @.str.3, ptr @.str.46, i8 0, i8 111, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pm860x_temp_handler\00", [44 x i8] zeroinitializer }, align 32
@pm860x_vbattery_handler.__UNIQUE_ID_ddebug207 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.50, ptr @.str.3, ptr @.str.46, i8 0, i8 -123, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pm860x_vbattery_handler\00", [40 x i8] zeroinitializer }, align 32
@pm860x_vchg_handler.__UNIQUE_ID_ddebug208 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.51, ptr @.str.3, ptr @.str.52, i8 0, i8 -115, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pm860x_vchg_handler\00", [44 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s, pm8606 over-temp occurred\0A\00", [33 x i8] zeroinitializer }, align 32
@pm860x_vchg_handler.__UNIQUE_ID_ddebug209 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.51, ptr @.str.3, ptr @.str.53, i8 0, i8 -113, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s,pm8607 over-vchg occurred,vchg = %dmv\0A\00", [54 x i8] zeroinitializer }, align 32
@pm860x_vchg_handler.__UNIQUE_ID_ddebug210 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.51, ptr @.str.3, ptr @.str.54, i8 0, i8 -111, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s,pm8607 over-vchg recover,vchg = %dmv\0A\00", [55 x i8] zeroinitializer }, align 32
@pm860x_vchg_handler.__UNIQUE_ID_ddebug211 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.51, ptr @.str.3, ptr @.str.46, i8 0, i8 -110, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@measure_vchg.__UNIQUE_ID_ddebug191 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.55, ptr @.str.3, ptr @.str.56, i8 0, i8 32, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"measure_vchg\00", [19 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s, vchg: %d mv\0A\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.57 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.58 = private unnamed_addr constant [22 x i8] c"pm860x_charger_driver\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 747, i32 31 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 749, i32 14 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 692, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 701, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [19 x i8] c"pm860x_supplied_to\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 112, i32 14 }
@___asan_gen_.91 = private unnamed_addr constant [20 x i8] c"pm860x_charger_desc\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 655, i32 39 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 721, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 145, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 152, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 113, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 656, i32 11 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"pm860x_usb_props\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 614, i32 35 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 314, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 319, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 382, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 386, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 183, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 272, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 222, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 280, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 167, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 174, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 646, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 647, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 648, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 649, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 650, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 651, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 652, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 415, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 515, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 463, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 447, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 534, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 564, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 572, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 579, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.245 = private constant [43 x i8] c"../drivers/power/supply/88pm860x_charger.c\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 129, i32 2 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @__UNIQUE_ID_description213, ptr @__UNIQUE_ID_file214, ptr @__UNIQUE_ID_license215, ptr @__exitcall_pm860x_charger_driver_exit, ptr @__initcall__kmod_88pm860x_charger__212_754_pm860x_charger_driver_init6, ptr @pm860x_charger_driver_exit, ptr @pm860x_charger_probe._entry, ptr @pm860x_charger_probe._entry.7, ptr @pm860x_charger_probe._entry_ptr, ptr @pm860x_charger_probe._entry_ptr.9, ptr @set_charging_fsm._entry, ptr @set_charging_fsm._entry_ptr, ptr @pm860x_charger_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @pm860x_charger_probe.__key, ptr @.str.6, ptr @pm860x_supplied_to, ptr @pm860x_charger_desc, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @pm860x_usb_props, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_charger_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_charger_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_charger_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_supplied_to to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_charger_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_charger_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_usb_props to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_charging_fsm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_charger_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pm860x_charger_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pm860x_charger_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @pm860x_charger_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_charger_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %psy_cfg = alloca %struct.power_supply_config, align 4
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #5
  %4 = call ptr @memset(ptr %psy_cfg, i32 0, i32 24)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 148, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_resources = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 6
  %5 = ptrtoint ptr %num_resources to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_resources, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp127 = icmp sgt i32 %6, 0
  br i1 %cmp127, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %j.0129 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %i.0128 = phi i32 [ %inc9, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %call3 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef %i.0128) #5
  %arrayidx = getelementptr %struct.pm860x_charger_info, ptr %call.i, i32 0, i32 7, i32 %j.0129
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call3, ptr %arrayidx, align 4
  %8 = xor i32 %call3, -1
  %call3.lobit.not = lshr i32 %8, 31
  %spec.select = add i32 %call3.lobit.not, %j.0129
  %inc9 = add nuw nsw i32 %i.0128, 1
  %exitcond.not = icmp eq i32 %inc9, %6
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %j.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %spec.select, %for.body.for.end_crit_edge ]
  %irq_nums = getelementptr inbounds %struct.pm860x_charger_info, ptr %call.i, i32 0, i32 6
  %9 = ptrtoint ptr %irq_nums to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %j.0.lcssa, ptr %irq_nums, align 4
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %3, ptr %call.i, align 4
  %id = getelementptr inbounds %struct.pm860x_chip, ptr %3, i32 0, i32 10
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp11 = icmp eq i32 %12, 2
  %client = getelementptr inbounds %struct.pm860x_chip, ptr %3, i32 0, i32 3
  %companion = getelementptr inbounds %struct.pm860x_chip, ptr %3, i32 0, i32 4
  %cond.in = select i1 %cmp11, ptr %client, ptr %companion
  %13 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %cond = load ptr, ptr %cond.in, align 4
  %i2c = getelementptr inbounds %struct.pm860x_charger_info, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %i2c to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %cond, ptr %i2c, align 4
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp13 = icmp eq i32 %16, 2
  %cond19.in = select i1 %cmp13, ptr %companion, ptr %client
  %17 = ptrtoint ptr %cond19.in to i32
  call void @__asan_load4_noabort(i32 %17)
  %cond19 = load ptr, ptr %cond19.in, align 4
  %i2c_8606 = getelementptr inbounds %struct.pm860x_charger_info, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %i2c_8606 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %cond19, ptr %i2c_8606, align 4
  %tobool21.not = icmp eq ptr %cond19, null
  br i1 %tobool21.not, label %do.end, label %if.end24

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end24:                                         ; preds = %for.end
  %dev26 = getelementptr inbounds %struct.pm860x_charger_info, ptr %call.i, i32 0, i32 3
  %19 = ptrtoint ptr %dev26 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev, ptr %dev26, align 4
  %call.i121 = tail call i32 @pm860x_reg_write(ptr noundef %cond, i32 noundef 92, i8 noundef zeroext 119) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_vchg_threshold.__UNIQUE_ID_ddebug192, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pm860x_charger_probe, %do.end.i)) #5
          to label %if.then5.i [label %do.end.i], !srcloc !145

if.then5.i:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev26, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_vchg_threshold.__UNIQUE_ID_ddebug192, ptr noundef %21, ptr noundef nonnull @.str.12, i32 noundef 4200, i32 noundef 119) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.then5.i, %if.end24
  %22 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c, align 4
  %call16.i = tail call i32 @pm860x_reg_write(ptr noundef %23, i32 noundef 100, i8 noundef zeroext -100) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_vchg_threshold.__UNIQUE_ID_ddebug193, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pm860x_charger_probe, %set_vchg_threshold.exit)) #5
          to label %if.then31.i [label %set_vchg_threshold.exit], !srcloc !145

if.then31.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev26, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_vchg_threshold.__UNIQUE_ID_ddebug193, ptr noundef %25, ptr noundef nonnull @.str.13, i32 noundef 5500, i32 noundef 156) #5
  br label %set_vchg_threshold.exit

set_vchg_threshold.exit:                          ; preds = %if.then31.i, %do.end.i
  %lock = getelementptr inbounds %struct.pm860x_charger_info, ptr %call.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @pm860x_charger_probe.__key) #5
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %26 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %27 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %drv_data, align 4
  %supplied_to = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 4
  %28 = ptrtoint ptr %supplied_to to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @pm860x_supplied_to, ptr %supplied_to, align 4
  %num_supplicants = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 5
  %29 = ptrtoint ptr %num_supplicants to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %num_supplicants, align 4
  %call31 = call ptr @power_supply_register(ptr noundef %dev, ptr noundef nonnull @pm860x_charger_desc, ptr noundef nonnull %psy_cfg) #5
  %usb = getelementptr inbounds %struct.pm860x_charger_info, ptr %call.i, i32 0, i32 4
  %30 = ptrtoint ptr %usb to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call31, ptr %usb, align 4
  %cmp.i = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then34, label %if.end37

if.then34:                                        ; preds = %set_vchg_threshold.exit
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %call31 to i32
  br label %cleanup

if.end37:                                         ; preds = %set_vchg_threshold.exit
  %32 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i2c, align 4
  %call.i123 = call i32 @pm860x_reg_read(ptr noundef %33, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i123)
  %cmp.i124 = icmp slt i32 %call.i123, 0
  br i1 %cmp.i124, label %if.end37.pm860x_init_charger.exit_crit_edge, label %if.end.i

if.end37.pm860x_init_charger.exit_crit_edge:      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %pm860x_init_charger.exit

if.end.i:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %state.i = getelementptr inbounds %struct.pm860x_charger_info, ptr %call.i, i32 0, i32 8
  %34 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load.i = load i8, ptr %state.i, align 4
  %and.i = and i32 %call.i123, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %bf.clear14.i = and i8 %bf.load.i, 11
  %bf.set7.i = or i8 %bf.clear14.i, 20
  %storemerge.i = select i1 %tobool.not.i, i8 %bf.clear14.i, i8 %bf.set7.i
  %35 = ptrtoint ptr %state.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %storemerge.i, ptr %state.i, align 4
  call void @mutex_unlock(ptr noundef %lock) #5
  call fastcc void @set_charging_fsm(ptr noundef nonnull %call.i) #5
  br label %pm860x_init_charger.exit

pm860x_init_charger.exit:                         ; preds = %if.end.i, %if.end37.pm860x_init_charger.exit_crit_edge
  %arrayidx43 = getelementptr %struct.pm860x_charger_info, ptr %call.i, i32 0, i32 7, i32 0
  %36 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx43, align 4
  %call46 = call i32 @request_threaded_irq(i32 noundef %37, ptr noundef null, ptr noundef nonnull @pm860x_charger_handler, i32 noundef 8192, ptr noundef nonnull @.str.36, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %pm860x_init_charger.exit.do.end51_crit_edge, label %for.inc56

pm860x_init_charger.exit.do.end51_crit_edge:      ; preds = %pm860x_init_charger.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end51

do.end51:                                         ; preds = %for.inc56.5.do.end51_crit_edge, %for.inc56.4.do.end51_crit_edge, %for.inc56.3.do.end51_crit_edge, %for.inc56.2.do.end51_crit_edge, %for.inc56.1.do.end51_crit_edge, %for.inc56.do.end51_crit_edge, %pm860x_init_charger.exit.do.end51_crit_edge
  %cmp60 = phi i1 [ true, %for.inc56.5.do.end51_crit_edge ], [ true, %for.inc56.4.do.end51_crit_edge ], [ true, %for.inc56.3.do.end51_crit_edge ], [ true, %for.inc56.2.do.end51_crit_edge ], [ true, %for.inc56.1.do.end51_crit_edge ], [ false, %for.inc56.do.end51_crit_edge ], [ false, %pm860x_init_charger.exit.do.end51_crit_edge ]
  %cmp60.1 = phi i1 [ true, %for.inc56.5.do.end51_crit_edge ], [ true, %for.inc56.4.do.end51_crit_edge ], [ true, %for.inc56.3.do.end51_crit_edge ], [ true, %for.inc56.2.do.end51_crit_edge ], [ false, %for.inc56.1.do.end51_crit_edge ], [ false, %for.inc56.do.end51_crit_edge ], [ false, %pm860x_init_charger.exit.do.end51_crit_edge ]
  %cmp60.2 = phi i1 [ true, %for.inc56.5.do.end51_crit_edge ], [ true, %for.inc56.4.do.end51_crit_edge ], [ true, %for.inc56.3.do.end51_crit_edge ], [ false, %for.inc56.2.do.end51_crit_edge ], [ false, %for.inc56.1.do.end51_crit_edge ], [ false, %for.inc56.do.end51_crit_edge ], [ false, %pm860x_init_charger.exit.do.end51_crit_edge ]
  %cmp60.3 = phi i1 [ true, %for.inc56.5.do.end51_crit_edge ], [ true, %for.inc56.4.do.end51_crit_edge ], [ false, %for.inc56.3.do.end51_crit_edge ], [ false, %for.inc56.2.do.end51_crit_edge ], [ false, %for.inc56.1.do.end51_crit_edge ], [ false, %for.inc56.do.end51_crit_edge ], [ false, %pm860x_init_charger.exit.do.end51_crit_edge ]
  %cmp60.4 = phi i1 [ true, %for.inc56.5.do.end51_crit_edge ], [ false, %for.inc56.4.do.end51_crit_edge ], [ false, %for.inc56.3.do.end51_crit_edge ], [ false, %for.inc56.2.do.end51_crit_edge ], [ false, %for.inc56.1.do.end51_crit_edge ], [ false, %for.inc56.do.end51_crit_edge ], [ false, %pm860x_init_charger.exit.do.end51_crit_edge ]
  %i.1130.lcssa = phi i32 [ 5, %for.inc56.5.do.end51_crit_edge ], [ 4, %for.inc56.4.do.end51_crit_edge ], [ 3, %for.inc56.3.do.end51_crit_edge ], [ 2, %for.inc56.2.do.end51_crit_edge ], [ 1, %for.inc56.1.do.end51_crit_edge ], [ 0, %for.inc56.do.end51_crit_edge ], [ -1, %pm860x_init_charger.exit.do.end51_crit_edge ]
  %arrayidx43.lcssa = phi ptr [ %arrayidx43.6, %for.inc56.5.do.end51_crit_edge ], [ %arrayidx43.5, %for.inc56.4.do.end51_crit_edge ], [ %arrayidx43.4, %for.inc56.3.do.end51_crit_edge ], [ %arrayidx43.3, %for.inc56.2.do.end51_crit_edge ], [ %arrayidx43.2, %for.inc56.1.do.end51_crit_edge ], [ %arrayidx43.1, %for.inc56.do.end51_crit_edge ], [ %arrayidx43, %pm860x_init_charger.exit.do.end51_crit_edge ]
  %call46.lcssa = phi i32 [ %call46.6, %for.inc56.5.do.end51_crit_edge ], [ %call46.5, %for.inc56.4.do.end51_crit_edge ], [ %call46.4, %for.inc56.3.do.end51_crit_edge ], [ %call46.3, %for.inc56.2.do.end51_crit_edge ], [ %call46.2, %for.inc56.1.do.end51_crit_edge ], [ %call46.1, %for.inc56.do.end51_crit_edge ], [ %call46, %pm860x_init_charger.exit.do.end51_crit_edge ]
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %3, align 4
  %40 = ptrtoint ptr %arrayidx43.lcssa to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx43.lcssa, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.8, i32 noundef %41, i32 noundef %call46.lcssa) #8
  %42 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %usb, align 4
  call void @power_supply_unregister(ptr noundef %43) #5
  br i1 %cmp47, label %do.end51.cleanup_crit_edge, label %while.body

do.end51.cleanup_crit_edge:                       ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc56:                                        ; preds = %pm860x_init_charger.exit
  %arrayidx43.1 = getelementptr %struct.pm860x_charger_info, ptr %call.i, i32 0, i32 7, i32 1
  %44 = ptrtoint ptr %arrayidx43.1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx43.1, align 4
  %call46.1 = call i32 @request_threaded_irq(i32 noundef %45, ptr noundef null, ptr noundef nonnull @pm860x_done_handler, i32 noundef 8192, ptr noundef nonnull @.str.37, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.1)
  %cmp47.1 = icmp slt i32 %call46.1, 0
  br i1 %cmp47.1, label %for.inc56.do.end51_crit_edge, label %for.inc56.1

for.inc56.do.end51_crit_edge:                     ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end51

for.inc56.1:                                      ; preds = %for.inc56
  %arrayidx43.2 = getelementptr %struct.pm860x_charger_info, ptr %call.i, i32 0, i32 7, i32 2
  %46 = ptrtoint ptr %arrayidx43.2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx43.2, align 4
  %call46.2 = call i32 @request_threaded_irq(i32 noundef %47, ptr noundef null, ptr noundef nonnull @pm860x_exception_handler, i32 noundef 8192, ptr noundef nonnull @.str.38, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.2)
  %cmp47.2 = icmp slt i32 %call46.2, 0
  br i1 %cmp47.2, label %for.inc56.1.do.end51_crit_edge, label %for.inc56.2

for.inc56.1.do.end51_crit_edge:                   ; preds = %for.inc56.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end51

for.inc56.2:                                      ; preds = %for.inc56.1
  %arrayidx43.3 = getelementptr %struct.pm860x_charger_info, ptr %call.i, i32 0, i32 7, i32 3
  %48 = ptrtoint ptr %arrayidx43.3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx43.3, align 4
  %call46.3 = call i32 @request_threaded_irq(i32 noundef %49, ptr noundef null, ptr noundef nonnull @pm860x_exception_handler, i32 noundef 8192, ptr noundef nonnull @.str.39, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.3)
  %cmp47.3 = icmp slt i32 %call46.3, 0
  br i1 %cmp47.3, label %for.inc56.2.do.end51_crit_edge, label %for.inc56.3

for.inc56.2.do.end51_crit_edge:                   ; preds = %for.inc56.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end51

for.inc56.3:                                      ; preds = %for.inc56.2
  %arrayidx43.4 = getelementptr %struct.pm860x_charger_info, ptr %call.i, i32 0, i32 7, i32 4
  %50 = ptrtoint ptr %arrayidx43.4 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx43.4, align 4
  %call46.4 = call i32 @request_threaded_irq(i32 noundef %51, ptr noundef null, ptr noundef nonnull @pm860x_temp_handler, i32 noundef 8192, ptr noundef nonnull @.str.40, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.4)
  %cmp47.4 = icmp slt i32 %call46.4, 0
  br i1 %cmp47.4, label %for.inc56.3.do.end51_crit_edge, label %for.inc56.4

for.inc56.3.do.end51_crit_edge:                   ; preds = %for.inc56.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end51

for.inc56.4:                                      ; preds = %for.inc56.3
  %arrayidx43.5 = getelementptr %struct.pm860x_charger_info, ptr %call.i, i32 0, i32 7, i32 5
  %52 = ptrtoint ptr %arrayidx43.5 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx43.5, align 4
  %call46.5 = call i32 @request_threaded_irq(i32 noundef %53, ptr noundef null, ptr noundef nonnull @pm860x_vbattery_handler, i32 noundef 8192, ptr noundef nonnull @.str.41, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.5)
  %cmp47.5 = icmp slt i32 %call46.5, 0
  br i1 %cmp47.5, label %for.inc56.4.do.end51_crit_edge, label %for.inc56.5

for.inc56.4.do.end51_crit_edge:                   ; preds = %for.inc56.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end51

for.inc56.5:                                      ; preds = %for.inc56.4
  %arrayidx43.6 = getelementptr %struct.pm860x_charger_info, ptr %call.i, i32 0, i32 7, i32 6
  %54 = ptrtoint ptr %arrayidx43.6 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx43.6, align 4
  %call46.6 = call i32 @request_threaded_irq(i32 noundef %55, ptr noundef null, ptr noundef nonnull @pm860x_vchg_handler, i32 noundef 8192, ptr noundef nonnull @.str.42, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.6)
  %cmp47.6 = icmp slt i32 %call46.6, 0
  br i1 %cmp47.6, label %for.inc56.5.do.end51_crit_edge, label %for.inc56.5.cleanup_crit_edge

for.inc56.5.cleanup_crit_edge:                    ; preds = %for.inc56.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc56.5.do.end51_crit_edge:                   ; preds = %for.inc56.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end51

while.body:                                       ; preds = %do.end51
  %arrayidx62 = getelementptr %struct.pm860x_charger_info, ptr %call.i, i32 0, i32 7, i32 %i.1130.lcssa
  %56 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx62, align 4
  %call63 = call ptr @free_irq(i32 noundef %57, ptr noundef nonnull %call.i) #5
  br i1 %cmp60, label %while.body.1, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.1:                                     ; preds = %while.body
  %dec = add nsw i32 %i.1130.lcssa, -1
  %arrayidx62.1 = getelementptr %struct.pm860x_charger_info, ptr %call.i, i32 0, i32 7, i32 %dec
  %58 = ptrtoint ptr %arrayidx62.1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx62.1, align 4
  %call63.1 = call ptr @free_irq(i32 noundef %59, ptr noundef nonnull %call.i) #5
  br i1 %cmp60.1, label %while.body.2, label %while.body.1.cleanup_crit_edge

while.body.1.cleanup_crit_edge:                   ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.2:                                     ; preds = %while.body.1
  %dec.1 = add nsw i32 %i.1130.lcssa, -2
  %arrayidx62.2 = getelementptr %struct.pm860x_charger_info, ptr %call.i, i32 0, i32 7, i32 %dec.1
  %60 = ptrtoint ptr %arrayidx62.2 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx62.2, align 4
  %call63.2 = call ptr @free_irq(i32 noundef %61, ptr noundef nonnull %call.i) #5
  br i1 %cmp60.2, label %while.body.3, label %while.body.2.cleanup_crit_edge

while.body.2.cleanup_crit_edge:                   ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.3:                                     ; preds = %while.body.2
  %dec.2 = add nsw i32 %i.1130.lcssa, -3
  %arrayidx62.3 = getelementptr %struct.pm860x_charger_info, ptr %call.i, i32 0, i32 7, i32 %dec.2
  %62 = ptrtoint ptr %arrayidx62.3 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx62.3, align 4
  %call63.3 = call ptr @free_irq(i32 noundef %63, ptr noundef nonnull %call.i) #5
  br i1 %cmp60.3, label %while.body.4, label %while.body.3.cleanup_crit_edge

while.body.3.cleanup_crit_edge:                   ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.4:                                     ; preds = %while.body.3
  %dec.3 = add nsw i32 %i.1130.lcssa, -4
  %arrayidx62.4 = getelementptr %struct.pm860x_charger_info, ptr %call.i, i32 0, i32 7, i32 %dec.3
  %64 = ptrtoint ptr %arrayidx62.4 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx62.4, align 4
  %call63.4 = call ptr @free_irq(i32 noundef %65, ptr noundef nonnull %call.i) #5
  br i1 %cmp60.4, label %while.body.5, label %while.body.4.cleanup_crit_edge

while.body.4.cleanup_crit_edge:                   ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.5:                                     ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #7
  %dec.4 = add nsw i32 %i.1130.lcssa, -5
  %arrayidx62.5 = getelementptr %struct.pm860x_charger_info, ptr %call.i, i32 0, i32 7, i32 %dec.4
  %66 = ptrtoint ptr %arrayidx62.5 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx62.5, align 4
  %call63.5 = call ptr @free_irq(i32 noundef %67, ptr noundef nonnull %call.i) #5
  br label %cleanup

cleanup:                                          ; preds = %while.body.5, %while.body.4.cleanup_crit_edge, %while.body.3.cleanup_crit_edge, %while.body.2.cleanup_crit_edge, %while.body.1.cleanup_crit_edge, %while.body.cleanup_crit_edge, %for.inc56.5.cleanup_crit_edge, %do.end51.cleanup_crit_edge, %if.then34, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %31, %if.then34 ], [ -22, %do.end ], [ %call46.lcssa, %do.end51.cleanup_crit_edge ], [ 0, %for.inc56.5.cleanup_crit_edge ], [ %call46.lcssa, %while.body.5 ], [ %call46.lcssa, %while.body.4.cleanup_crit_edge ], [ %call46.lcssa, %while.body.3.cleanup_crit_edge ], [ %call46.lcssa, %while.body.2.cleanup_crit_edge ], [ %call46.lcssa, %while.body.1.cleanup_crit_edge ], [ %call46.lcssa, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_charger_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %usb = getelementptr inbounds %struct.pm860x_charger_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb, align 4
  tail call void @power_supply_unregister(ptr noundef %3) #5
  %irq_nums = getelementptr inbounds %struct.pm860x_charger_info, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %irq_nums to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_nums, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp7 = icmp sgt i32 %5, 0
  br i1 %cmp7, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.08 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pm860x_charger_info, ptr %1, i32 0, i32 7, i32 %i.08
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %7, ptr noundef %1) #5
  %inc = add nuw nsw i32 %i.08, 1
  %8 = ptrtoint ptr %irq_nums to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq_nums, align 4
  %cmp = icmp slt i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm860x_reg_write(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_usb_get_prop(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #5
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 4, label %sw.bb6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %state = getelementptr inbounds %struct.pm860x_charger_info, ptr %call, i32 0, i32 8
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %state, align 4
  %2 = and i8 %bf.load, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %2)
  %switch = icmp eq i8 %2, 64
  %. = select i1 %switch, i32 1, i32 2
  br label %cleanup.sink.split

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %online = getelementptr inbounds %struct.pm860x_charger_info, ptr %call, i32 0, i32 8
  %3 = ptrtoint ptr %online to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load7 = load i8, ptr %online, align 4
  %bf.lshr8 = lshr i8 %bf.load7, 4
  %bf.clear = and i8 %bf.lshr8, 1
  %bf.cast9 = zext i8 %bf.clear to i32
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb6, %sw.bb
  %bf.cast9.sink = phi i32 [ %bf.cast9, %sw.bb6 ], [ %., %sw.bb ]
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %bf.cast9.sink, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm860x_reg_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_charging_fsm(ptr noundef %info) unnamed_addr #2 align 64 {
entry:
  %data = alloca %union.power_supply_propval, align 4
  %fsm_state = alloca [4 x [16 x i8]], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4, !annotation !146
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %fsm_state) #5
  %1 = call ptr @memcpy(ptr %fsm_state, ptr @__const.set_charging_fsm.fsm_state, i32 64)
  %2 = load ptr, ptr @pm860x_supplied_to, align 4
  %call = tail call ptr @power_supply_get_by_name(ptr noundef %2) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @power_supply_get_property(ptr noundef nonnull %call, i32 noundef 12, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @power_supply_put(ptr noundef nonnull %call) #5
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data, align 4
  %div = sdiv i32 %4, 1000
  %call5 = call i32 @power_supply_get_property(ptr noundef nonnull %call, i32 noundef 3, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  call void @power_supply_put(ptr noundef nonnull %call) #5
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %lock = getelementptr inbounds %struct.pm860x_charger_info, ptr %info, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data, align 4
  %present = getelementptr inbounds %struct.pm860x_charger_info, ptr %info, i32 0, i32 8
  %7 = trunc i32 %6 to i8
  %8 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %present, align 4
  %bf.value = shl i8 %7, 3
  %bf.shl = and i8 %bf.value, 8
  %bf.clear = and i8 %bf.load, -9
  %bf.set = or i8 %bf.shl, %bf.clear
  store i8 %bf.set, ptr %present, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_charging_fsm.__UNIQUE_ID_ddebug200, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@set_charging_fsm, %do.body34)) #5
          to label %if.then14 [label %do.body34], !srcloc !145

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.pm860x_charger_info, ptr %info, i32 0, i32 3
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %11 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load15 = load i8, ptr %present, align 4
  %bf.lshr = lshr i8 %bf.load15, 5
  %bf.cast = zext i8 %bf.lshr to i32
  %arrayidx = getelementptr [4 x [16 x i8]], ptr %fsm_state, i32 0, i32 %bf.cast
  %12 = and i8 %bf.load15, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool21.not = icmp eq i8 %12, 0
  %cond = select i1 %tobool21.not, ptr @.str.19, ptr @.str.18
  %13 = and i8 %bf.load15, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool27.not = icmp eq i8 %13, 0
  %cond28 = select i1 %tobool27.not, ptr @.str.19, ptr @.str.20
  %bf.lshr30 = lshr i8 %bf.load15, 2
  %bf.clear31 = and i8 %bf.lshr30, 1
  %bf.cast32 = zext i8 %bf.clear31 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_charging_fsm.__UNIQUE_ID_ddebug200, ptr noundef %10, ptr noundef nonnull @.str.17, ptr noundef %arrayidx, ptr noundef nonnull %cond, ptr noundef nonnull %cond28, i32 noundef %bf.cast32) #5
  br label %do.body34

do.body34:                                        ; preds = %if.then14, %if.end8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_charging_fsm.__UNIQUE_ID_ddebug201, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@set_charging_fsm, %do.end52)) #5
          to label %if.then48 [label %do.end52], !srcloc !145

if.then48:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #7
  %dev49 = getelementptr inbounds %struct.pm860x_charger_info, ptr %info, i32 0, i32 3
  %14 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev49, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_charging_fsm.__UNIQUE_ID_ddebug201, ptr noundef %15, ptr noundef nonnull @.str.21, i32 noundef %div) #5
  br label %do.end52

do.end52:                                         ; preds = %if.then48, %do.body34
  %16 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load54 = load i8, ptr %present, align 4
  %bf.lshr55 = lshr i8 %bf.load54, 5
  %bf.cast56 = zext i8 %bf.lshr55 to i32
  %17 = zext i32 %bf.cast56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %bf.cast56, label %do.end239 [
    i32 0, label %sw.bb
    i32 2, label %sw.bb110
    i32 3, label %sw.bb146
    i32 1, label %sw.bb182
  ]

sw.bb:                                            ; preds = %do.end52
  %18 = and i8 %bf.load54, 28
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %18)
  %.not22 = icmp eq i8 %18, 28
  br i1 %.not22, label %if.then76, label %if.else100

if.then76:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 3100000, i32 %4)
  %cmp = icmp slt i32 %4, 3100000
  br i1 %cmp, label %if.then77, label %if.else

if.then77:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #7
  %bf.clear80 = and i8 %bf.load54, 31
  %bf.set81 = or i8 %bf.clear80, 64
  %19 = ptrtoint ptr %present to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %bf.set81, ptr %present, align 4
  call fastcc void @start_precharge(ptr noundef %info)
  br label %do.body245

if.else:                                          ; preds = %if.then76
  call void @__sanitizer_cov_trace_const_cmp4(i32 4180999, i32 %4)
  %cmp83 = icmp ugt i32 %4, 4180999
  br i1 %cmp83, label %if.then84, label %if.else89

if.then84:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %bf.clear87 = and i8 %bf.load54, 31
  %bf.set88 = or i8 %bf.clear87, 32
  %20 = ptrtoint ptr %present to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %bf.set88, ptr %present, align 4
  call fastcc void @stop_charge(ptr noundef %info, i32 noundef %div)
  br label %do.body245

if.else89:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 4180000, i32 %4)
  %cmp90 = icmp ult i32 %4, 4180000
  br i1 %cmp90, label %if.then91, label %if.else89.do.body245_crit_edge

if.else89.do.body245_crit_edge:                   ; preds = %if.else89
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body245

if.then91:                                        ; preds = %if.else89
  call void @__sanitizer_cov_trace_pc() #7
  %bf.clear94 = and i8 %bf.load54, 31
  %bf.set95 = or i8 %bf.clear94, 96
  %21 = ptrtoint ptr %present to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %bf.set95, ptr %present, align 4
  call fastcc void @start_fastcharge(ptr noundef %info)
  br label %do.body245

if.else100:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 3400000, i32 %4)
  %cmp101 = icmp slt i32 %4, 3400000
  br i1 %cmp101, label %if.then102, label %if.else103

if.then102:                                       ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @power_off_notification.__UNIQUE_ID_ddebug199, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@set_charging_fsm, %do.body245)) #5
          to label %if.then.i [label %do.body245], !srcloc !145

if.then.i:                                        ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.pm860x_charger_info, ptr %info, i32 0, i32 3
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @power_off_notification.__UNIQUE_ID_ddebug199, ptr noundef %23, ptr noundef nonnull @.str.32) #5
  br label %do.body245

if.else103:                                       ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #7
  %bf.clear106 = and i8 %bf.load54, 31
  %bf.set107 = or i8 %bf.clear106, 32
  %24 = ptrtoint ptr %present to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %bf.set107, ptr %present, align 4
  call fastcc void @stop_charge(ptr noundef %info, i32 noundef %div)
  br label %do.body245

sw.bb110:                                         ; preds = %do.end52
  %25 = and i8 %bf.load54, 28
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %25)
  %.not21 = icmp eq i8 %25, 28
  br i1 %.not21, label %if.then131, label %if.else140

if.then131:                                       ; preds = %sw.bb110
  call void @__sanitizer_cov_trace_const_cmp4(i32 3100999, i32 %4)
  %cmp132 = icmp sgt i32 %4, 3100999
  br i1 %cmp132, label %if.then133, label %if.then131.do.body245_crit_edge

if.then131.do.body245_crit_edge:                  ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body245

if.then133:                                       ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #7
  %bf.clear136 = and i8 %bf.load54, 31
  %bf.set137 = or i8 %bf.clear136, 96
  %26 = ptrtoint ptr %present to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %bf.set137, ptr %present, align 4
  call fastcc void @start_fastcharge(ptr noundef %info)
  br label %do.body245

if.else140:                                       ; preds = %sw.bb110
  call void @__sanitizer_cov_trace_pc() #7
  %bf.clear143 = and i8 %bf.load54, 31
  %bf.set144 = or i8 %bf.clear143, 32
  %27 = ptrtoint ptr %present to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %bf.set144, ptr %present, align 4
  call fastcc void @stop_charge(ptr noundef %info, i32 noundef %div)
  br label %do.body245

sw.bb146:                                         ; preds = %do.end52
  %28 = and i8 %bf.load54, 28
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %28)
  %.not20 = icmp eq i8 %28, 28
  br i1 %.not20, label %if.then167, label %if.else176

if.then167:                                       ; preds = %sw.bb146
  call void @__sanitizer_cov_trace_const_cmp4(i32 3100000, i32 %4)
  %cmp168 = icmp slt i32 %4, 3100000
  br i1 %cmp168, label %if.then169, label %if.then167.do.body245_crit_edge

if.then167.do.body245_crit_edge:                  ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body245

if.then169:                                       ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #7
  %bf.clear172 = and i8 %bf.load54, 31
  %bf.set173 = or i8 %bf.clear172, 64
  %29 = ptrtoint ptr %present to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %bf.set173, ptr %present, align 4
  call fastcc void @start_precharge(ptr noundef %info)
  br label %do.body245

if.else176:                                       ; preds = %sw.bb146
  call void @__sanitizer_cov_trace_pc() #7
  %bf.clear179 = and i8 %bf.load54, 31
  %bf.set180 = or i8 %bf.clear179, 32
  %30 = ptrtoint ptr %present to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %bf.set180, ptr %present, align 4
  call fastcc void @stop_charge(ptr noundef %info, i32 noundef %div)
  br label %do.body245

sw.bb182:                                         ; preds = %do.end52
  %31 = and i8 %bf.load54, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool188.not = icmp eq i8 %31, 0
  %32 = and i8 %bf.load54, 28
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %32)
  %.not = icmp eq i8 %32, 28
  br i1 %.not, label %if.then203, label %if.else221

if.then203:                                       ; preds = %sw.bb182
  call void @__sanitizer_cov_trace_const_cmp4(i32 3100000, i32 %4)
  %cmp204 = icmp slt i32 %4, 3100000
  br i1 %cmp204, label %if.then205, label %if.else211

if.then205:                                       ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #7
  %bf.clear208 = and i8 %bf.load54, 31
  %bf.set209 = or i8 %bf.clear208, 64
  %33 = ptrtoint ptr %present to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %bf.set209, ptr %present, align 4
  call fastcc void @start_precharge(ptr noundef %info)
  br label %do.body245

if.else211:                                       ; preds = %if.then203
  call void @__sanitizer_cov_trace_const_cmp4(i32 4180000, i32 %4)
  %cmp212 = icmp ult i32 %4, 4180000
  br i1 %cmp212, label %if.then213, label %if.else211.do.body245_crit_edge

if.else211.do.body245_crit_edge:                  ; preds = %if.else211
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body245

if.then213:                                       ; preds = %if.else211
  call void @__sanitizer_cov_trace_pc() #7
  %bf.clear216 = and i8 %bf.load54, 31
  %bf.set217 = or i8 %bf.clear216, 96
  %34 = ptrtoint ptr %present to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %bf.set217, ptr %present, align 4
  call fastcc void @start_fastcharge(ptr noundef %info)
  br label %do.body245

if.else221:                                       ; preds = %sw.bb182
  call void @__sanitizer_cov_trace_const_cmp4(i32 3400000, i32 %4)
  %cmp222 = icmp slt i32 %4, 3400000
  br i1 %cmp222, label %if.then223, label %if.else224

if.then223:                                       ; preds = %if.else221
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @power_off_notification.__UNIQUE_ID_ddebug199, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@set_charging_fsm, %do.body245)) #5
          to label %if.then.i15 [label %do.body245], !srcloc !145

if.then.i15:                                      ; preds = %if.then223
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i14 = getelementptr inbounds %struct.pm860x_charger_info, ptr %info, i32 0, i32 3
  %35 = ptrtoint ptr %dev.i14 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i14, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @power_off_notification.__UNIQUE_ID_ddebug199, ptr noundef %36, ptr noundef nonnull @.str.32) #5
  br label %do.body245

if.else224:                                       ; preds = %if.else221
  call void @__sanitizer_cov_trace_const_cmp4(i32 4001000, i32 %4)
  %cmp225 = icmp ult i32 %4, 4001000
  %brmerge = select i1 %cmp225, i1 true, i1 %tobool188.not
  br i1 %brmerge, label %if.else224.do.body245_crit_edge, label %if.then233

if.else224.do.body245_crit_edge:                  ; preds = %if.else224
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body245

if.then233:                                       ; preds = %if.else224
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @set_vbatt_threshold(ptr noundef %info, i32 noundef 4000)
  br label %do.body245

do.end239:                                        ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #7
  %dev240 = getelementptr inbounds %struct.pm860x_charger_info, ptr %info, i32 0, i32 3
  %37 = ptrtoint ptr %dev240 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev240, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %38, ptr noundef nonnull @.str.22, i32 noundef %bf.cast56) #8
  br label %do.body245

do.body245:                                       ; preds = %do.end239, %if.then233, %if.else224.do.body245_crit_edge, %if.then.i15, %if.then223, %if.then213, %if.else211.do.body245_crit_edge, %if.then205, %if.else176, %if.then169, %if.then167.do.body245_crit_edge, %if.else140, %if.then133, %if.then131.do.body245_crit_edge, %if.else103, %if.then.i, %if.then102, %if.then91, %if.else89.do.body245_crit_edge, %if.then84, %if.then77
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_charging_fsm.__UNIQUE_ID_ddebug202, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@set_charging_fsm, %do.end288)) #5
          to label %if.then259 [label %do.end288], !srcloc !145

if.then259:                                       ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #7
  %dev260 = getelementptr inbounds %struct.pm860x_charger_info, ptr %info, i32 0, i32 3
  %39 = ptrtoint ptr %dev260 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev260, align 4
  %41 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load262 = load i8, ptr %present, align 4
  %bf.lshr263 = lshr i8 %bf.load262, 5
  %bf.cast264 = zext i8 %bf.lshr263 to i32
  %arrayidx265 = getelementptr [4 x [16 x i8]], ptr %fsm_state, i32 0, i32 %bf.cast264
  %42 = and i8 %bf.load262, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool272.not = icmp eq i8 %42, 0
  %cond273 = select i1 %tobool272.not, ptr @.str.19, ptr @.str.18
  %43 = and i8 %bf.load262, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool279.not = icmp eq i8 %43, 0
  %cond280 = select i1 %tobool279.not, ptr @.str.19, ptr @.str.20
  %bf.lshr283 = lshr i8 %bf.load262, 2
  %bf.clear284 = and i8 %bf.lshr283, 1
  %bf.cast285 = zext i8 %bf.clear284 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_charging_fsm.__UNIQUE_ID_ddebug202, ptr noundef %40, ptr noundef nonnull @.str.24, ptr noundef %arrayidx265, ptr noundef nonnull %cond273, ptr noundef nonnull %cond280, i32 noundef %bf.cast285) #5
  br label %do.end288

do.end288:                                        ; preds = %if.then259, %do.body245
  call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end288, %if.end4.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fsm_state) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_by_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_get_property(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @start_precharge(ptr nocapture noundef readonly %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @start_precharge.__UNIQUE_ID_ddebug196, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@start_precharge, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !145

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.pm860x_charger_info, ptr %info, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @start_precharge.__UNIQUE_ID_ddebug196, ptr noundef %1, ptr noundef nonnull @.str.26) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %i2c.i = getelementptr inbounds %struct.pm860x_charger_info, ptr %info, i32 0, i32 1
  %2 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c.i, align 4
  %call.i = tail call i32 @pm860x_reg_write(ptr noundef %3, i32 noundef 91, i8 noundef zeroext 0) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_vbatt_threshold.__UNIQUE_ID_ddebug194, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@start_precharge, %if.end13.i)) #5
          to label %if.then5.i [label %if.end13.i], !srcloc !145

if.then5.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.pm860x_charger_info, ptr %info, i32 0, i32 3
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_vbatt_threshold.__UNIQUE_ID_ddebug194, ptr noundef %5, ptr noundef nonnull @.str.34, i32 noundef 0, i32 noundef 0) #5
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then5.i, %do.end
  %6 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c.i, align 4
  %call16.i = tail call i32 @pm860x_reg_write(ptr noundef %7, i32 noundef 99, i8 noundef zeroext -1) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_vbatt_threshold.__UNIQUE_ID_ddebug195, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@start_precharge, %set_vbatt_threshold.exit)) #5
          to label %if.then31.i [label %set_vbatt_threshold.exit], !srcloc !145

if.then31.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev32.i = getelementptr inbounds %struct.pm860x_charger_info, ptr %info, i32 0, i32 3
  %8 = ptrtoint ptr %dev32.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev32.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_vbatt_threshold.__UNIQUE_ID_ddebug195, ptr noundef %9, ptr noundef nonnull @.str.35, i32 noundef 0, i32 noundef 255) #5
  br label %set_vbatt_threshold.exit

set_vbatt_threshold.exit:                         ; preds = %if.then31.i, %if.end13.i
  %i2c_8606 = getelementptr inbounds %struct.pm860x_charger_info, ptr %info, i32 0, i32 2
  %10 = ptrtoint ptr %i2c_8606 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c_8606, align 4
  %call4 = tail call i32 @pm860x_reg_write(ptr noundef %11, i32 noundef 16, i8 noundef zeroext 62) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %set_vbatt_threshold.exit.out_crit_edge, label %if.end6

set_vbatt_threshold.exit.out_crit_edge:           ; preds = %set_vbatt_threshold.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end6:                                          ; preds = %set_vbatt_threshold.exit
  %12 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c.i, align 4
  %call7 = tail call i32 @pm860x_set_bits(ptr noundef %13, i32 noundef 72, i8 noundef zeroext 3, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end6.out_crit_edge, label %if.end10

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end10:                                         ; preds = %if.end6
  %14 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c.i, align 4
  %call12 = tail call i32 @pm860x_set_bits(ptr noundef %15, i32 noundef 74, i8 noundef zeroext -16, i8 noundef zeroext 112) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end10.out_crit_edge, label %if.end15

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end15:                                         ; preds = %if.end10
  %16 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c.i, align 4
  %call17 = tail call i32 @pm860x_reg_write(ptr noundef %17, i32 noundef 75, i8 noundef zeroext -9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end15.out_crit_edge, label %if.end20

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end20:                                         ; preds = %if.end15
  %18 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i2c.i, align 4
  %call22 = tail call i32 @pm860x_set_bits(ptr noundef %19, i32 noundef 78, i8 noundef zeroext -120, i8 noundef zeroext -120) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.end20.out_crit_edge, label %if.end25

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end25:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c.i, align 4
  %call27 = tail call i32 @pm860x_set_bits(ptr noundef %21, i32 noundef 72, i8 noundef zeroext 3, i8 noundef zeroext 1) #5
  br label %out

out:                                              ; preds = %if.end25, %if.end20.out_crit_edge, %if.end15.out_crit_edge, %if.end10.out_crit_edge, %if.end6.out_crit_edge, %set_vbatt_threshold.exit.out_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stop_charge(ptr nocapture noundef readonly %info, i32 noundef %vbatt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stop_charge.__UNIQUE_ID_ddebug198, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stop_charge, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !145

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.pm860x_charger_info, ptr %info, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stop_charge.__UNIQUE_ID_ddebug198, ptr noundef %1, ptr noundef nonnull @.str.28) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %i2c = getelementptr inbounds %struct.pm860x_charger_info, ptr %info, i32 0, i32 1
  %2 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c, align 4
  %call4 = tail call i32 @pm860x_set_bits(ptr noundef %3, i32 noundef 72, i8 noundef zeroext 3, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000, i32 %vbatt)
  %cmp = icmp sgt i32 %vbatt, 4000
  br i1 %cmp, label %land.lhs.true, label %do.end.if.end7_crit_edge

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

land.lhs.true:                                    ; preds = %do.end
  %online = getelementptr inbounds %struct.pm860x_charger_info, ptr %info, i32 0, i32 8
  %4 = ptrtoint ptr %online to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %online, align 4
  %5 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end7_crit_edge, label %if.then6

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then6:                                         ; preds = %land.lhs.true
  %6 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c, align 4
  %call.i = tail call i32 @pm860x_reg_write(ptr noundef %7, i32 noundef 91, i8 noundef zeroext -67) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_vbatt_threshold.__UNIQUE_ID_ddebug194, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stop_charge, %if.end13.i)) #5
          to label %if.then5.i [label %if.end13.i], !srcloc !145

if.then5.i:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.pm860x_charger_info, ptr %info, i32 0, i32 3
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_vbatt_threshold.__UNIQUE_ID_ddebug194, ptr noundef %9, ptr noundef nonnull @.str.34, i32 noundef 4000, i32 noundef 189) #5
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then5.i, %if.then6
  %10 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c, align 4
  %call16.i = tail call i32 @pm860x_reg_write(ptr noundef %11, i32 noundef 99, i8 noundef zeroext -1) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_vbatt_threshold.__UNIQUE_ID_ddebug195, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stop_charge, %if.end7)) #5
          to label %if.then31.i [label %if.end7], !srcloc !145

if.then31.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev32.i = getelementptr inbounds %struct.pm860x_charger_info, ptr %info, i32 0, i32 3
  %12 = ptrtoint ptr %dev32.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev32.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_vbatt_threshold.__UNIQUE_ID_ddebug195, ptr noundef %13, ptr noundef nonnull @.str.35, i32 noundef 0, i32 noundef 255) #5
  br label %if.end7

if.end7:                                          ; preds = %if.then31.i, %if.end13.i, %land.lhs.true.if.end7_crit_edge, %do.end.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @start_fastcharge(ptr nocapture noundef readonly %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @start_fastcharge.__UNIQUE_ID_ddebug197, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@start_fastcharge, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !145

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.pm860x_charger_info, ptr %info, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @start_fastcharge.__UNIQUE_ID_ddebug197, ptr noundef %1, ptr noundef nonnull @.str.30) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %i2c = getelementptr inbounds %struct.pm860x_charger_info, ptr %info, i32 0, i32 1
  %2 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c, align 4
  %call4 = tail call i32 @pm860x_reg_write(ptr noundef %3, i32 noundef 72, i8 noundef zeroext -104) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end.out_crit_edge, label %if.end6

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end6:                                          ; preds = %do.end
  %i2c_8606 = getelementptr inbounds %struct.pm860x_charger_info, ptr %info, i32 0, i32 2
  %4 = ptrtoint ptr %i2c_8606 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c_8606, align 4
  %call7 = tail call i32 @pm860x_reg_write(ptr noundef %5, i32 noundef 16, i8 noundef zeroext 53) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end6.out_crit_edge, label %if.end10

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end10:                                         ; preds = %if.end6
  %6 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c, align 4
  %call12 = tail call i32 @pm860x_set_bits(ptr noundef %7, i32 noundef 73, i8 noundef zeroext 31, i8 noundef zeroext 9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end10.out_crit_edge, label %if.end15

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end15:                                         ; preds = %if.end10
  %8 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c, align 4
  %call17 = tail call i32 @pm860x_set_bits(ptr noundef %9, i32 noundef 74, i8 noundef zeroext -16, i8 noundef zeroext 112) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end15.out_crit_edge, label %if.end20

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end20:                                         ; preds = %if.end15
  %10 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c, align 4
  %call22 = tail call i32 @pm860x_set_bits(ptr noundef %11, i32 noundef 75, i8 noundef zeroext -64, i8 noundef zeroext -64) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.end20.out_crit_edge, label %if.end25

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end25:                                         ; preds = %if.end20
  %12 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c, align 4
  %call27 = tail call i32 @pm860x_set_bits(ptr noundef %13, i32 noundef 77, i8 noundef zeroext -52, i8 noundef zeroext -52) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end25.out_crit_edge, label %if.end30

if.end25.out_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end30:                                         ; preds = %if.end25
  %14 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c, align 4
  %call32 = tail call i32 @pm860x_set_bits(ptr noundef %15, i32 noundef 78, i8 noundef zeroext -120, i8 noundef zeroext -120) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end30.out_crit_edge, label %if.end35

if.end30.out_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end35:                                         ; preds = %if.end30
  %16 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c, align 4
  %call37 = tail call i32 @pm860x_set_bits(ptr noundef %17, i32 noundef 72, i8 noundef zeroext 3, i8 noundef zeroext 2) #5
  %18 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i2c, align 4
  %call.i = tail call i32 @pm860x_reg_write(ptr noundef %19, i32 noundef 92, i8 noundef zeroext 119) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_vchg_threshold.__UNIQUE_ID_ddebug192, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@start_fastcharge, %do.end.i)) #5
          to label %if.then5.i [label %do.end.i], !srcloc !145

if.then5.i:                                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.pm860x_charger_info, ptr %info, i32 0, i32 3
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_vchg_threshold.__UNIQUE_ID_ddebug192, ptr noundef %21, ptr noundef nonnull @.str.12, i32 noundef 4200, i32 noundef 119) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.then5.i, %if.end35
  %22 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c, align 4
  %call16.i = tail call i32 @pm860x_reg_write(ptr noundef %23, i32 noundef 100, i8 noundef zeroext -86) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_vchg_threshold.__UNIQUE_ID_ddebug193, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@start_fastcharge, %out)) #5
          to label %if.then31.i [label %out], !srcloc !145

if.then31.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev32.i = getelementptr inbounds %struct.pm860x_charger_info, ptr %info, i32 0, i32 3
  %24 = ptrtoint ptr %dev32.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev32.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_vchg_threshold.__UNIQUE_ID_ddebug193, ptr noundef %25, ptr noundef nonnull @.str.13, i32 noundef 6000, i32 noundef 170) #5
  br label %out

out:                                              ; preds = %if.then31.i, %do.end.i, %if.end30.out_crit_edge, %if.end25.out_crit_edge, %if.end20.out_crit_edge, %if.end15.out_crit_edge, %if.end10.out_crit_edge, %if.end6.out_crit_edge, %do.end.out_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_vbatt_threshold(ptr nocapture noundef readonly %info, i32 noundef %min) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %min, 5
  %div = sdiv i32 %shl, 675
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %min)
  %cmp.inv = icmp sgt i32 %min, 0
  %data.0 = select i1 %cmp.inv, i32 %div, i32 0
  %i2c = getelementptr inbounds %struct.pm860x_charger_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c, align 4
  %conv = trunc i32 %data.0 to i8
  %call = tail call i32 @pm860x_reg_write(ptr noundef %1, i32 noundef 91, i8 noundef zeroext %conv) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_vbatt_threshold.__UNIQUE_ID_ddebug194, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@set_vbatt_threshold, %if.end13)) #5
          to label %if.then5 [label %if.end13], !srcloc !145

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.pm860x_charger_info, ptr %info, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_vbatt_threshold.__UNIQUE_ID_ddebug194, ptr noundef %3, ptr noundef nonnull @.str.34, i32 noundef %min, i32 noundef %data.0) #5
  br label %if.end13

if.end13:                                         ; preds = %if.then5, %entry
  %4 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c, align 4
  %call16 = tail call i32 @pm860x_reg_write(ptr noundef %5, i32 noundef 99, i8 noundef zeroext -1) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_vbatt_threshold.__UNIQUE_ID_ddebug195, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@set_vbatt_threshold, %do.end35)) #5
          to label %if.then31 [label %do.end35], !srcloc !145

if.then31:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %dev32 = getelementptr inbounds %struct.pm860x_charger_info, ptr %info, i32 0, i32 3
  %6 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev32, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_vbatt_threshold.__UNIQUE_ID_ddebug195, ptr noundef %7, ptr noundef nonnull @.str.35, i32 noundef 0, i32 noundef 255) #5
  br label %do.end35

do.end35:                                         ; preds = %if.then31, %if.end13
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm860x_set_bits(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_charger_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.pm860x_charger_info, ptr %data, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %i2c = getelementptr inbounds %struct.pm860x_charger_info, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c, align 4
  %call = tail call i32 @pm860x_reg_read(ptr noundef %1, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_unlock(ptr noundef %lock) #5
  br label %out

if.end:                                           ; preds = %entry
  %and = and i32 %call, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %online6 = getelementptr inbounds %struct.pm860x_charger_info, ptr %data, i32 0, i32 8
  %2 = ptrtoint ptr %online6 to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load7 = load i8, ptr %online6, align 4
  %bf.clear12 = and i8 %bf.load7, -21
  %masksel = select i1 %tobool.not, i8 0, i8 20
  %bf.clear12.sink = or i8 %bf.clear12, %masksel
  store i8 %bf.clear12.sink, ptr %online6, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm860x_charger_handler.__UNIQUE_ID_ddebug203, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pm860x_charger_handler, %do.end)) #5
          to label %if.then21 [label %do.end], !srcloc !145

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.pm860x_charger_info, ptr %data, i32 0, i32 3
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %online22 = getelementptr inbounds %struct.pm860x_charger_info, ptr %data, i32 0, i32 8
  %5 = ptrtoint ptr %online22 to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load23 = load i8, ptr %online22, align 4
  %6 = and i8 %bf.load23, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool25.not = icmp eq i8 %6, 0
  %cond = select i1 %tobool25.not, ptr @.str.19, ptr @.str.18
  %bf.lshr28 = lshr i8 %bf.load23, 2
  %bf.clear29 = and i8 %bf.lshr28, 1
  %bf.cast30 = zext i8 %bf.clear29 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm860x_charger_handler.__UNIQUE_ID_ddebug203, ptr noundef %4, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.43, ptr noundef nonnull %cond, i32 noundef %bf.cast30) #5
  br label %do.end

do.end:                                           ; preds = %if.then21, %if.end
  tail call fastcc void @set_charging_fsm(ptr noundef %data)
  %usb = getelementptr inbounds %struct.pm860x_charger_info, ptr %data, i32 0, i32 4
  %7 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %usb, align 4
  tail call void @power_supply_changed(ptr noundef %8) #5
  br label %out

out:                                              ; preds = %do.end, %if.then
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_done_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %val = alloca %union.power_supply_propval, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !146
  %lock = getelementptr inbounds %struct.pm860x_charger_info, ptr %data, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %state = getelementptr inbounds %struct.pm860x_charger_info, ptr %data, i32 0, i32 8
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %state, align 4
  %bf.lshr.mask = and i8 %bf.load, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask)
  %cmp = icmp eq i8 %bf.lshr.mask, 64
  br i1 %cmp, label %if.then, label %while.body.preheader

while.body.preheader:                             ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #5
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load3 = load i8, ptr %state, align 4
  %bf.clear4 = and i8 %bf.load3, -5
  store i8 %bf.clear4, ptr %state, align 4
  %8 = load ptr, ptr @pm860x_supplied_to, align 4
  %call = tail call ptr @power_supply_get_by_name(ptr noundef %8) #5
  %tobool6.not = icmp eq ptr %call, null
  br i1 %tobool6.not, label %while.body.preheader.out_crit_edge, label %if.end8

while.body.preheader.out_crit_edge:               ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %bf.set = or i8 %bf.load, 4
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %bf.set, ptr %state, align 4
  br label %out

if.end8:                                          ; preds = %while.body.preheader
  %call9 = call i32 @power_supply_get_property(ptr noundef nonnull %call, i32 noundef 12, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.out_psy_put_crit_edge

if.end8.out_psy_put_crit_edge:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_psy_put

if.end12:                                         ; preds = %if.end8
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %i2c = getelementptr inbounds %struct.pm860x_charger_info, ptr %data, i32 0, i32 1
  %12 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c, align 4
  %call13 = call i32 @pm860x_reg_read(ptr noundef %13, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4001000, i32 %11)
  %cmp17 = icmp slt i32 %11, 4001000
  %or.cond = select i1 %cmp14, i1 true, i1 %cmp17
  %and = and i32 %call13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  %or.cond49 = or i1 %or.cond, %tobool18.not
  br i1 %or.cond49, label %if.end12.out_psy_put_crit_edge, label %if.then19

if.end12.out_psy_put_crit_edge:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_psy_put

if.then19:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %call20 = call i32 @power_supply_set_property(ptr noundef nonnull %call, i32 noundef 24, ptr noundef nonnull %val) #5
  br label %out_psy_put

out_psy_put:                                      ; preds = %if.then19, %if.end12.out_psy_put_crit_edge, %if.end8.out_psy_put_crit_edge
  call void @power_supply_put(ptr noundef nonnull %call) #5
  br label %out

out:                                              ; preds = %out_psy_put, %if.then, %while.body.preheader.out_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm860x_done_handler.__UNIQUE_ID_ddebug206, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pm860x_done_handler, %do.end)) #5
          to label %if.then28 [label %do.end], !srcloc !145

if.then28:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.pm860x_charger_info, ptr %data, i32 0, i32 3
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load30 = load i8, ptr %state, align 4
  %bf.lshr31 = lshr i8 %bf.load30, 2
  %bf.clear32 = and i8 %bf.lshr31, 1
  %bf.cast33 = zext i8 %bf.clear32 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm860x_done_handler.__UNIQUE_ID_ddebug206, ptr noundef %15, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.45, i32 noundef %bf.cast33) #5
  br label %do.end

do.end:                                           ; preds = %if.then28, %out
  call fastcc void @set_charging_fsm(ptr noundef %data)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_exception_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.pm860x_charger_info, ptr %data, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %allowed = getelementptr inbounds %struct.pm860x_charger_info, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %allowed to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %allowed, align 4
  %bf.clear = and i8 %bf.load, -5
  store i8 %bf.clear, ptr %allowed, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm860x_exception_handler.__UNIQUE_ID_ddebug205, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pm860x_exception_handler, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !145

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.pm860x_charger_info, ptr %data, i32 0, i32 3
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm860x_exception_handler.__UNIQUE_ID_ddebug205, ptr noundef %2, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.47, i32 noundef %irq) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @set_charging_fsm(ptr noundef %data)
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_temp_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %temp = alloca %union.power_supply_propval, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #5
  %0 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %temp, align 4, !annotation !146
  %1 = load ptr, ptr @pm860x_supplied_to, align 4
  %call = tail call ptr @power_supply_get_by_name(ptr noundef %1) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @power_supply_get_property(ptr noundef nonnull %call, i32 noundef 52, ptr noundef nonnull %temp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end4:                                          ; preds = %if.end
  %2 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %temp, align 4
  %lock = getelementptr inbounds %struct.pm860x_charger_info, ptr %data, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %4 = add i32 %3, -410
  call void @__sanitizer_cov_trace_const_cmp4(i32 -519, i32 %4)
  %5 = icmp ult i32 %4, -519
  %allowed = getelementptr inbounds %struct.pm860x_charger_info, ptr %data, i32 0, i32 8
  %6 = ptrtoint ptr %allowed to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %allowed, align 4
  %bf.clear = and i8 %bf.load, -5
  %masksel = select i1 %5, i8 0, i8 4
  %bf.clear.sink = or i8 %bf.clear, %masksel
  store i8 %bf.clear.sink, ptr %allowed, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm860x_temp_handler.__UNIQUE_ID_ddebug204, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pm860x_temp_handler, %do.end)) #5
          to label %if.then17 [label %do.end], !srcloc !145

if.then17:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.pm860x_charger_info, ptr %data, i32 0, i32 3
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %allowed18 = getelementptr inbounds %struct.pm860x_charger_info, ptr %data, i32 0, i32 8
  %9 = ptrtoint ptr %allowed18 to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load19 = load i8, ptr %allowed18, align 4
  %bf.lshr = lshr i8 %bf.load19, 2
  %bf.clear20 = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear20 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm860x_temp_handler.__UNIQUE_ID_ddebug204, ptr noundef %8, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.49, i32 noundef %bf.cast) #5
  br label %do.end

do.end:                                           ; preds = %if.then17, %if.end4
  call void @mutex_unlock(ptr noundef %lock) #5
  call fastcc void @set_charging_fsm(ptr noundef %data)
  br label %out

out:                                              ; preds = %do.end, %if.end.out_crit_edge
  call void @power_supply_put(ptr noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #5
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_vbattery_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.pm860x_charger_info, ptr %data, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %i2c.i = getelementptr inbounds %struct.pm860x_charger_info, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c.i, align 4
  %call.i = tail call i32 @pm860x_reg_write(ptr noundef %1, i32 noundef 91, i8 noundef zeroext 0) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_vbatt_threshold.__UNIQUE_ID_ddebug194, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pm860x_vbattery_handler, %if.end13.i)) #5
          to label %if.then5.i [label %if.end13.i], !srcloc !145

if.then5.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.pm860x_charger_info, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_vbatt_threshold.__UNIQUE_ID_ddebug194, ptr noundef %3, ptr noundef nonnull @.str.34, i32 noundef 0, i32 noundef 0) #5
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then5.i, %entry
  %4 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c.i, align 4
  %call16.i = tail call i32 @pm860x_reg_write(ptr noundef %5, i32 noundef 99, i8 noundef zeroext -1) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_vbatt_threshold.__UNIQUE_ID_ddebug195, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pm860x_vbattery_handler, %set_vbatt_threshold.exit)) #5
          to label %if.then31.i [label %set_vbatt_threshold.exit], !srcloc !145

if.then31.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev32.i = getelementptr inbounds %struct.pm860x_charger_info, ptr %data, i32 0, i32 3
  %6 = ptrtoint ptr %dev32.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev32.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_vbatt_threshold.__UNIQUE_ID_ddebug195, ptr noundef %7, ptr noundef nonnull @.str.35, i32 noundef 0, i32 noundef 255) #5
  br label %set_vbatt_threshold.exit

set_vbatt_threshold.exit:                         ; preds = %if.then31.i, %if.end13.i
  %present = getelementptr inbounds %struct.pm860x_charger_info, ptr %data, i32 0, i32 8
  %8 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %present, align 4
  %9 = and i8 %bf.load, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %9)
  %.not = icmp eq i8 %9, 24
  %bf.clear10 = and i8 %bf.load, -5
  %masksel = select i1 %.not, i8 4, i8 0
  %storemerge = or i8 %masksel, %bf.clear10
  %10 = ptrtoint ptr %present to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %storemerge, ptr %present, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm860x_vbattery_handler.__UNIQUE_ID_ddebug207, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pm860x_vbattery_handler, %do.end)) #5
          to label %if.then17 [label %do.end], !srcloc !145

if.then17:                                        ; preds = %set_vbatt_threshold.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.pm860x_charger_info, ptr %data, i32 0, i32 3
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %13 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load19 = load i8, ptr %present, align 4
  %bf.lshr20 = lshr i8 %bf.load19, 2
  %bf.clear21 = and i8 %bf.lshr20, 1
  %bf.cast22 = zext i8 %bf.clear21 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm860x_vbattery_handler.__UNIQUE_ID_ddebug207, ptr noundef %12, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.50, i32 noundef %bf.cast22) #5
  br label %do.end

do.end:                                           ; preds = %if.then17, %set_vbatt_threshold.exit
  tail call fastcc void @set_charging_fsm(ptr noundef %data)
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_vchg_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %present = getelementptr inbounds %struct.pm860x_charger_info, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %present, align 4
  %1 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #5
  %2 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %buf.i, align 1, !annotation !146
  %3 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !146
  %i2c.i = getelementptr inbounds %struct.pm860x_charger_info, ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c.i, align 4
  %call.i = call i32 @pm860x_bulk_read(ptr noundef %6, i32 noundef 111, i32 noundef 2, ptr noundef nonnull %buf.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.measure_vchg.exit_crit_edge, label %if.end.i

if.end.measure_vchg.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %measure_vchg.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %buf.i, align 1
  %conv.i = zext i8 %8 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %3, align 1
  %11 = and i8 %10, 15
  %and3.i = zext i8 %11 to i32
  %or.i = or i32 %shl.i, %and3.i
  %mul5.i = mul nuw nsw i32 %or.i, 1125
  %12 = lshr i32 %mul5.i, 9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @measure_vchg.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pm860x_vchg_handler, %measure_vchg.exit)) #5
          to label %if.then10.i [label %measure_vchg.exit], !srcloc !145

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.pm860x_charger_info, ptr %data, i32 0, i32 3
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @measure_vchg.__UNIQUE_ID_ddebug191, ptr noundef %14, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.55, i32 noundef %12) #5
  br label %measure_vchg.exit

measure_vchg.exit:                                ; preds = %if.then10.i, %if.end.i, %if.end.measure_vchg.exit_crit_edge
  %vchg.0 = phi i32 [ 0, %if.end.measure_vchg.exit_crit_edge ], [ %12, %if.then10.i ], [ %12, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #5
  %lock = getelementptr inbounds %struct.pm860x_charger_info, ptr %data, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %15 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load1 = load i8, ptr %present, align 4
  %16 = and i8 %bf.load1, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool5.not = icmp eq i8 %16, 0
  br i1 %tobool5.not, label %if.then6, label %measure_vchg.exit.if.end22_crit_edge

measure_vchg.exit.if.end22_crit_edge:             ; preds = %measure_vchg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then6:                                         ; preds = %measure_vchg.exit
  %i2c_8606 = getelementptr inbounds %struct.pm860x_charger_info, ptr %data, i32 0, i32 2
  %17 = ptrtoint ptr %i2c_8606 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c_8606, align 4
  %call7 = call i32 @pm860x_reg_read(ptr noundef %18, i32 noundef 25) #5
  %and = and i32 %call7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.then6.if.end22_crit_edge, label %if.then9

if.then6.if.end22_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %i2c_8606 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c_8606, align 4
  %call11 = call i32 @pm860x_set_bits(ptr noundef %20, i32 noundef 25, i8 noundef zeroext 64, i8 noundef zeroext 64) #5
  %21 = ptrtoint ptr %i2c_8606 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c_8606, align 4
  %call13 = call i32 @pm860x_set_bits(ptr noundef %22, i32 noundef 21, i8 noundef zeroext 8, i8 noundef zeroext 8) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm860x_vchg_handler.__UNIQUE_ID_ddebug208, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pm860x_vchg_handler, %if.end22)) #5
          to label %if.then19 [label %if.end22], !srcloc !145

if.then19:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.pm860x_charger_info, ptr %data, i32 0, i32 3
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm860x_vchg_handler.__UNIQUE_ID_ddebug208, ptr noundef %24, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.51) #5
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.then9, %if.then6.if.end22_crit_edge, %measure_vchg.exit.if.end22_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 5800, i32 %vchg.0)
  %cmp = icmp ugt i32 %vchg.0, 5800
  br i1 %cmp, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end22
  %25 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i2c.i, align 4
  %call.i125 = call i32 @pm860x_reg_write(ptr noundef %26, i32 noundef 92, i8 noundef zeroext -100) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_vchg_threshold.__UNIQUE_ID_ddebug192, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pm860x_vchg_handler, %do.end.i)) #5
          to label %if.then5.i [label %do.end.i], !srcloc !145

if.then5.i:                                       ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i126 = getelementptr inbounds %struct.pm860x_charger_info, ptr %data, i32 0, i32 3
  %27 = ptrtoint ptr %dev.i126 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i126, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_vchg_threshold.__UNIQUE_ID_ddebug192, ptr noundef %28, ptr noundef nonnull @.str.12, i32 noundef 5500, i32 noundef 156) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.then5.i, %if.then23
  %29 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i2c.i, align 4
  %call16.i = call i32 @pm860x_reg_write(ptr noundef %30, i32 noundef 100, i8 noundef zeroext -1) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_vchg_threshold.__UNIQUE_ID_ddebug193, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pm860x_vchg_handler, %set_vchg_threshold.exit)) #5
          to label %if.then31.i [label %set_vchg_threshold.exit], !srcloc !145

if.then31.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev32.i = getelementptr inbounds %struct.pm860x_charger_info, ptr %data, i32 0, i32 3
  %31 = ptrtoint ptr %dev32.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev32.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_vchg_threshold.__UNIQUE_ID_ddebug193, ptr noundef %32, ptr noundef nonnull @.str.13, i32 noundef 0, i32 noundef 255) #5
  br label %set_vchg_threshold.exit

set_vchg_threshold.exit:                          ; preds = %if.then31.i, %do.end.i
  %33 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load24 = load i8, ptr %present, align 4
  %bf.clear25 = and i8 %bf.load24, -5
  store i8 %bf.clear25, ptr %present, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm860x_vchg_handler.__UNIQUE_ID_ddebug209, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pm860x_vchg_handler, %if.end71)) #5
          to label %if.then40 [label %if.end71], !srcloc !145

if.then40:                                        ; preds = %set_vchg_threshold.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dev41 = getelementptr inbounds %struct.pm860x_charger_info, ptr %data, i32 0, i32 3
  %34 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev41, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm860x_vchg_handler.__UNIQUE_ID_ddebug209, ptr noundef %35, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.51, i32 noundef %vchg.0) #5
  br label %if.end71

if.else:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 5500, i32 %vchg.0)
  %cmp45 = icmp ult i32 %vchg.0, 5500
  br i1 %cmp45, label %if.then46, label %if.else.if.end71_crit_edge

if.else.if.end71_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end71

if.then46:                                        ; preds = %if.else
  %36 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i2c.i, align 4
  %call.i128 = call i32 @pm860x_reg_write(ptr noundef %37, i32 noundef 92, i8 noundef zeroext 119) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_vchg_threshold.__UNIQUE_ID_ddebug192, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pm860x_vchg_handler, %do.end.i132)) #5
          to label %if.then5.i130 [label %do.end.i132], !srcloc !145

if.then5.i130:                                    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i129 = getelementptr inbounds %struct.pm860x_charger_info, ptr %data, i32 0, i32 3
  %38 = ptrtoint ptr %dev.i129 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i129, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_vchg_threshold.__UNIQUE_ID_ddebug192, ptr noundef %39, ptr noundef nonnull @.str.12, i32 noundef 4200, i32 noundef 119) #5
  br label %do.end.i132

do.end.i132:                                      ; preds = %if.then5.i130, %if.then46
  %40 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i2c.i, align 4
  %call16.i131 = call i32 @pm860x_reg_write(ptr noundef %41, i32 noundef 100, i8 noundef zeroext -86) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_vchg_threshold.__UNIQUE_ID_ddebug193, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pm860x_vchg_handler, %set_vchg_threshold.exit135)) #5
          to label %if.then31.i134 [label %set_vchg_threshold.exit135], !srcloc !145

if.then31.i134:                                   ; preds = %do.end.i132
  call void @__sanitizer_cov_trace_pc() #7
  %dev32.i133 = getelementptr inbounds %struct.pm860x_charger_info, ptr %data, i32 0, i32 3
  %42 = ptrtoint ptr %dev32.i133 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev32.i133, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_vchg_threshold.__UNIQUE_ID_ddebug193, ptr noundef %43, ptr noundef nonnull @.str.13, i32 noundef 6000, i32 noundef 170) #5
  br label %set_vchg_threshold.exit135

set_vchg_threshold.exit135:                       ; preds = %if.then31.i134, %do.end.i132
  %44 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load48 = load i8, ptr %present, align 4
  %bf.set50 = or i8 %bf.load48, 4
  store i8 %bf.set50, ptr %present, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm860x_vchg_handler.__UNIQUE_ID_ddebug210, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pm860x_vchg_handler, %if.end71)) #5
          to label %if.then65 [label %if.end71], !srcloc !145

if.then65:                                        ; preds = %set_vchg_threshold.exit135
  call void @__sanitizer_cov_trace_pc() #7
  %dev66 = getelementptr inbounds %struct.pm860x_charger_info, ptr %data, i32 0, i32 3
  %45 = ptrtoint ptr %dev66 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev66, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm860x_vchg_handler.__UNIQUE_ID_ddebug210, ptr noundef %46, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.51, i32 noundef %vchg.0) #5
  br label %if.end71

if.end71:                                         ; preds = %if.then65, %set_vchg_threshold.exit135, %if.else.if.end71_crit_edge, %if.then40, %set_vchg_threshold.exit
  call void @mutex_unlock(ptr noundef %lock) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm860x_vchg_handler.__UNIQUE_ID_ddebug211, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pm860x_vchg_handler, %do.end96)) #5
          to label %if.then87 [label %do.end96], !srcloc !145

if.then87:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  %dev88 = getelementptr inbounds %struct.pm860x_charger_info, ptr %data, i32 0, i32 3
  %47 = ptrtoint ptr %dev88 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev88, align 4
  %49 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load90 = load i8, ptr %present, align 4
  %bf.lshr91 = lshr i8 %bf.load90, 2
  %bf.clear92 = and i8 %bf.lshr91, 1
  %bf.cast93 = zext i8 %bf.clear92 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm860x_vchg_handler.__UNIQUE_ID_ddebug211, ptr noundef %48, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.51, i32 noundef %bf.cast93) #5
  br label %do.end96

do.end96:                                         ; preds = %if.then87, %if.end71
  call fastcc void @set_charging_fsm(ptr noundef %data)
  br label %out

out:                                              ; preds = %do.end96, %entry.out_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_set_property(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm860x_bulk_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !23, !25, !26, !27, !29, !30, !31, !32, !34, !35, !37, !39, !41, !43, !45, !47, !48, !49, !50, !51, !52, !54, !55, !57, !58, !59, !60, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !119, !120, !122, !123, !124, !126, !127, !129, !130, !132, !134, !135}
!llvm.module.flags = !{!136, !137, !138, !139, !140, !141, !142, !143}
!llvm.ident = !{!144}

!0 = !{ptr @__initcall__kmod_88pm860x_charger__212_754_pm860x_charger_driver_init6, !1, !"__initcall__kmod_88pm860x_charger__212_754_pm860x_charger_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/88pm860x_charger.c", i32 754, i32 1}
!2 = !{ptr @__exitcall_pm860x_charger_driver_exit, !1, !"__exitcall_pm860x_charger_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description213, !4, !"__UNIQUE_ID_description213", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/88pm860x_charger.c", i32 756, i32 1}
!5 = !{ptr @__UNIQUE_ID_file214, !6, !"__UNIQUE_ID_file214", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/88pm860x_charger.c", i32 757, i32 1}
!7 = !{ptr @__UNIQUE_ID_license215, !6, !"__UNIQUE_ID_license215", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/power/supply/88pm860x_charger.c", i32 749, i32 14}
!10 = !{ptr @pm860x_charger_driver, !11, !"pm860x_charger_driver", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/88pm860x_charger.c", i32 747, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/88pm860x_charger.c", i32 692, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @pm860x_charger_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @pm860x_charger_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @pm860x_charger_probe.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/power/supply/88pm860x_charger.c", i32 701, i32 2}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/power/supply/88pm860x_charger.c", i32 721, i32 4}
!25 = !{ptr @pm860x_charger_probe._entry.7, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @pm860x_charger_probe._entry_ptr.9, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/power/supply/88pm860x_charger.c", i32 145, i32 2}
!29 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @set_vchg_threshold.__UNIQUE_ID_ddebug192, !28, !"__UNIQUE_ID_ddebug192", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/power/supply/88pm860x_charger.c", i32 152, i32 2}
!34 = !{ptr @set_vchg_threshold.__UNIQUE_ID_ddebug193, !33, !"__UNIQUE_ID_ddebug193", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/power/supply/88pm860x_charger.c", i32 113, i32 2}
!37 = !{ptr @pm860x_supplied_to, !38, !"pm860x_supplied_to", i1 false, i1 false}
!38 = !{!"../drivers/power/supply/88pm860x_charger.c", i32 112, i32 14}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/power/supply/88pm860x_charger.c", i32 656, i32 11}
!41 = !{ptr @pm860x_charger_desc, !42, !"pm860x_charger_desc", i1 false, i1 false}
!42 = !{!"../drivers/power/supply/88pm860x_charger.c", i32 655, i32 39}
!43 = !{ptr @pm860x_usb_props, !44, !"pm860x_usb_props", i1 false, i1 false}
!44 = !{!"../drivers/power/supply/88pm860x_charger.c", i32 614, i32 35}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/power/supply/88pm860x_charger.c", i32 314, i32 2}
!47 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @set_charging_fsm.__UNIQUE_ID_ddebug200, !46, !"__UNIQUE_ID_ddebug200", i1 false, i1 false}
!49 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/power/supply/88pm860x_charger.c", i32 319, i32 2}
!54 = !{ptr @set_charging_fsm.__UNIQUE_ID_ddebug201, !53, !"__UNIQUE_ID_ddebug201", i1 false, i1 false}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/power/supply/88pm860x_charger.c", i32 382, i32 3}
!57 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @set_charging_fsm._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @set_charging_fsm._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/power/supply/88pm860x_charger.c", i32 386, i32 2}
!62 = !{ptr @set_charging_fsm.__UNIQUE_ID_ddebug202, !61, !"__UNIQUE_ID_ddebug202", i1 false, i1 false}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/power/supply/88pm860x_charger.c", i32 183, i32 2}
!65 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @start_precharge.__UNIQUE_ID_ddebug196, !64, !"__UNIQUE_ID_ddebug196", i1 false, i1 false}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/power/supply/88pm860x_charger.c", i32 272, i32 2}
!69 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @stop_charge.__UNIQUE_ID_ddebug198, !68, !"__UNIQUE_ID_ddebug198", i1 false, i1 false}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/power/supply/88pm860x_charger.c", i32 222, i32 2}
!73 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @start_fastcharge.__UNIQUE_ID_ddebug197, !72, !"__UNIQUE_ID_ddebug197", i1 false, i1 false}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/power/supply/88pm860x_charger.c", i32 280, i32 2}
!77 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @power_off_notification.__UNIQUE_ID_ddebug199, !76, !"__UNIQUE_ID_ddebug199", i1 false, i1 false}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/power/supply/88pm860x_charger.c", i32 167, i32 2}
!81 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @set_vbatt_threshold.__UNIQUE_ID_ddebug194, !80, !"__UNIQUE_ID_ddebug194", i1 false, i1 false}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/power/supply/88pm860x_charger.c", i32 174, i32 2}
!85 = !{ptr @set_vbatt_threshold.__UNIQUE_ID_ddebug195, !84, !"__UNIQUE_ID_ddebug195", i1 false, i1 false}
!86 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/power/supply/88pm860x_charger.c", i32 646, i32 4}
!88 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/power/supply/88pm860x_charger.c", i32 647, i32 4}
!90 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/power/supply/88pm860x_charger.c", i32 648, i32 4}
!92 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/power/supply/88pm860x_charger.c", i32 649, i32 4}
!94 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/power/supply/88pm860x_charger.c", i32 650, i32 4}
!96 = !{ptr @.str.41, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/power/supply/88pm860x_charger.c", i32 651, i32 4}
!98 = !{ptr @.str.42, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/power/supply/88pm860x_charger.c", i32 652, i32 4}
!100 = distinct !{null, !101, !"pm860x_irq_descs", i1 false, i1 false}
!101 = !{!"../drivers/power/supply/88pm860x_charger.c", i32 645, i32 3}
!102 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/power/supply/88pm860x_charger.c", i32 415, i32 2}
!104 = !{ptr @.str.44, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @pm860x_charger_handler.__UNIQUE_ID_ddebug203, !103, !"__UNIQUE_ID_ddebug203", i1 false, i1 false}
!106 = !{ptr @.str.45, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/power/supply/88pm860x_charger.c", i32 515, i32 2}
!108 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @pm860x_done_handler.__UNIQUE_ID_ddebug206, !107, !"__UNIQUE_ID_ddebug206", i1 false, i1 false}
!110 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/power/supply/88pm860x_charger.c", i32 463, i32 2}
!112 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @pm860x_exception_handler.__UNIQUE_ID_ddebug205, !111, !"__UNIQUE_ID_ddebug205", i1 false, i1 false}
!114 = !{ptr @.str.49, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/power/supply/88pm860x_charger.c", i32 447, i32 2}
!116 = !{ptr @pm860x_temp_handler.__UNIQUE_ID_ddebug204, !115, !"__UNIQUE_ID_ddebug204", i1 false, i1 false}
!117 = !{ptr @.str.50, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/power/supply/88pm860x_charger.c", i32 534, i32 2}
!119 = !{ptr @pm860x_vbattery_handler.__UNIQUE_ID_ddebug207, !118, !"__UNIQUE_ID_ddebug207", i1 false, i1 false}
!120 = !{ptr @.str.51, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/power/supply/88pm860x_charger.c", i32 564, i32 4}
!122 = !{ptr @.str.52, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @pm860x_vchg_handler.__UNIQUE_ID_ddebug208, !121, !"__UNIQUE_ID_ddebug208", i1 false, i1 false}
!124 = !{ptr @.str.53, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/power/supply/88pm860x_charger.c", i32 572, i32 3}
!126 = !{ptr @pm860x_vchg_handler.__UNIQUE_ID_ddebug209, !125, !"__UNIQUE_ID_ddebug209", i1 false, i1 false}
!127 = !{ptr @.str.54, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/power/supply/88pm860x_charger.c", i32 579, i32 3}
!129 = !{ptr @pm860x_vchg_handler.__UNIQUE_ID_ddebug210, !128, !"__UNIQUE_ID_ddebug210", i1 false, i1 false}
!130 = !{ptr @pm860x_vchg_handler.__UNIQUE_ID_ddebug211, !131, !"__UNIQUE_ID_ddebug211", i1 false, i1 false}
!131 = !{!"../drivers/power/supply/88pm860x_charger.c", i32 585, i32 2}
!132 = !{ptr @.str.55, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/power/supply/88pm860x_charger.c", i32 129, i32 2}
!134 = !{ptr @.str.56, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @measure_vchg.__UNIQUE_ID_ddebug191, !133, !"__UNIQUE_ID_ddebug191", i1 false, i1 false}
!136 = !{i32 1, !"wchar_size", i32 2}
!137 = !{i32 1, !"min_enum_size", i32 4}
!138 = !{i32 8, !"branch-target-enforcement", i32 0}
!139 = !{i32 8, !"sign-return-address", i32 0}
!140 = !{i32 8, !"sign-return-address-all", i32 0}
!141 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!142 = !{i32 7, !"uwtable", i32 1}
!143 = !{i32 7, !"frame-pointer", i32 2}
!144 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!145 = !{i64 2148708797, i64 2148708802, i64 2148708815, i64 2148708859, i64 2148708893, i64 2148708914}
!146 = !{!"auto-init"}
