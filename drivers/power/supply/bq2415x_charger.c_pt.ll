; ModuleID = '/llk/IR_all_yes/drivers/power/supply/bq2415x_charger.c_pt.bc'
source_filename = "../drivers/power/supply/bq2415x_charger.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
%union.power_supply_propval = type { i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.bq2415x_device = type { ptr, %struct.bq2415x_platform_data, ptr, %struct.power_supply_desc, %struct.delayed_work, ptr, %struct.notifier_block, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32 }
%struct.bq2415x_platform_data = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.power_supply = type { ptr, ptr, i32, ptr, i32, ptr, ptr, %struct.device, %struct.work_struct, %struct.delayed_work, %struct.spinlock, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_bq2415x_charger__294_1789_bq2415x_driver_init6 = internal global ptr @bq2415x_driver_init, section ".initcall6.init", align 4
@bq2415x_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @bq2415x_probe, ptr @bq2415x_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bq2415x_of_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @bq2415x_i2c_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_bq2415x_driver_exit = internal global ptr @bq2415x_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author295 = internal constant [53 x i8] c"bq2415x_charger.author=Pali Roh\C3\A1r <pali@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [51 x i8] c"bq2415x_charger.description=bq2415x charger driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [58 x i8] c"bq2415x_charger.file=drivers/power/supply/bq2415x_charger\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [28 x i8] c"bq2415x_charger.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bq2415x-charger\00", [16 x i8] zeroinitializer }, align 32
@bq2415x_of_match_table = internal constant { [13 x %struct.of_device_id], [620 x i8] } { [13 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,bq24150\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,bq24150a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,bq24151\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,bq24151a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,bq24152\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,bq24153\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,bq24153a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,bq24155\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,bq24156\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,bq24156a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,bq24157s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,bq24158\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [620 x i8] zeroinitializer }, align 32
@bq2415x_i2c_id_table = internal constant { [14 x %struct.i2c_device_id], [80 x i8] } { [14 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"bq2415x\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"bq24150\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"bq24150a\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"bq24151\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"bq24151a\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"bq24152\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.i2c_device_id { [20 x i8] c"bq24153\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.i2c_device_id { [20 x i8] c"bq24153a\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.i2c_device_id { [20 x i8] c"bq24155\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.i2c_device_id { [20 x i8] c"bq24156\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9 }, %struct.i2c_device_id { [20 x i8] c"bq24156a\00\00\00\00\00\00\00\00\00\00\00\00", i32 10 }, %struct.i2c_device_id { [20 x i8] c"bq24157s\00\00\00\00\00\00\00\00\00\00\00\00", i32 11 }, %struct.i2c_device_id { [20 x i8] c"bq24158\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 12 }, %struct.i2c_device_id zeroinitializer], [80 x i8] zeroinitializer }, align 32
@bq2415x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1537, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Neither devicetree, nor platform data, nor ACPI support\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bq2415x_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/power/supply/bq2415x_charger.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bq2415x_probe._entry_ptr = internal global ptr @bq2415x_probe._entry, section ".printk_index", align 4
@bq2415x_id_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.42, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @bq2415x_id_mutex, i64 52), ptr getelementptr (i8, ptr @bq2415x_id_mutex, i64 52) }, ptr @bq2415x_id_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.43, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@bq2415x_id = internal global { %struct.idr, [36 x i8] } { %struct.idr { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.44, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108868, ptr null }, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%d\00", [26 x i8] zeroinitializer }, align 32
@bq2415x_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1555, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to match device name\0A\00", [35 x i8] zeroinitializer }, align 32
@bq2415x_probe._entry_ptr.9 = internal global ptr @bq2415x_probe._entry.7, section ".printk_index", align 4
@bq2415x_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 1562, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to allocate device name\0A\00", [32 x i8] zeroinitializer }, align 32
@bq2415x_probe._entry_ptr.12 = internal global ptr @bq2415x_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ti,current-limit\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ti,weak-battery-voltage\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ti,battery-regulation-voltage\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ti,charge-current\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ti,termination-current\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ti,resistor-sense\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ti,usb-charger-detection\00", [39 x i8] zeroinitializer }, align 32
@bq2415x_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 1629, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to register power supply: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@bq2415x_probe._entry_ptr.22 = internal global ptr @bq2415x_probe._entry.20, section ".printk_index", align 4
@bq2415x_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 1635, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to set default values: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@bq2415x_probe._entry_ptr.25 = internal global ptr @bq2415x_probe._entry.23, section ".printk_index", align 4
@bq2415x_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 1643, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to reg notifier: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@bq2415x_probe._entry_ptr.28 = internal global ptr @bq2415x_probe._entry.26, section ".printk_index", align 4
@bq2415x_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.2, ptr @.str.3, i32 1648, ptr @.str.31, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"automode supported, waiting for events\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@bq2415x_probe._entry_ptr.32 = internal global ptr @bq2415x_probe._entry.29, section ".printk_index", align 4
@bq2415x_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.2, ptr @.str.3, i32 1651, ptr @.str.31, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"automode not supported\0A\00", [40 x i8] zeroinitializer }, align 32
@bq2415x_probe._entry_ptr.35 = internal global ptr @bq2415x_probe._entry.33, section ".printk_index", align 4
@bq2415x_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&(&bq->work)->work)\00", [58 x i8] zeroinitializer }, align 32
@bq2415x_probe.__key.37 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&(&bq->work)->timer\00", [44 x i8] zeroinitializer }, align 32
@bq2415x_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.2, ptr @.str.3, i32 1680, ptr @.str.31, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"driver registered\0A\00", [45 x i8] zeroinitializer }, align 32
@bq2415x_probe._entry_ptr.41 = internal global ptr @bq2415x_probe._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bq2415x_id_mutex.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bq2415x_id_mutex\00", [47 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bq2415x_id.xa_lock\00", [45 x i8] zeroinitializer }, align 32
@bq2415x_i2c_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.45, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @bq2415x_i2c_mutex, i64 52), ptr getelementptr (i8, ptr @bq2415x_i2c_mutex, i64 52) }, ptr @bq2415x_i2c_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.46, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bq2415x_i2c_mutex.wait_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bq2415x_i2c_mutex\00", [46 x i8] zeroinitializer }, align 32
@bq2415x_sysfs_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @bq2415x_sysfs_group, ptr null], [24 x i8] zeroinitializer }, align 32
@bq2415x_power_supply_props = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 73], [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.%d\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"chip %s, revision %s, vender code %.3d\00", [57 x i8] zeroinitializer }, align 32
@bq2415x_chip_name = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @.str.47, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101], [44 x i8] zeroinitializer }, align 32
@bq2415x_power_supply_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 1508, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to allocate model name\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bq2415x_power_supply_init\00", [38 x i8] zeroinitializer }, align 32
@bq2415x_power_supply_init._entry_ptr = internal global ptr @bq2415x_power_supply_init._entry, section ".printk_index", align 4
@bq2415x_sysfs_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @bq2415x_sysfs_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@bq2415x_sysfs_attrs = internal global { [18 x ptr], [56 x i8] } { [18 x ptr] [ptr @dev_attr_current_limit, ptr @dev_attr_weak_battery_voltage, ptr @dev_attr_battery_regulation_voltage, ptr @dev_attr_charge_current, ptr @dev_attr_termination_current, ptr @dev_attr_charge_termination_enable, ptr @dev_attr_high_impedance_enable, ptr @dev_attr_otg_pin_enable, ptr @dev_attr_stat_pin_enable, ptr @dev_attr_reported_mode, ptr @dev_attr_mode, ptr @dev_attr_timer, ptr @dev_attr_registers, ptr @dev_attr_otg_status, ptr @dev_attr_charge_status, ptr @dev_attr_boost_status, ptr @dev_attr_fault_status, ptr null], [56 x i8] zeroinitializer }, align 32
@dev_attr_current_limit = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq2415x_sysfs_show_limit, ptr @bq2415x_sysfs_set_limit }, [36 x i8] zeroinitializer }, align 32
@dev_attr_weak_battery_voltage = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq2415x_sysfs_show_limit, ptr @bq2415x_sysfs_set_limit }, [36 x i8] zeroinitializer }, align 32
@dev_attr_battery_regulation_voltage = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq2415x_sysfs_show_limit, ptr @bq2415x_sysfs_set_limit }, [36 x i8] zeroinitializer }, align 32
@dev_attr_charge_current = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq2415x_sysfs_show_limit, ptr @bq2415x_sysfs_set_limit }, [36 x i8] zeroinitializer }, align 32
@dev_attr_termination_current = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq2415x_sysfs_show_limit, ptr @bq2415x_sysfs_set_limit }, [36 x i8] zeroinitializer }, align 32
@dev_attr_charge_termination_enable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq2415x_sysfs_show_enable, ptr @bq2415x_sysfs_set_enable }, [36 x i8] zeroinitializer }, align 32
@dev_attr_high_impedance_enable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq2415x_sysfs_show_enable, ptr @bq2415x_sysfs_set_enable }, [36 x i8] zeroinitializer }, align 32
@dev_attr_otg_pin_enable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq2415x_sysfs_show_enable, ptr @bq2415x_sysfs_set_enable }, [36 x i8] zeroinitializer }, align 32
@dev_attr_stat_pin_enable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq2415x_sysfs_show_enable, ptr @bq2415x_sysfs_set_enable }, [36 x i8] zeroinitializer }, align 32
@dev_attr_reported_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq2415x_sysfs_show_reported_mode, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq2415x_sysfs_show_mode, ptr @bq2415x_sysfs_set_mode }, [36 x i8] zeroinitializer }, align 32
@dev_attr_timer = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.79, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq2415x_sysfs_show_timer, ptr @bq2415x_sysfs_set_timer }, [36 x i8] zeroinitializer }, align 32
@dev_attr_registers = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.82, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq2415x_sysfs_show_registers, ptr @bq2415x_sysfs_set_registers }, [36 x i8] zeroinitializer }, align 32
@dev_attr_otg_status = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.86, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq2415x_sysfs_show_status, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_charge_status = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.87, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq2415x_sysfs_show_status, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_boost_status = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.88, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq2415x_sysfs_show_status, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fault_status = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.89, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq2415x_sysfs_show_status, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"current_limit\00", [18 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"weak_battery_voltage\00", [43 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"battery_regulation_voltage\00", [37 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"charge_current\00", [17 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"termination_current\00", [44 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"charge_termination_enable\00", [38 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"high_impedance_enable\00", [42 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"otg_pin_enable\00", [17 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stat_pin_enable\00", [16 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reported_mode\00", [18 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"off\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"none\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"host\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dedicated\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"boost\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mode\00", [27 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"auto (\00", [25 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"host\00", [27 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dedicated\00", [22 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"boost\00", [26 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auto\00", [27 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"timer\00", [26 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"auto\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"registers\00", [22 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%#.2x=error %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%#.2x=%#.2x\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%x %x\00", [26 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"otg_status\00", [21 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"charge_status\00", [18 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"boost_status\00", [19 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fault_status\00", [19 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bq24150\00", [24 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bq24150a\00", [23 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bq24151\00", [24 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bq24151a\00", [23 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bq24152\00", [24 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bq24153\00", [24 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bq24153a\00", [23 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bq24155\00", [24 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bq24156\00", [24 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bq24156a\00", [23 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bq24157s\00", [23 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bq24158\00", [24 x i8] zeroinitializer }, align 32
@bq2415x_notifier_call.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.102, ptr @.str.103, ptr @.str.3, ptr @.str.104, i8 0, i8 -49, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bq2415x_charger\00", [16 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bq2415x_notifier_call\00", [42 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"notifier call was called\0A\00", [38 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@bq2415x_set_mode.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.102, ptr @.str.105, ptr @.str.3, ptr @.str.106, i8 0, i8 -70, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bq2415x_set_mode\00", [47 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"changing mode to: Offline\0A\00", [37 x i8] zeroinitializer }, align 32
@bq2415x_set_mode.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.102, ptr @.str.105, ptr @.str.3, ptr @.str.107, i8 0, i8 -69, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"changing mode to: N/A\0A\00", [41 x i8] zeroinitializer }, align 32
@bq2415x_set_mode.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.102, ptr @.str.105, ptr @.str.3, ptr @.str.108, i8 0, i8 -68, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"changing mode to: Host/HUB charger\0A\00", [60 x i8] zeroinitializer }, align 32
@bq2415x_set_mode.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.102, ptr @.str.105, ptr @.str.3, ptr @.str.109, i8 0, i8 -67, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"changing mode to: Dedicated charger\0A\00", [59 x i8] zeroinitializer }, align 32
@bq2415x_set_mode.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.102, ptr @.str.105, ptr @.str.3, ptr @.str.110, i8 0, i8 -66, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"changing mode to: Boost\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Resetting timer failed\00", [41 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Unknown error\00", [18 x i8] zeroinitializer }, align 32
@bq2415x_timer_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.3, i32 925, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Timer expired\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bq2415x_timer_work\00", [45 x i8] zeroinitializer }, align 32
@bq2415x_timer_work._entry_ptr = internal global ptr @bq2415x_timer_work._entry, section ".printk_index", align 4
@bq2415x_timer_work._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.114, ptr @.str.3, i32 928, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Battery voltage to low\0A\00", [40 x i8] zeroinitializer }, align 32
@bq2415x_timer_work._entry_ptr.117 = internal global ptr @bq2415x_timer_work._entry.115, section ".printk_index", align 4
@.str.118 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Overvoltage protection (chip fried)\00", [60 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Overload\00", [23 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Battery overvoltage protection\00", [33 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Thermal shutdown (too hot)\00", [37 x i8] zeroinitializer }, align 32
@bq2415x_timer_work._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.114, ptr @.str.3, i32 957, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Sleep mode\0A\00", [20 x i8] zeroinitializer }, align 32
@bq2415x_timer_work._entry_ptr.124 = internal global ptr @bq2415x_timer_work._entry.122, section ".printk_index", align 4
@bq2415x_timer_work._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.114, ptr @.str.3, i32 960, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Poor input source\0A\00", [45 x i8] zeroinitializer }, align 32
@bq2415x_timer_work._entry_ptr.127 = internal global ptr @bq2415x_timer_work._entry.125, section ".printk_index", align 4
@bq2415x_timer_work._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.3, i32 963, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@bq2415x_timer_work._entry_ptr.129 = internal global ptr @bq2415x_timer_work._entry.128, section ".printk_index", align 4
@bq2415x_timer_work._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.114, ptr @.str.3, i32 966, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"No battery\0A\00", [20 x i8] zeroinitializer }, align 32
@bq2415x_timer_work._entry_ptr.132 = internal global ptr @bq2415x_timer_work._entry.130, section ".printk_index", align 4
@bq2415x_timer_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.133, ptr @.str.3, i32 877, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bq2415x_timer_error\00", [44 x i8] zeroinitializer }, align 32
@bq2415x_timer_error._entry_ptr = internal global ptr @bq2415x_timer_error._entry, section ".printk_index", align 4
@bq2415x_timer_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.134, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @bq2415x_timer_mutex, i64 52), ptr getelementptr (i8, ptr @bq2415x_timer_mutex, i64 52) }, ptr @bq2415x_timer_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.135, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bq2415x_timer_mutex.wait_lock\00", [34 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bq2415x_timer_mutex\00", [44 x i8] zeroinitializer }, align 32
@bq2415x_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.137, ptr @.str.3, i32 1715, ptr @.str.31, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"driver unregistered\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bq2415x_remove\00", [17 x i8] zeroinitializer }, align 32
@bq2415x_remove._entry_ptr = internal global ptr @bq2415x_remove._entry, section ".printk_index", align 4
@switch.table.bq2415x_probe = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 2, i32 1, i32 1, i32 5, i32 1, i32 1, i32 8], [36 x i8] zeroinitializer }, align 32
@switch.table.bq2415x_probe.138 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 2, i32 1, i32 1, i32 5, i32 1, i32 1, i32 8], [36 x i8] zeroinitializer }, align 32
@switch.table.bq2415x_sysfs_show_limit = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 100, i32 500, i32 800, i32 1800], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 106, i64 107]
@__sancov_gen_cov_switch_values.139 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.140 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.141 = internal global [4 x i64] [i64 2, i64 16, i64 106, i64 107]
@__sancov_gen_cov_switch_values.142 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.143 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.144 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.145 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.146 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.147 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.148 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.149 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 73]
@__sancov_gen_cov_switch_values.150 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.151 = internal global [31 x i64] [i64 29, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28]
@__sancov_gen_cov_switch_values.152 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.153 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.154 = private unnamed_addr constant [15 x i8] c"bq2415x_driver\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1779, i32 26 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1781, i32 11 }
@___asan_gen_.160 = private unnamed_addr constant [23 x i8] c"bq2415x_of_match_table\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1761, i32 34 }
@___asan_gen_.163 = private unnamed_addr constant [21 x i8] c"bq2415x_i2c_id_table\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1722, i32 35 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1537, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant [17 x i8] c"bq2415x_id_mutex\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [11 x i8] c"bq2415x_id\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1549, i32 32 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1555, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1562, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1589, i32 13 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1594, i32 6 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1599, i32 5 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1604, i32 13 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1609, i32 5 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1614, i32 13 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1620, i32 7 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1629, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1635, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1643, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1648, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1651, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1677, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1680, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 180, i32 8 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 178, i32 8 }
@___asan_gen_.286 = private unnamed_addr constant [18 x i8] c"bq2415x_i2c_mutex\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 182, i32 8 }
@___asan_gen_.295 = private unnamed_addr constant [21 x i8] c"bq2415x_sysfs_groups\00", align 1
@___asan_gen_.298 = private unnamed_addr constant [27 x i8] c"bq2415x_power_supply_props\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 990, i32 35 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1499, i32 18 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1501, i32 19 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1504, i32 5 }
@___asan_gen_.310 = private unnamed_addr constant [18 x i8] c"bq2415x_chip_name\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 142, i32 14 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1508, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant [20 x i8] c"bq2415x_sysfs_group\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1471, i32 1 }
@___asan_gen_.325 = private unnamed_addr constant [20 x i8] c"bq2415x_sysfs_attrs\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1442, i32 26 }
@___asan_gen_.328 = private unnamed_addr constant [23 x i8] c"dev_attr_current_limit\00", align 1
@___asan_gen_.331 = private unnamed_addr constant [30 x i8] c"dev_attr_weak_battery_voltage\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1409, i32 8 }
@___asan_gen_.334 = private unnamed_addr constant [36 x i8] c"dev_attr_battery_regulation_voltage\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1411, i32 8 }
@___asan_gen_.337 = private unnamed_addr constant [24 x i8] c"dev_attr_charge_current\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1413, i32 8 }
@___asan_gen_.340 = private unnamed_addr constant [29 x i8] c"dev_attr_termination_current\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1415, i32 8 }
@___asan_gen_.343 = private unnamed_addr constant [35 x i8] c"dev_attr_charge_termination_enable\00", align 1
@___asan_gen_.346 = private unnamed_addr constant [31 x i8] c"dev_attr_high_impedance_enable\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1420, i32 8 }
@___asan_gen_.349 = private unnamed_addr constant [24 x i8] c"dev_attr_otg_pin_enable\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1422, i32 8 }
@___asan_gen_.352 = private unnamed_addr constant [25 x i8] c"dev_attr_stat_pin_enable\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1424, i32 8 }
@___asan_gen_.355 = private unnamed_addr constant [23 x i8] c"dev_attr_reported_mode\00", align 1
@___asan_gen_.358 = private unnamed_addr constant [14 x i8] c"dev_attr_mode\00", align 1
@___asan_gen_.361 = private unnamed_addr constant [15 x i8] c"dev_attr_timer\00", align 1
@___asan_gen_.364 = private unnamed_addr constant [19 x i8] c"dev_attr_registers\00", align 1
@___asan_gen_.367 = private unnamed_addr constant [20 x i8] c"dev_attr_otg_status\00", align 1
@___asan_gen_.370 = private unnamed_addr constant [23 x i8] c"dev_attr_charge_status\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1438, i32 8 }
@___asan_gen_.373 = private unnamed_addr constant [22 x i8] c"dev_attr_boost_status\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1439, i32 8 }
@___asan_gen_.376 = private unnamed_addr constant [22 x i8] c"dev_attr_fault_status\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1440, i32 8 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1407, i32 8 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1328, i32 35 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1330, i32 35 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1332, i32 35 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1334, i32 35 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1341, i32 22 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1418, i32 8 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1392, i32 35 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1394, i32 35 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1396, i32 35 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1427, i32 8 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1218, i32 23 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1220, i32 23 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1222, i32 23 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1224, i32 23 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1226, i32 23 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1429, i32 8 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1178, i32 27 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1182, i32 27 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1185, i32 27 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1188, i32 27 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1191, i32 27 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1194, i32 27 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1126, i32 19 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1151, i32 26 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1431, i32 8 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1101, i32 23 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1104, i32 23 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1434, i32 8 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1264, i32 23 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1265, i32 22 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1244, i32 18 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1437, i32 8 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1050, i32 35 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1052, i32 35 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1054, i32 35 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 144, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 145, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 146, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 147, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 148, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 149, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 150, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 151, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 152, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 153, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 154, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 155, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 828, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 744, i32 3 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 748, i32 3 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 752, i32 3 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 756, i32 3 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 760, i32 3 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 903, i32 27 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 909, i32 27 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 925, i32 4 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 928, i32 4 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 934, i32 5 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 937, i32 28 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 941, i32 5 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 945, i32 6 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 957, i32 4 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 960, i32 4 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 963, i32 4 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 966, i32 4 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 877, i32 2 }
@___asan_gen_.610 = private unnamed_addr constant [20 x i8] c"bq2415x_timer_mutex\00", align 1
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 181, i32 8 }
@___asan_gen_.619 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.625 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.626 = private constant [42 x i8] c"../drivers/power/supply/bq2415x_charger.c\00", align 1
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1715, i32 2 }
@___asan_gen_.628 = private unnamed_addr constant [27 x i8] c"switch.table.bq2415x_probe\00", align 1
@___asan_gen_.629 = private unnamed_addr constant [31 x i8] c"switch.table.bq2415x_probe.138\00", align 1
@___asan_gen_.630 = private unnamed_addr constant [38 x i8] c"switch.table.bq2415x_sysfs_show_limit\00", align 1
@llvm.compiler.used = appending global [186 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_bq2415x_driver_exit, ptr @__initcall__kmod_bq2415x_charger__294_1789_bq2415x_driver_init6, ptr @bq2415x_driver_exit, ptr @bq2415x_power_supply_init._entry, ptr @bq2415x_power_supply_init._entry_ptr, ptr @bq2415x_probe._entry, ptr @bq2415x_probe._entry.10, ptr @bq2415x_probe._entry.20, ptr @bq2415x_probe._entry.23, ptr @bq2415x_probe._entry.26, ptr @bq2415x_probe._entry.29, ptr @bq2415x_probe._entry.33, ptr @bq2415x_probe._entry.39, ptr @bq2415x_probe._entry.7, ptr @bq2415x_probe._entry_ptr, ptr @bq2415x_probe._entry_ptr.12, ptr @bq2415x_probe._entry_ptr.22, ptr @bq2415x_probe._entry_ptr.25, ptr @bq2415x_probe._entry_ptr.28, ptr @bq2415x_probe._entry_ptr.32, ptr @bq2415x_probe._entry_ptr.35, ptr @bq2415x_probe._entry_ptr.41, ptr @bq2415x_probe._entry_ptr.9, ptr @bq2415x_remove._entry, ptr @bq2415x_remove._entry_ptr, ptr @bq2415x_timer_error._entry, ptr @bq2415x_timer_error._entry_ptr, ptr @bq2415x_timer_work._entry, ptr @bq2415x_timer_work._entry.115, ptr @bq2415x_timer_work._entry.122, ptr @bq2415x_timer_work._entry.125, ptr @bq2415x_timer_work._entry.128, ptr @bq2415x_timer_work._entry.130, ptr @bq2415x_timer_work._entry_ptr, ptr @bq2415x_timer_work._entry_ptr.117, ptr @bq2415x_timer_work._entry_ptr.124, ptr @bq2415x_timer_work._entry_ptr.127, ptr @bq2415x_timer_work._entry_ptr.129, ptr @bq2415x_timer_work._entry_ptr.132, ptr @bq2415x_driver, ptr @.str, ptr @bq2415x_of_match_table, ptr @bq2415x_i2c_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @bq2415x_id_mutex, ptr @bq2415x_id, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.31, ptr @.str.34, ptr @bq2415x_probe.__key, ptr @.str.36, ptr @bq2415x_probe.__key.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @bq2415x_i2c_mutex, ptr @.str.45, ptr @.str.46, ptr @bq2415x_sysfs_groups, ptr @bq2415x_power_supply_props, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @bq2415x_chip_name, ptr @.str.50, ptr @.str.51, ptr @bq2415x_sysfs_group, ptr @bq2415x_sysfs_attrs, ptr @dev_attr_current_limit, ptr @dev_attr_weak_battery_voltage, ptr @dev_attr_battery_regulation_voltage, ptr @dev_attr_charge_current, ptr @dev_attr_termination_current, ptr @dev_attr_charge_termination_enable, ptr @dev_attr_high_impedance_enable, ptr @dev_attr_otg_pin_enable, ptr @dev_attr_stat_pin_enable, ptr @dev_attr_reported_mode, ptr @dev_attr_mode, ptr @dev_attr_timer, ptr @dev_attr_registers, ptr @dev_attr_otg_status, ptr @dev_attr_charge_status, ptr @dev_attr_boost_status, ptr @dev_attr_fault_status, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.116, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.123, ptr @.str.126, ptr @.str.131, ptr @.str.133, ptr @bq2415x_timer_mutex, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @switch.table.bq2415x_probe, ptr @switch.table.bq2415x_probe.138, ptr @switch.table.bq2415x_sysfs_show_limit], section "llvm.metadata"
@0 = internal global [161 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2415x_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2415x_of_match_table to i32), i32 2548, i32 3168, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2415x_i2c_id_table to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2415x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2415x_id_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2415x_id to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2415x_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2415x_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2415x_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2415x_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2415x_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2415x_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2415x_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2415x_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2415x_probe.__key.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2415x_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2415x_i2c_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2415x_sysfs_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2415x_power_supply_props to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2415x_chip_name to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2415x_power_supply_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2415x_sysfs_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2415x_sysfs_attrs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_current_limit to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_weak_battery_voltage to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_battery_regulation_voltage to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_charge_current to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_termination_current to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_charge_termination_enable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_high_impedance_enable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_otg_pin_enable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_stat_pin_enable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_reported_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_timer to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_registers to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_otg_status to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_charge_status to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_boost_status to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fault_status to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2415x_timer_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2415x_timer_work._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2415x_timer_work._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2415x_timer_work._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2415x_timer_work._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2415x_timer_work._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2415x_timer_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2415x_timer_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2415x_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bq2415x_probe to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bq2415x_probe.138 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bq2415x_sysfs_show_limit to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bq2415x_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @bq2415x_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bq2415x_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @bq2415x_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq2415x_probe(ptr noundef %client, ptr noundef %id) #2 align 64 {
entry:
  %revstr.i = alloca [8 x i8], align 8
  %psy_cfg.i = alloca %struct.power_supply_config, align 4
  %prop = alloca %union.power_supply_propval, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %2 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prop) #9
  %4 = ptrtoint ptr %prop to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %prop, align 4, !annotation !317
  %tobool.not = icmp eq ptr %1, null
  %tobool2.not = icmp eq ptr %3, null
  %or.cond = select i1 %tobool.not, i1 %tobool2.not, i1 false
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @bq2415x_id_mutex, i32 noundef 0) #9
  %call = tail call i32 @idr_alloc(ptr noundef nonnull @bq2415x_id, ptr noundef %client, i32 noundef 0, i32 noundef 0, i32 noundef 3264) #9
  tail call void @mutex_unlock(ptr noundef nonnull @bq2415x_id_mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %tobool6.not = icmp eq ptr %id, null
  br i1 %tobool6.not, label %if.end5.do.end30_crit_edge, label %if.end25

if.end5.do.end30_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30

if.end25:                                         ; preds = %if.end5
  %call9 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.6, ptr noundef nonnull %id, i32 noundef %call) #9
  %tobool26.not = icmp eq ptr %call9, null
  br i1 %tobool26.not, label %if.end25.do.end30_crit_edge, label %if.end32

if.end25.do.end30_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30

do.end30:                                         ; preds = %if.end25.do.end30_crit_edge, %if.end5.do.end30_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #12
  br label %error_1

if.end32:                                         ; preds = %if.end25
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 240, i32 noundef 3520) #9
  %tobool35.not = icmp eq ptr %call.i, null
  br i1 %tobool35.not, label %if.end32.if.end195_crit_edge, label %if.end48

if.end32.if.end195_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end195

if.end48:                                         ; preds = %if.end32
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %id38 = getelementptr inbounds %struct.bq2415x_device, ptr %call.i, i32 0, i32 15
  %6 = ptrtoint ptr %id38 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call, ptr %id38, align 4
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %call.i, align 4
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %8 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %driver_data, align 4
  %chip = getelementptr inbounds %struct.bq2415x_device, ptr %call.i, i32 0, i32 9
  %10 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %chip, align 4
  %name49 = getelementptr inbounds %struct.bq2415x_device, ptr %call.i, i32 0, i32 12
  %11 = ptrtoint ptr %name49 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call9, ptr %name49, align 4
  %mode = getelementptr inbounds %struct.bq2415x_device, ptr %call.i, i32 0, i32 8
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %mode, align 4
  %reported_mode = getelementptr inbounds %struct.bq2415x_device, ptr %call.i, i32 0, i32 7
  %13 = ptrtoint ptr %reported_mode to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %reported_mode, align 4
  %autotimer = getelementptr inbounds %struct.bq2415x_device, ptr %call.i, i32 0, i32 13
  %14 = ptrtoint ptr %autotimer to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %autotimer, align 4
  %automode = getelementptr inbounds %struct.bq2415x_device, ptr %call.i, i32 0, i32 14
  %15 = ptrtoint ptr %automode to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %automode, align 4
  br i1 %tobool.not, label %if.else91, label %if.then51

if.then51:                                        ; preds = %if.end48
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  %init_data = getelementptr inbounds %struct.bq2415x_device, ptr %call.i, i32 0, i32 1
  %call.i298 = tail call i32 @device_property_read_u32_array(ptr noundef %17, ptr noundef nonnull @.str.13, ptr noundef %init_data, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i298)
  %tobool54.not = icmp eq i32 %call.i298, 0
  br i1 %tobool54.not, label %if.end56, label %if.then51.if.then193_crit_edge

if.then51.if.then193_crit_edge:                   ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then193

if.end56:                                         ; preds = %if.then51
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  %weak_battery_voltage = getelementptr inbounds %struct.bq2415x_device, ptr %call.i, i32 0, i32 1, i32 1
  %call.i299 = tail call i32 @device_property_read_u32_array(ptr noundef %19, ptr noundef nonnull @.str.14, ptr noundef %weak_battery_voltage, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i299)
  %tobool60.not = icmp eq i32 %call.i299, 0
  br i1 %tobool60.not, label %if.end62, label %if.end56.if.then193_crit_edge

if.end56.if.then193_crit_edge:                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then193

if.end62:                                         ; preds = %if.end56
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 4
  %battery_regulation_voltage = getelementptr inbounds %struct.bq2415x_device, ptr %call.i, i32 0, i32 1, i32 2
  %call.i300 = tail call i32 @device_property_read_u32_array(ptr noundef %21, ptr noundef nonnull @.str.15, ptr noundef %battery_regulation_voltage, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i300)
  %tobool66.not = icmp eq i32 %call.i300, 0
  br i1 %tobool66.not, label %if.end68, label %if.end62.if.then193_crit_edge

if.end62.if.then193_crit_edge:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then193

if.end68:                                         ; preds = %if.end62
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i, align 4
  %charge_current = getelementptr inbounds %struct.bq2415x_device, ptr %call.i, i32 0, i32 1, i32 3
  %call.i301 = tail call i32 @device_property_read_u32_array(ptr noundef %23, ptr noundef nonnull @.str.16, ptr noundef %charge_current, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i301)
  %tobool72.not = icmp eq i32 %call.i301, 0
  br i1 %tobool72.not, label %if.end74, label %if.end68.if.then193_crit_edge

if.end68.if.then193_crit_edge:                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then193

if.end74:                                         ; preds = %if.end68
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.i, align 4
  %termination_current = getelementptr inbounds %struct.bq2415x_device, ptr %call.i, i32 0, i32 1, i32 4
  %call.i302 = tail call i32 @device_property_read_u32_array(ptr noundef %25, ptr noundef nonnull @.str.17, ptr noundef %termination_current, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i302)
  %tobool78.not = icmp eq i32 %call.i302, 0
  br i1 %tobool78.not, label %if.end80, label %if.end74.if.then193_crit_edge

if.end74.if.then193_crit_edge:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then193

if.end80:                                         ; preds = %if.end74
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i, align 4
  %resistor_sense = getelementptr inbounds %struct.bq2415x_device, ptr %call.i, i32 0, i32 1, i32 5
  %call.i303 = tail call i32 @device_property_read_u32_array(ptr noundef %27, ptr noundef nonnull @.str.18, ptr noundef %resistor_sense, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i303)
  %tobool84.not = icmp eq i32 %call.i303, 0
  br i1 %tobool84.not, label %if.then88, label %if.end80.if.then193_crit_edge

