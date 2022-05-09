; ModuleID = '/llk/IR_all_yes/drivers/mfd/tps65910.c_pt.bc'
source_filename = "../drivers/mfd/tps65910.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.regmap_irq = type { i32, i32, %struct.regmap_irq_type }
%struct.regmap_irq_type = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.tps65910_board = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, %struct.tps65910_sleep_keepon_data, [9 x i8], [14 x i32], [14 x ptr] }
%struct.tps65910_sleep_keepon_data = type { i8, [3 x i8] }
%struct.tps65910 = type { ptr, ptr, ptr, i32, ptr, i32, ptr }
%struct.tps65910_platform_data = type { i32, i32 }

@__initcall__kmod_tps65910__288_547_tps65910_i2c_init4 = internal global ptr @tps65910_i2c_init, section ".initcall4.init", align 4
@tps65910_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tps65910_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tps65910_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tps65910_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tps65910\00", [23 x i8] zeroinitializer }, align 32
@tps65910_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps65910\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps65911\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@tps65910_i2c_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tps65910\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"tps65911\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@tps65910_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tps65910_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @is_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 127, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"tps65910:483:(&tps65910_regmap_config)->lock\00", [51 x i8] zeroinitializer }, align 32
@tps65910_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 486, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"regmap initialization failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tps65910_i2c_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/mfd/tps65910.c\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tps65910_i2c_probe._entry_ptr = internal global ptr @tps65910_i2c_probe._entry, section ".printk_index", align 4
@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@tps65910_i2c_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 507, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to set power-off mode: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@tps65910_i2c_probe._entry_ptr.10 = internal global ptr @tps65910_i2c_probe._entry.8, section ".printk_index", align 4
@tps65910_i2c_client = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@tps65910s = internal constant { [4 x %struct.mfd_cell], [64 x i8] } { [4 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.48, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.49, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.50, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @rtc_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.51, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [64 x i8] zeroinitializer }, align 32
@tps65910_i2c_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 520, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mfd_add_devices failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@tps65910_i2c_probe._entry_ptr.13 = internal global ptr @tps65910_i2c_probe._entry.11, section ".printk_index", align 4
@tps65910_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.5, i32 382, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to find matching dt id\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tps65910_parse_dt\00", [46 x i8] zeroinitializer }, align 32
@tps65910_parse_dt._entry_ptr = internal global ptr @tps65910_parse_dt._entry, section ".printk_index", align 4
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ti,vmbch-threshold\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ti,vmbch2-threshold\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ti,en-ck32k-xtal\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ti,sleep-enable\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ti,sleep-keep-therm\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ti,sleep-keep-ck32k\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ti,sleep-keep-hsclk\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ti,system-power-controller\00", [37 x i8] zeroinitializer }, align 32
@tps65910_irq_init.tps6591x_irqs_chip = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@tps65910_irq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.5, i32 229, ptr @.str.26, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"No interrupt support, no core IRQ\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tps65910_irq_init\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tps65910_irq_init._entry_ptr = internal global ptr @tps65910_irq_init._entry, section ".printk_index", align 4
@tps65910_irq_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.25, ptr @.str.5, i32 234, ptr @.str.26, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"No interrupt support, no pdata\0A\00", [32 x i8] zeroinitializer }, align 32
@tps65910_irq_init._entry_ptr.29 = internal global ptr @tps65910_irq_init._entry.27, section ".printk_index", align 4
@tps65910_irq_init._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.25, ptr @.str.5, i32 253, ptr @.str.26, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to add irq_chip %d\0A\00", [37 x i8] zeroinitializer }, align 32
@tps65910_irq_init._entry_ptr.32 = internal global ptr @tps65910_irq_init._entry.30, section ".printk_index", align 4
@tps65910_irqs = internal constant { [10 x %struct.regmap_irq], [88 x i8] } { [10 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type zeroinitializer }], [88 x i8] zeroinitializer }, align 32
@tps65910_irq_chip = internal global { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str, i32 0, i32 0, ptr null, i32 0, i32 80, i32 81, i32 0, i32 80, i32 0, i32 0, ptr null, i32 2, i8 0, i8 0, i32 2, ptr @tps65910_irqs, i32 10, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@tps65911_irqs = internal constant { [24 x %struct.regmap_irq], [192 x i8] } { [24 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 128, %struct.regmap_irq_type zeroinitializer }], [192 x i8] zeroinitializer }, align 32
@tps65911_irq_chip = internal global { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str, i32 0, i32 0, ptr null, i32 0, i32 80, i32 81, i32 0, i32 80, i32 0, i32 0, ptr null, i32 2, i8 0, i8 0, i32 3, ptr @tps65911_irqs, i32 24, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@tps65910_ck32k_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.5, i32 298, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"clear ck32k_ctrl failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tps65910_ck32k_init\00", [44 x i8] zeroinitializer }, align 32
@tps65910_ck32k_init._entry_ptr = internal global ptr @tps65910_ck32k_init._entry, section ".printk_index", align 4
@tps65910_sleepinit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.5, i32 320, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"set dev_slp failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tps65910_sleepinit\00", [45 x i8] zeroinitializer }, align 32
@tps65910_sleepinit._entry_ptr = internal global ptr @tps65910_sleepinit._entry, section ".printk_index", align 4
@tps65910_sleepinit._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.5, i32 329, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"set therm_keepon failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@tps65910_sleepinit._entry_ptr.41 = internal global ptr @tps65910_sleepinit._entry.39, section ".printk_index", align 4
@tps65910_sleepinit._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.5, i32 339, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"set clkout32k_keepon failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@tps65910_sleepinit._entry_ptr.44 = internal global ptr @tps65910_sleepinit._entry.42, section ".printk_index", align 4
@tps65910_sleepinit._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.38, ptr @.str.5, i32 349, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"set i2chs_keepon failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@tps65910_sleepinit._entry_ptr.47 = internal global ptr @tps65910_sleepinit._entry.45, section ".printk_index", align 4
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tps65910-gpio\00", [18 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tps65910-pmic\00", [18 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tps65910-rtc\00", [19 x i8] zeroinitializer }, align 32
@rtc_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 6, i32 6, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tps65910-power\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.52 = private unnamed_addr constant [20 x i8] c"tps65910_i2c_driver\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 533, i32 26 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 535, i32 14 }
@___asan_gen_.58 = private unnamed_addr constant [18 x i8] c"tps65910_of_match\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 365, i32 34 }
@___asan_gen_.61 = private unnamed_addr constant [16 x i8] c"tps65910_i2c_id\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 527, i32 35 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 482, i32 23 }
@___asan_gen_.67 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [23 x i8] c"tps65910_regmap_config\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 279, i32 35 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 483, i32 21 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 486, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 506, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant [20 x i8] c"tps65910_i2c_client\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 432, i32 27 }
@___asan_gen_.103 = private unnamed_addr constant [10 x i8] c"tps65910s\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 32, i32 30 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 520, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 382, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 393, i32 33 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 397, i32 33 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 401, i32 35 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 404, i32 35 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 407, i32 35 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 410, i32 35 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 413, i32 35 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 419, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant [19 x i8] c"tps6591x_irqs_chip\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 226, i32 33 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 229, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 234, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 253, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant [14 x i8] c"tps65910_irqs\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 154, i32 32 }
@___asan_gen_.175 = private unnamed_addr constant [18 x i8] c"tps65910_irq_chip\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 211, i32 31 }
@___asan_gen_.178 = private unnamed_addr constant [14 x i8] c"tps65911_irqs\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 50, i32 32 }
@___asan_gen_.181 = private unnamed_addr constant [18 x i8] c"tps65911_irq_chip\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 200, i32 31 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 298, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 320, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 329, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 339, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 349, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 34, i32 11 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 37, i32 11 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 40, i32 11 }
@___asan_gen_.229 = private unnamed_addr constant [14 x i8] c"rtc_resources\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 24, i32 30 }
@___asan_gen_.232 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.233 = private constant [26 x i8] c"../drivers/mfd/tps65910.c\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 45, i32 11 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @__initcall__kmod_tps65910__288_547_tps65910_i2c_init4, ptr @tps65910_ck32k_init._entry, ptr @tps65910_ck32k_init._entry_ptr, ptr @tps65910_i2c_probe._entry, ptr @tps65910_i2c_probe._entry.11, ptr @tps65910_i2c_probe._entry.8, ptr @tps65910_i2c_probe._entry_ptr, ptr @tps65910_i2c_probe._entry_ptr.10, ptr @tps65910_i2c_probe._entry_ptr.13, ptr @tps65910_irq_init._entry, ptr @tps65910_irq_init._entry.27, ptr @tps65910_irq_init._entry.30, ptr @tps65910_irq_init._entry_ptr, ptr @tps65910_irq_init._entry_ptr.29, ptr @tps65910_irq_init._entry_ptr.32, ptr @tps65910_parse_dt._entry, ptr @tps65910_parse_dt._entry_ptr, ptr @tps65910_sleepinit._entry, ptr @tps65910_sleepinit._entry.39, ptr @tps65910_sleepinit._entry.42, ptr @tps65910_sleepinit._entry.45, ptr @tps65910_sleepinit._entry_ptr, ptr @tps65910_sleepinit._entry_ptr.41, ptr @tps65910_sleepinit._entry_ptr.44, ptr @tps65910_sleepinit._entry_ptr.47, ptr @tps65910_i2c_driver, ptr @.str, ptr @tps65910_of_match, ptr @tps65910_i2c_id, ptr @.str.1, ptr @tps65910_i2c_probe._key, ptr @tps65910_regmap_config, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @tps65910_i2c_client, ptr @tps65910s, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @tps65910_irq_init.tps6591x_irqs_chip, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @tps65910_irqs, ptr @tps65910_irq_chip, ptr @tps65911_irqs, ptr @tps65911_irq_chip, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @rtc_resources, ptr @.str.51], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_i2c_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_i2c_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_i2c_client to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910s to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_i2c_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_irq_init.tps6591x_irqs_chip to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_irq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_irq_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_irq_init._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_irqs to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65911_irqs to i32), i32 864, i32 1056, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65911_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_ck32k_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_sleepinit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_sleepinit._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_sleepinit._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_sleepinit._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65910_i2c_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tps65910_i2c_driver) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65910_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %prop.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prop.i) #6
  %6 = ptrtoint ptr %prop.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %prop.i, align 4, !annotation !123
  %call.i = tail call ptr @of_match_device(ptr noundef nonnull @tps65910_of_match, ptr noundef %dev) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #9
  br label %if.end.thread147

