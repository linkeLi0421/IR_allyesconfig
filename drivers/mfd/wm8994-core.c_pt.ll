; ModuleID = '/llk/IR_all_yes/drivers/mfd/wm8994-core.c_pt.bc'
source_filename = "../drivers/mfd/wm8994-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.reg_sequence = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.wm8994 = type { %struct.wm8994_pdata, i32, i32, i32, ptr, ptr, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr }
%struct.wm8994_pdata = type { i32, [11 x i32], [2 x %struct.wm8994_ldo_pdata], i32, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, i8, i32, i32, i32, i8, [2 x i32], i16, i8, i8, i8, [3 x i32], i32 }
%struct.wm8994_ldo_pdata = type { ptr }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }

@__initcall__kmod_wm8994__290_693_wm8994_i2c_driver_init6 = internal global ptr @wm8994_i2c_driver_init, section ".initcall6.init", align 4
@wm8994_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @wm8994_i2c_probe, ptr @wm8994_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @wm8994_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8994_pm_ops, ptr null, ptr null }, ptr @wm8994_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_wm8994_i2c_driver_exit = internal global ptr @wm8994_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description291 = internal constant [59 x i8] c"wm8994.description=Core support for the WM8994 audio CODEC\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [31 x i8] c"wm8994.file=drivers/mfd/wm8994\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [19 x i8] c"wm8994.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [63 x i8] c"wm8994.author=Mark Brown <broonie@opensource.wolfsonmicro.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_softdep295 = internal constant [37 x i8] c"wm8994.softdep=pre: wm8994_regulator\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wm8994\00", [25 x i8] zeroinitializer }, align 32
@wm8994_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"wlf,wm1811\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"wlf,wm8994\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"wlf,wm8958\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@wm8994_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8994_suspend, ptr @wm8994_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@wm8994_i2c_id = internal constant { [5 x %struct.i2c_device_id], [40 x i8] } { [5 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"wm1811\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"wm1811a\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"wm8994\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"wm8958\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@wm8994_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@wm8994_base_regmap_config = external dso_local global %struct.regmap_config, align 4
@.str.1 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"wm8994_core:649:(&wm8994_base_regmap_config)->lock\00", [45 x i8] zeroinitializer }, align 32
@wm8994_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 653, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm8994_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/mfd/wm8994-core.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wm8994_i2c_probe._entry_ptr = internal global ptr @wm8994_i2c_probe._entry, section ".printk_index", align 4
@wm8994_regulator_devs = internal constant { [2 x %struct.mfd_cell], [48 x i8] } { [2 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.65, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 1, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.65, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 1, ptr null, i32 0 }], [48 x i8] zeroinitializer }, align 32
@wm8994_device_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 342, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to add children: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wm8994_device_init\00", [45 x i8] zeroinitializer }, align 32
@wm8994_device_init._entry_ptr = internal global ptr @wm8994_device_init._entry, section ".printk_index", align 4
@wm8994_device_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.4, i32 398, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to get supplies: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@wm8994_device_init._entry_ptr.11 = internal global ptr @wm8994_device_init._entry.9, section ".printk_index", align 4
@wm8994_device_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.4, i32 404, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to enable supplies: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@wm8994_device_init._entry_ptr.14 = internal global ptr @wm8994_device_init._entry.12, section ".printk_index", align 4
@wm8994_device_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.8, ptr @.str.4, i32 410, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to read ID register\0A\00", [36 x i8] zeroinitializer }, align 32
@wm8994_device_init._entry_ptr.17 = internal global ptr @wm8994_device_init._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"WM1811\00", [25 x i8] zeroinitializer }, align 32
@wm8994_device_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.8, ptr @.str.4, i32 418, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Device registered as type %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@wm8994_device_init._entry_ptr.22 = internal global ptr @wm8994_device_init._entry.19, section ".printk_index", align 4
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"WM8994\00", [25 x i8] zeroinitializer }, align 32
@wm8994_device_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.8, ptr @.str.4, i32 425, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@wm8994_device_init._entry_ptr.25 = internal global ptr @wm8994_device_init._entry.24, section ".printk_index", align 4
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"WM8958\00", [25 x i8] zeroinitializer }, align 32
@wm8994_device_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.8, ptr @.str.4, i32 432, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@wm8994_device_init._entry_ptr.28 = internal global ptr @wm8994_device_init._entry.27, section ".printk_index", align 4
@wm8994_device_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.8, ptr @.str.4, i32 437, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Device is not a WM8994, ID is %x\0A\00", [62 x i8] zeroinitializer }, align 32
@wm8994_device_init._entry_ptr.31 = internal global ptr @wm8994_device_init._entry.29, section ".printk_index", align 4
@wm8994_device_init._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.8, ptr @.str.4, i32 445, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to read revision register: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@wm8994_device_init._entry_ptr.34 = internal global ptr @wm8994_device_init._entry.32, section ".printk_index", align 4
@wm8994_device_init._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.8, ptr @.str.4, i32 458, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"revision %c not fully supported\0A\00", [63 x i8] zeroinitializer }, align 32
@wm8994_device_init._entry_ptr.37 = internal global ptr @wm8994_device_init._entry.35, section ".printk_index", align 4
@wm8994_revc_patch = internal constant { [4 x %struct.reg_sequence], [48 x i8] } { [4 x %struct.reg_sequence] [%struct.reg_sequence { i32 258, i32 3, i32 0 }, %struct.reg_sequence { i32 86, i32 3, i32 0 }, %struct.reg_sequence { i32 2071, i32 0, i32 0 }, %struct.reg_sequence { i32 258, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@wm8958_reva_patch = internal constant { [4 x %struct.reg_sequence], [48 x i8] } { [4 x %struct.reg_sequence] [%struct.reg_sequence { i32 258, i32 3, i32 0 }, %struct.reg_sequence { i32 203, i32 129, i32 0 }, %struct.reg_sequence { i32 2071, i32 0, i32 0 }, %struct.reg_sequence { i32 258, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@wm1811_reva_patch = internal constant { [5 x %struct.reg_sequence], [36 x i8] } { [5 x %struct.reg_sequence] [%struct.reg_sequence { i32 258, i32 3, i32 0 }, %struct.reg_sequence { i32 86, i32 3079, i32 0 }, %struct.reg_sequence { i32 93, i32 126, i32 0 }, %struct.reg_sequence { i32 94, i32 0, i32 0 }, %struct.reg_sequence { i32 258, i32 0, i32 0 }], [36 x i8] zeroinitializer }, align 32
@wm8994_device_init._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.8, ptr @.str.4, i32 494, ptr @.str.40, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s revision %c CUST_ID %02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@wm8994_device_init._entry_ptr.41 = internal global ptr @wm8994_device_init._entry.38, section ".printk_index", align 4
@wm1811_regmap_config = external dso_local global %struct.regmap_config, align 4
@wm8994_regmap_config = external dso_local global %struct.regmap_config, align 4
@wm8958_regmap_config = external dso_local global %struct.regmap_config, align 4
@wm8994_device_init._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.8, ptr @.str.4, i32 507, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unknown device type %d\0A\00", [40 x i8] zeroinitializer }, align 32
@wm8994_device_init._entry_ptr.44 = internal global ptr @wm8994_device_init._entry.42, section ".printk_index", align 4
@wm8994_device_init._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.8, ptr @.str.4, i32 515, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to reinit register cache: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@wm8994_device_init._entry_ptr.47 = internal global ptr @wm8994_device_init._entry.45, section ".printk_index", align 4
@wm8994_device_init._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.8, ptr @.str.4, i32 526, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to reset device: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@wm8994_device_init._entry_ptr.50 = internal global ptr @wm8994_device_init._entry.48, section ".printk_index", align 4
@wm8994_device_init._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.8, ptr @.str.4, i32 535, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to register patch: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@wm8994_device_init._entry_ptr.53 = internal global ptr @wm8994_device_init._entry.51, section ".printk_index", align 4
@wm8994_devs = internal constant { [2 x %struct.mfd_cell], [48 x i8] } { [2 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.76, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @wm8994_codec_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.77, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @wm8994_gpio_resources, i8 0, i8 1, ptr null, i32 0 }], [48 x i8] zeroinitializer }, align 32
@wm8994_device_init._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 585, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@wm8994_device_init._entry_ptr.55 = internal global ptr @wm8994_device_init._entry.54, section ".printk_index", align 4
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wlf,gpio-cfg\00", [19 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wlf,micbias-cfg\00", [16 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wlf,lineout1-se\00", [16 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wlf,lineout2-se\00", [16 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wlf,lineout1-feedback\00", [42 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wlf,lineout2-feedback\00", [42 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wlf,ldoena-always-driven\00", [39 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wlf,spkmode-pu\00", [17 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wlf,csnaddr-pd\00", [17 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wm8994-ldo\00", [21 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DBVDD1\00", [25 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DBVDD2\00", [25 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DBVDD3\00", [25 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DCVDD\00", [26 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AVDD1\00", [26 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AVDD2\00", [26 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CPVDD\00", [26 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SPKVDD1\00", [24 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SPKVDD2\00", [24 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DBVDD\00", [26 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wm8994-codec\00", [19 x i8] zeroinitializer }, align 32
@wm8994_codec_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 0, i32 15, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm8994-gpio\00", [20 x i8] zeroinitializer }, align 32
@wm8994_gpio_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 16, i32 26, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@wm8994_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.4, i32 126, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to read power status: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wm8994_suspend\00", [17 x i8] zeroinitializer }, align 32
@wm8994_suspend._entry_ptr = internal global ptr @wm8994_suspend._entry, section ".printk_index", align 4
@wm8994_suspend.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.4, ptr @.str.80, i8 0, i8 32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"CODEC still active, ignoring suspend\0A\00", [58 x i8] zeroinitializer }, align 32
@wm8994_suspend._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.79, ptr @.str.4, i32 157, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to restore GPIO registers: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@wm8994_suspend._entry_ptr.83 = internal global ptr @wm8994_suspend._entry.81, section ".printk_index", align 4
@wm8994_suspend._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.79, ptr @.str.4, i32 164, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to restore interrupt mask: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@wm8994_suspend._entry_ptr.86 = internal global ptr @wm8994_suspend._entry.84, section ".printk_index", align 4
@wm8994_suspend._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.79, ptr @.str.4, i32 172, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to disable supplies: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@wm8994_suspend._entry_ptr.89 = internal global ptr @wm8994_suspend._entry.87, section ".printk_index", align 4
@wm8994_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.90, ptr @.str.4, i32 191, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wm8994_resume\00", [18 x i8] zeroinitializer }, align 32
@wm8994_resume._entry_ptr = internal global ptr @wm8994_resume._entry, section ".printk_index", align 4
@wm8994_resume._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.90, ptr @.str.4, i32 198, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to restore register map: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@wm8994_resume._entry_ptr.93 = internal global ptr @wm8994_resume._entry.91, section ".printk_index", align 4
@switch.table.wm8994_i2c_probe = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 7, i32 9, i32 9], [20 x i8] zeroinitializer }, align 32
@switch.table.wm8994_i2c_probe.94 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @wm8994_regmap_config, ptr @wm8958_regmap_config, ptr @wm1811_regmap_config], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.96 = internal global [5 x i64] [i64 3, i64 32, i64 6161, i64 35160, i64 35220]
@__sancov_gen_cov_switch_values.97 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.98 = private unnamed_addr constant [18 x i8] c"wm8994_i2c_driver\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 682, i32 26 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 684, i32 11 }
@___asan_gen_.104 = private unnamed_addr constant [16 x i8] c"wm8994_of_match\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 618, i32 34 }
@___asan_gen_.107 = private unnamed_addr constant [14 x i8] c"wm8994_pm_ops\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 678, i32 32 }
@___asan_gen_.110 = private unnamed_addr constant [14 x i8] c"wm8994_i2c_id\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 669, i32 35 }
@___asan_gen_.113 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 649, i32 19 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 652, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant [22 x i8] c"wm8994_regulator_devs\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 30, i32 30 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 342, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 397, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 404, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 410, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 415, i32 13 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 417, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 422, i32 13 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 424, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 429, i32 13 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 431, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 436, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 444, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 456, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant [18 x i8] c"wm8994_revc_patch\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 240, i32 34 }
@___asan_gen_.212 = private unnamed_addr constant [18 x i8] c"wm8958_reva_patch\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 247, i32 34 }
@___asan_gen_.215 = private unnamed_addr constant [18 x i8] c"wm1811_reva_patch\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 254, i32 34 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 493, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 507, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 514, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 526, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 534, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant [12 x i8] c"wm8994_devs\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 59, i32 30 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 585, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 272, i32 37 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 281, i32 33 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 286, i32 27 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 288, i32 27 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 291, i32 27 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 293, i32 27 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 296, i32 27 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 299, i32 48 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 301, i32 48 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 32, i32 11 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 80, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 81, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 82, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 83, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 84, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 85, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 86, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 87, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 88, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 92, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 61, i32 11 }
@___asan_gen_.320 = private unnamed_addr constant [23 x i8] c"wm8994_codec_resources\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 43, i32 30 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 67, i32 11 }
@___asan_gen_.326 = private unnamed_addr constant [22 x i8] c"wm8994_gpio_resources\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 51, i32 30 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 126, i32 4 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 128, i32 4 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 157, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 164, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 172, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 191, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.368 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.369 = private constant [29 x i8] c"../drivers/mfd/wm8994-core.c\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 198, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant [30 x i8] c"switch.table.wm8994_i2c_probe\00", align 1
@___asan_gen_.372 = private unnamed_addr constant [33 x i8] c"switch.table.wm8994_i2c_probe.94\00", align 1
@llvm.compiler.used = appending global [124 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__UNIQUE_ID_softdep295, ptr @__exitcall_wm8994_i2c_driver_exit, ptr @__initcall__kmod_wm8994__290_693_wm8994_i2c_driver_init6, ptr @wm8994_device_init._entry, ptr @wm8994_device_init._entry.12, ptr @wm8994_device_init._entry.15, ptr @wm8994_device_init._entry.19, ptr @wm8994_device_init._entry.24, ptr @wm8994_device_init._entry.27, ptr @wm8994_device_init._entry.29, ptr @wm8994_device_init._entry.32, ptr @wm8994_device_init._entry.35, ptr @wm8994_device_init._entry.38, ptr @wm8994_device_init._entry.42, ptr @wm8994_device_init._entry.45, ptr @wm8994_device_init._entry.48, ptr @wm8994_device_init._entry.51, ptr @wm8994_device_init._entry.54, ptr @wm8994_device_init._entry.9, ptr @wm8994_device_init._entry_ptr, ptr @wm8994_device_init._entry_ptr.11, ptr @wm8994_device_init._entry_ptr.14, ptr @wm8994_device_init._entry_ptr.17, ptr @wm8994_device_init._entry_ptr.22, ptr @wm8994_device_init._entry_ptr.25, ptr @wm8994_device_init._entry_ptr.28, ptr @wm8994_device_init._entry_ptr.31, ptr @wm8994_device_init._entry_ptr.34, ptr @wm8994_device_init._entry_ptr.37, ptr @wm8994_device_init._entry_ptr.41, ptr @wm8994_device_init._entry_ptr.44, ptr @wm8994_device_init._entry_ptr.47, ptr @wm8994_device_init._entry_ptr.50, ptr @wm8994_device_init._entry_ptr.53, ptr @wm8994_device_init._entry_ptr.55, ptr @wm8994_i2c_driver_exit, ptr @wm8994_i2c_probe._entry, ptr @wm8994_i2c_probe._entry_ptr, ptr @wm8994_resume._entry, ptr @wm8994_resume._entry.91, ptr @wm8994_resume._entry_ptr, ptr @wm8994_resume._entry_ptr.93, ptr @wm8994_suspend._entry, ptr @wm8994_suspend._entry.81, ptr @wm8994_suspend._entry.84, ptr @wm8994_suspend._entry.87, ptr @wm8994_suspend._entry_ptr, ptr @wm8994_suspend._entry_ptr.83, ptr @wm8994_suspend._entry_ptr.86, ptr @wm8994_suspend._entry_ptr.89, ptr @wm8994_i2c_driver, ptr @.str, ptr @wm8994_of_match, ptr @wm8994_pm_ops, ptr @wm8994_i2c_id, ptr @wm8994_i2c_probe._key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @wm8994_regulator_devs, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @wm8994_revc_patch, ptr @wm8958_reva_patch, ptr @wm1811_reva_patch, ptr @.str.39, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @wm8994_devs, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @wm8994_codec_resources, ptr @.str.77, ptr @wm8994_gpio_resources, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.90, ptr @.str.92, ptr @switch.table.wm8994_i2c_probe, ptr @switch.table.wm8994_i2c_probe.94], section "llvm.metadata"
@0 = internal global [93 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_i2c_id to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_regulator_devs to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_device_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_device_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_device_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_device_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_device_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_device_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_device_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_device_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_device_init._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_device_init._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_revc_patch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8958_reva_patch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm1811_reva_patch to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_device_init._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_device_init._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_device_init._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_device_init._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_device_init._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_devs to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_device_init._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_codec_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_gpio_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_suspend._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_suspend._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_suspend._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_resume._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wm8994_i2c_probe to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wm8994_i2c_probe.94 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8994_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @wm8994_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wm8994_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @wm8994_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8994_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %val.i10.i = alloca i32, align 4
  %val.i3.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 240, i32 noundef 3520) #7
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %dev2 = getelementptr inbounds %struct.wm8994, ptr %call.i, i32 0, i32 4
  %1 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %dev2, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 6
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %irq3 = getelementptr inbounds %struct.wm8994, ptr %call.i, i32 0, i32 9
  %4 = ptrtoint ptr %irq3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %irq3, align 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  %call7 = tail call ptr @of_match_device(ptr noundef nonnull @wm8994_of_match, ptr noundef %dev) #7
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.then5.if.end12_crit_edge, label %if.then9

if.then5.if.end12_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then9:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %data = getelementptr inbounds %struct.of_device_id, ptr %call7, i32 0, i32 3
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %9 = ptrtoint ptr %8 to i32
  br label %if.end12.sink.split

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %10 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %driver_data, align 4
  br label %if.end12.sink.split

if.end12.sink.split:                              ; preds = %if.else, %if.then9
  %.sink = phi i32 [ %9, %if.then9 ], [ %11, %if.else ]
  %type = getelementptr inbounds %struct.wm8994, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink, ptr %type, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end12.sink.split, %if.then5.if.end12_crit_edge
  %call13 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @wm8994_base_regmap_config, ptr noundef nonnull @wm8994_i2c_probe._key, ptr noundef nonnull @.str.1) #7
  %regmap = getelementptr inbounds %struct.wm8994, ptr %call.i, i32 0, i32 5
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call13, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end20

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %call13 to i32
  %15 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.2, i32 noundef %14) #10
  br label %cleanup

if.end20:                                         ; preds = %if.end12
  %17 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev2, align 4
  %platform_data.i.i = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %platform_data.i.i, align 8
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.end20.if.end.i_crit_edge, label %if.then.i

if.end20.if.end.i_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %21 = call ptr @memcpy(ptr %call.i, ptr %20, i32 180)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end20.if.end.i_crit_edge
  %of_node.i.i = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 27
  %22 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i, label %if.end.i.wm8994_set_pdata_from_of.exit.i_crit_edge, label %if.end.i.i

if.end.i.wm8994_set_pdata_from_of.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %wm8994_set_pdata_from_of.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  %gpio_defaults.i.i = getelementptr %struct.wm8994_pdata, ptr %call.i, i32 0, i32 1
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %23, ptr noundef nonnull @.str.56, ptr noundef %gpio_defaults.i.i, i32 noundef 11, i32 noundef 0) #7
  %24 = tail call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp.i.i = icmp sgt i32 %24, -1
  br i1 %cmp.i.i, label %for.body.preheader.i.i, label %if.end.i.i.if.end11.i.i_crit_edge

if.end.i.i.if.end11.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i

for.body.preheader.i.i:                           ; preds = %if.end.i.i
  %25 = ptrtoint ptr %gpio_defaults.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %gpio_defaults.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp6.i.i = icmp eq i32 %26, 0
  br i1 %cmp6.i.i, label %if.then7.i.i, label %for.body.preheader.i.i.for.inc.i.i_crit_edge

for.body.preheader.i.i.for.inc.i.i_crit_edge:     ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.then7.i.i:                                     ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %gpio_defaults.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 65536, ptr %gpio_defaults.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then7.i.i, %for.body.preheader.i.i.for.inc.i.i_crit_edge
  %arrayidx.1.i.i = getelementptr %struct.wm8994_pdata, ptr %call.i, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp6.1.i.i = icmp eq i32 %29, 0
  br i1 %cmp6.1.i.i, label %if.then7.1.i.i, label %for.inc.i.i.for.inc.1.i.i_crit_edge

for.inc.i.i.for.inc.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i.i

if.then7.1.i.i:                                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 65536, ptr %arrayidx.1.i.i, align 4
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.then7.1.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge
  %arrayidx.2.i.i = getelementptr %struct.wm8994_pdata, ptr %call.i, i32 0, i32 1, i32 2
  %31 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp6.2.i.i = icmp eq i32 %32, 0
  br i1 %cmp6.2.i.i, label %if.then7.2.i.i, label %for.inc.1.i.i.for.inc.2.i.i_crit_edge

for.inc.1.i.i.for.inc.2.i.i_crit_edge:            ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i.i

if.then7.2.i.i:                                   ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 65536, ptr %arrayidx.2.i.i, align 4
  br label %for.inc.2.i.i

for.inc.2.i.i:                                    ; preds = %if.then7.2.i.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge
  %arrayidx.3.i.i = getelementptr %struct.wm8994_pdata, ptr %call.i, i32 0, i32 1, i32 3
  %34 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp6.3.i.i = icmp eq i32 %35, 0
  br i1 %cmp6.3.i.i, label %if.then7.3.i.i, label %for.inc.2.i.i.for.inc.3.i.i_crit_edge

for.inc.2.i.i.for.inc.3.i.i_crit_edge:            ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.i.i

if.then7.3.i.i:                                   ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 65536, ptr %arrayidx.3.i.i, align 4
  br label %for.inc.3.i.i

for.inc.3.i.i:                                    ; preds = %if.then7.3.i.i, %for.inc.2.i.i.for.inc.3.i.i_crit_edge
  %arrayidx.4.i.i = getelementptr %struct.wm8994_pdata, ptr %call.i, i32 0, i32 1, i32 4
  %37 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.4.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp6.4.i.i = icmp eq i32 %38, 0
  br i1 %cmp6.4.i.i, label %if.then7.4.i.i, label %for.inc.3.i.i.for.inc.4.i.i_crit_edge

for.inc.3.i.i.for.inc.4.i.i_crit_edge:            ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4.i.i

if.then7.4.i.i:                                   ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 65536, ptr %arrayidx.4.i.i, align 4
  br label %for.inc.4.i.i

for.inc.4.i.i:                                    ; preds = %if.then7.4.i.i, %for.inc.3.i.i.for.inc.4.i.i_crit_edge
  %arrayidx.5.i.i = getelementptr %struct.wm8994_pdata, ptr %call.i, i32 0, i32 1, i32 5
  %40 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp6.5.i.i = icmp eq i32 %41, 0
  br i1 %cmp6.5.i.i, label %if.then7.5.i.i, label %for.inc.4.i.i.for.inc.5.i.i_crit_edge

for.inc.4.i.i.for.inc.5.i.i_crit_edge:            ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5.i.i

if.then7.5.i.i:                                   ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 65536, ptr %arrayidx.5.i.i, align 4
  br label %for.inc.5.i.i

for.inc.5.i.i:                                    ; preds = %if.then7.5.i.i, %for.inc.4.i.i.for.inc.5.i.i_crit_edge
  %arrayidx.6.i.i = getelementptr %struct.wm8994_pdata, ptr %call.i, i32 0, i32 1, i32 6
  %43 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.6.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp6.6.i.i = icmp eq i32 %44, 0
  br i1 %cmp6.6.i.i, label %if.then7.6.i.i, label %for.inc.5.i.i.for.inc.6.i.i_crit_edge

for.inc.5.i.i.for.inc.6.i.i_crit_edge:            ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6.i.i

if.then7.6.i.i:                                   ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 65536, ptr %arrayidx.6.i.i, align 4
  br label %for.inc.6.i.i

for.inc.6.i.i:                                    ; preds = %if.then7.6.i.i, %for.inc.5.i.i.for.inc.6.i.i_crit_edge
  %arrayidx.7.i.i = getelementptr %struct.wm8994_pdata, ptr %call.i, i32 0, i32 1, i32 7
  %46 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.7.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp6.7.i.i = icmp eq i32 %47, 0
  br i1 %cmp6.7.i.i, label %if.then7.7.i.i, label %for.inc.6.i.i.for.inc.7.i.i_crit_edge

for.inc.6.i.i.for.inc.7.i.i_crit_edge:            ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.7.i.i

if.then7.7.i.i:                                   ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 65536, ptr %arrayidx.7.i.i, align 4
  br label %for.inc.7.i.i

for.inc.7.i.i:                                    ; preds = %if.then7.7.i.i, %for.inc.6.i.i.for.inc.7.i.i_crit_edge
  %arrayidx.8.i.i = getelementptr %struct.wm8994_pdata, ptr %call.i, i32 0, i32 1, i32 8
  %49 = ptrtoint ptr %arrayidx.8.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp6.8.i.i = icmp eq i32 %50, 0
  br i1 %cmp6.8.i.i, label %if.then7.8.i.i, label %for.inc.7.i.i.for.inc.8.i.i_crit_edge

for.inc.7.i.i.for.inc.8.i.i_crit_edge:            ; preds = %for.inc.7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.8.i.i

if.then7.8.i.i:                                   ; preds = %for.inc.7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %arrayidx.8.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 65536, ptr %arrayidx.8.i.i, align 4
  br label %for.inc.8.i.i

for.inc.8.i.i:                                    ; preds = %if.then7.8.i.i, %for.inc.7.i.i.for.inc.8.i.i_crit_edge
  %arrayidx.9.i.i = getelementptr %struct.wm8994_pdata, ptr %call.i, i32 0, i32 1, i32 9
  %52 = ptrtoint ptr %arrayidx.9.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.9.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp6.9.i.i = icmp eq i32 %53, 0
  br i1 %cmp6.9.i.i, label %if.then7.9.i.i, label %for.inc.8.i.i.for.inc.9.i.i_crit_edge

for.inc.8.i.i.for.inc.9.i.i_crit_edge:            ; preds = %for.inc.8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.9.i.i

if.then7.9.i.i:                                   ; preds = %for.inc.8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %arrayidx.9.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 65536, ptr %arrayidx.9.i.i, align 4
  br label %for.inc.9.i.i

for.inc.9.i.i:                                    ; preds = %if.then7.9.i.i, %for.inc.8.i.i.for.inc.9.i.i_crit_edge
  %arrayidx.10.i.i = getelementptr %struct.wm8994_pdata, ptr %call.i, i32 0, i32 1, i32 10
  %55 = ptrtoint ptr %arrayidx.10.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.10.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp6.10.i.i = icmp eq i32 %56, 0
  br i1 %cmp6.10.i.i, label %if.then7.10.i.i, label %for.inc.9.i.i.if.end11.i.i_crit_edge

for.inc.9.i.i.if.end11.i.i_crit_edge:             ; preds = %for.inc.9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i

if.then7.10.i.i:                                  ; preds = %for.inc.9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %arrayidx.10.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 65536, ptr %arrayidx.10.i.i, align 4
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then7.10.i.i, %for.inc.9.i.i.if.end11.i.i_crit_edge, %if.end.i.i.if.end11.i.i_crit_edge
  %micbias.i.i = getelementptr inbounds %struct.wm8994_pdata, ptr %call.i, i32 0, i32 26
  %call.i1.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %23, ptr noundef nonnull @.str.57, ptr noundef %micbias.i.i, i32 noundef 2, i32 noundef 0) #7
  %lineout1_diff.i.i = getelementptr inbounds %struct.wm8994_pdata, ptr %call.i, i32 0, i32 21
  %58 = ptrtoint ptr %lineout1_diff.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load.i.i = load i8, ptr %lineout1_diff.i.i, align 4
  %bf.set16.i.i = or i8 %bf.load.i.i, -64
  store i8 %bf.set16.i.i, ptr %lineout1_diff.i.i, align 4
  %call17.i.i = tail call ptr @of_find_property(ptr noundef nonnull %23, ptr noundef nonnull @.str.58, ptr noundef null) #7
  %tobool18.not.i.i = icmp eq ptr %call17.i.i, null
  br i1 %tobool18.not.i.i, label %if.end11.i.i.if.end24.i.i_crit_edge, label %if.then19.i.i

if.end11.i.i.if.end24.i.i_crit_edge:              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i.i

if.then19.i.i:                                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %lineout1_diff.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load21.i.i = load i8, ptr %lineout1_diff.i.i, align 4
  %bf.clear22.i.i = and i8 %bf.load21.i.i, 127
  store i8 %bf.clear22.i.i, ptr %lineout1_diff.i.i, align 4
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.then19.i.i, %if.end11.i.i.if.end24.i.i_crit_edge
  %call25.i.i = tail call ptr @of_find_property(ptr noundef nonnull %23, ptr noundef nonnull @.str.59, ptr noundef null) #7
  %tobool26.not.i.i = icmp eq ptr %call25.i.i, null
  br i1 %tobool26.not.i.i, label %if.end24.i.i.if.end32.i.i_crit_edge, label %if.then27.i.i

if.end24.i.i.if.end32.i.i_crit_edge:              ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i.i

if.then27.i.i:                                    ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %lineout1_diff.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load29.i.i = load i8, ptr %lineout1_diff.i.i, align 4
  %bf.clear30.i.i = and i8 %bf.load29.i.i, -65
  store i8 %bf.clear30.i.i, ptr %lineout1_diff.i.i, align 4
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %if.then27.i.i, %if.end24.i.i.if.end32.i.i_crit_edge
  %call33.i.i = tail call ptr @of_find_property(ptr noundef nonnull %23, ptr noundef nonnull @.str.60, ptr noundef null) #7
  %tobool34.not.i.i = icmp eq ptr %call33.i.i, null
  br i1 %tobool34.not.i.i, label %if.end32.i.i.if.end39.i.i_crit_edge, label %if.then35.i.i

if.end32.i.i.if.end39.i.i_crit_edge:              ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i.i

if.then35.i.i:                                    ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %lineout1_diff.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load36.i.i = load i8, ptr %lineout1_diff.i.i, align 4
  %bf.set38.i.i = or i8 %bf.load36.i.i, 32
  store i8 %bf.set38.i.i, ptr %lineout1_diff.i.i, align 4
  br label %if.end39.i.i

if.end39.i.i:                                     ; preds = %if.then35.i.i, %if.end32.i.i.if.end39.i.i_crit_edge
  %call40.i.i = tail call ptr @of_find_property(ptr noundef nonnull %23, ptr noundef nonnull @.str.61, ptr noundef null) #7
  %tobool41.not.i.i = icmp eq ptr %call40.i.i, null
  br i1 %tobool41.not.i.i, label %if.end39.i.i.if.end46.i.i_crit_edge, label %if.then42.i.i

if.end39.i.i.if.end46.i.i_crit_edge:              ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.i.i

if.then42.i.i:                                    ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %lineout1_diff.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %bf.load43.i.i = load i8, ptr %lineout1_diff.i.i, align 4
  %bf.set45.i.i = or i8 %bf.load43.i.i, 16
  store i8 %bf.set45.i.i, ptr %lineout1_diff.i.i, align 4
  br label %if.end46.i.i

if.end46.i.i:                                     ; preds = %if.then42.i.i, %if.end39.i.i.if.end46.i.i_crit_edge
  %call47.i.i = tail call ptr @of_find_property(ptr noundef nonnull %23, ptr noundef nonnull @.str.62, ptr noundef null) #7
  %tobool48.not.i.i = icmp eq ptr %call47.i.i, null
  br i1 %tobool48.not.i.i, label %if.end46.i.i.if.end54.i.i_crit_edge, label %if.then49.i.i

if.end46.i.i.if.end54.i.i_crit_edge:              ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54.i.i

if.then49.i.i:                                    ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %lineout1_diff.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %bf.load51.i.i = load i8, ptr %lineout1_diff.i.i, align 4
  %bf.set53.i.i = or i8 %bf.load51.i.i, 16
  store i8 %bf.set53.i.i, ptr %lineout1_diff.i.i, align 4
  br label %if.end54.i.i

if.end54.i.i:                                     ; preds = %if.then49.i.i, %if.end46.i.i.if.end54.i.i_crit_edge
  %call.i2.i.i = tail call ptr @of_find_property(ptr noundef nonnull %23, ptr noundef nonnull @.str.63, ptr noundef null) #7
  %tobool.i.i.i = icmp ne ptr %call.i2.i.i, null
  %spkmode_pu.i.i = getelementptr inbounds %struct.wm8994_pdata, ptr %call.i, i32 0, i32 29
  %frombool.i.i = zext i1 %tobool.i.i.i to i8
  %64 = ptrtoint ptr %spkmode_pu.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %frombool.i.i, ptr %spkmode_pu.i.i, align 1
  %call.i3.i.i = tail call ptr @of_find_property(ptr noundef nonnull %23, ptr noundef nonnull @.str.64, ptr noundef null) #7
  %tobool.i4.i.i = icmp ne ptr %call.i3.i.i, null
  %csnaddr_pd.i.i = getelementptr inbounds %struct.wm8994_pdata, ptr %call.i, i32 0, i32 30
  %frombool57.i.i = zext i1 %tobool.i4.i.i to i8
  %65 = ptrtoint ptr %csnaddr_pd.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %frombool57.i.i, ptr %csnaddr_pd.i.i, align 4
  br label %wm8994_set_pdata_from_of.exit.i

wm8994_set_pdata_from_of.exit.i:                  ; preds = %if.end54.i.i, %if.end.i.wm8994_set_pdata_from_of.exit.i_crit_edge
  %66 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev2, align 4
  %driver_data.i.i44 = getelementptr inbounds %struct.device, ptr %67, i32 0, i32 8
  %68 = ptrtoint ptr %driver_data.i.i44 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call.i, ptr %driver_data.i.i44, align 4
  %69 = load ptr, ptr %dev2, align 4
  %call10.i = tail call i32 @mfd_add_devices(ptr noundef %69, i32 noundef 0, ptr noundef nonnull @wm8994_regulator_devs, i32 noundef 2, ptr noundef null, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.not.i = icmp eq i32 %call10.i, 0
  br i1 %cmp11.not.i, label %if.end14.i, label %do.end.i

do.end.i:                                         ; preds = %wm8994_set_pdata_from_of.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.7, i32 noundef %call10.i) #10
  br label %err.i

if.end14.i:                                       ; preds = %wm8994_set_pdata_from_of.exit.i
  %type.i = getelementptr inbounds %struct.wm8994, ptr %call.i, i32 0, i32 1
  %72 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %73)
  %74 = icmp ult i32 %73, 3
  br i1 %74, label %switch.lookup, label %do.body19.i

do.body19.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mfd/wm8994-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 357, 0\0A.popsection", ""() #7, !srcloc !204
  unreachable

switch.lookup:                                    ; preds = %if.end14.i
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.wm8994_i2c_probe, i32 0, i32 %73
  %75 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %75)
  %switch.load = load i32, ptr %switch.gep, align 4
  %num_supplies18.i = getelementptr inbounds %struct.wm8994, ptr %call.i, i32 0, i32 14
  %76 = ptrtoint ptr %num_supplies18.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %switch.load, ptr %num_supplies18.i, align 4
  %77 = mul nuw nsw i32 %switch.load, 12
  %78 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev2, align 4
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %79, i32 noundef %77, i32 noundef 3520) #7
  %supplies.i = getelementptr inbounds %struct.wm8994, ptr %call.i, i32 0, i32 15
  %80 = ptrtoint ptr %supplies.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call5.i.i.i, ptr %supplies.i, align 4
  %tobool29.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool29.not.i, label %switch.lookup.err.i_crit_edge, label %if.end31.i

switch.lookup.err.i_crit_edge:                    ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.i

if.end31.i:                                       ; preds = %switch.lookup
  %81 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %type.i, align 4
  %83 = zext i32 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values)
  switch i32 %82, label %do.body60.i [
    i32 2, label %for.body.preheader.i
    i32 0, label %for.body40.preheader.i
    i32 1, label %for.body51.preheader.i
  ]

for.body51.preheader.i:                           ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %call5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @.str.66, ptr %call5.i.i.i, align 4
  %arrayidx54.1.i = getelementptr %struct.regulator_bulk_data, ptr %call5.i.i.i, i32 1
  %85 = ptrtoint ptr %arrayidx54.1.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @.str.67, ptr %arrayidx54.1.i, align 4
  %arrayidx54.2.i = getelementptr %struct.regulator_bulk_data, ptr %call5.i.i.i, i32 2
  %86 = ptrtoint ptr %arrayidx54.2.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @.str.68, ptr %arrayidx54.2.i, align 4
  br label %sw.epilog66.i

for.body40.preheader.i:                           ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  %87 = ptrtoint ptr %call5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @.str.75, ptr %call5.i.i.i, align 4
  br label %sw.epilog66.i

for.body.preheader.i:                             ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  %88 = ptrtoint ptr %call5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @.str.66, ptr %call5.i.i.i, align 4
  %arrayidx36.1.i = getelementptr %struct.regulator_bulk_data, ptr %call5.i.i.i, i32 1
  %89 = ptrtoint ptr %arrayidx36.1.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @.str.67, ptr %arrayidx36.1.i, align 4
  %arrayidx36.2.i = getelementptr %struct.regulator_bulk_data, ptr %call5.i.i.i, i32 2
  %90 = ptrtoint ptr %arrayidx36.2.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @.str.68, ptr %arrayidx36.2.i, align 4
  br label %sw.epilog66.i

do.body60.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mfd/wm8994-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 384, 0\0A.popsection", ""() #7, !srcloc !205
  unreachable

sw.epilog66.i:                                    ; preds = %for.body.preheader.i, %for.body40.preheader.i, %for.body51.preheader.i
  %.sink73.i = phi i32 [ 3, %for.body51.preheader.i ], [ 1, %for.body40.preheader.i ], [ 3, %for.body.preheader.i ]
  %.sink71.i = phi i32 [ 4, %for.body51.preheader.i ], [ 2, %for.body40.preheader.i ], [ 4, %for.body.preheader.i ]
  %.sink69.i = phi i32 [ 5, %for.body51.preheader.i ], [ 3, %for.body40.preheader.i ], [ 5, %for.body.preheader.i ]
  %.sink67.i = phi i32 [ 6, %for.body51.preheader.i ], [ 4, %for.body40.preheader.i ], [ 6, %for.body.preheader.i ]
  %.sink65.i = phi i32 [ 7, %for.body51.preheader.i ], [ 5, %for.body40.preheader.i ], [ 7, %for.body.preheader.i ]
  %.sink63.i = phi i32 [ 8, %for.body51.preheader.i ], [ 6, %for.body40.preheader.i ], [ 8, %for.body.preheader.i ]
  %91 = ptrtoint ptr %supplies.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %supplies.i, align 4
  %arrayidx54.3.i = getelementptr %struct.regulator_bulk_data, ptr %92, i32 %.sink73.i
  %93 = ptrtoint ptr %arrayidx54.3.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @.str.69, ptr %arrayidx54.3.i, align 4
  %94 = load ptr, ptr %supplies.i, align 4
  %arrayidx54.4.i = getelementptr %struct.regulator_bulk_data, ptr %94, i32 %.sink71.i
  %95 = ptrtoint ptr %arrayidx54.4.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @.str.70, ptr %arrayidx54.4.i, align 4
  %96 = load ptr, ptr %supplies.i, align 4
  %arrayidx54.5.i = getelementptr %struct.regulator_bulk_data, ptr %96, i32 %.sink69.i
  %97 = ptrtoint ptr %arrayidx54.5.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @.str.71, ptr %arrayidx54.5.i, align 4
  %98 = load ptr, ptr %supplies.i, align 4
  %arrayidx54.6.i = getelementptr %struct.regulator_bulk_data, ptr %98, i32 %.sink67.i
  %99 = ptrtoint ptr %arrayidx54.6.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @.str.72, ptr %arrayidx54.6.i, align 4
  %100 = load ptr, ptr %supplies.i, align 4
  %arrayidx54.7.i = getelementptr %struct.regulator_bulk_data, ptr %100, i32 %.sink65.i
  %101 = ptrtoint ptr %arrayidx54.7.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @.str.73, ptr %arrayidx54.7.i, align 4
  %102 = load ptr, ptr %supplies.i, align 4
  %arrayidx54.8.i = getelementptr %struct.regulator_bulk_data, ptr %102, i32 %.sink63.i
  %103 = ptrtoint ptr %arrayidx54.8.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @.str.74, ptr %arrayidx54.8.i, align 4
  %104 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev2, align 4
  %106 = ptrtoint ptr %num_supplies18.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %num_supplies18.i, align 4
  %108 = load ptr, ptr %supplies.i, align 4
  %call70.i = tail call i32 @regulator_bulk_get(ptr noundef %105, i32 noundef %107, ptr noundef %108) #7
  %109 = zext i32 %call70.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %109, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %call70.i, label %do.end77.i [
    i32 0, label %if.end80.i
    i32 -517, label %sw.epilog66.i.err.i_crit_edge
  ]

sw.epilog66.i.err.i_crit_edge:                    ; preds = %sw.epilog66.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.i

do.end77.i:                                       ; preds = %sw.epilog66.i
  call void @__sanitizer_cov_trace_pc() #9
  %110 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.10, i32 noundef %call70.i) #10
  br label %err.i

