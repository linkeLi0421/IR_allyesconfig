; ModuleID = '/llk/IR_all_yes/drivers/power/supply/bq256xx_charger.c_pt.bc'
source_filename = "../drivers/power/supply/bq256xx_charger.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.acpi_device_id = type { [9 x i8], i32, i32, i32 }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.bq256xx_chip_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.reg_default = type { i32, i32 }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.bq256xx_device = type { ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, %struct.notifier_block, %struct.work_struct, i32, [20 x i8], %struct.bq256xx_init_data, ptr, %struct.bq256xx_state, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.bq256xx_init_data = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bq256xx_state = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.power_supply_battery_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [20 x i32], i32, i32, i32, i32, i32, i32, [20 x ptr], [20 x i32], ptr, i32 }

@__initcall__kmod_bq256xx_charger__341_1750_bq256xx_driver_init6 = internal global ptr @bq256xx_driver_init, section ".initcall6.init", align 4
@bq256xx_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @bq256xx_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bq256xx_of_match, ptr @bq256xx_acpi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @bq256xx_i2c_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_bq256xx_driver_exit = internal global ptr @bq256xx_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author342 = internal constant [68 x i8] c"bq256xx_charger.author=Ricardo Rivera-Matos <r-rivera-matos@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description343 = internal constant [51 x i8] c"bq256xx_charger.description=bq256xx charger driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file344 = internal constant [58 x i8] c"bq256xx_charger.file=drivers/power/supply/bq256xx_charger\00", section ".modinfo", align 1
@__UNIQUE_ID_license345 = internal constant [31 x i8] c"bq256xx_charger.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bq256xx-charger\00", [16 x i8] zeroinitializer }, align 32
@bq256xx_of_match = internal constant { [8 x %struct.of_device_id], [384 x i8] } { [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,bq25600\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,bq25600d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,bq25601\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,bq25601d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,bq25611d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,bq25618\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,bq25619\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 5 to ptr) }, %struct.of_device_id zeroinitializer], [384 x i8] zeroinitializer }, align 32
@bq256xx_acpi_match = internal constant { [8 x %struct.acpi_device_id], [32 x i8] } { [8 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"bq25600\00\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"bq25600d\00", i32 1, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"bq25601\00\00", i32 2, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"bq25601d\00", i32 3, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"bq25611d\00", i32 6, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"bq25618\00\00", i32 4, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"bq25619\00\00", i32 5, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@bq256xx_i2c_ids = internal constant { [8 x %struct.i2c_device_id], [32 x i8] } { [8 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"bq25600\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"bq25600d\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"bq25601\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"bq25601d\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"bq25611d\00\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.i2c_device_id { [20 x i8] c"bq25618\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"bq25619\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@bq256xx_chip_info_tbl = internal constant { [7 x %struct.bq256xx_chip_info], [188 x i8] } { [7 x %struct.bq256xx_chip_info] [%struct.bq256xx_chip_info { i32 0, ptr @bq25600_regmap_config, ptr @bq256xx_get_ichg_curr, ptr @bq256xx_get_input_curr_lim, ptr @bq2560x_get_chrg_volt, ptr @bq256xx_get_term_curr, ptr @bq256xx_get_prechrg_curr, ptr @bq256xx_get_input_volt_lim, ptr @bq256xx_set_ichg_curr, ptr @bq256xx_set_input_curr_lim, ptr @bq2560x_set_chrg_volt, ptr @bq256xx_set_term_curr, ptr @bq256xx_set_prechrg_curr, ptr @bq256xx_set_input_volt_lim, i32 2040000, i32 2400000, i32 4208000, i32 180000, i32 180000, i32 4500000, i32 3000000, i32 4624000, i8 0 }, %struct.bq256xx_chip_info { i32 1, ptr @bq25600_regmap_config, ptr @bq256xx_get_ichg_curr, ptr @bq256xx_get_input_curr_lim, ptr @bq2560x_get_chrg_volt, ptr @bq256xx_get_term_curr, ptr @bq256xx_get_prechrg_curr, ptr @bq256xx_get_input_volt_lim, ptr @bq256xx_set_ichg_curr, ptr @bq256xx_set_input_curr_lim, ptr @bq2560x_set_chrg_volt, ptr @bq256xx_set_term_curr, ptr @bq256xx_set_prechrg_curr, ptr @bq256xx_set_input_volt_lim, i32 2040000, i32 2400000, i32 4208000, i32 180000, i32 180000, i32 4500000, i32 3000000, i32 4624000, i8 1 }, %struct.bq256xx_chip_info { i32 2, ptr @bq25600_regmap_config, ptr @bq256xx_get_ichg_curr, ptr @bq256xx_get_input_curr_lim, ptr @bq2560x_get_chrg_volt, ptr @bq256xx_get_term_curr, ptr @bq256xx_get_prechrg_curr, ptr @bq256xx_get_input_volt_lim, ptr @bq256xx_set_ichg_curr, ptr @bq256xx_set_input_curr_lim, ptr @bq2560x_set_chrg_volt, ptr @bq256xx_set_term_curr, ptr @bq256xx_set_prechrg_curr, ptr @bq256xx_set_input_volt_lim, i32 2040000, i32 2400000, i32 4208000, i32 180000, i32 180000, i32 4500000, i32 3000000, i32 4624000, i8 0 }, %struct.bq256xx_chip_info { i32 3, ptr @bq25600_regmap_config, ptr @bq256xx_get_ichg_curr, ptr @bq256xx_get_input_curr_lim, ptr @bq25601d_get_chrg_volt, ptr @bq256xx_get_term_curr, ptr @bq256xx_get_prechrg_curr, ptr @bq256xx_get_input_volt_lim, ptr @bq256xx_set_ichg_curr, ptr @bq256xx_set_input_curr_lim, ptr @bq25601d_set_chrg_volt, ptr @bq256xx_set_term_curr, ptr @bq256xx_set_prechrg_curr, ptr @bq256xx_set_input_volt_lim, i32 2040000, i32 2400000, i32 4208000, i32 180000, i32 180000, i32 4500000, i32 3000000, i32 4624000, i8 1 }, %struct.bq256xx_chip_info { i32 4, ptr @bq25618_619_regmap_config, ptr @bq25618_619_get_ichg_curr, ptr @bq256xx_get_input_curr_lim, ptr @bq25618_619_get_chrg_volt, ptr @bq25618_619_get_term_curr, ptr @bq25618_619_get_prechrg_curr, ptr @bq256xx_get_input_volt_lim, ptr @bq25618_619_set_ichg_curr, ptr @bq256xx_set_input_curr_lim, ptr @bq25618_619_set_chrg_volt, ptr @bq25618_619_set_term_curr, ptr @bq25618_619_set_prechrg_curr, ptr @bq256xx_set_input_volt_lim, i32 340000, i32 2400000, i32 4200000, i32 60000, i32 40000, i32 4500000, i32 1500000, i32 4500000, i8 0 }, %struct.bq256xx_chip_info { i32 5, ptr @bq25618_619_regmap_config, ptr @bq25618_619_get_ichg_curr, ptr @bq256xx_get_input_curr_lim, ptr @bq25618_619_get_chrg_volt, ptr @bq25618_619_get_term_curr, ptr @bq25618_619_get_prechrg_curr, ptr @bq256xx_get_input_volt_lim, ptr @bq25618_619_set_ichg_curr, ptr @bq256xx_set_input_curr_lim, ptr @bq25618_619_set_chrg_volt, ptr @bq25618_619_set_term_curr, ptr @bq25618_619_set_prechrg_curr, ptr @bq256xx_set_input_volt_lim, i32 340000, i32 2400000, i32 4200000, i32 60000, i32 40000, i32 4500000, i32 1500000, i32 4500000, i8 0 }, %struct.bq256xx_chip_info { i32 6, ptr @bq25611d_regmap_config, ptr @bq256xx_get_ichg_curr, ptr @bq256xx_get_input_curr_lim, ptr @bq25611d_get_chrg_volt, ptr @bq256xx_get_term_curr, ptr @bq256xx_get_prechrg_curr, ptr @bq256xx_get_input_volt_lim, ptr @bq256xx_set_ichg_curr, ptr @bq256xx_set_input_curr_lim, ptr @bq25611d_set_chrg_volt, ptr @bq256xx_set_term_curr, ptr @bq256xx_set_prechrg_curr, ptr @bq256xx_set_input_volt_lim, i32 1020000, i32 2400000, i32 4190000, i32 180000, i32 180000, i32 4500000, i32 3000000, i32 4510000, i8 1 }], [188 x i8] zeroinitializer }, align 32
@bq256xx_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&bq->lock\00", [22 x i8] zeroinitializer }, align 32
@bq256xx_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"bq256xx_charger:1644:(bq->chip_info->bq256xx_regmap_config)->lock\00", [62 x i8] zeroinitializer }, align 32
@bq256xx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1647, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to allocate register map\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bq256xx_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/power/supply/bq256xx_charger.c\00", [57 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bq256xx_probe._entry_ptr = internal global ptr @bq256xx_probe._entry, section ".printk_index", align 4
@bq256xx_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 1655, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to read device tree properties%d\0A\00", [55 x i8] zeroinitializer }, align 32
@bq256xx_probe._entry_ptr.10 = internal global ptr @bq256xx_probe._entry.8, section ".printk_index", align 4
@bq256xx_probe.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&bq->usb_work)\00", [63 x i8] zeroinitializer }, align 32
@bq256xx_probe.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@bq256xx_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 1685, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"get irq fail: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@bq256xx_probe._entry_ptr.16 = internal global ptr @bq256xx_probe._entry.14, section ".printk_index", align 4
@bq256xx_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 1692, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register power supply\0A\00", [63 x i8] zeroinitializer }, align 32
@bq256xx_probe._entry_ptr.19 = internal global ptr @bq256xx_probe._entry.17, section ".printk_index", align 4
@bq256xx_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.4, ptr @.str.5, i32 1698, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Cannot initialize the chip.\0A\00", [35 x i8] zeroinitializer }, align 32
@bq256xx_probe._entry_ptr.22 = internal global ptr @bq256xx_probe._entry.20, section ".printk_index", align 4
@bq25600_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @bq256xx_is_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 11, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bq2560x_reg_defs, i32 8, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@bq25618_619_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @bq256xx_is_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 12, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bq25618_619_reg_defs, i32 10, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@bq25611d_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @bq256xx_is_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 12, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bq25611d_reg_defs, i32 10, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@bq2560x_reg_defs = internal global { [8 x %struct.reg_default], [32 x i8] } { [8 x %struct.reg_default] [%struct.reg_default { i32 0, i32 23 }, %struct.reg_default { i32 1, i32 26 }, %struct.reg_default { i32 2, i32 162 }, %struct.reg_default { i32 3, i32 34 }, %struct.reg_default { i32 4, i32 88 }, %struct.reg_default { i32 5, i32 159 }, %struct.reg_default { i32 6, i32 102 }, %struct.reg_default { i32 7, i32 76 }], [32 x i8] zeroinitializer }, align 32
@bq25618_619_reg_defs = internal global { [10 x %struct.reg_default], [48 x i8] } { [10 x %struct.reg_default] [%struct.reg_default { i32 0, i32 23 }, %struct.reg_default { i32 1, i32 26 }, %struct.reg_default { i32 2, i32 145 }, %struct.reg_default { i32 3, i32 18 }, %struct.reg_default { i32 4, i32 64 }, %struct.reg_default { i32 5, i32 158 }, %struct.reg_default { i32 6, i32 230 }, %struct.reg_default { i32 7, i32 76 }, %struct.reg_default { i32 11, i32 44 }, %struct.reg_default { i32 12, i32 117 }], [48 x i8] zeroinitializer }, align 32
@bq25618_619_ichg_values = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1290000, i32 1360000, i32 1430000, i32 1500000], [16 x i8] zeroinitializer }, align 32
@bq25618_619_vbatreg_values = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 3504000, i32 3600000, i32 3696000, i32 3800000, i32 3904000, i32 4000000, i32 4100000, i32 4150000, i32 4200000], [60 x i8] zeroinitializer }, align 32
@bq25611d_reg_defs = internal global { [10 x %struct.reg_default], [48 x i8] } { [10 x %struct.reg_default] [%struct.reg_default { i32 0, i32 23 }, %struct.reg_default { i32 1, i32 26 }, %struct.reg_default { i32 2, i32 145 }, %struct.reg_default { i32 3, i32 18 }, %struct.reg_default { i32 4, i32 64 }, %struct.reg_default { i32 5, i32 158 }, %struct.reg_default { i32 6, i32 230 }, %struct.reg_default { i32 7, i32 76 }, %struct.reg_default { i32 11, i32 84 }, %struct.reg_default { i32 12, i32 117 }], [48 x i8] zeroinitializer }, align 32
@bq25611d_vbatreg_values = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 3494000, i32 3590000, i32 3686000, i32 3790000, i32 3894000, i32 3990000, i32 4090000, i32 4140000, i32 4190000], [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ti,watchdog-timeout-ms\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"input-voltage-limit-microvolt\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"input-current-limit-microamp\00", [35 x i8] zeroinitializer }, align 32
@bq256xx_usb_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.5, i32 381, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Error switching to charger mode.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bq256xx_usb_work\00", [47 x i8] zeroinitializer }, align 32
@bq256xx_usb_work._entry_ptr = internal global ptr @bq256xx_usb_work._entry, section ".printk_index", align 4
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@bq256xx_power_supply_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str, i32 4, ptr @bq256xx_usb_type, i32 5, ptr @bq256xx_power_supply_props, i32 13, ptr @bq256xx_get_charger_property, ptr @bq256xx_set_charger_property, ptr @bq256xx_property_is_writeable, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@bq256xx_power_supply_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.5, i32 1491, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"power supply register charger failed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bq256xx_power_supply_init\00", [38 x i8] zeroinitializer }, align 32
@bq256xx_power_supply_init._entry_ptr = internal global ptr @bq256xx_power_supply_init._entry, section ".printk_index", align 4
@bq256xx_battery_desc = internal global { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.34, i32 1, ptr null, i32 0, ptr @bq256xx_battery_props, i32 2, ptr @bq256xx_get_battery_property, ptr null, ptr @bq256xx_property_is_writeable, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@bq256xx_power_supply_init._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.5, i32 1499, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"power supply register battery failed\0A\00", [58 x i8] zeroinitializer }, align 32
@bq256xx_power_supply_init._entry_ptr.32 = internal global ptr @bq256xx_power_supply_init._entry.30, section ".printk_index", align 4
@bq256xx_usb_type = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 3, i32 2, i32 0, i32 4], [44 x i8] zeroinitializer }, align 32
@bq256xx_power_supply_props = internal global { [13 x i32], [44 x i8] } { [13 x i32] [i32 74, i32 73, i32 0, i32 4, i32 2, i32 39, i32 38, i32 1, i32 65, i32 29, i32 31, i32 67, i32 68], [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Texas Instruments\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bq256xx-battery\00", [16 x i8] zeroinitializer }, align 32
@bq256xx_battery_props = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 30, i32 32], [24 x i8] zeroinitializer }, align 32
@bq256xx_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.5, i32 1530, ptr @.str.37, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"battery info missing, default values will be applied\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bq256xx_hw_init\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@bq256xx_hw_init._entry_ptr = internal global ptr @bq256xx_hw_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 40000]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967284]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.40 = internal global [15 x i64] [i64 13, i64 32, i64 0, i64 1, i64 2, i64 4, i64 29, i64 31, i64 38, i64 39, i64 65, i64 67, i64 68, i64 73, i64 74]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 224]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 5, i64 0, i64 24]
@__sancov_gen_cov_switch_values.43 = internal global [6 x i64] [i64 4, i64 3, i64 2, i64 3, i64 5, i64 6]
@__sancov_gen_cov_switch_values.44 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 6]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 8, i64 32, i64 224]
@__sancov_gen_cov_switch_values.46 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.47 = internal global [8 x i64] [i64 6, i64 32, i64 29, i64 31, i64 38, i64 39, i64 67, i64 68]
@__sancov_gen_cov_switch_values.48 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 29, i64 31, i64 38, i64 39, i64 67, i64 68]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 30, i64 32]
@___asan_gen_.50 = private unnamed_addr constant [15 x i8] c"bq256xx_driver\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 1741, i32 26 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 1743, i32 11 }
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"bq256xx_of_match\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 1717, i32 34 }
@___asan_gen_.59 = private unnamed_addr constant [19 x i8] c"bq256xx_acpi_match\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 1729, i32 36 }
@___asan_gen_.62 = private unnamed_addr constant [16 x i8] c"bq256xx_i2c_ids\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 1705, i32 35 }
@___asan_gen_.65 = private unnamed_addr constant [22 x i8] c"bq256xx_chip_info_tbl\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 1272, i32 39 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 1639, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 1643, i32 15 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 1647, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 1655, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 1666, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 1673, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 1685, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 1692, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 1698, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [22 x i8] c"bq25600_regmap_config\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 1239, i32 35 }
@___asan_gen_.134 = private unnamed_addr constant [26 x i8] c"bq25618_619_regmap_config\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 1261, i32 35 }
@___asan_gen_.137 = private unnamed_addr constant [23 x i8] c"bq25611d_regmap_config\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 1250, i32 35 }
@___asan_gen_.140 = private unnamed_addr constant [17 x i8] c"bq2560x_reg_defs\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 386, i32 27 }
@___asan_gen_.143 = private unnamed_addr constant [21 x i8] c"bq25618_619_reg_defs\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 410, i32 27 }
@___asan_gen_.146 = private unnamed_addr constant [24 x i8] c"bq25618_619_ichg_values\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 321, i32 18 }
@___asan_gen_.149 = private unnamed_addr constant [27 x i8] c"bq25618_619_vbatreg_values\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 316, i32 18 }
@___asan_gen_.152 = private unnamed_addr constant [18 x i8] c"bq25611d_reg_defs\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 397, i32 27 }
@___asan_gen_.155 = private unnamed_addr constant [24 x i8] c"bq25611d_vbatreg_values\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 311, i32 18 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 1598, i32 42 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 1608, i32 12 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 1614, i32 12 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 381, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant [26 x i8] c"bq256xx_power_supply_desc\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 1206, i32 39 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 1491, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant [21 x i8] c"bq256xx_battery_desc\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 1218, i32 33 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 1499, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant [17 x i8] c"bq256xx_usb_type\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 325, i32 35 }
@___asan_gen_.200 = private unnamed_addr constant [27 x i8] c"bq256xx_power_supply_props\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 1168, i32 35 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 1073, i32 17 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 1219, i32 12 }
@___asan_gen_.209 = private unnamed_addr constant [22 x i8] c"bq256xx_battery_props\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 1184, i32 35 }
@___asan_gen_.212 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.221 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.222 = private constant [42 x i8] c"../drivers/power/supply/bq256xx_charger.c\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 1530, i32 3 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @__UNIQUE_ID_author342, ptr @__UNIQUE_ID_description343, ptr @__UNIQUE_ID_file344, ptr @__UNIQUE_ID_license345, ptr @__exitcall_bq256xx_driver_exit, ptr @__initcall__kmod_bq256xx_charger__341_1750_bq256xx_driver_init6, ptr @bq256xx_driver_exit, ptr @bq256xx_hw_init._entry, ptr @bq256xx_hw_init._entry_ptr, ptr @bq256xx_power_supply_init._entry, ptr @bq256xx_power_supply_init._entry.30, ptr @bq256xx_power_supply_init._entry_ptr, ptr @bq256xx_power_supply_init._entry_ptr.32, ptr @bq256xx_probe._entry, ptr @bq256xx_probe._entry.14, ptr @bq256xx_probe._entry.17, ptr @bq256xx_probe._entry.20, ptr @bq256xx_probe._entry.8, ptr @bq256xx_probe._entry_ptr, ptr @bq256xx_probe._entry_ptr.10, ptr @bq256xx_probe._entry_ptr.16, ptr @bq256xx_probe._entry_ptr.19, ptr @bq256xx_probe._entry_ptr.22, ptr @bq256xx_usb_work._entry, ptr @bq256xx_usb_work._entry_ptr, ptr @bq256xx_driver, ptr @.str, ptr @bq256xx_of_match, ptr @bq256xx_acpi_match, ptr @bq256xx_i2c_ids, ptr @bq256xx_chip_info_tbl, ptr @bq256xx_probe.__key, ptr @.str.1, ptr @bq256xx_probe._key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @bq256xx_probe.__key.11, ptr @.str.12, ptr @bq256xx_probe.__key.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @bq25600_regmap_config, ptr @bq25618_619_regmap_config, ptr @bq25611d_regmap_config, ptr @bq2560x_reg_defs, ptr @bq25618_619_reg_defs, ptr @bq25618_619_ichg_values, ptr @bq25618_619_vbatreg_values, ptr @bq25611d_reg_defs, ptr @bq25611d_vbatreg_values, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @bq256xx_power_supply_desc, ptr @.str.28, ptr @.str.29, ptr @bq256xx_battery_desc, ptr @.str.31, ptr @bq256xx_usb_type, ptr @bq256xx_power_supply_props, ptr @.str.33, ptr @.str.34, ptr @bq256xx_battery_props, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq256xx_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq256xx_of_match to i32), i32 1568, i32 1952, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq256xx_acpi_match to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq256xx_i2c_ids to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq256xx_chip_info_tbl to i32), i32 644, i32 832, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq256xx_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq256xx_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq256xx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq256xx_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq256xx_probe.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq256xx_probe.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq256xx_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq256xx_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq256xx_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25600_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25618_619_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25611d_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2560x_reg_defs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25618_619_reg_defs to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25618_619_ichg_values to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25618_619_vbatreg_values to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25611d_reg_defs to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25611d_vbatreg_values to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq256xx_usb_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq256xx_power_supply_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq256xx_power_supply_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq256xx_battery_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq256xx_power_supply_init._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq256xx_usb_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq256xx_power_supply_props to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq256xx_battery_props to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq256xx_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bq256xx_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @bq256xx_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bq256xx_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @bq256xx_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq256xx_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %bat_info.i = alloca ptr, align 4
  %psy_cfg = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #9
  %0 = getelementptr inbounds i8, ptr %psy_cfg, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 20)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 248, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %client, ptr %call.i, align 4
  %dev3 = getelementptr inbounds %struct.bq256xx_device, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %dev3, align 4
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [7 x %struct.bq256xx_chip_info], ptr @bq256xx_chip_info_tbl, i32 0, i32 %5
  %chip_info = getelementptr inbounds %struct.bq256xx_device, ptr %call.i, i32 0, i32 13
  %6 = ptrtoint ptr %chip_info to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %arrayidx, ptr %chip_info, align 4
  %lock = getelementptr inbounds %struct.bq256xx_device, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @bq256xx_probe.__key) #9
  %model_name = getelementptr inbounds %struct.bq256xx_device, ptr %call.i, i32 0, i32 11
  %call5 = tail call ptr @strncpy(ptr noundef %model_name, ptr noundef %id, i32 noundef 20)
  %7 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip_info, align 4
  %bq256xx_regmap_config = getelementptr inbounds %struct.bq256xx_chip_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %bq256xx_regmap_config to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bq256xx_regmap_config, align 4
  %call7 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef %10, ptr noundef nonnull @bq256xx_probe._key, ptr noundef nonnull @.str.2) #9
  %regmap = getelementptr inbounds %struct.bq256xx_device, ptr %call.i, i32 0, i32 5
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end13, label %if.end16

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #12
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %14 = ptrtoint ptr %13 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %drv_data.i = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %16 = ptrtoint ptr %drv_data.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %drv_data.i, align 4
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %17 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node.i, align 8
  %19 = ptrtoint ptr %psy_cfg to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %psy_cfg, align 4
  %20 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev3, align 4
  %watchdog_timer.i = getelementptr inbounds %struct.bq256xx_device, ptr %call.i, i32 0, i32 15
  %call.i.i = tail call i32 @device_property_read_u32_array(ptr noundef %21, ptr noundef nonnull @.str.23, ptr noundef %watchdog_timer.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.thread.i

if.end.thread.i:                                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %watchdog_timer.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %watchdog_timer.i, align 4
  br label %if.end8.i

if.end.i:                                         ; preds = %if.end16
  %23 = ptrtoint ptr %watchdog_timer.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr.i = load i32, ptr %watchdog_timer.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1600000, i32 %.pr.i)
  %24 = icmp ugt i32 %.pr.i, 1600000
  br i1 %24, label %do.end22, label %if.end.i.if.end8.i_crit_edge

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end.i.if.end8.i_crit_edge, %if.end.thread.i
  %25 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev3, align 4
  %vindpm.i = getelementptr inbounds %struct.bq256xx_device, ptr %call.i, i32 0, i32 12, i32 5
  %call.i41.i = tail call i32 @device_property_read_u32_array(ptr noundef %26, ptr noundef nonnull @.str.24, ptr noundef %vindpm.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41.i)
  %tobool11.not.i = icmp eq i32 %call.i41.i, 0
  br i1 %tobool11.not.i, label %if.end8.i.if.end15.i_crit_edge, label %if.then12.i