if.end.i:                                         ; preds = %if.then
  %data.i = getelementptr inbounds %struct.of_device_id, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %9 = ptrtoint ptr %8 to i32
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 152, i32 noundef 3520) #6
  %tobool5.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool5.not.i, label %if.end.i.if.end.thread147_crit_edge, label %if.end7.i

if.end.i.if.end.thread147_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.thread147

if.end7.i:                                        ; preds = %if.end.i
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.16, ptr noundef nonnull %prop.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool9.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool9.not.i, label %if.then10.i, label %if.end7.i.if.end11.i_crit_edge

if.end7.i.if.end11.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %prop.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %prop.i, align 4
  %vmbch_threshold.i = getelementptr inbounds %struct.tps65910_board, ptr %call.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %vmbch_threshold.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %vmbch_threshold.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then10.i, %if.end7.i.if.end11.i_crit_edge
  %call.i.i73.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.17, ptr noundef nonnull %prop.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i73.i)
  %tobool13.not.i = icmp sgt i32 %call.i.i73.i, -1
  br i1 %tobool13.not.i, label %if.then14.i, label %if.end11.i.if.end_crit_edge

if.end11.i.if.end_crit_edge:                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then14.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %prop.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %prop.i, align 4
  %vmbch2_threshold.i = getelementptr inbounds %struct.tps65910_board, ptr %call.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %vmbch2_threshold.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %vmbch2_threshold.i, align 4
  br label %if.end