if.end80.if.then193_crit_edge:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then193

if.then88:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  %call89 = tail call fastcc ptr @of_parse_phandle(ptr noundef nonnull %1)
  %notify_node = getelementptr inbounds %struct.bq2415x_device, ptr %call.i, i32 0, i32 5
  %28 = ptrtoint ptr %notify_node to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call89, ptr %notify_node, align 4
  br label %if.end93

if.else91:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %init_data92 = getelementptr inbounds %struct.bq2415x_device, ptr %call.i, i32 0, i32 1
  %29 = call ptr @memcpy(ptr %init_data92, ptr %3, i32 28)
  br label %if.end93

if.end93:                                         ; preds = %if.else91, %if.then88
  tail call fastcc void @bq2415x_reset_chip(ptr noundef nonnull %call.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %revstr.i) #9
  %30 = ptrtoint ptr %revstr.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 -1, ptr %revstr.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg.i) #9
  %31 = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg.i, i32 0, i32 1
  %32 = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg.i, i32 0, i32 2
  %33 = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg.i, i32 0, i32 3
  %34 = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg.i, i32 0, i32 4
  %35 = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg.i, i32 0, i32 5
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call.i, align 4
  %of_node1.i = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 27
  %38 = ptrtoint ptr %of_node1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %of_node1.i, align 8
  %40 = ptrtoint ptr %psy_cfg.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %psy_cfg.i, align 4
  %41 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %31, align 4
  %42 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i, ptr %32, align 4
  %43 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @bq2415x_sysfs_groups, ptr %33, align 4
  %44 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %34, align 4
  %45 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %35, align 4
  %46 = ptrtoint ptr %name49 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %name49, align 4
  %charger_desc.i = getelementptr inbounds %struct.bq2415x_device, ptr %call.i, i32 0, i32 3
  %48 = ptrtoint ptr %charger_desc.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %charger_desc.i, align 4
  %type.i = getelementptr inbounds %struct.bq2415x_device, ptr %call.i, i32 0, i32 3, i32 1
  %49 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 4, ptr %type.i, align 4
  %properties.i = getelementptr inbounds %struct.bq2415x_device, ptr %call.i, i32 0, i32 3, i32 4
  %50 = ptrtoint ptr %properties.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @bq2415x_power_supply_props, ptr %properties.i, align 4
  %num_properties.i = getelementptr inbounds %struct.bq2415x_device, ptr %call.i, i32 0, i32 3, i32 5
  %51 = ptrtoint ptr %num_properties.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 2, ptr %num_properties.i, align 4
  %get_property.i = getelementptr inbounds %struct.bq2415x_device, ptr %call.i, i32 0, i32 3, i32 6
  %52 = ptrtoint ptr %get_property.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @bq2415x_power_supply_get_property, ptr %get_property.i, align 4
  %call.i.i = tail call fastcc i32 @bq2415x_exec_command(ptr noundef nonnull %call.i, i32 noundef 27) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end93.bq2415x_detect_chip.exit.i_crit_edge, label %if.end.i.i

if.end93.bq2415x_detect_chip.exit.i_crit_edge:    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_detect_chip.exit.i

if.end.i.i:                                       ; preds = %if.end93
  %addr.i.i = getelementptr i8, ptr %37, i32 -30
  %53 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %addr.i.i, align 2
  %55 = zext i16 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values)
  switch i16 %54, label %if.end.i.i.bq2415x_detect_chip.exit.i_crit_edge [
    i16 107, label %sw.bb.i.i
    i16 106, label %sw.bb28.i.i
  ]

if.end.i.i.bq2415x_detect_chip.exit.i_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_detect_chip.exit.i

sw.bb.i.i:                                        ; preds = %if.end.i.i
  %56 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %call.i.i, label %sw.bb.i.i.bq2415x_detect_chip.exit.i_crit_edge [
    i32 0, label %sw.bb1.i.i
    i32 1, label %sw.bb7.i.i
    i32 2, label %sw.bb21.i.i
  ]

sw.bb.i.i.bq2415x_detect_chip.exit.i_crit_edge:   ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_detect_chip.exit.i

sw.bb1.i.i:                                       ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %58)
  %cmp2.i.i = icmp eq i32 %58, 4
  %..i.i = select i1 %cmp2.i.i, i32 4, i32 3
  br label %bq2415x_detect_chip.exit.i

sw.bb7.i.i:                                       ; preds = %sw.bb.i.i
  %59 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %chip, align 4
  %switch.tableidx = add i32 %60, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %61 = icmp ult i32 %switch.tableidx, 7
  br i1 %61, label %switch.lookup, label %sw.bb7.i.i.bq2415x_detect_chip.exit.i_crit_edge

sw.bb7.i.i.bq2415x_detect_chip.exit.i_crit_edge:  ; preds = %sw.bb7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_detect_chip.exit.i

sw.bb21.i.i:                                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %63)
  %cmp23.i.i = icmp eq i32 %63, 7
  %.65.i.i = select i1 %cmp23.i.i, i32 7, i32 6
  br label %bq2415x_detect_chip.exit.i

sw.bb28.i.i:                                      ; preds = %if.end.i.i
  %64 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %call.i.i, label %sw.bb28.i.i.bq2415x_detect_chip.exit.i_crit_edge [
    i32 0, label %sw.bb29.i.i
    i32 2, label %sw.bb36.i.i
  ]

sw.bb28.i.i.bq2415x_detect_chip.exit.i_crit_edge: ; preds = %sw.bb28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_detect_chip.exit.i

sw.bb29.i.i:                                      ; preds = %sw.bb28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %66)
  %cmp31.i.i = icmp eq i32 %66, 10
  %.66.i.i = select i1 %cmp31.i.i, i32 10, i32 9
  br label %bq2415x_detect_chip.exit.i

sw.bb36.i.i:                                      ; preds = %sw.bb28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %68)
  %cmp38.i.i = icmp eq i32 %68, 11
  %.67.i.i = select i1 %cmp38.i.i, i32 11, i32 12
  br label %bq2415x_detect_chip.exit.i

switch.lookup:                                    ; preds = %sw.bb7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.bq2415x_probe, i32 0, i32 %switch.tableidx
  %69 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %69)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bq2415x_detect_chip.exit.i

bq2415x_detect_chip.exit.i:                       ; preds = %switch.lookup, %sw.bb36.i.i, %sw.bb29.i.i, %sw.bb28.i.i.bq2415x_detect_chip.exit.i_crit_edge, %sw.bb21.i.i, %sw.bb7.i.i.bq2415x_detect_chip.exit.i_crit_edge, %sw.bb1.i.i, %sw.bb.i.i.bq2415x_detect_chip.exit.i_crit_edge, %if.end.i.i.bq2415x_detect_chip.exit.i_crit_edge, %if.end93.bq2415x_detect_chip.exit.i_crit_edge
  %70 = phi i32 [ 0, %if.end93.bq2415x_detect_chip.exit.i_crit_edge ], [ 0, %if.end.i.i.bq2415x_detect_chip.exit.i_crit_edge ], [ 0, %sw.bb28.i.i.bq2415x_detect_chip.exit.i_crit_edge ], [ %.67.i.i, %sw.bb36.i.i ], [ %.66.i.i, %sw.bb29.i.i ], [ 0, %sw.bb.i.i.bq2415x_detect_chip.exit.i_crit_edge ], [ %.65.i.i, %sw.bb21.i.i ], [ 1, %sw.bb7.i.i.bq2415x_detect_chip.exit.i_crit_edge ], [ %..i.i, %sw.bb1.i.i ], [ %switch.load, %switch.lookup ]
  %call.i57.i = tail call fastcc i32 @bq2415x_exec_command(ptr noundef nonnull %call.i, i32 noundef 28) #9
  %71 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %call.i, align 4
  %call.i.i.i = tail call fastcc i32 @bq2415x_exec_command(ptr noundef nonnull %call.i, i32 noundef 27) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %bq2415x_detect_chip.exit.i.if.then9.i_crit_edge, label %if.end.i.i.i

bq2415x_detect_chip.exit.i.if.then9.i_crit_edge:  ; preds = %bq2415x_detect_chip.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9.i

if.end.i.i.i:                                     ; preds = %bq2415x_detect_chip.exit.i
  %addr.i.i.i = getelementptr i8, ptr %72, i32 -30
  %73 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %addr.i.i.i, align 2
  %75 = zext i16 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.141)
  switch i16 %74, label %if.end.i.i.i.bq2415x_detect_chip.exit.i.i_crit_edge [
    i16 107, label %sw.bb.i.i.i
    i16 106, label %sw.bb28.i.i.i
  ]

if.end.i.i.i.bq2415x_detect_chip.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_detect_chip.exit.i.i

sw.bb.i.i.i:                                      ; preds = %if.end.i.i.i
  %76 = zext i32 %call.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %call.i.i.i, label %sw.bb.i.i.i.bq2415x_detect_chip.exit.i.i_crit_edge [
    i32 0, label %sw.bb1.i.i.i
    i32 1, label %sw.bb7.i.i.i
    i32 2, label %sw.bb21.i.i.i
  ]

sw.bb.i.i.i.bq2415x_detect_chip.exit.i.i_crit_edge: ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_detect_chip.exit.i.i

sw.bb1.i.i.i:                                     ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %78)
  %cmp2.i.i.i = icmp eq i32 %78, 4
  %..i.i.i = select i1 %cmp2.i.i.i, i32 4, i32 3
  br label %bq2415x_detect_chip.exit.i.i

sw.bb7.i.i.i:                                     ; preds = %sw.bb.i.i.i
  %79 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %chip, align 4
  %switch.tableidx319 = add i32 %80, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx319)
  %81 = icmp ult i32 %switch.tableidx319, 7
  br i1 %81, label %switch.lookup318, label %sw.bb7.i.i.i.bq2415x_detect_chip.exit.i.i_crit_edge

sw.bb7.i.i.i.bq2415x_detect_chip.exit.i.i_crit_edge: ; preds = %sw.bb7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_detect_chip.exit.i.i

sw.bb21.i.i.i:                                    ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %82 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %83)
  %cmp23.i.i.i = icmp eq i32 %83, 7
  %.65.i.i.i = select i1 %cmp23.i.i.i, i32 7, i32 6
  br label %bq2415x_detect_chip.exit.i.i

sw.bb28.i.i.i:                                    ; preds = %if.end.i.i.i
  %84 = zext i32 %call.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %call.i.i.i, label %sw.bb28.i.i.i.bq2415x_detect_chip.exit.i.i_crit_edge [
    i32 0, label %sw.bb29.i.i.i
    i32 2, label %sw.bb36.i.i.i
  ]

sw.bb28.i.i.i.bq2415x_detect_chip.exit.i.i_crit_edge: ; preds = %sw.bb28.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_detect_chip.exit.i.i

sw.bb29.i.i.i:                                    ; preds = %sw.bb28.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %86)
  %cmp31.i.i.i = icmp eq i32 %86, 10
  %.66.i.i.i = select i1 %cmp31.i.i.i, i32 10, i32 9
  br label %bq2415x_detect_chip.exit.i.i

sw.bb36.i.i.i:                                    ; preds = %sw.bb28.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %87 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %88)
  %cmp38.i.i.i = icmp eq i32 %88, 11
  %.67.i.i.i = select i1 %cmp38.i.i.i, i32 11, i32 12
  br label %bq2415x_detect_chip.exit.i.i

switch.lookup318:                                 ; preds = %sw.bb7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep320 = getelementptr inbounds [7 x i32], ptr @switch.table.bq2415x_probe.138, i32 0, i32 %switch.tableidx319
  %89 = ptrtoint ptr %switch.gep320 to i32
  call void @__asan_load4_noabort(i32 %89)
  %switch.load321 = load i32, ptr %switch.gep320, align 4
  br label %bq2415x_detect_chip.exit.i.i

bq2415x_detect_chip.exit.i.i:                     ; preds = %switch.lookup318, %sw.bb36.i.i.i, %sw.bb29.i.i.i, %sw.bb28.i.i.i.bq2415x_detect_chip.exit.i.i_crit_edge, %sw.bb21.i.i.i, %sw.bb7.i.i.i.bq2415x_detect_chip.exit.i.i_crit_edge, %sw.bb1.i.i.i, %sw.bb.i.i.i.bq2415x_detect_chip.exit.i.i_crit_edge, %if.end.i.i.i.bq2415x_detect_chip.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %..i.i.i, %sw.bb1.i.i.i ], [ 1, %sw.bb7.i.i.i.bq2415x_detect_chip.exit.i.i_crit_edge ], [ %.65.i.i.i, %sw.bb21.i.i.i ], [ 0, %sw.bb.i.i.i.bq2415x_detect_chip.exit.i.i_crit_edge ], [ %.66.i.i.i, %sw.bb29.i.i.i ], [ %.67.i.i.i, %sw.bb36.i.i.i ], [ 0, %sw.bb28.i.i.i.bq2415x_detect_chip.exit.i.i_crit_edge ], [ 0, %if.end.i.i.i.bq2415x_detect_chip.exit.i.i_crit_edge ], [ %switch.load321, %switch.lookup318 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57.i)
  %cmp.i58.i = icmp slt i32 %call.i57.i, 0
  br i1 %cmp.i58.i, label %bq2415x_detect_chip.exit.i.i.if.then9.i_crit_edge, label %if.end.i59.i

bq2415x_detect_chip.exit.i.i.if.then9.i_crit_edge: ; preds = %bq2415x_detect_chip.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9.i

if.end.i59.i:                                     ; preds = %bq2415x_detect_chip.exit.i.i
  %90 = zext i32 %retval.0.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %retval.0.i.i.i, label %if.end.i59.i.if.then9.i_crit_edge [
    i32 1, label %if.end.i59.i.land.lhs.true.i.i_crit_edge
    i32 2, label %if.end.i59.i.land.lhs.true.i.i_crit_edge322
    i32 3, label %if.end.i59.i.land.lhs.true.i.i_crit_edge323
    i32 4, label %if.end.i59.i.land.lhs.true.i.i_crit_edge324
    i32 5, label %if.end.i59.i.land.lhs.true.i.i_crit_edge325
    i32 6, label %if.end.i59.i.sw.bb7.i60.i_crit_edge
    i32 7, label %if.end.i59.i.sw.bb7.i60.i_crit_edge326
    i32 9, label %if.end.i59.i.sw.bb7.i60.i_crit_edge327
    i32 10, label %if.end.i59.i.sw.bb7.i60.i_crit_edge328
    i32 11, label %if.end.i59.i.sw.bb7.i60.i_crit_edge329
    i32 12, label %if.end.i59.i.sw.bb7.i60.i_crit_edge330
    i32 8, label %sw.bb14.i.i
  ]

if.end.i59.i.sw.bb7.i60.i_crit_edge330:           ; preds = %if.end.i59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7.i60.i

if.end.i59.i.sw.bb7.i60.i_crit_edge329:           ; preds = %if.end.i59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7.i60.i

if.end.i59.i.sw.bb7.i60.i_crit_edge328:           ; preds = %if.end.i59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7.i60.i

if.end.i59.i.sw.bb7.i60.i_crit_edge327:           ; preds = %if.end.i59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7.i60.i

if.end.i59.i.sw.bb7.i60.i_crit_edge326:           ; preds = %if.end.i59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7.i60.i

if.end.i59.i.sw.bb7.i60.i_crit_edge:              ; preds = %if.end.i59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7.i60.i

if.end.i59.i.land.lhs.true.i.i_crit_edge325:      ; preds = %if.end.i59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.i

if.end.i59.i.land.lhs.true.i.i_crit_edge324:      ; preds = %if.end.i59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.i

if.end.i59.i.land.lhs.true.i.i_crit_edge323:      ; preds = %if.end.i59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.i

if.end.i59.i.land.lhs.true.i.i_crit_edge322:      ; preds = %if.end.i59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.i

if.end.i59.i.land.lhs.true.i.i_crit_edge:         ; preds = %if.end.i59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.i

if.end.i59.i.if.then9.i_crit_edge:                ; preds = %if.end.i59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9.i

land.lhs.true.i.i:                                ; preds = %if.end.i59.i.land.lhs.true.i.i_crit_edge, %if.end.i59.i.land.lhs.true.i.i_crit_edge322, %if.end.i59.i.land.lhs.true.i.i_crit_edge323, %if.end.i59.i.land.lhs.true.i.i_crit_edge324, %if.end.i59.i.land.lhs.true.i.i_crit_edge325
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i57.i)
  %cmp4.i.i = icmp ult i32 %call.i57.i, 4
  br i1 %cmp4.i.i, label %land.lhs.true.i.i.if.else11.i_crit_edge, label %land.lhs.true.i.i.if.then9.i_crit_edge

land.lhs.true.i.i.if.then9.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9.i

land.lhs.true.i.i.if.else11.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else11.i

sw.bb7.i60.i:                                     ; preds = %if.end.i59.i.sw.bb7.i60.i_crit_edge, %if.end.i59.i.sw.bb7.i60.i_crit_edge326, %if.end.i59.i.sw.bb7.i60.i_crit_edge327, %if.end.i59.i.sw.bb7.i60.i_crit_edge328, %if.end.i59.i.sw.bb7.i60.i_crit_edge329, %if.end.i59.i.sw.bb7.i60.i_crit_edge330
  %91 = zext i32 %call.i57.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %call.i57.i, label %sw.bb7.i60.i.if.then9.i_crit_edge [
    i32 3, label %sw.bb7.i60.i.if.else11.i_crit_edge
    i32 1, label %if.else11.fold.split.i
  ]

sw.bb7.i60.i.if.else11.i_crit_edge:               ; preds = %sw.bb7.i60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else11.i

sw.bb7.i60.i.if.then9.i_crit_edge:                ; preds = %sw.bb7.i60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9.i

sw.bb14.i.i:                                      ; preds = %if.end.i59.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i57.i)
  %cmp15.i.i = icmp eq i32 %call.i57.i, 3
  br i1 %cmp15.i.i, label %sw.bb14.i.i.if.else11.i_crit_edge, label %sw.bb14.i.i.if.then9.i_crit_edge

sw.bb14.i.i.if.then9.i_crit_edge:                 ; preds = %sw.bb14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9.i

sw.bb14.i.i.if.else11.i_crit_edge:                ; preds = %sw.bb14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else11.i

if.then9.i:                                       ; preds = %sw.bb14.i.i.if.then9.i_crit_edge, %sw.bb7.i60.i.if.then9.i_crit_edge, %land.lhs.true.i.i.if.then9.i_crit_edge, %if.end.i59.i.if.then9.i_crit_edge, %bq2415x_detect_chip.exit.i.i.if.then9.i_crit_edge, %bq2415x_detect_chip.exit.i.if.then9.i_crit_edge
  %92 = ptrtoint ptr %revstr.i to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 8461818871936413184, ptr %revstr.i, align 8
  br label %if.end14.i

if.else11.fold.split.i:                           ; preds = %sw.bb7.i60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else11.i

if.else11.i:                                      ; preds = %if.else11.fold.split.i, %sw.bb14.i.i.if.else11.i_crit_edge, %sw.bb7.i60.i.if.else11.i_crit_edge, %land.lhs.true.i.i.if.else11.i_crit_edge
  %retval.0.i6278.i = phi i32 [ %call.i57.i, %land.lhs.true.i.i.if.else11.i_crit_edge ], [ 3, %sw.bb14.i.i.if.else11.i_crit_edge ], [ 0, %sw.bb7.i60.i.if.else11.i_crit_edge ], [ 1, %if.else11.fold.split.i ]
  %call13.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %revstr.i, ptr noundef nonnull @.str.48, i32 noundef %retval.0.i6278.i) #9
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.else11.i, %if.then9.i
  %arrayidx.i = getelementptr [13 x ptr], ptr @bq2415x_chip_name, i32 0, i32 %70
  %93 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx.i, align 4
  %call.i63.i = tail call fastcc i32 @bq2415x_exec_command(ptr noundef nonnull %call.i, i32 noundef 26) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63.i)
  %cmp.i64.i = icmp slt i32 %call.i63.i, 0
  br i1 %cmp.i64.i, label %if.end14.i.bq2415x_get_vender_code.exit.i_crit_edge, label %if.end.i65.i

if.end14.i.bq2415x_get_vender_code.exit.i_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_get_vender_code.exit.i

if.end.i65.i:                                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  %and.i.i = and i32 %call.i63.i, 1
  %shr9.i.i = lshr i32 %call.i63.i, 1
  %and1.i.i = and i32 %shr9.i.i, 1
  %mul.i.i = mul nuw nsw i32 %and1.i.i, 10
  %add.i.i = or i32 %mul.i.i, %and.i.i
  %shr210.i.i = lshr i32 %call.i63.i, 2
  %and3.i.i = and i32 %shr210.i.i, 1
  %mul4.i.i = mul nuw nsw i32 %and3.i.i, 100
  %add5.i.i = add nuw nsw i32 %add.i.i, %mul4.i.i
  br label %bq2415x_get_vender_code.exit.i

bq2415x_get_vender_code.exit.i:                   ; preds = %if.end.i65.i, %if.end14.i.bq2415x_get_vender_code.exit.i_crit_edge
  %retval.0.i66.i = phi i32 [ %add5.i.i, %if.end.i65.i ], [ 0, %if.end14.i.bq2415x_get_vender_code.exit.i_crit_edge ]
  %call17.i = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.49, ptr noundef %94, ptr noundef nonnull %revstr.i, i32 noundef %retval.0.i66.i) #9
  %model.i = getelementptr inbounds %struct.bq2415x_device, ptr %call.i, i32 0, i32 11
  %95 = ptrtoint ptr %model.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call17.i, ptr %model.i, align 4
  %tobool.not.i = icmp eq ptr %call17.i, null
  %96 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %call.i, align 4
  br i1 %tobool.not.i, label %bq2415x_power_supply_init.exit.thread309, label %if.end21.i

bq2415x_power_supply_init.exit.thread309:         ; preds = %bq2415x_get_vender_code.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.50) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %revstr.i) #9
  br label %do.end99

if.end21.i:                                       ; preds = %bq2415x_get_vender_code.exit.i
  %call24.i = call ptr @power_supply_register(ptr noundef %97, ptr noundef %charger_desc.i, ptr noundef nonnull %psy_cfg.i) #9
  %charger.i = getelementptr inbounds %struct.bq2415x_device, ptr %call.i, i32 0, i32 2
  %98 = ptrtoint ptr %charger.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call24.i, ptr %charger.i, align 4
  %cmp.i67.i = icmp ugt ptr %call24.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i67.i, label %bq2415x_power_supply_init.exit, label %bq2415x_power_supply_init.exit.thread

bq2415x_power_supply_init.exit.thread:            ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %revstr.i) #9
  br label %if.end101

bq2415x_power_supply_init.exit:                   ; preds = %if.end21.i
  %99 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %model.i, align 4
  call void @kfree(ptr noundef %100) #9
  %101 = ptrtoint ptr %charger.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %charger.i, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %revstr.i) #9
  %tobool95.not = icmp eq ptr %102, null
  br i1 %tobool95.not, label %bq2415x_power_supply_init.exit.if.end101_crit_edge, label %bq2415x_power_supply_init.exit.do.end99_crit_edge

bq2415x_power_supply_init.exit.do.end99_crit_edge: ; preds = %bq2415x_power_supply_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end99

bq2415x_power_supply_init.exit.if.end101_crit_edge: ; preds = %bq2415x_power_supply_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

do.end99:                                         ; preds = %bq2415x_power_supply_init.exit.do.end99_crit_edge, %bq2415x_power_supply_init.exit.thread309
  %retval.0.i312 = phi i32 [ -12, %bq2415x_power_supply_init.exit.thread309 ], [ %103, %bq2415x_power_supply_init.exit.do.end99_crit_edge ]
  %104 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %105, ptr noundef nonnull @.str.21, i32 noundef %retval.0.i312) #12
  br label %if.then193

if.end101:                                        ; preds = %bq2415x_power_supply_init.exit.if.end101_crit_edge, %bq2415x_power_supply_init.exit.thread
  %call102 = call fastcc i32 @bq2415x_set_defaults(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end109, label %do.end107

do.end107:                                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  %106 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %107, ptr noundef nonnull @.str.24, i32 noundef %call102) #12
  br label %error_3

if.end109:                                        ; preds = %if.end101
  %notify_node110 = getelementptr inbounds %struct.bq2415x_device, ptr %call.i, i32 0, i32 5
  %108 = ptrtoint ptr %notify_node110 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %notify_node110, align 4
  %tobool111.not = icmp eq ptr %109, null
  br i1 %tobool111.not, label %lor.lhs.false112, label %if.end109.if.then115_crit_edge

if.end109.if.then115_crit_edge:                   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then115

lor.lhs.false112:                                 ; preds = %if.end109
  %notify_device = getelementptr inbounds %struct.bq2415x_device, ptr %call.i, i32 0, i32 1, i32 6
  %110 = ptrtoint ptr %notify_device to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %notify_device, align 4
  %tobool114.not = icmp eq ptr %111, null
  br i1 %tobool114.not, label %lor.lhs.false112.if.end136_crit_edge, label %lor.lhs.false112.if.then115_crit_edge

lor.lhs.false112.if.then115_crit_edge:            ; preds = %lor.lhs.false112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then115

lor.lhs.false112.if.end136_crit_edge:             ; preds = %lor.lhs.false112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end136

if.then115:                                       ; preds = %lor.lhs.false112.if.then115_crit_edge, %if.end109.if.then115_crit_edge
  %nb = getelementptr inbounds %struct.bq2415x_device, ptr %call.i, i32 0, i32 6
  %112 = ptrtoint ptr %nb to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @bq2415x_notifier_call, ptr %nb, align 4
  %call117 = call i32 @power_supply_reg_notifier(ptr noundef %nb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.then115.if.end136_crit_edge, label %do.end122

if.then115.if.end136_crit_edge:                   ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end136

do.end122:                                        ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #11
  %113 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %114, ptr noundef nonnull @.str.27, i32 noundef %call117) #12
  br label %error_3

if.end136:                                        ; preds = %if.then115.if.end136_crit_edge, %lor.lhs.false112.if.end136_crit_edge
  %.sink = phi i32 [ 1, %if.then115.if.end136_crit_edge ], [ -1, %lor.lhs.false112.if.end136_crit_edge ]
  %.str.34.sink = phi ptr [ @.str.30, %if.then115.if.end136_crit_edge ], [ @.str.34, %lor.lhs.false112.if.end136_crit_edge ]
  %115 = ptrtoint ptr %automode to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %.sink, ptr %automode, align 4
  %116 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %117, ptr noundef nonnull %.str.34.sink) #12
  %nb137 = getelementptr inbounds %struct.bq2415x_device, ptr %call.i, i32 0, i32 6
  %118 = ptrtoint ptr %nb137 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %nb137, align 4
  %tobool139.not = icmp eq ptr %119, null
  br i1 %tobool139.not, label %if.end136.do.body169_crit_edge, label %if.then140

if.end136.do.body169_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body169

if.then140:                                       ; preds = %if.end136
  br i1 %tobool.not, label %if.else147, label %if.then142

if.then142:                                       ; preds = %if.then140
  %call143 = call ptr @power_supply_get_by_phandle(ptr noundef nonnull %1, ptr noundef nonnull @.str.19) #9
  %cmp.i = icmp ugt ptr %call143, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then142.do.body169_crit_edge, label %if.then142.if.end157_crit_edge

if.then142.if.end157_crit_edge:                   ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end157

if.then142.do.body169_crit_edge:                  ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body169

if.else147:                                       ; preds = %if.then140
  %notify_device149 = getelementptr inbounds %struct.bq2415x_device, ptr %call.i, i32 0, i32 1, i32 6
  %120 = ptrtoint ptr %notify_device149 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %notify_device149, align 4
  %tobool150.not = icmp eq ptr %121, null
  br i1 %tobool150.not, label %if.else147.do.body169_crit_edge, label %if.then151

if.else147.do.body169_crit_edge:                  ; preds = %if.else147
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body169

if.then151:                                       ; preds = %if.else147
  call void @__sanitizer_cov_trace_pc() #11
  %call154 = call ptr @power_supply_get_by_name(ptr noundef nonnull %121) #9
  br label %if.end157

if.end157:                                        ; preds = %if.then151, %if.then142.if.end157_crit_edge
  %notify_psy.0 = phi ptr [ %call154, %if.then151 ], [ %call143, %if.then142.if.end157_crit_edge ]
  %tobool158.not = icmp eq ptr %notify_psy.0, null
  br i1 %tobool158.not, label %if.end157.do.body169_crit_edge, label %if.then159

if.end157.do.body169_crit_edge:                   ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body169

if.then159:                                       ; preds = %if.end157
  %call160 = call i32 @power_supply_get_property(ptr noundef nonnull %notify_psy.0, i32 noundef 16, ptr noundef nonnull %prop) #9
  call void @power_supply_put(ptr noundef nonnull %notify_psy.0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %cmp161 = icmp eq i32 %call160, 0
  br i1 %cmp161, label %if.then162, label %if.then159.do.body169_crit_edge

if.then159.do.body169_crit_edge:                  ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body169

if.then162:                                       ; preds = %if.then159
  %122 = ptrtoint ptr %prop to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %prop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %cmp.i304 = icmp eq i32 %123, 0
  br i1 %cmp.i304, label %if.then162.if.end8.i_crit_edge, label %if.else.i

if.then162.if.end8.i_crit_edge:                   ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.else.i:                                        ; preds = %if.then162
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %123)
  %cmp1.i = icmp slt i32 %123, 500
  br i1 %cmp1.i, label %if.else.i.if.end8.i_crit_edge, label %if.else3.i

if.else.i.if.end8.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.else3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1800, i32 %123)
  %cmp4.i = icmp ult i32 %123, 1800
  %..i = select i1 %cmp4.i, i32 2, i32 3
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else3.i, %if.else.i.if.end8.i_crit_edge, %if.then162.if.end8.i_crit_edge
  %mode.0.i = phi i32 [ 0, %if.then162.if.end8.i_crit_edge ], [ 1, %if.else.i.if.end8.i_crit_edge ], [ %..i, %if.else3.i ]
  %124 = ptrtoint ptr %reported_mode to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %reported_mode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %125, i32 %mode.0.i)
  %cmp9.i = icmp eq i32 %125, %mode.0.i
  br i1 %cmp9.i, label %if.end8.i.bq2415x_update_reported_mode.exit_crit_edge, label %if.end11.i

if.end8.i.bq2415x_update_reported_mode.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_update_reported_mode.exit

if.end11.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %126 = ptrtoint ptr %reported_mode to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %mode.0.i, ptr %reported_mode, align 4
  br label %bq2415x_update_reported_mode.exit

bq2415x_update_reported_mode.exit:                ; preds = %if.end11.i, %if.end8.i.bq2415x_update_reported_mode.exit_crit_edge
  %127 = ptrtoint ptr %reported_mode to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %reported_mode, align 4
  %call165 = call fastcc i32 @bq2415x_set_mode(ptr noundef nonnull %call.i, i32 noundef %128)
  br label %do.body169

do.body169:                                       ; preds = %bq2415x_update_reported_mode.exit, %if.then159.do.body169_crit_edge, %if.end157.do.body169_crit_edge, %if.else147.do.body169_crit_edge, %if.then142.do.body169_crit_edge, %if.end136.do.body169_crit_edge
  %work = getelementptr inbounds %struct.bq2415x_device, ptr %call.i, i32 0, i32 4
  call void @__init_work(ptr noundef %work, i32 noundef 0) #9
  %129 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.bq2415x_device, ptr %call.i, i32 0, i32 4, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.36, ptr noundef nonnull @bq2415x_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry177 = getelementptr inbounds %struct.bq2415x_device, ptr %call.i, i32 0, i32 4, i32 0, i32 1
  %130 = ptrtoint ptr %entry177 to i32
  call void @__asan_store4_noabort(i32 %130)
  store volatile ptr %entry177, ptr %entry177, align 4
  %prev.i = getelementptr inbounds %struct.bq2415x_device, ptr %call.i, i32 0, i32 4, i32 0, i32 1, i32 1
  %131 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %entry177, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.bq2415x_device, ptr %call.i, i32 0, i32 4, i32 0, i32 2
  %132 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr @bq2415x_timer_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.bq2415x_device, ptr %call.i, i32 0, i32 4, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.38, ptr noundef nonnull @bq2415x_probe.__key.37) #9
  call fastcc void @bq2415x_set_autotimer(ptr noundef nonnull %call.i, i32 noundef 1)
  %133 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %134, ptr noundef nonnull @.str.40) #12
  br label %cleanup

error_3:                                          ; preds = %do.end122, %do.end107
  %ret.0 = phi i32 [ %call102, %do.end107 ], [ %call117, %do.end122 ]
  call fastcc void @bq2415x_power_supply_exit(ptr noundef nonnull %call.i)
  br label %if.then193