if.end80.i:                                       ; preds = %sw.epilog66.i
  %112 = ptrtoint ptr %num_supplies18.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %num_supplies18.i, align 4
  %114 = ptrtoint ptr %supplies.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %supplies.i, align 4
  %call83.i = tail call i32 @regulator_bulk_enable(i32 noundef %113, ptr noundef %115) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83.i)
  %cmp84.not.i = icmp eq i32 %call83.i, 0
  br i1 %cmp84.not.i, label %if.end90.i, label %do.end88.i

do.end88.i:                                       ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #9
  %116 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.13, i32 noundef %call83.i) #10
  br label %err_regulator_free.i

if.end90.i:                                       ; preds = %if.end80.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %118 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 -1, ptr %val.i.i, align 4, !annotation !206
  %119 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %regmap, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %120, i32 noundef 0, ptr noundef nonnull %val.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i2.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i2.i, label %wm8994_reg_read.exit.thread.i, label %wm8994_reg_read.exit.i

wm8994_reg_read.exit.thread.i:                    ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  br label %do.end96.i

wm8994_reg_read.exit.i:                           ; preds = %if.end90.i
  %121 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %cmp92.i = icmp slt i32 %122, 0
  br i1 %cmp92.i, label %wm8994_reg_read.exit.i.do.end96.i_crit_edge, label %if.end98.i