if.end8.i.if.end15.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.then12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %chip_info, align 4
  %bq256xx_def_vindpm.i = getelementptr inbounds %struct.bq256xx_chip_info, ptr %28, i32 0, i32 19
  %29 = ptrtoint ptr %bq256xx_def_vindpm.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bq256xx_def_vindpm.i, align 4
  %31 = ptrtoint ptr %vindpm.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %vindpm.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then12.i, %if.end8.i.if.end15.i_crit_edge
  %32 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev3, align 4
  %iindpm.i = getelementptr inbounds %struct.bq256xx_device, ptr %call.i, i32 0, i32 12, i32 1
  %call.i42.i = tail call i32 @device_property_read_u32_array(ptr noundef %33, ptr noundef nonnull @.str.25, ptr noundef %iindpm.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42.i)
  %tobool19.not.i = icmp eq i32 %call.i42.i, 0
  br i1 %tobool19.not.i, label %if.end15.i.if.end23_crit_edge, label %if.then20.i

if.end15.i.if.end23_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then20.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chip_info, align 4
  %bq256xx_def_iindpm.i = getelementptr inbounds %struct.bq256xx_chip_info, ptr %35, i32 0, i32 15
  %36 = ptrtoint ptr %bq256xx_def_iindpm.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bq256xx_def_iindpm.i, align 4
  %38 = ptrtoint ptr %iindpm.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %iindpm.i, align 4
  br label %if.end23

do.end22:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef -22) #12
  br label %cleanup

if.end23:                                         ; preds = %if.then20.i, %if.end15.i.if.end23_crit_edge
  %call.i163 = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @bq256xx_charger_reset, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i163)
  %tobool.not.i164 = icmp eq i32 %call.i163, 0
  br i1 %tobool.not.i164, label %if.end27, label %if.then.i

if.then.i:                                        ; preds = %if.end23
  %39 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef 11, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %usb2_phy.i.i = getelementptr inbounds %struct.bq256xx_device, ptr %call.i, i32 0, i32 6
  %41 = ptrtoint ptr %usb2_phy.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %usb2_phy.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %42, null
  %cmp.i.i.i = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i = or i1 %tobool.not.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %if.then.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %usb_nb.i.i = getelementptr inbounds %struct.bq256xx_device, ptr %call.i, i32 0, i32 8
  %notifier.i.i.i = getelementptr inbounds %struct.usb_phy, ptr %42, i32 0, i32 18
  %call.i14.i.i = tail call i32 @atomic_notifier_chain_unregister(ptr noundef %notifier.i.i.i, ptr noundef %usb_nb.i.i) #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i.if.end.i.i_crit_edge
  %usb3_phy.i.i = getelementptr inbounds %struct.bq256xx_device, ptr %call.i, i32 0, i32 7
  %43 = ptrtoint ptr %usb3_phy.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %usb3_phy.i.i, align 4
  %tobool.not.i15.i.i = icmp eq ptr %44, null
  %cmp.i16.i.i = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  %spec.select.i17.i.i = or i1 %tobool.not.i15.i.i, %cmp.i16.i.i
  br i1 %spec.select.i17.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.then4.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %usb_nb6.i.i = getelementptr inbounds %struct.bq256xx_device, ptr %call.i, i32 0, i32 8
  %notifier.i18.i.i = getelementptr inbounds %struct.usb_phy, ptr %44, i32 0, i32 18
  %call.i19.i.i = tail call i32 @atomic_notifier_chain_unregister(ptr noundef %notifier.i18.i.i, ptr noundef %usb_nb6.i.i) #9
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  %call28 = tail call ptr @devm_usb_get_phy(ptr noundef %dev1, i32 noundef 1) #9
  %usb2_phy = getelementptr inbounds %struct.bq256xx_device, ptr %call.i, i32 0, i32 6
  %45 = ptrtoint ptr %usb2_phy to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call28, ptr %usb2_phy, align 4
  %tobool.not.i166 = icmp eq ptr %call28, null
  %cmp.i167 = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i166, %cmp.i167
  br i1 %spec.select.i, label %if.end27.if.end43_crit_edge, label %do.body32

if.end27.if.end43_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

do.body32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %usb_work = getelementptr inbounds %struct.bq256xx_device, ptr %call.i, i32 0, i32 9
  tail call void @__init_work(ptr noundef %usb_work, i32 noundef 0) #9
  %46 = ptrtoint ptr %usb_work to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -64, ptr %usb_work, align 4
  %lockdep_map = getelementptr inbounds %struct.bq256xx_device, ptr %call.i, i32 0, i32 9, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.12, ptr noundef nonnull @bq256xx_probe.__key.11, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry36 = getelementptr inbounds %struct.bq256xx_device, ptr %call.i, i32 0, i32 9, i32 1
  %47 = ptrtoint ptr %entry36 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %entry36, ptr %entry36, align 4
  %prev.i = getelementptr inbounds %struct.bq256xx_device, ptr %call.i, i32 0, i32 9, i32 1, i32 1
  %48 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %entry36, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.bq256xx_device, ptr %call.i, i32 0, i32 9, i32 2
  %49 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @bq256xx_usb_work, ptr %func, align 4
  %usb_nb = getelementptr inbounds %struct.bq256xx_device, ptr %call.i, i32 0, i32 8
  %50 = ptrtoint ptr %usb_nb to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @bq256xx_usb_notifier, ptr %usb_nb, align 4
  %51 = ptrtoint ptr %usb2_phy to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %usb2_phy, align 4
  %notifier.i = getelementptr inbounds %struct.usb_phy, ptr %52, i32 0, i32 18
  %call.i168 = tail call i32 @atomic_notifier_chain_register(ptr noundef %notifier.i, ptr noundef %usb_nb) #9
  br label %if.end43

if.end43:                                         ; preds = %do.body32, %if.end27.if.end43_crit_edge
  %call44 = tail call ptr @devm_usb_get_phy(ptr noundef %dev1, i32 noundef 2) #9
  %usb3_phy = getelementptr inbounds %struct.bq256xx_device, ptr %call.i, i32 0, i32 7
  %53 = ptrtoint ptr %usb3_phy to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call44, ptr %usb3_phy, align 4
  %tobool.not.i169 = icmp eq ptr %call44, null
  %cmp.i170 = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  %spec.select.i171 = or i1 %tobool.not.i169, %cmp.i170
  br i1 %spec.select.i171, label %if.end43.if.end67_crit_edge, label %do.body48