if.then193:                                       ; preds = %error_3, %do.end99, %if.end80.if.then193_crit_edge, %if.end74.if.then193_crit_edge, %if.end68.if.then193_crit_edge, %if.end62.if.then193_crit_edge, %if.end56.if.then193_crit_edge, %if.then51.if.then193_crit_edge
  %ret.1.ph = phi i32 [ %ret.0, %error_3 ], [ %retval.0.i312, %do.end99 ], [ %call.i303, %if.end80.if.then193_crit_edge ], [ %call.i302, %if.end74.if.then193_crit_edge ], [ %call.i301, %if.end68.if.then193_crit_edge ], [ %call.i300, %if.end62.if.then193_crit_edge ], [ %call.i299, %if.end56.if.then193_crit_edge ], [ %call.i298, %if.then51.if.then193_crit_edge ]
  %notify_node194 = getelementptr inbounds %struct.bq2415x_device, ptr %call.i, i32 0, i32 5
  %135 = ptrtoint ptr %notify_node194 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %notify_node194, align 4
  call void @of_node_put(ptr noundef %136) #9
  br label %if.end195

if.end195:                                        ; preds = %if.then193, %if.end32.if.end195_crit_edge
  %ret.1317 = phi i32 [ %ret.1.ph, %if.then193 ], [ -12, %if.end32.if.end195_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9) #9
  br label %error_1

error_1:                                          ; preds = %if.end195, %do.end30
  %ret.2 = phi i32 [ %ret.1317, %if.end195 ], [ -12, %do.end30 ]
  call void @mutex_lock_nested(ptr noundef nonnull @bq2415x_id_mutex, i32 noundef 0) #9
  %call196 = call ptr @idr_remove(ptr noundef nonnull @bq2415x_id, i32 noundef %call) #9
  call void @mutex_unlock(ptr noundef nonnull @bq2415x_id_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %error_1, %do.body169, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.2, %error_1 ], [ 0, %do.body169 ], [ -19, %do.end ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq2415x_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %nb = getelementptr inbounds %struct.bq2415x_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %nb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nb, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @power_supply_unreg_notifier(ptr noundef %nb) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %notify_node = getelementptr inbounds %struct.bq2415x_device, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %notify_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %notify_node, align 4
  tail call void @of_node_put(ptr noundef %5) #9
  %autotimer.i = getelementptr inbounds %struct.bq2415x_device, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %autotimer.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %autotimer.i, align 4
  %automode.i = getelementptr inbounds %struct.bq2415x_device, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %automode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %automode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp sgt i32 %8, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.bq2415x_power_supply_exit.exit_crit_edge

if.end.bq2415x_power_supply_exit.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_power_supply_exit.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %automode.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %automode.i, align 4
  br label %bq2415x_power_supply_exit.exit

bq2415x_power_supply_exit.exit:                   ; preds = %if.then.i, %if.end.bq2415x_power_supply_exit.exit_crit_edge
  %work.i = getelementptr inbounds %struct.bq2415x_device, ptr %1, i32 0, i32 4
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work.i) #9
  %charger.i = getelementptr inbounds %struct.bq2415x_device, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %charger.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %charger.i, align 4
  tail call void @power_supply_unregister(ptr noundef %11) #9
  %model.i = getelementptr inbounds %struct.bq2415x_device, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %model.i, align 4
  tail call void @kfree(ptr noundef %13) #9
  tail call fastcc void @bq2415x_reset_chip(ptr noundef %1)
  tail call void @mutex_lock_nested(ptr noundef nonnull @bq2415x_id_mutex, i32 noundef 0) #9
  %id = getelementptr inbounds %struct.bq2415x_device, ptr %1, i32 0, i32 15
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id, align 4
  %call2 = tail call ptr @idr_remove(ptr noundef nonnull @bq2415x_id, i32 noundef %15) #9
  tail call void @mutex_unlock(ptr noundef nonnull @bq2415x_id_mutex) #9
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.136) #12
  %name = getelementptr inbounds %struct.bq2415x_device, ptr %1, i32 0, i32 12
  %18 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name, align 4
  tail call void @kfree(ptr noundef %19) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @of_parse_phandle(ptr noundef %np) unnamed_addr #5 align 64 {
entry:
  %args = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args) #9
  %0 = call ptr @memset(ptr %args, i32 255, i32 72)
  %call = call i32 @__of_parse_phandle_with_args(ptr noundef %np, ptr noundef nonnull @.str.19, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %args, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %2, %if.end ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args) #9
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bq2415x_reset_chip(ptr nocapture noundef %bq) unnamed_addr #2 align 64 {
entry:
  %msg.i32 = alloca [1 x %struct.i2c_msg], align 4
  %data.i33 = alloca [2 x i8], align 1
  %msg.i20 = alloca [1 x %struct.i2c_msg], align 4
  %data.i21 = alloca [2 x i8], align 1
  %msg.i8 = alloca [1 x %struct.i2c_msg], align 4
  %data.i9 = alloca [2 x i8], align 1
  %msg.i = alloca [1 x %struct.i2c_msg], align 4
  %data.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bq, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #9
  %2 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 196607, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #9
  %4 = getelementptr inbounds [2 x i8], ptr %data.i, i32 0, i32 1
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 4, ptr %data.i, align 1
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -119, ptr %4, align 1
  %addr.i = getelementptr i8, ptr %1, i32 -30
  %7 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr.i, align 2
  %9 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %data.i, ptr %buf.i, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @bq2415x_i2c_mutex, i32 noundef 0) #9
  %adapter.i = getelementptr i8, ptr %1, i32 -8
  %12 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %13, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @mutex_unlock(ptr noundef nonnull @bq2415x_i2c_mutex) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  %14 = ptrtoint ptr %bq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bq, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i8) #9
  %16 = getelementptr inbounds i8, ptr %msg.i8, i32 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 196607, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i9) #9
  %18 = getelementptr inbounds [2 x i8], ptr %data.i9, i32 0, i32 1
  %19 = ptrtoint ptr %data.i9 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 2, ptr %data.i9, align 1
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 10, ptr %18, align 1
  %addr.i10 = getelementptr i8, ptr %15, i32 -30
  %21 = ptrtoint ptr %addr.i10 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %addr.i10, align 2
  %23 = ptrtoint ptr %msg.i8 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %msg.i8, align 4
  %flags.i11 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i8, i32 0, i32 1
  %24 = ptrtoint ptr %flags.i11 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %flags.i11, align 2
  %buf.i12 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i8, i32 0, i32 3
  %25 = ptrtoint ptr %buf.i12 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %data.i9, ptr %buf.i12, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @bq2415x_i2c_mutex, i32 noundef 0) #9
  %adapter.i14 = getelementptr i8, ptr %15, i32 -8
  %26 = ptrtoint ptr %adapter.i14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adapter.i14, align 8
  %call.i15 = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %msg.i8, i32 noundef 1) #9
  call void @mutex_unlock(ptr noundef nonnull @bq2415x_i2c_mutex) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i9) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i8) #9
  %28 = ptrtoint ptr %bq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bq, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i20) #9
  %30 = getelementptr inbounds i8, ptr %msg.i20, i32 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 196607, ptr %30, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i21) #9
  %32 = getelementptr inbounds [2 x i8], ptr %data.i21, i32 0, i32 1
  %33 = ptrtoint ptr %data.i21 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %data.i21, align 1
  %34 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 48, ptr %32, align 1
  %addr.i22 = getelementptr i8, ptr %29, i32 -30
  %35 = ptrtoint ptr %addr.i22 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %addr.i22, align 2
  %37 = ptrtoint ptr %msg.i20 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %msg.i20, align 4
  %flags.i23 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i20, i32 0, i32 1
  %38 = ptrtoint ptr %flags.i23 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %flags.i23, align 2
  %buf.i24 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i20, i32 0, i32 3
  %39 = ptrtoint ptr %buf.i24 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %data.i21, ptr %buf.i24, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @bq2415x_i2c_mutex, i32 noundef 0) #9
  %adapter.i26 = getelementptr i8, ptr %29, i32 -8
  %40 = ptrtoint ptr %adapter.i26 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %adapter.i26, align 8
  %call.i27 = call i32 @i2c_transfer(ptr noundef %41, ptr noundef nonnull %msg.i20, i32 noundef 1) #9
  call void @mutex_unlock(ptr noundef nonnull @bq2415x_i2c_mutex) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i21) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i20) #9
  %42 = ptrtoint ptr %bq to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bq, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i32) #9
  %44 = getelementptr inbounds i8, ptr %msg.i32, i32 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 196607, ptr %44, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i33) #9
  %46 = getelementptr inbounds [2 x i8], ptr %data.i33, i32 0, i32 1
  %47 = ptrtoint ptr %data.i33 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %data.i33, align 1
  %48 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 64, ptr %46, align 1
  %addr.i34 = getelementptr i8, ptr %43, i32 -30
  %49 = ptrtoint ptr %addr.i34 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %addr.i34, align 2
  %51 = ptrtoint ptr %msg.i32 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %msg.i32, align 4
  %flags.i35 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i32, i32 0, i32 1
  %52 = ptrtoint ptr %flags.i35 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 0, ptr %flags.i35, align 2
  %buf.i36 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i32, i32 0, i32 3
  %53 = ptrtoint ptr %buf.i36 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %data.i33, ptr %buf.i36, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @bq2415x_i2c_mutex, i32 noundef 0) #9
  %adapter.i38 = getelementptr i8, ptr %43, i32 -8
  %54 = ptrtoint ptr %adapter.i38 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %adapter.i38, align 8
  %call.i39 = call i32 @i2c_transfer(ptr noundef %55, ptr noundef nonnull %msg.i32, i32 noundef 1) #9
  call void @mutex_unlock(ptr noundef nonnull @bq2415x_i2c_mutex) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i33) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i32) #9
  %timer_error = getelementptr inbounds %struct.bq2415x_device, ptr %bq, i32 0, i32 10
  %56 = ptrtoint ptr %timer_error to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %timer_error, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bq2415x_set_defaults(ptr nocapture noundef readonly %bq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i249.i = tail call fastcc i32 @bq2415x_i2c_write_mask(ptr noundef %bq, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0) #9
  %call.i202.i = tail call fastcc i32 @bq2415x_i2c_write_mask(ptr noundef %bq, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 4, i8 noundef zeroext 2) #9
  %call.i178.i = tail call fastcc i32 @bq2415x_i2c_write_mask(ptr noundef %bq, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 8, i8 noundef zeroext 3) #9
  %init_data = getelementptr inbounds %struct.bq2415x_device, ptr %bq, i32 0, i32 1
  %0 = ptrtoint ptr %init_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %init_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.not = icmp eq i32 %1, -1
  br i1 %cmp.not, label %entry.do.body9_crit_edge, label %if.then

entry.do.body9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body9

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 101, i32 %1)
  %cmp.i = icmp slt i32 %1, 101
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.else.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 501, i32 %1)
  %cmp1.i = icmp ult i32 %1, 501
  br i1 %cmp1.i, label %if.else.i.if.end_crit_edge, label %if.else3.i

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 801, i32 %1)
  %cmp4.i = icmp ult i32 %1, 801
  %..i = select i1 %cmp4.i, i8 2, i8 3
  br label %if.end

if.end:                                           ; preds = %if.else3.i, %if.else.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %val.0.i = phi i8 [ 0, %if.then.if.end_crit_edge ], [ 1, %if.else.i.if.end_crit_edge ], [ %..i, %if.else3.i ]
  %call.i = tail call fastcc i32 @bq2415x_i2c_write_mask(ptr noundef %bq, i8 noundef zeroext 1, i8 noundef zeroext %val.0.i, i8 noundef zeroext -64, i8 noundef zeroext 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp6 = icmp sgt i32 %call.i, -1
  br i1 %cmp6, label %if.end.do.body9_crit_edge, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.do.body9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body9

do.body9:                                         ; preds = %if.end.do.body9_crit_edge, %entry.do.body9_crit_edge
  %weak_battery_voltage = getelementptr inbounds %struct.bq2415x_device, ptr %bq, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %weak_battery_voltage to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %weak_battery_voltage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp12.not = icmp eq i32 %3, -1
  br i1 %cmp12.not, label %do.body9.do.body25_crit_edge, label %if.then13

do.body9.do.body25_crit_edge:                     ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body25

if.then13:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3451, i32 %3)
  %cmp.i116 = icmp slt i32 %3, 3451
  br i1 %cmp.i116, label %if.then13.if.end17_crit_edge, label %if.else.i118

if.then13.if.end17_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.else.i118:                                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3551, i32 %3)
  %cmp1.i117 = icmp ult i32 %3, 3551
  br i1 %cmp1.i117, label %if.else.i118.if.end17_crit_edge, label %if.else3.i121

if.else.i118.if.end17_crit_edge:                  ; preds = %if.else.i118
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.else3.i121:                                    ; preds = %if.else.i118
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 3651, i32 %3)
  %cmp4.i119 = icmp ult i32 %3, 3651
  %..i120 = select i1 %cmp4.i119, i8 2, i8 3
  br label %if.end17

if.end17:                                         ; preds = %if.else3.i121, %if.else.i118.if.end17_crit_edge, %if.then13.if.end17_crit_edge
  %val.0.i122 = phi i8 [ 0, %if.then13.if.end17_crit_edge ], [ 1, %if.else.i118.if.end17_crit_edge ], [ %..i120, %if.else3.i121 ]
  %call.i123 = tail call fastcc i32 @bq2415x_i2c_write_mask(ptr noundef %bq, i8 noundef zeroext 1, i8 noundef zeroext %val.0.i122, i8 noundef zeroext 48, i8 noundef zeroext 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i123)
  %cmp18 = icmp sgt i32 %call.i123, -1
  br i1 %cmp18, label %if.end17.do.body25_crit_edge, label %if.end17.return_crit_edge

if.end17.return_crit_edge:                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end17.do.body25_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body25

do.body25:                                        ; preds = %if.end17.do.body25_crit_edge, %do.body9.do.body25_crit_edge
  %battery_regulation_voltage = getelementptr inbounds %struct.bq2415x_device, ptr %bq, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %battery_regulation_voltage to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %battery_regulation_voltage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp28.not = icmp eq i32 %5, -1
  br i1 %cmp28.not, label %do.body25.do.end40_crit_edge, label %if.then29

do.body25.do.end40_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end40

if.then29:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_const_cmp4(i32 3490, i32 %5)
  %cmp.i124 = icmp slt i32 %5, 3490
  br i1 %cmp.i124, label %if.then29.if.end33_crit_edge, label %if.else.i125

if.then29.if.end33_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.else.i125:                                     ; preds = %if.then29
  %div7.i = udiv i32 %5, 10
  %sub.i = add nsw i32 %div7.i, -350
  %div1.i = sdiv i32 %sub.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4459, i32 %5)
  %cmp2.i = icmp ugt i32 %5, 4459
  br i1 %cmp2.i, label %if.else.i125.return_crit_edge, label %if.else.i125.if.end33_crit_edge

if.else.i125.if.end33_crit_edge:                  ; preds = %if.else.i125
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.else.i125.return_crit_edge:                    ; preds = %if.else.i125
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end33:                                         ; preds = %if.else.i125.if.end33_crit_edge, %if.then29.if.end33_crit_edge
  %val.0.i126 = phi i32 [ %div1.i, %if.else.i125.if.end33_crit_edge ], [ 0, %if.then29.if.end33_crit_edge ]
  %conv.i = trunc i32 %val.0.i126 to i8
  %call.i127 = tail call fastcc i32 @bq2415x_i2c_write_mask(ptr noundef %bq, i8 noundef zeroext 2, i8 noundef zeroext %conv.i, i8 noundef zeroext -4, i8 noundef zeroext 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i127)
  %cmp34 = icmp sgt i32 %call.i127, -1
  br i1 %cmp34, label %if.end33.do.end40_crit_edge, label %if.end33.return_crit_edge

if.end33.return_crit_edge:                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end33.do.end40_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end40

do.end40:                                         ; preds = %if.end33.do.end40_crit_edge, %do.body25.do.end40_crit_edge
  %resistor_sense = getelementptr inbounds %struct.bq2415x_device, ptr %bq, i32 0, i32 1, i32 5
  %6 = ptrtoint ptr %resistor_sense to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %resistor_sense, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp42 = icmp sgt i32 %7, 0
  br i1 %cmp42, label %do.body44, label %do.end40.if.end77_crit_edge

do.end40.if.end77_crit_edge:                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77

do.body44:                                        ; preds = %do.end40
  %charge_current = getelementptr inbounds %struct.bq2415x_device, ptr %bq, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %charge_current to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %charge_current, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp47.not = icmp eq i32 %9, -1
  br i1 %cmp47.not, label %do.body44.do.body60_crit_edge, label %if.end52

do.body44.do.body60_crit_edge:                    ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body60

if.end52:                                         ; preds = %do.body44
  %mul.i = mul i32 %9, %7
  %sub.i129 = add i32 %mul.i, -37400
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6799, i32 %sub.i129)
  %cmp3.i = icmp slt i32 %sub.i129, -6799
  %div.i = sdiv i32 %sub.i129, 6800
  %10 = tail call i32 @llvm.smin.i32(i32 %div.i, i32 7) #9
  %phi.cast.i = trunc i32 %10 to i8
  %val.0.i130 = select i1 %cmp3.i, i8 0, i8 %phi.cast.i
  %call.i131 = tail call fastcc i32 @bq2415x_i2c_write_mask(ptr noundef %bq, i8 noundef zeroext 4, i8 noundef zeroext %val.0.i130, i8 noundef zeroext -16, i8 noundef zeroext 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i131)
  %cmp53 = icmp sgt i32 %call.i131, -1
  br i1 %cmp53, label %if.end52.do.body60_crit_edge, label %if.end52.return_crit_edge

if.end52.return_crit_edge:                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end52.do.body60_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body60

do.body60:                                        ; preds = %if.end52.do.body60_crit_edge, %do.body44.do.body60_crit_edge
  %termination_current = getelementptr inbounds %struct.bq2415x_device, ptr %bq, i32 0, i32 1, i32 4
  %11 = ptrtoint ptr %termination_current to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %termination_current, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp63.not = icmp eq i32 %12, -1
  br i1 %cmp63.not, label %do.body60.do.end75_crit_edge, label %if.then64

do.body60.do.end75_crit_edge:                     ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end75

if.then64:                                        ; preds = %do.body60
  %13 = ptrtoint ptr %resistor_sense to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %resistor_sense, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp.i134 = icmp slt i32 %14, 1
  br i1 %cmp.i134, label %if.then64.return_crit_edge, label %if.end68

if.then64.return_crit_edge:                       ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end68:                                         ; preds = %if.then64
  %mul.i135 = mul i32 %14, %12
  %sub.i136 = add i32 %mul.i135, -3400
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3399, i32 %sub.i136)
  %cmp3.i137 = icmp slt i32 %sub.i136, -3399
  %div.i138 = sdiv i32 %sub.i136, 3400
  %15 = tail call i32 @llvm.smin.i32(i32 %div.i138, i32 7) #9
  %phi.cast.i139 = trunc i32 %15 to i8
  %val.0.i140 = select i1 %cmp3.i137, i8 0, i8 %phi.cast.i139
  %call.i141 = tail call fastcc i32 @bq2415x_i2c_write_mask(ptr noundef %bq, i8 noundef zeroext 4, i8 noundef zeroext %val.0.i140, i8 noundef zeroext -121, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i141)
  %cmp69 = icmp sgt i32 %call.i141, -1
  br i1 %cmp69, label %if.end68.do.end75_crit_edge, label %if.end68.return_crit_edge

if.end68.return_crit_edge:                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end68.do.end75_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end75

do.end75:                                         ; preds = %if.end68.do.end75_crit_edge, %do.body60.do.end75_crit_edge
  %call.i177.i = tail call fastcc i32 @bq2415x_i2c_write_mask(ptr noundef %bq, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 8, i8 noundef zeroext 3) #9
  br label %if.end77

if.end77:                                         ; preds = %do.end75, %do.end40.if.end77_crit_edge
  %call.i201.i = tail call fastcc i32 @bq2415x_i2c_write_mask(ptr noundef %bq, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 4, i8 noundef zeroext 2) #9
  br label %return

return:                                           ; preds = %if.end77, %if.end68.return_crit_edge, %if.then64.return_crit_edge, %if.end52.return_crit_edge, %if.end33.return_crit_edge, %if.else.i125.return_crit_edge, %if.end17.return_crit_edge, %if.end.return_crit_edge
  %retval.5 = phi i32 [ %call.i, %if.end.return_crit_edge ], [ %call.i123, %if.end17.return_crit_edge ], [ %call.i127, %if.end33.return_crit_edge ], [ %call.i131, %if.end52.return_crit_edge ], [ %call.i141, %if.end68.return_crit_edge ], [ 0, %if.end77 ], [ -22, %if.else.i125.return_crit_edge ], [ -22, %if.then64.return_crit_edge ]
  ret i32 %retval.5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq2415x_notifier_call(ptr noundef %nb, i32 noundef %val, ptr noundef %v) #2 align 64 {
entry:
  %prop = alloca %union.power_supply_propval, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -192
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prop) #9
  %0 = ptrtoint ptr %prop to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %prop, align 4, !annotation !317
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp.not = icmp eq i32 %val, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %notify_node = getelementptr i8, ptr %nb, i32 -4
  %1 = ptrtoint ptr %notify_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %notify_node, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  %parent = getelementptr inbounds %struct.power_supply, ptr %v, i32 0, i32 7, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 8
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %if.then1.cleanup_crit_edge, label %lor.lhs.false

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then1
  %of_node = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %cmp6.not = icmp eq ptr %6, %2
  br i1 %cmp6.not, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.else:                                          ; preds = %if.end
  %notify_device = getelementptr i8, ptr %nb, i32 -164
  %7 = ptrtoint ptr %notify_device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %notify_device, align 4
  %tobool9.not = icmp eq ptr %8, null
  br i1 %tobool9.not, label %if.else.do.body_crit_edge, label %if.then10

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then10:                                        ; preds = %if.else
  %9 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %v, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call = tail call i32 @strcmp(ptr noundef %12, ptr noundef nonnull %8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp13.not = icmp eq i32 %call, 0
  br i1 %cmp13.not, label %if.then10.do.body_crit_edge, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.do.body_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %if.then10.do.body_crit_edge, %if.else.do.body_crit_edge, %lor.lhs.false.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq2415x_notifier_call.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq2415x_notifier_call, %do.end)) #9
          to label %if.then24 [label %do.end], !srcloc !318

if.then24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq2415x_notifier_call.__UNIQUE_ID_ddebug293, ptr noundef %14, ptr noundef nonnull @.str.104) #9
  br label %do.end

do.end:                                           ; preds = %if.then24, %do.body
  %call27 = call i32 @power_supply_get_property(ptr noundef %v, i32 noundef 16, ptr noundef nonnull %prop) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28.not = icmp eq i32 %call27, 0
  br i1 %cmp28.not, label %if.end30, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end30:                                         ; preds = %do.end
  %15 = ptrtoint ptr %prop to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %prop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i = icmp eq i32 %16, 0
  br i1 %cmp.i, label %if.end30.if.end8.i_crit_edge, label %if.else.i

if.end30.if.end8.i_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.else.i:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %16)
  %cmp1.i = icmp slt i32 %16, 500
  br i1 %cmp1.i, label %if.else.i.if.end8.i_crit_edge, label %if.else3.i

if.else.i.if.end8.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.else3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1800, i32 %16)
  %cmp4.i = icmp ult i32 %16, 1800
  %..i = select i1 %cmp4.i, i32 2, i32 3
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else3.i, %if.else.i.if.end8.i_crit_edge, %if.end30.if.end8.i_crit_edge
  %mode.0.i = phi i32 [ 0, %if.end30.if.end8.i_crit_edge ], [ 1, %if.else.i.if.end8.i_crit_edge ], [ %..i, %if.else3.i ]
  %reported_mode.i = getelementptr i8, ptr %nb, i32 12
  %17 = ptrtoint ptr %reported_mode.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reported_mode.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %mode.0.i)
  %cmp9.i = icmp eq i32 %18, %mode.0.i
  br i1 %cmp9.i, label %if.end8.i.cleanup_crit_edge, label %if.end33

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end33:                                         ; preds = %if.end8.i
  %19 = ptrtoint ptr %reported_mode.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mode.0.i, ptr %reported_mode.i, align 4
  %automode = getelementptr i8, ptr %nb, i32 40
  %20 = ptrtoint ptr %automode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %automode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp34 = icmp slt i32 %21, 1
  br i1 %cmp34, label %if.end33.cleanup_crit_edge, label %if.end36

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end36:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %work = getelementptr i8, ptr %nb, i32 -104
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %22 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %work, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.end33.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then1.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_reg_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_by_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_get_property(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bq2415x_set_mode(ptr nocapture noundef %bq, i32 noundef %mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %mode)
  %cmp = icmp eq i32 %mode, 4
  %switch.and = and i32 %mode, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  br i1 %switch.selectcmp, label %if.then4, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i202.i = tail call fastcc i32 @bq2415x_i2c_write_mask(ptr noundef %bq, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 4, i8 noundef zeroext 2) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %entry.if.end5_crit_edge
  %ret.0 = phi i32 [ 0, %entry.if.end5_crit_edge ], [ %call.i202.i, %if.then4 ]
  br i1 %cmp, label %if.end5.if.end9_crit_edge, label %if.then7

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %call.i249.i = tail call fastcc i32 @bq2415x_i2c_write_mask(ptr noundef %bq, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end5.if.end9_crit_edge ], [ %call.i249.i, %if.then7 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp10 = icmp slt i32 %ret.1, 0
  br i1 %cmp10, label %if.end9.cleanup153_crit_edge, label %if.end12

if.end9.cleanup153_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup153

if.end12:                                         ; preds = %if.end9
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %mode, label %if.end12.if.end107_crit_edge [
    i32 0, label %do.body
    i32 1, label %do.body22
    i32 2, label %do.body43
    i32 3, label %do.body64
    i32 4, label %do.body85
  ]

if.end12.if.end107_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107

do.body:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq2415x_set_mode.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq2415x_set_mode, %sw.epilog)) #9
          to label %if.then18 [label %sw.epilog], !srcloc !318

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %bq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bq, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq2415x_set_mode.__UNIQUE_ID_ddebug288, ptr noundef %2, ptr noundef nonnull @.str.106) #9
  br label %sw.epilog

do.body22:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq2415x_set_mode.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq2415x_set_mode, %sw.epilog)) #9
          to label %if.then36 [label %sw.epilog], !srcloc !318

if.then36:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %bq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bq, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq2415x_set_mode.__UNIQUE_ID_ddebug289, ptr noundef %4, ptr noundef nonnull @.str.107) #9
  br label %sw.epilog

do.body43:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq2415x_set_mode.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq2415x_set_mode, %sw.epilog)) #9
          to label %if.then57 [label %sw.epilog], !srcloc !318

if.then57:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %bq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bq, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq2415x_set_mode.__UNIQUE_ID_ddebug290, ptr noundef %6, ptr noundef nonnull @.str.108) #9
  br label %sw.epilog

do.body64:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq2415x_set_mode.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq2415x_set_mode, %sw.epilog)) #9
          to label %if.then78 [label %sw.epilog], !srcloc !318

if.then78:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %bq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bq, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq2415x_set_mode.__UNIQUE_ID_ddebug291, ptr noundef %8, ptr noundef nonnull @.str.109) #9
  br label %sw.epilog

do.body85:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq2415x_set_mode.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq2415x_set_mode, %sw.epilog)) #9
          to label %if.then99 [label %sw.epilog], !srcloc !318

if.then99:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %bq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bq, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq2415x_set_mode.__UNIQUE_ID_ddebug292, ptr noundef %10, ptr noundef nonnull @.str.110) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then99, %do.body85, %if.then78, %do.body64, %if.then57, %do.body43, %if.then36, %do.body22, %if.then18, %do.body
  %.sink = phi i8 [ 0, %do.body ], [ 0, %if.then18 ], [ 0, %do.body22 ], [ 0, %if.then36 ], [ 1, %do.body43 ], [ 1, %if.then57 ], [ 3, %do.body64 ], [ 3, %if.then78 ], [ 0, %do.body85 ], [ 0, %if.then99 ]
  %call.i209 = tail call fastcc i32 @bq2415x_i2c_write_mask(ptr noundef %bq, i8 noundef zeroext 1, i8 noundef zeroext %.sink, i8 noundef zeroext -64, i8 noundef zeroext 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i209)
  %cmp105 = icmp slt i32 %call.i209, 0
  br i1 %cmp105, label %sw.epilog.cleanup153_crit_edge, label %sw.epilog.if.end107_crit_edge

sw.epilog.if.end107_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107

sw.epilog.cleanup153_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup153

if.end107:                                        ; preds = %sw.epilog.if.end107_crit_edge, %if.end12.if.end107_crit_edge
  br i1 %switch.selectcmp, label %if.else111, label %if.then109

if.then109:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  %call.i201.i = tail call fastcc i32 @bq2415x_i2c_write_mask(ptr noundef %bq, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 4, i8 noundef zeroext 2) #9
  br label %if.end116

if.else111:                                       ; preds = %if.end107
  br i1 %cmp, label %if.then113, label %if.else111.do.body120_crit_edge

if.else111.do.body120_crit_edge:                  ; preds = %if.else111
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body120

if.then113:                                       ; preds = %if.else111
  call void @__sanitizer_cov_trace_pc() #11
  %call.i248.i = tail call fastcc i32 @bq2415x_i2c_write_mask(ptr noundef %bq, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #9
  br label %if.end116

if.end116:                                        ; preds = %if.then113, %if.then109
  %ret.3 = phi i32 [ %call.i201.i, %if.then109 ], [ %call.i248.i, %if.then113 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3)
  %cmp117 = icmp slt i32 %ret.3, 0
  br i1 %cmp117, label %if.end116.cleanup153_crit_edge, label %if.end116.do.body120_crit_edge

if.end116.do.body120_crit_edge:                   ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body120

if.end116.cleanup153_crit_edge:                   ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup153

do.body120:                                       ; preds = %if.end116.do.body120_crit_edge, %if.else111.do.body120_crit_edge
  %weak_battery_voltage = getelementptr inbounds %struct.bq2415x_device, ptr %bq, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %weak_battery_voltage to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %weak_battery_voltage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp122.not = icmp eq i32 %12, -1
  br i1 %cmp122.not, label %do.body120.do.body133_crit_edge, label %if.then123

do.body120.do.body133_crit_edge:                  ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body133

if.then123:                                       ; preds = %do.body120
  call void @__sanitizer_cov_trace_const_cmp4(i32 3451, i32 %12)
  %cmp.i = icmp slt i32 %12, 3451
  br i1 %cmp.i, label %if.then123.if.end127_crit_edge, label %if.else.i

if.then123.if.end127_crit_edge:                   ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end127

if.else.i:                                        ; preds = %if.then123
  call void @__sanitizer_cov_trace_const_cmp4(i32 3551, i32 %12)
  %cmp1.i = icmp ult i32 %12, 3551
  br i1 %cmp1.i, label %if.else.i.if.end127_crit_edge, label %if.else3.i

if.else.i.if.end127_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end127

if.else3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 3651, i32 %12)
  %cmp4.i = icmp ult i32 %12, 3651
  %..i = select i1 %cmp4.i, i8 2, i8 3
  br label %if.end127

if.end127:                                        ; preds = %if.else3.i, %if.else.i.if.end127_crit_edge, %if.then123.if.end127_crit_edge
  %val.0.i = phi i8 [ 0, %if.then123.if.end127_crit_edge ], [ 1, %if.else.i.if.end127_crit_edge ], [ %..i, %if.else3.i ]
  %call.i212 = tail call fastcc i32 @bq2415x_i2c_write_mask(ptr noundef %bq, i8 noundef zeroext 1, i8 noundef zeroext %val.0.i, i8 noundef zeroext 48, i8 noundef zeroext 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i212)
  %cmp128 = icmp slt i32 %call.i212, 0
  br i1 %cmp128, label %if.end127.cleanup153_crit_edge, label %if.end127.do.body133_crit_edge

if.end127.do.body133_crit_edge:                   ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body133

if.end127.cleanup153_crit_edge:                   ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup153

do.body133:                                       ; preds = %if.end127.do.body133_crit_edge, %do.body120.do.body133_crit_edge
  %battery_regulation_voltage = getelementptr inbounds %struct.bq2415x_device, ptr %bq, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %battery_regulation_voltage to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %battery_regulation_voltage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp136.not = icmp eq i32 %14, -1
  br i1 %cmp136.not, label %do.body133.do.end149_crit_edge, label %if.then137

do.body133.do.end149_crit_edge:                   ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end149

if.then137:                                       ; preds = %do.body133
  call void @__sanitizer_cov_trace_const_cmp4(i32 3490, i32 %14)
  %cmp.i213 = icmp slt i32 %14, 3490
  br i1 %cmp.i213, label %if.then137.if.end141_crit_edge, label %if.else.i214

if.then137.if.end141_crit_edge:                   ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end141

if.else.i214:                                     ; preds = %if.then137
  %div7.i = udiv i32 %14, 10
  %sub.i = add nsw i32 %div7.i, -350
  %div1.i = sdiv i32 %sub.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4459, i32 %14)
  %cmp2.i = icmp ugt i32 %14, 4459
  br i1 %cmp2.i, label %if.else.i214.cleanup153_crit_edge, label %if.else.i214.if.end141_crit_edge

if.else.i214.if.end141_crit_edge:                 ; preds = %if.else.i214
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end141

if.else.i214.cleanup153_crit_edge:                ; preds = %if.else.i214
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup153