wm8994_reg_read.exit.i.do.end96.i_crit_edge:      ; preds = %wm8994_reg_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end96.i

do.end96.i:                                       ; preds = %wm8994_reg_read.exit.i.do.end96.i_crit_edge, %wm8994_reg_read.exit.thread.i
  %retval.0.i43.i = phi i32 [ %call.i.i, %wm8994_reg_read.exit.thread.i ], [ %122, %wm8994_reg_read.exit.i.do.end96.i_crit_edge ]
  %123 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %124, ptr noundef nonnull @.str.16) #10
  br label %err_enable.i

if.end98.i:                                       ; preds = %wm8994_reg_read.exit.i
  %125 = zext i32 %122 to i64
  call void @__sanitizer_cov_trace_switch(i64 %125, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %122, label %do.end135.i [
    i32 6161, label %sw.bb99.i
    i32 35220, label %sw.bb110.i
    i32 35160, label %sw.bb121.i
  ]

sw.bb99.i:                                        ; preds = %if.end98.i
  %126 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %127)
  %cmp101.not.i = icmp eq i32 %127, 2
  br i1 %cmp101.not.i, label %sw.bb99.i.sw.epilog137.i_crit_edge, label %sw.bb99.i.sw.epilog137.sink.split.i_crit_edge

sw.bb99.i.sw.epilog137.sink.split.i_crit_edge:    ; preds = %sw.bb99.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog137.sink.split.i