if.end43.if.end67_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

do.body48:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %usb_work49 = getelementptr inbounds %struct.bq256xx_device, ptr %call.i, i32 0, i32 9
  tail call void @__init_work(ptr noundef %usb_work49, i32 noundef 0) #9
  %54 = ptrtoint ptr %usb_work49 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -64, ptr %usb_work49, align 4
  %lockdep_map55 = getelementptr inbounds %struct.bq256xx_device, ptr %call.i, i32 0, i32 9, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map55, ptr noundef nonnull @.str.12, ptr noundef nonnull @bq256xx_probe.__key.13, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry57 = getelementptr inbounds %struct.bq256xx_device, ptr %call.i, i32 0, i32 9, i32 1
  %55 = ptrtoint ptr %entry57 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %entry57, ptr %entry57, align 4
  %prev.i172 = getelementptr inbounds %struct.bq256xx_device, ptr %call.i, i32 0, i32 9, i32 1, i32 1
  %56 = ptrtoint ptr %prev.i172 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %entry57, ptr %prev.i172, align 4
  %func59 = getelementptr inbounds %struct.bq256xx_device, ptr %call.i, i32 0, i32 9, i32 2
  %57 = ptrtoint ptr %func59 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @bq256xx_usb_work, ptr %func59, align 4
  %usb_nb62 = getelementptr inbounds %struct.bq256xx_device, ptr %call.i, i32 0, i32 8
  %58 = ptrtoint ptr %usb_nb62 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @bq256xx_usb_notifier, ptr %usb_nb62, align 4
  %59 = ptrtoint ptr %usb3_phy to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %usb3_phy, align 4
  %notifier.i173 = getelementptr inbounds %struct.usb_phy, ptr %60, i32 0, i32 18
  %call.i174 = tail call i32 @atomic_notifier_chain_register(ptr noundef %notifier.i173, ptr noundef %usb_nb62) #9
  br label %if.end67

if.end67:                                         ; preds = %do.body48, %if.end43.if.end67_crit_edge
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %61 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool68.not = icmp eq i32 %62, 0
  br i1 %tobool68.not, label %if.end67.if.end79_crit_edge, label %if.then69

if.end67.if.end79_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

if.then69:                                        ; preds = %if.end67
  %init_name.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 3
  %63 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i175 = icmp eq ptr %64, null
  br i1 %tobool.not.i175, label %if.end.i176, label %if.then69.dev_name.exit_crit_edge

if.then69.dev_name.exit_crit_edge:                ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i176:                                      ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i176, %if.then69.dev_name.exit_crit_edge
  %retval.0.i177 = phi ptr [ %66, %if.end.i176 ], [ %64, %if.then69.dev_name.exit_crit_edge ]
  %call73 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %62, ptr noundef null, ptr noundef nonnull @bq256xx_irq_handler_thread, i32 noundef 8194, ptr noundef %retval.0.i177, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp = icmp slt i32 %call73, 0
  br i1 %cmp, label %do.end77, label %dev_name.exit.if.end79_crit_edge

dev_name.exit.if.end79_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

do.end77:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %call73) #12
  br label %cleanup

if.end79:                                         ; preds = %dev_name.exit.if.end79_crit_edge, %if.end67.if.end79_crit_edge
  %67 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev3, align 4
  %call.i178 = call ptr @devm_power_supply_register(ptr noundef %68, ptr noundef nonnull @bq256xx_power_supply_desc, ptr noundef nonnull %psy_cfg) #9
  %charger.i = getelementptr inbounds %struct.bq256xx_device, ptr %call.i, i32 0, i32 2
  %69 = ptrtoint ptr %charger.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call.i178, ptr %charger.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i178, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end79.bq256xx_power_supply_init.exit_crit_edge, label %if.end.i179

if.end79.bq256xx_power_supply_init.exit_crit_edge: ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq256xx_power_supply_init.exit

if.end.i179:                                      ; preds = %if.end79
  %70 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev3, align 4
  %call7.i = call ptr @devm_power_supply_register(ptr noundef %71, ptr noundef nonnull @bq256xx_battery_desc, ptr noundef nonnull %psy_cfg) #9
  %battery.i = getelementptr inbounds %struct.bq256xx_device, ptr %call.i, i32 0, i32 3
  %72 = ptrtoint ptr %battery.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call7.i, ptr %battery.i, align 4
  %cmp.i25.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i25.i, label %if.end.i179.bq256xx_power_supply_init.exit_crit_edge, label %if.end.i179.if.end86_crit_edge

if.end.i179.if.end86_crit_edge:                   ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86

if.end.i179.bq256xx_power_supply_init.exit_crit_edge: ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq256xx_power_supply_init.exit

bq256xx_power_supply_init.exit:                   ; preds = %if.end.i179.bq256xx_power_supply_init.exit_crit_edge, %if.end79.bq256xx_power_supply_init.exit_crit_edge
  %.str.31.sink.i = phi ptr [ @.str.28, %if.end79.bq256xx_power_supply_init.exit_crit_edge ], [ @.str.31, %if.end.i179.bq256xx_power_supply_init.exit_crit_edge ]
  %battery.sink.i = phi ptr [ %charger.i, %if.end79.bq256xx_power_supply_init.exit_crit_edge ], [ %battery.i, %if.end.i179.bq256xx_power_supply_init.exit_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.31.sink.i) #12
  %73 = ptrtoint ptr %battery.sink.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %battery.sink.i, align 4
  %tobool81.not = icmp eq ptr %74, null
  br i1 %tobool81.not, label %bq256xx_power_supply_init.exit.if.end86_crit_edge, label %do.end85

bq256xx_power_supply_init.exit.if.end86_crit_edge: ; preds = %bq256xx_power_supply_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86

do.end85:                                         ; preds = %bq256xx_power_supply_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %75 = ptrtoint ptr %74 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #12
  br label %cleanup

if.end86:                                         ; preds = %bq256xx_power_supply_init.exit.if.end86_crit_edge, %if.end.i179.if.end86_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bat_info.i) #9
  %76 = ptrtoint ptr %bat_info.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr inttoptr (i32 -1 to ptr), ptr %bat_info.i, align 4, !annotation !126
  %77 = ptrtoint ptr %watchdog_timer.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %watchdog_timer.i, align 4
  %79 = zext i32 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values)
  switch i32 %78, label %if.end.1.i [
    i32 0, label %if.end86.for.end.i_crit_edge
    i32 40000, label %for.end.fold.split.i
  ]

if.end86.for.end.i_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end.1.i:                                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_const_cmp4(i32 40000, i32 %78)
  %cmp4.1.i = icmp sgt i32 %78, 40000
  br i1 %cmp4.1.i, label %for.inc.1.i, label %if.end.1.i.for.end.i_crit_edge

if.end.1.i.for.end.i_crit_edge:                   ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.1.i:                                      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 80000, i32 %78)
  %cmp7.1.i = icmp ult i32 %78, 80000
  %spec.select.1.i = zext i1 %cmp7.1.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 80000, i32 %78)
  %cmp1.2.i = icmp eq i32 %78, 80000
  br i1 %cmp1.2.i, label %for.inc.1.i.for.end.i_crit_edge, label %if.end.2.i

for.inc.1.i.for.end.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end.2.i:                                       ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 80000, i32 %78)
  %cmp4.2.i = icmp ugt i32 %78, 80000
  br i1 %cmp4.2.i, label %for.inc.2.i, label %if.end.2.i.for.end.i_crit_edge

if.end.2.i.for.end.i_crit_edge:                   ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.2.i:                                      ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1600000, i32 %78)
  %cmp7.2.i = icmp ult i32 %78, 1600000
  %spec.select.2.i = select i1 %cmp7.2.i, i32 2, i32 %spec.select.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1600000, i32 %78)
  %cmp1.3.i = icmp eq i32 %78, 1600000
  %spec.select.i182 = select i1 %cmp1.3.i, i32 3, i32 %spec.select.2.i
  br label %for.end.i

for.end.fold.split.i:                             ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.fold.split.i, %for.inc.2.i, %if.end.2.i.for.end.i_crit_edge, %for.inc.1.i.for.end.i_crit_edge, %if.end.1.i.for.end.i_crit_edge, %if.end86.for.end.i_crit_edge
  %wd_reg_val.2.i = phi i32 [ %78, %if.end86.for.end.i_crit_edge ], [ 2, %for.inc.1.i.for.end.i_crit_edge ], [ %spec.select.1.i, %if.end.2.i.for.end.i_crit_edge ], [ 0, %if.end.1.i.for.end.i_crit_edge ], [ 1, %for.end.fold.split.i ], [ %spec.select.i182, %for.inc.2.i ]
  %80 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regmap, align 4
  %shl.i = shl nuw nsw i32 %wd_reg_val.2.i, 4
  %call.i.i183 = call i32 @regmap_update_bits_base(ptr noundef %81, i32 noundef 5, i32 noundef 48, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %82 = ptrtoint ptr %charger.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %charger.i, align 4
  %call10.i = call i32 @power_supply_get_battery_info(ptr noundef %83, ptr noundef nonnull %bat_info.i) #9
  %84 = zext i32 %call10.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %call10.i, label %do.end.i [
    i32 -12, label %for.end.i.do.end92_crit_edge
    i32 0, label %if.else.i
  ]

for.end.i.do.end92_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end92

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev3, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %86, ptr noundef nonnull @.str.35) #12
  %87 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %chip_info, align 4
  %bq256xx_def_ichg.i = getelementptr inbounds %struct.bq256xx_chip_info, ptr %88, i32 0, i32 14
  %89 = ptrtoint ptr %bq256xx_def_ichg.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %bq256xx_def_ichg.i, align 4
  %91 = ptrtoint ptr %bat_info.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %bat_info.i, align 4
  %constant_charge_current_max_ua.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %92, i32 0, i32 11
  %93 = ptrtoint ptr %constant_charge_current_max_ua.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %90, ptr %constant_charge_current_max_ua.i, align 4
  %94 = load ptr, ptr %chip_info, align 4
  %bq256xx_def_vbatreg.i = getelementptr inbounds %struct.bq256xx_chip_info, ptr %94, i32 0, i32 16
  %95 = ptrtoint ptr %bq256xx_def_vbatreg.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %bq256xx_def_vbatreg.i, align 4
  %constant_charge_voltage_max_uv.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %92, i32 0, i32 12
  %97 = ptrtoint ptr %constant_charge_voltage_max_uv.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %constant_charge_voltage_max_uv.i, align 4
  %98 = load ptr, ptr %chip_info, align 4
  %bq256xx_def_iprechg.i = getelementptr inbounds %struct.bq256xx_chip_info, ptr %98, i32 0, i32 18
  %99 = ptrtoint ptr %bq256xx_def_iprechg.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %bq256xx_def_iprechg.i, align 4
  %precharge_current_ua.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %92, i32 0, i32 6
  %101 = ptrtoint ptr %precharge_current_ua.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %precharge_current_ua.i, align 4
  %102 = load ptr, ptr %chip_info, align 4
  %bq256xx_def_iterm.i = getelementptr inbounds %struct.bq256xx_chip_info, ptr %102, i32 0, i32 17
  %103 = ptrtoint ptr %bq256xx_def_iterm.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %bq256xx_def_iterm.i, align 4
  %charge_term_current_ua.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %92, i32 0, i32 8
  %105 = ptrtoint ptr %charge_term_current_ua.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %charge_term_current_ua.i, align 4
  %106 = load ptr, ptr %chip_info, align 4
  %bq256xx_max_ichg.i = getelementptr inbounds %struct.bq256xx_chip_info, ptr %106, i32 0, i32 20
  %107 = ptrtoint ptr %bq256xx_max_ichg.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %bq256xx_max_ichg.i, align 4
  %ichg_max.i = getelementptr inbounds %struct.bq256xx_device, ptr %call.i, i32 0, i32 12, i32 6
  %109 = ptrtoint ptr %ichg_max.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %ichg_max.i, align 4
  %bq256xx_max_vbatreg.i = getelementptr inbounds %struct.bq256xx_chip_info, ptr %106, i32 0, i32 21
  br label %if.end27.i

if.else.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %110 = ptrtoint ptr %bat_info.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %bat_info.i, align 4
  %constant_charge_current_max_ua21.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %111, i32 0, i32 11
  %112 = ptrtoint ptr %constant_charge_current_max_ua21.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %constant_charge_current_max_ua21.i, align 4
  %ichg_max23.i = getelementptr inbounds %struct.bq256xx_device, ptr %call.i, i32 0, i32 12, i32 6
  %114 = ptrtoint ptr %ichg_max23.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %ichg_max23.i, align 4
  %constant_charge_voltage_max_uv24.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %111, i32 0, i32 12
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.else.i, %do.end.i
  %constant_charge_voltage_max_uv24.sink.i = phi ptr [ %constant_charge_voltage_max_uv24.i, %if.else.i ], [ %bq256xx_max_vbatreg.i, %do.end.i ]
  %115 = ptrtoint ptr %constant_charge_voltage_max_uv24.sink.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %constant_charge_voltage_max_uv24.sink.i, align 4
  %vbatreg_max26.i = getelementptr inbounds %struct.bq256xx_device, ptr %call.i, i32 0, i32 12, i32 7
  %117 = ptrtoint ptr %vbatreg_max26.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %vbatreg_max26.i, align 4
  %118 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %chip_info, align 4
  %bq256xx_set_vindpm.i = getelementptr inbounds %struct.bq256xx_chip_info, ptr %119, i32 0, i32 13
  %120 = ptrtoint ptr %bq256xx_set_vindpm.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %bq256xx_set_vindpm.i, align 4
  %122 = ptrtoint ptr %vindpm.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %vindpm.i, align 4
  %call30.i = call i32 %121(ptr noundef nonnull %call.i, i32 noundef %123) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end33.i, label %if.end27.i.do.end92_crit_edge

if.end27.i.do.end92_crit_edge:                    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end92

if.end33.i:                                       ; preds = %if.end27.i
  %124 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %chip_info, align 4
  %bq256xx_set_iindpm.i = getelementptr inbounds %struct.bq256xx_chip_info, ptr %125, i32 0, i32 9
  %126 = ptrtoint ptr %bq256xx_set_iindpm.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %bq256xx_set_iindpm.i, align 4
  %128 = ptrtoint ptr %iindpm.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %iindpm.i, align 4
  %call36.i = call i32 %127(ptr noundef nonnull %call.i, i32 noundef %129) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %if.end39.i, label %if.end33.i.do.end92_crit_edge

if.end33.i.do.end92_crit_edge:                    ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end92

if.end39.i:                                       ; preds = %if.end33.i
  %130 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %chip_info, align 4
  %bq256xx_set_ichg.i = getelementptr inbounds %struct.bq256xx_chip_info, ptr %131, i32 0, i32 8
  %132 = ptrtoint ptr %bq256xx_set_ichg.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %bq256xx_set_ichg.i, align 4
  %134 = ptrtoint ptr %bat_info.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %bat_info.i, align 4
  %constant_charge_current_max_ua41.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %135, i32 0, i32 11
  %136 = ptrtoint ptr %constant_charge_current_max_ua41.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %constant_charge_current_max_ua41.i, align 4
  %call42.i = call i32 %133(ptr noundef nonnull %call.i, i32 noundef %137) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %if.end45.i, label %if.end39.i.do.end92_crit_edge

if.end39.i.do.end92_crit_edge:                    ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end92