if.end141:                                        ; preds = %if.else.i214.if.end141_crit_edge, %if.then137.if.end141_crit_edge
  %val.0.i215 = phi i32 [ %div1.i, %if.else.i214.if.end141_crit_edge ], [ 0, %if.then137.if.end141_crit_edge ]
  %conv.i = trunc i32 %val.0.i215 to i8
  %call.i216 = tail call fastcc i32 @bq2415x_i2c_write_mask(ptr noundef %bq, i8 noundef zeroext 2, i8 noundef zeroext %conv.i, i8 noundef zeroext -4, i8 noundef zeroext 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i216)
  %cmp142 = icmp slt i32 %call.i216, 0
  br i1 %cmp142, label %if.end141.cleanup153_crit_edge, label %if.end141.do.end149_crit_edge

if.end141.do.end149_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end149

if.end141.cleanup153_crit_edge:                   ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup153

do.end149:                                        ; preds = %if.end141.do.end149_crit_edge, %do.body133.do.end149_crit_edge
  %mode150 = getelementptr inbounds %struct.bq2415x_device, ptr %bq, i32 0, i32 8
  %15 = ptrtoint ptr %mode150 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mode, ptr %mode150, align 4
  %charger151 = getelementptr inbounds %struct.bq2415x_device, ptr %bq, i32 0, i32 2
  %16 = ptrtoint ptr %charger151 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %charger151, align 4
  %dev152 = getelementptr inbounds %struct.power_supply, ptr %17, i32 0, i32 7
  tail call void @sysfs_notify(ptr noundef %dev152, ptr noundef null, ptr noundef nonnull @.str.68) #9
  br label %cleanup153

cleanup153:                                       ; preds = %do.end149, %if.end141.cleanup153_crit_edge, %if.else.i214.cleanup153_crit_edge, %if.end127.cleanup153_crit_edge, %if.end116.cleanup153_crit_edge, %sw.epilog.cleanup153_crit_edge, %if.end9.cleanup153_crit_edge
  %retval.2 = phi i32 [ 0, %do.end149 ], [ %call.i216, %if.end141.cleanup153_crit_edge ], [ %call.i212, %if.end127.cleanup153_crit_edge ], [ %ret.1, %if.end9.cleanup153_crit_edge ], [ %call.i209, %sw.epilog.cleanup153_crit_edge ], [ %ret.3, %if.end116.cleanup153_crit_edge ], [ -22, %if.else.i214.cleanup153_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bq2415x_timer_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -88
  %automode = getelementptr i8, ptr %work, i32 144
  %0 = ptrtoint ptr %automode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %automode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %reported_mode = getelementptr i8, ptr %work, i32 116
  %2 = ptrtoint ptr %reported_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reported_mode, align 4
  %mode = getelementptr i8, ptr %work, i32 120
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp1.not = icmp eq i32 %3, %5
  br i1 %cmp1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %charger = getelementptr i8, ptr %work, i32 -56
  %6 = ptrtoint ptr %charger to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %charger, align 4
  %dev = getelementptr inbounds %struct.power_supply, ptr %7, i32 0, i32 7
  tail call void @sysfs_notify(ptr noundef %dev, ptr noundef null, ptr noundef nonnull @.str.62) #9
  %8 = ptrtoint ptr %reported_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reported_mode, align 4
  %call = tail call fastcc i32 @bq2415x_set_mode(ptr noundef %add.ptr, i32 noundef %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %autotimer = getelementptr i8, ptr %work, i32 140
  %10 = ptrtoint ptr %autotimer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %autotimer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call.i.i = tail call fastcc i32 @bq2415x_i2c_write_mask(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext -128, i8 noundef zeroext 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp6 = icmp slt i32 %call.i.i, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @bq2415x_timer_error(ptr noundef %add.ptr, ptr noundef nonnull @.str.111)
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = tail call fastcc i32 @bq2415x_exec_command(ptr noundef %add.ptr, i32 noundef 17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @bq2415x_timer_error(ptr noundef %add.ptr, ptr noundef nonnull @.str.112)
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %call13 = tail call fastcc i32 @bq2415x_exec_command(ptr noundef %add.ptr, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @bq2415x_timer_error(ptr noundef %add.ptr, ptr noundef nonnull @.str.112)
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool17.not = icmp eq i32 %call9, 0
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end16
  %12 = zext i32 %call13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %call13, label %if.then18.if.end54_crit_edge [
    i32 7, label %sw.bb29
    i32 6, label %if.then18.if.end54.sink.split_crit_edge
    i32 3, label %do.end23
    i32 1, label %sw.bb25
    i32 2, label %sw.bb26
    i32 4, label %sw.bb27
    i32 5, label %sw.bb28
  ]

if.then18.if.end54.sink.split_crit_edge:          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54.sink.split

if.then18.if.end54_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

do.end23:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54.sink.split

sw.bb25:                                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @bq2415x_timer_error(ptr noundef %add.ptr, ptr noundef nonnull @.str.118)
  br label %cleanup

sw.bb26:                                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @bq2415x_timer_error(ptr noundef %add.ptr, ptr noundef nonnull @.str.119)
  br label %cleanup

sw.bb27:                                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @bq2415x_timer_error(ptr noundef %add.ptr, ptr noundef nonnull @.str.120)
  br label %cleanup

sw.bb28:                                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @bq2415x_timer_error(ptr noundef %add.ptr, ptr noundef nonnull @.str.121)
  br label %cleanup

sw.bb29:                                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @bq2415x_timer_error(ptr noundef %add.ptr, ptr noundef nonnull @.str.112)
  br label %cleanup

if.else:                                          ; preds = %if.end16
  %13 = zext i32 %call13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %call13, label %if.else.if.end54_crit_edge [
    i32 5, label %sw.bb52
    i32 2, label %if.else.if.end54.sink.split_crit_edge
    i32 3, label %do.end38
    i32 6, label %do.end43
    i32 7, label %do.end48
    i32 1, label %sw.bb50
    i32 4, label %sw.bb51
  ]

if.else.if.end54.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54.sink.split

if.else.if.end54_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

do.end38:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54.sink.split

do.end43:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54.sink.split

do.end48:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54.sink.split

sw.bb50:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @bq2415x_timer_error(ptr noundef %add.ptr, ptr noundef nonnull @.str.118)
  br label %cleanup

sw.bb51:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @bq2415x_timer_error(ptr noundef %add.ptr, ptr noundef nonnull @.str.120)
  br label %cleanup

sw.bb52:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @bq2415x_timer_error(ptr noundef %add.ptr, ptr noundef nonnull @.str.121)
  br label %cleanup

if.end54.sink.split:                              ; preds = %do.end48, %do.end43, %do.end38, %if.else.if.end54.sink.split_crit_edge, %do.end23, %if.then18.if.end54.sink.split_crit_edge
  %.str.123.sink = phi ptr [ @.str.126, %do.end38 ], [ @.str.113, %do.end43 ], [ @.str.131, %do.end48 ], [ @.str.116, %do.end23 ], [ @.str.113, %if.then18.if.end54.sink.split_crit_edge ], [ @.str.123, %if.else.if.end54.sink.split_crit_edge ]
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull %.str.123.sink) #12
  br label %if.end54

if.end54:                                         ; preds = %if.end54.sink.split, %if.else.if.end54_crit_edge, %if.then18.if.end54_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %16 = load ptr, ptr @system_wq, align 4
  %call.i.i90 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %work, i32 noundef 1000) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %sw.bb52, %sw.bb51, %sw.bb50, %sw.bb29, %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb25, %if.then15, %if.then11, %if.then7, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bq2415x_set_autotimer(ptr noundef %bq, i32 noundef %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @bq2415x_timer_mutex, i32 noundef 0) #9
  %autotimer = getelementptr inbounds %struct.bq2415x_device, ptr %bq, i32 0, i32 13
  %0 = ptrtoint ptr %autotimer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %autotimer, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %state)
  %cmp = icmp eq i32 %1, %state
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %autotimer to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %state, ptr %autotimer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  %work4 = getelementptr inbounds %struct.bq2415x_device, ptr %bq, i32 0, i32 4
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %3 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %work4, i32 noundef 1000) #9
  %call.i.i14 = tail call fastcc i32 @bq2415x_i2c_write_mask(ptr noundef %bq, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext -128, i8 noundef zeroext 7) #9
  %timer_error = getelementptr inbounds %struct.bq2415x_device, ptr %bq, i32 0, i32 10
  %4 = ptrtoint ptr %timer_error to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %timer_error, align 4
  br label %return

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work4) #9
  br label %return

return:                                           ; preds = %if.else, %if.then2, %entry.return_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @bq2415x_timer_mutex) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bq2415x_power_supply_exit(ptr noundef %bq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %autotimer = getelementptr inbounds %struct.bq2415x_device, ptr %bq, i32 0, i32 13
  %0 = ptrtoint ptr %autotimer to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %autotimer, align 4
  %automode = getelementptr inbounds %struct.bq2415x_device, ptr %bq, i32 0, i32 14
  %1 = ptrtoint ptr %automode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %automode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %automode to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %automode, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %work = getelementptr inbounds %struct.bq2415x_device, ptr %bq, i32 0, i32 4
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #9
  %charger = getelementptr inbounds %struct.bq2415x_device, ptr %bq, i32 0, i32 2
  %4 = ptrtoint ptr %charger to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %charger, align 4
  tail call void @power_supply_unregister(ptr noundef %5) #9
  %model = getelementptr inbounds %struct.bq2415x_device, ptr %bq, i32 0, i32 11
  %6 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %model, align 4
  tail call void @kfree(ptr noundef %7) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq2415x_power_supply_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #9
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 73, label %sw.bb14
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call1 = tail call fastcc i32 @bq2415x_exec_command(ptr noundef %call, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.else

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  %1 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %call1, label %if.else10 [
    i32 0, label %if.then3
    i32 1, label %if.then6
    i32 2, label %if.then9
  ]

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %val, align 4
  br label %cleanup

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %val, align 4
  br label %cleanup

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %val, align 4
  br label %cleanup

if.else10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %val, align 4
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %model = getelementptr inbounds %struct.bq2415x_device, ptr %call, i32 0, i32 11
  %6 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %model, align 4
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb14, %if.else10, %if.then9, %if.then6, %if.then3, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then6 ], [ 0, %if.else10 ], [ 0, %if.then9 ], [ 0, %if.then3 ], [ 0, %sw.bb14 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq2415x_sysfs_show_limit(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %reg.addr.i.i.i117 = alloca i8, align 1
  %msg.i.i.i118 = alloca [2 x %struct.i2c_msg], align 4
  %val.i.i.i119 = alloca i8, align 1
  %reg.addr.i.i.i94 = alloca i8, align 1
  %msg.i.i.i95 = alloca [2 x %struct.i2c_msg], align 4
  %val.i.i.i96 = alloca i8, align 1
  %reg.addr.i.i.i72 = alloca i8, align 1
  %msg.i.i.i73 = alloca [2 x %struct.i2c_msg], align 4
  %val.i.i.i74 = alloca i8, align 1
  %reg.addr.i.i.i53 = alloca i8, align 1
  %msg.i.i.i54 = alloca [2 x %struct.i2c_msg], align 4
  %val.i.i.i55 = alloca i8, align 1
  %reg.addr.i.i.i = alloca i8, align 1
  %msg.i.i.i = alloca [2 x %struct.i2c_msg], align 4
  %val.i.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call ptr @power_supply_get_drvdata(ptr noundef %1) #9
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attr, align 4
  %call3 = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(14) @.str.52) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i.i) #9
  %4 = ptrtoint ptr %reg.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %reg.addr.i.i.i, align 1
  %5 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i.i) #9
  %7 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i.i) #9
  %9 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %val.i.i.i, align 1, !annotation !317
  %adapter.i.i.i = getelementptr i8, ptr %6, i32 -8
  %10 = ptrtoint ptr %adapter.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.i, label %if.then.bq2415x_i2c_read_mask.exit.thread.i_crit_edge, label %if.end.i.i.i

if.then.bq2415x_i2c_read_mask.exit.thread.i_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_i2c_read_mask.exit.thread.i

if.end.i.i.i:                                     ; preds = %if.then
  %addr.i.i.i = getelementptr i8, ptr %6, i32 -30
  %12 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %addr.i.i.i, align 2
  %14 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %msg.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags.i.i.i, align 2
  %buf.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %reg.addr.i.i.i, ptr %buf.i.i.i, align 4
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %7, align 4
  %18 = load i16, ptr %addr.i.i.i, align 2
  %arrayidx6.i.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %arrayidx6.i.i.i, align 4
  %flags9.i.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %flags9.i.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %flags9.i.i.i, align 2
  %buf11.i.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %buf11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %val.i.i.i, ptr %buf11.i.i.i, align 4
  %len13.i.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %len13.i.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %len13.i.i.i, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @bq2415x_i2c_mutex, i32 noundef 0) #9
  %23 = ptrtoint ptr %adapter.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter.i.i.i, align 8
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %msg.i.i.i, i32 noundef 2) #9
  call void @mutex_unlock(ptr noundef nonnull @bq2415x_i2c_mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.i.bq2415x_i2c_read_mask.exit.thread.i_crit_edge, label %bq2415x_i2c_read_mask.exit.i

if.end.i.i.i.bq2415x_i2c_read_mask.exit.thread.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_i2c_read_mask.exit.thread.i

bq2415x_i2c_read_mask.exit.thread.i:              ; preds = %if.end.i.i.i.bq2415x_i2c_read_mask.exit.thread.i_crit_edge, %if.then.bq2415x_i2c_read_mask.exit.thread.i_crit_edge
  %retval.0.i.ph.i.i = phi i32 [ %call.i.i.i, %if.end.i.i.i.bq2415x_i2c_read_mask.exit.thread.i_crit_edge ], [ -19, %if.then.bq2415x_i2c_read_mask.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i.i) #9
  br label %cleanup

bq2415x_i2c_read_mask.exit.i:                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %val.i.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i.i) #9
  %27 = lshr i8 %26, 6
  %shr.i.i = zext i8 %27 to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.bq2415x_sysfs_show_limit, i32 0, i32 %shr.i.i
  %28 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %28)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end39

if.else:                                          ; preds = %entry
  %call7 = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(21) @.str.53) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.else11

if.then9:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i.i53) #9
  %29 = ptrtoint ptr %reg.addr.i.i.i53 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %reg.addr.i.i.i53, align 1
  %30 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i.i54) #9
  %32 = getelementptr inbounds i8, ptr %msg.i.i.i54, i32 4
  %33 = call ptr @memset(ptr %32, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i.i55) #9
  %34 = ptrtoint ptr %val.i.i.i55 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -1, ptr %val.i.i.i55, align 1, !annotation !317
  %adapter.i.i.i56 = getelementptr i8, ptr %31, i32 -8
  %35 = ptrtoint ptr %adapter.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %adapter.i.i.i56, align 8
  %tobool.not.i.i.i57 = icmp eq ptr %36, null
  br i1 %tobool.not.i.i.i57, label %if.then9.bq2415x_i2c_read.exit.thread.i.i_crit_edge, label %if.end.i.i.i67

if.then9.bq2415x_i2c_read.exit.thread.i.i_crit_edge: ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_i2c_read.exit.thread.i.i

if.end.i.i.i67:                                   ; preds = %if.then9
  %addr.i.i.i58 = getelementptr i8, ptr %31, i32 -30
  %37 = ptrtoint ptr %addr.i.i.i58 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %addr.i.i.i58, align 2
  %39 = ptrtoint ptr %msg.i.i.i54 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %msg.i.i.i54, align 4
  %flags.i.i.i59 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i54, i32 0, i32 1
  %40 = ptrtoint ptr %flags.i.i.i59 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %flags.i.i.i59, align 2
  %buf.i.i.i60 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i54, i32 0, i32 3
  %41 = ptrtoint ptr %buf.i.i.i60 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %reg.addr.i.i.i53, ptr %buf.i.i.i60, align 4
  %42 = ptrtoint ptr %32 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1, ptr %32, align 4
  %43 = load i16, ptr %addr.i.i.i58, align 2
  %arrayidx6.i.i.i61 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i54, i32 0, i32 1
  %44 = ptrtoint ptr %arrayidx6.i.i.i61 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %arrayidx6.i.i.i61, align 4
  %flags9.i.i.i62 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i54, i32 0, i32 1, i32 1
  %45 = ptrtoint ptr %flags9.i.i.i62 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 1, ptr %flags9.i.i.i62, align 2
  %buf11.i.i.i63 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i54, i32 0, i32 1, i32 3
  %46 = ptrtoint ptr %buf11.i.i.i63 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %val.i.i.i55, ptr %buf11.i.i.i63, align 4
  %len13.i.i.i64 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i54, i32 0, i32 1, i32 2
  %47 = ptrtoint ptr %len13.i.i.i64 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 1, ptr %len13.i.i.i64, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @bq2415x_i2c_mutex, i32 noundef 0) #9
  %48 = ptrtoint ptr %adapter.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %adapter.i.i.i56, align 8
  %call.i.i.i65 = call i32 @i2c_transfer(ptr noundef %49, ptr noundef nonnull %msg.i.i.i54, i32 noundef 2) #9
  call void @mutex_unlock(ptr noundef nonnull @bq2415x_i2c_mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i65)
  %cmp.i.i.i66 = icmp slt i32 %call.i.i.i65, 0
  br i1 %cmp.i.i.i66, label %if.end.i.i.i67.bq2415x_i2c_read.exit.thread.i.i_crit_edge, label %bq2415x_i2c_read.exit.i.i

if.end.i.i.i67.bq2415x_i2c_read.exit.thread.i.i_crit_edge: ; preds = %if.end.i.i.i67
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_i2c_read.exit.thread.i.i

bq2415x_i2c_read.exit.thread.i.i:                 ; preds = %if.end.i.i.i67.bq2415x_i2c_read.exit.thread.i.i_crit_edge, %if.then9.bq2415x_i2c_read.exit.thread.i.i_crit_edge
  %retval.0.i.ph.i.i68 = phi i32 [ %call.i.i.i65, %if.end.i.i.i67.bq2415x_i2c_read.exit.thread.i.i_crit_edge ], [ -19, %if.then9.bq2415x_i2c_read.exit.thread.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i.i55) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i.i54) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i.i53) #9
  br label %bq2415x_get_weak_battery_voltage.exit

bq2415x_i2c_read.exit.i.i:                        ; preds = %if.end.i.i.i67
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %val.i.i.i55 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %val.i.i.i55, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i.i55) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i.i54) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i.i53) #9
  %and17.i.i = lshr i8 %51, 4
  %52 = and i8 %and17.i.i, 3
  %shr.i.i69 = zext i8 %52 to i32
  br label %bq2415x_get_weak_battery_voltage.exit

bq2415x_get_weak_battery_voltage.exit:            ; preds = %bq2415x_i2c_read.exit.i.i, %bq2415x_i2c_read.exit.thread.i.i
  %53 = phi i32 [ %retval.0.i.ph.i.i68, %bq2415x_i2c_read.exit.thread.i.i ], [ %shr.i.i69, %bq2415x_i2c_read.exit.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp.i = icmp slt i32 %53, 0
  %54 = mul i32 %53, 100
  %mul.i = add i32 %54, 3400
  %retval.0.i70 = select i1 %cmp.i, i32 %53, i32 %mul.i
  br label %if.end36

if.else11:                                        ; preds = %if.else
  %call14 = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(27) @.str.54) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.else18

if.then16:                                        ; preds = %if.else11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i.i72) #9
  %55 = ptrtoint ptr %reg.addr.i.i.i72 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 2, ptr %reg.addr.i.i.i72, align 1
  %56 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i.i73) #9
  %58 = getelementptr inbounds i8, ptr %msg.i.i.i73, i32 4
  %59 = call ptr @memset(ptr %58, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i.i74) #9
  %60 = ptrtoint ptr %val.i.i.i74 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -1, ptr %val.i.i.i74, align 1, !annotation !317
  %adapter.i.i.i75 = getelementptr i8, ptr %57, i32 -8
  %61 = ptrtoint ptr %adapter.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %adapter.i.i.i75, align 8
  %tobool.not.i.i.i76 = icmp eq ptr %62, null
  br i1 %tobool.not.i.i.i76, label %if.then16.bq2415x_i2c_read.exit.thread.i.i88_crit_edge, label %if.end.i.i.i86

if.then16.bq2415x_i2c_read.exit.thread.i.i88_crit_edge: ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_i2c_read.exit.thread.i.i88

if.end.i.i.i86:                                   ; preds = %if.then16
  %addr.i.i.i77 = getelementptr i8, ptr %57, i32 -30
  %63 = ptrtoint ptr %addr.i.i.i77 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %addr.i.i.i77, align 2
  %65 = ptrtoint ptr %msg.i.i.i73 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %msg.i.i.i73, align 4
  %flags.i.i.i78 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i73, i32 0, i32 1
  %66 = ptrtoint ptr %flags.i.i.i78 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 0, ptr %flags.i.i.i78, align 2
  %buf.i.i.i79 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i73, i32 0, i32 3
  %67 = ptrtoint ptr %buf.i.i.i79 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %reg.addr.i.i.i72, ptr %buf.i.i.i79, align 4
  %68 = ptrtoint ptr %58 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 1, ptr %58, align 4
  %69 = load i16, ptr %addr.i.i.i77, align 2
  %arrayidx6.i.i.i80 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i73, i32 0, i32 1
  %70 = ptrtoint ptr %arrayidx6.i.i.i80 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %69, ptr %arrayidx6.i.i.i80, align 4
  %flags9.i.i.i81 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i73, i32 0, i32 1, i32 1
  %71 = ptrtoint ptr %flags9.i.i.i81 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 1, ptr %flags9.i.i.i81, align 2
  %buf11.i.i.i82 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i73, i32 0, i32 1, i32 3
  %72 = ptrtoint ptr %buf11.i.i.i82 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %val.i.i.i74, ptr %buf11.i.i.i82, align 4
  %len13.i.i.i83 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i73, i32 0, i32 1, i32 2
  %73 = ptrtoint ptr %len13.i.i.i83 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 1, ptr %len13.i.i.i83, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @bq2415x_i2c_mutex, i32 noundef 0) #9
  %74 = ptrtoint ptr %adapter.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %adapter.i.i.i75, align 8
  %call.i.i.i84 = call i32 @i2c_transfer(ptr noundef %75, ptr noundef nonnull %msg.i.i.i73, i32 noundef 2) #9
  call void @mutex_unlock(ptr noundef nonnull @bq2415x_i2c_mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i84)
  %cmp.i.i.i85 = icmp slt i32 %call.i.i.i84, 0
  br i1 %cmp.i.i.i85, label %if.end.i.i.i86.bq2415x_i2c_read.exit.thread.i.i88_crit_edge, label %bq2415x_i2c_read.exit.i.i90

if.end.i.i.i86.bq2415x_i2c_read.exit.thread.i.i88_crit_edge: ; preds = %if.end.i.i.i86
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_i2c_read.exit.thread.i.i88

bq2415x_i2c_read.exit.thread.i.i88:               ; preds = %if.end.i.i.i86.bq2415x_i2c_read.exit.thread.i.i88_crit_edge, %if.then16.bq2415x_i2c_read.exit.thread.i.i88_crit_edge
  %retval.0.i.ph.i.i87 = phi i32 [ %call.i.i.i84, %if.end.i.i.i86.bq2415x_i2c_read.exit.thread.i.i88_crit_edge ], [ -19, %if.then16.bq2415x_i2c_read.exit.thread.i.i88_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i.i74) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i.i73) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i.i72) #9
  br label %bq2415x_get_battery_regulation_voltage.exit

bq2415x_i2c_read.exit.i.i90:                      ; preds = %if.end.i.i.i86
  call void @__sanitizer_cov_trace_pc() #11
  %76 = ptrtoint ptr %val.i.i.i74 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %val.i.i.i74, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i.i74) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i.i73) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i.i72) #9
  %78 = lshr i8 %77, 2
  %shr.i.i89 = zext i8 %78 to i32
  br label %bq2415x_get_battery_regulation_voltage.exit

bq2415x_get_battery_regulation_voltage.exit:      ; preds = %bq2415x_i2c_read.exit.i.i90, %bq2415x_i2c_read.exit.thread.i.i88
  %79 = phi i32 [ %retval.0.i.ph.i.i87, %bq2415x_i2c_read.exit.thread.i.i88 ], [ %shr.i.i89, %bq2415x_i2c_read.exit.i.i90 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp.i91 = icmp slt i32 %79, 0
  %80 = mul i32 %79, 20
  %mul1.i = add i32 %80, 3500
  %retval.0.i92 = select i1 %cmp.i91, i32 %79, i32 %mul1.i
  br label %if.end36

if.else18:                                        ; preds = %if.else11
  %call21 = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(15) @.str.55) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.then23, label %if.else25

if.then23:                                        ; preds = %if.else18
  %resistor_sense.i = getelementptr inbounds %struct.bq2415x_device, ptr %call1, i32 0, i32 1, i32 5
  %81 = ptrtoint ptr %resistor_sense.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %resistor_sense.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %82)
  %cmp.i97 = icmp slt i32 %82, 1
  br i1 %cmp.i97, label %if.then23.cleanup_crit_edge, label %if.end.i

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.then23
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i.i94) #9
  %83 = ptrtoint ptr %reg.addr.i.i.i94 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 4, ptr %reg.addr.i.i.i94, align 1
  %84 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %call1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i.i95) #9
  %86 = getelementptr inbounds i8, ptr %msg.i.i.i95, i32 4
  %87 = call ptr @memset(ptr %86, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i.i96) #9
  %88 = ptrtoint ptr %val.i.i.i96 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 -1, ptr %val.i.i.i96, align 1, !annotation !317
  %adapter.i.i.i98 = getelementptr i8, ptr %85, i32 -8
  %89 = ptrtoint ptr %adapter.i.i.i98 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %adapter.i.i.i98, align 8
  %tobool.not.i.i.i99 = icmp eq ptr %90, null
  br i1 %tobool.not.i.i.i99, label %if.end.i.bq2415x_i2c_read_mask.exit.thread.i111_crit_edge, label %if.end.i.i.i109

if.end.i.bq2415x_i2c_read_mask.exit.thread.i111_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_i2c_read_mask.exit.thread.i111

if.end.i.i.i109:                                  ; preds = %if.end.i
  %addr.i.i.i100 = getelementptr i8, ptr %85, i32 -30
  %91 = ptrtoint ptr %addr.i.i.i100 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %addr.i.i.i100, align 2
  %93 = ptrtoint ptr %msg.i.i.i95 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %92, ptr %msg.i.i.i95, align 4
  %flags.i.i.i101 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i95, i32 0, i32 1
  %94 = ptrtoint ptr %flags.i.i.i101 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 0, ptr %flags.i.i.i101, align 2
  %buf.i.i.i102 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i95, i32 0, i32 3
  %95 = ptrtoint ptr %buf.i.i.i102 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %reg.addr.i.i.i94, ptr %buf.i.i.i102, align 4
  %96 = ptrtoint ptr %86 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 1, ptr %86, align 4
  %97 = load i16, ptr %addr.i.i.i100, align 2
  %arrayidx6.i.i.i103 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i95, i32 0, i32 1
  %98 = ptrtoint ptr %arrayidx6.i.i.i103 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %97, ptr %arrayidx6.i.i.i103, align 4
  %flags9.i.i.i104 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i95, i32 0, i32 1, i32 1
  %99 = ptrtoint ptr %flags9.i.i.i104 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 1, ptr %flags9.i.i.i104, align 2
  %buf11.i.i.i105 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i95, i32 0, i32 1, i32 3
  %100 = ptrtoint ptr %buf11.i.i.i105 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %val.i.i.i96, ptr %buf11.i.i.i105, align 4
  %len13.i.i.i106 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i95, i32 0, i32 1, i32 2
  %101 = ptrtoint ptr %len13.i.i.i106 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 1, ptr %len13.i.i.i106, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @bq2415x_i2c_mutex, i32 noundef 0) #9
  %102 = ptrtoint ptr %adapter.i.i.i98 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %adapter.i.i.i98, align 8
  %call.i.i.i107 = call i32 @i2c_transfer(ptr noundef %103, ptr noundef nonnull %msg.i.i.i95, i32 noundef 2) #9
  call void @mutex_unlock(ptr noundef nonnull @bq2415x_i2c_mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i107)
  %cmp.i.i.i108 = icmp slt i32 %call.i.i.i107, 0
  br i1 %cmp.i.i.i108, label %if.end.i.i.i109.bq2415x_i2c_read_mask.exit.thread.i111_crit_edge, label %bq2415x_i2c_read_mask.exit.i115

if.end.i.i.i109.bq2415x_i2c_read_mask.exit.thread.i111_crit_edge: ; preds = %if.end.i.i.i109
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_i2c_read_mask.exit.thread.i111

bq2415x_i2c_read_mask.exit.thread.i111:           ; preds = %if.end.i.i.i109.bq2415x_i2c_read_mask.exit.thread.i111_crit_edge, %if.end.i.bq2415x_i2c_read_mask.exit.thread.i111_crit_edge
  %retval.0.i.ph.i.i110 = phi i32 [ %call.i.i.i107, %if.end.i.i.i109.bq2415x_i2c_read_mask.exit.thread.i111_crit_edge ], [ -19, %if.end.i.bq2415x_i2c_read_mask.exit.thread.i111_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i.i96) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i.i95) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i.i94) #9
  br label %cleanup

bq2415x_i2c_read_mask.exit.i115:                  ; preds = %if.end.i.i.i109
  call void @__sanitizer_cov_trace_pc() #11
  %104 = ptrtoint ptr %val.i.i.i96 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %val.i.i.i96, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i.i96) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i.i95) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i.i94) #9
  %and17.i.i112 = lshr i8 %105, 4
  %106 = and i8 %and17.i.i112, 7
  %shr.i.i113 = zext i8 %106 to i32
  %mul.i114 = mul nuw nsw i32 %shr.i.i113, 6800
  %add.i = add nuw nsw i32 %mul.i114, 37400
  %107 = ptrtoint ptr %resistor_sense.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %resistor_sense.i, align 4
  %div.i = sdiv i32 %add.i, %108
  br label %if.end36

if.else25:                                        ; preds = %if.else18
  %call28 = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(20) @.str.56) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %if.else25.cleanup_crit_edge

if.else25.cleanup_crit_edge:                      ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then30:                                        ; preds = %if.else25
  %resistor_sense.i120 = getelementptr inbounds %struct.bq2415x_device, ptr %call1, i32 0, i32 1, i32 5
  %109 = ptrtoint ptr %resistor_sense.i120 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %resistor_sense.i120, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %110)
  %cmp.i121 = icmp slt i32 %110, 1
  br i1 %cmp.i121, label %if.then30.cleanup_crit_edge, label %if.end.i124

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i124:                                      ; preds = %if.then30
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i.i117) #9
  %111 = ptrtoint ptr %reg.addr.i.i.i117 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 4, ptr %reg.addr.i.i.i117, align 1
  %112 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %call1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i.i118) #9
  %114 = getelementptr inbounds i8, ptr %msg.i.i.i118, i32 4
  %115 = call ptr @memset(ptr %114, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i.i119) #9
  %116 = ptrtoint ptr %val.i.i.i119 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 -1, ptr %val.i.i.i119, align 1, !annotation !317
  %adapter.i.i.i122 = getelementptr i8, ptr %113, i32 -8
  %117 = ptrtoint ptr %adapter.i.i.i122 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %adapter.i.i.i122, align 8
  %tobool.not.i.i.i123 = icmp eq ptr %118, null
  br i1 %tobool.not.i.i.i123, label %if.end.i124.bq2415x_i2c_read_mask.exit.thread.i136_crit_edge, label %if.end.i.i.i134

if.end.i124.bq2415x_i2c_read_mask.exit.thread.i136_crit_edge: ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_i2c_read_mask.exit.thread.i136

if.end.i.i.i134:                                  ; preds = %if.end.i124
  %addr.i.i.i125 = getelementptr i8, ptr %113, i32 -30
  %119 = ptrtoint ptr %addr.i.i.i125 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %addr.i.i.i125, align 2
  %121 = ptrtoint ptr %msg.i.i.i118 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %120, ptr %msg.i.i.i118, align 4
  %flags.i.i.i126 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i118, i32 0, i32 1
  %122 = ptrtoint ptr %flags.i.i.i126 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 0, ptr %flags.i.i.i126, align 2
  %buf.i.i.i127 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i118, i32 0, i32 3
  %123 = ptrtoint ptr %buf.i.i.i127 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %reg.addr.i.i.i117, ptr %buf.i.i.i127, align 4
  %124 = ptrtoint ptr %114 to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 1, ptr %114, align 4
  %125 = load i16, ptr %addr.i.i.i125, align 2
  %arrayidx6.i.i.i128 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i118, i32 0, i32 1
  %126 = ptrtoint ptr %arrayidx6.i.i.i128 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %125, ptr %arrayidx6.i.i.i128, align 4
  %flags9.i.i.i129 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i118, i32 0, i32 1, i32 1
  %127 = ptrtoint ptr %flags9.i.i.i129 to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 1, ptr %flags9.i.i.i129, align 2
  %buf11.i.i.i130 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i118, i32 0, i32 1, i32 3
  %128 = ptrtoint ptr %buf11.i.i.i130 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %val.i.i.i119, ptr %buf11.i.i.i130, align 4
  %len13.i.i.i131 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i118, i32 0, i32 1, i32 2
  %129 = ptrtoint ptr %len13.i.i.i131 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 1, ptr %len13.i.i.i131, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @bq2415x_i2c_mutex, i32 noundef 0) #9
  %130 = ptrtoint ptr %adapter.i.i.i122 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %adapter.i.i.i122, align 8
  %call.i.i.i132 = call i32 @i2c_transfer(ptr noundef %131, ptr noundef nonnull %msg.i.i.i118, i32 noundef 2) #9
  call void @mutex_unlock(ptr noundef nonnull @bq2415x_i2c_mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i132)
  %cmp.i.i.i133 = icmp slt i32 %call.i.i.i132, 0
  br i1 %cmp.i.i.i133, label %if.end.i.i.i134.bq2415x_i2c_read_mask.exit.thread.i136_crit_edge, label %bq2415x_i2c_read_mask.exit.i141