if.end.thread147:                                 ; preds = %if.end.i.if.end.thread147_crit_edge, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop.i) #6
  br label %cleanup

if.end:                                           ; preds = %if.then14.i, %if.end11.i.if.end_crit_edge
  %call.i74.i = call ptr @of_find_property(ptr noundef nonnull %5, ptr noundef nonnull @.str.18, ptr noundef null) #6
  %tobool.i.i = icmp ne ptr %call.i74.i, null
  %conv.i = zext i1 %tobool.i.i to i32
  %16 = ptrtoint ptr %prop.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv.i, ptr %prop.i, align 4
  %en_ck32k_xtal.i = getelementptr inbounds %struct.tps65910_board, ptr %call.i.i, i32 0, i32 5
  %frombool.i = zext i1 %tobool.i.i to i8
  %17 = ptrtoint ptr %en_ck32k_xtal.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %frombool.i, ptr %en_ck32k_xtal.i, align 4
  %call.i75.i = call ptr @of_find_property(ptr noundef nonnull %5, ptr noundef nonnull @.str.19, ptr noundef null) #6
  %tobool.i76.i = icmp ne ptr %call.i75.i, null
  %conv19.i = zext i1 %tobool.i76.i to i32
  %18 = ptrtoint ptr %prop.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv19.i, ptr %prop.i, align 4
  %en_dev_slp.i = getelementptr inbounds %struct.tps65910_board, ptr %call.i.i, i32 0, i32 6
  %frombool21.i = zext i1 %tobool.i76.i to i8
  %19 = ptrtoint ptr %en_dev_slp.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool21.i, ptr %en_dev_slp.i, align 1
  %call.i77.i = call ptr @of_find_property(ptr noundef nonnull %5, ptr noundef nonnull @.str.20, ptr noundef null) #6
  %tobool.i78.i = icmp ne ptr %call.i77.i, null
  %conv23.i = zext i1 %tobool.i78.i to i32
  %20 = ptrtoint ptr %prop.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv23.i, ptr %prop.i, align 4
  %slp_keepon.i = getelementptr inbounds %struct.tps65910_board, ptr %call.i.i, i32 0, i32 9
  %21 = ptrtoint ptr %slp_keepon.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load.i = load i8, ptr %slp_keepon.i, align 4
  %bf.shl.i = select i1 %tobool.i78.i, i8 -128, i8 0
  %bf.clear.i = and i8 %bf.load.i, 31
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  %call.i79.i = call ptr @of_find_property(ptr noundef nonnull %5, ptr noundef nonnull @.str.21, ptr noundef null) #6
  %tobool.i80.i = icmp ne ptr %call.i79.i, null
  %conv25.i = zext i1 %tobool.i80.i to i32
  %22 = ptrtoint ptr %prop.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv25.i, ptr %prop.i, align 4
  %bf.shl29.i = select i1 %tobool.i80.i, i8 64, i8 0
  %bf.set31.i = or i8 %bf.set.i, %bf.shl29.i
  %call.i81.i = call ptr @of_find_property(ptr noundef nonnull %5, ptr noundef nonnull @.str.22, ptr noundef null) #6
  %tobool.i82.i = icmp ne ptr %call.i81.i, null
  %conv34.i = zext i1 %tobool.i82.i to i32
  %23 = ptrtoint ptr %prop.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv34.i, ptr %prop.i, align 4
  %bf.shl38.i = select i1 %tobool.i82.i, i8 32, i8 0
  %bf.set40.i = or i8 %bf.set31.i, %bf.shl38.i
  %24 = ptrtoint ptr %slp_keepon.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %bf.set40.i, ptr %slp_keepon.i, align 4
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 6
  %25 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq.i, align 4
  %irq42.i = getelementptr inbounds %struct.tps65910_board, ptr %call.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %irq42.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %irq42.i, align 4
  %irq_base.i = getelementptr inbounds %struct.tps65910_board, ptr %call.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %irq_base.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %irq_base.i, align 4
  %call.i83.i = call ptr @of_find_property(ptr noundef nonnull %5, ptr noundef nonnull @.str.23, ptr noundef null) #6
  %tobool.i84.i = icmp ne ptr %call.i83.i, null
  %pm_off.i = getelementptr inbounds %struct.tps65910_board, ptr %call.i.i, i32 0, i32 7
  %frombool44.i = zext i1 %tobool.i84.i to i8
  %29 = ptrtoint ptr %pm_off.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %frombool44.i, ptr %pm_off.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop.i) #6
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  %of_pmic_plat_data.0146 = phi ptr [ %call.i.i, %if.end ], [ null, %entry.if.end6_crit_edge ]
  %pmic_plat_data.0145 = phi ptr [ %call.i.i, %if.end ], [ %3, %entry.if.end6_crit_edge ]
  %chip_id.1144 = phi i32 [ %9, %if.end ], [ %1, %entry.if.end6_crit_edge ]
  %call.i109 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8, i32 noundef 3520) #6
  %cmp = icmp eq ptr %call.i109, null
  br i1 %cmp, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %call.i110 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 28, i32 noundef 3520) #6
  %cmp13 = icmp eq ptr %call.i110, null
  br i1 %cmp13, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %of_plat_data = getelementptr inbounds %struct.tps65910, ptr %call.i110, i32 0, i32 4
  %30 = ptrtoint ptr %of_plat_data to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %of_pmic_plat_data.0146, ptr %of_plat_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %31 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i110, ptr %driver_data.i.i, align 4
  %32 = ptrtoint ptr %call.i110 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %dev, ptr %call.i110, align 4
  %i2c_client = getelementptr inbounds %struct.tps65910, ptr %call.i110, i32 0, i32 1
  %33 = ptrtoint ptr %i2c_client to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %i2c, ptr %i2c_client, align 4
  %id18 = getelementptr inbounds %struct.tps65910, ptr %call.i110, i32 0, i32 3
  %34 = ptrtoint ptr %id18 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %chip_id.1144, ptr %id18, align 4
  %call.i111 = call i32 @i2c_transfer_buffer_flags(ptr noundef %i2c, ptr noundef nonnull @.str.1, i32 noundef 1, i16 noundef zeroext 0) #6
  %call20 = call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @tps65910_regmap_config, ptr noundef nonnull @tps65910_i2c_probe._key, ptr noundef nonnull @.str.2) #6
  %regmap = getelementptr inbounds %struct.tps65910, ptr %call.i110, i32 0, i32 2
  %35 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call20, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then23, label %if.end27