sw.bb99.i.sw.epilog137.i_crit_edge:               ; preds = %sw.bb99.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog137.i

sw.bb110.i:                                       ; preds = %if.end98.i
  %128 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp112.not.i = icmp eq i32 %129, 0
  br i1 %cmp112.not.i, label %sw.bb110.i.sw.epilog137.i_crit_edge, label %sw.bb110.i.sw.epilog137.sink.split.i_crit_edge

sw.bb110.i.sw.epilog137.sink.split.i_crit_edge:   ; preds = %sw.bb110.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog137.sink.split.i

sw.bb110.i.sw.epilog137.i_crit_edge:              ; preds = %sw.bb110.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog137.i

sw.bb121.i:                                       ; preds = %if.end98.i
  %130 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %131)
  %cmp123.not.i = icmp eq i32 %131, 1
  br i1 %cmp123.not.i, label %sw.bb121.i.sw.epilog137.i_crit_edge, label %sw.bb121.i.sw.epilog137.sink.split.i_crit_edge

sw.bb121.i.sw.epilog137.sink.split.i_crit_edge:   ; preds = %sw.bb121.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog137.sink.split.i

sw.bb121.i.sw.epilog137.i_crit_edge:              ; preds = %sw.bb121.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog137.i

do.end135.i:                                      ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #9
  %132 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %133, ptr noundef nonnull @.str.30, i32 noundef %122) #10
  br label %err_enable.i