if.end.i.i.i134.bq2415x_i2c_read_mask.exit.thread.i136_crit_edge: ; preds = %if.end.i.i.i134
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_i2c_read_mask.exit.thread.i136

bq2415x_i2c_read_mask.exit.thread.i136:           ; preds = %if.end.i.i.i134.bq2415x_i2c_read_mask.exit.thread.i136_crit_edge, %if.end.i124.bq2415x_i2c_read_mask.exit.thread.i136_crit_edge
  %retval.0.i.ph.i.i135 = phi i32 [ %call.i.i.i132, %if.end.i.i.i134.bq2415x_i2c_read_mask.exit.thread.i136_crit_edge ], [ -19, %if.end.i124.bq2415x_i2c_read_mask.exit.thread.i136_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i.i119) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i.i118) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i.i117) #9
  br label %cleanup

bq2415x_i2c_read_mask.exit.i141:                  ; preds = %if.end.i.i.i134
  call void @__sanitizer_cov_trace_pc() #11
  %132 = ptrtoint ptr %val.i.i.i119 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %val.i.i.i119, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i.i119) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i.i118) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i.i117) #9
  %and17.i.i137 = and i8 %133, 7
  %and.i.i = zext i8 %and17.i.i137 to i32
  %mul.i138 = mul nuw nsw i32 %and.i.i, 3400
  %add.i139 = add nuw nsw i32 %mul.i138, 3400
  %134 = ptrtoint ptr %resistor_sense.i120 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %resistor_sense.i120, align 4
  %div.i140 = sdiv i32 %add.i139, %135
  br label %if.end36

if.end36:                                         ; preds = %bq2415x_i2c_read_mask.exit.i141, %bq2415x_i2c_read_mask.exit.i115, %bq2415x_get_battery_regulation_voltage.exit, %bq2415x_get_weak_battery_voltage.exit
  %ret.0 = phi i32 [ %retval.0.i70, %bq2415x_get_weak_battery_voltage.exit ], [ %retval.0.i92, %bq2415x_get_battery_regulation_voltage.exit ], [ %div.i, %bq2415x_i2c_read_mask.exit.i115 ], [ %div.i140, %bq2415x_i2c_read_mask.exit.i141 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp37 = icmp slt i32 %ret.0, 0
  br i1 %cmp37, label %if.end36.cleanup_crit_edge, label %if.end36.if.end39_crit_edge

if.end36.if.end39_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39:                                         ; preds = %if.end36.if.end39_crit_edge, %bq2415x_i2c_read_mask.exit.i
  %ret.0150 = phi i32 [ %ret.0, %if.end36.if.end39_crit_edge ], [ %switch.load, %bq2415x_i2c_read_mask.exit.i ]
  %call40 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.57, i32 noundef %ret.0150)
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.end36.cleanup_crit_edge, %bq2415x_i2c_read_mask.exit.thread.i136, %if.then30.cleanup_crit_edge, %if.else25.cleanup_crit_edge, %bq2415x_i2c_read_mask.exit.thread.i111, %if.then23.cleanup_crit_edge, %bq2415x_i2c_read_mask.exit.thread.i
  %retval.0 = phi i32 [ %call40, %if.end39 ], [ -22, %if.else25.cleanup_crit_edge ], [ %ret.0, %if.end36.cleanup_crit_edge ], [ %retval.0.i.ph.i.i135, %bq2415x_i2c_read_mask.exit.thread.i136 ], [ -22, %if.then30.cleanup_crit_edge ], [ %retval.0.i.ph.i.i110, %bq2415x_i2c_read_mask.exit.thread.i111 ], [ -22, %if.then23.cleanup_crit_edge ], [ %retval.0.i.ph.i.i, %bq2415x_i2c_read_mask.exit.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq2415x_sysfs_set_limit(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call ptr @power_supply_get_drvdata(ptr noundef %1) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !317
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %attr, align 4
  %call4 = call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(14) @.str.52) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 101, i32 %6)
  %cmp.i = icmp slt i32 %6, 101
  br i1 %cmp.i, label %if.then6.bq2415x_set_current_limit.exit_crit_edge, label %if.else.i

if.then6.bq2415x_set_current_limit.exit_crit_edge: ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_set_current_limit.exit

if.else.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_const_cmp4(i32 501, i32 %6)
  %cmp1.i = icmp ult i32 %6, 501
  br i1 %cmp1.i, label %if.else.i.bq2415x_set_current_limit.exit_crit_edge, label %if.else3.i

if.else.i.bq2415x_set_current_limit.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_set_current_limit.exit

if.else3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 801, i32 %6)
  %cmp4.i = icmp ult i32 %6, 801
  %..i = select i1 %cmp4.i, i8 2, i8 3
  br label %bq2415x_set_current_limit.exit

bq2415x_set_current_limit.exit:                   ; preds = %if.else3.i, %if.else.i.bq2415x_set_current_limit.exit_crit_edge, %if.then6.bq2415x_set_current_limit.exit_crit_edge
  %val.0.i = phi i8 [ 0, %if.then6.bq2415x_set_current_limit.exit_crit_edge ], [ 1, %if.else.i.bq2415x_set_current_limit.exit_crit_edge ], [ %..i, %if.else3.i ]
  %call.i56 = call fastcc i32 @bq2415x_i2c_write_mask(ptr noundef %call1, i8 noundef zeroext 1, i8 noundef zeroext %val.0.i, i8 noundef zeroext -64, i8 noundef zeroext 6) #9
  br label %if.end40

if.else:                                          ; preds = %if.end
  %call10 = call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(21) @.str.53) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.else14

if.then12:                                        ; preds = %if.else
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3451, i32 %8)
  %cmp.i57 = icmp slt i32 %8, 3451
  br i1 %cmp.i57, label %if.then12.bq2415x_set_weak_battery_voltage.exit_crit_edge, label %if.else.i59

if.then12.bq2415x_set_weak_battery_voltage.exit_crit_edge: ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_set_weak_battery_voltage.exit

if.else.i59:                                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3551, i32 %8)
  %cmp1.i58 = icmp ult i32 %8, 3551
  br i1 %cmp1.i58, label %if.else.i59.bq2415x_set_weak_battery_voltage.exit_crit_edge, label %if.else3.i62

if.else.i59.bq2415x_set_weak_battery_voltage.exit_crit_edge: ; preds = %if.else.i59
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_set_weak_battery_voltage.exit

if.else3.i62:                                     ; preds = %if.else.i59
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 3651, i32 %8)
  %cmp4.i60 = icmp ult i32 %8, 3651
  %..i61 = select i1 %cmp4.i60, i8 2, i8 3
  br label %bq2415x_set_weak_battery_voltage.exit

bq2415x_set_weak_battery_voltage.exit:            ; preds = %if.else3.i62, %if.else.i59.bq2415x_set_weak_battery_voltage.exit_crit_edge, %if.then12.bq2415x_set_weak_battery_voltage.exit_crit_edge
  %val.0.i63 = phi i8 [ 0, %if.then12.bq2415x_set_weak_battery_voltage.exit_crit_edge ], [ 1, %if.else.i59.bq2415x_set_weak_battery_voltage.exit_crit_edge ], [ %..i61, %if.else3.i62 ]
  %call.i64 = call fastcc i32 @bq2415x_i2c_write_mask(ptr noundef %call1, i8 noundef zeroext 1, i8 noundef zeroext %val.0.i63, i8 noundef zeroext 48, i8 noundef zeroext 4) #9
  br label %if.end40

if.else14:                                        ; preds = %if.else
  %call17 = call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(27) @.str.54) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.else21

if.then19:                                        ; preds = %if.else14
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3490, i32 %10)
  %cmp.i65 = icmp slt i32 %10, 3490
  br i1 %cmp.i65, label %if.then19.if.end4.i_crit_edge, label %if.else.i66

if.then19.if.end4.i_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.else.i66:                                      ; preds = %if.then19
  %div7.i = udiv i32 %10, 10
  %sub.i = add nsw i32 %div7.i, -350
  %div1.i = sdiv i32 %sub.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4459, i32 %10)
  %cmp2.i = icmp ugt i32 %10, 4459
  br i1 %cmp2.i, label %if.else.i66.if.end40.thread_crit_edge, label %if.else.i66.if.end4.i_crit_edge

if.else.i66.if.end4.i_crit_edge:                  ; preds = %if.else.i66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.else.i66.if.end40.thread_crit_edge:            ; preds = %if.else.i66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.thread

if.end4.i:                                        ; preds = %if.else.i66.if.end4.i_crit_edge, %if.then19.if.end4.i_crit_edge
  %val.0.i67 = phi i32 [ %div1.i, %if.else.i66.if.end4.i_crit_edge ], [ 0, %if.then19.if.end4.i_crit_edge ]
  %conv.i = trunc i32 %val.0.i67 to i8
  %call.i68 = call fastcc i32 @bq2415x_i2c_write_mask(ptr noundef %call1, i8 noundef zeroext 2, i8 noundef zeroext %conv.i, i8 noundef zeroext -4, i8 noundef zeroext 2) #9
  br label %if.end40

if.else21:                                        ; preds = %if.else14
  %call24 = call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(15) @.str.55) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then26, label %if.else28

if.then26:                                        ; preds = %if.else21
  %resistor_sense.i = getelementptr inbounds %struct.bq2415x_device, ptr %call1, i32 0, i32 1, i32 5
  %11 = ptrtoint ptr %resistor_sense.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %resistor_sense.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i69 = icmp slt i32 %12, 1
  br i1 %cmp.i69, label %if.then26.if.end40.thread_crit_edge, label %if.end.i

if.then26.if.end40.thread_crit_edge:              ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.thread

if.end.i:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %mul.i = mul i32 %14, %12
  %sub.i70 = add i32 %mul.i, -37400
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6799, i32 %sub.i70)
  %cmp3.i = icmp slt i32 %sub.i70, -6799
  %div.i = sdiv i32 %sub.i70, 6800
  %15 = call i32 @llvm.smin.i32(i32 %div.i, i32 7) #9
  %phi.cast.i = trunc i32 %15 to i8
  %val.0.i71 = select i1 %cmp3.i, i8 0, i8 %phi.cast.i
  %call.i72 = call fastcc i32 @bq2415x_i2c_write_mask(ptr noundef %call1, i8 noundef zeroext 4, i8 noundef zeroext %val.0.i71, i8 noundef zeroext -16, i8 noundef zeroext 4) #9
  br label %if.end40

if.else28:                                        ; preds = %if.else21
  %call31 = call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(20) @.str.56) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp eq i32 %call31, 0
  br i1 %cmp32, label %if.then33, label %if.else28.cleanup_crit_edge

if.else28.cleanup_crit_edge:                      ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then33:                                        ; preds = %if.else28
  %resistor_sense.i74 = getelementptr inbounds %struct.bq2415x_device, ptr %call1, i32 0, i32 1, i32 5
  %16 = ptrtoint ptr %resistor_sense.i74 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %resistor_sense.i74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp.i75 = icmp slt i32 %17, 1
  br i1 %cmp.i75, label %if.then33.if.end40.thread_crit_edge, label %if.end.i83

if.then33.if.end40.thread_crit_edge:              ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.thread

if.end.i83:                                       ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val, align 4
  %mul.i76 = mul i32 %19, %17
  %sub.i77 = add i32 %mul.i76, -3400
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3399, i32 %sub.i77)
  %cmp3.i78 = icmp slt i32 %sub.i77, -3399
  %div.i79 = sdiv i32 %sub.i77, 3400
  %20 = call i32 @llvm.smin.i32(i32 %div.i79, i32 7) #9
  %phi.cast.i80 = trunc i32 %20 to i8
  %val.0.i81 = select i1 %cmp3.i78, i8 0, i8 %phi.cast.i80
  %call.i82 = call fastcc i32 @bq2415x_i2c_write_mask(ptr noundef %call1, i8 noundef zeroext 4, i8 noundef zeroext %val.0.i81, i8 noundef zeroext -121, i8 noundef zeroext 0) #9
  br label %if.end40

if.end40:                                         ; preds = %if.end.i83, %if.end.i, %if.end4.i, %bq2415x_set_weak_battery_voltage.exit, %bq2415x_set_current_limit.exit
  %ret.0 = phi i32 [ %call.i56, %bq2415x_set_current_limit.exit ], [ %call.i64, %bq2415x_set_weak_battery_voltage.exit ], [ %call.i68, %if.end4.i ], [ %call.i72, %if.end.i ], [ %call.i82, %if.end.i83 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp41 = icmp slt i32 %ret.0, 0
  br i1 %cmp41, label %if.end40.if.end40.thread_crit_edge, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end40.if.end40.thread_crit_edge:               ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.thread

if.end40.thread:                                  ; preds = %if.end40.if.end40.thread_crit_edge, %if.then33.if.end40.thread_crit_edge, %if.then26.if.end40.thread_crit_edge, %if.else.i66.if.end40.thread_crit_edge
  %ret.087 = phi i32 [ %ret.0, %if.end40.if.end40.thread_crit_edge ], [ -22, %if.else.i66.if.end40.thread_crit_edge ], [ -22, %if.then26.if.end40.thread_crit_edge ], [ -22, %if.then33.if.end40.thread_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %if.end40.thread, %if.end40.cleanup_crit_edge, %if.else28.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.else28.cleanup_crit_edge ], [ %ret.087, %if.end40.thread ], [ %count, %if.end40.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bq2415x_i2c_write_mask(ptr nocapture noundef readonly %bq, i8 noundef zeroext %reg, i8 noundef zeroext %val, i8 noundef zeroext %mask, i8 noundef zeroext %shift) unnamed_addr #2 align 64 {
entry:
  %msg.i18 = alloca [1 x %struct.i2c_msg], align 4
  %data.i = alloca [2 x i8], align 1
  %reg.addr.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %shift to i32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %0 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %reg, ptr %reg.addr.i, align 1
  %1 = ptrtoint ptr %bq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bq, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #9
  %3 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %4 = call ptr @memset(ptr %3, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #9
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %val.i, align 1, !annotation !317
  %adapter.i = getelementptr i8, ptr %2, i32 -8
  %6 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.bq2415x_i2c_read.exit.thread_crit_edge, label %if.end.i

entry.bq2415x_i2c_read.exit.thread_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_i2c_read.exit.thread

if.end.i:                                         ; preds = %entry
  %addr.i = getelementptr i8, ptr %2, i32 -30
  %8 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addr.i, align 2
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %3, align 4
  %14 = load i16, ptr %addr.i, align 2
  %arrayidx6.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %arrayidx6.i, align 4
  %flags9.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %flags9.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags9.i, align 2
  %buf11.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %buf11.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %val.i, ptr %buf11.i, align 4
  %len13.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %len13.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %len13.i, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @bq2415x_i2c_mutex, i32 noundef 0) #9
  %19 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #9
  call void @mutex_unlock(ptr noundef nonnull @bq2415x_i2c_mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.i.bq2415x_i2c_read.exit.thread_crit_edge, label %bq2415x_i2c_read.exit

if.end.i.bq2415x_i2c_read.exit.thread_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_i2c_read.exit.thread

bq2415x_i2c_read.exit.thread:                     ; preds = %if.end.i.bq2415x_i2c_read.exit.thread_crit_edge, %entry.bq2415x_i2c_read.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i, %if.end.i.bq2415x_i2c_read.exit.thread_crit_edge ], [ -19, %entry.bq2415x_i2c_read.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %cleanup

bq2415x_i2c_read.exit:                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %val.i, align 1
  %conv.i = zext i8 %22 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %conv6 = zext i8 %mask to i32
  %neg = xor i32 %conv6, -1
  %and = and i32 %conv.i, %neg
  %conv7 = zext i8 %val to i32
  %shl = shl i32 %conv7, %conv
  %or = or i32 %and, %shl
  %conv9 = trunc i32 %or to i8
  %23 = ptrtoint ptr %bq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bq, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i18) #9
  %25 = getelementptr inbounds i8, ptr %msg.i18, i32 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 196607, ptr %25, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #9
  %27 = getelementptr inbounds [2 x i8], ptr %data.i, i32 0, i32 1
  %28 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %reg, ptr %data.i, align 1
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv9, ptr %27, align 1
  %addr.i19 = getelementptr i8, ptr %24, i32 -30
  %30 = ptrtoint ptr %addr.i19 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %addr.i19, align 2
  %32 = ptrtoint ptr %msg.i18 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %msg.i18, align 4
  %flags.i20 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i18, i32 0, i32 1
  %33 = ptrtoint ptr %flags.i20 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags.i20, align 2
  %buf.i21 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i18, i32 0, i32 3
  %34 = ptrtoint ptr %buf.i21 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %data.i, ptr %buf.i21, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @bq2415x_i2c_mutex, i32 noundef 0) #9
  %adapter.i23 = getelementptr i8, ptr %24, i32 -8
  %35 = ptrtoint ptr %adapter.i23 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %adapter.i23, align 8
  %call.i24 = call i32 @i2c_transfer(ptr noundef %36, ptr noundef nonnull %msg.i18, i32 noundef 1) #9
  call void @mutex_unlock(ptr noundef nonnull @bq2415x_i2c_mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %cmp.i25 = icmp slt i32 %call.i24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i24)
  %cmp8.not.i = icmp eq i32 %call.i24, 1
  %..i = select i1 %cmp8.not.i, i32 0, i32 -5
  %retval.0.i26 = select i1 %cmp.i25, i32 %call.i24, i32 %..i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i18) #9
  br label %cleanup

cleanup:                                          ; preds = %bq2415x_i2c_read.exit, %bq2415x_i2c_read.exit.thread
  %retval.0 = phi i32 [ %retval.0.i26, %bq2415x_i2c_read.exit ], [ %retval.0.i.ph, %bq2415x_i2c_read.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq2415x_sysfs_show_enable(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call ptr @power_supply_get_drvdata(ptr noundef %1) #9
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attr, align 4
  %call3 = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(26) @.str.58) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %entry.if.end24_crit_edge, label %if.else

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.else:                                          ; preds = %entry
  %call6 = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(22) @.str.59) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.else.if.end24_crit_edge, label %if.else9

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.else9:                                         ; preds = %if.else
  %call12 = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(15) @.str.60) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.else9.if.end24_crit_edge, label %if.else15

if.else9.if.end24_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.else15:                                        ; preds = %if.else9
  %call18 = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(16) @.str.61) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.else15.if.end24_crit_edge, label %if.else15.cleanup_crit_edge

if.else15.cleanup_crit_edge:                      ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else15.if.end24_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.end24:                                         ; preds = %if.else15.if.end24_crit_edge, %if.else9.if.end24_crit_edge, %if.else.if.end24_crit_edge, %entry.if.end24_crit_edge
  %command.0 = phi i32 [ 8, %entry.if.end24_crit_edge ], [ 14, %if.else.if.end24_crit_edge ], [ 23, %if.else9.if.end24_crit_edge ], [ 2, %if.else15.if.end24_crit_edge ]
  %call25 = tail call fastcc i32 @bq2415x_exec_command(ptr noundef %call1, i32 noundef %command.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end24.cleanup_crit_edge, label %if.end28

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %call29 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.57, i32 noundef %call25)
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end24.cleanup_crit_edge, %if.else15.cleanup_crit_edge
  %retval.0 = phi i32 [ %call29, %if.end28 ], [ -22, %if.else15.cleanup_crit_edge ], [ %call25, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq2415x_sysfs_set_enable(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call ptr @power_supply_get_drvdata(ptr noundef %1) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !317
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %attr, align 4
  %call4 = call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(26) @.str.58) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %cond = select i1 %tobool.not, i32 10, i32 9
  br label %if.end34

if.else:                                          ; preds = %if.end
  %call9 = call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(22) @.str.59) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.else14

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool12.not = icmp eq i32 %8, 0
  %cond13 = select i1 %tobool12.not, i32 16, i32 15
  br label %if.end34

if.else14:                                        ; preds = %if.else
  %call17 = call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(15) @.str.60) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.else22

if.then19:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool20.not = icmp eq i32 %10, 0
  %cond21 = select i1 %tobool20.not, i32 25, i32 24
  br label %if.end34

if.else22:                                        ; preds = %if.else14
  %call25 = call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(16) @.str.61) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then27, label %if.else22.cleanup_crit_edge

if.else22.cleanup_crit_edge:                      ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then27:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool28.not = icmp eq i32 %12, 0
  %cond29 = select i1 %tobool28.not, i32 4, i32 3
  br label %if.end34

if.end34:                                         ; preds = %if.then27, %if.then19, %if.then11, %if.then6
  %command.0 = phi i32 [ %cond, %if.then6 ], [ %cond13, %if.then11 ], [ %cond21, %if.then19 ], [ %cond29, %if.then27 ]
  %call35 = call fastcc i32 @bq2415x_exec_command(ptr noundef %call1, i32 noundef %command.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  %call35.count = select i1 %cmp36, i32 %call35, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.else22.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.else22.cleanup_crit_edge ], [ %call35.count, %if.end34 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bq2415x_exec_command(ptr noundef readonly %bq, i32 noundef %command) unnamed_addr #2 align 64 {
entry:
  %reg.addr.i.i341 = alloca i8, align 1
  %msg.i.i342 = alloca [2 x %struct.i2c_msg], align 4
  %val.i.i343 = alloca i8, align 1
  %reg.addr.i.i319 = alloca i8, align 1
  %msg.i.i320 = alloca [2 x %struct.i2c_msg], align 4
  %val.i.i321 = alloca i8, align 1
  %reg.addr.i.i297 = alloca i8, align 1
  %msg.i.i298 = alloca [2 x %struct.i2c_msg], align 4
  %val.i.i299 = alloca i8, align 1
  %reg.addr.i.i.i274 = alloca i8, align 1
  %msg.i.i.i275 = alloca [2 x %struct.i2c_msg], align 4
  %val.i.i.i276 = alloca i8, align 1
  %reg.addr.i.i.i250 = alloca i8, align 1
  %msg.i.i.i251 = alloca [2 x %struct.i2c_msg], align 4
  %val.i.i.i252 = alloca i8, align 1
  %reg.addr.i.i.i227 = alloca i8, align 1
  %msg.i.i.i228 = alloca [2 x %struct.i2c_msg], align 4
  %val.i.i.i229 = alloca i8, align 1
  %reg.addr.i.i.i203 = alloca i8, align 1
  %msg.i.i.i204 = alloca [2 x %struct.i2c_msg], align 4
  %val.i.i.i205 = alloca i8, align 1
  %reg.addr.i.i.i179 = alloca i8, align 1
  %msg.i.i.i180 = alloca [2 x %struct.i2c_msg], align 4
  %val.i.i.i181 = alloca i8, align 1
  %reg.addr.i.i.i155 = alloca i8, align 1
  %msg.i.i.i156 = alloca [2 x %struct.i2c_msg], align 4
  %val.i.i.i157 = alloca i8, align 1
  %reg.addr.i.i134 = alloca i8, align 1
  %msg.i.i135 = alloca [2 x %struct.i2c_msg], align 4
  %val.i.i136 = alloca i8, align 1
  %reg.addr.i.i.i112 = alloca i8, align 1
  %msg.i.i.i113 = alloca [2 x %struct.i2c_msg], align 4
  %val.i.i.i114 = alloca i8, align 1
  %reg.addr.i.i = alloca i8, align 1
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  %val.i.i = alloca i8, align 1
  %reg.addr.i.i.i88 = alloca i8, align 1
  %msg.i.i.i89 = alloca [2 x %struct.i2c_msg], align 4
  %val.i.i.i90 = alloca i8, align 1
  %reg.addr.i.i.i = alloca i8, align 1
  %msg.i.i.i = alloca [2 x %struct.i2c_msg], align 4
  %val.i.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %command to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %command, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
    i32 3, label %sw.bb5
    i32 4, label %sw.bb7
    i32 5, label %sw.bb9
    i32 6, label %sw.bb11
    i32 7, label %sw.bb13
    i32 8, label %sw.bb15
    i32 9, label %sw.bb17
    i32 10, label %sw.bb19
    i32 11, label %sw.bb21
    i32 12, label %sw.bb24
    i32 13, label %sw.bb26
    i32 14, label %sw.bb28
    i32 15, label %sw.bb30
    i32 16, label %sw.bb32
    i32 17, label %sw.bb34
    i32 18, label %sw.bb36
    i32 19, label %sw.bb38
    i32 20, label %sw.bb40
    i32 21, label %sw.bb42
    i32 22, label %sw.bb44
    i32 23, label %sw.bb46
    i32 24, label %sw.bb48
    i32 25, label %sw.bb50
    i32 26, label %sw.bb52
    i32 27, label %sw.bb54
    i32 28, label %sw.bb56
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call fastcc i32 @bq2415x_i2c_write_mask(ptr noundef %bq, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext -128, i8 noundef zeroext 7) #9
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i.i) #9
  %1 = ptrtoint ptr %reg.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %reg.addr.i.i.i, align 1
  %2 = ptrtoint ptr %bq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bq, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i.i) #9
  %4 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i.i) #9
  %6 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %val.i.i.i, align 1, !annotation !317
  %adapter.i.i.i = getelementptr i8, ptr %3, i32 -8
  %7 = ptrtoint ptr %adapter.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i.i, label %sw.bb1.bq2415x_i2c_read.exit.thread.i.i_crit_edge, label %if.end.i.i.i

sw.bb1.bq2415x_i2c_read.exit.thread.i.i_crit_edge: ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_i2c_read.exit.thread.i.i

if.end.i.i.i:                                     ; preds = %sw.bb1
  %addr.i.i.i = getelementptr i8, ptr %3, i32 -30
  %9 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %addr.i.i.i, align 2
  %11 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %msg.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i.i.i, align 2
  %buf.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %reg.addr.i.i.i, ptr %buf.i.i.i, align 4
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %4, align 4
  %15 = load i16, ptr %addr.i.i.i, align 2
  %arrayidx6.i.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %arrayidx6.i.i.i, align 4
  %flags9.i.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %flags9.i.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %flags9.i.i.i, align 2
  %buf11.i.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %buf11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %val.i.i.i, ptr %buf11.i.i.i, align 4
  %len13.i.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %len13.i.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %len13.i.i.i, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @bq2415x_i2c_mutex, i32 noundef 0) #9
  %20 = ptrtoint ptr %adapter.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adapter.i.i.i, align 8
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg.i.i.i, i32 noundef 2) #9
  call void @mutex_unlock(ptr noundef nonnull @bq2415x_i2c_mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.i.bq2415x_i2c_read.exit.thread.i.i_crit_edge, label %bq2415x_i2c_read.exit.i.i

if.end.i.i.i.bq2415x_i2c_read.exit.thread.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_i2c_read.exit.thread.i.i

bq2415x_i2c_read.exit.thread.i.i:                 ; preds = %if.end.i.i.i.bq2415x_i2c_read.exit.thread.i.i_crit_edge, %sw.bb1.bq2415x_i2c_read.exit.thread.i.i_crit_edge
  %retval.0.i.ph.i.i = phi i32 [ %call.i.i.i, %if.end.i.i.i.bq2415x_i2c_read.exit.thread.i.i_crit_edge ], [ -19, %sw.bb1.bq2415x_i2c_read.exit.thread.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i.i) #9
  br label %cleanup

bq2415x_i2c_read.exit.i.i:                        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %val.i.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i.i) #9
  %24 = lshr i8 %23, 7
  %shr.i.i = zext i8 %24 to i32
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i.i88) #9
  %25 = ptrtoint ptr %reg.addr.i.i.i88 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %reg.addr.i.i.i88, align 1
  %26 = ptrtoint ptr %bq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bq, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i.i89) #9
  %28 = getelementptr inbounds i8, ptr %msg.i.i.i89, i32 4
  %29 = call ptr @memset(ptr %28, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i.i90) #9
  %30 = ptrtoint ptr %val.i.i.i90 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -1, ptr %val.i.i.i90, align 1, !annotation !317
  %adapter.i.i.i91 = getelementptr i8, ptr %27, i32 -8
  %31 = ptrtoint ptr %adapter.i.i.i91 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %adapter.i.i.i91, align 8
  %tobool.not.i.i.i92 = icmp eq ptr %32, null
  br i1 %tobool.not.i.i.i92, label %sw.bb3.bq2415x_i2c_read.exit.thread.i.i104_crit_edge, label %if.end.i.i.i102

sw.bb3.bq2415x_i2c_read.exit.thread.i.i104_crit_edge: ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_i2c_read.exit.thread.i.i104

if.end.i.i.i102:                                  ; preds = %sw.bb3
  %addr.i.i.i93 = getelementptr i8, ptr %27, i32 -30
  %33 = ptrtoint ptr %addr.i.i.i93 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %addr.i.i.i93, align 2
  %35 = ptrtoint ptr %msg.i.i.i89 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %msg.i.i.i89, align 4
  %flags.i.i.i94 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i89, i32 0, i32 1
  %36 = ptrtoint ptr %flags.i.i.i94 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %flags.i.i.i94, align 2
  %buf.i.i.i95 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i89, i32 0, i32 3
  %37 = ptrtoint ptr %buf.i.i.i95 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %reg.addr.i.i.i88, ptr %buf.i.i.i95, align 4
  %38 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %28, align 4
  %39 = load i16, ptr %addr.i.i.i93, align 2
  %arrayidx6.i.i.i96 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i89, i32 0, i32 1
  %40 = ptrtoint ptr %arrayidx6.i.i.i96 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %arrayidx6.i.i.i96, align 4
  %flags9.i.i.i97 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i89, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %flags9.i.i.i97 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1, ptr %flags9.i.i.i97, align 2
  %buf11.i.i.i98 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i89, i32 0, i32 1, i32 3
  %42 = ptrtoint ptr %buf11.i.i.i98 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %val.i.i.i90, ptr %buf11.i.i.i98, align 4
  %len13.i.i.i99 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i89, i32 0, i32 1, i32 2
  %43 = ptrtoint ptr %len13.i.i.i99 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 1, ptr %len13.i.i.i99, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @bq2415x_i2c_mutex, i32 noundef 0) #9
  %44 = ptrtoint ptr %adapter.i.i.i91 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %adapter.i.i.i91, align 8
  %call.i.i.i100 = call i32 @i2c_transfer(ptr noundef %45, ptr noundef nonnull %msg.i.i.i89, i32 noundef 2) #9
  call void @mutex_unlock(ptr noundef nonnull @bq2415x_i2c_mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i100)
  %cmp.i.i.i101 = icmp slt i32 %call.i.i.i100, 0
  br i1 %cmp.i.i.i101, label %if.end.i.i.i102.bq2415x_i2c_read.exit.thread.i.i104_crit_edge, label %bq2415x_i2c_read.exit.i.i108

if.end.i.i.i102.bq2415x_i2c_read.exit.thread.i.i104_crit_edge: ; preds = %if.end.i.i.i102
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_i2c_read.exit.thread.i.i104

bq2415x_i2c_read.exit.thread.i.i104:              ; preds = %if.end.i.i.i102.bq2415x_i2c_read.exit.thread.i.i104_crit_edge, %sw.bb3.bq2415x_i2c_read.exit.thread.i.i104_crit_edge
  %retval.0.i.ph.i.i103 = phi i32 [ %call.i.i.i100, %if.end.i.i.i102.bq2415x_i2c_read.exit.thread.i.i104_crit_edge ], [ -19, %sw.bb3.bq2415x_i2c_read.exit.thread.i.i104_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i.i90) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i.i89) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i.i88) #9
  br label %cleanup