if.then23:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %call20 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %36) #9
  br label %cleanup

if.end27:                                         ; preds = %if.end15
  %irq = getelementptr inbounds %struct.tps65910_board, ptr %pmic_plat_data.0145, i32 0, i32 1
  %37 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %irq, align 4
  %39 = ptrtoint ptr %call.i109 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %call.i109, align 4
  %irq_base = getelementptr inbounds %struct.tps65910_board, ptr %pmic_plat_data.0145, i32 0, i32 2
  %40 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %irq_base, align 4
  %irq_base29 = getelementptr inbounds %struct.tps65910_platform_data, ptr %call.i109, i32 0, i32 1
  %42 = ptrtoint ptr %irq_base29 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %irq_base29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i112 = icmp eq i32 %38, 0
  br i1 %tobool.not.i112, label %do.end.i113, label %if.end7.i115

do.end.i113:                                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %call.i110 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call.i110, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %44, ptr noundef nonnull @.str.24) #9
  br label %tps65910_irq_init.exit

if.end7.i115:                                     ; preds = %if.end27
  %45 = ptrtoint ptr %id18 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %id18, align 4
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values)
  switch i32 %46, label %if.end7.i115.sw.epilog.i_crit_edge [
    i32 0, label %if.end7.i115.sw.epilog.sink.split.i_crit_edge
    i32 1, label %sw.bb8.i
  ]