sw.epilog137.sink.split.i:                        ; preds = %sw.bb121.i.sw.epilog137.sink.split.i_crit_edge, %sw.bb110.i.sw.epilog137.sink.split.i_crit_edge, %sw.bb99.i.sw.epilog137.sink.split.i_crit_edge
  %.sink80.i = phi i32 [ %127, %sw.bb99.i.sw.epilog137.sink.split.i_crit_edge ], [ %129, %sw.bb110.i.sw.epilog137.sink.split.i_crit_edge ], [ %131, %sw.bb121.i.sw.epilog137.sink.split.i_crit_edge ]
  %.sink74.ph.i = phi i32 [ 2, %sw.bb99.i.sw.epilog137.sink.split.i_crit_edge ], [ 0, %sw.bb110.i.sw.epilog137.sink.split.i_crit_edge ], [ 1, %sw.bb121.i.sw.epilog137.sink.split.i_crit_edge ]
  %devname.0.ph.i = phi ptr [ @.str.18, %sw.bb99.i.sw.epilog137.sink.split.i_crit_edge ], [ @.str.23, %sw.bb110.i.sw.epilog137.sink.split.i_crit_edge ], [ @.str.26, %sw.bb121.i.sw.epilog137.sink.split.i_crit_edge ]
  %134 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev2, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %135, ptr noundef nonnull @.str.20, i32 noundef %.sink80.i) #10
  br label %sw.epilog137.i

sw.epilog137.i:                                   ; preds = %sw.epilog137.sink.split.i, %sw.bb121.i.sw.epilog137.i_crit_edge, %sw.bb110.i.sw.epilog137.i_crit_edge, %sw.bb99.i.sw.epilog137.i_crit_edge
  %.sink74.i = phi i32 [ 2, %sw.bb99.i.sw.epilog137.i_crit_edge ], [ 0, %sw.bb110.i.sw.epilog137.i_crit_edge ], [ 1, %sw.bb121.i.sw.epilog137.i_crit_edge ], [ %.sink74.ph.i, %sw.epilog137.sink.split.i ]
  %devname.0.i = phi ptr [ @.str.18, %sw.bb99.i.sw.epilog137.i_crit_edge ], [ @.str.23, %sw.bb110.i.sw.epilog137.i_crit_edge ], [ @.str.26, %sw.bb121.i.sw.epilog137.i_crit_edge ], [ %devname.0.ph.i, %sw.epilog137.sink.split.i ]
  %136 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %.sink74.i, ptr %type.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i3.i) #7
  %137 = ptrtoint ptr %val.i3.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 -1, ptr %val.i3.i, align 4, !annotation !206
  %138 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %regmap, align 4
  %call.i5.i = call i32 @regmap_read(ptr noundef %139, i32 noundef 256, ptr noundef nonnull %val.i3.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.i)
  %cmp.i6.i = icmp slt i32 %call.i5.i, 0
  br i1 %cmp.i6.i, label %wm8994_reg_read.exit9.thread.i, label %wm8994_reg_read.exit9.i

wm8994_reg_read.exit9.thread.i:                   ; preds = %sw.epilog137.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i3.i) #7
  br label %do.end143.i

wm8994_reg_read.exit9.i:                          ; preds = %sw.epilog137.i
  %140 = ptrtoint ptr %val.i3.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %val.i3.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i3.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %cmp139.i = icmp slt i32 %141, 0
  br i1 %cmp139.i, label %wm8994_reg_read.exit9.i.do.end143.i_crit_edge, label %if.end145.i

wm8994_reg_read.exit9.i.do.end143.i_crit_edge:    ; preds = %wm8994_reg_read.exit9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end143.i

do.end143.i:                                      ; preds = %wm8994_reg_read.exit9.i.do.end143.i_crit_edge, %wm8994_reg_read.exit9.thread.i
  %retval.0.i846.i = phi i32 [ %call.i5.i, %wm8994_reg_read.exit9.thread.i ], [ %141, %wm8994_reg_read.exit9.i.do.end143.i_crit_edge ]
  %142 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %143, ptr noundef nonnull @.str.33, i32 noundef %retval.0.i846.i) #10
  br label %err_enable.i

if.end145.i:                                      ; preds = %wm8994_reg_read.exit9.i
  %and.i = and i32 %141, 15
  %revision.i = getelementptr inbounds %struct.wm8994, ptr %call.i, i32 0, i32 2
  %144 = ptrtoint ptr %revision.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %and.i, ptr %revision.i, align 4
  %and146.i = lshr i32 %141, 8
  %145 = and i32 %and146.i, 255
  %cust_id.i = getelementptr inbounds %struct.wm8994, ptr %call.i, i32 0, i32 3
  %146 = ptrtoint ptr %cust_id.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %145, ptr %cust_id.i, align 4
  %147 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %type.i, align 4
  %149 = zext i32 %148 to i64
  call void @__sanitizer_cov_trace_switch(i64 %149, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %148, label %if.end145.i.do.end175.i_crit_edge [
    i32 0, label %sw.bb148.i
    i32 1, label %sw.bb159.i
    i32 2, label %sw.bb164.i
  ]

if.end145.i.do.end175.i_crit_edge:                ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end175.i

sw.bb148.i:                                       ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %switch.i = icmp ult i32 %and.i, 2
  br i1 %switch.i, label %do.end153.i, label %sw.bb148.i.do.end175.i_crit_edge

sw.bb148.i.do.end175.i_crit_edge:                 ; preds = %sw.bb148.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end175.i

do.end153.i:                                      ; preds = %sw.bb148.i
  call void @__sanitizer_cov_trace_pc() #9
  %150 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dev2, align 4
  %add.i = add nuw nsw i32 %and.i, 65
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %151, ptr noundef nonnull @.str.36, i32 noundef %add.i) #10
  br label %do.end175.i

sw.bb159.i:                                       ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cond.i = icmp eq i32 %and.i, 0
  br i1 %cond.i, label %sw.bb161.i, label %sw.bb159.i.do.end175.i_crit_edge

sw.bb159.i.do.end175.i_crit_edge:                 ; preds = %sw.bb159.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end175.i

sw.bb161.i:                                       ; preds = %sw.bb159.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end175.i

sw.bb164.i:                                       ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp166.i = icmp ugt i32 %and.i, 1
  br i1 %cmp166.i, label %if.then167.i, label %sw.bb164.i.do.end175.i_crit_edge

sw.bb164.i.do.end175.i_crit_edge:                 ; preds = %sw.bb164.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end175.i

if.then167.i:                                     ; preds = %sw.bb164.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc169.i = add nuw nsw i32 %and.i, 1
  %152 = ptrtoint ptr %revision.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %inc169.i, ptr %revision.i, align 4
  br label %do.end175.i

do.end175.i:                                      ; preds = %if.then167.i, %sw.bb164.i.do.end175.i_crit_edge, %sw.bb161.i, %sw.bb159.i.do.end175.i_crit_edge, %do.end153.i, %sw.bb148.i.do.end175.i_crit_edge, %if.end145.i.do.end175.i_crit_edge
  %tobool209.not.i = phi i1 [ true, %do.end153.i ], [ true, %sw.bb159.i.do.end175.i_crit_edge ], [ false, %sw.bb161.i ], [ true, %if.end145.i.do.end175.i_crit_edge ], [ false, %sw.bb148.i.do.end175.i_crit_edge ], [ false, %if.then167.i ], [ false, %sw.bb164.i.do.end175.i_crit_edge ]
  %regmap_patch.0.i = phi ptr [ null, %do.end153.i ], [ null, %sw.bb159.i.do.end175.i_crit_edge ], [ @wm8958_reva_patch, %sw.bb161.i ], [ null, %if.end145.i.do.end175.i_crit_edge ], [ @wm8994_revc_patch, %sw.bb148.i.do.end175.i_crit_edge ], [ @wm1811_reva_patch, %if.then167.i ], [ @wm1811_reva_patch, %sw.bb164.i.do.end175.i_crit_edge ]
  %patch_regs.0.i = phi i32 [ 0, %do.end153.i ], [ 0, %sw.bb159.i.do.end175.i_crit_edge ], [ 4, %sw.bb161.i ], [ 0, %if.end145.i.do.end175.i_crit_edge ], [ 4, %sw.bb148.i.do.end175.i_crit_edge ], [ 5, %if.then167.i ], [ 5, %sw.bb164.i.do.end175.i_crit_edge ]
  %153 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %dev2, align 4
  %155 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %revision.i, align 4
  %add178.i = add i32 %156, 65
  %157 = ptrtoint ptr %cust_id.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %cust_id.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %154, ptr noundef nonnull @.str.39, ptr noundef nonnull %devname.0.i, i32 noundef %add178.i, i32 noundef %158) #10
  %159 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %160)
  %161 = icmp ult i32 %160, 3
  br i1 %161, label %switch.lookup45, label %do.end187.i

do.end187.i:                                      ; preds = %do.end175.i
  call void @__sanitizer_cov_trace_pc() #9
  %162 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %dev2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %163, ptr noundef nonnull @.str.43, i32 noundef %160) #10
  br label %err_enable.i

switch.lookup45:                                  ; preds = %do.end175.i
  %switch.gep46 = getelementptr inbounds [3 x ptr], ptr @switch.table.wm8994_i2c_probe.94, i32 0, i32 %160
  %164 = ptrtoint ptr %switch.gep46 to i32
  call void @__asan_load4_noabort(i32 %164)
  %switch.load47 = load ptr, ptr %switch.gep46, align 4
  %165 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %regmap, align 4
  %call191.i = call i32 @regmap_reinit_cache(ptr noundef %166, ptr noundef nonnull %switch.load47) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191.i)
  %cmp192.not.i = icmp eq i32 %call191.i, 0
  br i1 %cmp192.not.i, label %if.end198.i, label %do.end196.i

do.end196.i:                                      ; preds = %switch.lookup45
  call void @__sanitizer_cov_trace_pc() #9
  %167 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dev2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %168, ptr noundef nonnull @.str.46, i32 noundef %call191.i) #10
  br label %err_enable.i

if.end198.i:                                      ; preds = %switch.lookup45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i10.i) #7
  %169 = ptrtoint ptr %val.i10.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 -1, ptr %val.i10.i, align 4, !annotation !206
  %170 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %regmap, align 4
  %call.i12.i = call i32 @regmap_read(ptr noundef %171, i32 noundef 0, ptr noundef nonnull %val.i10.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i)
  %cmp.i13.i = icmp slt i32 %call.i12.i, 0
  br i1 %cmp.i13.i, label %if.end198.i.wm8994_reg_read.exit16.i_crit_edge, label %if.else.i14.i

if.end198.i.wm8994_reg_read.exit16.i_crit_edge:   ; preds = %if.end198.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %wm8994_reg_read.exit16.i

if.else.i14.i:                                    ; preds = %if.end198.i
  call void @__sanitizer_cov_trace_pc() #9
  %172 = ptrtoint ptr %val.i10.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %val.i10.i, align 4
  br label %wm8994_reg_read.exit16.i

wm8994_reg_read.exit16.i:                         ; preds = %if.else.i14.i, %if.end198.i.wm8994_reg_read.exit16.i_crit_edge
  %retval.0.i15.i = phi i32 [ %173, %if.else.i14.i ], [ %call.i12.i, %if.end198.i.wm8994_reg_read.exit16.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i10.i) #7
  %174 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %regmap, align 4
  %conv1.i.i = and i32 %retval.0.i15.i, 65535
  %call.i18.i = call i32 @regmap_write(ptr noundef %175, i32 noundef 0, i32 noundef %conv1.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i)
  %cmp201.not.i = icmp eq i32 %call.i18.i, 0
  br i1 %cmp201.not.i, label %if.end208.i, label %do.end206.i