bq2415x_i2c_read.exit.i.i108:                     ; preds = %if.end.i.i.i102
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %val.i.i.i90 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %val.i.i.i90, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i.i90) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i.i89) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i.i88) #9
  %and17.i.i105 = lshr i8 %47, 6
  %48 = and i8 %and17.i.i105, 1
  %shr.i.i107 = zext i8 %48 to i32
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i110 = tail call fastcc i32 @bq2415x_i2c_write_mask(ptr noundef %bq, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 64, i8 noundef zeroext 6) #9
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i111 = tail call fastcc i32 @bq2415x_i2c_write_mask(ptr noundef %bq, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 64, i8 noundef zeroext 6) #9
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i) #9
  %49 = ptrtoint ptr %reg.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %reg.addr.i.i, align 1
  %50 = ptrtoint ptr %bq to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bq, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #9
  %52 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %53 = call ptr @memset(ptr %52, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #9
  %54 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -1, ptr %val.i.i, align 1, !annotation !317
  %adapter.i.i = getelementptr i8, ptr %51, i32 -8
  %55 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %adapter.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %56, null
  br i1 %tobool.not.i.i, label %sw.bb9.bq2415x_i2c_read.exit.thread.i_crit_edge, label %if.end.i.i

sw.bb9.bq2415x_i2c_read.exit.thread.i_crit_edge:  ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_i2c_read.exit.thread.i

if.end.i.i:                                       ; preds = %sw.bb9
  %addr.i.i = getelementptr i8, ptr %51, i32 -30
  %57 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %addr.i.i, align 2
  %59 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %60 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %61 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %reg.addr.i.i, ptr %buf.i.i, align 4
  %62 = ptrtoint ptr %52 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 1, ptr %52, align 4
  %63 = load i16, ptr %addr.i.i, align 2
  %arrayidx6.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i, i32 0, i32 1
  %64 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %arrayidx6.i.i, align 4
  %flags9.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i, i32 0, i32 1, i32 1
  %65 = ptrtoint ptr %flags9.i.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 1, ptr %flags9.i.i, align 2
  %buf11.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i, i32 0, i32 1, i32 3
  %66 = ptrtoint ptr %buf11.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %val.i.i, ptr %buf11.i.i, align 4
  %len13.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i, i32 0, i32 1, i32 2
  %67 = ptrtoint ptr %len13.i.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 1, ptr %len13.i.i, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @bq2415x_i2c_mutex, i32 noundef 0) #9
  %68 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %69, ptr noundef nonnull %msg.i.i, i32 noundef 2) #9
  call void @mutex_unlock(ptr noundef nonnull @bq2415x_i2c_mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.bq2415x_i2c_read.exit.thread.i_crit_edge, label %bq2415x_i2c_read.exit.i

if.end.i.i.bq2415x_i2c_read.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_i2c_read.exit.thread.i

bq2415x_i2c_read.exit.thread.i:                   ; preds = %if.end.i.i.bq2415x_i2c_read.exit.thread.i_crit_edge, %sw.bb9.bq2415x_i2c_read.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call.i.i, %if.end.i.i.bq2415x_i2c_read.exit.thread.i_crit_edge ], [ -19, %sw.bb9.bq2415x_i2c_read.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i) #9
  br label %cleanup

bq2415x_i2c_read.exit.i:                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %val.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i) #9
  %and17.i = lshr i8 %71, 4
  %72 = and i8 %and17.i, 3
  %shr.i = zext i8 %72 to i32
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i.i112) #9
  %73 = ptrtoint ptr %reg.addr.i.i.i112 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %reg.addr.i.i.i112, align 1
  %74 = ptrtoint ptr %bq to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bq, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i.i113) #9
  %76 = getelementptr inbounds i8, ptr %msg.i.i.i113, i32 4
  %77 = call ptr @memset(ptr %76, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i.i114) #9
  %78 = ptrtoint ptr %val.i.i.i114 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 -1, ptr %val.i.i.i114, align 1, !annotation !317
  %adapter.i.i.i115 = getelementptr i8, ptr %75, i32 -8
  %79 = ptrtoint ptr %adapter.i.i.i115 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %adapter.i.i.i115, align 8
  %tobool.not.i.i.i116 = icmp eq ptr %80, null
  br i1 %tobool.not.i.i.i116, label %sw.bb11.bq2415x_i2c_read.exit.thread.i.i128_crit_edge, label %if.end.i.i.i126

sw.bb11.bq2415x_i2c_read.exit.thread.i.i128_crit_edge: ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_i2c_read.exit.thread.i.i128

if.end.i.i.i126:                                  ; preds = %sw.bb11
  %addr.i.i.i117 = getelementptr i8, ptr %75, i32 -30
  %81 = ptrtoint ptr %addr.i.i.i117 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %addr.i.i.i117, align 2
  %83 = ptrtoint ptr %msg.i.i.i113 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %82, ptr %msg.i.i.i113, align 4
  %flags.i.i.i118 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i113, i32 0, i32 1
  %84 = ptrtoint ptr %flags.i.i.i118 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 0, ptr %flags.i.i.i118, align 2
  %buf.i.i.i119 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i113, i32 0, i32 3
  %85 = ptrtoint ptr %buf.i.i.i119 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %reg.addr.i.i.i112, ptr %buf.i.i.i119, align 4
  %86 = ptrtoint ptr %76 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 1, ptr %76, align 4
  %87 = load i16, ptr %addr.i.i.i117, align 2
  %arrayidx6.i.i.i120 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i113, i32 0, i32 1
  %88 = ptrtoint ptr %arrayidx6.i.i.i120 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %87, ptr %arrayidx6.i.i.i120, align 4
  %flags9.i.i.i121 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i113, i32 0, i32 1, i32 1
  %89 = ptrtoint ptr %flags9.i.i.i121 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 1, ptr %flags9.i.i.i121, align 2
  %buf11.i.i.i122 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i113, i32 0, i32 1, i32 3
  %90 = ptrtoint ptr %buf11.i.i.i122 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %val.i.i.i114, ptr %buf11.i.i.i122, align 4
  %len13.i.i.i123 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i113, i32 0, i32 1, i32 2
  %91 = ptrtoint ptr %len13.i.i.i123 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 1, ptr %len13.i.i.i123, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @bq2415x_i2c_mutex, i32 noundef 0) #9
  %92 = ptrtoint ptr %adapter.i.i.i115 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %adapter.i.i.i115, align 8
  %call.i.i.i124 = call i32 @i2c_transfer(ptr noundef %93, ptr noundef nonnull %msg.i.i.i113, i32 noundef 2) #9
  call void @mutex_unlock(ptr noundef nonnull @bq2415x_i2c_mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i124)
  %cmp.i.i.i125 = icmp slt i32 %call.i.i.i124, 0
  br i1 %cmp.i.i.i125, label %if.end.i.i.i126.bq2415x_i2c_read.exit.thread.i.i128_crit_edge, label %bq2415x_i2c_read.exit.i.i132

if.end.i.i.i126.bq2415x_i2c_read.exit.thread.i.i128_crit_edge: ; preds = %if.end.i.i.i126
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_i2c_read.exit.thread.i.i128

bq2415x_i2c_read.exit.thread.i.i128:              ; preds = %if.end.i.i.i126.bq2415x_i2c_read.exit.thread.i.i128_crit_edge, %sw.bb11.bq2415x_i2c_read.exit.thread.i.i128_crit_edge
  %retval.0.i.ph.i.i127 = phi i32 [ %call.i.i.i124, %if.end.i.i.i126.bq2415x_i2c_read.exit.thread.i.i128_crit_edge ], [ -19, %sw.bb11.bq2415x_i2c_read.exit.thread.i.i128_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i.i114) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i.i113) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i.i112) #9
  br label %cleanup

bq2415x_i2c_read.exit.i.i132:                     ; preds = %if.end.i.i.i126
  call void @__sanitizer_cov_trace_pc() #11
  %94 = ptrtoint ptr %val.i.i.i114 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %val.i.i.i114, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i.i114) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i.i113) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i.i112) #9
  %and17.i.i129 = lshr i8 %95, 3
  %96 = and i8 %and17.i.i129, 1
  %shr.i.i131 = zext i8 %96 to i32
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i134) #9
  %97 = ptrtoint ptr %reg.addr.i.i134 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %reg.addr.i.i134, align 1
  %98 = ptrtoint ptr %bq to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %bq, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i135) #9
  %100 = getelementptr inbounds i8, ptr %msg.i.i135, i32 4
  %101 = call ptr @memset(ptr %100, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i136) #9
  %102 = ptrtoint ptr %val.i.i136 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 -1, ptr %val.i.i136, align 1, !annotation !317
  %adapter.i.i137 = getelementptr i8, ptr %99, i32 -8
  %103 = ptrtoint ptr %adapter.i.i137 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %adapter.i.i137, align 8
  %tobool.not.i.i138 = icmp eq ptr %104, null
  br i1 %tobool.not.i.i138, label %sw.bb13.bq2415x_i2c_read.exit.thread.i150_crit_edge, label %if.end.i.i148

sw.bb13.bq2415x_i2c_read.exit.thread.i150_crit_edge: ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_i2c_read.exit.thread.i150

if.end.i.i148:                                    ; preds = %sw.bb13
  %addr.i.i139 = getelementptr i8, ptr %99, i32 -30
  %105 = ptrtoint ptr %addr.i.i139 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %addr.i.i139, align 2
  %107 = ptrtoint ptr %msg.i.i135 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %106, ptr %msg.i.i135, align 4
  %flags.i.i140 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i135, i32 0, i32 1
  %108 = ptrtoint ptr %flags.i.i140 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 0, ptr %flags.i.i140, align 2
  %buf.i.i141 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i135, i32 0, i32 3
  %109 = ptrtoint ptr %buf.i.i141 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %reg.addr.i.i134, ptr %buf.i.i141, align 4
  %110 = ptrtoint ptr %100 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 1, ptr %100, align 4
  %111 = load i16, ptr %addr.i.i139, align 2
  %arrayidx6.i.i142 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i135, i32 0, i32 1
  %112 = ptrtoint ptr %arrayidx6.i.i142 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %111, ptr %arrayidx6.i.i142, align 4
  %flags9.i.i143 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i135, i32 0, i32 1, i32 1
  %113 = ptrtoint ptr %flags9.i.i143 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 1, ptr %flags9.i.i143, align 2
  %buf11.i.i144 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i135, i32 0, i32 1, i32 3
  %114 = ptrtoint ptr %buf11.i.i144 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %val.i.i136, ptr %buf11.i.i144, align 4
  %len13.i.i145 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i135, i32 0, i32 1, i32 2
  %115 = ptrtoint ptr %len13.i.i145 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 1, ptr %len13.i.i145, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @bq2415x_i2c_mutex, i32 noundef 0) #9
  %116 = ptrtoint ptr %adapter.i.i137 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %adapter.i.i137, align 8
  %call.i.i146 = call i32 @i2c_transfer(ptr noundef %117, ptr noundef nonnull %msg.i.i135, i32 noundef 2) #9
  call void @mutex_unlock(ptr noundef nonnull @bq2415x_i2c_mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i146)
  %cmp.i.i147 = icmp slt i32 %call.i.i146, 0
  br i1 %cmp.i.i147, label %if.end.i.i148.bq2415x_i2c_read.exit.thread.i150_crit_edge, label %bq2415x_i2c_read.exit.i153

if.end.i.i148.bq2415x_i2c_read.exit.thread.i150_crit_edge: ; preds = %if.end.i.i148
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_i2c_read.exit.thread.i150

bq2415x_i2c_read.exit.thread.i150:                ; preds = %if.end.i.i148.bq2415x_i2c_read.exit.thread.i150_crit_edge, %sw.bb13.bq2415x_i2c_read.exit.thread.i150_crit_edge
  %retval.0.i.ph.i149 = phi i32 [ %call.i.i146, %if.end.i.i148.bq2415x_i2c_read.exit.thread.i150_crit_edge ], [ -19, %sw.bb13.bq2415x_i2c_read.exit.thread.i150_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i136) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i135) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i134) #9
  br label %cleanup

bq2415x_i2c_read.exit.i153:                       ; preds = %if.end.i.i148
  call void @__sanitizer_cov_trace_pc() #11
  %118 = ptrtoint ptr %val.i.i136 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %val.i.i136, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i136) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i135) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i134) #9
  %and17.i151 = and i8 %119, 7
  %and.i152 = zext i8 %and17.i151 to i32
  br label %cleanup

sw.bb15:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i.i155) #9
  %120 = ptrtoint ptr %reg.addr.i.i.i155 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 1, ptr %reg.addr.i.i.i155, align 1
  %121 = ptrtoint ptr %bq to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %bq, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i.i156) #9
  %123 = getelementptr inbounds i8, ptr %msg.i.i.i156, i32 4
  %124 = call ptr @memset(ptr %123, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i.i157) #9
  %125 = ptrtoint ptr %val.i.i.i157 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 -1, ptr %val.i.i.i157, align 1, !annotation !317
  %adapter.i.i.i158 = getelementptr i8, ptr %122, i32 -8
  %126 = ptrtoint ptr %adapter.i.i.i158 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %adapter.i.i.i158, align 8
  %tobool.not.i.i.i159 = icmp eq ptr %127, null
  br i1 %tobool.not.i.i.i159, label %sw.bb15.bq2415x_i2c_read.exit.thread.i.i171_crit_edge, label %if.end.i.i.i169

sw.bb15.bq2415x_i2c_read.exit.thread.i.i171_crit_edge: ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_i2c_read.exit.thread.i.i171

if.end.i.i.i169:                                  ; preds = %sw.bb15
  %addr.i.i.i160 = getelementptr i8, ptr %122, i32 -30
  %128 = ptrtoint ptr %addr.i.i.i160 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %addr.i.i.i160, align 2
  %130 = ptrtoint ptr %msg.i.i.i156 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %129, ptr %msg.i.i.i156, align 4
  %flags.i.i.i161 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i156, i32 0, i32 1
  %131 = ptrtoint ptr %flags.i.i.i161 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 0, ptr %flags.i.i.i161, align 2
  %buf.i.i.i162 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i156, i32 0, i32 3
  %132 = ptrtoint ptr %buf.i.i.i162 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %reg.addr.i.i.i155, ptr %buf.i.i.i162, align 4
  %133 = ptrtoint ptr %123 to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 1, ptr %123, align 4
  %134 = load i16, ptr %addr.i.i.i160, align 2
  %arrayidx6.i.i.i163 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i156, i32 0, i32 1
  %135 = ptrtoint ptr %arrayidx6.i.i.i163 to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %134, ptr %arrayidx6.i.i.i163, align 4
  %flags9.i.i.i164 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i156, i32 0, i32 1, i32 1
  %136 = ptrtoint ptr %flags9.i.i.i164 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 1, ptr %flags9.i.i.i164, align 2
  %buf11.i.i.i165 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i156, i32 0, i32 1, i32 3
  %137 = ptrtoint ptr %buf11.i.i.i165 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %val.i.i.i157, ptr %buf11.i.i.i165, align 4
  %len13.i.i.i166 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i156, i32 0, i32 1, i32 2
  %138 = ptrtoint ptr %len13.i.i.i166 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 1, ptr %len13.i.i.i166, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @bq2415x_i2c_mutex, i32 noundef 0) #9
  %139 = ptrtoint ptr %adapter.i.i.i158 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %adapter.i.i.i158, align 8
  %call.i.i.i167 = call i32 @i2c_transfer(ptr noundef %140, ptr noundef nonnull %msg.i.i.i156, i32 noundef 2) #9
  call void @mutex_unlock(ptr noundef nonnull @bq2415x_i2c_mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i167)
  %cmp.i.i.i168 = icmp slt i32 %call.i.i.i167, 0
  br i1 %cmp.i.i.i168, label %if.end.i.i.i169.bq2415x_i2c_read.exit.thread.i.i171_crit_edge, label %bq2415x_i2c_read.exit.i.i175

if.end.i.i.i169.bq2415x_i2c_read.exit.thread.i.i171_crit_edge: ; preds = %if.end.i.i.i169
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_i2c_read.exit.thread.i.i171

bq2415x_i2c_read.exit.thread.i.i171:              ; preds = %if.end.i.i.i169.bq2415x_i2c_read.exit.thread.i.i171_crit_edge, %sw.bb15.bq2415x_i2c_read.exit.thread.i.i171_crit_edge
  %retval.0.i.ph.i.i170 = phi i32 [ %call.i.i.i167, %if.end.i.i.i169.bq2415x_i2c_read.exit.thread.i.i171_crit_edge ], [ -19, %sw.bb15.bq2415x_i2c_read.exit.thread.i.i171_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i.i157) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i.i156) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i.i155) #9
  br label %cleanup

bq2415x_i2c_read.exit.i.i175:                     ; preds = %if.end.i.i.i169
  call void @__sanitizer_cov_trace_pc() #11
  %141 = ptrtoint ptr %val.i.i.i157 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %val.i.i.i157, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i.i157) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i.i156) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i.i155) #9
  %and17.i.i172 = lshr i8 %142, 3
  %143 = and i8 %and17.i.i172, 1
  %shr.i.i174 = zext i8 %143 to i32
  br label %cleanup

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i177 = tail call fastcc i32 @bq2415x_i2c_write_mask(ptr noundef %bq, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 8, i8 noundef zeroext 3) #9
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i178 = tail call fastcc i32 @bq2415x_i2c_write_mask(ptr noundef %bq, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 8, i8 noundef zeroext 3) #9
  br label %cleanup

sw.bb21:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i.i179) #9
  %144 = ptrtoint ptr %reg.addr.i.i.i179 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 1, ptr %reg.addr.i.i.i179, align 1
  %145 = ptrtoint ptr %bq to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %bq, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i.i180) #9
  %147 = getelementptr inbounds i8, ptr %msg.i.i.i180, i32 4
  %148 = call ptr @memset(ptr %147, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i.i181) #9
  %149 = ptrtoint ptr %val.i.i.i181 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 -1, ptr %val.i.i.i181, align 1, !annotation !317
  %adapter.i.i.i182 = getelementptr i8, ptr %146, i32 -8
  %150 = ptrtoint ptr %adapter.i.i.i182 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %adapter.i.i.i182, align 8
  %tobool.not.i.i.i183 = icmp eq ptr %151, null
  br i1 %tobool.not.i.i.i183, label %sw.bb21.bq2415x_i2c_read_bit.exit200.thread_crit_edge, label %if.end.i.i.i193

sw.bb21.bq2415x_i2c_read_bit.exit200.thread_crit_edge: ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_i2c_read_bit.exit200.thread

if.end.i.i.i193:                                  ; preds = %sw.bb21
  %addr.i.i.i184 = getelementptr i8, ptr %146, i32 -30
  %152 = ptrtoint ptr %addr.i.i.i184 to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %addr.i.i.i184, align 2
  %154 = ptrtoint ptr %msg.i.i.i180 to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 %153, ptr %msg.i.i.i180, align 4
  %flags.i.i.i185 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i180, i32 0, i32 1
  %155 = ptrtoint ptr %flags.i.i.i185 to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 0, ptr %flags.i.i.i185, align 2
  %buf.i.i.i186 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i180, i32 0, i32 3
  %156 = ptrtoint ptr %buf.i.i.i186 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %reg.addr.i.i.i179, ptr %buf.i.i.i186, align 4
  %157 = ptrtoint ptr %147 to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 1, ptr %147, align 4
  %158 = load i16, ptr %addr.i.i.i184, align 2
  %arrayidx6.i.i.i187 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i180, i32 0, i32 1
  %159 = ptrtoint ptr %arrayidx6.i.i.i187 to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 %158, ptr %arrayidx6.i.i.i187, align 4
  %flags9.i.i.i188 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i180, i32 0, i32 1, i32 1
  %160 = ptrtoint ptr %flags9.i.i.i188 to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 1, ptr %flags9.i.i.i188, align 2
  %buf11.i.i.i189 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i180, i32 0, i32 1, i32 3
  %161 = ptrtoint ptr %buf11.i.i.i189 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %val.i.i.i181, ptr %buf11.i.i.i189, align 4
  %len13.i.i.i190 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i180, i32 0, i32 1, i32 2
  %162 = ptrtoint ptr %len13.i.i.i190 to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 1, ptr %len13.i.i.i190, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @bq2415x_i2c_mutex, i32 noundef 0) #9
  %163 = ptrtoint ptr %adapter.i.i.i182 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %adapter.i.i.i182, align 8
  %call.i.i.i191 = call i32 @i2c_transfer(ptr noundef %164, ptr noundef nonnull %msg.i.i.i180, i32 noundef 2) #9
  call void @mutex_unlock(ptr noundef nonnull @bq2415x_i2c_mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i191)
  %cmp.i.i.i192 = icmp slt i32 %call.i.i.i191, 0
  br i1 %cmp.i.i.i192, label %if.end.i.i.i193.bq2415x_i2c_read_bit.exit200.thread_crit_edge, label %bq2415x_i2c_read_bit.exit200

if.end.i.i.i193.bq2415x_i2c_read_bit.exit200.thread_crit_edge: ; preds = %if.end.i.i.i193
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_i2c_read_bit.exit200.thread

bq2415x_i2c_read_bit.exit200.thread:              ; preds = %if.end.i.i.i193.bq2415x_i2c_read_bit.exit200.thread_crit_edge, %sw.bb21.bq2415x_i2c_read_bit.exit200.thread_crit_edge
  %retval.0.i.ph.i.i194 = phi i32 [ %call.i.i.i191, %if.end.i.i.i193.bq2415x_i2c_read_bit.exit200.thread_crit_edge ], [ -19, %sw.bb21.bq2415x_i2c_read_bit.exit200.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i.i181) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i.i180) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i.i179) #9
  br label %cleanup

bq2415x_i2c_read_bit.exit200:                     ; preds = %if.end.i.i.i193
  call void @__sanitizer_cov_trace_pc() #11
  %165 = ptrtoint ptr %val.i.i.i181 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %val.i.i.i181, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i.i181) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i.i180) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i.i179) #9
  %167 = lshr i8 %166, 2
  %.lobit = and i8 %167, 1
  %168 = xor i8 %.lobit, 1
  %169 = zext i8 %168 to i32
  br label %cleanup

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i201 = tail call fastcc i32 @bq2415x_i2c_write_mask(ptr noundef %bq, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 4, i8 noundef zeroext 2) #9
  br label %cleanup

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i202 = tail call fastcc i32 @bq2415x_i2c_write_mask(ptr noundef %bq, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 4, i8 noundef zeroext 2) #9
  br label %cleanup

sw.bb28:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i.i203) #9
  %170 = ptrtoint ptr %reg.addr.i.i.i203 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 1, ptr %reg.addr.i.i.i203, align 1
  %171 = ptrtoint ptr %bq to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %bq, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i.i204) #9
  %173 = getelementptr inbounds i8, ptr %msg.i.i.i204, i32 4
  %174 = call ptr @memset(ptr %173, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i.i205) #9
  %175 = ptrtoint ptr %val.i.i.i205 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 -1, ptr %val.i.i.i205, align 1, !annotation !317
  %adapter.i.i.i206 = getelementptr i8, ptr %172, i32 -8
  %176 = ptrtoint ptr %adapter.i.i.i206 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %adapter.i.i.i206, align 8
  %tobool.not.i.i.i207 = icmp eq ptr %177, null
  br i1 %tobool.not.i.i.i207, label %sw.bb28.bq2415x_i2c_read.exit.thread.i.i219_crit_edge, label %if.end.i.i.i217

sw.bb28.bq2415x_i2c_read.exit.thread.i.i219_crit_edge: ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_i2c_read.exit.thread.i.i219

if.end.i.i.i217:                                  ; preds = %sw.bb28
  %addr.i.i.i208 = getelementptr i8, ptr %172, i32 -30
  %178 = ptrtoint ptr %addr.i.i.i208 to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %addr.i.i.i208, align 2
  %180 = ptrtoint ptr %msg.i.i.i204 to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 %179, ptr %msg.i.i.i204, align 4
  %flags.i.i.i209 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i204, i32 0, i32 1
  %181 = ptrtoint ptr %flags.i.i.i209 to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 0, ptr %flags.i.i.i209, align 2
  %buf.i.i.i210 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i204, i32 0, i32 3
  %182 = ptrtoint ptr %buf.i.i.i210 to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %reg.addr.i.i.i203, ptr %buf.i.i.i210, align 4
  %183 = ptrtoint ptr %173 to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 1, ptr %173, align 4
  %184 = load i16, ptr %addr.i.i.i208, align 2
  %arrayidx6.i.i.i211 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i204, i32 0, i32 1
  %185 = ptrtoint ptr %arrayidx6.i.i.i211 to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 %184, ptr %arrayidx6.i.i.i211, align 4
  %flags9.i.i.i212 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i204, i32 0, i32 1, i32 1
  %186 = ptrtoint ptr %flags9.i.i.i212 to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 1, ptr %flags9.i.i.i212, align 2
  %buf11.i.i.i213 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i204, i32 0, i32 1, i32 3
  %187 = ptrtoint ptr %buf11.i.i.i213 to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %val.i.i.i205, ptr %buf11.i.i.i213, align 4
  %len13.i.i.i214 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i204, i32 0, i32 1, i32 2
  %188 = ptrtoint ptr %len13.i.i.i214 to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 1, ptr %len13.i.i.i214, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @bq2415x_i2c_mutex, i32 noundef 0) #9
  %189 = ptrtoint ptr %adapter.i.i.i206 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %adapter.i.i.i206, align 8
  %call.i.i.i215 = call i32 @i2c_transfer(ptr noundef %190, ptr noundef nonnull %msg.i.i.i204, i32 noundef 2) #9
  call void @mutex_unlock(ptr noundef nonnull @bq2415x_i2c_mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i215)
  %cmp.i.i.i216 = icmp slt i32 %call.i.i.i215, 0
  br i1 %cmp.i.i.i216, label %if.end.i.i.i217.bq2415x_i2c_read.exit.thread.i.i219_crit_edge, label %bq2415x_i2c_read.exit.i.i223

if.end.i.i.i217.bq2415x_i2c_read.exit.thread.i.i219_crit_edge: ; preds = %if.end.i.i.i217
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_i2c_read.exit.thread.i.i219

bq2415x_i2c_read.exit.thread.i.i219:              ; preds = %if.end.i.i.i217.bq2415x_i2c_read.exit.thread.i.i219_crit_edge, %sw.bb28.bq2415x_i2c_read.exit.thread.i.i219_crit_edge
  %retval.0.i.ph.i.i218 = phi i32 [ %call.i.i.i215, %if.end.i.i.i217.bq2415x_i2c_read.exit.thread.i.i219_crit_edge ], [ -19, %sw.bb28.bq2415x_i2c_read.exit.thread.i.i219_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i.i205) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i.i204) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i.i203) #9
  br label %cleanup

bq2415x_i2c_read.exit.i.i223:                     ; preds = %if.end.i.i.i217
  call void @__sanitizer_cov_trace_pc() #11
  %191 = ptrtoint ptr %val.i.i.i205 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %val.i.i.i205, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i.i205) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i.i204) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i.i203) #9
  %and17.i.i220 = lshr i8 %192, 1
  %193 = and i8 %and17.i.i220, 1
  %shr.i.i222 = zext i8 %193 to i32
  br label %cleanup

sw.bb30:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i225 = tail call fastcc i32 @bq2415x_i2c_write_mask(ptr noundef %bq, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 2, i8 noundef zeroext 1) #9
  br label %cleanup

sw.bb32:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i226 = tail call fastcc i32 @bq2415x_i2c_write_mask(ptr noundef %bq, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 2, i8 noundef zeroext 1) #9
  br label %cleanup

sw.bb34:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i.i227) #9
  %194 = ptrtoint ptr %reg.addr.i.i.i227 to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 1, ptr %reg.addr.i.i.i227, align 1
  %195 = ptrtoint ptr %bq to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %bq, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i.i228) #9
  %197 = getelementptr inbounds i8, ptr %msg.i.i.i228, i32 4
  %198 = call ptr @memset(ptr %197, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i.i229) #9
  %199 = ptrtoint ptr %val.i.i.i229 to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 -1, ptr %val.i.i.i229, align 1, !annotation !317
  %adapter.i.i.i230 = getelementptr i8, ptr %196, i32 -8
  %200 = ptrtoint ptr %adapter.i.i.i230 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %adapter.i.i.i230, align 8
  %tobool.not.i.i.i231 = icmp eq ptr %201, null
  br i1 %tobool.not.i.i.i231, label %sw.bb34.bq2415x_i2c_read.exit.thread.i.i243_crit_edge, label %if.end.i.i.i241

sw.bb34.bq2415x_i2c_read.exit.thread.i.i243_crit_edge: ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_i2c_read.exit.thread.i.i243

if.end.i.i.i241:                                  ; preds = %sw.bb34
  %addr.i.i.i232 = getelementptr i8, ptr %196, i32 -30
  %202 = ptrtoint ptr %addr.i.i.i232 to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %addr.i.i.i232, align 2
  %204 = ptrtoint ptr %msg.i.i.i228 to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 %203, ptr %msg.i.i.i228, align 4
  %flags.i.i.i233 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i228, i32 0, i32 1
  %205 = ptrtoint ptr %flags.i.i.i233 to i32
  call void @__asan_store2_noabort(i32 %205)
  store i16 0, ptr %flags.i.i.i233, align 2
  %buf.i.i.i234 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i228, i32 0, i32 3
  %206 = ptrtoint ptr %buf.i.i.i234 to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr %reg.addr.i.i.i227, ptr %buf.i.i.i234, align 4
  %207 = ptrtoint ptr %197 to i32
  call void @__asan_store2_noabort(i32 %207)
  store i16 1, ptr %197, align 4
  %208 = load i16, ptr %addr.i.i.i232, align 2
  %arrayidx6.i.i.i235 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i228, i32 0, i32 1
  %209 = ptrtoint ptr %arrayidx6.i.i.i235 to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 %208, ptr %arrayidx6.i.i.i235, align 4
  %flags9.i.i.i236 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i228, i32 0, i32 1, i32 1
  %210 = ptrtoint ptr %flags9.i.i.i236 to i32
  call void @__asan_store2_noabort(i32 %210)
  store i16 1, ptr %flags9.i.i.i236, align 2
  %buf11.i.i.i237 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i228, i32 0, i32 1, i32 3
  %211 = ptrtoint ptr %buf11.i.i.i237 to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr %val.i.i.i229, ptr %buf11.i.i.i237, align 4
  %len13.i.i.i238 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i228, i32 0, i32 1, i32 2
  %212 = ptrtoint ptr %len13.i.i.i238 to i32
  call void @__asan_store2_noabort(i32 %212)
  store i16 1, ptr %len13.i.i.i238, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @bq2415x_i2c_mutex, i32 noundef 0) #9
  %213 = ptrtoint ptr %adapter.i.i.i230 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %adapter.i.i.i230, align 8
  %call.i.i.i239 = call i32 @i2c_transfer(ptr noundef %214, ptr noundef nonnull %msg.i.i.i228, i32 noundef 2) #9
  call void @mutex_unlock(ptr noundef nonnull @bq2415x_i2c_mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i239)
  %cmp.i.i.i240 = icmp slt i32 %call.i.i.i239, 0
  br i1 %cmp.i.i.i240, label %if.end.i.i.i241.bq2415x_i2c_read.exit.thread.i.i243_crit_edge, label %bq2415x_i2c_read.exit.i.i246

if.end.i.i.i241.bq2415x_i2c_read.exit.thread.i.i243_crit_edge: ; preds = %if.end.i.i.i241
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_i2c_read.exit.thread.i.i243

bq2415x_i2c_read.exit.thread.i.i243:              ; preds = %if.end.i.i.i241.bq2415x_i2c_read.exit.thread.i.i243_crit_edge, %sw.bb34.bq2415x_i2c_read.exit.thread.i.i243_crit_edge
  %retval.0.i.ph.i.i242 = phi i32 [ %call.i.i.i239, %if.end.i.i.i241.bq2415x_i2c_read.exit.thread.i.i243_crit_edge ], [ -19, %sw.bb34.bq2415x_i2c_read.exit.thread.i.i243_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i.i229) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i.i228) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i.i227) #9
  br label %cleanup

bq2415x_i2c_read.exit.i.i246:                     ; preds = %if.end.i.i.i241
  call void @__sanitizer_cov_trace_pc() #11
  %215 = ptrtoint ptr %val.i.i.i229 to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %val.i.i.i229, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i.i229) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i.i228) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i.i227) #9
  %and17.i.i244 = and i8 %216, 1
  %and.i.i245 = zext i8 %and17.i.i244 to i32
  br label %cleanup

sw.bb36:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i248 = tail call fastcc i32 @bq2415x_i2c_write_mask(ptr noundef %bq, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #9
  br label %cleanup

sw.bb38:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i249 = tail call fastcc i32 @bq2415x_i2c_write_mask(ptr noundef %bq, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0) #9
  br label %cleanup

sw.bb40:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i.i250) #9
  %217 = ptrtoint ptr %reg.addr.i.i.i250 to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 2, ptr %reg.addr.i.i.i250, align 1
  %218 = ptrtoint ptr %bq to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %bq, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i.i251) #9
  %220 = getelementptr inbounds i8, ptr %msg.i.i.i251, i32 4
  %221 = call ptr @memset(ptr %220, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i.i252) #9
  %222 = ptrtoint ptr %val.i.i.i252 to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 -1, ptr %val.i.i.i252, align 1, !annotation !317
  %adapter.i.i.i253 = getelementptr i8, ptr %219, i32 -8
  %223 = ptrtoint ptr %adapter.i.i.i253 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %adapter.i.i.i253, align 8
  %tobool.not.i.i.i254 = icmp eq ptr %224, null
  br i1 %tobool.not.i.i.i254, label %sw.bb40.bq2415x_i2c_read.exit.thread.i.i266_crit_edge, label %if.end.i.i.i264

sw.bb40.bq2415x_i2c_read.exit.thread.i.i266_crit_edge: ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_i2c_read.exit.thread.i.i266