if.end7.i115.sw.epilog.sink.split.i_crit_edge:    ; preds = %if.end7.i115
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.i

if.end7.i115.sw.epilog.i_crit_edge:               ; preds = %if.end7.i115
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %if.end7.i115
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb8.i, %if.end7.i115.sw.epilog.sink.split.i_crit_edge
  %tps65911_irq_chip.sink.i = phi ptr [ @tps65911_irq_chip, %sw.bb8.i ], [ @tps65910_irq_chip, %if.end7.i115.sw.epilog.sink.split.i_crit_edge ]
  store ptr %tps65911_irq_chip.sink.i, ptr @tps65910_irq_init.tps6591x_irqs_chip, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %if.end7.i115.sw.epilog.i_crit_edge
  %chip_irq.i = getelementptr inbounds %struct.tps65910, ptr %call.i110, i32 0, i32 5
  %48 = ptrtoint ptr %chip_irq.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %38, ptr %chip_irq.i, align 4
  %49 = ptrtoint ptr %call.i110 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call.i110, align 4
  %51 = load ptr, ptr @tps65910_irq_init.tps6591x_irqs_chip, align 4
  %irq_data.i = getelementptr inbounds %struct.tps65910, ptr %call.i110, i32 0, i32 6
  %call11.i = call i32 @devm_regmap_add_irq_chip(ptr noundef %50, ptr noundef %call20, i32 noundef %38, i32 noundef 8192, i32 noundef %41, ptr noundef %51, ptr noundef %irq_data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp.i117 = icmp slt i32 %call11.i, 0
  br i1 %cmp.i117, label %do.end15.i, label %sw.epilog.i.tps65910_irq_init.exit_crit_edge

sw.epilog.i.tps65910_irq_init.exit_crit_edge:     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tps65910_irq_init.exit

do.end15.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %call.i110 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call.i110, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %53, ptr noundef nonnull @.str.31, i32 noundef %call11.i) #9
  %54 = ptrtoint ptr %chip_irq.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %chip_irq.i, align 4
  br label %tps65910_irq_init.exit

tps65910_irq_init.exit:                           ; preds = %do.end15.i, %sw.epilog.i.tps65910_irq_init.exit_crit_edge, %do.end.i113
  %en_ck32k_xtal.i118 = getelementptr inbounds %struct.tps65910_board, ptr %pmic_plat_data.0145, i32 0, i32 5
  %55 = ptrtoint ptr %en_ck32k_xtal.i118 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %en_ck32k_xtal.i118, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i119 = icmp eq i8 %56, 0
  br i1 %tobool.not.i119, label %tps65910_irq_init.exit.tps65910_ck32k_init.exit_crit_edge, label %if.end.i123

tps65910_irq_init.exit.tps65910_ck32k_init.exit_crit_edge: ; preds = %tps65910_irq_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %tps65910_ck32k_init.exit

if.end.i123:                                      ; preds = %tps65910_irq_init.exit
  %57 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap, align 4
  %call.i.i121 = call i32 @regmap_update_bits_base(ptr noundef %58, i32 noundef 63, i32 noundef 32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i121)
  %cmp.i122 = icmp slt i32 %call.i.i121, 0
  br i1 %cmp.i122, label %do.end.i124, label %if.end.i123.tps65910_ck32k_init.exit_crit_edge

if.end.i123.tps65910_ck32k_init.exit_crit_edge:   ; preds = %if.end.i123
  call void @__sanitizer_cov_trace_pc() #8
  br label %tps65910_ck32k_init.exit

do.end.i124:                                      ; preds = %if.end.i123
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %call.i110 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %call.i110, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.35, i32 noundef %call.i.i121) #9
  br label %tps65910_ck32k_init.exit

tps65910_ck32k_init.exit:                         ; preds = %do.end.i124, %if.end.i123.tps65910_ck32k_init.exit_crit_edge, %tps65910_irq_init.exit.tps65910_ck32k_init.exit_crit_edge
  %en_dev_slp.i125 = getelementptr inbounds %struct.tps65910_board, ptr %pmic_plat_data.0145, i32 0, i32 6
  %61 = ptrtoint ptr %en_dev_slp.i125 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %en_dev_slp.i125, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i126 = icmp eq i8 %62, 0
  br i1 %tobool.not.i126, label %tps65910_ck32k_init.exit.tps65910_sleepinit.exit_crit_edge, label %if.end.i130