do.end206.i:                                      ; preds = %wm8994_reg_read.exit16.i
  call void @__sanitizer_cov_trace_pc() #9
  %176 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %dev2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %177, ptr noundef nonnull @.str.49, i32 noundef %call.i18.i) #10
  br label %err_enable.i

if.end208.i:                                      ; preds = %wm8994_reg_read.exit16.i
  br i1 %tobool209.not.i, label %if.end208.i.if.end221.i_crit_edge, label %if.then210.i

if.end208.i.if.end221.i_crit_edge:                ; preds = %if.end208.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end221.i

if.then210.i:                                     ; preds = %if.end208.i
  %178 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %regmap, align 4
  %call212.i = call i32 @regmap_register_patch(ptr noundef %179, ptr noundef %regmap_patch.0.i, i32 noundef %patch_regs.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call212.i)
  %cmp213.not.i = icmp eq i32 %call212.i, 0
  br i1 %cmp213.not.i, label %if.then210.i.if.end221.i_crit_edge, label %do.end218.i

if.then210.i.if.end221.i_crit_edge:               ; preds = %if.then210.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end221.i

do.end218.i:                                      ; preds = %if.then210.i
  call void @__sanitizer_cov_trace_pc() #9
  %180 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %dev2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %181, ptr noundef nonnull @.str.52, i32 noundef %call212.i) #10
  br label %err_enable.i

if.end221.i:                                      ; preds = %if.then210.i.if.end221.i_crit_edge, %if.end208.i.if.end221.i_crit_edge
  %irq_base.i = getelementptr inbounds %struct.wm8994_pdata, ptr %call.i, i32 0, i32 3
  %182 = ptrtoint ptr %irq_base.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %irq_base.i, align 4
  %irq_base222.i = getelementptr inbounds %struct.wm8994, ptr %call.i, i32 0, i32 8
  %184 = ptrtoint ptr %irq_base222.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %irq_base222.i, align 4
  %185 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %call.i, align 4
  %gpio_base223.i = getelementptr inbounds %struct.wm8994, ptr %call.i, i32 0, i32 7
  %187 = ptrtoint ptr %gpio_base223.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %186, ptr %gpio_base223.i, align 4
  br label %for.body227.i

for.body227.i:                                    ; preds = %for.inc238.i.for.body227.i_crit_edge, %if.end221.i
  %i.354.i = phi i32 [ 0, %if.end221.i ], [ %inc239.i, %for.inc238.i.for.body227.i_crit_edge ]
  %arrayidx228.i = getelementptr %struct.wm8994_pdata, ptr %call.i, i32 0, i32 1, i32 %i.354.i
  %188 = ptrtoint ptr %arrayidx228.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %arrayidx228.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189)
  %tobool229.not.i = icmp eq i32 %189, 0
  br i1 %tobool229.not.i, label %for.body227.i.for.inc238.i_crit_edge, label %if.then230.i

for.body227.i.for.inc238.i_crit_edge:             ; preds = %for.body227.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc238.i

if.then230.i:                                     ; preds = %for.body227.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv232.i = add nuw nsw i32 %i.354.i, 1792
  %190 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %regmap, align 4
  %conv2.i.i = and i32 %189, 65535
  %call.i.i20.i = call i32 @regmap_update_bits_base(ptr noundef %191, i32 noundef %conv232.i, i32 noundef 65535, i32 noundef %conv2.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %for.inc238.i

for.inc238.i:                                     ; preds = %if.then230.i, %for.body227.i.for.inc238.i_crit_edge
  %inc239.i = add nuw nsw i32 %i.354.i, 1
  %exitcond.not.i = icmp eq i32 %inc239.i, 11
  br i1 %exitcond.not.i, label %if.end.i25.i, label %for.inc238.i.for.body227.i_crit_edge

for.inc238.i.for.body227.i_crit_edge:             ; preds = %for.inc238.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body227.i

if.end.i25.i:                                     ; preds = %for.inc238.i
  %ldo_ena_always_driven.i = getelementptr inbounds %struct.wm8994_pdata, ptr %call.i, i32 0, i32 28
  %192 = ptrtoint ptr %ldo_ena_always_driven.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %ldo_ena_always_driven.i, align 2, !range !207
  %ldo_ena_always_driven242.i = getelementptr inbounds %struct.wm8994, ptr %call.i, i32 0, i32 6
  %194 = ptrtoint ptr %ldo_ena_always_driven242.i to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %193, ptr %ldo_ena_always_driven242.i, align 4
  %spkmode_pu.i = getelementptr inbounds %struct.wm8994_pdata, ptr %call.i, i32 0, i32 29
  %195 = ptrtoint ptr %spkmode_pu.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %spkmode_pu.i, align 1, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %196)
  %tobool243.not.i = icmp eq i8 %196, 0
  %spec.select.i = select i1 %tobool243.not.i, i32 0, i32 2
  %csnaddr_pd.i = getelementptr inbounds %struct.wm8994_pdata, ptr %call.i, i32 0, i32 30
  %197 = ptrtoint ptr %csnaddr_pd.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %csnaddr_pd.i, align 4, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %198)
  %tobool246.not.i = icmp eq i8 %198, 0
  %or248.i = or i32 %spec.select.i, 256
  %pulls.1.i = select i1 %tobool246.not.i, i32 %spec.select.i, i32 %or248.i
  %199 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %regmap, align 4
  %call.i.i23.i = call i32 @regmap_update_bits_base(ptr noundef %200, i32 noundef 1825, i32 noundef 338, i32 noundef %pulls.1.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %arrayidx.i.i = getelementptr %struct.wm8994_pdata, ptr %call.i, i32 0, i32 2, i32 0
  %201 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %202, null
  br i1 %tobool2.not.i.i, label %if.end.i25.i.for.inc266.thread60.i_crit_edge, label %wm8994_ldo_in_use.exit.i

if.end.i25.i.for.inc266.thread60.i_crit_edge:     ; preds = %if.end.i25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc266.thread60.i

wm8994_ldo_in_use.exit.i:                         ; preds = %if.end.i25.i
  %num_consumer_supplies.i.i = getelementptr inbounds %struct.regulator_init_data, ptr %202, i32 0, i32 2
  %203 = ptrtoint ptr %num_consumer_supplies.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %num_consumer_supplies.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %204)
  %cmp.i26.not.i = icmp eq i32 %204, 0
  br i1 %cmp.i26.not.i, label %wm8994_ldo_in_use.exit.i.for.inc266.thread60.i_crit_edge, label %wm8994_ldo_in_use.exit.i.if.end.i25.1.i_crit_edge

wm8994_ldo_in_use.exit.i.if.end.i25.1.i_crit_edge: ; preds = %wm8994_ldo_in_use.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i25.1.i

wm8994_ldo_in_use.exit.i.for.inc266.thread60.i_crit_edge: ; preds = %wm8994_ldo_in_use.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc266.thread60.i

for.inc266.thread60.i:                            ; preds = %wm8994_ldo_in_use.exit.i.for.inc266.thread60.i_crit_edge, %if.end.i25.i.for.inc266.thread60.i_crit_edge
  br label %if.end.i25.1.i

if.end.i25.1.i:                                   ; preds = %for.inc266.thread60.i, %wm8994_ldo_in_use.exit.i.if.end.i25.1.i_crit_edge
  %.sink76.i = phi i32 [ 0, %for.inc266.thread60.i ], [ 1, %wm8994_ldo_in_use.exit.i.if.end.i25.1.i_crit_edge ]
  %205 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %regmap, align 4
  %call.i.i3461.i = call i32 @regmap_update_bits_base(ptr noundef %206, i32 noundef 59, i32 noundef 1, i32 noundef %.sink76.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %arrayidx.i.1.i = getelementptr %struct.wm8994_pdata, ptr %call.i, i32 0, i32 2, i32 1
  %207 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %arrayidx.i.1.i, align 4
  %tobool2.not.i.1.i = icmp eq ptr %208, null
  br i1 %tobool2.not.i.1.i, label %if.end.i25.1.i.if.else.1.i_crit_edge, label %wm8994_ldo_in_use.exit.1.i

if.end.i25.1.i.if.else.1.i_crit_edge:             ; preds = %if.end.i25.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.1.i

wm8994_ldo_in_use.exit.1.i:                       ; preds = %if.end.i25.1.i
  %num_consumer_supplies.i.1.i = getelementptr inbounds %struct.regulator_init_data, ptr %208, i32 0, i32 2
  %209 = ptrtoint ptr %num_consumer_supplies.i.1.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %num_consumer_supplies.i.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %210)
  %cmp.i26.not.1.i = icmp eq i32 %210, 0
  br i1 %cmp.i26.not.1.i, label %wm8994_ldo_in_use.exit.1.i.if.else.1.i_crit_edge, label %wm8994_ldo_in_use.exit.1.i.for.inc266.1.i_crit_edge

wm8994_ldo_in_use.exit.1.i.for.inc266.1.i_crit_edge: ; preds = %wm8994_ldo_in_use.exit.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc266.1.i

wm8994_ldo_in_use.exit.1.i.if.else.1.i_crit_edge: ; preds = %wm8994_ldo_in_use.exit.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.1.i

if.else.1.i:                                      ; preds = %wm8994_ldo_in_use.exit.1.i.if.else.1.i_crit_edge, %if.end.i25.1.i.if.else.1.i_crit_edge
  br label %for.inc266.1.i

for.inc266.1.i:                                   ; preds = %if.else.1.i, %wm8994_ldo_in_use.exit.1.i.for.inc266.1.i_crit_edge
  %.sink78.i = phi i32 [ 0, %if.else.1.i ], [ 1, %wm8994_ldo_in_use.exit.1.i.for.inc266.1.i_crit_edge ]
  %211 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %regmap, align 4
  %call.i.i34.1.i = call i32 @regmap_update_bits_base(ptr noundef %212, i32 noundef 60, i32 noundef 1, i32 noundef %.sink78.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %call269.i = call i32 @wm8994_irq_init(ptr noundef %call.i) #7
  %213 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %dev2, align 4
  %call271.i = call i32 @mfd_add_devices(ptr noundef %214, i32 noundef -1, ptr noundef nonnull @wm8994_devs, i32 noundef 2, ptr noundef null, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call271.i)
  %cmp272.not.i = icmp eq i32 %call271.i, 0
  %215 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %dev2, align 4
  br i1 %cmp272.not.i, label %if.end279.i, label %do.end277.i

do.end277.i:                                      ; preds = %for.inc266.1.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %216, ptr noundef nonnull @.str.7, i32 noundef %call271.i) #10
  call void @wm8994_irq_exit(ptr noundef %call.i) #7
  br label %err_enable.i

if.end279.i:                                      ; preds = %for.inc266.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i35.i = call i32 @__pm_runtime_set_status(ptr noundef %216, i32 noundef 0) #7
  %217 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %dev2, align 4
  call void @pm_runtime_enable(ptr noundef %218) #7
  %219 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %dev2, align 4
  %call.i36.i = call i32 @__pm_runtime_idle(ptr noundef %220, i32 noundef 0) #7
  br label %cleanup