if.end.i.i.i264:                                  ; preds = %sw.bb40
  %addr.i.i.i255 = getelementptr i8, ptr %219, i32 -30
  %225 = ptrtoint ptr %addr.i.i.i255 to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %addr.i.i.i255, align 2
  %227 = ptrtoint ptr %msg.i.i.i251 to i32
  call void @__asan_store2_noabort(i32 %227)
  store i16 %226, ptr %msg.i.i.i251, align 4
  %flags.i.i.i256 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i251, i32 0, i32 1
  %228 = ptrtoint ptr %flags.i.i.i256 to i32
  call void @__asan_store2_noabort(i32 %228)
  store i16 0, ptr %flags.i.i.i256, align 2
  %buf.i.i.i257 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i251, i32 0, i32 3
  %229 = ptrtoint ptr %buf.i.i.i257 to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr %reg.addr.i.i.i250, ptr %buf.i.i.i257, align 4
  %230 = ptrtoint ptr %220 to i32
  call void @__asan_store2_noabort(i32 %230)
  store i16 1, ptr %220, align 4
  %231 = load i16, ptr %addr.i.i.i255, align 2
  %arrayidx6.i.i.i258 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i251, i32 0, i32 1
  %232 = ptrtoint ptr %arrayidx6.i.i.i258 to i32
  call void @__asan_store2_noabort(i32 %232)
  store i16 %231, ptr %arrayidx6.i.i.i258, align 4
  %flags9.i.i.i259 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i251, i32 0, i32 1, i32 1
  %233 = ptrtoint ptr %flags9.i.i.i259 to i32
  call void @__asan_store2_noabort(i32 %233)
  store i16 1, ptr %flags9.i.i.i259, align 2
  %buf11.i.i.i260 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i251, i32 0, i32 1, i32 3
  %234 = ptrtoint ptr %buf11.i.i.i260 to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr %val.i.i.i252, ptr %buf11.i.i.i260, align 4
  %len13.i.i.i261 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i251, i32 0, i32 1, i32 2
  %235 = ptrtoint ptr %len13.i.i.i261 to i32
  call void @__asan_store2_noabort(i32 %235)
  store i16 1, ptr %len13.i.i.i261, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @bq2415x_i2c_mutex, i32 noundef 0) #9
  %236 = ptrtoint ptr %adapter.i.i.i253 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %adapter.i.i.i253, align 8
  %call.i.i.i262 = call i32 @i2c_transfer(ptr noundef %237, ptr noundef nonnull %msg.i.i.i251, i32 noundef 2) #9
  call void @mutex_unlock(ptr noundef nonnull @bq2415x_i2c_mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i262)
  %cmp.i.i.i263 = icmp slt i32 %call.i.i.i262, 0
  br i1 %cmp.i.i.i263, label %if.end.i.i.i264.bq2415x_i2c_read.exit.thread.i.i266_crit_edge, label %bq2415x_i2c_read.exit.i.i270

if.end.i.i.i264.bq2415x_i2c_read.exit.thread.i.i266_crit_edge: ; preds = %if.end.i.i.i264
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_i2c_read.exit.thread.i.i266

bq2415x_i2c_read.exit.thread.i.i266:              ; preds = %if.end.i.i.i264.bq2415x_i2c_read.exit.thread.i.i266_crit_edge, %sw.bb40.bq2415x_i2c_read.exit.thread.i.i266_crit_edge
  %retval.0.i.ph.i.i265 = phi i32 [ %call.i.i.i262, %if.end.i.i.i264.bq2415x_i2c_read.exit.thread.i.i266_crit_edge ], [ -19, %sw.bb40.bq2415x_i2c_read.exit.thread.i.i266_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i.i252) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i.i251) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i.i250) #9
  br label %cleanup

bq2415x_i2c_read.exit.i.i270:                     ; preds = %if.end.i.i.i264
  call void @__sanitizer_cov_trace_pc() #11
  %238 = ptrtoint ptr %val.i.i.i252 to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %val.i.i.i252, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i.i252) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i.i251) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i.i250) #9
  %and17.i.i267 = lshr i8 %239, 1
  %240 = and i8 %and17.i.i267, 1
  %shr.i.i269 = zext i8 %240 to i32
  br label %cleanup

sw.bb42:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i272 = tail call fastcc i32 @bq2415x_i2c_write_mask(ptr noundef %bq, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 2, i8 noundef zeroext 1) #9
  br label %cleanup

sw.bb44:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i273 = tail call fastcc i32 @bq2415x_i2c_write_mask(ptr noundef %bq, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext 2, i8 noundef zeroext 1) #9
  br label %cleanup

sw.bb46:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i.i274) #9
  %241 = ptrtoint ptr %reg.addr.i.i.i274 to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 2, ptr %reg.addr.i.i.i274, align 1
  %242 = ptrtoint ptr %bq to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %bq, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i.i275) #9
  %244 = getelementptr inbounds i8, ptr %msg.i.i.i275, i32 4
  %245 = call ptr @memset(ptr %244, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i.i276) #9
  %246 = ptrtoint ptr %val.i.i.i276 to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 -1, ptr %val.i.i.i276, align 1, !annotation !317
  %adapter.i.i.i277 = getelementptr i8, ptr %243, i32 -8
  %247 = ptrtoint ptr %adapter.i.i.i277 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %adapter.i.i.i277, align 8
  %tobool.not.i.i.i278 = icmp eq ptr %248, null
  br i1 %tobool.not.i.i.i278, label %sw.bb46.bq2415x_i2c_read.exit.thread.i.i290_crit_edge, label %if.end.i.i.i288

sw.bb46.bq2415x_i2c_read.exit.thread.i.i290_crit_edge: ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_i2c_read.exit.thread.i.i290

if.end.i.i.i288:                                  ; preds = %sw.bb46
  %addr.i.i.i279 = getelementptr i8, ptr %243, i32 -30
  %249 = ptrtoint ptr %addr.i.i.i279 to i32
  call void @__asan_load2_noabort(i32 %249)
  %250 = load i16, ptr %addr.i.i.i279, align 2
  %251 = ptrtoint ptr %msg.i.i.i275 to i32
  call void @__asan_store2_noabort(i32 %251)
  store i16 %250, ptr %msg.i.i.i275, align 4
  %flags.i.i.i280 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i275, i32 0, i32 1
  %252 = ptrtoint ptr %flags.i.i.i280 to i32
  call void @__asan_store2_noabort(i32 %252)
  store i16 0, ptr %flags.i.i.i280, align 2
  %buf.i.i.i281 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i275, i32 0, i32 3
  %253 = ptrtoint ptr %buf.i.i.i281 to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr %reg.addr.i.i.i274, ptr %buf.i.i.i281, align 4
  %254 = ptrtoint ptr %244 to i32
  call void @__asan_store2_noabort(i32 %254)
  store i16 1, ptr %244, align 4
  %255 = load i16, ptr %addr.i.i.i279, align 2
  %arrayidx6.i.i.i282 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i275, i32 0, i32 1
  %256 = ptrtoint ptr %arrayidx6.i.i.i282 to i32
  call void @__asan_store2_noabort(i32 %256)
  store i16 %255, ptr %arrayidx6.i.i.i282, align 4
  %flags9.i.i.i283 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i275, i32 0, i32 1, i32 1
  %257 = ptrtoint ptr %flags9.i.i.i283 to i32
  call void @__asan_store2_noabort(i32 %257)
  store i16 1, ptr %flags9.i.i.i283, align 2
  %buf11.i.i.i284 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i275, i32 0, i32 1, i32 3
  %258 = ptrtoint ptr %buf11.i.i.i284 to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr %val.i.i.i276, ptr %buf11.i.i.i284, align 4
  %len13.i.i.i285 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i.i275, i32 0, i32 1, i32 2
  %259 = ptrtoint ptr %len13.i.i.i285 to i32
  call void @__asan_store2_noabort(i32 %259)
  store i16 1, ptr %len13.i.i.i285, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @bq2415x_i2c_mutex, i32 noundef 0) #9
  %260 = ptrtoint ptr %adapter.i.i.i277 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %adapter.i.i.i277, align 8
  %call.i.i.i286 = call i32 @i2c_transfer(ptr noundef %261, ptr noundef nonnull %msg.i.i.i275, i32 noundef 2) #9
  call void @mutex_unlock(ptr noundef nonnull @bq2415x_i2c_mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i286)
  %cmp.i.i.i287 = icmp slt i32 %call.i.i.i286, 0
  br i1 %cmp.i.i.i287, label %if.end.i.i.i288.bq2415x_i2c_read.exit.thread.i.i290_crit_edge, label %bq2415x_i2c_read.exit.i.i293

if.end.i.i.i288.bq2415x_i2c_read.exit.thread.i.i290_crit_edge: ; preds = %if.end.i.i.i288
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_i2c_read.exit.thread.i.i290

bq2415x_i2c_read.exit.thread.i.i290:              ; preds = %if.end.i.i.i288.bq2415x_i2c_read.exit.thread.i.i290_crit_edge, %sw.bb46.bq2415x_i2c_read.exit.thread.i.i290_crit_edge
  %retval.0.i.ph.i.i289 = phi i32 [ %call.i.i.i286, %if.end.i.i.i288.bq2415x_i2c_read.exit.thread.i.i290_crit_edge ], [ -19, %sw.bb46.bq2415x_i2c_read.exit.thread.i.i290_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i.i276) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i.i275) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i.i274) #9
  br label %cleanup

bq2415x_i2c_read.exit.i.i293:                     ; preds = %if.end.i.i.i288
  call void @__sanitizer_cov_trace_pc() #11
  %262 = ptrtoint ptr %val.i.i.i276 to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %val.i.i.i276, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i.i276) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i.i275) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i.i274) #9
  %and17.i.i291 = and i8 %263, 1
  %and.i.i292 = zext i8 %and17.i.i291 to i32
  br label %cleanup

sw.bb48:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i295 = tail call fastcc i32 @bq2415x_i2c_write_mask(ptr noundef %bq, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #9
  br label %cleanup

sw.bb50:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i296 = tail call fastcc i32 @bq2415x_i2c_write_mask(ptr noundef %bq, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0) #9
  br label %cleanup

sw.bb52:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i297) #9
  %264 = ptrtoint ptr %reg.addr.i.i297 to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 3, ptr %reg.addr.i.i297, align 1
  %265 = ptrtoint ptr %bq to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %bq, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i298) #9
  %267 = getelementptr inbounds i8, ptr %msg.i.i298, i32 4
  %268 = call ptr @memset(ptr %267, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i299) #9
  %269 = ptrtoint ptr %val.i.i299 to i32
  call void @__asan_store1_noabort(i32 %269)
  store i8 -1, ptr %val.i.i299, align 1, !annotation !317
  %adapter.i.i300 = getelementptr i8, ptr %266, i32 -8
  %270 = ptrtoint ptr %adapter.i.i300 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %adapter.i.i300, align 8
  %tobool.not.i.i301 = icmp eq ptr %271, null
  br i1 %tobool.not.i.i301, label %sw.bb52.bq2415x_i2c_read.exit.thread.i313_crit_edge, label %if.end.i.i311

sw.bb52.bq2415x_i2c_read.exit.thread.i313_crit_edge: ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_i2c_read.exit.thread.i313

if.end.i.i311:                                    ; preds = %sw.bb52
  %addr.i.i302 = getelementptr i8, ptr %266, i32 -30
  %272 = ptrtoint ptr %addr.i.i302 to i32
  call void @__asan_load2_noabort(i32 %272)
  %273 = load i16, ptr %addr.i.i302, align 2
  %274 = ptrtoint ptr %msg.i.i298 to i32
  call void @__asan_store2_noabort(i32 %274)
  store i16 %273, ptr %msg.i.i298, align 4
  %flags.i.i303 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i298, i32 0, i32 1
  %275 = ptrtoint ptr %flags.i.i303 to i32
  call void @__asan_store2_noabort(i32 %275)
  store i16 0, ptr %flags.i.i303, align 2
  %buf.i.i304 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i298, i32 0, i32 3
  %276 = ptrtoint ptr %buf.i.i304 to i32
  call void @__asan_store4_noabort(i32 %276)
  store ptr %reg.addr.i.i297, ptr %buf.i.i304, align 4
  %277 = ptrtoint ptr %267 to i32
  call void @__asan_store2_noabort(i32 %277)
  store i16 1, ptr %267, align 4
  %278 = load i16, ptr %addr.i.i302, align 2
  %arrayidx6.i.i305 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i298, i32 0, i32 1
  %279 = ptrtoint ptr %arrayidx6.i.i305 to i32
  call void @__asan_store2_noabort(i32 %279)
  store i16 %278, ptr %arrayidx6.i.i305, align 4
  %flags9.i.i306 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i298, i32 0, i32 1, i32 1
  %280 = ptrtoint ptr %flags9.i.i306 to i32
  call void @__asan_store2_noabort(i32 %280)
  store i16 1, ptr %flags9.i.i306, align 2
  %buf11.i.i307 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i298, i32 0, i32 1, i32 3
  %281 = ptrtoint ptr %buf11.i.i307 to i32
  call void @__asan_store4_noabort(i32 %281)
  store ptr %val.i.i299, ptr %buf11.i.i307, align 4
  %len13.i.i308 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i298, i32 0, i32 1, i32 2
  %282 = ptrtoint ptr %len13.i.i308 to i32
  call void @__asan_store2_noabort(i32 %282)
  store i16 1, ptr %len13.i.i308, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @bq2415x_i2c_mutex, i32 noundef 0) #9
  %283 = ptrtoint ptr %adapter.i.i300 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %adapter.i.i300, align 8
  %call.i.i309 = call i32 @i2c_transfer(ptr noundef %284, ptr noundef nonnull %msg.i.i298, i32 noundef 2) #9
  call void @mutex_unlock(ptr noundef nonnull @bq2415x_i2c_mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i309)
  %cmp.i.i310 = icmp slt i32 %call.i.i309, 0
  br i1 %cmp.i.i310, label %if.end.i.i311.bq2415x_i2c_read.exit.thread.i313_crit_edge, label %bq2415x_i2c_read.exit.i317

if.end.i.i311.bq2415x_i2c_read.exit.thread.i313_crit_edge: ; preds = %if.end.i.i311
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_i2c_read.exit.thread.i313

bq2415x_i2c_read.exit.thread.i313:                ; preds = %if.end.i.i311.bq2415x_i2c_read.exit.thread.i313_crit_edge, %sw.bb52.bq2415x_i2c_read.exit.thread.i313_crit_edge
  %retval.0.i.ph.i312 = phi i32 [ %call.i.i309, %if.end.i.i311.bq2415x_i2c_read.exit.thread.i313_crit_edge ], [ -19, %sw.bb52.bq2415x_i2c_read.exit.thread.i313_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i299) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i298) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i297) #9
  br label %cleanup

bq2415x_i2c_read.exit.i317:                       ; preds = %if.end.i.i311
  call void @__sanitizer_cov_trace_pc() #11
  %285 = ptrtoint ptr %val.i.i299 to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %val.i.i299, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i299) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i298) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i297) #9
  %287 = lshr i8 %286, 5
  %shr.i316 = zext i8 %287 to i32
  br label %cleanup

sw.bb54:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i319) #9
  %288 = ptrtoint ptr %reg.addr.i.i319 to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 3, ptr %reg.addr.i.i319, align 1
  %289 = ptrtoint ptr %bq to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %bq, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i320) #9
  %291 = getelementptr inbounds i8, ptr %msg.i.i320, i32 4
  %292 = call ptr @memset(ptr %291, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i321) #9
  %293 = ptrtoint ptr %val.i.i321 to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 -1, ptr %val.i.i321, align 1, !annotation !317
  %adapter.i.i322 = getelementptr i8, ptr %290, i32 -8
  %294 = ptrtoint ptr %adapter.i.i322 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %adapter.i.i322, align 8
  %tobool.not.i.i323 = icmp eq ptr %295, null
  br i1 %tobool.not.i.i323, label %sw.bb54.bq2415x_i2c_read.exit.thread.i335_crit_edge, label %if.end.i.i333

sw.bb54.bq2415x_i2c_read.exit.thread.i335_crit_edge: ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_i2c_read.exit.thread.i335

if.end.i.i333:                                    ; preds = %sw.bb54
  %addr.i.i324 = getelementptr i8, ptr %290, i32 -30
  %296 = ptrtoint ptr %addr.i.i324 to i32
  call void @__asan_load2_noabort(i32 %296)
  %297 = load i16, ptr %addr.i.i324, align 2
  %298 = ptrtoint ptr %msg.i.i320 to i32
  call void @__asan_store2_noabort(i32 %298)
  store i16 %297, ptr %msg.i.i320, align 4
  %flags.i.i325 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i320, i32 0, i32 1
  %299 = ptrtoint ptr %flags.i.i325 to i32
  call void @__asan_store2_noabort(i32 %299)
  store i16 0, ptr %flags.i.i325, align 2
  %buf.i.i326 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i320, i32 0, i32 3
  %300 = ptrtoint ptr %buf.i.i326 to i32
  call void @__asan_store4_noabort(i32 %300)
  store ptr %reg.addr.i.i319, ptr %buf.i.i326, align 4
  %301 = ptrtoint ptr %291 to i32
  call void @__asan_store2_noabort(i32 %301)
  store i16 1, ptr %291, align 4
  %302 = load i16, ptr %addr.i.i324, align 2
  %arrayidx6.i.i327 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i320, i32 0, i32 1
  %303 = ptrtoint ptr %arrayidx6.i.i327 to i32
  call void @__asan_store2_noabort(i32 %303)
  store i16 %302, ptr %arrayidx6.i.i327, align 4
  %flags9.i.i328 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i320, i32 0, i32 1, i32 1
  %304 = ptrtoint ptr %flags9.i.i328 to i32
  call void @__asan_store2_noabort(i32 %304)
  store i16 1, ptr %flags9.i.i328, align 2
  %buf11.i.i329 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i320, i32 0, i32 1, i32 3
  %305 = ptrtoint ptr %buf11.i.i329 to i32
  call void @__asan_store4_noabort(i32 %305)
  store ptr %val.i.i321, ptr %buf11.i.i329, align 4
  %len13.i.i330 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i320, i32 0, i32 1, i32 2
  %306 = ptrtoint ptr %len13.i.i330 to i32
  call void @__asan_store2_noabort(i32 %306)
  store i16 1, ptr %len13.i.i330, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @bq2415x_i2c_mutex, i32 noundef 0) #9
  %307 = ptrtoint ptr %adapter.i.i322 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %adapter.i.i322, align 8
  %call.i.i331 = call i32 @i2c_transfer(ptr noundef %308, ptr noundef nonnull %msg.i.i320, i32 noundef 2) #9
  call void @mutex_unlock(ptr noundef nonnull @bq2415x_i2c_mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i331)
  %cmp.i.i332 = icmp slt i32 %call.i.i331, 0
  br i1 %cmp.i.i332, label %if.end.i.i333.bq2415x_i2c_read.exit.thread.i335_crit_edge, label %bq2415x_i2c_read.exit.i339

if.end.i.i333.bq2415x_i2c_read.exit.thread.i335_crit_edge: ; preds = %if.end.i.i333
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_i2c_read.exit.thread.i335

bq2415x_i2c_read.exit.thread.i335:                ; preds = %if.end.i.i333.bq2415x_i2c_read.exit.thread.i335_crit_edge, %sw.bb54.bq2415x_i2c_read.exit.thread.i335_crit_edge
  %retval.0.i.ph.i334 = phi i32 [ %call.i.i331, %if.end.i.i333.bq2415x_i2c_read.exit.thread.i335_crit_edge ], [ -19, %sw.bb54.bq2415x_i2c_read.exit.thread.i335_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i321) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i320) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i319) #9
  br label %cleanup

bq2415x_i2c_read.exit.i339:                       ; preds = %if.end.i.i333
  call void @__sanitizer_cov_trace_pc() #11
  %309 = ptrtoint ptr %val.i.i321 to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %val.i.i321, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i321) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i320) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i319) #9
  %and17.i336 = lshr i8 %310, 3
  %311 = and i8 %and17.i336, 3
  %shr.i338 = zext i8 %311 to i32
  br label %cleanup

sw.bb56:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i341) #9
  %312 = ptrtoint ptr %reg.addr.i.i341 to i32
  call void @__asan_store1_noabort(i32 %312)
  store i8 3, ptr %reg.addr.i.i341, align 1
  %313 = ptrtoint ptr %bq to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %bq, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i342) #9
  %315 = getelementptr inbounds i8, ptr %msg.i.i342, i32 4
  %316 = call ptr @memset(ptr %315, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i343) #9
  %317 = ptrtoint ptr %val.i.i343 to i32
  call void @__asan_store1_noabort(i32 %317)
  store i8 -1, ptr %val.i.i343, align 1, !annotation !317
  %adapter.i.i344 = getelementptr i8, ptr %314, i32 -8
  %318 = ptrtoint ptr %adapter.i.i344 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %adapter.i.i344, align 8
  %tobool.not.i.i345 = icmp eq ptr %319, null
  br i1 %tobool.not.i.i345, label %sw.bb56.bq2415x_i2c_read.exit.thread.i357_crit_edge, label %if.end.i.i355

sw.bb56.bq2415x_i2c_read.exit.thread.i357_crit_edge: ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_i2c_read.exit.thread.i357

if.end.i.i355:                                    ; preds = %sw.bb56
  %addr.i.i346 = getelementptr i8, ptr %314, i32 -30
  %320 = ptrtoint ptr %addr.i.i346 to i32
  call void @__asan_load2_noabort(i32 %320)
  %321 = load i16, ptr %addr.i.i346, align 2
  %322 = ptrtoint ptr %msg.i.i342 to i32
  call void @__asan_store2_noabort(i32 %322)
  store i16 %321, ptr %msg.i.i342, align 4
  %flags.i.i347 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i342, i32 0, i32 1
  %323 = ptrtoint ptr %flags.i.i347 to i32
  call void @__asan_store2_noabort(i32 %323)
  store i16 0, ptr %flags.i.i347, align 2
  %buf.i.i348 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i342, i32 0, i32 3
  %324 = ptrtoint ptr %buf.i.i348 to i32
  call void @__asan_store4_noabort(i32 %324)
  store ptr %reg.addr.i.i341, ptr %buf.i.i348, align 4
  %325 = ptrtoint ptr %315 to i32
  call void @__asan_store2_noabort(i32 %325)
  store i16 1, ptr %315, align 4
  %326 = load i16, ptr %addr.i.i346, align 2
  %arrayidx6.i.i349 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i342, i32 0, i32 1
  %327 = ptrtoint ptr %arrayidx6.i.i349 to i32
  call void @__asan_store2_noabort(i32 %327)
  store i16 %326, ptr %arrayidx6.i.i349, align 4
  %flags9.i.i350 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i342, i32 0, i32 1, i32 1
  %328 = ptrtoint ptr %flags9.i.i350 to i32
  call void @__asan_store2_noabort(i32 %328)
  store i16 1, ptr %flags9.i.i350, align 2
  %buf11.i.i351 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i342, i32 0, i32 1, i32 3
  %329 = ptrtoint ptr %buf11.i.i351 to i32
  call void @__asan_store4_noabort(i32 %329)
  store ptr %val.i.i343, ptr %buf11.i.i351, align 4
  %len13.i.i352 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i342, i32 0, i32 1, i32 2
  %330 = ptrtoint ptr %len13.i.i352 to i32
  call void @__asan_store2_noabort(i32 %330)
  store i16 1, ptr %len13.i.i352, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @bq2415x_i2c_mutex, i32 noundef 0) #9
  %331 = ptrtoint ptr %adapter.i.i344 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %adapter.i.i344, align 8
  %call.i.i353 = call i32 @i2c_transfer(ptr noundef %332, ptr noundef nonnull %msg.i.i342, i32 noundef 2) #9
  call void @mutex_unlock(ptr noundef nonnull @bq2415x_i2c_mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i353)
  %cmp.i.i354 = icmp slt i32 %call.i.i353, 0
  br i1 %cmp.i.i354, label %if.end.i.i355.bq2415x_i2c_read.exit.thread.i357_crit_edge, label %bq2415x_i2c_read.exit.i360

if.end.i.i355.bq2415x_i2c_read.exit.thread.i357_crit_edge: ; preds = %if.end.i.i355
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_i2c_read.exit.thread.i357

bq2415x_i2c_read.exit.thread.i357:                ; preds = %if.end.i.i355.bq2415x_i2c_read.exit.thread.i357_crit_edge, %sw.bb56.bq2415x_i2c_read.exit.thread.i357_crit_edge
  %retval.0.i.ph.i356 = phi i32 [ %call.i.i353, %if.end.i.i355.bq2415x_i2c_read.exit.thread.i357_crit_edge ], [ -19, %sw.bb56.bq2415x_i2c_read.exit.thread.i357_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i343) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i342) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i341) #9
  br label %cleanup

bq2415x_i2c_read.exit.i360:                       ; preds = %if.end.i.i355
  call void @__sanitizer_cov_trace_pc() #11
  %333 = ptrtoint ptr %val.i.i343 to i32
  call void @__asan_load1_noabort(i32 %333)
  %334 = load i8, ptr %val.i.i343, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i343) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i342) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i341) #9
  %and17.i358 = and i8 %334, 7
  %and.i359 = zext i8 %and17.i358 to i32
  br label %cleanup

cleanup:                                          ; preds = %bq2415x_i2c_read.exit.i360, %bq2415x_i2c_read.exit.thread.i357, %bq2415x_i2c_read.exit.i339, %bq2415x_i2c_read.exit.thread.i335, %bq2415x_i2c_read.exit.i317, %bq2415x_i2c_read.exit.thread.i313, %sw.bb50, %sw.bb48, %bq2415x_i2c_read.exit.i.i293, %bq2415x_i2c_read.exit.thread.i.i290, %sw.bb44, %sw.bb42, %bq2415x_i2c_read.exit.i.i270, %bq2415x_i2c_read.exit.thread.i.i266, %sw.bb38, %sw.bb36, %bq2415x_i2c_read.exit.i.i246, %bq2415x_i2c_read.exit.thread.i.i243, %sw.bb32, %sw.bb30, %bq2415x_i2c_read.exit.i.i223, %bq2415x_i2c_read.exit.thread.i.i219, %sw.bb26, %sw.bb24, %bq2415x_i2c_read_bit.exit200, %bq2415x_i2c_read_bit.exit200.thread, %sw.bb19, %sw.bb17, %bq2415x_i2c_read.exit.i.i175, %bq2415x_i2c_read.exit.thread.i.i171, %bq2415x_i2c_read.exit.i153, %bq2415x_i2c_read.exit.thread.i150, %bq2415x_i2c_read.exit.i.i132, %bq2415x_i2c_read.exit.thread.i.i128, %bq2415x_i2c_read.exit.i, %bq2415x_i2c_read.exit.thread.i, %sw.bb7, %sw.bb5, %bq2415x_i2c_read.exit.i.i108, %bq2415x_i2c_read.exit.thread.i.i104, %bq2415x_i2c_read.exit.i.i, %bq2415x_i2c_read.exit.thread.i.i, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i296, %sw.bb50 ], [ %call.i295, %sw.bb48 ], [ %call.i273, %sw.bb44 ], [ %call.i272, %sw.bb42 ], [ %call.i249, %sw.bb38 ], [ %call.i248, %sw.bb36 ], [ %call.i226, %sw.bb32 ], [ %call.i225, %sw.bb30 ], [ %call.i202, %sw.bb26 ], [ %call.i201, %sw.bb24 ], [ %169, %bq2415x_i2c_read_bit.exit200 ], [ %call.i178, %sw.bb19 ], [ %call.i177, %sw.bb17 ], [ %call.i111, %sw.bb7 ], [ %call.i110, %sw.bb5 ], [ %call.i, %sw.bb ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.i.ph.i.i, %bq2415x_i2c_read.exit.thread.i.i ], [ %shr.i.i, %bq2415x_i2c_read.exit.i.i ], [ %retval.0.i.ph.i.i103, %bq2415x_i2c_read.exit.thread.i.i104 ], [ %shr.i.i107, %bq2415x_i2c_read.exit.i.i108 ], [ %retval.0.i.ph.i, %bq2415x_i2c_read.exit.thread.i ], [ %shr.i, %bq2415x_i2c_read.exit.i ], [ %retval.0.i.ph.i.i127, %bq2415x_i2c_read.exit.thread.i.i128 ], [ %shr.i.i131, %bq2415x_i2c_read.exit.i.i132 ], [ %retval.0.i.ph.i149, %bq2415x_i2c_read.exit.thread.i150 ], [ %and.i152, %bq2415x_i2c_read.exit.i153 ], [ %retval.0.i.ph.i.i170, %bq2415x_i2c_read.exit.thread.i.i171 ], [ %shr.i.i174, %bq2415x_i2c_read.exit.i.i175 ], [ %retval.0.i.ph.i.i194, %bq2415x_i2c_read_bit.exit200.thread ], [ %retval.0.i.ph.i.i218, %bq2415x_i2c_read.exit.thread.i.i219 ], [ %shr.i.i222, %bq2415x_i2c_read.exit.i.i223 ], [ %retval.0.i.ph.i.i242, %bq2415x_i2c_read.exit.thread.i.i243 ], [ %and.i.i245, %bq2415x_i2c_read.exit.i.i246 ], [ %retval.0.i.ph.i.i265, %bq2415x_i2c_read.exit.thread.i.i266 ], [ %shr.i.i269, %bq2415x_i2c_read.exit.i.i270 ], [ %retval.0.i.ph.i.i289, %bq2415x_i2c_read.exit.thread.i.i290 ], [ %and.i.i292, %bq2415x_i2c_read.exit.i.i293 ], [ %retval.0.i.ph.i312, %bq2415x_i2c_read.exit.thread.i313 ], [ %shr.i316, %bq2415x_i2c_read.exit.i317 ], [ %retval.0.i.ph.i334, %bq2415x_i2c_read.exit.thread.i335 ], [ %shr.i338, %bq2415x_i2c_read.exit.i339 ], [ %retval.0.i.ph.i356, %bq2415x_i2c_read.exit.thread.i357 ], [ %and.i359, %bq2415x_i2c_read.exit.i360 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq2415x_sysfs_show_reported_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call ptr @power_supply_get_drvdata(ptr noundef %1) #9
  %automode = getelementptr inbounds %struct.bq2415x_device, ptr %call1, i32 0, i32 14
  %2 = ptrtoint ptr %automode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %automode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %reported_mode = getelementptr inbounds %struct.bq2415x_device, ptr %call1, i32 0, i32 7
  %4 = ptrtoint ptr %reported_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reported_mode, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb5
    i32 3, label %sw.bb7
    i32 4, label %sw.bb9
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = call ptr @memcpy(ptr %buf, ptr @.str.63, i32 5)
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = call ptr @memcpy(ptr %buf, ptr @.str.64, i32 6)
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = call ptr @memcpy(ptr %buf, ptr @.str.65, i32 6)
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %10 = call ptr @memcpy(ptr %buf, ptr @.str.66, i32 11)
  br label %cleanup

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %11 = call ptr @memcpy(ptr %buf, ptr @.str.67, i32 7)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 6, %sw.bb9 ], [ 10, %sw.bb7 ], [ 5, %sw.bb5 ], [ 5, %sw.bb3 ], [ 4, %sw.bb ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq2415x_sysfs_show_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call ptr @power_supply_get_drvdata(ptr noundef %1) #9
  %automode = getelementptr inbounds %struct.bq2415x_device, ptr %call1, i32 0, i32 14
  %2 = ptrtoint ptr %automode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %automode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = call ptr @memcpy(ptr %buf, ptr @.str.69, i32 7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 6, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %mode = getelementptr inbounds %struct.bq2415x_device, ptr %call1, i32 0, i32 8
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %6, label %if.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
    i32 2, label %sw.bb10
    i32 3, label %sw.bb14
    i32 4, label %sw.bb18
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr3 = getelementptr i8, ptr %buf, i32 %ret.0
  %8 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 1868981760, ptr %add.ptr3, align 1
  %add5 = add nuw nsw i32 %ret.0, 3
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr7 = getelementptr i8, ptr %buf, i32 %ret.0
  %9 = call ptr @memcpy(ptr %add.ptr7, ptr @.str.71, i32 5)
  %add9 = add nuw nsw i32 %ret.0, 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr11 = getelementptr i8, ptr %buf, i32 %ret.0
  %10 = call ptr @memcpy(ptr %add.ptr11, ptr @.str.72, i32 5)
  %add13 = add nuw nsw i32 %ret.0, 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr15 = getelementptr i8, ptr %buf, i32 %ret.0
  %11 = call ptr @memcpy(ptr %add.ptr15, ptr @.str.73, i32 10)
  %add17 = or i32 %ret.0, 9
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr19 = getelementptr i8, ptr %buf, i32 %ret.0
  %12 = call ptr @memcpy(ptr %add.ptr19, ptr @.str.74, i32 6)
  %add21 = add nuw nsw i32 %ret.0, 5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb18, %sw.bb14, %sw.bb10, %sw.bb6, %sw.bb, %if.end.sw.epilog_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end.sw.epilog_crit_edge ], [ %add21, %sw.bb18 ], [ %add17, %sw.bb14 ], [ %add13, %sw.bb10 ], [ %add9, %sw.bb6 ], [ %add5, %sw.bb ]
  %13 = ptrtoint ptr %automode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %automode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp23 = icmp sgt i32 %14, 0
  br i1 %cmp23, label %if.then24, label %sw.epilog.if.end28_crit_edge

sw.epilog.if.end28_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then24:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr25 = getelementptr i8, ptr %buf, i32 %ret.1
  %15 = ptrtoint ptr %add.ptr25 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 10496, ptr %add.ptr25, align 1
  %add27 = add i32 %ret.1, 1
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %sw.epilog.if.end28_crit_edge
  %ret.2 = phi i32 [ %add27, %if.then24 ], [ %ret.1, %sw.epilog.if.end28_crit_edge ]
  %add.ptr29 = getelementptr i8, ptr %buf, i32 %ret.2
  %16 = ptrtoint ptr %add.ptr29 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 2560, ptr %add.ptr29, align 1
  %add31 = add i32 %ret.2, 1
  ret i32 %add31
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq2415x_sysfs_set_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call ptr @power_supply_get_drvdata(ptr noundef %1) #9
  %call2 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(5) @.str.77, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %automode = getelementptr inbounds %struct.bq2415x_device, ptr %call1, i32 0, i32 14
  %2 = ptrtoint ptr %automode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %automode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp3 = icmp slt i32 %3, 0
  br i1 %cmp3, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %automode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %automode, align 4
  %reported_mode = getelementptr inbounds %struct.bq2415x_device, ptr %call1, i32 0, i32 7
  %5 = ptrtoint ptr %reported_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reported_mode, align 4
  br label %if.end68

if.else:                                          ; preds = %entry
  %call6 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(4) @.str.70, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.else14

if.then8:                                         ; preds = %if.else
  %automode9 = getelementptr inbounds %struct.bq2415x_device, ptr %call1, i32 0, i32 14
  %7 = ptrtoint ptr %automode9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %automode9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp10 = icmp sgt i32 %8, 0
  br i1 %cmp10, label %if.then11, label %if.then8.if.end68_crit_edge

if.then8.if.end68_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %automode9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %automode9, align 4
  br label %if.end68

if.else14:                                        ; preds = %if.else
  %call15 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(5) @.str.71, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.else23

if.then17:                                        ; preds = %if.else14
  %automode18 = getelementptr inbounds %struct.bq2415x_device, ptr %call1, i32 0, i32 14
  %10 = ptrtoint ptr %automode18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %automode18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp19 = icmp sgt i32 %11, 0
  br i1 %cmp19, label %if.then20, label %if.then17.if.end68_crit_edge

if.then17.if.end68_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then20:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %automode18 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %automode18, align 4
  br label %if.end68

if.else23:                                        ; preds = %if.else14
  %call24 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(5) @.str.72, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then26, label %if.else32

if.then26:                                        ; preds = %if.else23
  %automode27 = getelementptr inbounds %struct.bq2415x_device, ptr %call1, i32 0, i32 14
  %13 = ptrtoint ptr %automode27 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %automode27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp28 = icmp sgt i32 %14, 0
  br i1 %cmp28, label %if.then29, label %if.then26.if.end68_crit_edge

if.then26.if.end68_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then29:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %automode27 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %automode27, align 4
  br label %if.end68

if.else32:                                        ; preds = %if.else23
  %call33 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(10) @.str.73, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp eq i32 %call33, 0
  br i1 %cmp34, label %if.then35, label %if.else41

if.then35:                                        ; preds = %if.else32
  %automode36 = getelementptr inbounds %struct.bq2415x_device, ptr %call1, i32 0, i32 14
  %16 = ptrtoint ptr %automode36 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %automode36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp37 = icmp sgt i32 %17, 0
  br i1 %cmp37, label %if.then38, label %if.then35.if.end68_crit_edge

if.then35.if.end68_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then38:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %automode36 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %automode36, align 4
  br label %if.end68

if.else41:                                        ; preds = %if.else32
  %call42 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(6) @.str.74, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp eq i32 %call42, 0
  br i1 %cmp43, label %if.then44, label %if.else50

if.then44:                                        ; preds = %if.else41
  %automode45 = getelementptr inbounds %struct.bq2415x_device, ptr %call1, i32 0, i32 14
  %19 = ptrtoint ptr %automode45 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %automode45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp46 = icmp sgt i32 %20, 0
  br i1 %cmp46, label %if.then47, label %if.then44.if.end68_crit_edge

if.then44.if.end68_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then47:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %automode45 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %automode45, align 4
  br label %if.end68

if.else50:                                        ; preds = %if.else41
  %call51 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(6) @.str.78, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp eq i32 %call51, 0
  br i1 %cmp52, label %if.then53, label %if.else50.cleanup_crit_edge

if.else50.cleanup_crit_edge:                      ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then53:                                        ; preds = %if.else50
  tail call fastcc void @bq2415x_reset_chip(ptr noundef %call1)
  %call54 = tail call fastcc i32 @bq2415x_set_defaults(ptr noundef %call1)
  %automode55 = getelementptr inbounds %struct.bq2415x_device, ptr %call1, i32 0, i32 14
  %22 = ptrtoint ptr %automode55 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %automode55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp56 = icmp slt i32 %23, 1
  br i1 %cmp56, label %if.then53.cleanup_crit_edge, label %if.end58

if.then53.cleanup_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end58:                                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %automode55 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %automode55, align 4
  %reported_mode60 = getelementptr inbounds %struct.bq2415x_device, ptr %call1, i32 0, i32 7
  %25 = ptrtoint ptr %reported_mode60 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %reported_mode60, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.end58, %if.then47, %if.then44.if.end68_crit_edge, %if.then38, %if.then35.if.end68_crit_edge, %if.then29, %if.then26.if.end68_crit_edge, %if.then20, %if.then17.if.end68_crit_edge, %if.then11, %if.then8.if.end68_crit_edge, %if.end
  %mode.0 = phi i32 [ %6, %if.end ], [ %26, %if.end58 ], [ 0, %if.then11 ], [ 0, %if.then8.if.end68_crit_edge ], [ 1, %if.then20 ], [ 1, %if.then17.if.end68_crit_edge ], [ 2, %if.then29 ], [ 2, %if.then26.if.end68_crit_edge ], [ 3, %if.then38 ], [ 3, %if.then35.if.end68_crit_edge ], [ 4, %if.then47 ], [ 4, %if.then44.if.end68_crit_edge ]
  %call69 = tail call fastcc i32 @bq2415x_set_mode(ptr noundef %call1, i32 noundef %mode.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70 = icmp slt i32 %call69, 0
  %call69.count = select i1 %cmp70, i32 %call69, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %if.then53.cleanup_crit_edge, %if.else50.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ %count, %if.then53.cleanup_crit_edge ], [ -22, %if.else50.cleanup_crit_edge ], [ %call69.count, %if.end68 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq2415x_sysfs_show_timer(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call ptr @power_supply_get_drvdata(ptr noundef %1) #9
  %timer_error = getelementptr inbounds %struct.bq2415x_device, ptr %call1, i32 0, i32 10
  %2 = ptrtoint ptr %timer_error to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %timer_error, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.80, ptr noundef nonnull %3)
  br label %cleanup

if.end:                                           ; preds = %entry
  %autotimer = getelementptr inbounds %struct.bq2415x_device, ptr %call1, i32 0, i32 13
  %4 = ptrtoint ptr %autotimer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %autotimer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = call ptr @memcpy(ptr %buf, ptr @.str.81, i32 6)
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = call ptr @memcpy(ptr %buf, ptr @.str.63, i32 5)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ 5, %if.then5 ], [ 4, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq2415x_sysfs_set_timer(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call ptr @power_supply_get_drvdata(ptr noundef %1) #9
  %call2 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(5) @.str.77, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @bq2415x_timer_mutex, i32 noundef 0) #9
  %autotimer.i = getelementptr inbounds %struct.bq2415x_device, ptr %call1, i32 0, i32 13
  %2 = ptrtoint ptr %autotimer.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %autotimer.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  br i1 %cmp.i, label %if.then.bq2415x_set_autotimer.exit_crit_edge, label %if.end.i

if.then.bq2415x_set_autotimer.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_set_autotimer.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %autotimer.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %autotimer.i, align 4
  %work4.i = getelementptr inbounds %struct.bq2415x_device, ptr %call1, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %5 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %work4.i, i32 noundef 1000) #9
  %call.i.i14.i = tail call fastcc i32 @bq2415x_i2c_write_mask(ptr noundef %call1, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext -128, i8 noundef zeroext 7) #9
  %timer_error.i = getelementptr inbounds %struct.bq2415x_device, ptr %call1, i32 0, i32 10
  %6 = ptrtoint ptr %timer_error.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %timer_error.i, align 4
  br label %bq2415x_set_autotimer.exit

bq2415x_set_autotimer.exit:                       ; preds = %if.end.i, %if.then.bq2415x_set_autotimer.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @bq2415x_timer_mutex) #9
  br label %if.end8.thread