tps65910_ck32k_init.exit.tps65910_sleepinit.exit_crit_edge: ; preds = %tps65910_ck32k_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %tps65910_sleepinit.exit

if.end.i130:                                      ; preds = %tps65910_ck32k_init.exit
  %63 = ptrtoint ptr %call.i110 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %call.i110, align 4
  %65 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regmap, align 4
  %call.i.i128 = call i32 @regmap_update_bits_base(ptr noundef %66, i32 noundef 63, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i128)
  %cmp.i129 = icmp slt i32 %call.i.i128, 0
  br i1 %cmp.i129, label %do.end.i131, label %if.end3.i

do.end.i131:                                      ; preds = %if.end.i130
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.37, i32 noundef %call.i.i128) #9
  br label %tps65910_sleepinit.exit

if.end3.i:                                        ; preds = %if.end.i130
  %slp_keepon.i132 = getelementptr inbounds %struct.tps65910_board, ptr %pmic_plat_data.0145, i32 0, i32 9
  %67 = ptrtoint ptr %slp_keepon.i132 to i32
  call void @__asan_load1_noabort(i32 %67)
  %bf.load.i133 = load i8, ptr %slp_keepon.i132, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i133)
  %tobool4.not.i = icmp sgt i8 %bf.load.i133, -1
  br i1 %tobool4.not.i, label %if.end3.i.if.end14.i_crit_edge, label %if.then5.i

if.end3.i.if.end14.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i

if.then5.i:                                       ; preds = %if.end3.i
  %68 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regmap, align 4
  %call.i1.i = call i32 @regmap_update_bits_base(ptr noundef %69, i32 noundef 66, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %cmp8.i = icmp slt i32 %call.i1.i, 0
  br i1 %cmp8.i, label %do.end12.i, label %if.then5.i.if.end14.i_crit_edge

if.then5.i.if.end14.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i

do.end12.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.40, i32 noundef %call.i1.i) #9
  br label %disable_dev_slp.i

if.end14.i:                                       ; preds = %if.then5.i.if.end14.i_crit_edge, %if.end3.i.if.end14.i_crit_edge
  %70 = ptrtoint ptr %slp_keepon.i132 to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load16.i = load i8, ptr %slp_keepon.i132, align 4
  %71 = and i8 %bf.load16.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool19.not.i = icmp eq i8 %71, 0
  br i1 %tobool19.not.i, label %if.end14.i.if.end29.i_crit_edge, label %if.then20.i

if.end14.i.if.end29.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i

if.then20.i:                                      ; preds = %if.end14.i
  %72 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap, align 4
  %call.i2.i = call i32 @regmap_update_bits_base(ptr noundef %73, i32 noundef 66, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i)
  %cmp23.i = icmp slt i32 %call.i2.i, 0
  br i1 %cmp23.i, label %do.end27.i, label %if.then20.i.if.end29.i_crit_edge

if.then20.i.if.end29.i_crit_edge:                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i

do.end27.i:                                       ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.43, i32 noundef %call.i2.i) #9
  br label %disable_dev_slp.i

if.end29.i:                                       ; preds = %if.then20.i.if.end29.i_crit_edge, %if.end14.i.if.end29.i_crit_edge
  %74 = ptrtoint ptr %slp_keepon.i132 to i32
  call void @__asan_load1_noabort(i32 %74)
  %bf.load31.i = load i8, ptr %slp_keepon.i132, align 4
  %75 = and i8 %bf.load31.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool35.not.i = icmp eq i8 %75, 0
  br i1 %tobool35.not.i, label %if.end29.i.tps65910_sleepinit.exit_crit_edge, label %if.then36.i

if.end29.i.tps65910_sleepinit.exit_crit_edge:     ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tps65910_sleepinit.exit

if.then36.i:                                      ; preds = %if.end29.i
  %76 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regmap, align 4
  %call.i3.i = call i32 @regmap_update_bits_base(ptr noundef %77, i32 noundef 66, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i)
  %cmp39.i = icmp slt i32 %call.i3.i, 0
  br i1 %cmp39.i, label %do.end43.i, label %if.then36.i.tps65910_sleepinit.exit_crit_edge

if.then36.i.tps65910_sleepinit.exit_crit_edge:    ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tps65910_sleepinit.exit

do.end43.i:                                       ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.46, i32 noundef %call.i3.i) #9
  br label %disable_dev_slp.i