if.end45.i:                                       ; preds = %if.end39.i
  %138 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %chip_info, align 4
  %bq256xx_set_iprechg.i = getelementptr inbounds %struct.bq256xx_chip_info, ptr %139, i32 0, i32 12
  %140 = ptrtoint ptr %bq256xx_set_iprechg.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %bq256xx_set_iprechg.i, align 4
  %142 = ptrtoint ptr %bat_info.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %bat_info.i, align 4
  %precharge_current_ua47.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %143, i32 0, i32 6
  %144 = ptrtoint ptr %precharge_current_ua47.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %precharge_current_ua47.i, align 4
  %call48.i = call i32 %141(ptr noundef nonnull %call.i, i32 noundef %145) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool49.not.i = icmp eq i32 %call48.i, 0
  br i1 %tobool49.not.i, label %if.end51.i, label %if.end45.i.do.end92_crit_edge

if.end45.i.do.end92_crit_edge:                    ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end92

if.end51.i:                                       ; preds = %if.end45.i
  %146 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %chip_info, align 4
  %bq256xx_set_vbatreg.i = getelementptr inbounds %struct.bq256xx_chip_info, ptr %147, i32 0, i32 10
  %148 = ptrtoint ptr %bq256xx_set_vbatreg.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %bq256xx_set_vbatreg.i, align 4
  %150 = ptrtoint ptr %bat_info.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %bat_info.i, align 4
  %constant_charge_voltage_max_uv53.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %151, i32 0, i32 12
  %152 = ptrtoint ptr %constant_charge_voltage_max_uv53.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %constant_charge_voltage_max_uv53.i, align 4
  %call54.i = call i32 %149(ptr noundef nonnull %call.i, i32 noundef %153) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %tobool55.not.i = icmp eq i32 %call54.i, 0
  br i1 %tobool55.not.i, label %if.end57.i, label %if.end51.i.do.end92_crit_edge

if.end51.i.do.end92_crit_edge:                    ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end92

if.end57.i:                                       ; preds = %if.end51.i
  %154 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %chip_info, align 4
  %bq256xx_set_iterm.i = getelementptr inbounds %struct.bq256xx_chip_info, ptr %155, i32 0, i32 11
  %156 = ptrtoint ptr %bq256xx_set_iterm.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %bq256xx_set_iterm.i, align 4
  %158 = ptrtoint ptr %bat_info.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %bat_info.i, align 4
  %charge_term_current_ua59.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %159, i32 0, i32 8
  %160 = ptrtoint ptr %charge_term_current_ua59.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %charge_term_current_ua59.i, align 4
  %call60.i = call i32 %157(ptr noundef nonnull %call.i, i32 noundef %161) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i)
  %tobool61.not.i = icmp eq i32 %call60.i, 0
  br i1 %tobool61.not.i, label %bq256xx_hw_init.exit, label %if.end57.i.do.end92_crit_edge

if.end57.i.do.end92_crit_edge:                    ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end92

bq256xx_hw_init.exit:                             ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  %162 = ptrtoint ptr %charger.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %charger.i, align 4
  %164 = ptrtoint ptr %bat_info.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %bat_info.i, align 4
  call void @power_supply_put_battery_info(ptr noundef %163, ptr noundef %165) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bat_info.i) #9
  br label %cleanup

do.end92:                                         ; preds = %if.end57.i.do.end92_crit_edge, %if.end51.i.do.end92_crit_edge, %if.end45.i.do.end92_crit_edge, %if.end39.i.do.end92_crit_edge, %if.end33.i.do.end92_crit_edge, %if.end27.i.do.end92_crit_edge, %for.end.i.do.end92_crit_edge
  %retval.0.i188.ph = phi i32 [ %call60.i, %if.end57.i.do.end92_crit_edge ], [ %call54.i, %if.end51.i.do.end92_crit_edge ], [ %call48.i, %if.end45.i.do.end92_crit_edge ], [ %call42.i, %if.end39.i.do.end92_crit_edge ], [ %call36.i, %if.end33.i.do.end92_crit_edge ], [ %call30.i, %if.end27.i.do.end92_crit_edge ], [ %call10.i, %for.end.i.do.end92_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bat_info.i) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end92, %bq256xx_hw_init.exit, %do.end85, %do.end77, %if.then4.i.i, %if.end.i.i.cleanup_crit_edge, %do.end22, %do.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %do.end13 ], [ -22, %do.end22 ], [ %call73, %do.end77 ], [ %75, %do.end85 ], [ %retval.0.i188.ph, %do.end92 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %bq256xx_hw_init.exit ], [ %call.i163, %if.end.i.i.cleanup_crit_edge ], [ %call.i163, %if.then4.i.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bq256xx_charger_reset(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.bq256xx_device, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 11, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %usb2_phy = getelementptr inbounds %struct.bq256xx_device, ptr %data, i32 0, i32 6
  %2 = ptrtoint ptr %usb2_phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb2_phy, align 4
  %tobool.not.i = icmp eq ptr %3, null
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %usb_nb = getelementptr inbounds %struct.bq256xx_device, ptr %data, i32 0, i32 8
  %notifier.i = getelementptr inbounds %struct.usb_phy, ptr %3, i32 0, i32 18
  %call.i14 = tail call i32 @atomic_notifier_chain_unregister(ptr noundef %notifier.i, ptr noundef %usb_nb) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %usb3_phy = getelementptr inbounds %struct.bq256xx_device, ptr %data, i32 0, i32 7
  %4 = ptrtoint ptr %usb3_phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb3_phy, align 4
  %tobool.not.i15 = icmp eq ptr %5, null
  %cmp.i16 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %spec.select.i17 = or i1 %tobool.not.i15, %cmp.i16
  br i1 %spec.select.i17, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %usb_nb6 = getelementptr inbounds %struct.bq256xx_device, ptr %data, i32 0, i32 8
  %notifier.i18 = getelementptr inbounds %struct.usb_phy, ptr %5, i32 0, i32 18
  %call.i19 = tail call i32 @atomic_notifier_chain_unregister(ptr noundef %notifier.i18, ptr noundef %usb_nb6) #9
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_usb_get_phy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bq256xx_usb_work(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_event = getelementptr i8, ptr %data, i32 44
  %0 = ptrtoint ptr %usb_event to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_event, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %1, label %do.end [
    i32 2, label %entry.sw.epilog_crit_edge
    i32 0, label %sw.bb
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %charger = getelementptr i8, ptr %data, i32 -124
  %3 = ptrtoint ptr %charger to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %charger, align 4
  tail call void @power_supply_changed(ptr noundef %4) #9
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr i8, ptr %data, i32 -128
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.26) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq256xx_usb_notifier(ptr noundef %nb, i32 noundef %val, ptr nocapture noundef readnone %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_event = getelementptr i8, ptr %nb, i32 56
  %0 = ptrtoint ptr %usb_event to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %val, ptr %usb_event, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %1 = load ptr, ptr @system_power_efficient_wq, align 4
  %usb_work = getelementptr i8, ptr %nb, i32 12
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %usb_work) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq256xx_irq_handler_thread(i32 noundef %irq, ptr noundef %private) #2 align 64 {
entry:
  %old_state.i = alloca %struct.bq256xx_state, align 1
  %charger_status_0.i = alloca i32, align 4
  %charger_status_1.i = alloca i32, align 4
  %state = alloca %struct.bq256xx_state, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %state) #9
  %0 = getelementptr inbounds %struct.bq256xx_state, ptr %state, i32 0, i32 1
  %1 = getelementptr inbounds %struct.bq256xx_state, ptr %state, i32 0, i32 2
  %2 = getelementptr inbounds %struct.bq256xx_state, ptr %state, i32 0, i32 3
  %3 = getelementptr inbounds %struct.bq256xx_state, ptr %state, i32 0, i32 4
  %4 = getelementptr inbounds %struct.bq256xx_state, ptr %state, i32 0, i32 5
  %5 = getelementptr inbounds %struct.bq256xx_state, ptr %state, i32 0, i32 6
  %6 = call ptr @memset(ptr %state, i32 255, i32 7)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %charger_status_0.i) #9
  %7 = ptrtoint ptr %charger_status_0.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %charger_status_0.i, align 4, !annotation !126
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %charger_status_1.i) #9
  %8 = ptrtoint ptr %charger_status_1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %charger_status_1.i, align 4, !annotation !126
  %regmap.i = getelementptr inbounds %struct.bq256xx_device, ptr %private, i32 0, i32 5
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %10, i32 noundef 8, ptr noundef nonnull %charger_status_0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.bq256xx_get_state.exit_crit_edge

entry.bq256xx_get_state.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq256xx_get_state.exit

if.end.i:                                         ; preds = %entry
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 4
  %call2.i = call i32 @regmap_read(ptr noundef %12, i32 noundef 9, ptr noundef nonnull %charger_status_1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %bq256xx_get_state.exit.thread, label %if.end.i.bq256xx_get_state.exit_crit_edge

if.end.i.bq256xx_get_state.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq256xx_get_state.exit

bq256xx_get_state.exit.thread:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %charger_status_0.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %charger_status_0.i, align 4
  %15 = trunc i32 %14 to i8
  %conv.i = and i8 %15, -32
  %16 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv.i, ptr %state, align 1
  %conv7.i = and i8 %15, 24
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv7.i, ptr %0, align 1
  %18 = lshr i8 %15, 2
  %19 = and i8 %18, 1
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %1, align 1
  %21 = ptrtoint ptr %charger_status_1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %charger_status_1.i, align 4
  %23 = trunc i32 %22 to i8
  %conv11.i = and i8 %23, -128
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv11.i, ptr %2, align 1
  %conv13.i = and i8 %23, 8
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv13.i, ptr %3, align 1
  %conv15.i = and i8 %23, 48
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv15.i, ptr %4, align 1
  %conv17.i = and i8 %23, 7
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv17.i, ptr %5, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %charger_status_1.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %charger_status_0.i) #9
  br label %if.end

bq256xx_get_state.exit:                           ; preds = %if.end.i.bq256xx_get_state.exit_crit_edge, %entry.bq256xx_get_state.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.bq256xx_get_state.exit_crit_edge ], [ %call2.i, %if.end.i.bq256xx_get_state.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %charger_status_1.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %charger_status_0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %bq256xx_get_state.exit.irq_out_crit_edge, label %bq256xx_get_state.exit.if.end_crit_edge

bq256xx_get_state.exit.if.end_crit_edge:          ; preds = %bq256xx_get_state.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

bq256xx_get_state.exit.irq_out_crit_edge:         ; preds = %bq256xx_get_state.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %irq_out

if.end:                                           ; preds = %bq256xx_get_state.exit.if.end_crit_edge, %bq256xx_get_state.exit.thread
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %old_state.i) #9
  %lock.i = getelementptr inbounds %struct.bq256xx_device, ptr %private, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %state.i = getelementptr inbounds %struct.bq256xx_device, ptr %private, i32 0, i32 14
  %28 = call ptr @memcpy(ptr %old_state.i, ptr %state.i, i32 7)
  call void @mutex_unlock(ptr noundef %lock.i) #9
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %old_state.i, ptr noundef nonnull dereferenceable(7) %state, i32 7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i.not = icmp eq i32 %bcmp.i, 0
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %old_state.i) #9
  br i1 %cmp.i.not, label %if.end.irq_out_crit_edge, label %if.end3

if.end.irq_out_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %irq_out

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %29 = call ptr @memcpy(ptr %state.i, ptr %state, i32 7)
  call void @mutex_unlock(ptr noundef %lock.i) #9
  %charger = getelementptr inbounds %struct.bq256xx_device, ptr %private, i32 0, i32 2
  %30 = ptrtoint ptr %charger to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %charger, align 4
  call void @power_supply_changed(ptr noundef %31) #9
  br label %irq_out