err_enable.i:                                     ; preds = %do.end277.i, %do.end218.i, %do.end206.i, %do.end196.i, %do.end187.i, %do.end143.i, %do.end135.i, %do.end96.i
  %ret.0.i = phi i32 [ %retval.0.i43.i, %do.end96.i ], [ -22, %do.end135.i ], [ %retval.0.i846.i, %do.end143.i ], [ -22, %do.end187.i ], [ %call191.i, %do.end196.i ], [ %call.i18.i, %do.end206.i ], [ %call212.i, %do.end218.i ], [ %call271.i, %do.end277.i ]
  %221 = ptrtoint ptr %num_supplies18.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %num_supplies18.i, align 4
  %223 = ptrtoint ptr %supplies.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %supplies.i, align 4
  %call287.i = call i32 @regulator_bulk_disable(i32 noundef %222, ptr noundef %224) #7
  br label %err_regulator_free.i

err_regulator_free.i:                             ; preds = %err_enable.i, %do.end88.i
  %ret.1.i = phi i32 [ %call83.i, %do.end88.i ], [ %ret.0.i, %err_enable.i ]
  %225 = ptrtoint ptr %num_supplies18.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %num_supplies18.i, align 4
  %227 = ptrtoint ptr %supplies.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %supplies.i, align 4
  call void @regulator_bulk_free(i32 noundef %226, ptr noundef %228) #7
  br label %err.i

err.i:                                            ; preds = %err_regulator_free.i, %do.end77.i, %sw.epilog66.i.err.i_crit_edge, %switch.lookup.err.i_crit_edge, %do.end.i
  %ret.2.i = phi i32 [ %call10.i, %do.end.i ], [ %call70.i, %do.end77.i ], [ %ret.1.i, %err_regulator_free.i ], [ -12, %switch.lookup.err.i_crit_edge ], [ %call70.i, %sw.epilog66.i.err.i_crit_edge ]
  %229 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %dev2, align 4
  call void @mfd_remove_devices(ptr noundef %230) #7
  br label %cleanup

cleanup:                                          ; preds = %err.i, %if.end279.i, %if.then16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %if.then16 ], [ -12, %entry.cleanup_crit_edge ], [ %ret.2.i, %err.i ], [ 0, %if.end279.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8994_i2c_remove(ptr nocapture noundef readonly %i2c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev.i = getelementptr inbounds %struct.wm8994, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #7
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void @__pm_runtime_disable(ptr noundef %5, i1 noundef zeroext true) #7
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #7
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #7, !srcloc !209
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %entry.wm8994_device_exit.exit_crit_edge, label %do.end11.i.i.i.i.i

entry.wm8994_device_exit.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %wm8994_device_exit.exit

do.end11.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !210
  br label %wm8994_device_exit.exit

wm8994_device_exit.exit:                          ; preds = %do.end11.i.i.i.i.i, %entry.wm8994_device_exit.exit_crit_edge
  tail call void @wm8994_irq_exit(ptr noundef %1) #7
  %num_supplies.i = getelementptr inbounds %struct.wm8994, ptr %1, i32 0, i32 14
  %9 = ptrtoint ptr %num_supplies.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_supplies.i, align 4
  %supplies.i = getelementptr inbounds %struct.wm8994, ptr %1, i32 0, i32 15
  %11 = ptrtoint ptr %supplies.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %supplies.i, align 4
  %call3.i = tail call i32 @regulator_bulk_disable(i32 noundef %10, ptr noundef %12) #7
  %13 = ptrtoint ptr %num_supplies.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_supplies.i, align 4
  %15 = ptrtoint ptr %supplies.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %supplies.i, align 4
  tail call void @regulator_bulk_free(i32 noundef %14, ptr noundef %16) #7
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  tail call void @mfd_remove_devices(ptr noundef %18) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_reinit_cache(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_register_patch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm8994_irq_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wm8994_irq_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulator_bulk_free(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mfd_remove_devices(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8994_suspend(ptr noundef %dev) #2 align 64 {
entry:
  %val.i75 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %type = getelementptr inbounds %struct.wm8994, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %.off = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !206
  %regmap.i = getelementptr inbounds %struct.wm8994, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 208, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %wm8994_reg_read.exit.thread, label %wm8994_reg_read.exit

wm8994_reg_read.exit.thread:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %do.end

wm8994_reg_read.exit:                             ; preds = %sw.bb
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %wm8994_reg_read.exit.do.end_crit_edge, label %if.else

wm8994_reg_read.exit.do.end_crit_edge:            ; preds = %wm8994_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %wm8994_reg_read.exit.do.end_crit_edge, %wm8994_reg_read.exit.thread
  %retval.0.i7386 = phi i32 [ %call.i, %wm8994_reg_read.exit.thread ], [ %8, %wm8994_reg_read.exit.do.end_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.78, i32 noundef %retval.0.i7386) #10
  br label %sw.epilog

if.else:                                          ; preds = %wm8994_reg_read.exit
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else.sw.epilog_crit_edge, label %do.body3

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8994_suspend.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8994_suspend, %if.then8)) #7
          to label %cleanup [label %if.then8], !srcloc !211

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8994_suspend.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.80) #7
  br label %cleanup

sw.epilog:                                        ; preds = %if.else.sw.epilog_crit_edge, %do.end, %entry.sw.epilog_crit_edge
  %ldo_ena_always_driven = getelementptr inbounds %struct.wm8994, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %ldo_ena_always_driven to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ldo_ena_always_driven, align 4, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool13.not = icmp eq i8 %10, 0
  br i1 %tobool13.not, label %if.then14, label %sw.epilog.if.end16_crit_edge

sw.epilog.if.end16_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then14:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %regmap.i74 = getelementptr inbounds %struct.wm8994, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %regmap.i74 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i74, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 1825, i32 noundef 80, i32 noundef 80, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %sw.epilog.if.end16_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i75) #7
  %13 = ptrtoint ptr %val.i75 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %val.i75, align 4, !annotation !206
  %regmap.i76 = getelementptr inbounds %struct.wm8994, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %regmap.i76 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i76, align 4
  %call.i77 = call i32 @regmap_read(ptr noundef %15, i32 noundef 0, ptr noundef nonnull %val.i75) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %cmp.i78 = icmp slt i32 %call.i77, 0
  br i1 %cmp.i78, label %if.end16.wm8994_reg_read.exit81_crit_edge, label %if.else.i79

if.end16.wm8994_reg_read.exit81_crit_edge:        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %wm8994_reg_read.exit81

if.else.i79:                                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %val.i75 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val.i75, align 4
  br label %wm8994_reg_read.exit81

wm8994_reg_read.exit81:                           ; preds = %if.else.i79, %if.end16.wm8994_reg_read.exit81_crit_edge
  %retval.0.i80 = phi i32 [ %17, %if.else.i79 ], [ %call.i77, %if.end16.wm8994_reg_read.exit81_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i75) #7
  %18 = ptrtoint ptr %regmap.i76 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i76, align 4
  %conv1.i = and i32 %retval.0.i80, 65535
  %call.i83 = call i32 @regmap_write(ptr noundef %19, i32 noundef 0, i32 noundef %conv1.i) #7
  %20 = ptrtoint ptr %regmap.i76 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i76, align 4
  call void @regcache_mark_dirty(ptr noundef %21) #7
  %22 = ptrtoint ptr %regmap.i76 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i76, align 4
  %call20 = call i32 @regcache_sync_region(ptr noundef %23, i32 noundef 1792, i32 noundef 1802) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21.not = icmp eq i32 %call20, 0
  br i1 %cmp21.not, label %wm8994_reg_read.exit81.if.end27_crit_edge, label %do.end26

wm8994_reg_read.exit81.if.end27_crit_edge:        ; preds = %wm8994_reg_read.exit81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

do.end26:                                         ; preds = %wm8994_reg_read.exit81
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.82, i32 noundef %call20) #10
  br label %if.end27

if.end27:                                         ; preds = %do.end26, %wm8994_reg_read.exit81.if.end27_crit_edge
  %24 = ptrtoint ptr %regmap.i76 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i76, align 4
  %call29 = call i32 @regcache_sync_region(ptr noundef %25, i32 noundef 1848, i32 noundef 1848) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30.not = icmp eq i32 %call29, 0
  br i1 %cmp30.not, label %if.end27.if.end36_crit_edge, label %do.end35

if.end27.if.end36_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

do.end35:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.85, i32 noundef %call29) #10
  br label %if.end36

if.end36:                                         ; preds = %do.end35, %if.end27.if.end36_crit_edge
  %26 = ptrtoint ptr %regmap.i76 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i76, align 4
  call void @regcache_cache_only(ptr noundef %27, i1 noundef zeroext true) #7
  %suspended = getelementptr inbounds %struct.wm8994, ptr %1, i32 0, i32 12
  %28 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %suspended, align 4
  %num_supplies = getelementptr inbounds %struct.wm8994, ptr %1, i32 0, i32 14
  %29 = ptrtoint ptr %num_supplies to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_supplies, align 4
  %supplies = getelementptr inbounds %struct.wm8994, ptr %1, i32 0, i32 15
  %31 = ptrtoint ptr %supplies to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %supplies, align 4
  %call38 = call i32 @regulator_bulk_disable(i32 noundef %30, ptr noundef %32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39.not = icmp eq i32 %call38, 0
  br i1 %cmp39.not, label %if.end36.cleanup_crit_edge, label %do.end44

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end44:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.88, i32 noundef %call38) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end44, %if.end36.cleanup_crit_edge, %if.then8, %do.body3
  %retval.0 = phi i32 [ %call38, %do.end44 ], [ 0, %if.then8 ], [ 0, %if.end36.cleanup_crit_edge ], [ 0, %do.body3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8994_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %suspended = getelementptr inbounds %struct.wm8994, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %suspended, align 4, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_supplies = getelementptr inbounds %struct.wm8994, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %num_supplies to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_supplies, align 4
  %supplies = getelementptr inbounds %struct.wm8994, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %supplies to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %supplies, align 4
  %call1 = tail call i32 @regulator_bulk_enable(i32 noundef %5, ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.end3, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call1) #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %regmap = getelementptr inbounds %struct.wm8994, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %9, i1 noundef zeroext false) #7
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call5 = tail call i32 @regcache_sync(ptr noundef %11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, 0
  br i1 %cmp6.not, label %if.end11, label %do.end10

do.end10:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.92, i32 noundef %call5) #10
  %12 = ptrtoint ptr %num_supplies to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_supplies, align 4
  %14 = ptrtoint ptr %supplies to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %supplies, align 4
  %call16 = tail call i32 @regulator_bulk_disable(i32 noundef %13, ptr noundef %15) #7
  br label %cleanup

if.end11:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 1825, i32 noundef 80, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %18 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %suspended, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end10, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %do.end ], [ %call5, %do.end10 ], [ 0, %if.end11 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !48, !49, !50, !51, !53, !55, !56, !58, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !168, !169, !170, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !185, !187, !188, !189, !191, !192, !193}
!llvm.module.flags = !{!195, !196, !197, !198, !199, !200, !201, !202}
!llvm.ident = !{!203}