if.else:                                          ; preds = %entry
  %call3 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(4) @.str.70, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.else
  tail call void @mutex_lock_nested(ptr noundef nonnull @bq2415x_timer_mutex, i32 noundef 0) #9
  %autotimer.i18 = getelementptr inbounds %struct.bq2415x_device, ptr %call1, i32 0, i32 13
  %7 = ptrtoint ptr %autotimer.i18 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %autotimer.i18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i19 = icmp eq i32 %8, 0
  br i1 %cmp.i19, label %if.then5.bq2415x_set_autotimer.exit22_crit_edge, label %if.end.i21

if.then5.bq2415x_set_autotimer.exit22_crit_edge:  ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_set_autotimer.exit22

if.end.i21:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %autotimer.i18 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %autotimer.i18, align 4
  %work4.i20 = getelementptr inbounds %struct.bq2415x_device, ptr %call1, i32 0, i32 4
  %call5.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work4.i20) #9
  br label %bq2415x_set_autotimer.exit22

bq2415x_set_autotimer.exit22:                     ; preds = %if.end.i21, %if.then5.bq2415x_set_autotimer.exit22_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @bq2415x_timer_mutex) #9
  br label %if.end8.thread

if.end8:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call fastcc i32 @bq2415x_i2c_write_mask(ptr noundef %call1, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext -128, i8 noundef zeroext 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp9 = icmp slt i32 %call.i.i, 0
  %spec.select = select i1 %cmp9, i32 %call.i.i, i32 %count
  br label %if.end8.thread

if.end8.thread:                                   ; preds = %if.end8, %bq2415x_set_autotimer.exit22, %bq2415x_set_autotimer.exit
  %10 = phi i32 [ %count, %bq2415x_set_autotimer.exit ], [ %count, %bq2415x_set_autotimer.exit22 ], [ %spec.select, %if.end8 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq2415x_sysfs_show_registers(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call ptr @power_supply_get_drvdata(ptr noundef %1) #9
  %call2 = tail call fastcc i32 @bq2415x_sysfs_print_reg(ptr noundef %call1, i8 noundef zeroext 0, ptr noundef %buf)
  %add.ptr3 = getelementptr i8, ptr %buf, i32 %call2
  %call4 = tail call fastcc i32 @bq2415x_sysfs_print_reg(ptr noundef %call1, i8 noundef zeroext 1, ptr noundef %add.ptr3)
  %add5 = add i32 %call4, %call2
  %add.ptr6 = getelementptr i8, ptr %buf, i32 %add5
  %call7 = tail call fastcc i32 @bq2415x_sysfs_print_reg(ptr noundef %call1, i8 noundef zeroext 2, ptr noundef %add.ptr6)
  %add8 = add i32 %add5, %call7
  %add.ptr9 = getelementptr i8, ptr %buf, i32 %add8
  %call10 = tail call fastcc i32 @bq2415x_sysfs_print_reg(ptr noundef %call1, i8 noundef zeroext 3, ptr noundef %add.ptr9)
  %add11 = add i32 %add8, %call10
  %add.ptr12 = getelementptr i8, ptr %buf, i32 %add11
  %call13 = tail call fastcc i32 @bq2415x_sysfs_print_reg(ptr noundef %call1, i8 noundef zeroext 4, ptr noundef %add.ptr12)
  %add14 = add i32 %add11, %call13
  ret i32 %add14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq2415x_sysfs_set_registers(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  %msg.i = alloca [1 x %struct.i2c_msg], align 4
  %data.i = alloca [2 x i8], align 1
  %reg = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call ptr @power_supply_get_drvdata(ptr noundef %1) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #9
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !317
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val, align 4, !annotation !317
  %call2 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.85, ptr noundef nonnull %reg, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp3 = icmp ugt i32 %5, 4
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %7)
  %cmp4 = icmp ugt i32 %7, 255
  br i1 %cmp4, label %lor.lhs.false.cleanup_crit_edge, label %if.end6

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %conv = trunc i32 %5 to i8
  %conv7 = trunc i32 %7 to i8
  %8 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #9
  %10 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 196607, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #9
  %12 = getelementptr inbounds [2 x i8], ptr %data.i, i32 0, i32 1
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %data.i, align 1
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv7, ptr %12, align 1
  %addr.i = getelementptr i8, ptr %9, i32 -30
  %15 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %addr.i, align 2
  %17 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %19 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %data.i, ptr %buf.i, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @bq2415x_i2c_mutex, i32 noundef 0) #9
  %adapter.i = getelementptr i8, ptr %9, i32 -8
  %20 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @mutex_unlock(ptr noundef nonnull @bq2415x_i2c_mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp8.not.i = icmp eq i32 %call.i, 1
  %..i = select i1 %cmp8.not.i, i32 0, i32 -5
  %retval.0.i = select i1 %cmp.i, i32 %call.i, i32 %..i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp9 = icmp slt i32 %retval.0.i, 0
  %call8.count = select i1 %cmp9, i32 %retval.0.i, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call8.count, %if.end6 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bq2415x_sysfs_print_reg(ptr nocapture noundef readonly %bq, i8 noundef zeroext %reg, ptr nocapture noundef writeonly %buf) unnamed_addr #2 align 64 {
entry:
  %reg.addr.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %0 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %reg, ptr %reg.addr.i, align 1
  %1 = ptrtoint ptr %bq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bq, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #9
  %3 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %4 = call ptr @memset(ptr %3, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #9
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %val.i, align 1, !annotation !317
  %adapter.i = getelementptr i8, ptr %2, i32 -8
  %6 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.bq2415x_i2c_read.exit.thread_crit_edge, label %if.end.i

entry.bq2415x_i2c_read.exit.thread_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_i2c_read.exit.thread

if.end.i:                                         ; preds = %entry
  %addr.i = getelementptr i8, ptr %2, i32 -30
  %8 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addr.i, align 2
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %3, align 4
  %14 = load i16, ptr %addr.i, align 2
  %arrayidx6.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %arrayidx6.i, align 4
  %flags9.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %flags9.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags9.i, align 2
  %buf11.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %buf11.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %val.i, ptr %buf11.i, align 4
  %len13.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %len13.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %len13.i, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @bq2415x_i2c_mutex, i32 noundef 0) #9
  %19 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #9
  call void @mutex_unlock(ptr noundef nonnull @bq2415x_i2c_mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.i.bq2415x_i2c_read.exit.thread_crit_edge, label %bq2415x_i2c_read.exit

if.end.i.bq2415x_i2c_read.exit.thread_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_i2c_read.exit.thread

bq2415x_i2c_read.exit.thread:                     ; preds = %if.end.i.bq2415x_i2c_read.exit.thread_crit_edge, %entry.bq2415x_i2c_read.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i, %if.end.i.bq2415x_i2c_read.exit.thread_crit_edge ], [ -19, %entry.bq2415x_i2c_read.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %conv = zext i8 %reg to i32
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.83, i32 noundef %conv, i32 noundef %retval.0.i.ph)
  br label %cleanup

bq2415x_i2c_read.exit:                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %val.i, align 1
  %conv.i = zext i8 %22 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %conv2 = zext i8 %reg to i32
  %call3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.84, i32 noundef %conv2, i32 noundef %conv.i)
  br label %cleanup

cleanup:                                          ; preds = %bq2415x_i2c_read.exit, %bq2415x_i2c_read.exit.thread
  %retval.0 = phi i32 [ %call1, %bq2415x_i2c_read.exit.thread ], [ %call3, %bq2415x_i2c_read.exit ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq2415x_sysfs_show_status(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call ptr @power_supply_get_drvdata(ptr noundef %1) #9
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attr, align 4
  %call3 = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(11) @.str.86) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %entry.if.end24_crit_edge, label %if.else

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.else:                                          ; preds = %entry
  %call6 = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(14) @.str.87) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.else.if.end24_crit_edge, label %if.else9

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.else9:                                         ; preds = %if.else
  %call12 = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(13) @.str.88) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.else9.if.end24_crit_edge, label %if.else15

if.else9.if.end24_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.else15:                                        ; preds = %if.else9
  %call18 = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(13) @.str.89) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.else15.if.end24_crit_edge, label %if.else15.cleanup_crit_edge

if.else15.cleanup_crit_edge:                      ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else15.if.end24_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.end24:                                         ; preds = %if.else15.if.end24_crit_edge, %if.else9.if.end24_crit_edge, %if.else.if.end24_crit_edge, %entry.if.end24_crit_edge
  %command.0 = phi i32 [ 1, %entry.if.end24_crit_edge ], [ 5, %if.else.if.end24_crit_edge ], [ 6, %if.else9.if.end24_crit_edge ], [ 7, %if.else15.if.end24_crit_edge ]
  %call25 = tail call fastcc i32 @bq2415x_exec_command(ptr noundef %call1, i32 noundef %command.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end24.cleanup_crit_edge, label %if.end28

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %call29 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.57, i32 noundef %call25)
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end24.cleanup_crit_edge, %if.else15.cleanup_crit_edge
  %retval.0 = phi i32 [ %call29, %if.end28 ], [ -22, %if.else15.cleanup_crit_edge ], [ %call25, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_notify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bq2415x_timer_error(ptr noundef %bq, ptr noundef %msg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %timer_error = getelementptr inbounds %struct.bq2415x_device, ptr %bq, i32 0, i32 10
  %0 = ptrtoint ptr %timer_error to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %msg, ptr %timer_error, align 4
  %charger = getelementptr inbounds %struct.bq2415x_device, ptr %bq, i32 0, i32 2
  %1 = ptrtoint ptr %charger to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %charger, align 4
  %dev = getelementptr inbounds %struct.power_supply, ptr %2, i32 0, i32 7
  tail call void @sysfs_notify(ptr noundef %dev, ptr noundef null, ptr noundef nonnull @.str.79) #9
  %3 = ptrtoint ptr %bq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.80, ptr noundef %msg) #12
  %automode = getelementptr inbounds %struct.bq2415x_device, ptr %bq, i32 0, i32 14
  %5 = ptrtoint ptr %automode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %automode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %automode to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %automode, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call fastcc i32 @bq2415x_set_mode(ptr noundef %bq, i32 noundef 0)
  tail call void @mutex_lock_nested(ptr noundef nonnull @bq2415x_timer_mutex, i32 noundef 0) #9
  %autotimer.i = getelementptr inbounds %struct.bq2415x_device, ptr %bq, i32 0, i32 13
  %8 = ptrtoint ptr %autotimer.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %autotimer.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  br i1 %cmp.i, label %if.end.bq2415x_set_autotimer.exit_crit_edge, label %if.end.i

if.end.bq2415x_set_autotimer.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq2415x_set_autotimer.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %autotimer.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %autotimer.i, align 4
  %work4.i = getelementptr inbounds %struct.bq2415x_device, ptr %bq, i32 0, i32 4
  %call5.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work4.i) #9
  br label %bq2415x_set_autotimer.exit

bq2415x_set_autotimer.exit:                       ; preds = %if.end.i, %if.end.bq2415x_set_autotimer.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @bq2415x_timer_mutex) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_unreg_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 161)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 161)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !85, !86, !87, !89, !91, !93, !95, !96, !97, !98, !100, !101, !103, !105, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !127, !129, !131, !133, !135, !137, !139, !141, !142, !144, !146, !148, !150, !152, !154, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !178, !180, !182, !184, !185, !187, !189, !191, !193, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !237, !238, !239, !241, !242, !243, !245, !246, !248, !249, !251, !252, !254, !255, !257, !259, !261, !262, !263, !264, !266, !267, !268, !270, !272, !274, !276, !278, !279, !280, !282, !283, !284, !286, !287, !289, !290, !291, !293, !294, !295, !297, !298, !299, !301, !302, !303, !304, !306}
!llvm.module.flags = !{!308, !309, !310, !311, !312, !313, !314, !315}
!llvm.ident = !{!316}

!0 = !{ptr @__initcall__kmod_bq2415x_charger__294_1789_bq2415x_driver_init6, !1, !"__initcall__kmod_bq2415x_charger__294_1789_bq2415x_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1789, i32 1}
!2 = !{ptr @__exitcall_bq2415x_driver_exit, !1, !"__exitcall_bq2415x_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author295, !4, !"__UNIQUE_ID_author295", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1791, i32 1}
!5 = !{ptr @__UNIQUE_ID_description296, !6, !"__UNIQUE_ID_description296", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1792, i32 1}
!7 = !{ptr @__UNIQUE_ID_file297, !8, !"__UNIQUE_ID_file297", i1 false, i1 false}
!8 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1793, i32 1}
!9 = !{ptr @__UNIQUE_ID_license298, !8, !"__UNIQUE_ID_license298", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1781, i32 11}
!12 = !{ptr @bq2415x_driver, !13, !"bq2415x_driver", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1779, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1537, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @bq2415x_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @bq2415x_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1549, i32 32}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1555, i32 4}
!26 = !{ptr @bq2415x_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @bq2415x_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1562, i32 3}
!30 = !{ptr @bq2415x_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @bq2415x_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1589, i32 13}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1594, i32 6}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1599, i32 5}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1604, i32 13}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1609, i32 5}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1614, i32 13}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1620, i32 7}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1629, i32 3}
!48 = !{ptr @bq2415x_probe._entry.20, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @bq2415x_probe._entry_ptr.22, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1635, i32 3}
!52 = !{ptr @bq2415x_probe._entry.23, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @bq2415x_probe._entry_ptr.25, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1643, i32 4}
!56 = !{ptr @bq2415x_probe._entry.26, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @bq2415x_probe._entry_ptr.28, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1648, i32 3}
!60 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @bq2415x_probe._entry.29, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @bq2415x_probe._entry_ptr.32, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1651, i32 3}
!65 = !{ptr @bq2415x_probe._entry.33, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @bq2415x_probe._entry_ptr.35, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @bq2415x_probe.__key, !68, !"__key", i1 false, i1 false}
!68 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1677, i32 2}
!69 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @bq2415x_probe.__key.37, !68, !"__key", i1 false, i1 false}
!71 = !{ptr @.str.38, !68, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.40, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1680, i32 2}
!74 = !{ptr @bq2415x_probe._entry.39, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @bq2415x_probe._entry_ptr.41, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.42, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 180, i32 8}
!78 = !{ptr @.str.43, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @bq2415x_id_mutex, !77, !"bq2415x_id_mutex", i1 false, i1 false}
!80 = !{ptr @.str.44, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 178, i32 8}
!82 = !{ptr @bq2415x_id, !81, !"bq2415x_id", i1 false, i1 false}
!83 = !{ptr @.str.45, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 182, i32 8}
!85 = !{ptr @.str.46, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @bq2415x_i2c_mutex, !84, !"bq2415x_i2c_mutex", i1 false, i1 false}
!87 = !{ptr @.str.47, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1499, i32 18}
!89 = !{ptr @.str.48, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1501, i32 19}
!91 = !{ptr @.str.49, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1504, i32 5}
!93 = !{ptr @.str.50, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1508, i32 3}
!95 = !{ptr @.str.51, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @bq2415x_power_supply_init._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @bq2415x_power_supply_init._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @bq2415x_sysfs_groups, !99, !"bq2415x_sysfs_groups", i1 false, i1 false}
!99 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1471, i32 1}
!100 = !{ptr @bq2415x_sysfs_group, !99, !"bq2415x_sysfs_group", i1 false, i1 false}
!101 = !{ptr @bq2415x_sysfs_attrs, !102, !"bq2415x_sysfs_attrs", i1 false, i1 false}
!102 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1442, i32 26}
!103 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1407, i32 8}
!105 = !{ptr @dev_attr_current_limit, !104, !"dev_attr_current_limit", i1 false, i1 false}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1328, i32 35}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1330, i32 35}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1332, i32 35}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1334, i32 35}
!114 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1341, i32 22}
!116 = !{ptr @dev_attr_weak_battery_voltage, !117, !"dev_attr_weak_battery_voltage", i1 false, i1 false}
!117 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1409, i32 8}
!118 = !{ptr @dev_attr_battery_regulation_voltage, !119, !"dev_attr_battery_regulation_voltage", i1 false, i1 false}
!119 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1411, i32 8}
!120 = !{ptr @dev_attr_charge_current, !121, !"dev_attr_charge_current", i1 false, i1 false}
!121 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1413, i32 8}
!122 = !{ptr @dev_attr_termination_current, !123, !"dev_attr_termination_current", i1 false, i1 false}
!123 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1415, i32 8}
!124 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1418, i32 8}
!126 = !{ptr @dev_attr_charge_termination_enable, !125, !"dev_attr_charge_termination_enable", i1 false, i1 false}
!127 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1392, i32 35}
!129 = !{ptr @.str.60, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1394, i32 35}
!131 = !{ptr @.str.61, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1396, i32 35}
!133 = !{ptr @dev_attr_high_impedance_enable, !134, !"dev_attr_high_impedance_enable", i1 false, i1 false}
!134 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1420, i32 8}
!135 = !{ptr @dev_attr_otg_pin_enable, !136, !"dev_attr_otg_pin_enable", i1 false, i1 false}
!136 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1422, i32 8}
!137 = !{ptr @dev_attr_stat_pin_enable, !138, !"dev_attr_stat_pin_enable", i1 false, i1 false}
!138 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1424, i32 8}
!139 = !{ptr @.str.62, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1427, i32 8}
!141 = !{ptr @dev_attr_reported_mode, !140, !"dev_attr_reported_mode", i1 false, i1 false}
!142 = !{ptr @.str.63, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1218, i32 23}
!144 = !{ptr @.str.64, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1220, i32 23}
!146 = !{ptr @.str.65, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1222, i32 23}
!148 = !{ptr @.str.66, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1224, i32 23}
!150 = !{ptr @.str.67, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1226, i32 23}
!152 = !{ptr @.str.68, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1429, i32 8}
!154 = !{ptr @dev_attr_mode, !153, !"dev_attr_mode", i1 false, i1 false}
!155 = !{ptr @.str.69, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1178, i32 27}
!157 = !{ptr @.str.70, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1182, i32 27}
!159 = !{ptr @.str.71, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1185, i32 27}
!161 = !{ptr @.str.72, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1188, i32 27}
!163 = !{ptr @.str.73, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1191, i32 27}
!165 = !{ptr @.str.74, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1194, i32 27}
!167 = distinct !{null, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1199, i32 27}
!169 = distinct !{null, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1201, i32 26}
!171 = !{ptr @.str.77, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1126, i32 19}
!173 = !{ptr @.str.78, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1151, i32 26}
!175 = !{ptr @.str.79, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1431, i32 8}
!177 = !{ptr @dev_attr_timer, !176, !"dev_attr_timer", i1 false, i1 false}
!178 = !{ptr @.str.80, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1101, i32 23}
!180 = !{ptr @.str.81, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1104, i32 23}
!182 = !{ptr @.str.82, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1434, i32 8}
!184 = !{ptr @dev_attr_registers, !183, !"dev_attr_registers", i1 false, i1 false}
!185 = !{ptr @.str.83, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1264, i32 23}
!187 = !{ptr @.str.84, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1265, i32 22}
!189 = !{ptr @.str.85, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1244, i32 18}
!191 = !{ptr @.str.86, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1437, i32 8}
!193 = !{ptr @dev_attr_otg_status, !192, !"dev_attr_otg_status", i1 false, i1 false}
!194 = !{ptr @.str.87, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1050, i32 35}
!196 = !{ptr @.str.88, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1052, i32 35}
!198 = !{ptr @.str.89, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1054, i32 35}
!200 = !{ptr @dev_attr_charge_status, !201, !"dev_attr_charge_status", i1 false, i1 false}
!201 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1438, i32 8}
!202 = !{ptr @dev_attr_boost_status, !203, !"dev_attr_boost_status", i1 false, i1 false}
!203 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1439, i32 8}
!204 = !{ptr @dev_attr_fault_status, !205, !"dev_attr_fault_status", i1 false, i1 false}
!205 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1440, i32 8}
!206 = !{ptr @bq2415x_power_supply_props, !207, !"bq2415x_power_supply_props", i1 false, i1 false}
!207 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 990, i32 35}
!208 = !{ptr @.str.90, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 144, i32 2}
!210 = !{ptr @.str.91, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 145, i32 2}
!212 = !{ptr @.str.92, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 146, i32 2}
!214 = !{ptr @.str.93, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 147, i32 2}
!216 = !{ptr @.str.94, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 148, i32 2}
!218 = !{ptr @.str.95, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 149, i32 2}
!220 = !{ptr @.str.96, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 150, i32 2}
!222 = !{ptr @.str.97, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 151, i32 2}
!224 = !{ptr @.str.98, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 152, i32 2}
!226 = !{ptr @.str.99, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 153, i32 2}
!228 = !{ptr @.str.100, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 154, i32 2}
!230 = !{ptr @.str.101, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 155, i32 2}
!232 = !{ptr @bq2415x_chip_name, !233, !"bq2415x_chip_name", i1 false, i1 false}
!233 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 142, i32 14}
!234 = !{ptr @.str.102, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 828, i32 2}
!236 = !{ptr @.str.103, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @.str.104, !235, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @bq2415x_notifier_call.__UNIQUE_ID_ddebug293, !235, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!239 = !{ptr @.str.105, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 744, i32 3}
!241 = !{ptr @.str.106, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @bq2415x_set_mode.__UNIQUE_ID_ddebug288, !240, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!243 = !{ptr @.str.107, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 748, i32 3}
!245 = !{ptr @bq2415x_set_mode.__UNIQUE_ID_ddebug289, !244, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!246 = !{ptr @.str.108, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 752, i32 3}
!248 = !{ptr @bq2415x_set_mode.__UNIQUE_ID_ddebug290, !247, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!249 = !{ptr @.str.109, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 756, i32 3}
!251 = !{ptr @bq2415x_set_mode.__UNIQUE_ID_ddebug291, !250, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!252 = !{ptr @.str.110, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 760, i32 3}
!254 = !{ptr @bq2415x_set_mode.__UNIQUE_ID_ddebug292, !253, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!255 = !{ptr @.str.111, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 903, i32 27}
!257 = !{ptr @.str.112, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 909, i32 27}
!259 = !{ptr @.str.113, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 925, i32 4}
!261 = !{ptr @.str.114, !260, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @bq2415x_timer_work._entry, !260, !"_entry", i1 false, i1 false}
!263 = !{ptr @bq2415x_timer_work._entry_ptr, !260, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.116, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 928, i32 4}
!266 = !{ptr @bq2415x_timer_work._entry.115, !265, !"_entry", i1 false, i1 false}
!267 = !{ptr @bq2415x_timer_work._entry_ptr.117, !265, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.118, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 934, i32 5}
!270 = !{ptr @.str.119, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 937, i32 28}
!272 = !{ptr @.str.120, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 941, i32 5}
!274 = !{ptr @.str.121, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 945, i32 6}
!276 = !{ptr @.str.123, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 957, i32 4}
!278 = !{ptr @bq2415x_timer_work._entry.122, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @bq2415x_timer_work._entry_ptr.124, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.126, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 960, i32 4}
!282 = !{ptr @bq2415x_timer_work._entry.125, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @bq2415x_timer_work._entry_ptr.127, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @bq2415x_timer_work._entry.128, !285, !"_entry", i1 false, i1 false}
!285 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 963, i32 4}
!286 = !{ptr @bq2415x_timer_work._entry_ptr.129, !285, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.131, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 966, i32 4}
!289 = !{ptr @bq2415x_timer_work._entry.130, !288, !"_entry", i1 false, i1 false}
!290 = !{ptr @bq2415x_timer_work._entry_ptr.132, !288, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.133, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 877, i32 2}
!293 = !{ptr @bq2415x_timer_error._entry, !292, !"_entry", i1 false, i1 false}
!294 = !{ptr @bq2415x_timer_error._entry_ptr, !292, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.134, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 181, i32 8}
!297 = !{ptr @.str.135, !296, !"<string literal>", i1 false, i1 false}
!298 = !{ptr @bq2415x_timer_mutex, !296, !"bq2415x_timer_mutex", i1 false, i1 false}
!299 = !{ptr @.str.136, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1715, i32 2}
!301 = !{ptr @.str.137, !300, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @bq2415x_remove._entry, !300, !"_entry", i1 false, i1 false}
!303 = !{ptr @bq2415x_remove._entry_ptr, !300, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @bq2415x_of_match_table, !305, !"bq2415x_of_match_table", i1 false, i1 false}
!305 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1761, i32 34}
!306 = !{ptr @bq2415x_i2c_id_table, !307, !"bq2415x_i2c_id_table", i1 false, i1 false}
!307 = !{!"../drivers/power/supply/bq2415x_charger.c", i32 1722, i32 35}
!308 = !{i32 1, !"wchar_size", i32 2}
!309 = !{i32 1, !"min_enum_size", i32 4}
!310 = !{i32 8, !"branch-target-enforcement", i32 0}
!311 = !{i32 8, !"sign-return-address", i32 0}
!312 = !{i32 8, !"sign-return-address-all", i32 0}
!313 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!314 = !{i32 7, !"uwtable", i32 1}
!315 = !{i32 7, !"frame-pointer", i32 2}
!316 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!317 = !{!"auto-init"}
!318 = !{i64 2148736285, i64 2148736290, i64 2148736303, i64 2148736347, i64 2148736381, i64 2148736402}