irq_out:                                          ; preds = %if.end3, %if.end.irq_out_crit_edge, %bq256xx_get_state.exit.irq_out_crit_edge
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %state) #9
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq256xx_get_ichg_curr(ptr nocapture noundef readonly %bq) #2 align 64 {
entry:
  %charge_current_limit = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %charge_current_limit) #9
  %0 = ptrtoint ptr %charge_current_limit to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %charge_current_limit, align 4, !annotation !126
  %regmap = getelementptr inbounds %struct.bq256xx_device, ptr %bq, i32 0, i32 5
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 2, ptr noundef nonnull %charge_current_limit) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %charge_current_limit to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %charge_current_limit, align 4
  %and = and i32 %4, 63
  %mul = mul nuw nsw i32 %and, 60000
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %mul, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %charge_current_limit) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq256xx_get_input_curr_lim(ptr nocapture noundef readonly %bq) #2 align 64 {
entry:
  %input_current_limit = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %input_current_limit) #9
  %0 = ptrtoint ptr %input_current_limit to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %input_current_limit, align 4, !annotation !126
  %regmap = getelementptr inbounds %struct.bq256xx_device, ptr %bq, i32 0, i32 5
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %input_current_limit) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %input_current_limit to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %input_current_limit, align 4
  %and = and i32 %4, 31
  %mul = mul nuw nsw i32 %and, 100000
  %add = add nuw nsw i32 %mul, 100000
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %input_current_limit) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq2560x_get_chrg_volt(ptr nocapture noundef readonly %bq) #2 align 64 {
entry:
  %battery_volt_lim = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %battery_volt_lim) #9
  %0 = ptrtoint ptr %battery_volt_lim to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %battery_volt_lim, align 4, !annotation !126
  %regmap = getelementptr inbounds %struct.bq256xx_device, ptr %bq, i32 0, i32 5
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 4, ptr noundef nonnull %battery_volt_lim) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %battery_volt_lim to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %battery_volt_lim, align 4
  %and = lshr i32 %4, 3
  %shr = and i32 %and, 31
  %mul = mul nuw nsw i32 %shr, 32000
  %add = add nuw nsw i32 %mul, 3856000
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %battery_volt_lim) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq256xx_get_term_curr(ptr nocapture noundef readonly %bq) #2 align 64 {
entry:
  %prechg_and_term_curr_lim = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prechg_and_term_curr_lim) #9
  %0 = ptrtoint ptr %prechg_and_term_curr_lim to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %prechg_and_term_curr_lim, align 4, !annotation !126
  %regmap = getelementptr inbounds %struct.bq256xx_device, ptr %bq, i32 0, i32 5
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 3, ptr noundef nonnull %prechg_and_term_curr_lim) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %prechg_and_term_curr_lim to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %prechg_and_term_curr_lim, align 4
  %and = and i32 %4, 15
  %mul = mul nuw nsw i32 %and, 60000
  %add = add nuw nsw i32 %mul, 60000
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prechg_and_term_curr_lim) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq256xx_get_prechrg_curr(ptr nocapture noundef readonly %bq) #2 align 64 {
entry:
  %prechg_and_term_curr_lim = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prechg_and_term_curr_lim) #9
  %0 = ptrtoint ptr %prechg_and_term_curr_lim to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %prechg_and_term_curr_lim, align 4, !annotation !126
  %regmap = getelementptr inbounds %struct.bq256xx_device, ptr %bq, i32 0, i32 5
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 3, ptr noundef nonnull %prechg_and_term_curr_lim) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %prechg_and_term_curr_lim to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %prechg_and_term_curr_lim, align 4
  %and = lshr i32 %4, 4
  %shr = and i32 %and, 15
  %mul = mul nuw nsw i32 %shr, 60000
  %add = add nuw nsw i32 %mul, 60000
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prechg_and_term_curr_lim) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq256xx_get_input_volt_lim(ptr nocapture noundef readonly %bq) #2 align 64 {
entry:
  %charger_control_2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %charger_control_2) #9
  %0 = ptrtoint ptr %charger_control_2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %charger_control_2, align 4, !annotation !126
  %regmap = getelementptr inbounds %struct.bq256xx_device, ptr %bq, i32 0, i32 5
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 6, ptr noundef nonnull %charger_control_2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %charger_control_2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %charger_control_2, align 4
  %and = and i32 %4, 15
  %mul = mul nuw nsw i32 %and, 100000
  %add = add nuw nsw i32 %mul, 3900000
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %charger_control_2) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq256xx_set_ichg_curr(ptr nocapture noundef readonly %bq, i32 noundef %ichg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ichg_max1 = getelementptr inbounds %struct.bq256xx_device, ptr %bq, i32 0, i32 12, i32 6
  %0 = ptrtoint ptr %ichg_max1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ichg_max1, align 4
  %2 = tail call i32 @llvm.smax.i32(i32 %ichg, i32 0)
  %3 = tail call i32 @llvm.smin.i32(i32 %2, i32 %1)
  %div = sdiv i32 %3, 60000
  %regmap = getelementptr inbounds %struct.bq256xx_device, ptr %bq, i32 0, i32 5
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 2, i32 noundef 63, i32 noundef %div, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq256xx_set_input_curr_lim(ptr nocapture noundef readonly %bq, i32 noundef %iindpm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.smax.i32(i32 %iindpm, i32 100000)
  %1 = tail call i32 @llvm.umin.i32(i32 %0, i32 3200000)
  %sub = add nsw i32 %1, -100000
  %div12 = udiv i32 %sub, 100000
  %regmap = getelementptr inbounds %struct.bq256xx_device, ptr %bq, i32 0, i32 5
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 0, i32 noundef 31, i32 noundef %div12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq2560x_set_chrg_volt(ptr nocapture noundef readonly %bq, i32 noundef %vbatreg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vbatreg_max1 = getelementptr inbounds %struct.bq256xx_device, ptr %bq, i32 0, i32 12, i32 7
  %0 = ptrtoint ptr %vbatreg_max1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vbatreg_max1, align 4
  %2 = tail call i32 @llvm.smax.i32(i32 %vbatreg, i32 3856000)
  %3 = tail call i32 @llvm.smin.i32(i32 %2, i32 %1)
  %sub = add i32 %3, -3856000
  %div = sdiv i32 %sub, 32000
  %regmap = getelementptr inbounds %struct.bq256xx_device, ptr %bq, i32 0, i32 5
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %shl = shl nsw i32 %div, 3
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 4, i32 noundef 248, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq256xx_set_term_curr(ptr nocapture noundef readonly %bq, i32 noundef %iterm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.smax.i32(i32 %iterm, i32 60000)
  %1 = tail call i32 @llvm.umin.i32(i32 %0, i32 780000)
  %sub = add nsw i32 %1, -60000
  %div12 = udiv i32 %sub, 60000
  %regmap = getelementptr inbounds %struct.bq256xx_device, ptr %bq, i32 0, i32 5
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 3, i32 noundef 15, i32 noundef %div12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq256xx_set_prechrg_curr(ptr nocapture noundef readonly %bq, i32 noundef %iprechg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.smax.i32(i32 %iprechg, i32 60000)
  %1 = tail call i32 @llvm.umin.i32(i32 %0, i32 780000)
  %sub = add nsw i32 %1, -60000
  %div12 = udiv i32 %sub, 60000
  %shl = shl nuw nsw i32 %div12, 4
  %regmap = getelementptr inbounds %struct.bq256xx_device, ptr %bq, i32 0, i32 5
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 3, i32 noundef 240, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq256xx_set_input_volt_lim(ptr nocapture noundef readonly %bq, i32 noundef %vindpm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.smax.i32(i32 %vindpm, i32 3900000)
  %1 = tail call i32 @llvm.umin.i32(i32 %0, i32 5400000)
  %sub = add nsw i32 %1, -3900000
  %div12 = udiv i32 %sub, 100000
  %regmap = getelementptr inbounds %struct.bq256xx_device, ptr %bq, i32 0, i32 5
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 6, i32 noundef 15, i32 noundef %div12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq25601d_get_chrg_volt(ptr nocapture noundef readonly %bq) #2 align 64 {
entry:
  %battery_volt_lim = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %battery_volt_lim) #9
  %0 = ptrtoint ptr %battery_volt_lim to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %battery_volt_lim, align 4, !annotation !126
  %regmap = getelementptr inbounds %struct.bq256xx_device, ptr %bq, i32 0, i32 5
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 4, ptr noundef nonnull %battery_volt_lim) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %battery_volt_lim to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %battery_volt_lim, align 4
  %and = lshr i32 %4, 3
  %shr = and i32 %and, 31
  %mul = mul nuw nsw i32 %shr, 32000
  %add = add nuw nsw i32 %mul, 3847000
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %battery_volt_lim) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq25601d_set_chrg_volt(ptr nocapture noundef readonly %bq, i32 noundef %vbatreg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vbatreg_max1 = getelementptr inbounds %struct.bq256xx_device, ptr %bq, i32 0, i32 12, i32 7
  %0 = ptrtoint ptr %vbatreg_max1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vbatreg_max1, align 4
  %2 = tail call i32 @llvm.smax.i32(i32 %vbatreg, i32 3847000)
  %3 = tail call i32 @llvm.smin.i32(i32 %2, i32 %1)
  %sub = add i32 %3, -3847000
  %div = sdiv i32 %sub, 32000
  %regmap = getelementptr inbounds %struct.bq256xx_device, ptr %bq, i32 0, i32 5
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %shl = shl nsw i32 %div, 3
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 4, i32 noundef 248, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq25618_619_get_ichg_curr(ptr nocapture noundef readonly %bq) #2 align 64 {
entry:
  %charge_current_limit = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %charge_current_limit) #9
  %0 = ptrtoint ptr %charge_current_limit to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %charge_current_limit, align 4, !annotation !126
  %regmap = getelementptr inbounds %struct.bq256xx_device, ptr %bq, i32 0, i32 5
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 2, ptr noundef nonnull %charge_current_limit) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %charge_current_limit to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %charge_current_limit, align 4
  %and = and i32 %4, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %and)
  %cmp = icmp ult i32 %and, 60
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %mul = mul nuw nsw i32 %and, 20000
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add nsw i32 %and, -60
  %arrayidx = getelementptr [4 x i32], ptr @bq25618_619_ichg_values, i32 0, i32 %sub
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %mul, %if.then1 ], [ %6, %if.end2 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %charge_current_limit) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq25618_619_get_chrg_volt(ptr nocapture noundef readonly %bq) #2 align 64 {
entry:
  %battery_volt_lim = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %battery_volt_lim) #9
  %0 = ptrtoint ptr %battery_volt_lim to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %battery_volt_lim, align 4, !annotation !126
  %regmap = getelementptr inbounds %struct.bq256xx_device, ptr %bq, i32 0, i32 5
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 4, ptr noundef nonnull %battery_volt_lim) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %battery_volt_lim to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %battery_volt_lim, align 4
  %and = lshr i32 %4, 3
  %shr = and i32 %and, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %shr)
  %cmp = icmp ugt i32 %shr, 8
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = mul nuw nsw i32 %shr, 10000
  %add = add nuw nsw i32 %5, 4220000
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr [9 x i32], ptr @bq25618_619_vbatreg_values, i32 0, i32 %shr
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %if.then1 ], [ %7, %if.end2 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %battery_volt_lim) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq25618_619_get_term_curr(ptr nocapture noundef readonly %bq) #2 align 64 {
entry:
  %prechg_and_term_curr_lim = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prechg_and_term_curr_lim) #9
  %0 = ptrtoint ptr %prechg_and_term_curr_lim to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %prechg_and_term_curr_lim, align 4, !annotation !126
  %regmap = getelementptr inbounds %struct.bq256xx_device, ptr %bq, i32 0, i32 5
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 3, ptr noundef nonnull %prechg_and_term_curr_lim) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %prechg_and_term_curr_lim to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %prechg_and_term_curr_lim, align 4
  %and = and i32 %4, 15
  %mul = mul nuw nsw i32 %and, 20000
  %add = add nuw nsw i32 %mul, 20000
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prechg_and_term_curr_lim) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq25618_619_get_prechrg_curr(ptr nocapture noundef readonly %bq) #2 align 64 {
entry:
  %prechg_and_term_curr_lim = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prechg_and_term_curr_lim) #9
  %0 = ptrtoint ptr %prechg_and_term_curr_lim to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %prechg_and_term_curr_lim, align 4, !annotation !126
  %regmap = getelementptr inbounds %struct.bq256xx_device, ptr %bq, i32 0, i32 5
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 3, ptr noundef nonnull %prechg_and_term_curr_lim) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %prechg_and_term_curr_lim to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %prechg_and_term_curr_lim, align 4
  %and = lshr i32 %4, 4
  %shr = and i32 %and, 15
  %mul = mul nuw nsw i32 %shr, 20000
  %add = add nuw nsw i32 %mul, 20000
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prechg_and_term_curr_lim) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq25618_619_set_ichg_curr(ptr nocapture noundef readonly %bq, i32 noundef %ichg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ichg_max1 = getelementptr inbounds %struct.bq256xx_device, ptr %bq, i32 0, i32 12, i32 6
  %0 = ptrtoint ptr %ichg_max1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ichg_max1, align 4
  %2 = tail call i32 @llvm.smax.i32(i32 %ichg, i32 0)
  %3 = tail call i32 @llvm.smin.i32(i32 %2, i32 %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1180001, i32 %3)
  %cmp8 = icmp slt i32 %3, 1180001
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %div = sdiv i32 %3, 20000
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1290000, i32 %3)
  %cmp.i = icmp ult i32 %3, 1290000
  br i1 %cmp.i, label %if.else.if.end_crit_edge, label %if.end.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500000, i32 %3)
  %cmp3.not.i = icmp ult i32 %3, 1500000
  br i1 %cmp3.not.i, label %for.body.i.preheader, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.i.preheader:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1360000, i32 %3)
  %cmp9.i = icmp eq i32 %3, 1360000
  br i1 %cmp9.i, label %for.body.i.preheader.if.end_crit_edge, label %if.end11.i

for.body.i.preheader.if.end_crit_edge:            ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end11.i:                                       ; preds = %for.body.i.preheader
  %4 = add nsw i32 %3, -1290001
  call void @__sanitizer_cov_trace_const_cmp4(i32 69999, i32 %4)
  %5 = icmp ult i32 %4, 69999
  br i1 %5, label %if.end11.i.if.end_crit_edge, label %for.inc.i

if.end11.i.if.end_crit_edge:                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.inc.i:                                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1430000, i32 %3)
  %cmp9.i.1 = icmp eq i32 %3, 1430000
  br i1 %cmp9.i.1, label %for.inc.i.if.end_crit_edge, label %if.end11.i.1

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end11.i.1:                                     ; preds = %for.inc.i
  %6 = add nsw i32 %3, -1360001
  call void @__sanitizer_cov_trace_const_cmp4(i32 69999, i32 %6)
  %7 = icmp ult i32 %6, 69999
  br i1 %7, label %if.end11.i.1.if.end_crit_edge, label %if.end11.i.2

if.end11.i.1.if.end_crit_edge:                    ; preds = %if.end11.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end11.i.2:                                     ; preds = %if.end11.i.1
  call void @__sanitizer_cov_trace_pc() #11
  %8 = add nsw i32 %3, -1430001
  call void @__sanitizer_cov_trace_const_cmp4(i32 69999, i32 %8)
  %9 = icmp ult i32 %8, 69999
  %phi.bo = select i1 %9, i32 62, i32 38
  br label %if.end

if.end:                                           ; preds = %if.end11.i.2, %if.end11.i.1.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %if.end11.i.if.end_crit_edge, %for.body.i.preheader.if.end_crit_edge, %if.end.i.if.end_crit_edge, %if.else.if.end_crit_edge, %if.then
  %ichg_reg_code.0 = phi i32 [ %div, %if.then ], [ 59, %if.else.if.end_crit_edge ], [ 63, %if.end.i.if.end_crit_edge ], [ 61, %for.body.i.preheader.if.end_crit_edge ], [ 60, %if.end11.i.if.end_crit_edge ], [ 62, %for.inc.i.if.end_crit_edge ], [ 61, %if.end11.i.1.if.end_crit_edge ], [ %phi.bo, %if.end11.i.2 ]
  %regmap = getelementptr inbounds %struct.bq256xx_device, ptr %bq, i32 0, i32 5
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 2, i32 noundef 63, i32 noundef %ichg_reg_code.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq25618_619_set_chrg_volt(ptr nocapture noundef readonly %bq, i32 noundef %vbatreg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vbatreg_max1 = getelementptr inbounds %struct.bq256xx_device, ptr %bq, i32 0, i32 12, i32 7
  %0 = ptrtoint ptr %vbatreg_max1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vbatreg_max1, align 4
  %2 = tail call i32 @llvm.smax.i32(i32 %vbatreg, i32 3504000)
  %3 = tail call i32 @llvm.smin.i32(i32 %2, i32 %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4300000, i32 %3)
  %cmp8 = icmp sgt i32 %3, 4300000
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add nsw i32 %3, -4300000
  %div18 = udiv i32 %sub, 10000
  %add = add nuw nsw i32 %div18, 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3504000, i32 %3)
  %cmp.i = icmp slt i32 %3, 3504000
  br i1 %cmp.i, label %if.else.if.end_crit_edge, label %if.end.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 4200000, i32 %3)
  %cmp3.not.i = icmp ult i32 %3, 4200000
  br i1 %cmp3.not.i, label %for.body.i.preheader, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.i.preheader:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3600000, i32 %3)
  %cmp9.i = icmp eq i32 %3, 3600000
  br i1 %cmp9.i, label %for.body.i.preheader.if.end_crit_edge, label %if.end11.i

for.body.i.preheader.if.end_crit_edge:            ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end11.i:                                       ; preds = %for.body.i.preheader
  %4 = add nsw i32 %3, -3504001
  call void @__sanitizer_cov_trace_const_cmp4(i32 95999, i32 %4)
  %5 = icmp ult i32 %4, 95999
  br i1 %5, label %if.end11.i.if.end_crit_edge, label %for.inc.i

if.end11.i.if.end_crit_edge:                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.inc.i:                                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3696000, i32 %3)
  %cmp9.i.1 = icmp eq i32 %3, 3696000
  br i1 %cmp9.i.1, label %for.inc.i.if.end_crit_edge, label %if.end11.i.1

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end11.i.1:                                     ; preds = %for.inc.i
  %6 = add nsw i32 %3, -3600001
  call void @__sanitizer_cov_trace_const_cmp4(i32 95999, i32 %6)
  %7 = icmp ult i32 %6, 95999
  br i1 %7, label %if.end11.i.1.if.end_crit_edge, label %for.inc.i.1

if.end11.i.1.if.end_crit_edge:                    ; preds = %if.end11.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.inc.i.1:                                      ; preds = %if.end11.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3800000, i32 %3)
  %cmp9.i.2 = icmp eq i32 %3, 3800000
  br i1 %cmp9.i.2, label %for.inc.i.1.if.end_crit_edge, label %if.end11.i.2

for.inc.i.1.if.end_crit_edge:                     ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end11.i.2:                                     ; preds = %for.inc.i.1
  %8 = add nsw i32 %3, -3696001
  call void @__sanitizer_cov_trace_const_cmp4(i32 103999, i32 %8)
  %9 = icmp ult i32 %8, 103999
  br i1 %9, label %if.end11.i.2.if.end_crit_edge, label %for.inc.i.2