!0 = !{ptr @__initcall__kmod_wm8994__290_693_wm8994_i2c_driver_init6, !1, !"__initcall__kmod_wm8994__290_693_wm8994_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mfd/wm8994-core.c", i32 693, i32 1}
!2 = !{ptr @__exitcall_wm8994_i2c_driver_exit, !1, !"__exitcall_wm8994_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description291, !4, !"__UNIQUE_ID_description291", i1 false, i1 false}
!4 = !{!"../drivers/mfd/wm8994-core.c", i32 695, i32 1}
!5 = !{ptr @__UNIQUE_ID_file292, !6, !"__UNIQUE_ID_file292", i1 false, i1 false}
!6 = !{!"../drivers/mfd/wm8994-core.c", i32 696, i32 1}
!7 = !{ptr @__UNIQUE_ID_license293, !6, !"__UNIQUE_ID_license293", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author294, !9, !"__UNIQUE_ID_author294", i1 false, i1 false}
!9 = !{!"../drivers/mfd/wm8994-core.c", i32 697, i32 1}
!10 = !{ptr @__UNIQUE_ID_softdep295, !11, !"__UNIQUE_ID_softdep295", i1 false, i1 false}
!11 = !{!"../drivers/mfd/wm8994-core.c", i32 698, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mfd/wm8994-core.c", i32 684, i32 11}
!14 = !{ptr @wm8994_i2c_driver, !15, !"wm8994_i2c_driver", i1 false, i1 false}
!15 = !{!"../drivers/mfd/wm8994-core.c", i32 682, i32 26}
!16 = !{ptr @wm8994_i2c_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../drivers/mfd/wm8994-core.c", i32 649, i32 19}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/mfd/wm8994-core.c", i32 652, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @wm8994_i2c_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @wm8994_i2c_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mfd/wm8994-core.c", i32 342, i32 3}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @wm8994_device_init._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @wm8994_device_init._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mfd/wm8994-core.c", i32 397, i32 4}
!34 = !{ptr @wm8994_device_init._entry.9, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @wm8994_device_init._entry_ptr.11, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mfd/wm8994-core.c", i32 404, i32 3}
!38 = !{ptr @wm8994_device_init._entry.12, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @wm8994_device_init._entry_ptr.14, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mfd/wm8994-core.c", i32 410, i32 3}
!42 = !{ptr @wm8994_device_init._entry.15, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @wm8994_device_init._entry_ptr.17, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mfd/wm8994-core.c", i32 415, i32 13}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mfd/wm8994-core.c", i32 417, i32 4}
!48 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @wm8994_device_init._entry.19, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @wm8994_device_init._entry_ptr.22, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/mfd/wm8994-core.c", i32 422, i32 13}
!53 = !{ptr @wm8994_device_init._entry.24, !54, !"_entry", i1 false, i1 false}
!54 = !{!"../drivers/mfd/wm8994-core.c", i32 424, i32 4}
!55 = !{ptr @wm8994_device_init._entry_ptr.25, !54, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mfd/wm8994-core.c", i32 429, i32 13}
!58 = !{ptr @wm8994_device_init._entry.27, !59, !"_entry", i1 false, i1 false}
!59 = !{!"../drivers/mfd/wm8994-core.c", i32 431, i32 4}
!60 = !{ptr @wm8994_device_init._entry_ptr.28, !59, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mfd/wm8994-core.c", i32 436, i32 3}
!63 = !{ptr @wm8994_device_init._entry.29, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @wm8994_device_init._entry_ptr.31, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mfd/wm8994-core.c", i32 444, i32 3}
!67 = !{ptr @wm8994_device_init._entry.32, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @wm8994_device_init._entry_ptr.34, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mfd/wm8994-core.c", i32 456, i32 4}
!71 = !{ptr @wm8994_device_init._entry.35, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @wm8994_device_init._entry_ptr.37, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/mfd/wm8994-core.c", i32 493, i32 2}
!75 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @wm8994_device_init._entry.38, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @wm8994_device_init._entry_ptr.41, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.43, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/mfd/wm8994-core.c", i32 507, i32 3}
!80 = !{ptr @wm8994_device_init._entry.42, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @wm8994_device_init._entry_ptr.44, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.46, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/mfd/wm8994-core.c", i32 514, i32 3}
!84 = !{ptr @wm8994_device_init._entry.45, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @wm8994_device_init._entry_ptr.47, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.49, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/mfd/wm8994-core.c", i32 526, i32 3}
!88 = !{ptr @wm8994_device_init._entry.48, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @wm8994_device_init._entry_ptr.50, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.52, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/mfd/wm8994-core.c", i32 534, i32 4}
!92 = !{ptr @wm8994_device_init._entry.51, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @wm8994_device_init._entry_ptr.53, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @wm8994_device_init._entry.54, !95, !"_entry", i1 false, i1 false}
!95 = !{!"../drivers/mfd/wm8994-core.c", i32 585, i32 3}
!96 = !{ptr @wm8994_device_init._entry_ptr.55, !95, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.56, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/mfd/wm8994-core.c", i32 272, i32 37}
!99 = !{ptr @.str.57, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/mfd/wm8994-core.c", i32 281, i32 33}
!101 = !{ptr @.str.58, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/mfd/wm8994-core.c", i32 286, i32 27}
!103 = !{ptr @.str.59, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/mfd/wm8994-core.c", i32 288, i32 27}
!105 = !{ptr @.str.60, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/mfd/wm8994-core.c", i32 291, i32 27}
!107 = !{ptr @.str.61, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/mfd/wm8994-core.c", i32 293, i32 27}
!109 = !{ptr @.str.62, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/mfd/wm8994-core.c", i32 296, i32 27}
!111 = !{ptr @.str.63, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/mfd/wm8994-core.c", i32 299, i32 48}
!113 = !{ptr @.str.64, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/mfd/wm8994-core.c", i32 301, i32 48}
!115 = !{ptr @.str.65, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/mfd/wm8994-core.c", i32 32, i32 11}
!117 = !{ptr @wm8994_regulator_devs, !118, !"wm8994_regulator_devs", i1 false, i1 false}
!118 = !{!"../drivers/mfd/wm8994-core.c", i32 30, i32 30}
!119 = !{ptr @.str.66, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/mfd/wm8994-core.c", i32 80, i32 2}
!121 = !{ptr @.str.67, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/mfd/wm8994-core.c", i32 81, i32 2}
!123 = !{ptr @.str.68, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/mfd/wm8994-core.c", i32 82, i32 2}
!125 = !{ptr @.str.69, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/mfd/wm8994-core.c", i32 83, i32 2}
!127 = !{ptr @.str.70, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/mfd/wm8994-core.c", i32 84, i32 2}
!129 = !{ptr @.str.71, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/mfd/wm8994-core.c", i32 85, i32 2}
!131 = !{ptr @.str.72, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/mfd/wm8994-core.c", i32 86, i32 2}
!133 = !{ptr @.str.73, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/mfd/wm8994-core.c", i32 87, i32 2}
!135 = !{ptr @.str.74, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/mfd/wm8994-core.c", i32 88, i32 2}
!137 = distinct !{null, !138, !"wm1811_main_supplies", i1 false, i1 false}
!138 = !{!"../drivers/mfd/wm8994-core.c", i32 79, i32 20}
!139 = !{ptr @.str.75, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/mfd/wm8994-core.c", i32 92, i32 2}
!141 = distinct !{null, !142, !"wm8994_main_supplies", i1 false, i1 false}
!142 = !{!"../drivers/mfd/wm8994-core.c", i32 91, i32 20}
!143 = distinct !{null, !144, !"wm8958_main_supplies", i1 false, i1 false}
!144 = !{!"../drivers/mfd/wm8994-core.c", i32 101, i32 20}
!145 = !{ptr @wm8994_revc_patch, !146, !"wm8994_revc_patch", i1 false, i1 false}
!146 = !{!"../drivers/mfd/wm8994-core.c", i32 240, i32 34}
!147 = !{ptr @wm8958_reva_patch, !148, !"wm8958_reva_patch", i1 false, i1 false}
!148 = !{!"../drivers/mfd/wm8994-core.c", i32 247, i32 34}
!149 = !{ptr @wm1811_reva_patch, !150, !"wm1811_reva_patch", i1 false, i1 false}
!150 = !{!"../drivers/mfd/wm8994-core.c", i32 254, i32 34}
!151 = !{ptr @.str.76, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/mfd/wm8994-core.c", i32 61, i32 11}
!153 = !{ptr @.str.77, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/mfd/wm8994-core.c", i32 67, i32 11}
!155 = !{ptr @wm8994_devs, !156, !"wm8994_devs", i1 false, i1 false}
!156 = !{!"../drivers/mfd/wm8994-core.c", i32 59, i32 30}
!157 = !{ptr @wm8994_codec_resources, !158, !"wm8994_codec_resources", i1 false, i1 false}
!158 = !{!"../drivers/mfd/wm8994-core.c", i32 43, i32 30}
!159 = !{ptr @wm8994_gpio_resources, !160, !"wm8994_gpio_resources", i1 false, i1 false}
!160 = !{!"../drivers/mfd/wm8994-core.c", i32 51, i32 30}
!161 = !{ptr @wm8994_of_match, !162, !"wm8994_of_match", i1 false, i1 false}
!162 = !{!"../drivers/mfd/wm8994-core.c", i32 618, i32 34}
!163 = !{ptr @wm8994_pm_ops, !164, !"wm8994_pm_ops", i1 false, i1 false}
!164 = !{!"../drivers/mfd/wm8994-core.c", i32 678, i32 32}
!165 = !{ptr @.str.78, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/mfd/wm8994-core.c", i32 126, i32 4}
!167 = !{ptr @.str.79, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @wm8994_suspend._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @wm8994_suspend._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.80, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/mfd/wm8994-core.c", i32 128, i32 4}
!172 = !{ptr @wm8994_suspend.__UNIQUE_ID_ddebug289, !171, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!173 = !{ptr @.str.82, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/mfd/wm8994-core.c", i32 157, i32 3}
!175 = !{ptr @wm8994_suspend._entry.81, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @wm8994_suspend._entry_ptr.83, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.85, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/mfd/wm8994-core.c", i32 164, i32 3}
!179 = !{ptr @wm8994_suspend._entry.84, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @wm8994_suspend._entry_ptr.86, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.88, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/mfd/wm8994-core.c", i32 172, i32 3}
!183 = !{ptr @wm8994_suspend._entry.87, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @wm8994_suspend._entry_ptr.89, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.90, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/mfd/wm8994-core.c", i32 191, i32 3}
!187 = !{ptr @wm8994_resume._entry, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @wm8994_resume._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.92, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/mfd/wm8994-core.c", i32 198, i32 3}
!191 = !{ptr @wm8994_resume._entry.91, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @wm8994_resume._entry_ptr.93, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @wm8994_i2c_id, !194, !"wm8994_i2c_id", i1 false, i1 false}
!194 = !{!"../drivers/mfd/wm8994-core.c", i32 669, i32 35}
!195 = !{i32 1, !"wchar_size", i32 2}
!196 = !{i32 1, !"min_enum_size", i32 4}
!197 = !{i32 8, !"branch-target-enforcement", i32 0}
!198 = !{i32 8, !"sign-return-address", i32 0}
!199 = !{i32 8, !"sign-return-address-all", i32 0}
!200 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!201 = !{i32 7, !"uwtable", i32 1}
!202 = !{i32 7, !"frame-pointer", i32 2}
!203 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!204 = !{i64 2156024064, i64 2156024554, i64 2156024101, i64 2156024157, i64 2156024191, i64 2156024215, i64 2156024256, i64 2156024277, i64 2156024305, i64 2156024339}
!205 = !{i64 2156027118, i64 2156027608, i64 2156027155, i64 2156027211, i64 2156027245, i64 2156027269, i64 2156027310, i64 2156027331, i64 2156027359, i64 2156027393}
!206 = !{!"auto-init"}
!207 = !{i8 0, i8 2}
!208 = !{i64 2148223885}
!209 = !{i64 708708, i64 708733, i64 708755, i64 708771, i64 708783, i64 708803, i64 708827, i64 708843, i64 708855}
!210 = !{i64 2148224073}
!211 = !{i64 2148706281, i64 2148706286, i64 2148706299, i64 2148706343, i64 2148706377, i64 2148706398}