disable_dev_slp.i:                                ; preds = %do.end43.i, %do.end27.i, %do.end12.i
  %78 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regmap, align 4
  %call.i4.i = call i32 @regmap_update_bits_base(ptr noundef %79, i32 noundef 63, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %tps65910_sleepinit.exit

tps65910_sleepinit.exit:                          ; preds = %disable_dev_slp.i, %if.then36.i.tps65910_sleepinit.exit_crit_edge, %if.end29.i.tps65910_sleepinit.exit_crit_edge, %do.end.i131, %tps65910_ck32k_init.exit.tps65910_sleepinit.exit_crit_edge
  %pm_off = getelementptr inbounds %struct.tps65910_board, ptr %pmic_plat_data.0145, i32 0, i32 7
  %80 = ptrtoint ptr %pm_off to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %pm_off, align 2, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool34.not = icmp eq i8 %81, 0
  br i1 %tobool34.not, label %tps65910_sleepinit.exit.if.end47_crit_edge, label %land.lhs.true35

tps65910_sleepinit.exit.if.end47_crit_edge:       ; preds = %tps65910_sleepinit.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

land.lhs.true35:                                  ; preds = %tps65910_sleepinit.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  %82 = load ptr, ptr @pm_power_off, align 4
  %tobool36.not = icmp eq ptr %82, null
  br i1 %tobool36.not, label %if.then37, label %land.lhs.true35.if.end47_crit_edge

land.lhs.true35.if.end47_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then37:                                        ; preds = %land.lhs.true35
  %83 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regmap, align 4
  %call.i134 = call i32 @regmap_update_bits_base(ptr noundef %84, i32 noundef 63, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i134)
  %tobool40.not = icmp eq i32 %call.i134, 0
  br i1 %tobool40.not, label %if.end46, label %do.end44

do.end44:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call.i134) #9
  br label %cleanup

if.end46:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %i2c, ptr @tps65910_i2c_client, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  store ptr @tps65910_power_off, ptr @pm_power_off, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %land.lhs.true35.if.end47_crit_edge, %tps65910_sleepinit.exit.if.end47_crit_edge
  %85 = ptrtoint ptr %call.i110 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %call.i110, align 4
  %irq_data = getelementptr inbounds %struct.tps65910, ptr %call.i110, i32 0, i32 6
  %87 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %irq_data, align 4
  %call49 = call ptr @regmap_irq_get_domain(ptr noundef %88) #6
  %call50 = call i32 @devm_mfd_add_devices(ptr noundef %86, i32 noundef -1, ptr noundef nonnull @tps65910s, i32 noundef 4, ptr noundef null, i32 noundef 0, ptr noundef %call49) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %do.end55, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end55:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %call50) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end55, %if.end47.cleanup_crit_edge, %do.end44, %if.then23, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.thread147, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %36, %if.then23 ], [ %call50, %do.end55 ], [ %call.i134, %do.end44 ], [ -12, %if.end6.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ], [ %call50, %if.end47.cleanup_crit_edge ], [ -22, %if.end.thread147 ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tps65910_power_off() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @tps65910_i2c_client, align 4
  %driver_data.i = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.tps65910, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 63, i32 noundef 5, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_irq_get_domain(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @is_volatile_reg(ptr nocapture noundef readonly %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %reg, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %0)
  %1 = icmp ult i32 %0, 24
  br i1 %1, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %id.i = getelementptr inbounds %struct.tps65910, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3 = icmp eq i32 %5, 0
  %6 = and i32 %reg, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %6)
  %switch = icmp eq i32 %6, 40
  %or.cond13 = and i1 %switch, %cmp3
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %entry.cleanup_crit_edge ], [ %or.cond13, %if.then ]
  ret i1 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regmap_add_irq_chip(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !15, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !70, !72, !74, !76, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !100, !102, !104, !106, !108, !110, !112}
!llvm.module.flags = !{!114, !115, !116, !117, !118, !119, !120, !121}
!llvm.ident = !{!122}