if.end11.i.2.if.end_crit_edge:                    ; preds = %if.end11.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.inc.i.2:                                      ; preds = %if.end11.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3904000, i32 %3)
  %cmp9.i.3 = icmp eq i32 %3, 3904000
  br i1 %cmp9.i.3, label %for.inc.i.2.if.end_crit_edge, label %if.end11.i.3

for.inc.i.2.if.end_crit_edge:                     ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end11.i.3:                                     ; preds = %for.inc.i.2
  %10 = add nsw i32 %3, -3800001
  call void @__sanitizer_cov_trace_const_cmp4(i32 103999, i32 %10)
  %11 = icmp ult i32 %10, 103999
  br i1 %11, label %if.end11.i.3.if.end_crit_edge, label %for.inc.i.3

if.end11.i.3.if.end_crit_edge:                    ; preds = %if.end11.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.inc.i.3:                                      ; preds = %if.end11.i.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000000, i32 %3)
  %cmp9.i.4 = icmp eq i32 %3, 4000000
  br i1 %cmp9.i.4, label %for.inc.i.3.if.end_crit_edge, label %if.end11.i.4

for.inc.i.3.if.end_crit_edge:                     ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end11.i.4:                                     ; preds = %for.inc.i.3
  %12 = add nsw i32 %3, -3904001
  call void @__sanitizer_cov_trace_const_cmp4(i32 95999, i32 %12)
  %13 = icmp ult i32 %12, 95999
  br i1 %13, label %if.end11.i.4.if.end_crit_edge, label %for.inc.i.4

if.end11.i.4.if.end_crit_edge:                    ; preds = %if.end11.i.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.inc.i.4:                                      ; preds = %if.end11.i.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4100000, i32 %3)
  %cmp9.i.5 = icmp eq i32 %3, 4100000
  br i1 %cmp9.i.5, label %for.inc.i.4.if.end_crit_edge, label %if.end11.i.5

for.inc.i.4.if.end_crit_edge:                     ; preds = %for.inc.i.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end11.i.5:                                     ; preds = %for.inc.i.4
  %14 = add nsw i32 %3, -4000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 99999, i32 %14)
  %15 = icmp ult i32 %14, 99999
  br i1 %15, label %if.end11.i.5.if.end_crit_edge, label %for.inc.i.5

if.end11.i.5.if.end_crit_edge:                    ; preds = %if.end11.i.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.inc.i.5:                                      ; preds = %if.end11.i.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4150000, i32 %3)
  %cmp9.i.6 = icmp eq i32 %3, 4150000
  br i1 %cmp9.i.6, label %for.inc.i.5.if.end_crit_edge, label %if.end11.i.6

for.inc.i.5.if.end_crit_edge:                     ; preds = %for.inc.i.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end11.i.6:                                     ; preds = %for.inc.i.5
  %16 = add nsw i32 %3, -4100001
  call void @__sanitizer_cov_trace_const_cmp4(i32 49999, i32 %16)
  %17 = icmp ult i32 %16, 49999
  br i1 %17, label %if.end11.i.6.if.end_crit_edge, label %if.end11.i.7

if.end11.i.6.if.end_crit_edge:                    ; preds = %if.end11.i.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end11.i.7:                                     ; preds = %if.end11.i.6
  call void @__sanitizer_cov_trace_pc() #11
  %18 = add nsw i32 %3, -4150001
  call void @__sanitizer_cov_trace_const_cmp4(i32 49999, i32 %18)
  %19 = icmp ult i32 %18, 49999
  %spec.select = select i1 %19, i32 7, i32 -22
  br label %if.end

if.end:                                           ; preds = %if.end11.i.7, %if.end11.i.6.if.end_crit_edge, %for.inc.i.5.if.end_crit_edge, %if.end11.i.5.if.end_crit_edge, %for.inc.i.4.if.end_crit_edge, %if.end11.i.4.if.end_crit_edge, %for.inc.i.3.if.end_crit_edge, %if.end11.i.3.if.end_crit_edge, %for.inc.i.2.if.end_crit_edge, %if.end11.i.2.if.end_crit_edge, %for.inc.i.1.if.end_crit_edge, %if.end11.i.1.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %if.end11.i.if.end_crit_edge, %for.body.i.preheader.if.end_crit_edge, %if.end.i.if.end_crit_edge, %if.else.if.end_crit_edge, %if.then
  %vbatreg_reg_code.0 = phi i32 [ %add, %if.then ], [ -1, %if.else.if.end_crit_edge ], [ 8, %if.end.i.if.end_crit_edge ], [ 1, %for.body.i.preheader.if.end_crit_edge ], [ 0, %if.end11.i.if.end_crit_edge ], [ 2, %for.inc.i.if.end_crit_edge ], [ 1, %if.end11.i.1.if.end_crit_edge ], [ 3, %for.inc.i.1.if.end_crit_edge ], [ 2, %if.end11.i.2.if.end_crit_edge ], [ 4, %for.inc.i.2.if.end_crit_edge ], [ 3, %if.end11.i.3.if.end_crit_edge ], [ 5, %for.inc.i.3.if.end_crit_edge ], [ 4, %if.end11.i.4.if.end_crit_edge ], [ 6, %for.inc.i.4.if.end_crit_edge ], [ 5, %if.end11.i.5.if.end_crit_edge ], [ 7, %for.inc.i.5.if.end_crit_edge ], [ 6, %if.end11.i.6.if.end_crit_edge ], [ %spec.select, %if.end11.i.7 ]
  %regmap = getelementptr inbounds %struct.bq256xx_device, ptr %bq, i32 0, i32 5
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %shl = shl nsw i32 %vbatreg_reg_code.0, 3
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 4, i32 noundef 248, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq25618_619_set_term_curr(ptr nocapture noundef readonly %bq, i32 noundef %iterm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.smax.i32(i32 %iterm, i32 20000)
  %1 = tail call i32 @llvm.umin.i32(i32 %0, i32 260000)
  %sub = add nsw i32 %1, -20000
  %div12 = udiv i32 %sub, 20000
  %regmap = getelementptr inbounds %struct.bq256xx_device, ptr %bq, i32 0, i32 5
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 3, i32 noundef 15, i32 noundef %div12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq25618_619_set_prechrg_curr(ptr nocapture noundef readonly %bq, i32 noundef %iprechg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.smax.i32(i32 %iprechg, i32 20000)
  %1 = tail call i32 @llvm.umin.i32(i32 %0, i32 260000)
  %sub = add nsw i32 %1, -20000
  %div12 = udiv i32 %sub, 20000
  %shl = shl nuw nsw i32 %div12, 4
  %regmap = getelementptr inbounds %struct.bq256xx_device, ptr %bq, i32 0, i32 5
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 3, i32 noundef 240, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq25611d_get_chrg_volt(ptr nocapture noundef readonly %bq) #2 align 64 {
entry:
  %battery_volt_lim = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %battery_volt_lim) #9
  %0 = ptrtoint ptr %battery_volt_lim to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %battery_volt_lim, align 4, !annotation !126
  %regmap = getelementptr inbounds %struct.bq256xx_device, ptr %bq, i32 0, i32 5
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 4, ptr noundef nonnull %battery_volt_lim) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %battery_volt_lim to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %battery_volt_lim, align 4
  %and = lshr i32 %4, 3
  %shr = and i32 %and, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %shr)
  %cmp = icmp ugt i32 %shr, 8
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = mul nuw nsw i32 %shr, 10000
  %add = add nuw nsw i32 %5, 4210000
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr [9 x i32], ptr @bq25611d_vbatreg_values, i32 0, i32 %shr
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %if.then1 ], [ %7, %if.end2 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %battery_volt_lim) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq25611d_set_chrg_volt(ptr nocapture noundef readonly %bq, i32 noundef %vbatreg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vbatreg_max1 = getelementptr inbounds %struct.bq256xx_device, ptr %bq, i32 0, i32 12, i32 7
  %0 = ptrtoint ptr %vbatreg_max1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vbatreg_max1, align 4
  %2 = tail call i32 @llvm.smax.i32(i32 %vbatreg, i32 3494000)
  %3 = tail call i32 @llvm.smin.i32(i32 %2, i32 %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4290000, i32 %3)
  %cmp8 = icmp sgt i32 %3, 4290000
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add nsw i32 %3, -4290000
  %div18 = udiv i32 %sub, 10000
  %add = add nuw nsw i32 %div18, 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3494000, i32 %3)
  %cmp.i = icmp slt i32 %3, 3494000
  br i1 %cmp.i, label %if.else.if.end_crit_edge, label %if.end.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 4190000, i32 %3)
  %cmp3.not.i = icmp ult i32 %3, 4190000
  br i1 %cmp3.not.i, label %for.body.i.preheader, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.i.preheader:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3590000, i32 %3)
  %cmp9.i = icmp eq i32 %3, 3590000
  br i1 %cmp9.i, label %for.body.i.preheader.if.end_crit_edge, label %if.end11.i

for.body.i.preheader.if.end_crit_edge:            ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end11.i:                                       ; preds = %for.body.i.preheader
  %4 = add nsw i32 %3, -3494001
  call void @__sanitizer_cov_trace_const_cmp4(i32 95999, i32 %4)
  %5 = icmp ult i32 %4, 95999
  br i1 %5, label %if.end11.i.if.end_crit_edge, label %for.inc.i

if.end11.i.if.end_crit_edge:                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.inc.i:                                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3686000, i32 %3)
  %cmp9.i.1 = icmp eq i32 %3, 3686000
  br i1 %cmp9.i.1, label %for.inc.i.if.end_crit_edge, label %if.end11.i.1

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end11.i.1:                                     ; preds = %for.inc.i
  %6 = add nsw i32 %3, -3590001
  call void @__sanitizer_cov_trace_const_cmp4(i32 95999, i32 %6)
  %7 = icmp ult i32 %6, 95999
  br i1 %7, label %if.end11.i.1.if.end_crit_edge, label %for.inc.i.1

if.end11.i.1.if.end_crit_edge:                    ; preds = %if.end11.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.inc.i.1:                                      ; preds = %if.end11.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3790000, i32 %3)
  %cmp9.i.2 = icmp eq i32 %3, 3790000
  br i1 %cmp9.i.2, label %for.inc.i.1.if.end_crit_edge, label %if.end11.i.2

for.inc.i.1.if.end_crit_edge:                     ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end11.i.2:                                     ; preds = %for.inc.i.1
  %8 = add nsw i32 %3, -3686001
  call void @__sanitizer_cov_trace_const_cmp4(i32 103999, i32 %8)
  %9 = icmp ult i32 %8, 103999
  br i1 %9, label %if.end11.i.2.if.end_crit_edge, label %for.inc.i.2

if.end11.i.2.if.end_crit_edge:                    ; preds = %if.end11.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.inc.i.2:                                      ; preds = %if.end11.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3894000, i32 %3)
  %cmp9.i.3 = icmp eq i32 %3, 3894000
  br i1 %cmp9.i.3, label %for.inc.i.2.if.end_crit_edge, label %if.end11.i.3

for.inc.i.2.if.end_crit_edge:                     ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end11.i.3:                                     ; preds = %for.inc.i.2
  %10 = add nsw i32 %3, -3790001
  call void @__sanitizer_cov_trace_const_cmp4(i32 103999, i32 %10)
  %11 = icmp ult i32 %10, 103999
  br i1 %11, label %if.end11.i.3.if.end_crit_edge, label %for.inc.i.3

if.end11.i.3.if.end_crit_edge:                    ; preds = %if.end11.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.inc.i.3:                                      ; preds = %if.end11.i.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3990000, i32 %3)
  %cmp9.i.4 = icmp eq i32 %3, 3990000
  br i1 %cmp9.i.4, label %for.inc.i.3.if.end_crit_edge, label %if.end11.i.4

for.inc.i.3.if.end_crit_edge:                     ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end11.i.4:                                     ; preds = %for.inc.i.3
  %12 = add nsw i32 %3, -3894001
  call void @__sanitizer_cov_trace_const_cmp4(i32 95999, i32 %12)
  %13 = icmp ult i32 %12, 95999
  br i1 %13, label %if.end11.i.4.if.end_crit_edge, label %for.inc.i.4

if.end11.i.4.if.end_crit_edge:                    ; preds = %if.end11.i.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.inc.i.4:                                      ; preds = %if.end11.i.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4090000, i32 %3)
  %cmp9.i.5 = icmp eq i32 %3, 4090000
  br i1 %cmp9.i.5, label %for.inc.i.4.if.end_crit_edge, label %if.end11.i.5

for.inc.i.4.if.end_crit_edge:                     ; preds = %for.inc.i.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end11.i.5:                                     ; preds = %for.inc.i.4
  %14 = add nsw i32 %3, -3990001
  call void @__sanitizer_cov_trace_const_cmp4(i32 99999, i32 %14)
  %15 = icmp ult i32 %14, 99999
  br i1 %15, label %if.end11.i.5.if.end_crit_edge, label %for.inc.i.5

if.end11.i.5.if.end_crit_edge:                    ; preds = %if.end11.i.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.inc.i.5:                                      ; preds = %if.end11.i.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4140000, i32 %3)
  %cmp9.i.6 = icmp eq i32 %3, 4140000
  br i1 %cmp9.i.6, label %for.inc.i.5.if.end_crit_edge, label %if.end11.i.6

for.inc.i.5.if.end_crit_edge:                     ; preds = %for.inc.i.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end11.i.6:                                     ; preds = %for.inc.i.5
  %16 = add nsw i32 %3, -4090001
  call void @__sanitizer_cov_trace_const_cmp4(i32 49999, i32 %16)
  %17 = icmp ult i32 %16, 49999
  br i1 %17, label %if.end11.i.6.if.end_crit_edge, label %if.end11.i.7

if.end11.i.6.if.end_crit_edge:                    ; preds = %if.end11.i.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end11.i.7:                                     ; preds = %if.end11.i.6
  call void @__sanitizer_cov_trace_pc() #11
  %18 = add nsw i32 %3, -4140001
  call void @__sanitizer_cov_trace_const_cmp4(i32 49999, i32 %18)
  %19 = icmp ult i32 %18, 49999
  %spec.select = select i1 %19, i32 7, i32 -22
  br label %if.end

if.end:                                           ; preds = %if.end11.i.7, %if.end11.i.6.if.end_crit_edge, %for.inc.i.5.if.end_crit_edge, %if.end11.i.5.if.end_crit_edge, %for.inc.i.4.if.end_crit_edge, %if.end11.i.4.if.end_crit_edge, %for.inc.i.3.if.end_crit_edge, %if.end11.i.3.if.end_crit_edge, %for.inc.i.2.if.end_crit_edge, %if.end11.i.2.if.end_crit_edge, %for.inc.i.1.if.end_crit_edge, %if.end11.i.1.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %if.end11.i.if.end_crit_edge, %for.body.i.preheader.if.end_crit_edge, %if.end.i.if.end_crit_edge, %if.else.if.end_crit_edge, %if.then
  %vbatreg_reg_code.0 = phi i32 [ %add, %if.then ], [ -1, %if.else.if.end_crit_edge ], [ 8, %if.end.i.if.end_crit_edge ], [ 1, %for.body.i.preheader.if.end_crit_edge ], [ 0, %if.end11.i.if.end_crit_edge ], [ 2, %for.inc.i.if.end_crit_edge ], [ 1, %if.end11.i.1.if.end_crit_edge ], [ 3, %for.inc.i.1.if.end_crit_edge ], [ 2, %if.end11.i.2.if.end_crit_edge ], [ 4, %for.inc.i.2.if.end_crit_edge ], [ 3, %if.end11.i.3.if.end_crit_edge ], [ 5, %for.inc.i.3.if.end_crit_edge ], [ 4, %if.end11.i.4.if.end_crit_edge ], [ 6, %for.inc.i.4.if.end_crit_edge ], [ 5, %if.end11.i.5.if.end_crit_edge ], [ 7, %for.inc.i.5.if.end_crit_edge ], [ 6, %if.end11.i.6.if.end_crit_edge ], [ %spec.select, %if.end11.i.7 ]
  %regmap = getelementptr inbounds %struct.bq256xx_device, ptr %bq, i32 0, i32 5
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %shl = shl nsw i32 %vbatreg_reg_code.0, 3
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 4, i32 noundef 248, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  ret i32 %call.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @bq256xx_is_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %reg)
  %0 = icmp ult i32 %reg, 11
  %switch.cast = trunc i32 %reg to i11
  %switch.downshift = lshr i11 -255, %switch.cast
  %1 = and i11 %switch.downshift, 1
  %2 = sext i11 %1 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %switch.masked = icmp ne i11 %1, 0
  %retval.0 = select i1 %0, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq256xx_get_charger_property(ptr noundef %psy, i32 noundef %psp, ptr noundef writeonly %val) #2 align 64 {
