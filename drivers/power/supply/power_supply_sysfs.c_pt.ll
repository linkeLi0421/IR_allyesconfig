; ModuleID = '/llk/IR_all_yes/drivers/power/supply/power_supply_sysfs.c_pt.bc'
source_filename = "../drivers/power/supply/power_supply_sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+power_supply_charge_behaviour_show\22, \22a\22\09"
module asm "\09.weak\09__crc_power_supply_charge_behaviour_show\09\09\09\09"
module asm "\09.long\09__crc_power_supply_charge_behaviour_show\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_power_supply_charge_behaviour_show:\09\09\09\09\09"
module asm "\09.asciz \09\22power_supply_charge_behaviour_show\22\09\09\09\09\09"
module asm "__kstrtabns_power_supply_charge_behaviour_show:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+power_supply_charge_behaviour_parse\22, \22a\22\09"
module asm "\09.weak\09__crc_power_supply_charge_behaviour_parse\09\09\09\09"
module asm "\09.long\09__crc_power_supply_charge_behaviour_parse\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_power_supply_charge_behaviour_parse:\09\09\09\09\09"
module asm "\09.asciz \09\22power_supply_charge_behaviour_parse\22\09\09\09\09\09"
module asm "__kstrtabns_power_supply_charge_behaviour_parse:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.power_supply_attr = type { ptr, [31 x i8], %struct.device_attribute, ptr, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%union.power_supply_propval = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }

@power_supply_attr_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @power_supply_attr_group, ptr null], [24 x i8] zeroinitializer }, align 32
@power_supply_attrs = internal global { [76 x %struct.power_supply_attr], [1344 x i8] } { [76 x %struct.power_supply_attr] [%struct.power_supply_attr { ptr @.str.14, [31 x i8] c"STATUS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr @POWER_SUPPLY_STATUS_TEXT, i32 5 }, %struct.power_supply_attr { ptr @.str.15, [31 x i8] c"CHARGE_TYPE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr @POWER_SUPPLY_CHARGE_TYPE_TEXT, i32 8 }, %struct.power_supply_attr { ptr @.str.16, [31 x i8] c"HEALTH\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr @POWER_SUPPLY_HEALTH_TEXT, i32 15 }, %struct.power_supply_attr { ptr @.str.17, [31 x i8] c"PRESENT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.18, [31 x i8] c"ONLINE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.19, [31 x i8] c"AUTHENTIC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.20, [31 x i8] c"TECHNOLOGY\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr @POWER_SUPPLY_TECHNOLOGY_TEXT, i32 7 }, %struct.power_supply_attr { ptr @.str.21, [31 x i8] c"CYCLE_COUNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.22, [31 x i8] c"VOLTAGE_MAX\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.23, [31 x i8] c"VOLTAGE_MIN\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.24, [31 x i8] c"VOLTAGE_MAX_DESIGN\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.25, [31 x i8] c"VOLTAGE_MIN_DESIGN\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.26, [31 x i8] c"VOLTAGE_NOW\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.27, [31 x i8] c"VOLTAGE_AVG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.28, [31 x i8] c"VOLTAGE_OCV\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.29, [31 x i8] c"VOLTAGE_BOOT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.30, [31 x i8] c"CURRENT_MAX\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.31, [31 x i8] c"CURRENT_NOW\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.32, [31 x i8] c"CURRENT_AVG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.33, [31 x i8] c"CURRENT_BOOT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.34, [31 x i8] c"POWER_NOW\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.35, [31 x i8] c"POWER_AVG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.36, [31 x i8] c"CHARGE_FULL_DESIGN\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.37, [31 x i8] c"CHARGE_EMPTY_DESIGN\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.38, [31 x i8] c"CHARGE_FULL\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.39, [31 x i8] c"CHARGE_EMPTY\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.40, [31 x i8] c"CHARGE_NOW\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.41, [31 x i8] c"CHARGE_AVG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.42, [31 x i8] c"CHARGE_COUNTER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.43, [31 x i8] c"CONSTANT_CHARGE_CURRENT\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.44, [31 x i8] c"CONSTANT_CHARGE_CURRENT_MAX\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.45, [31 x i8] c"CONSTANT_CHARGE_VOLTAGE\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.46, [31 x i8] c"CONSTANT_CHARGE_VOLTAGE_MAX\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.47, [31 x i8] c"CHARGE_CONTROL_LIMIT\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.48, [31 x i8] c"CHARGE_CONTROL_LIMIT_MAX\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.49, [31 x i8] c"CHARGE_CONTROL_START_THRESHOLD\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.50, [31 x i8] c"CHARGE_CONTROL_END_THRESHOLD\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.51, [31 x i8] c"CHARGE_BEHAVIOUR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr @POWER_SUPPLY_CHARGE_BEHAVIOUR_TEXT, i32 3 }, %struct.power_supply_attr { ptr @.str.52, [31 x i8] c"INPUT_CURRENT_LIMIT\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.53, [31 x i8] c"INPUT_VOLTAGE_LIMIT\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.54, [31 x i8] c"INPUT_POWER_LIMIT\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.55, [31 x i8] c"ENERGY_FULL_DESIGN\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.56, [31 x i8] c"ENERGY_EMPTY_DESIGN\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.57, [31 x i8] c"ENERGY_FULL\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.58, [31 x i8] c"ENERGY_EMPTY\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.59, [31 x i8] c"ENERGY_NOW\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.60, [31 x i8] c"ENERGY_AVG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.61, [31 x i8] c"CAPACITY\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.62, [31 x i8] c"CAPACITY_ALERT_MIN\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.63, [31 x i8] c"CAPACITY_ALERT_MAX\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.64, [31 x i8] c"CAPACITY_ERROR_MARGIN\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.65, [31 x i8] c"CAPACITY_LEVEL\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr @POWER_SUPPLY_CAPACITY_LEVEL_TEXT, i32 6 }, %struct.power_supply_attr { ptr @.str.66, [31 x i8] c"TEMP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.67, [31 x i8] c"TEMP_MAX\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.68, [31 x i8] c"TEMP_MIN\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.69, [31 x i8] c"TEMP_ALERT_MIN\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.70, [31 x i8] c"TEMP_ALERT_MAX\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.71, [31 x i8] c"TEMP_AMBIENT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.72, [31 x i8] c"TEMP_AMBIENT_ALERT_MIN\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.73, [31 x i8] c"TEMP_AMBIENT_ALERT_MAX\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.74, [31 x i8] c"TIME_TO_EMPTY_NOW\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.75, [31 x i8] c"TIME_TO_EMPTY_AVG\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.76, [31 x i8] c"TIME_TO_FULL_NOW\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.77, [31 x i8] c"TIME_TO_FULL_AVG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.78, [31 x i8] c"TYPE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr @POWER_SUPPLY_TYPE_TEXT, i32 13 }, %struct.power_supply_attr { ptr @.str.79, [31 x i8] c"USB_TYPE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.80, [31 x i8] c"SCOPE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr @POWER_SUPPLY_SCOPE_TEXT, i32 3 }, %struct.power_supply_attr { ptr @.str.81, [31 x i8] c"PRECHARGE_CURRENT\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.82, [31 x i8] c"CHARGE_TERM_CURRENT\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.83, [31 x i8] c"CALIBRATE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.84, [31 x i8] c"MANUFACTURE_YEAR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.85, [31 x i8] c"MANUFACTURE_MONTH\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.86, [31 x i8] c"MANUFACTURE_DAY\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.87, [31 x i8] c"MODEL_NAME\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.88, [31 x i8] c"MANUFACTURER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }, %struct.power_supply_attr { ptr @.str.89, [31 x i8] c"SERIAL_NUMBER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.device_attribute zeroinitializer, ptr null, i32 0 }], [1344 x i8] zeroinitializer }, align 32
@power_supply_init_attrs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\014%s: Property %d skipped because it is missing from power_supply_attrs\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"power_supply_init_attrs\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/power/supply/power_supply_sysfs.c\00", [54 x i8] zeroinitializer }, align 32
@power_supply_init_attrs._entry_ptr = internal global ptr @power_supply_init_attrs._entry, section ".printk_index", align 4
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"_err_%d\00", [24 x i8] zeroinitializer }, align 32
@__power_supply_attrs = internal global [77 x ptr] zeroinitializer, align 4
@power_supply_uevent.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 116, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"power_supply\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"power_supply_uevent\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"No power supply yet\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"POWER_SUPPLY_NAME=%s\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"[%s] \00", [26 x i8] zeroinitializer }, align 32
@POWER_SUPPLY_CHARGE_BEHAVIOUR_TEXT = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.158, ptr @.str.159, ptr @.str.160], [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@power_supply_charge_behaviour_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 520, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"driver reporting unsupported charge behaviour\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"power_supply_charge_behaviour_show\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@power_supply_charge_behaviour_show._entry_ptr = internal global ptr @power_supply_charge_behaviour_show._entry, section ".printk_index", align 4
@__kstrtab_power_supply_charge_behaviour_show = external dso_local constant [0 x i8], align 1
@__kstrtabns_power_supply_charge_behaviour_show = external dso_local constant [0 x i8], align 1
@__ksymtab_power_supply_charge_behaviour_show = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @power_supply_charge_behaviour_show to i32), ptr @__kstrtab_power_supply_charge_behaviour_show, ptr @__kstrtabns_power_supply_charge_behaviour_show }, section "___ksymtab_gpl+power_supply_charge_behaviour_show", align 4
@__kstrtab_power_supply_charge_behaviour_parse = external dso_local constant [0 x i8], align 1
@__kstrtabns_power_supply_charge_behaviour_parse = external dso_local constant [0 x i8], align 1
@__ksymtab_power_supply_charge_behaviour_parse = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @power_supply_charge_behaviour_parse to i32), ptr @__kstrtab_power_supply_charge_behaviour_parse, ptr @__kstrtabns_power_supply_charge_behaviour_parse }, section "___ksymtab_gpl+power_supply_charge_behaviour_parse", align 4
@power_supply_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @power_supply_attr_is_visible, ptr null, ptr @__power_supply_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"STATUS\00", [25 x i8] zeroinitializer }, align 32
@POWER_SUPPLY_STATUS_TEXT = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94], [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CHARGE_TYPE\00", [20 x i8] zeroinitializer }, align 32
@POWER_SUPPLY_CHARGE_TYPE_TEXT = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.90, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101], [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HEALTH\00", [25 x i8] zeroinitializer }, align 32
@POWER_SUPPLY_HEALTH_TEXT = internal constant { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr @.str.90, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115], [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PRESENT\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ONLINE\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AUTHENTIC\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TECHNOLOGY\00", [21 x i8] zeroinitializer }, align 32
@POWER_SUPPLY_TECHNOLOGY_TEXT = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.90, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121], [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CYCLE_COUNT\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VOLTAGE_MAX\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VOLTAGE_MIN\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"VOLTAGE_MAX_DESIGN\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"VOLTAGE_MIN_DESIGN\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VOLTAGE_NOW\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VOLTAGE_AVG\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VOLTAGE_OCV\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VOLTAGE_BOOT\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CURRENT_MAX\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CURRENT_NOW\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CURRENT_AVG\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CURRENT_BOOT\00", [19 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"POWER_NOW\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"POWER_AVG\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CHARGE_FULL_DESIGN\00", [45 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CHARGE_EMPTY_DESIGN\00", [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CHARGE_FULL\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CHARGE_EMPTY\00", [19 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CHARGE_NOW\00", [21 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CHARGE_AVG\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CHARGE_COUNTER\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CONSTANT_CHARGE_CURRENT\00", [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"CONSTANT_CHARGE_CURRENT_MAX\00", [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CONSTANT_CHARGE_VOLTAGE\00", [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"CONSTANT_CHARGE_VOLTAGE_MAX\00", [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CHARGE_CONTROL_LIMIT\00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CHARGE_CONTROL_LIMIT_MAX\00", [39 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"CHARGE_CONTROL_START_THRESHOLD\00", [33 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CHARGE_CONTROL_END_THRESHOLD\00", [35 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CHARGE_BEHAVIOUR\00", [47 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"INPUT_CURRENT_LIMIT\00", [44 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"INPUT_VOLTAGE_LIMIT\00", [44 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"INPUT_POWER_LIMIT\00", [46 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ENERGY_FULL_DESIGN\00", [45 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ENERGY_EMPTY_DESIGN\00", [44 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ENERGY_FULL\00", [20 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ENERGY_EMPTY\00", [19 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ENERGY_NOW\00", [21 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ENERGY_AVG\00", [21 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CAPACITY\00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CAPACITY_ALERT_MIN\00", [45 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CAPACITY_ALERT_MAX\00", [45 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CAPACITY_ERROR_MARGIN\00", [42 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CAPACITY_LEVEL\00", [17 x i8] zeroinitializer }, align 32
@POWER_SUPPLY_CAPACITY_LEVEL_TEXT = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.90, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.94], [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TEMP\00", [27 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TEMP_MAX\00", [23 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TEMP_MIN\00", [23 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TEMP_ALERT_MIN\00", [17 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TEMP_ALERT_MAX\00", [17 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TEMP_AMBIENT\00", [19 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"TEMP_AMBIENT_ALERT_MIN\00", [41 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"TEMP_AMBIENT_ALERT_MAX\00", [41 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TIME_TO_EMPTY_NOW\00", [46 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TIME_TO_EMPTY_AVG\00", [46 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TIME_TO_FULL_NOW\00", [47 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TIME_TO_FULL_AVG\00", [47 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TYPE\00", [27 x i8] zeroinitializer }, align 32
@POWER_SUPPLY_TYPE_TEXT = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @.str.90, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137], [44 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"USB_TYPE\00", [23 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SCOPE\00", [26 x i8] zeroinitializer }, align 32
@POWER_SUPPLY_SCOPE_TEXT = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.90, ptr @.str.138, ptr @.str.139], [20 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PRECHARGE_CURRENT\00", [46 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CHARGE_TERM_CURRENT\00", [44 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CALIBRATE\00", [22 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MANUFACTURE_YEAR\00", [47 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MANUFACTURE_MONTH\00", [46 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MANUFACTURE_DAY\00", [16 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MODEL_NAME\00", [21 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MANUFACTURER\00", [19 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SERIAL_NUMBER\00", [18 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Charging\00", [23 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Discharging\00", [20 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Not charging\00", [19 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Full\00", [27 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"N/A\00", [28 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Trickle\00", [24 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Fast\00", [27 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Standard\00", [23 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Adaptive\00", [23 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Custom\00", [25 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Long Life\00", [22 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Good\00", [27 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Overheat\00", [23 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Dead\00", [27 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Over voltage\00", [19 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Unspecified failure\00", [44 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Cold\00", [27 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Watchdog timer expire\00", [42 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Safety timer expire\00", [44 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Over current\00", [19 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Calibration required\00", [43 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Warm\00", [27 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Cool\00", [27 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Hot\00", [28 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"No battery\00", [21 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NiMH\00", [27 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Li-ion\00", [25 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Li-poly\00", [24 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LiFe\00", [27 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NiCd\00", [27 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LiMn\00", [27 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Critical\00", [23 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Low\00", [28 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Normal\00", [25 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"High\00", [27 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Battery\00", [24 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UPS\00", [28 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Mains\00", [26 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"USB\00", [28 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"USB_DCP\00", [24 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"USB_CDP\00", [24 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"USB_ACA\00", [24 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"USB_C\00", [26 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"USB_PD\00", [25 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"USB_PD_DRP\00", [21 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"BrickID\00", [24 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Wireless\00", [23 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"System\00", [25 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Device\00", [25 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@power_supply_show_property.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.140, ptr @.str.2, ptr @.str.141, i8 0, i8 72, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.140 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"power_supply_show_property\00", [37 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"driver has no data for `%s' property\0A\00", [58 x i8] zeroinitializer }, align 32
@power_supply_show_property._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.142, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@power_supply_show_property._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.140, ptr @.str.2, i32 292, ptr @.str.144, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"driver failed to report `%s' property: %zd\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@power_supply_show_property._entry_ptr = internal global ptr @power_supply_show_property._entry, section ".printk_index", align 4
@.str.145 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@POWER_SUPPLY_USB_TYPE_TEXT = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.90, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.136], [56 x i8] zeroinitializer }, align 32
@power_supply_show_usb_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 261, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"driver reporting unsupported connected type\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"power_supply_show_usb_type\00", [37 x i8] zeroinitializer }, align 32
@power_supply_show_usb_type._entry_ptr = internal global ptr @power_supply_show_usb_type._entry, section ".printk_index", align 4
@.str.149 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SDP\00", [28 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DCP\00", [28 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CDP\00", [28 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ACA\00", [28 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"C\00", [30 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"PD\00", [29 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PD_DRP\00", [25 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PD_PPS\00", [25 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"POWER_SUPPLY_%s=%s\00", [45 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auto\00", [27 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"inhibit-charge\00", [17 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"force-discharge\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4294967235, i64 4294967277, i64 4294967285]
@__sancov_gen_cov_switch_values.161 = internal global [6 x i64] [i64 4, i64 32, i64 65, i64 73, i64 74, i64 75]
@__sancov_gen_cov_switch_values.162 = internal global [4 x i64] [i64 2, i64 32, i64 4294967235, i64 4294967277]
@__sancov_gen_cov_switch_values.163 = internal global [4 x i64] [i64 2, i64 32, i64 4294967235, i64 4294967277]
@___asan_gen_.164 = private unnamed_addr constant [25 x i8] c"power_supply_attr_groups\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 390, i32 38 }
@___asan_gen_.167 = private unnamed_addr constant [19 x i8] c"power_supply_attrs\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 143, i32 33 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 413, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 415, i32 45 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 467, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 471, i32 28 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 510, i32 39 }
@___asan_gen_.200 = private unnamed_addr constant [35 x i8] c"POWER_SUPPLY_CHARGE_BEHAVIOUR_TEXT\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 137, i32 27 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 514, i32 39 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 520, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant [24 x i8] c"power_supply_attr_group\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 385, i32 37 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 145, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant [25 x i8] c"POWER_SUPPLY_STATUS_TEXT\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 75, i32 27 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 146, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant [30 x i8] c"POWER_SUPPLY_CHARGE_TYPE_TEXT\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 83, i32 27 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 147, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant [25 x i8] c"POWER_SUPPLY_HEALTH_TEXT\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 94, i32 27 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 148, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 149, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 150, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 151, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant [29 x i8] c"POWER_SUPPLY_TECHNOLOGY_TEXT\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 112, i32 27 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 152, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 153, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 154, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 155, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 156, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 157, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 158, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 159, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 160, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 161, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 162, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 163, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 164, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 165, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 166, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 167, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 168, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 169, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 170, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 171, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 172, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 173, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 174, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 175, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 176, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 177, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 178, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 179, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 180, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 181, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 182, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 183, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 184, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 185, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 186, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 187, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 188, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 189, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 190, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 191, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 192, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 193, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 194, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 195, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 196, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant [33 x i8] c"POWER_SUPPLY_CAPACITY_LEVEL_TEXT\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 122, i32 27 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 197, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 198, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 199, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 200, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 201, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 202, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 203, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 204, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 205, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 206, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 207, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 208, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 209, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant [23 x i8] c"POWER_SUPPLY_TYPE_TEXT\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 46, i32 27 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 210, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 211, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant [24 x i8] c"POWER_SUPPLY_SCOPE_TEXT\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 131, i32 27 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 212, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 213, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 214, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 215, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 216, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 217, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 219, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 220, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 221, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 76, i32 35 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 77, i32 36 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 78, i32 38 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 79, i32 39 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 80, i32 32 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 85, i32 37 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 86, i32 39 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 87, i32 37 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 88, i32 40 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 89, i32 40 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 90, i32 38 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 91, i32 40 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 96, i32 36 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 97, i32 40 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 98, i32 36 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 99, i32 42 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 100, i32 45 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 101, i32 36 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 102, i32 48 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 103, i32 48 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 104, i32 42 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 105, i32 48 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 106, i32 36 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 107, i32 36 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 108, i32 35 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 109, i32 41 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 114, i32 36 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 115, i32 36 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 116, i32 36 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 117, i32 36 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 118, i32 36 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 119, i32 36 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 124, i32 43 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 125, i32 38 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 126, i32 41 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 127, i32 39 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 48, i32 33 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 49, i32 30 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 50, i32 31 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 51, i32 30 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 52, i32 33 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 53, i32 33 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 54, i32 33 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 55, i32 36 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 56, i32 32 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 57, i32 36 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 58, i32 39 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 59, i32 34 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 133, i32 32 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 134, i32 32 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 287, i32 5 }
@___asan_gen_.629 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 290, i32 5 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 299, i32 23 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 311, i32 22 }
@___asan_gen_.650 = private unnamed_addr constant [27 x i8] c"POWER_SUPPLY_USB_TYPE_TEXT\00", align 1
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 62, i32 27 }
@___asan_gen_.653 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 261, i32 3 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 64, i32 33 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 65, i32 33 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 66, i32 33 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 67, i32 33 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 68, i32 31 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 69, i32 32 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 70, i32 36 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 71, i32 36 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 456, i32 29 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 138, i32 42 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 139, i32 51 }
@___asan_gen_.695 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.696 = private constant [45 x i8] c"../drivers/power/supply/power_supply_sysfs.c\00", align 1
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 140, i32 52 }
@llvm.compiler.used = appending global [184 x ptr] [ptr @__ksymtab_power_supply_charge_behaviour_parse, ptr @__ksymtab_power_supply_charge_behaviour_show, ptr @power_supply_charge_behaviour_show._entry, ptr @power_supply_charge_behaviour_show._entry_ptr, ptr @power_supply_init_attrs._entry, ptr @power_supply_init_attrs._entry_ptr, ptr @power_supply_show_property._entry, ptr @power_supply_show_property._entry_ptr, ptr @power_supply_show_usb_type._entry, ptr @power_supply_show_usb_type._entry_ptr, ptr @power_supply_attr_groups, ptr @power_supply_attrs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @POWER_SUPPLY_CHARGE_BEHAVIOUR_TEXT, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @power_supply_attr_group, ptr @.str.14, ptr @POWER_SUPPLY_STATUS_TEXT, ptr @.str.15, ptr @POWER_SUPPLY_CHARGE_TYPE_TEXT, ptr @.str.16, ptr @POWER_SUPPLY_HEALTH_TEXT, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @POWER_SUPPLY_TECHNOLOGY_TEXT, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @POWER_SUPPLY_CAPACITY_LEVEL_TEXT, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @POWER_SUPPLY_TYPE_TEXT, ptr @.str.79, ptr @.str.80, ptr @POWER_SUPPLY_SCOPE_TEXT, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @power_supply_show_property._rs, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @POWER_SUPPLY_USB_TYPE_TEXT, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160], section "llvm.metadata"
@0 = internal global [178 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_supply_attr_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_supply_attrs to i32), i32 5472, i32 6816, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_supply_init_attrs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @POWER_SUPPLY_CHARGE_BEHAVIOUR_TEXT to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_supply_charge_behaviour_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_supply_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @POWER_SUPPLY_STATUS_TEXT to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @POWER_SUPPLY_CHARGE_TYPE_TEXT to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @POWER_SUPPLY_HEALTH_TEXT to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @POWER_SUPPLY_TECHNOLOGY_TEXT to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @POWER_SUPPLY_CAPACITY_LEVEL_TEXT to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @POWER_SUPPLY_TYPE_TEXT to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @POWER_SUPPLY_SCOPE_TEXT to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_supply_show_property._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_supply_show_property._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @POWER_SUPPLY_USB_TYPE_TEXT to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_supply_show_usb_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @power_supply_init_attrs(ptr nocapture noundef writeonly %dev_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %groups = getelementptr inbounds %struct.device_type, ptr %dev_type, i32 0, i32 1
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @power_supply_attr_groups, ptr %groups, align 4
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.025 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr [76 x %struct.power_supply_attr], ptr @power_supply_attrs, i32 0, i32 %i.025
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %do.end, label %if.else

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %i.025) #9
  %attr_name = getelementptr [76 x %struct.power_supply_attr], ptr @power_supply_attrs, i32 0, i32 %i.025, i32 1
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %attr_name, ptr noundef nonnull @.str.3, i32 noundef %i.025)
  br label %if.end

if.else:                                          ; preds = %for.body
  %attr_name4 = getelementptr [76 x %struct.power_supply_attr], ptr @power_supply_attrs, i32 0, i32 %i.025, i32 1
  %3 = ptrtoint ptr %attr_name4 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %attr_name4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not4.i = icmp eq i8 %4, 0
  br i1 %tobool.not4.i, label %if.else.if.end_crit_edge, label %if.else.while.body.i_crit_edge

if.else.while.body.i_crit_edge:                   ; preds = %if.else
  br label %while.body.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.else.while.body.i_crit_edge
  %5 = phi i8 [ %11, %while.body.i.while.body.i_crit_edge ], [ %4, %if.else.while.body.i_crit_edge ]
  %str.addr.05.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %attr_name4, %if.else.while.body.i_crit_edge ]
  %conv.i.i = zext i8 %5 to i32
  %arrayidx.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i.i, align 1
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp.not.i.i = icmp eq i8 %8, 0
  %sub.i.i = add i8 %5, 32
  %spec.select.i.i = select i1 %cmp.not.i.i, i8 %5, i8 %sub.i.i
  %9 = ptrtoint ptr %str.addr.05.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %spec.select.i.i, ptr %str.addr.05.i, align 1
  %incdec.ptr.i = getelementptr i8, ptr %str.addr.05.i, i32 1
  %10 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %incdec.ptr.i, align 1
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %while.body.i.if.end_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i.if.end_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %while.body.i.if.end_crit_edge, %if.else.if.end_crit_edge, %do.end
  %dev_attr = getelementptr [76 x %struct.power_supply_attr], ptr @power_supply_attrs, i32 0, i32 %i.025, i32 2
  %attr_name8 = getelementptr [76 x %struct.power_supply_attr], ptr @power_supply_attrs, i32 0, i32 %i.025, i32 1
  %12 = ptrtoint ptr %dev_attr to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %attr_name8, ptr %dev_attr, align 4
  %show = getelementptr [76 x %struct.power_supply_attr], ptr @power_supply_attrs, i32 0, i32 %i.025, i32 2, i32 1
  %13 = ptrtoint ptr %show to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @power_supply_show_property, ptr %show, align 4
  %store = getelementptr [76 x %struct.power_supply_attr], ptr @power_supply_attrs, i32 0, i32 %i.025, i32 2, i32 2
  %14 = ptrtoint ptr %store to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @power_supply_store_property, ptr %store, align 4
  %arrayidx12 = getelementptr [77 x ptr], ptr @__power_supply_attrs, i32 0, i32 %i.025
  %15 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev_attr, ptr %arrayidx12, align 4
  %inc = add nuw nsw i32 %i.025, 1
  %exitcond.not = icmp eq i32 %inc, 76
  br i1 %exitcond.not, label %for.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @power_supply_show_property(ptr noundef %dev, ptr noundef %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %value = alloca %union.power_supply_propval, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %attr, i32 -36
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, ptrtoint (ptr @power_supply_attrs to i32)
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 72
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !361
  call void @__sanitizer_cov_trace_const_cmp4(i32 4608, i32 %sub.ptr.sub.i)
  %3 = icmp eq i32 %sub.ptr.sub.i, 4608
  br i1 %3, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %type = getelementptr inbounds %struct.power_supply_desc, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 4
  br label %if.end33

if.else:                                          ; preds = %entry
  %call3 = call i32 @power_supply_get_property(ptr noundef %1, i32 noundef %sub.ptr.div.i, ptr noundef nonnull %value) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.else.if.end33_crit_edge

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then5:                                         ; preds = %if.else
  %9 = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call3, label %do.body18 [
    i32 -61, label %do.body
    i32 -19, label %if.then5.cleanup_crit_edge
    i32 -11, label %if.then5.cleanup_crit_edge77
  ]

if.then5.cleanup_crit_edge77:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @power_supply_show_property.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@power_supply_show_property, %cleanup)) #6
          to label %if.then12 [label %cleanup], !srcloc !362

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %attr, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @power_supply_show_property.__UNIQUE_ID_ddebug183, ptr noundef %dev, ptr noundef nonnull @.str.141, ptr noundef %11) #6
  br label %cleanup

do.body18:                                        ; preds = %if.then5
  %call19 = call i32 @___ratelimit(ptr noundef nonnull @power_supply_show_property._rs, ptr noundef nonnull @.str.140) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %do.body18.cleanup_crit_edge, label %do.end24

do.body18.cleanup_crit_edge:                      ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end24:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %attr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.143, ptr noundef %13, i32 noundef %call3) #9
  br label %cleanup

if.end33:                                         ; preds = %if.else.if.end33_crit_edge, %if.then
  %text_values_len = getelementptr i8, ptr %attr, i32 32
  %14 = ptrtoint ptr %text_values_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %text_values_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp34 = icmp sgt i32 %15, 0
  br i1 %cmp34, label %land.lhs.true35, label %if.end33.if.end42_crit_edge

if.end33.if.end42_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

land.lhs.true35:                                  ; preds = %if.end33
  %16 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %cmp37 = icmp slt i32 %17, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp39 = icmp sgt i32 %17, -1
  %or.cond = and i1 %cmp37, %cmp39
  br i1 %or.cond, label %if.then40, label %land.lhs.true35.if.end42_crit_edge

land.lhs.true35.if.end42_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.then40:                                        ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #8
  %text_values = getelementptr i8, ptr %attr, i32 28
  %18 = ptrtoint ptr %text_values to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %text_values, align 4
  %arrayidx = getelementptr ptr, ptr %19, i32 %17
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %call41 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.145, ptr noundef %21)
  br label %cleanup

if.end42:                                         ; preds = %land.lhs.true35.if.end42_crit_edge, %if.end33.if.end42_crit_edge
  %22 = zext i32 %sub.ptr.div.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.161)
  switch i32 %sub.ptr.div.i, label %sw.default [
    i32 65, label %sw.bb
    i32 73, label %if.end42.sw.bb45_crit_edge
    i32 74, label %if.end42.sw.bb45_crit_edge78
    i32 75, label %if.end42.sw.bb45_crit_edge79
  ]

if.end42.sw.bb45_crit_edge79:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb45

if.end42.sw.bb45_crit_edge78:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb45

if.end42.sw.bb45_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb45

sw.bb:                                            ; preds = %if.end42
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 8
  %num_usb_types.i = getelementptr inbounds %struct.power_supply_desc, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %num_usb_types.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_usb_types.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp30.not.i = icmp eq i32 %26, 0
  br i1 %cmp30.not.i, label %sw.bb.do.end.i_crit_edge, label %for.body.lr.ph.i

sw.bb.do.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

for.body.lr.ph.i:                                 ; preds = %sw.bb
  %usb_types.i = getelementptr inbounds %struct.power_supply_desc, ptr %24, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.033.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %match.0.off032.i = phi i1 [ false, %for.body.lr.ph.i ], [ %.match.0.off032.i, %for.body.i.for.body.i_crit_edge ]
  %count.031.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %count.1.i, %for.body.i.for.body.i_crit_edge ]
  %27 = ptrtoint ptr %usb_types.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %usb_types.i, align 4
  %arrayidx.i = getelementptr i32, ptr %28, i32 %i.033.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i, align 4
  %31 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %30)
  %cmp1.i = icmp eq i32 %32, %30
  %add.ptr.i74 = getelementptr i8, ptr %buf, i32 %count.031.i
  %arrayidx2.i = getelementptr [10 x ptr], ptr @POWER_SUPPLY_USB_TYPE_TEXT, i32 0, i32 %30
  %33 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx2.i, align 4
  %.str.8..str.9.i = select i1 %cmp1.i, ptr @.str.8, ptr @.str.9
  %.match.0.off032.i = select i1 %cmp1.i, i1 true, i1 %match.0.off032.i
  %call.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i74, ptr noundef nonnull %.str.8..str.9.i, ptr noundef %34) #6
  %count.1.i = add i32 %call.i, %count.031.i
  %inc.i = add nuw i32 %i.033.i, 1
  %35 = ptrtoint ptr %num_usb_types.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_usb_types.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %36
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  br i1 %.match.0.off032.i, label %if.end8.i, label %for.end.i.do.end.i_crit_edge

for.end.i.do.end.i_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %for.end.i.do.end.i_crit_edge, %sw.bb.do.end.i_crit_edge
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.147) #9
  br label %cleanup

if.end8.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1.i)
  %tobool9.not.i = icmp eq i32 %count.1.i, 0
  br i1 %tobool9.not.i, label %if.end8.i.cleanup_crit_edge, label %if.then10.i

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = add i32 %count.1.i, -1
  %arrayidx11.i = getelementptr i8, ptr %buf, i32 %sub.i
  %37 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 10, ptr %arrayidx11.i, align 1
  br label %cleanup

sw.bb45:                                          ; preds = %if.end42.sw.bb45_crit_edge, %if.end42.sw.bb45_crit_edge78, %if.end42.sw.bb45_crit_edge79
  %38 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %value, align 4
  %call46 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.145, ptr noundef %39)
  br label %cleanup

sw.default:                                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %value, align 4
  %call47 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.146, i32 noundef %41)
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb45, %if.then10.i, %if.end8.i.cleanup_crit_edge, %do.end.i, %if.then40, %do.end24, %do.body18.cleanup_crit_edge, %if.then12, %do.body, %if.then5.cleanup_crit_edge, %if.then5.cleanup_crit_edge77
  %retval.0 = phi i32 [ %call41, %if.then40 ], [ %call3, %if.then5.cleanup_crit_edge ], [ %call3, %if.then5.cleanup_crit_edge77 ], [ %call3, %do.end24 ], [ %call3, %do.body18.cleanup_crit_edge ], [ -61, %if.then12 ], [ %call47, %sw.default ], [ %call46, %sw.bb45 ], [ -22, %do.end.i ], [ %count.1.i, %if.then10.i ], [ 0, %if.end8.i.cleanup_crit_edge ], [ -61, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @power_supply_store_property(ptr nocapture noundef readonly %dev, ptr noundef %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value = alloca %union.power_supply_propval, align 4
  %long_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %attr, i32 -36
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, ptrtoint (ptr @power_supply_attrs to i32)
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 72
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %text_values_len = getelementptr i8, ptr %attr, i32 32
  %2 = ptrtoint ptr %text_values_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %text_values_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %if.end, label %entry.if.then6_crit_edge

entry.if.then6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

if.end:                                           ; preds = %entry
  %text_values = getelementptr i8, ptr %attr, i32 28
  %4 = ptrtoint ptr %text_values to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %text_values, align 4
  %call4 = tail call i32 @__sysfs_match_string(ptr noundef %5, i32 noundef %3, ptr noundef %buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end.if.then6_crit_edge, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

if.then6:                                         ; preds = %if.end.if.then6_crit_edge, %entry.if.then6_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %long_val) #6
  %6 = ptrtoint ptr %long_val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %long_val, align 4, !annotation !361
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %long_val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8 = icmp slt i32 %call.i, 0
  br i1 %cmp8, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %long_val) #6
  br label %cleanup16

cleanup:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %long_val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %long_val, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %long_val) #6
  br label %if.end11

if.end11:                                         ; preds = %cleanup, %if.end.if.end11_crit_edge
  %ret.2 = phi i32 [ %8, %cleanup ], [ %call4, %if.end.if.end11_crit_edge ]
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %ret.2, ptr %value, align 4
  %call12 = call i32 @power_supply_set_property(ptr noundef %1, i32 noundef %sub.ptr.div.i, ptr noundef nonnull %value) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  %call12.count = select i1 %cmp13, i32 %call12, i32 %count
  br label %cleanup16

cleanup16:                                        ; preds = %if.end11, %cleanup.thread
  %retval.1 = phi i32 [ %call12.count, %if.end11 ], [ %call.i, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @power_supply_uevent(ptr noundef %dev, ptr noundef %env) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.do.body_crit_edge, label %if.end8

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @power_supply_uevent.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@power_supply_uevent, %cleanup)) #6
          to label %if.then7 [label %cleanup], !srcloc !362

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @power_supply_uevent.__UNIQUE_ID_ddebug184, ptr noundef %dev, ptr noundef nonnull @.str.6) #6
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call10 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.7, ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %call14 = tail call i32 @get_zeroed_page(i32 noundef 3264) #6
  %6 = inttoptr i32 %call14 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %type.i = getelementptr inbounds %struct.power_supply_desc, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type.i, align 4
  %13 = load i32, ptr getelementptr inbounds ([76 x %struct.power_supply_attr], ptr @power_supply_attrs, i32 0, i32 64, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp34.i = icmp sgt i32 %13, 0
  br i1 %cmp34.i, label %land.lhs.true35.i, label %if.end17.if.end42.i_crit_edge

if.end17.if.end42.i_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.i

land.lhs.true35.i:                                ; preds = %if.end17
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %13)
  %cmp37.i = icmp slt i32 %12, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp39.i = icmp sgt i32 %12, -1
  %or.cond.i = and i1 %cmp39.i, %cmp37.i
  br i1 %or.cond.i, label %if.then40.i, label %land.lhs.true35.i.if.end42.i_crit_edge

land.lhs.true35.i.if.end42.i_crit_edge:           ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.i

if.then40.i:                                      ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #8
  %14 = load ptr, ptr getelementptr inbounds ([76 x %struct.power_supply_attr], ptr @power_supply_attrs, i32 0, i32 64, i32 3), align 4
  %arrayidx.i63 = getelementptr ptr, ptr %14, i32 %12
  %15 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i63, align 4
  %call41.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %6, ptr noundef nonnull @.str.145, ptr noundef %16) #6
  br label %power_supply_show_property.exit

if.end42.i:                                       ; preds = %land.lhs.true35.i.if.end42.i_crit_edge, %if.end17.if.end42.i_crit_edge
  %call47.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %6, ptr noundef nonnull @.str.146, i32 noundef %12) #6
  br label %power_supply_show_property.exit

power_supply_show_property.exit:                  ; preds = %if.end42.i, %if.then40.i
  %retval.0.i64 = phi i32 [ %call41.i, %if.then40.i ], [ %call47.i, %if.end42.i ]
  %17 = zext i32 %retval.0.i64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.162)
  switch i32 %retval.0.i64, label %if.end.i [
    i32 -19, label %power_supply_show_property.exit.for.cond.preheader_crit_edge
    i32 -61, label %power_supply_show_property.exit.for.cond.preheader_crit_edge81
  ]

power_supply_show_property.exit.for.cond.preheader_crit_edge81: ; preds = %power_supply_show_property.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.preheader

power_supply_show_property.exit.for.cond.preheader_crit_edge: ; preds = %power_supply_show_property.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.preheader

if.end.i:                                         ; preds = %power_supply_show_property.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i64)
  %cmp3.i = icmp slt i32 %retval.0.i64, 0
  br i1 %cmp3.i, label %if.end.i.out_crit_edge, label %if.end5.i

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = tail call ptr @strchr(ptr noundef nonnull %6, i32 noundef 10) #6
  %tobool.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool.not.i, label %if.end5.i.add_prop_uevent.exit_crit_edge, label %if.then7.i

if.end5.i.add_prop_uevent.exit_crit_edge:         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_prop_uevent.exit

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %call6.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %call6.i, align 1
  br label %add_prop_uevent.exit

add_prop_uevent.exit:                             ; preds = %if.then7.i, %if.end5.i.add_prop_uevent.exit_crit_edge
  %19 = load ptr, ptr getelementptr inbounds ([76 x %struct.power_supply_attr], ptr @power_supply_attrs, i32 0, i32 64), align 4
  %call9.i = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.157, ptr noundef %19, ptr noundef nonnull %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool19.not = icmp eq i32 %call9.i, 0
  br i1 %tobool19.not, label %add_prop_uevent.exit.for.cond.preheader_crit_edge, label %add_prop_uevent.exit.out_crit_edge

add_prop_uevent.exit.out_crit_edge:               ; preds = %add_prop_uevent.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

add_prop_uevent.exit.for.cond.preheader_crit_edge: ; preds = %add_prop_uevent.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %add_prop_uevent.exit.for.cond.preheader_crit_edge, %power_supply_show_property.exit.for.cond.preheader_crit_edge, %power_supply_show_property.exit.for.cond.preheader_crit_edge81
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  %num_properties74 = getelementptr inbounds %struct.power_supply_desc, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %num_properties74 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_properties74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp75.not = icmp eq i32 %23, 0
  br i1 %cmp75.not, label %for.cond.preheader.out_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %24 = phi ptr [ %34, %for.inc.for.body_crit_edge ], [ %21, %for.cond.preheader.for.body_crit_edge ]
  %j.076 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %properties = getelementptr inbounds %struct.power_supply_desc, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %properties, align 4
  %arrayidx = getelementptr i32, ptr %26, i32 %j.076
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %arrayidx.i = getelementptr [76 x %struct.power_supply_attr], ptr @power_supply_attrs, i32 0, i32 %28
  %dev_attr1.i = getelementptr [76 x %struct.power_supply_attr], ptr @power_supply_attrs, i32 0, i32 %28, i32 2
  %call.i52 = tail call i32 @power_supply_show_property(ptr noundef %dev, ptr noundef %dev_attr1.i, ptr noundef nonnull %6) #6
  %29 = zext i32 %call.i52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.163)
  switch i32 %call.i52, label %if.end.i54 [
    i32 -19, label %for.body.for.inc_crit_edge
    i32 -61, label %for.body.for.inc_crit_edge82
  ]

for.body.for.inc_crit_edge82:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end.i54:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %cmp3.i53 = icmp slt i32 %call.i52, 0
  br i1 %cmp3.i53, label %if.end.i54.out_crit_edge, label %if.end5.i57

if.end.i54.out_crit_edge:                         ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end5.i57:                                      ; preds = %if.end.i54
  %call6.i55 = tail call ptr @strchr(ptr noundef nonnull %6, i32 noundef 10) #6
  %tobool.not.i56 = icmp eq ptr %call6.i55, null
  br i1 %tobool.not.i56, label %if.end5.i57.add_prop_uevent.exit62_crit_edge, label %if.then7.i58

if.end5.i57.add_prop_uevent.exit62_crit_edge:     ; preds = %if.end5.i57
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_prop_uevent.exit62

if.then7.i58:                                     ; preds = %if.end5.i57
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %call6.i55 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %call6.i55, align 1
  br label %add_prop_uevent.exit62

add_prop_uevent.exit62:                           ; preds = %if.then7.i58, %if.end5.i57.add_prop_uevent.exit62_crit_edge
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i, align 4
  %call9.i59 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.157, ptr noundef %32, ptr noundef nonnull %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i59)
  %tobool25.not = icmp eq i32 %call9.i59, 0
  br i1 %tobool25.not, label %add_prop_uevent.exit62.for.inc_crit_edge, label %add_prop_uevent.exit62.out_crit_edge

add_prop_uevent.exit62.out_crit_edge:             ; preds = %add_prop_uevent.exit62
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

add_prop_uevent.exit62.for.inc_crit_edge:         ; preds = %add_prop_uevent.exit62
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %add_prop_uevent.exit62.for.inc_crit_edge, %for.body.for.inc_crit_edge, %for.body.for.inc_crit_edge82
  %inc = add nuw i32 %j.076, 1
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 8
  %num_properties = getelementptr inbounds %struct.power_supply_desc, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %num_properties to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_properties, align 4
  %cmp = icmp ult i32 %inc, %36
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.out_crit_edge

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

out:                                              ; preds = %for.inc.out_crit_edge, %add_prop_uevent.exit62.out_crit_edge, %if.end.i54.out_crit_edge, %for.cond.preheader.out_crit_edge, %add_prop_uevent.exit.out_crit_edge, %if.end.i.out_crit_edge
  %ret.1 = phi i32 [ %call9.i, %add_prop_uevent.exit.out_crit_edge ], [ %retval.0.i64, %if.end.i.out_crit_edge ], [ 0, %for.cond.preheader.out_crit_edge ], [ %call9.i59, %add_prop_uevent.exit62.out_crit_edge ], [ 0, %for.inc.out_crit_edge ], [ %call.i52, %if.end.i54.out_crit_edge ]
  tail call void @free_pages(i32 noundef %call14, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end13.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then7, %do.body
  %retval.0 = phi i32 [ %ret.1, %out ], [ 0, %if.then7 ], [ %call10, %if.end8.cleanup_crit_edge ], [ -12, %if.end13.cleanup_crit_edge ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_zeroed_page(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @power_supply_charge_behaviour_show(ptr noundef %dev, i32 noundef %available_behaviours, i32 noundef %current_behaviour, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %available_behaviours, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %current_behaviour)
  %cmp1 = icmp ne i32 %current_behaviour, 0
  %0 = or i1 %tobool.not, %cmp1
  br i1 %0, label %if.else, label %for.inc.thread

for.inc.thread:                                   ; preds = %entry
  %call = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.158) #6
  %1 = xor i1 %0, true
  %and.143 = and i32 %available_behaviours, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.143)
  %tobool.not.144 = icmp eq i32 %and.143, 0
  br i1 %tobool.not.144, label %for.inc.thread.for.inc.1.thread_crit_edge, label %for.inc.thread.if.then6.1_crit_edge

for.inc.thread.if.then6.1_crit_edge:              ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6.1

for.inc.thread.for.inc.1.thread_crit_edge:        ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.thread

if.else:                                          ; preds = %entry
  br i1 %tobool.not, label %if.else.for.inc_crit_edge, label %if.then6

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.158) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then6, %if.else.for.inc_crit_edge
  %count.1 = phi i32 [ %call8, %if.then6 ], [ 0, %if.else.for.inc_crit_edge ]
  %and.1 = and i32 %available_behaviours, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %current_behaviour)
  %cmp1.1 = icmp ne i32 %current_behaviour, 1
  %2 = or i1 %tobool.not.1, %cmp1.1
  br i1 %2, label %if.else.1, label %if.then.1

if.else.1:                                        ; preds = %for.inc
  %3 = xor i1 %0, true
  br i1 %tobool.not.1, label %if.else.1.for.inc.1_crit_edge, label %if.else.1.if.then6.1_crit_edge

if.else.1.if.then6.1_crit_edge:                   ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6.1

if.else.1.for.inc.1_crit_edge:                    ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then6.1:                                       ; preds = %if.else.1.if.then6.1_crit_edge, %for.inc.thread.if.then6.1_crit_edge
  %count.14648 = phi i32 [ %call, %for.inc.thread.if.then6.1_crit_edge ], [ %count.1, %if.else.1.if.then6.1_crit_edge ]
  %4 = phi i1 [ %1, %for.inc.thread.if.then6.1_crit_edge ], [ %3, %if.else.1.if.then6.1_crit_edge ]
  %call8.1 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %count.14648, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.159) #6
  %add9.1 = add i32 %call8.1, %count.14648
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %call.1 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %count.1, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.159) #6
  %add.1 = add i32 %call.1, %count.1
  br label %for.inc.1.thread

for.inc.1.thread:                                 ; preds = %if.then.1, %for.inc.thread.for.inc.1.thread_crit_edge
  %match.1.off0.1.ph = phi i1 [ %1, %for.inc.thread.for.inc.1.thread_crit_edge ], [ true, %if.then.1 ]
  %count.1.1.ph = phi i32 [ %call, %for.inc.thread.for.inc.1.thread_crit_edge ], [ %add.1, %if.then.1 ]
  %and.251 = and i32 %available_behaviours, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.251)
  %tobool.not.252 = icmp eq i32 %and.251, 0
  br i1 %tobool.not.252, label %for.inc.1.thread.for.inc.2_crit_edge, label %for.inc.1.thread.if.then6.2_crit_edge

for.inc.1.thread.if.then6.2_crit_edge:            ; preds = %for.inc.1.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6.2

for.inc.1.thread.for.inc.2_crit_edge:             ; preds = %for.inc.1.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

for.inc.1:                                        ; preds = %if.then6.1, %if.else.1.for.inc.1_crit_edge
  %match.1.off0.1 = phi i1 [ %4, %if.then6.1 ], [ %3, %if.else.1.for.inc.1_crit_edge ]
  %count.1.1 = phi i32 [ %add9.1, %if.then6.1 ], [ %count.1, %if.else.1.for.inc.1_crit_edge ]
  %and.2 = and i32 %available_behaviours, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %current_behaviour)
  %cmp1.2 = icmp ne i32 %current_behaviour, 2
  %5 = or i1 %tobool.not.2, %cmp1.2
  br i1 %5, label %if.else.2, label %for.inc.2.thread

if.else.2:                                        ; preds = %for.inc.1
  br i1 %tobool.not.2, label %if.else.2.for.inc.2_crit_edge, label %if.else.2.if.then6.2_crit_edge

if.else.2.if.then6.2_crit_edge:                   ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6.2

if.else.2.for.inc.2_crit_edge:                    ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.then6.2:                                       ; preds = %if.else.2.if.then6.2_crit_edge, %for.inc.1.thread.if.then6.2_crit_edge
  %match.1.off0.15458 = phi i1 [ %match.1.off0.1.ph, %for.inc.1.thread.if.then6.2_crit_edge ], [ %match.1.off0.1, %if.else.2.if.then6.2_crit_edge ]
  %count.1.15557 = phi i32 [ %count.1.1.ph, %for.inc.1.thread.if.then6.2_crit_edge ], [ %count.1.1, %if.else.2.if.then6.2_crit_edge ]
  %call8.2 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %count.1.15557, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.160) #6
  %add9.2 = add i32 %call8.2, %count.1.15557
  br i1 %match.1.off0.15458, label %if.then6.2.if.end13_crit_edge, label %if.then6.2.do.end_crit_edge

if.then6.2.do.end_crit_edge:                      ; preds = %if.then6.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then6.2.if.end13_crit_edge:                    ; preds = %if.then6.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

for.inc.2.thread:                                 ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  %call.2 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %count.1.1, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.160) #6
  %add.2 = add i32 %call.2, %count.1.1
  br label %if.end13

for.inc.2:                                        ; preds = %if.else.2.for.inc.2_crit_edge, %for.inc.1.thread.for.inc.2_crit_edge
  %match.1.off0.2 = phi i1 [ %match.1.off0.1, %if.else.2.for.inc.2_crit_edge ], [ %match.1.off0.1.ph, %for.inc.1.thread.for.inc.2_crit_edge ]
  %count.1.2 = phi i32 [ %count.1.1, %if.else.2.for.inc.2_crit_edge ], [ %count.1.1.ph, %for.inc.1.thread.for.inc.2_crit_edge ]
  br i1 %match.1.off0.2, label %for.inc.2.if.end13_crit_edge, label %for.inc.2.do.end_crit_edge

for.inc.2.do.end_crit_edge:                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.inc.2.if.end13_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

do.end:                                           ; preds = %for.inc.2.do.end_crit_edge, %if.then6.2.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end13:                                         ; preds = %for.inc.2.if.end13_crit_edge, %for.inc.2.thread, %if.then6.2.if.end13_crit_edge
  %count.1.261 = phi i32 [ %add.2, %for.inc.2.thread ], [ %count.1.2, %for.inc.2.if.end13_crit_edge ], [ %add9.2, %if.then6.2.if.end13_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1.261)
  %tobool14.not = icmp eq i32 %count.1.261, 0
  br i1 %tobool14.not, label %if.end13.cleanup_crit_edge, label %if.then15

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add i32 %count.1.261, -1
  %arrayidx16 = getelementptr i8, ptr %buf, i32 %sub
  %6 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 10, ptr %arrayidx16, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end13.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %count.1.261, %if.then15 ], [ 0, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit_at(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @power_supply_charge_behaviour_parse(i32 noundef %available_behaviours, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__sysfs_match_string(ptr noundef nonnull @POWER_SUPPLY_CHARGE_BEHAVIOUR_TEXT, i32 noundef 3, ptr noundef %buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  %shl = shl nuw i32 1, %call
  %and = and i32 %shl, %available_behaviours
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %.call = select i1 %tobool.not, i32 -22, i32 %call
  %retval.0 = select i1 %cmp, i32 %call, i32 %.call
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sysfs_match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @power_supply_attr_is_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, i32 noundef %attrno) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr [76 x %struct.power_supply_attr], ptr @power_supply_attrs, i32 0, i32 %attrno
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup19_crit_edge, label %if.end

entry.cleanup19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup19

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %attrno)
  %cmp = icmp eq i32 %attrno, 64
  br i1 %cmp, label %if.end.cleanup19_crit_edge, label %for.cond.preheader

if.end.cleanup19_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup19

for.cond.preheader:                               ; preds = %if.end
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %num_properties = getelementptr inbounds %struct.power_supply_desc, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %num_properties to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_properties, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp439.not = icmp eq i32 %7, 0
  br i1 %cmp439.not, label %for.cond.preheader.cleanup19_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup19_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup19

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %properties = getelementptr inbounds %struct.power_supply_desc, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %properties, align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.040, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.cond.cleanup19_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.cleanup19_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup19

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.040 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx6 = getelementptr i32, ptr %9, i32 %i.040
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %attrno)
  %cmp7 = icmp eq i32 %11, %attrno
  br i1 %cmp7, label %if.then8, label %for.cond

if.then8:                                         ; preds = %for.body
  %property_is_writeable = getelementptr inbounds %struct.power_supply_desc, ptr %5, i32 0, i32 8
  %12 = ptrtoint ptr %property_is_writeable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %property_is_writeable, align 4
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %if.then8.cleanup19_crit_edge, label %land.lhs.true

if.then8.cleanup19_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup19

land.lhs.true:                                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call i32 %13(ptr noundef %1, i32 noundef %attrno) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp sgt i32 %call13, 0
  %spec.select = select i1 %cmp14, i16 420, i16 292
  br label %cleanup19

cleanup19:                                        ; preds = %land.lhs.true, %if.then8.cleanup19_crit_edge, %for.cond.cleanup19_crit_edge, %for.cond.preheader.cleanup19_crit_edge, %if.end.cleanup19_crit_edge, %entry.cleanup19_crit_edge
  %retval.2 = phi i16 [ 0, %entry.cleanup19_crit_edge ], [ 292, %if.end.cleanup19_crit_edge ], [ %spec.select, %land.lhs.true ], [ 292, %if.then8.cleanup19_crit_edge ], [ 0, %for.cond.preheader.cleanup19_crit_edge ], [ 0, %for.cond.cleanup19_crit_edge ]
  ret i16 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_get_property(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_set_property(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 178)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 178)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !307, !308, !310, !311, !312, !313, !314, !315, !317, !319, !321, !322, !323, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350}
!llvm.module.flags = !{!352, !353, !354, !355, !356, !357, !358, !359}
!llvm.ident = !{!360}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 413, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @power_supply_init_attrs._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @power_supply_init_attrs._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 415, i32 45}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 467, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @power_supply_uevent.__UNIQUE_ID_ddebug184, !9, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 471, i32 28}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 510, i32 39}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 514, i32 39}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 520, i32 3}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @power_supply_charge_behaviour_show._entry, !20, !"_entry", i1 false, i1 false}
!25 = !{ptr @power_supply_charge_behaviour_show._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @__ksymtab_power_supply_charge_behaviour_show, !27, !"__ksymtab_power_supply_charge_behaviour_show", i1 false, i1 false}
!27 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 529, i32 1}
!28 = !{ptr @__ksymtab_power_supply_charge_behaviour_parse, !29, !"__ksymtab_power_supply_charge_behaviour_parse", i1 false, i1 false}
!29 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 543, i32 1}
!30 = !{ptr @__power_supply_attrs, !31, !"__power_supply_attrs", i1 false, i1 false}
!31 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 225, i32 1}
!32 = !{ptr @power_supply_attr_groups, !33, !"power_supply_attr_groups", i1 false, i1 false}
!33 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 390, i32 38}
!34 = !{ptr @power_supply_attr_group, !35, !"power_supply_attr_group", i1 false, i1 false}
!35 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 385, i32 37}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 145, i32 2}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 146, i32 2}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 147, i32 2}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 148, i32 2}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 149, i32 2}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 150, i32 2}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 151, i32 2}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 152, i32 2}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 153, i32 2}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 154, i32 2}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 155, i32 2}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 156, i32 2}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 157, i32 2}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 158, i32 2}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 159, i32 2}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 160, i32 2}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 161, i32 2}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 162, i32 2}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 163, i32 2}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 164, i32 2}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 165, i32 2}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 166, i32 2}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 167, i32 2}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 168, i32 2}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 169, i32 2}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 170, i32 2}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 171, i32 2}
!90 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 172, i32 2}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 173, i32 2}
!94 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 174, i32 2}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 175, i32 2}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 176, i32 2}
!100 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 177, i32 2}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 178, i32 2}
!104 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 179, i32 2}
!106 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 180, i32 2}
!108 = !{ptr @.str.50, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 181, i32 2}
!110 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 182, i32 2}
!112 = !{ptr @.str.52, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 183, i32 2}
!114 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 184, i32 2}
!116 = !{ptr @.str.54, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 185, i32 2}
!118 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 186, i32 2}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 187, i32 2}
!122 = !{ptr @.str.57, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 188, i32 2}
!124 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 189, i32 2}
!126 = !{ptr @.str.59, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 190, i32 2}
!128 = !{ptr @.str.60, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 191, i32 2}
!130 = !{ptr @.str.61, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 192, i32 2}
!132 = !{ptr @.str.62, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 193, i32 2}
!134 = !{ptr @.str.63, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 194, i32 2}
!136 = !{ptr @.str.64, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 195, i32 2}
!138 = !{ptr @.str.65, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 196, i32 2}
!140 = !{ptr @.str.66, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 197, i32 2}
!142 = !{ptr @.str.67, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 198, i32 2}
!144 = !{ptr @.str.68, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 199, i32 2}
!146 = !{ptr @.str.69, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 200, i32 2}
!148 = !{ptr @.str.70, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 201, i32 2}
!150 = !{ptr @.str.71, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 202, i32 2}
!152 = !{ptr @.str.72, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 203, i32 2}
!154 = !{ptr @.str.73, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 204, i32 2}
!156 = !{ptr @.str.74, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 205, i32 2}
!158 = !{ptr @.str.75, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 206, i32 2}
!160 = !{ptr @.str.76, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 207, i32 2}
!162 = !{ptr @.str.77, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 208, i32 2}
!164 = !{ptr @.str.78, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 209, i32 2}
!166 = !{ptr @.str.79, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 210, i32 2}
!168 = !{ptr @.str.80, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 211, i32 2}
!170 = !{ptr @.str.81, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 212, i32 2}
!172 = !{ptr @.str.82, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 213, i32 2}
!174 = !{ptr @.str.83, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 214, i32 2}
!176 = !{ptr @.str.84, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 215, i32 2}
!178 = !{ptr @.str.85, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 216, i32 2}
!180 = !{ptr @.str.86, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 217, i32 2}
!182 = !{ptr @.str.87, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 219, i32 2}
!184 = !{ptr @.str.88, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 220, i32 2}
!186 = !{ptr @.str.89, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 221, i32 2}
!188 = !{ptr @power_supply_attrs, !189, !"power_supply_attrs", i1 false, i1 false}
!189 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 143, i32 33}
!190 = !{ptr @.str.90, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 76, i32 35}
!192 = !{ptr @.str.91, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 77, i32 36}
!194 = !{ptr @.str.92, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 78, i32 38}
!196 = !{ptr @.str.93, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 79, i32 39}
!198 = !{ptr @.str.94, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 80, i32 32}
!200 = !{ptr @POWER_SUPPLY_STATUS_TEXT, !201, !"POWER_SUPPLY_STATUS_TEXT", i1 false, i1 false}
!201 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 75, i32 27}
!202 = !{ptr @.str.95, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 85, i32 37}
!204 = !{ptr @.str.96, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 86, i32 39}
!206 = !{ptr @.str.97, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 87, i32 37}
!208 = !{ptr @.str.98, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 88, i32 40}
!210 = !{ptr @.str.99, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 89, i32 40}
!212 = !{ptr @.str.100, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 90, i32 38}
!214 = !{ptr @.str.101, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 91, i32 40}
!216 = !{ptr @POWER_SUPPLY_CHARGE_TYPE_TEXT, !217, !"POWER_SUPPLY_CHARGE_TYPE_TEXT", i1 false, i1 false}
!217 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 83, i32 27}
!218 = !{ptr @.str.102, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 96, i32 36}
!220 = !{ptr @.str.103, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 97, i32 40}
!222 = !{ptr @.str.104, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 98, i32 36}
!224 = !{ptr @.str.105, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 99, i32 42}
!226 = !{ptr @.str.106, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 100, i32 45}
!228 = !{ptr @.str.107, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 101, i32 36}
!230 = !{ptr @.str.108, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 102, i32 48}
!232 = !{ptr @.str.109, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 103, i32 48}
!234 = !{ptr @.str.110, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 104, i32 42}
!236 = !{ptr @.str.111, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 105, i32 48}
!238 = !{ptr @.str.112, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 106, i32 36}
!240 = !{ptr @.str.113, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 107, i32 36}
!242 = !{ptr @.str.114, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 108, i32 35}
!244 = !{ptr @.str.115, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 109, i32 41}
!246 = !{ptr @POWER_SUPPLY_HEALTH_TEXT, !247, !"POWER_SUPPLY_HEALTH_TEXT", i1 false, i1 false}
!247 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 94, i32 27}
!248 = !{ptr @.str.116, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 114, i32 36}
!250 = !{ptr @.str.117, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 115, i32 36}
!252 = !{ptr @.str.118, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 116, i32 36}
!254 = !{ptr @.str.119, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 117, i32 36}
!256 = !{ptr @.str.120, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 118, i32 36}
!258 = !{ptr @.str.121, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 119, i32 36}
!260 = !{ptr @POWER_SUPPLY_TECHNOLOGY_TEXT, !261, !"POWER_SUPPLY_TECHNOLOGY_TEXT", i1 false, i1 false}
!261 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 112, i32 27}
!262 = !{ptr @.str.122, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 124, i32 43}
!264 = !{ptr @.str.123, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 125, i32 38}
!266 = !{ptr @.str.124, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 126, i32 41}
!268 = !{ptr @.str.125, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 127, i32 39}
!270 = !{ptr @POWER_SUPPLY_CAPACITY_LEVEL_TEXT, !271, !"POWER_SUPPLY_CAPACITY_LEVEL_TEXT", i1 false, i1 false}
!271 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 122, i32 27}
!272 = !{ptr @.str.126, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 48, i32 33}
!274 = !{ptr @.str.127, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 49, i32 30}
!276 = !{ptr @.str.128, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 50, i32 31}
!278 = !{ptr @.str.129, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 51, i32 30}
!280 = !{ptr @.str.130, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 52, i32 33}
!282 = !{ptr @.str.131, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 53, i32 33}
!284 = !{ptr @.str.132, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 54, i32 33}
!286 = !{ptr @.str.133, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 55, i32 36}
!288 = !{ptr @.str.134, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 56, i32 32}
!290 = !{ptr @.str.135, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 57, i32 36}
!292 = !{ptr @.str.136, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 58, i32 39}
!294 = !{ptr @.str.137, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 59, i32 34}
!296 = !{ptr @POWER_SUPPLY_TYPE_TEXT, !297, !"POWER_SUPPLY_TYPE_TEXT", i1 false, i1 false}
!297 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 46, i32 27}
!298 = !{ptr @.str.138, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 133, i32 32}
!300 = !{ptr @.str.139, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 134, i32 32}
!302 = !{ptr @POWER_SUPPLY_SCOPE_TEXT, !303, !"POWER_SUPPLY_SCOPE_TEXT", i1 false, i1 false}
!303 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 131, i32 27}
!304 = !{ptr @.str.140, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 287, i32 5}
!306 = !{ptr @.str.141, !305, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @power_supply_show_property.__UNIQUE_ID_ddebug183, !305, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!308 = !{ptr @.str.142, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 290, i32 5}
!310 = !{ptr @power_supply_show_property._rs, !309, !"_rs", i1 false, i1 false}
!311 = !{ptr @.str.143, !309, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @.str.144, !309, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @power_supply_show_property._entry, !309, !"_entry", i1 false, i1 false}
!314 = !{ptr @power_supply_show_property._entry_ptr, !309, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.145, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 299, i32 23}
!317 = !{ptr @.str.146, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 311, i32 22}
!319 = !{ptr @.str.147, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 261, i32 3}
!321 = !{ptr @.str.148, !320, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @power_supply_show_usb_type._entry, !320, !"_entry", i1 false, i1 false}
!323 = !{ptr @power_supply_show_usb_type._entry_ptr, !320, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.149, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 64, i32 33}
!326 = !{ptr @.str.150, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 65, i32 33}
!328 = !{ptr @.str.151, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 66, i32 33}
!330 = !{ptr @.str.152, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 67, i32 33}
!332 = !{ptr @.str.153, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 68, i32 31}
!334 = !{ptr @.str.154, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 69, i32 32}
!336 = !{ptr @.str.155, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 70, i32 36}
!338 = !{ptr @.str.156, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 71, i32 36}
!340 = !{ptr @POWER_SUPPLY_USB_TYPE_TEXT, !341, !"POWER_SUPPLY_USB_TYPE_TEXT", i1 false, i1 false}
!341 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 62, i32 27}
!342 = !{ptr @.str.157, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 456, i32 29}
!344 = !{ptr @.str.158, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 138, i32 42}
!346 = !{ptr @.str.159, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 139, i32 51}
!348 = !{ptr @.str.160, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 140, i32 52}
!350 = !{ptr @POWER_SUPPLY_CHARGE_BEHAVIOUR_TEXT, !351, !"POWER_SUPPLY_CHARGE_BEHAVIOUR_TEXT", i1 false, i1 false}
!351 = !{!"../drivers/power/supply/power_supply_sysfs.c", i32 137, i32 27}
!352 = !{i32 1, !"wchar_size", i32 2}
!353 = !{i32 1, !"min_enum_size", i32 4}
!354 = !{i32 8, !"branch-target-enforcement", i32 0}
!355 = !{i32 8, !"sign-return-address", i32 0}
!356 = !{i32 8, !"sign-return-address-all", i32 0}
!357 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!358 = !{i32 7, !"uwtable", i32 1}
!359 = !{i32 7, !"frame-pointer", i32 2}
!360 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!361 = !{!"auto-init"}
!362 = !{i64 2148294146, i64 2148294151, i64 2148294164, i64 2148294208, i64 2148294242, i64 2148294263}