!0 = !{ptr @__initcall__kmod_tps65910__288_547_tps65910_i2c_init4, !1, !"__initcall__kmod_tps65910__288_547_tps65910_i2c_init4", i1 false, i1 false}
!1 = !{!"../drivers/mfd/tps65910.c", i32 547, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/mfd/tps65910.c", i32 535, i32 14}
!4 = !{ptr @tps65910_i2c_driver, !5, !"tps65910_i2c_driver", i1 false, i1 false}
!5 = !{!"../drivers/mfd/tps65910.c", i32 533, i32 26}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/mfd/tps65910.c", i32 482, i32 23}
!8 = !{ptr @tps65910_i2c_probe._key, !9, !"_key", i1 false, i1 false}
!9 = !{!"../drivers/mfd/tps65910.c", i32 483, i32 21}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/mfd/tps65910.c", i32 486, i32 3}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @tps65910_i2c_probe._entry, !12, !"_entry", i1 false, i1 false}
!18 = !{ptr @tps65910_i2c_probe._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/mfd/tps65910.c", i32 506, i32 4}
!21 = !{ptr @tps65910_i2c_probe._entry.8, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @tps65910_i2c_probe._entry_ptr.10, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/mfd/tps65910.c", i32 520, i32 3}
!25 = !{ptr @tps65910_i2c_probe._entry.11, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @tps65910_i2c_probe._entry_ptr.13, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mfd/tps65910.c", i32 382, i32 3}
!29 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @tps65910_parse_dt._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @tps65910_parse_dt._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mfd/tps65910.c", i32 393, i32 33}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mfd/tps65910.c", i32 397, i32 33}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mfd/tps65910.c", i32 401, i32 35}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mfd/tps65910.c", i32 404, i32 35}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mfd/tps65910.c", i32 407, i32 35}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mfd/tps65910.c", i32 410, i32 35}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mfd/tps65910.c", i32 413, i32 35}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mfd/tps65910.c", i32 419, i32 4}
!48 = !{ptr @tps65910_regmap_config, !49, !"tps65910_regmap_config", i1 false, i1 false}
!49 = !{!"../drivers/mfd/tps65910.c", i32 279, i32 35}
!50 = !{ptr @tps65910_irq_init.tps6591x_irqs_chip, !51, !"tps6591x_irqs_chip", i1 false, i1 false}
!51 = !{!"../drivers/mfd/tps65910.c", i32 226, i32 33}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mfd/tps65910.c", i32 229, i32 3}
!54 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @tps65910_irq_init._entry, !53, !"_entry", i1 false, i1 false}
!57 = !{ptr @tps65910_irq_init._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mfd/tps65910.c", i32 234, i32 3}
!60 = !{ptr @tps65910_irq_init._entry.27, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @tps65910_irq_init._entry_ptr.29, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mfd/tps65910.c", i32 253, i32 3}
!64 = !{ptr @tps65910_irq_init._entry.30, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @tps65910_irq_init._entry_ptr.32, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @tps65910_irq_chip, !67, !"tps65910_irq_chip", i1 false, i1 false}
!67 = !{!"../drivers/mfd/tps65910.c", i32 211, i32 31}
!68 = !{ptr @tps65910_irqs, !69, !"tps65910_irqs", i1 false, i1 false}
!69 = !{!"../drivers/mfd/tps65910.c", i32 154, i32 32}
!70 = !{ptr @tps65911_irq_chip, !71, !"tps65911_irq_chip", i1 false, i1 false}
!71 = !{!"../drivers/mfd/tps65910.c", i32 200, i32 31}
!72 = !{ptr @tps65911_irqs, !73, !"tps65911_irqs", i1 false, i1 false}
!73 = !{!"../drivers/mfd/tps65910.c", i32 50, i32 32}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/mfd/tps65910.c", i32 298, i32 3}
!76 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @tps65910_ck32k_init._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @tps65910_ck32k_init._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/mfd/tps65910.c", i32 320, i32 3}
!81 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @tps65910_sleepinit._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @tps65910_sleepinit._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mfd/tps65910.c", i32 329, i32 4}
!86 = !{ptr @tps65910_sleepinit._entry.39, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @tps65910_sleepinit._entry_ptr.41, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/mfd/tps65910.c", i32 339, i32 4}
!90 = !{ptr @tps65910_sleepinit._entry.42, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @tps65910_sleepinit._entry_ptr.44, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/mfd/tps65910.c", i32 349, i32 4}
!94 = !{ptr @tps65910_sleepinit._entry.45, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @tps65910_sleepinit._entry_ptr.47, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @tps65910_i2c_client, !97, !"tps65910_i2c_client", i1 false, i1 false}
!97 = !{!"../drivers/mfd/tps65910.c", i32 432, i32 27}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/mfd/tps65910.c", i32 34, i32 11}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/mfd/tps65910.c", i32 37, i32 11}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/mfd/tps65910.c", i32 40, i32 11}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/mfd/tps65910.c", i32 45, i32 11}
!106 = !{ptr @tps65910s, !107, !"tps65910s", i1 false, i1 false}
!107 = !{!"../drivers/mfd/tps65910.c", i32 32, i32 30}
!108 = !{ptr @rtc_resources, !109, !"rtc_resources", i1 false, i1 false}
!109 = !{!"../drivers/mfd/tps65910.c", i32 24, i32 30}
!110 = !{ptr @tps65910_of_match, !111, !"tps65910_of_match", i1 false, i1 false}
!111 = !{!"../drivers/mfd/tps65910.c", i32 365, i32 34}
!112 = !{ptr @tps65910_i2c_id, !113, !"tps65910_i2c_id", i1 false, i1 false}
!113 = !{!"../drivers/mfd/tps65910.c", i32 527, i32 35}
!114 = !{i32 1, !"wchar_size", i32 2}
!115 = !{i32 1, !"min_enum_size", i32 4}
!116 = !{i32 8, !"branch-target-enforcement", i32 0}
!117 = !{i32 8, !"sign-return-address", i32 0}
!118 = !{i32 8, !"sign-return-address-all", i32 0}
!119 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!120 = !{i32 7, !"uwtable", i32 1}
!121 = !{i32 7, !"frame-pointer", i32 2}
!122 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!123 = !{!"auto-init"}
!124 = !{i8 0, i8 2}