entry:
  %charger_status_0.i = alloca i32, align 4
  %charger_status_1.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #9
  %lock = getelementptr inbounds %struct.bq256xx_device, ptr %call, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %charger_status_0.i) #9
  %0 = ptrtoint ptr %charger_status_0.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %charger_status_0.i, align 4, !annotation !126
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %charger_status_1.i) #9
  %1 = ptrtoint ptr %charger_status_1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %charger_status_1.i, align 4, !annotation !126
  %regmap.i = getelementptr inbounds %struct.bq256xx_device, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %3, i32 noundef 8, ptr noundef nonnull %charger_status_0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.bq256xx_get_state.exit.thread_crit_edge

entry.bq256xx_get_state.exit.thread_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq256xx_get_state.exit.thread

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call2.i = call i32 @regmap_read(ptr noundef %5, i32 noundef 9, ptr noundef nonnull %charger_status_1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end, label %if.end.i.bq256xx_get_state.exit.thread_crit_edge

if.end.i.bq256xx_get_state.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bq256xx_get_state.exit.thread

bq256xx_get_state.exit.thread:                    ; preds = %if.end.i.bq256xx_get_state.exit.thread_crit_edge, %entry.bq256xx_get_state.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call2.i, %if.end.i.bq256xx_get_state.exit.thread_crit_edge ], [ %call.i, %entry.bq256xx_get_state.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %charger_status_1.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %charger_status_0.i) #9
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %6 = ptrtoint ptr %charger_status_0.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %charger_status_0.i, align 4
  %8 = trunc i32 %7 to i8
  %conv.i = and i8 %8, -32
  %conv7.i = and i8 %8, 24
  %9 = ptrtoint ptr %charger_status_1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %charger_status_1.i, align 4
  %11 = trunc i32 %10 to i8
  %conv13.i = and i8 %11, 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %charger_status_1.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %charger_status_0.i) #9
  call void @mutex_unlock(ptr noundef %lock) #9
  %12 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %psp, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb23
    i32 65, label %sw.bb44
    i32 1, label %sw.bb63
    i32 74, label %sw.bb72
    i32 73, label %sw.bb73
    i32 4, label %sw.bb74
    i32 39, label %sw.bb77
    i32 38, label %sw.bb84
    i32 31, label %sw.bb91
    i32 29, label %sw.bb98
    i32 67, label %sw.bb105
    i32 68, label %sw.bb112
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %13 = zext i8 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.41)
  switch i8 %conv.i, label %if.else [
    i8 0, label %sw.bb.if.then8_crit_edge
    i8 -32, label %sw.bb.if.then8_crit_edge208
  ]

sw.bb.if.then8_crit_edge208:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

sw.bb.if.then8_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then8:                                         ; preds = %sw.bb.if.then8_crit_edge, %sw.bb.if.then8_crit_edge208
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %val, align 4
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  %trunc207 = trunc i8 %conv7.i to i5
  %15 = zext i5 %trunc207 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.42)
  switch i5 %trunc207, label %if.else19 [
    i5 0, label %if.then12
    i5 -8, label %if.then18
  ]

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3, ptr %val, align 4
  br label %cleanup

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4, ptr %val, align 4
  br label %cleanup

if.else19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %val, align 4
  br label %cleanup

sw.bb23:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %tobool24.not = icmp sgt i8 %11, -1
  br i1 %tobool24.not, label %if.else26, label %if.then25

if.then25:                                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 7, ptr %val, align 4
  br label %cleanup

if.else26:                                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv13.i)
  %tobool27.not = icmp eq i8 %conv13.i, 0
  br i1 %tobool27.not, label %if.else29, label %if.then28

if.then28:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4, ptr %val, align 4
  br label %cleanup

if.else29:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %conv7.i)
  %cond = icmp eq i8 %conv7.i, 16
  br i1 %cond, label %sw.bb32, label %if.else29.sw.epilog_crit_edge

if.else29.sw.epilog_crit_edge:                    ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 5, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb32, %if.else29.sw.epilog_crit_edge
  %trunc = trunc i32 %10 to i3
  %22 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.43)
  switch i3 %trunc, label %sw.default40 [
    i3 2, label %sw.bb36
    i3 3, label %sw.bb37
    i3 -3, label %sw.bb38
    i3 -2, label %sw.bb39
  ]

sw.bb36:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 11, ptr %val, align 4
  br label %cleanup

sw.bb37:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 12, ptr %val, align 4
  br label %cleanup

sw.bb38:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 6, ptr %val, align 4
  br label %cleanup

sw.bb39:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 13, ptr %val, align 4
  br label %cleanup

sw.default40:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %val, align 4
  br label %cleanup

sw.bb44:                                          ; preds = %if.end
  %chip_info = getelementptr inbounds %struct.bq256xx_device, ptr %call, i32 0, i32 13
  %28 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chip_info, align 4
  %has_usb_detect = getelementptr inbounds %struct.bq256xx_chip_info, ptr %29, i32 0, i32 22
  %30 = ptrtoint ptr %has_usb_detect to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %has_usb_detect, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool45.not = icmp eq i8 %31, 0
  br i1 %tobool45.not, label %if.else55, label %if.then46

if.then46:                                        ; preds = %sw.bb44
  %conv48 = zext i8 %conv.i to i32
  %32 = add nsw i32 %conv48, -32
  %33 = lshr exact i32 %32, 5
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %33, label %sw.default53 [
    i32 0, label %sw.bb49
    i32 1, label %sw.bb50
    i32 2, label %sw.bb51
    i32 6, label %sw.bb52
  ]

sw.bb49:                                          ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %val, align 4
  br label %cleanup

sw.bb50:                                          ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 3, ptr %val, align 4
  br label %cleanup

sw.bb51:                                          ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2, ptr %val, align 4
  br label %cleanup

sw.bb52:                                          ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 4, ptr %val, align 4
  br label %cleanup

sw.default53:                                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %val, align 4
  br label %cleanup

if.else55:                                        ; preds = %sw.bb44
  %40 = zext i8 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.45)
  switch i8 %conv.i, label %sw.default60 [
    i8 32, label %sw.bb58
    i8 -32, label %sw.bb59
  ]

sw.bb58:                                          ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %val, align 4
  br label %cleanup

sw.bb59:                                          ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 4, ptr %val, align 4
  br label %cleanup

sw.default60:                                     ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %val, align 4
  br label %cleanup

sw.bb63:                                          ; preds = %if.end
  %44 = lshr exact i8 %conv7.i, 3
  %45 = zext i8 %44 to i32
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %45, label %sw.bb63.unreachabledefault [
    i32 0, label %sw.bb66
    i32 1, label %sw.bb67
    i32 2, label %sw.bb68
    i32 3, label %sw.bb69
  ]

sw.bb66:                                          ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %val, align 4
  br label %cleanup

sw.bb67:                                          ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2, ptr %val, align 4
  br label %cleanup

sw.bb68:                                          ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 3, ptr %val, align 4
  br label %cleanup

sw.bb69:                                          ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 2, ptr %val, align 4
  br label %cleanup

sw.bb63.unreachabledefault:                       ; preds = %sw.bb63
  unreachable

sw.bb72:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.33, ptr %val, align 4
  br label %cleanup

sw.bb73:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %model_name = getelementptr inbounds %struct.bq256xx_device, ptr %call, i32 0, i32 11
  %52 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %model_name, ptr %val, align 4
  br label %cleanup

sw.bb74:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %53 = lshr i32 %7, 2
  %54 = and i32 %53, 1
  %55 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %val, align 4
  br label %cleanup

sw.bb77:                                          ; preds = %if.end
  %chip_info78 = getelementptr inbounds %struct.bq256xx_device, ptr %call, i32 0, i32 13
  %56 = ptrtoint ptr %chip_info78 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %chip_info78, align 4
  %bq256xx_get_vindpm = getelementptr inbounds %struct.bq256xx_chip_info, ptr %57, i32 0, i32 7
  %58 = ptrtoint ptr %bq256xx_get_vindpm to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bq256xx_get_vindpm, align 4
  %call79 = call i32 %59(ptr noundef %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80 = icmp slt i32 %call79, 0
  br i1 %cmp80, label %sw.bb77.cleanup_crit_edge, label %if.end83

sw.bb77.cleanup_crit_edge:                        ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end83:                                         ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %call79, ptr %val, align 4
  br label %cleanup

sw.bb84:                                          ; preds = %if.end
  %chip_info85 = getelementptr inbounds %struct.bq256xx_device, ptr %call, i32 0, i32 13
  %61 = ptrtoint ptr %chip_info85 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %chip_info85, align 4
  %bq256xx_get_iindpm = getelementptr inbounds %struct.bq256xx_chip_info, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %bq256xx_get_iindpm to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bq256xx_get_iindpm, align 4
  %call86 = call i32 %64(ptr noundef %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %cmp87 = icmp slt i32 %call86, 0
  br i1 %cmp87, label %sw.bb84.cleanup_crit_edge, label %if.end90

sw.bb84.cleanup_crit_edge:                        ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end90:                                         ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %call86, ptr %val, align 4
  br label %cleanup

sw.bb91:                                          ; preds = %if.end
  %chip_info92 = getelementptr inbounds %struct.bq256xx_device, ptr %call, i32 0, i32 13
  %66 = ptrtoint ptr %chip_info92 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %chip_info92, align 4
  %bq256xx_get_vbatreg = getelementptr inbounds %struct.bq256xx_chip_info, ptr %67, i32 0, i32 4
  %68 = ptrtoint ptr %bq256xx_get_vbatreg to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bq256xx_get_vbatreg, align 4
  %call93 = call i32 %69(ptr noundef %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp94 = icmp slt i32 %call93, 0
  br i1 %cmp94, label %sw.bb91.cleanup_crit_edge, label %if.end97

sw.bb91.cleanup_crit_edge:                        ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end97:                                         ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %call93, ptr %val, align 4
  br label %cleanup

sw.bb98:                                          ; preds = %if.end
  %chip_info99 = getelementptr inbounds %struct.bq256xx_device, ptr %call, i32 0, i32 13
  %71 = ptrtoint ptr %chip_info99 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %chip_info99, align 4
  %bq256xx_get_ichg = getelementptr inbounds %struct.bq256xx_chip_info, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %bq256xx_get_ichg to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bq256xx_get_ichg, align 4
  %call100 = call i32 %74(ptr noundef %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %cmp101 = icmp slt i32 %call100, 0
  br i1 %cmp101, label %sw.bb98.cleanup_crit_edge, label %if.end104

sw.bb98.cleanup_crit_edge:                        ; preds = %sw.bb98
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end104:                                        ; preds = %sw.bb98
  call void @__sanitizer_cov_trace_pc() #11
  %75 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %call100, ptr %val, align 4
  br label %cleanup

sw.bb105:                                         ; preds = %if.end
  %chip_info106 = getelementptr inbounds %struct.bq256xx_device, ptr %call, i32 0, i32 13
  %76 = ptrtoint ptr %chip_info106 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %chip_info106, align 4
  %bq256xx_get_iprechg = getelementptr inbounds %struct.bq256xx_chip_info, ptr %77, i32 0, i32 6
  %78 = ptrtoint ptr %bq256xx_get_iprechg to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bq256xx_get_iprechg, align 4
  %call107 = call i32 %79(ptr noundef %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %cmp108 = icmp slt i32 %call107, 0
  br i1 %cmp108, label %sw.bb105.cleanup_crit_edge, label %if.end111

sw.bb105.cleanup_crit_edge:                       ; preds = %sw.bb105
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end111:                                        ; preds = %sw.bb105
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %call107, ptr %val, align 4
  br label %cleanup

sw.bb112:                                         ; preds = %if.end
  %chip_info113 = getelementptr inbounds %struct.bq256xx_device, ptr %call, i32 0, i32 13
  %81 = ptrtoint ptr %chip_info113 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %chip_info113, align 4
  %bq256xx_get_iterm = getelementptr inbounds %struct.bq256xx_chip_info, ptr %82, i32 0, i32 5
  %83 = ptrtoint ptr %bq256xx_get_iterm to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bq256xx_get_iterm, align 4
  %call114 = call i32 %84(ptr noundef %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %cmp115 = icmp slt i32 %call114, 0
  br i1 %cmp115, label %sw.bb112.cleanup_crit_edge, label %if.end118

sw.bb112.cleanup_crit_edge:                       ; preds = %sw.bb112
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end118:                                        ; preds = %sw.bb112
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %call114, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end118, %sw.bb112.cleanup_crit_edge, %if.end111, %sw.bb105.cleanup_crit_edge, %if.end104, %sw.bb98.cleanup_crit_edge, %if.end97, %sw.bb91.cleanup_crit_edge, %if.end90, %sw.bb84.cleanup_crit_edge, %if.end83, %sw.bb77.cleanup_crit_edge, %sw.bb74, %sw.bb73, %sw.bb72, %sw.bb69, %sw.bb68, %sw.bb67, %sw.bb66, %sw.default60, %sw.bb59, %sw.bb58, %sw.default53, %sw.bb52, %sw.bb51, %sw.bb50, %sw.bb49, %sw.default40, %sw.bb39, %sw.bb38, %sw.bb37, %sw.bb36, %if.then28, %if.then25, %if.else19, %if.then18, %if.then12, %if.then8, %if.end.cleanup_crit_edge, %bq256xx_get_state.exit.thread
  %retval.0 = phi i32 [ %call79, %sw.bb77.cleanup_crit_edge ], [ %call86, %sw.bb84.cleanup_crit_edge ], [ %call93, %sw.bb91.cleanup_crit_edge ], [ %call100, %sw.bb98.cleanup_crit_edge ], [ %call107, %sw.bb105.cleanup_crit_edge ], [ %call114, %sw.bb112.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call114, %if.end118 ], [ %call107, %if.end111 ], [ %call100, %if.end104 ], [ %call93, %if.end97 ], [ %call86, %if.end90 ], [ %call79, %if.end83 ], [ 0, %sw.bb74 ], [ 0, %sw.bb73 ], [ 0, %sw.bb72 ], [ 0, %sw.bb69 ], [ 0, %sw.bb68 ], [ 0, %sw.bb67 ], [ 0, %sw.bb66 ], [ 0, %sw.default53 ], [ 0, %sw.bb52 ], [ 0, %sw.bb51 ], [ 0, %sw.bb50 ], [ 0, %sw.bb49 ], [ 0, %sw.default60 ], [ 0, %sw.bb59 ], [ 0, %sw.bb58 ], [ 0, %if.then25 ], [ 0, %if.then28 ], [ 0, %sw.default40 ], [ 0, %sw.bb39 ], [ 0, %sw.bb38 ], [ 0, %sw.bb37 ], [ 0, %sw.bb36 ], [ 0, %if.then8 ], [ 0, %if.then12 ], [ 0, %if.then18 ], [ 0, %if.else19 ], [ %retval.0.i.ph, %bq256xx_get_state.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq256xx_set_charger_property(ptr noundef %psy, i32 noundef %prop, ptr nocapture noundef readonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #9
  %0 = zext i32 %prop to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %prop, label %entry.sw.epilog_crit_edge [
    i32 38, label %sw.bb
    i32 39, label %sw.bb26
    i32 31, label %sw.bb2
    i32 29, label %sw.bb8
    i32 67, label %sw.bb14
    i32 68, label %sw.bb20
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %chip_info = getelementptr inbounds %struct.bq256xx_device, ptr %call, i32 0, i32 13
  %1 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip_info, align 4
  %bq256xx_set_iindpm = getelementptr inbounds %struct.bq256xx_chip_info, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %bq256xx_set_iindpm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bq256xx_set_iindpm, align 4
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %call1 = tail call i32 %4(ptr noundef %call, i32 noundef %6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %chip_info3 = getelementptr inbounds %struct.bq256xx_device, ptr %call, i32 0, i32 13
  %7 = ptrtoint ptr %chip_info3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip_info3, align 4
  %bq256xx_set_vbatreg = getelementptr inbounds %struct.bq256xx_chip_info, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %bq256xx_set_vbatreg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bq256xx_set_vbatreg, align 4
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %call4 = tail call i32 %10(ptr noundef %call, i32 noundef %12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %sw.bb2.sw.epilog_crit_edge, label %sw.bb2.cleanup_crit_edge

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %chip_info9 = getelementptr inbounds %struct.bq256xx_device, ptr %call, i32 0, i32 13
  %13 = ptrtoint ptr %chip_info9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip_info9, align 4
  %bq256xx_set_ichg = getelementptr inbounds %struct.bq256xx_chip_info, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %bq256xx_set_ichg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bq256xx_set_ichg, align 4
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  %call10 = tail call i32 %16(ptr noundef %call, i32 noundef %18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %sw.bb8.sw.epilog_crit_edge, label %sw.bb8.cleanup_crit_edge

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb8.sw.epilog_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %chip_info15 = getelementptr inbounds %struct.bq256xx_device, ptr %call, i32 0, i32 13
  %19 = ptrtoint ptr %chip_info15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chip_info15, align 4
  %bq256xx_set_iprechg = getelementptr inbounds %struct.bq256xx_chip_info, ptr %20, i32 0, i32 12
  %21 = ptrtoint ptr %bq256xx_set_iprechg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bq256xx_set_iprechg, align 4
  %23 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val, align 4
  %call16 = tail call i32 %22(ptr noundef %call, i32 noundef %24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %sw.bb14.sw.epilog_crit_edge, label %sw.bb14.cleanup_crit_edge

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb14.sw.epilog_crit_edge:                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  %chip_info21 = getelementptr inbounds %struct.bq256xx_device, ptr %call, i32 0, i32 13
  %25 = ptrtoint ptr %chip_info21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chip_info21, align 4
  %bq256xx_set_iterm = getelementptr inbounds %struct.bq256xx_chip_info, ptr %26, i32 0, i32 11
  %27 = ptrtoint ptr %bq256xx_set_iterm to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bq256xx_set_iterm, align 4
  %29 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val, align 4
  %call22 = tail call i32 %28(ptr noundef %call, i32 noundef %30) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %sw.bb20.sw.epilog_crit_edge, label %sw.bb20.cleanup_crit_edge

sw.bb20.cleanup_crit_edge:                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb20.sw.epilog_crit_edge:                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  %chip_info27 = getelementptr inbounds %struct.bq256xx_device, ptr %call, i32 0, i32 13
  %31 = ptrtoint ptr %chip_info27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chip_info27, align 4
  %bq256xx_set_vindpm = getelementptr inbounds %struct.bq256xx_chip_info, ptr %32, i32 0, i32 13
  %33 = ptrtoint ptr %bq256xx_set_vindpm to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bq256xx_set_vindpm, align 4
  %35 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val, align 4
  %call28 = tail call i32 %34(ptr noundef %call, i32 noundef %36) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %sw.bb26.sw.epilog_crit_edge, label %sw.bb26.cleanup_crit_edge

sw.bb26.cleanup_crit_edge:                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb26.sw.epilog_crit_edge:                      ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb26.sw.epilog_crit_edge, %sw.bb20.sw.epilog_crit_edge, %sw.bb14.sw.epilog_crit_edge, %sw.bb8.sw.epilog_crit_edge, %sw.bb2.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb20.sw.epilog_crit_edge ], [ 0, %sw.bb14.sw.epilog_crit_edge ], [ 0, %sw.bb8.sw.epilog_crit_edge ], [ 0, %sw.bb2.sw.epilog_crit_edge ], [ 0, %sw.bb26.sw.epilog_crit_edge ], [ 0, %sw.bb.sw.epilog_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb26.cleanup_crit_edge, %sw.bb20.cleanup_crit_edge, %sw.bb14.cleanup_crit_edge, %sw.bb8.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ %call1, %sw.bb.cleanup_crit_edge ], [ %call4, %sw.bb2.cleanup_crit_edge ], [ %call10, %sw.bb8.cleanup_crit_edge ], [ %call16, %sw.bb14.cleanup_crit_edge ], [ %call22, %sw.bb20.cleanup_crit_edge ], [ %call28, %sw.bb26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bq256xx_property_is_writeable(ptr nocapture noundef readnone %psy, i32 noundef %prop) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %prop to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %prop, label %sw.default [
    i32 38, label %entry.return_crit_edge
    i32 31, label %entry.return_crit_edge1
    i32 29, label %entry.return_crit_edge2
    i32 67, label %entry.return_crit_edge3
    i32 68, label %entry.return_crit_edge4
    i32 0, label %entry.return_crit_edge5
    i32 39, label %entry.return_crit_edge6
  ]

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6
  %retval.0 = phi i32 [ 0, %sw.default ], [ 1, %entry.return_crit_edge ], [ 1, %entry.return_crit_edge1 ], [ 1, %entry.return_crit_edge2 ], [ 1, %entry.return_crit_edge3 ], [ 1, %entry.return_crit_edge4 ], [ 1, %entry.return_crit_edge5 ], [ 1, %entry.return_crit_edge6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq256xx_get_battery_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #9
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 30, label %sw.bb
    i32 32, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ichg_max = getelementptr inbounds %struct.bq256xx_device, ptr %call, i32 0, i32 12, i32 6
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %vbatreg_max = getelementptr inbounds %struct.bq256xx_device, ptr %call, i32 0, i32 12, i32 7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %storemerge.in = phi ptr [ %vbatreg_max, %sw.bb1 ], [ %ichg_max, %sw.bb ]
  %1 = ptrtoint ptr %storemerge.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %storemerge = load i32, ptr %storemerge.in, align 4
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %storemerge, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_get_battery_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_put_battery_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !91, !93, !95, !97, !99, !101, !103, !105, !106, !107, !108, !109, !111, !113, !115}
!llvm.module.flags = !{!117, !118, !119, !120, !121, !122, !123, !124}
!llvm.ident = !{!125}

!0 = !{ptr @__initcall__kmod_bq256xx_charger__341_1750_bq256xx_driver_init6, !1, !"__initcall__kmod_bq256xx_charger__341_1750_bq256xx_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/bq256xx_charger.c", i32 1750, i32 1}
!2 = !{ptr @__exitcall_bq256xx_driver_exit, !1, !"__exitcall_bq256xx_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author342, !4, !"__UNIQUE_ID_author342", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/bq256xx_charger.c", i32 1752, i32 1}
!5 = !{ptr @__UNIQUE_ID_description343, !6, !"__UNIQUE_ID_description343", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/bq256xx_charger.c", i32 1753, i32 1}
!7 = !{ptr @__UNIQUE_ID_file344, !8, !"__UNIQUE_ID_file344", i1 false, i1 false}
!8 = !{!"../drivers/power/supply/bq256xx_charger.c", i32 1754, i32 1}
!9 = !{ptr @__UNIQUE_ID_license345, !8, !"__UNIQUE_ID_license345", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/bq256xx_charger.c", i32 1743, i32 11}
!12 = !{ptr @bq256xx_driver, !13, !"bq256xx_driver", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/bq256xx_charger.c", i32 1741, i32 26}
!14 = !{ptr @bq256xx_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/bq256xx_charger.c", i32 1639, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @bq256xx_probe._key, !18, !"_key", i1 false, i1 false}
!18 = !{!"../drivers/power/supply/bq256xx_charger.c", i32 1643, i32 15}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/power/supply/bq256xx_charger.c", i32 1647, i32 3}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @bq256xx_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @bq256xx_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/power/supply/bq256xx_charger.c", i32 1655, i32 3}
!30 = !{ptr @bq256xx_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @bq256xx_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @bq256xx_probe.__key.11, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/power/supply/bq256xx_charger.c", i32 1666, i32 3}
!34 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @bq256xx_probe.__key.13, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/power/supply/bq256xx_charger.c", i32 1673, i32 3}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/power/supply/bq256xx_charger.c", i32 1685, i32 4}
!39 = !{ptr @bq256xx_probe._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @bq256xx_probe._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/power/supply/bq256xx_charger.c", i32 1692, i32 3}
!43 = !{ptr @bq256xx_probe._entry.17, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @bq256xx_probe._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/power/supply/bq256xx_charger.c", i32 1698, i32 3}
!47 = !{ptr @bq256xx_probe._entry.20, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @bq256xx_probe._entry_ptr.22, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @bq256xx_chip_info_tbl, !50, !"bq256xx_chip_info_tbl", i1 false, i1 false}
!50 = !{!"../drivers/power/supply/bq256xx_charger.c", i32 1272, i32 39}
!51 = !{ptr @bq25600_regmap_config, !52, !"bq25600_regmap_config", i1 false, i1 false}
!52 = !{!"../drivers/power/supply/bq256xx_charger.c", i32 1239, i32 35}
!53 = !{ptr @bq2560x_reg_defs, !54, !"bq2560x_reg_defs", i1 false, i1 false}
!54 = !{!"../drivers/power/supply/bq256xx_charger.c", i32 386, i32 27}
!55 = !{ptr @bq25618_619_regmap_config, !56, !"bq25618_619_regmap_config", i1 false, i1 false}
!56 = !{!"../drivers/power/supply/bq256xx_charger.c", i32 1261, i32 35}
!57 = !{ptr @bq25618_619_reg_defs, !58, !"bq25618_619_reg_defs", i1 false, i1 false}
!58 = !{!"../drivers/power/supply/bq256xx_charger.c", i32 410, i32 27}
!59 = !{ptr @bq25618_619_ichg_values, !60, !"bq25618_619_ichg_values", i1 false, i1 false}
!60 = !{!"../drivers/power/supply/bq256xx_charger.c", i32 321, i32 18}
!61 = !{ptr @bq25618_619_vbatreg_values, !62, !"bq25618_619_vbatreg_values", i1 false, i1 false}
!62 = !{!"../drivers/power/supply/bq256xx_charger.c", i32 316, i32 18}
!63 = !{ptr @bq25611d_regmap_config, !64, !"bq25611d_regmap_config", i1 false, i1 false}
!64 = !{!"../drivers/power/supply/bq256xx_charger.c", i32 1250, i32 35}
!65 = !{ptr @bq25611d_reg_defs, !66, !"bq25611d_reg_defs", i1 false, i1 false}
!66 = !{!"../drivers/power/supply/bq256xx_charger.c", i32 397, i32 27}
!67 = !{ptr @bq25611d_vbatreg_values, !68, !"bq25611d_vbatreg_values", i1 false, i1 false}
!68 = !{!"../drivers/power/supply/bq256xx_charger.c", i32 311, i32 18}
!69 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/power/supply/bq256xx_charger.c", i32 1598, i32 42}
!71 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/power/supply/bq256xx_charger.c", i32 1608, i32 12}
!73 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/power/supply/bq256xx_charger.c", i32 1614, i32 12}
!75 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/power/supply/bq256xx_charger.c", i32 381, i32 3}
!77 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @bq256xx_usb_work._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @bq256xx_usb_work._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/power/supply/bq256xx_charger.c", i32 1491, i32 3}
!82 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @bq256xx_power_supply_init._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @bq256xx_power_supply_init._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/power/supply/bq256xx_charger.c", i32 1499, i32 3}
!87 = !{ptr @bq256xx_power_supply_init._entry.30, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @bq256xx_power_supply_init._entry_ptr.32, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @bq256xx_power_supply_desc, !90, !"bq256xx_power_supply_desc", i1 false, i1 false}
!90 = !{!"../drivers/power/supply/bq256xx_charger.c", i32 1206, i32 39}
!91 = !{ptr @bq256xx_usb_type, !92, !"bq256xx_usb_type", i1 false, i1 false}
!92 = !{!"../drivers/power/supply/bq256xx_charger.c", i32 325, i32 35}
!93 = !{ptr @bq256xx_power_supply_props, !94, !"bq256xx_power_supply_props", i1 false, i1 false}
!94 = !{!"../drivers/power/supply/bq256xx_charger.c", i32 1168, i32 35}
!95 = !{ptr @.str.33, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/power/supply/bq256xx_charger.c", i32 1073, i32 17}
!97 = !{ptr @.str.34, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/power/supply/bq256xx_charger.c", i32 1219, i32 12}
!99 = !{ptr @bq256xx_battery_desc, !100, !"bq256xx_battery_desc", i1 false, i1 false}
!100 = !{!"../drivers/power/supply/bq256xx_charger.c", i32 1218, i32 33}
!101 = !{ptr @bq256xx_battery_props, !102, !"bq256xx_battery_props", i1 false, i1 false}
!102 = !{!"../drivers/power/supply/bq256xx_charger.c", i32 1184, i32 35}
!103 = !{ptr @.str.35, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/power/supply/bq256xx_charger.c", i32 1530, i32 3}
!105 = !{ptr @.str.36, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.37, !104, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @bq256xx_hw_init._entry, !104, !"_entry", i1 false, i1 false}
!108 = !{ptr @bq256xx_hw_init._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!109 = distinct !{null, !110, !"bq256xx_watchdog_time", i1 false, i1 false}
!110 = !{!"../drivers/power/supply/bq256xx_charger.c", i32 307, i32 12}
!111 = !{ptr @bq256xx_of_match, !112, !"bq256xx_of_match", i1 false, i1 false}
!112 = !{!"../drivers/power/supply/bq256xx_charger.c", i32 1717, i32 34}
!113 = !{ptr @bq256xx_acpi_match, !114, !"bq256xx_acpi_match", i1 false, i1 false}
!114 = !{!"../drivers/power/supply/bq256xx_charger.c", i32 1729, i32 36}
!115 = !{ptr @bq256xx_i2c_ids, !116, !"bq256xx_i2c_ids", i1 false, i1 false}
!116 = !{!"../drivers/power/supply/bq256xx_charger.c", i32 1705, i32 35}
!117 = !{i32 1, !"wchar_size", i32 2}
!118 = !{i32 1, !"min_enum_size", i32 4}
!119 = !{i32 8, !"branch-target-enforcement", i32 0}
!120 = !{i32 8, !"sign-return-address", i32 0}
!121 = !{i32 8, !"sign-return-address-all", i32 0}
!122 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!123 = !{i32 7, !"uwtable", i32 1}
!124 = !{i32 7, !"frame-pointer", i32 2}
!125 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!126 = !{!"auto-init"}
!127 = !{i8 0, i8 2}
