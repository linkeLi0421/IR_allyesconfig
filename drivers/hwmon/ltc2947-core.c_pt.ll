; ModuleID = '/llk/IR_all_yes/drivers/hwmon/ltc2947-core.c_pt.bc'
source_filename = "../drivers/hwmon/ltc2947-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ltc2947_core_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_ltc2947_core_probe\09\09\09\09"
module asm "\09.long\09__crc_ltc2947_core_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ltc2947_core_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22ltc2947_core_probe\22\09\09\09\09\09"
module asm "__kstrtabns_ltc2947_core_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ltc2947_pm_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_ltc2947_pm_ops\09\09\09\09"
module asm "\09.long\09__crc_ltc2947_pm_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ltc2947_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22ltc2947_pm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_ltc2947_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ltc2947_of_match\22, \22a\22\09"
module asm "\09.weak\09__crc_ltc2947_of_match\09\09\09\09"
module asm "\09.long\09__crc_ltc2947_of_match\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ltc2947_of_match:\09\09\09\09\09"
module asm "\09.asciz \09\22ltc2947_of_match\22\09\09\09\09\09"
module asm "__kstrtabns_ltc2947_of_match:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.hwmon_channel_info = type { i32, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.ltc2947_data = type { ptr, ptr, %struct.mutex, i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }

@ltc2947_core_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&st->lock\00", [22 x i8] zeroinitializer }, align 32
@ltc2947_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @ltc2947_hwmon_ops, ptr @ltc2947_info }, [24 x i8] zeroinitializer }, align 32
@ltc2947_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @ltc2947_group, ptr null], [24 x i8] zeroinitializer }, align 32
@__kstrtab_ltc2947_core_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_ltc2947_core_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_ltc2947_core_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ltc2947_core_probe to i32), ptr @__kstrtab_ltc2947_core_probe, ptr @__kstrtabns_ltc2947_core_probe }, section "___ksymtab_gpl+ltc2947_core_probe", align 4
@ltc2947_pm_ops = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ltc2947_suspend, ptr @ltc2947_resume, ptr @ltc2947_suspend, ptr @ltc2947_resume, ptr @ltc2947_suspend, ptr @ltc2947_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_ltc2947_pm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_ltc2947_pm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_ltc2947_pm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ltc2947_pm_ops to i32), ptr @__kstrtab_ltc2947_pm_ops, ptr @__kstrtabns_ltc2947_pm_ops }, section "___ksymtab_gpl+ltc2947_pm_ops", align 4
@ltc2947_of_match = dso_local constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ltc2947\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@__kstrtab_ltc2947_of_match = external dso_local constant [0 x i8], align 1
@__kstrtabns_ltc2947_of_match = external dso_local constant [0 x i8], align 1
@__ksymtab_ltc2947_of_match = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ltc2947_of_match to i32), ptr @__kstrtab_ltc2947_of_match, ptr @__kstrtabns_ltc2947_of_match }, section "___ksymtab_gpl+ltc2947_of_match", align 4
@__UNIQUE_ID_author269 = internal constant [49 x i8] c"ltc2947_core.author=Nuno Sa <nuno.sa@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description270 = internal constant [70 x i8] c"ltc2947_core.description=LTC2947 power and energy monitor core driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file271 = internal constant [45 x i8] c"ltc2947_core.file=drivers/hwmon/ltc2947-core\00", section ".modinfo", align 1
@__UNIQUE_ID_license272 = internal constant [25 x i8] c"ltc2947_core.license=GPL\00", section ".modinfo", align 1
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get external clock\0A\00", [34 x i8] zeroinitializer }, align 32
@ltc2947_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1006, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Invalid rate:%lu for external clock\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ltc2947_setup\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/hwmon/ltc2947-core.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ltc2947_setup._entry_ptr = internal global ptr @ltc2947_setup._entry, section ".printk_index", align 4
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"adi,accumulator-ctl-pol\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"adi,accumulation-deadband-microamp\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"adi,gpio-out-pol\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"adi,gpio-in-accum\00", [46 x i8] zeroinitializer }, align 32
@ltc2947_setup._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 1097, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Cannot have input gpio config if already configured as output\00", [34 x i8] zeroinitializer }, align 32
@ltc2947_setup._entry_ptr.13 = internal global ptr @ltc2947_setup._entry.11, section ".printk_index", align 4
@ltc2947_val_write.__UNIQUE_ID_ddebug172 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.4, ptr @.str.16, i8 0, i8 63, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ltc2947_core\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ltc2947_val_write\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Write val, r:%02X, p:%d, sz:%zu, val:%016llX\0A\00", [50 x i8] zeroinitializer }, align 32
@ltc2947_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @ltc2947_is_visible, ptr @ltc2947_read, ptr @ltc2947_read_labels, ptr @ltc2947_write }, [16 x i8] zeroinitializer }, align 32
@ltc2947_info = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.compoundliteral.33, ptr @.compoundliteral.35, ptr @.compoundliteral.37, ptr @.compoundliteral.39, ptr null], [44 x i8] zeroinitializer }, align 32
@ltc2947_read_in._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 507, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid chan%d for voltage\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ltc2947_read_in\00", [16 x i8] zeroinitializer }, align 32
@ltc2947_read_in._entry_ptr = internal global ptr @ltc2947_read_in._entry, section ".printk_index", align 4
@ltc2947_val_read.__UNIQUE_ID_ddebug170 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.19, ptr @.str.4, ptr @.str.20, i8 0, i8 48, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ltc2947_val_read\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Read val, reg:%02X, p:%d sz:%zu\0A\00", [63 x i8] zeroinitializer }, align 32
@ltc2947_val_read.__UNIQUE_ID_ddebug171 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.19, ptr @.str.4, ptr @.str.21, i8 0, i8 54, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Got s:%lld, u:%016llX\0A\00", [41 x i8] zeroinitializer }, align 32
@ltc2947_alarm_read.__UNIQUE_ID_ddebug173 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.22, ptr @.str.4, ptr @.str.23, i8 0, i8 75, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ltc2947_alarm_read\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Read alarm, reg:%02X, mask:%02X\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DVCC\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VP-VM\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IP-IM\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TEMPFAN\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Ambient\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Power\00", [26 x i8] zeroinitializer }, align 32
@ltc2947_write_in._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.30, ptr @.str.4, i32 716, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ltc2947_write_in\00", [47 x i8] zeroinitializer }, align 32
@ltc2947_write_in._entry_ptr = internal global ptr @ltc2947_write_in._entry, section ".printk_index", align 4
@ltc2947_write_temp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.4, i32 613, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid chan%d for temperature\00", [33 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ltc2947_write_temp\00", [45 x i8] zeroinitializer }, align 32
@ltc2947_write_temp._entry_ptr = internal global ptr @ltc2947_write_temp._entry, section ".printk_index", align 4
@.compoundliteral = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 14222, i32 14222, i32 0], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.33 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 2, ptr @.compoundliteral }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 14222, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 3, ptr @.compoundliteral.34 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 105651712, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 4, ptr @.compoundliteral.36 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.38 = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 31555746, i32 2195616, i32 0], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.39 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 1, ptr @.compoundliteral.38 }, [24 x i8] zeroinitializer }, align 32
@ltc2947_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ltc2947_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@ltc2947_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @sensor_dev_attr_energy1_input, ptr @sensor_dev_attr_energy2_input, ptr null], [20 x i8] zeroinitializer }, align 32
@sensor_dev_attr_energy1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ltc2947_show_value, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_energy2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ltc2947_show_value, ptr null }, i32 22 }, [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"energy1_input\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%lld\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"energy2_input\00", [18 x i8] zeroinitializer }, align 32
@ltc2947_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 1158, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Device failed to wake up, ctl:%02X\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ltc2947_resume\00", [17 x i8] zeroinitializer }, align 32
@ltc2947_resume._entry_ptr = internal global ptr @ltc2947_resume._entry, section ".printk_index", align 4
@switch.table.ltc2947_is_visible = internal constant { [13 x i16], [38 x i8] } { [13 x i16] [i16 292, i16 420, i16 420, i16 0, i16 0, i16 0, i16 292, i16 292, i16 128, i16 292, i16 0, i16 292, i16 292], [38 x i8] zeroinitializer }, align 32
@switch.table.ltc2947_is_visible.45 = internal constant { [13 x i16], [38 x i8] } { [13 x i16] [i16 292, i16 420, i16 420, i16 0, i16 0, i16 0, i16 292, i16 292, i16 128, i16 292, i16 0, i16 292, i16 292], [38 x i8] zeroinitializer }, align 32
@switch.table.ltc2947_is_visible.46 = internal constant { [18 x i16], [60 x i8] } { [18 x i16] [i16 292, i16 292, i16 292, i16 128, i16 0, i16 0, i16 0, i16 0, i16 0, i16 420, i16 420, i16 0, i16 0, i16 292, i16 0, i16 0, i16 292, i16 292], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.47 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 5, i64 7, i64 15, i64 16, i64 21, i64 22, i64 23, i64 24]
@__sancov_gen_cov_switch_values.48 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.49 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 7, i64 8, i64 12, i64 13]
@__sancov_gen_cov_switch_values.50 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 7, i64 8, i64 12, i64 13]
@__sancov_gen_cov_switch_values.51 = internal global [9 x i64] [i64 7, i64 32, i64 9, i64 10, i64 11, i64 18, i64 19, i64 25, i64 26]
@__sancov_gen_cov_switch_values.52 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 5, i64 7, i64 15, i64 16, i64 22, i64 23]
@__sancov_gen_cov_switch_values.53 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.54 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 9]
@__sancov_gen_cov_switch_values.56 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 9]
@__sancov_gen_cov_switch_values.57 = internal global [5 x i64] [i64 3, i64 32, i64 12, i64 18, i64 19]
@__sancov_gen_cov_switch_values.58 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 7, i64 24]
@__sancov_gen_cov_switch_values.59 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 6]
@___asan_gen_.60 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1125, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [18 x i8] c"ltc2947_chip_info\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 941, i32 37 }
@___asan_gen_.69 = private unnamed_addr constant [15 x i8] c"ltc2947_groups\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [15 x i8] c"ltc2947_pm_ops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1175, i32 1 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"ltc2947_of_match\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1178, i32 27 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 995, i32 10 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1005, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1053, i32 7 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1064, i32 8 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1074, i32 47 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1085, i32 53 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1096, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 252, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [18 x i8] c"ltc2947_hwmon_ops\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 934, i32 31 }
@___asan_gen_.129 = private unnamed_addr constant [13 x i8] c"ltc2947_info\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 904, i32 41 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 507, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 191, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 216, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 303, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 785, i32 11 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 787, i32 11 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 790, i32 10 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 794, i32 11 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 796, i32 11 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 799, i32 10 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 716, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 613, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [20 x i8] c".compoundliteral.33\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.192 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.195 = private unnamed_addr constant [20 x i8] c".compoundliteral.38\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [20 x i8] c".compoundliteral.39\00", align 1
@___asan_gen_.197 = private unnamed_addr constant [14 x i8] c"ltc2947_group\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 957, i32 1 }
@___asan_gen_.200 = private unnamed_addr constant [14 x i8] c"ltc2947_attrs\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 952, i32 26 }
@___asan_gen_.203 = private unnamed_addr constant [30 x i8] c"sensor_dev_attr_energy1_input\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [30 x i8] c"sensor_dev_attr_energy2_input\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 947, i32 8 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 336, i32 22 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 949, i32 8 }
@___asan_gen_.218 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.224 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.225 = private constant [32 x i8] c"../drivers/hwmon/ltc2947-core.c\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1158, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant [32 x i8] c"switch.table.ltc2947_is_visible\00", align 1
@___asan_gen_.228 = private unnamed_addr constant [35 x i8] c"switch.table.ltc2947_is_visible.45\00", align 1
@___asan_gen_.229 = private unnamed_addr constant [35 x i8] c"switch.table.ltc2947_is_visible.46\00", align 1
@llvm.compiler.used = appending global [77 x ptr] [ptr @__UNIQUE_ID_author269, ptr @__UNIQUE_ID_description270, ptr @__UNIQUE_ID_file271, ptr @__UNIQUE_ID_license272, ptr @__ksymtab_ltc2947_core_probe, ptr @__ksymtab_ltc2947_of_match, ptr @__ksymtab_ltc2947_pm_ops, ptr @ltc2947_read_in._entry, ptr @ltc2947_read_in._entry_ptr, ptr @ltc2947_resume._entry, ptr @ltc2947_resume._entry_ptr, ptr @ltc2947_setup._entry, ptr @ltc2947_setup._entry.11, ptr @ltc2947_setup._entry_ptr, ptr @ltc2947_setup._entry_ptr.13, ptr @ltc2947_write_in._entry, ptr @ltc2947_write_in._entry_ptr, ptr @ltc2947_write_temp._entry, ptr @ltc2947_write_temp._entry_ptr, ptr @ltc2947_core_probe.__key, ptr @.str, ptr @ltc2947_chip_info, ptr @ltc2947_groups, ptr @ltc2947_pm_ops, ptr @ltc2947_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @ltc2947_hwmon_ops, ptr @ltc2947_info, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.compoundliteral, ptr @.compoundliteral.33, ptr @.compoundliteral.34, ptr @.compoundliteral.35, ptr @.compoundliteral.36, ptr @.compoundliteral.37, ptr @.compoundliteral.38, ptr @.compoundliteral.39, ptr @ltc2947_group, ptr @ltc2947_attrs, ptr @sensor_dev_attr_energy1_input, ptr @sensor_dev_attr_energy2_input, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @switch.table.ltc2947_is_visible, ptr @switch.table.ltc2947_is_visible.45, ptr @switch.table.ltc2947_is_visible.46], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2947_core_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2947_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2947_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2947_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2947_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2947_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2947_setup._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2947_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2947_info to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2947_read_in._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2947_write_in._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2947_write_temp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2947_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2947_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_energy1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_energy2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2947_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ltc2947_is_visible to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ltc2947_is_visible.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ltc2947_is_visible.46 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ltc2947_core_probe(ptr noundef %map, ptr noundef %name) #0 align 64 {
entry:
  %dummy.i = alloca i32, align 4
  %deadband.i = alloca i32, align 4
  %pol.i = alloca i32, align 4
  %accum.i = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @regmap_get_device(ptr noundef %map) #8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %call, i32 noundef 108, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %map, ptr %call.i, align 4
  %dev3 = getelementptr inbounds %struct.ltc2947_data, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %dev3, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.ltc2947_data, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @ltc2947_core_probe.__key) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i) #8
  %3 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %dummy.i, align 4, !annotation !117
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %deadband.i) #8
  %4 = ptrtoint ptr %deadband.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %deadband.i, align 4, !annotation !117
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pol.i) #8
  %5 = ptrtoint ptr %pol.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %pol.i, align 4, !annotation !117
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %accum.i) #8
  %6 = ptrtoint ptr %accum.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %accum.i, align 4, !annotation !117
  %7 = getelementptr inbounds [2 x i32], ptr %accum.i, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !117
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 4
  %call.i24 = call i32 @regmap_read(ptr noundef %10, i32 noundef 128, ptr noundef nonnull %dummy.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %tobool.not.i = icmp eq i32 %call.i24, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.ltc2947_setup.exit.thread_crit_edge

if.end.ltc2947_setup.exit.thread_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc2947_setup.exit.thread

if.end.i:                                         ; preds = %if.end
  %call1.i = call fastcc i32 @ltc2947_val_write(ptr noundef nonnull %call.i, i8 noundef zeroext -124, i8 noundef zeroext 1, i64 noundef 2250) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.ltc2947_setup.exit.thread_crit_edge

if.end.i.ltc2947_setup.exit.thread_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc2947_setup.exit.thread

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = call fastcc i32 @ltc2947_val_write(ptr noundef nonnull %call.i, i8 noundef zeroext -122, i8 noundef zeroext 1, i64 noundef -2250) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.ltc2947_setup.exit.thread_crit_edge

if.end4.i.ltc2947_setup.exit.thread_crit_edge:    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc2947_setup.exit.thread

if.end8.i:                                        ; preds = %if.end4.i
  %11 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev3, align 4
  %call9.i = call ptr @devm_clk_get_optional(ptr noundef %12, ptr noundef null) #8
  %cmp.i.i = icmp ugt ptr %call9.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then11.i, label %if.end15.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev3, align 4
  %15 = ptrtoint ptr %call9.i to i32
  %call14.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %14, i32 noundef %15, ptr noundef nonnull @.str.1) #8
  br label %ltc2947_setup.exit

if.end15.i:                                       ; preds = %if.end8.i
  %tobool16.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool16.not.i, label %if.end15.i.if.end337.i_crit_edge, label %if.then17.i

if.end15.i.if.end337.i_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end337.i

if.then17.i:                                      ; preds = %if.end15.i
  %call18.i = call i32 @clk_get_rate(ptr noundef nonnull %call9.i) #8
  %16 = add i32 %call18.i, -25000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -24800001, i32 %16)
  %17 = icmp ult i32 %16, -24800001
  br i1 %17, label %do.end.i, label %if.end22.i

do.end.i:                                         ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.2, i32 noundef %call18.i) #11
  br label %ltc2947_setup.exit.thread

if.end22.i:                                       ; preds = %if.then17.i
  %call.i30 = call i32 @clk_prepare(ptr noundef nonnull %call9.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %tobool.not.i31 = icmp eq i32 %call.i30, 0
  br i1 %tobool.not.i31, label %if.end.i34, label %if.end22.i.ltc2947_setup.exit.thread_crit_edge

if.end22.i.ltc2947_setup.exit.thread_crit_edge:   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc2947_setup.exit.thread

if.end.i34:                                       ; preds = %if.end22.i
  %call1.i32 = call i32 @clk_enable(ptr noundef nonnull %call9.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i32)
  %tobool2.not.i33 = icmp eq i32 %call1.i32, 0
  br i1 %tobool2.not.i33, label %if.end26.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #10
  call void @clk_unprepare(ptr noundef nonnull %call9.i) #8
  br label %ltc2947_setup.exit.thread

if.end26.i:                                       ; preds = %if.end.i34
  %20 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev3, align 4
  %call.i27 = call i32 @devm_add_action(ptr noundef %21, ptr noundef nonnull @ltc2947_clk_disable, ptr noundef nonnull %call9.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %tobool.not.i28 = icmp eq i32 %call.i27, 0
  br i1 %tobool.not.i28, label %land.lhs.true.i, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @clk_disable(ptr noundef nonnull %call9.i) #8
  call void @clk_unprepare(ptr noundef nonnull %call9.i) #8
  br label %ltc2947_setup.exit.thread

land.lhs.true.i:                                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000001, i32 %call18.i)
  %cmp33.i = icmp ult i32 %call18.i, 1000001
  br i1 %cmp33.i, label %land.lhs.true.i.if.end64.i_crit_edge, label %land.lhs.true36.i

land.lhs.true.i.if.end64.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64.i

land.lhs.true36.i:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000001, i32 %call18.i)
  %cmp37.i = icmp ult i32 %call18.i, 2000001
  br i1 %cmp37.i, label %land.lhs.true36.i.if.end64.i_crit_edge, label %land.lhs.true41.i

land.lhs.true36.i.if.end64.i_crit_edge:           ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64.i

land.lhs.true41.i:                                ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000001, i32 %call18.i)
  %cmp42.i = icmp ult i32 %call18.i, 4000001
  br i1 %cmp42.i, label %land.lhs.true41.i.if.end64.i_crit_edge, label %land.lhs.true46.i

land.lhs.true41.i.if.end64.i_crit_edge:           ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64.i

land.lhs.true46.i:                                ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000001, i32 %call18.i)
  %cmp47.i = icmp ult i32 %call18.i, 8000001
  br i1 %cmp47.i, label %land.lhs.true46.i.if.end64.i_crit_edge, label %land.lhs.true51.i

land.lhs.true46.i.if.end64.i_crit_edge:           ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64.i

land.lhs.true51.i:                                ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 16000001, i32 %call18.i)
  %cmp52.i = icmp ult i32 %call18.i, 16000001
  %spec.select.i = select i1 %cmp52.i, i8 4, i8 5
  br label %if.end64.i

if.end64.i:                                       ; preds = %land.lhs.true51.i, %land.lhs.true46.i.if.end64.i_crit_edge, %land.lhs.true41.i.if.end64.i_crit_edge, %land.lhs.true36.i.if.end64.i_crit_edge, %land.lhs.true.i.if.end64.i_crit_edge
  %pre.0.i = phi i8 [ 0, %land.lhs.true.i.if.end64.i_crit_edge ], [ 1, %land.lhs.true36.i.if.end64.i_crit_edge ], [ 2, %land.lhs.true41.i.if.end64.i_crit_edge ], [ 3, %land.lhs.true46.i.if.end64.i_crit_edge ], [ %spec.select.i, %land.lhs.true51.i ]
  %conv.i = zext i8 %pre.0.i to i32
  %22 = add nuw nsw i32 %conv.i, 15
  %div65750.i = lshr i32 %call18.i, %22
  %conv66.i = trunc i32 %div65750.i to i8
  %23 = shl i8 %conv66.i, 3
  %conv115.i = or i8 %23, %pre.0.i
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.i, align 4
  %conv117.i = zext i8 %conv115.i to i32
  %call118.i = call i32 @regmap_write(ptr noundef %25, i32 noundef 233, i32 noundef %conv117.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118.i)
  %tobool119.not.i = icmp eq i32 %call118.i, 0
  br i1 %tobool119.not.i, label %if.end121.i, label %if.end64.i.ltc2947_setup.exit.thread_crit_edge

if.end64.i.ltc2947_setup.exit.thread_crit_edge:   ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc2947_setup.exit.thread

if.end121.i:                                      ; preds = %if.end64.i
  %shl.i = shl nuw nsw i32 1, %conv.i
  %conv112.i = and i32 %div65750.i, 255
  %add.i = add nuw nsw i32 %conv112.i, 1
  %26 = zext i32 %add.i to i64
  %27 = zext i32 %shl.i to i64
  %mul127.i = mul nuw nsw i64 %27, 641600000
  %mul128.i = mul nuw nsw i64 %mul127.i, %26
  %div129751.i = lshr i32 %call18.i, 1
  %conv130.i = zext i32 %div129751.i to i64
  %add131.i = add nuw nsw i64 %mul128.i, %conv130.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add131.i)
  %cmp313.i = icmp ult i64 %add131.i, 4294967296
  br i1 %cmp313.i, label %if.then317.i, label %if.else323.i, !prof !118

if.then317.i:                                     ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv318.i = trunc i64 %add131.i to i32
  %div321.i = udiv i32 %conv318.i, %call18.i
  br label %if.end337.i

if.else323.i:                                     ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #10
  %28 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call18.i, i64 %add131.i) #12, !srcloc !119
  %asmresult1.i.i = extractvalue { i64, i64 } %28, 1
  %extract.t781.i = trunc i64 %asmresult1.i.i to i32
  br label %if.end337.i

if.end337.i:                                      ; preds = %if.else323.i, %if.then317.i, %if.end15.i.if.end337.i_crit_edge
  %_tmp.0.off0.sink.i = phi i32 [ %div321.i, %if.then317.i ], [ %extract.t781.i, %if.else323.i ], [ 19890, %if.end15.i.if.end337.i_crit_edge ]
  %lsb_energy.i = getelementptr inbounds %struct.ltc2947_data, ptr %call.i, i32 0, i32 3
  %29 = ptrtoint ptr %lsb_energy.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %_tmp.0.off0.sink.i, ptr %lsb_energy.i, align 4
  %30 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev3, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 27
  %32 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %of_node.i, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %33, ptr noundef nonnull @.str.7, ptr noundef nonnull %accum.i, i32 noundef 2, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool340.not.i = icmp sgt i32 %call.i.i, -1
  br i1 %tobool340.not.i, label %if.then341.i, label %if.end337.i.if.end404.i_crit_edge

if.end337.i.if.end404.i_crit_edge:                ; preds = %if.end337.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end404.i

if.then341.i:                                     ; preds = %if.end337.i
  %34 = ptrtoint ptr %accum.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %accum.i, align 4
  %36 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %7, align 4
  %and367.i = and i32 %35, 3
  %shl393.i = shl i32 %37, 2
  %and394.i = and i32 %shl393.i, 12
  %or395.i = or i32 %and394.i, %and367.i
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call.i, align 4
  %call397.i = call i32 @regmap_write(ptr noundef %39, i32 noundef 225, i32 noundef %or395.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call397.i)
  %tobool398.not.i = icmp eq i32 %call397.i, 0
  br i1 %tobool398.not.i, label %if.then341.i.if.end404.i_crit_edge, label %if.then341.i.ltc2947_setup.exit.thread_crit_edge

if.then341.i.ltc2947_setup.exit.thread_crit_edge: ; preds = %if.then341.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc2947_setup.exit.thread

if.then341.i.if.end404.i_crit_edge:               ; preds = %if.then341.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end404.i

if.end404.i:                                      ; preds = %if.then341.i.if.end404.i_crit_edge, %if.end337.i.if.end404.i_crit_edge
  %40 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev3, align 4
  %of_node406.i = getelementptr inbounds %struct.device, ptr %41, i32 0, i32 27
  %42 = ptrtoint ptr %of_node406.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %of_node406.i, align 8
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %43, ptr noundef nonnull @.str.8, ptr noundef nonnull %deadband.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool408.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool408.not.i, label %if.then409.i, label %if.end404.i.if.end416.i_crit_edge

if.end404.i.if.end416.i_crit_edge:                ; preds = %if.end404.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end416.i

if.then409.i:                                     ; preds = %if.end404.i
  %44 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call.i, align 4
  %46 = ptrtoint ptr %deadband.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %deadband.i, align 4
  %div411.i = udiv i32 %47, 3000
  %call412.i = call i32 @regmap_write(ptr noundef %45, i32 noundef 228, i32 noundef %div411.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call412.i)
  %tobool413.not.i = icmp eq i32 %call412.i, 0
  br i1 %tobool413.not.i, label %if.then409.i.if.end416.i_crit_edge, label %if.then409.i.ltc2947_setup.exit.thread_crit_edge

if.then409.i.ltc2947_setup.exit.thread_crit_edge: ; preds = %if.then409.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc2947_setup.exit.thread

if.then409.i.if.end416.i_crit_edge:               ; preds = %if.then409.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end416.i

if.end416.i:                                      ; preds = %if.then409.i.if.end416.i_crit_edge, %if.end404.i.if.end416.i_crit_edge
  %48 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev3, align 4
  %of_node418.i = getelementptr inbounds %struct.device, ptr %49, i32 0, i32 27
  %50 = ptrtoint ptr %of_node418.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %of_node418.i, align 8
  %call.i.i764.i = call i32 @of_property_read_variable_u32_array(ptr noundef %51, ptr noundef nonnull @.str.9, ptr noundef nonnull %pol.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i764.i)
  %tobool420.not.i = icmp sgt i32 %call.i.i764.i, -1
  br i1 %tobool420.not.i, label %do.end475.i, label %if.end416.i.if.end488.i_crit_edge

if.end416.i.if.end488.i_crit_edge:                ; preds = %if.end416.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end488.i

do.end475.i:                                      ; preds = %if.end416.i
  %52 = ptrtoint ptr %pol.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pol.i, align 4
  %shl477.i = shl i32 %53, 7
  %and478.i = and i32 %shl477.i, 128
  %or479.i = or i32 %and478.i, 65
  %gpio_out.i = getelementptr inbounds %struct.ltc2947_data, ptr %call.i, i32 0, i32 4
  %54 = ptrtoint ptr %gpio_out.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %gpio_out.i, align 4
  %55 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call.i, align 4
  %call481.i = call i32 @regmap_write(ptr noundef %56, i32 noundef 103, i32 noundef %or479.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call481.i)
  %tobool482.not.i = icmp eq i32 %call481.i, 0
  br i1 %tobool482.not.i, label %do.end475.i.if.end488.i_crit_edge, label %do.end475.i.ltc2947_setup.exit.thread_crit_edge

do.end475.i.ltc2947_setup.exit.thread_crit_edge:  ; preds = %do.end475.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc2947_setup.exit.thread

do.end475.i.if.end488.i_crit_edge:                ; preds = %do.end475.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end488.i

if.end488.i:                                      ; preds = %do.end475.i.if.end488.i_crit_edge, %if.end416.i.if.end488.i_crit_edge
  %57 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev3, align 4
  %of_node490.i = getelementptr inbounds %struct.device, ptr %58, i32 0, i32 27
  %59 = ptrtoint ptr %of_node490.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %of_node490.i, align 8
  %call.i765.i = call i32 @of_property_read_variable_u32_array(ptr noundef %60, ptr noundef nonnull @.str.10, ptr noundef nonnull %accum.i, i32 noundef 2, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i765.i)
  %tobool493.not.i = icmp sgt i32 %call.i765.i, -1
  br i1 %tobool493.not.i, label %do.end517.i, label %if.end488.i.if.end566.i_crit_edge

if.end488.i.if.end566.i_crit_edge:                ; preds = %if.end488.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end566.i

do.end517.i:                                      ; preds = %if.end488.i
  %gpio_out550.i = getelementptr inbounds %struct.ltc2947_data, ptr %call.i, i32 0, i32 4
  %61 = ptrtoint ptr %gpio_out550.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %gpio_out550.i, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool551.not.i = icmp eq i8 %62, 0
  br i1 %tobool551.not.i, label %cleanup563.i, label %cleanup563.thread.i

cleanup563.thread.i:                              ; preds = %do.end517.i
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.12) #11
  br label %ltc2947_setup.exit.thread

cleanup563.i:                                     ; preds = %do.end517.i
  %65 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %7, align 4
  %67 = ptrtoint ptr %accum.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %accum.i, align 4
  %and521.i = and i32 %68, 3
  %shl547.i = shl i32 %66, 2
  %and548.i = and i32 %shl547.i, 12
  %or549.i = or i32 %and548.i, %and521.i
  %69 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %call.i, align 4
  %call559.i = call i32 @regmap_write(ptr noundef %70, i32 noundef 227, i32 noundef %or549.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call559.i)
  %tobool560.not.i = icmp eq i32 %call559.i, 0
  br i1 %tobool560.not.i, label %cleanup563.i.if.end566.i_crit_edge, label %cleanup563.i.ltc2947_setup.exit.thread_crit_edge

cleanup563.i.ltc2947_setup.exit.thread_crit_edge: ; preds = %cleanup563.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc2947_setup.exit.thread

cleanup563.i.if.end566.i_crit_edge:               ; preds = %cleanup563.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end566.i

if.end566.i:                                      ; preds = %cleanup563.i.if.end566.i_crit_edge, %if.end488.i.if.end566.i_crit_edge
  %71 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %call.i, align 4
  %call.i766.i = call i32 @regmap_update_bits_base(ptr noundef %72, i32 noundef 240, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %ltc2947_setup.exit

ltc2947_setup.exit.thread:                        ; preds = %cleanup563.i.ltc2947_setup.exit.thread_crit_edge, %cleanup563.thread.i, %do.end475.i.ltc2947_setup.exit.thread_crit_edge, %if.then409.i.ltc2947_setup.exit.thread_crit_edge, %if.then341.i.ltc2947_setup.exit.thread_crit_edge, %if.end64.i.ltc2947_setup.exit.thread_crit_edge, %devm_add_action_or_reset.exit, %if.then3.i, %if.end22.i.ltc2947_setup.exit.thread_crit_edge, %do.end.i, %if.end4.i.ltc2947_setup.exit.thread_crit_edge, %if.end.i.ltc2947_setup.exit.thread_crit_edge, %if.end.ltc2947_setup.exit.thread_crit_edge
  %retval.7.i.ph = phi i32 [ -22, %do.end.i ], [ %call.i27, %devm_add_action_or_reset.exit ], [ %call118.i, %if.end64.i.ltc2947_setup.exit.thread_crit_edge ], [ -22, %cleanup563.thread.i ], [ %call412.i, %if.then409.i.ltc2947_setup.exit.thread_crit_edge ], [ %call5.i, %if.end4.i.ltc2947_setup.exit.thread_crit_edge ], [ %call1.i, %if.end.i.ltc2947_setup.exit.thread_crit_edge ], [ %call.i24, %if.end.ltc2947_setup.exit.thread_crit_edge ], [ %call397.i, %if.then341.i.ltc2947_setup.exit.thread_crit_edge ], [ %call481.i, %do.end475.i.ltc2947_setup.exit.thread_crit_edge ], [ %call559.i, %cleanup563.i.ltc2947_setup.exit.thread_crit_edge ], [ %call1.i32, %if.then3.i ], [ %call.i30, %if.end22.i.ltc2947_setup.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %accum.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pol.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %deadband.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i) #8
  br label %cleanup

ltc2947_setup.exit:                               ; preds = %if.end566.i, %if.then11.i
  %retval.7.i = phi i32 [ %call14.i, %if.then11.i ], [ %call.i766.i, %if.end566.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %accum.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pol.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %deadband.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.7.i)
  %tobool5.not = icmp eq i32 %retval.7.i, 0
  br i1 %tobool5.not, label %if.end7, label %ltc2947_setup.exit.cleanup_crit_edge

ltc2947_setup.exit.cleanup_crit_edge:             ; preds = %ltc2947_setup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %ltc2947_setup.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = call ptr @devm_hwmon_device_register_with_info(ptr noundef %call, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef nonnull @ltc2947_chip_info, ptr noundef nonnull @ltc2947_groups) #8
  %cmp.i.i25 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  %73 = ptrtoint ptr %call8 to i32
  %spec.select.i26 = select i1 %cmp.i.i25, i32 %73, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %ltc2947_setup.exit.cleanup_crit_edge, %ltc2947_setup.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i26, %if.end7 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.7.i, %ltc2947_setup.exit.cleanup_crit_edge ], [ %retval.7.i.ph, %ltc2947_setup.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc2947_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 240, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc2947_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  %ctrl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl) #8
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ctrl, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 240, ptr noundef nonnull %ctrl) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @msleep(i32 noundef 110) #8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call3 = call i32 @regmap_read(ptr noundef %6, i32 noundef 240, ptr noundef nonnull %ctrl) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %7 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ctrl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not = icmp eq i32 %8, 0
  br i1 %cmp.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %dev8 = getelementptr inbounds %struct.ltc2947_data, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.43, i32 noundef %8) #11
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 240, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end ], [ %call.i, %if.end9 ], [ %call1, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ltc2947_val_write(ptr noundef %st, i8 noundef zeroext %reg, i8 noundef zeroext %page, i64 noundef %val) unnamed_addr #0 align 64 {
entry:
  %__val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ltc2947_data, ptr %st, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %0 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %st, align 4
  %conv = zext i8 %page to i32
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 255, i32 noundef %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ltc2947_val_write.__UNIQUE_ID_ddebug172, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ltc2947_val_write, %sw.bb)) #8
          to label %if.then7 [label %sw.bb], !srcloc !121

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.ltc2947_data, ptr %st, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %conv8 = zext i8 %reg to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ltc2947_val_write.__UNIQUE_ID_ddebug172, ptr noundef %3, ptr noundef nonnull @.str.16, i32 noundef %conv8, i32 noundef %conv, i32 noundef 2, i64 noundef %val) #8
  br label %sw.bb

sw.bb:                                            ; preds = %if.then7, %do.body
  %conv11 = trunc i64 %val to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %__val.i) #8
  %4 = ptrtoint ptr %__val.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv11, ptr %__val.i, align 2
  %5 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %st, align 4
  %conv.i = zext i8 %reg to i32
  %call.i = call i32 @regmap_bulk_write(ptr noundef %6, i32 noundef %conv.i, ptr noundef nonnull %__val.i, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %__val.i) #8
  call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call.i, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ltc2947_clk_disable(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @clk_disable(ptr noundef %data) #8
  tail call void @clk_unprepare(ptr noundef %data) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @ltc2947_is_visible(ptr nocapture noundef readnone %data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.return_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb1
    i32 4, label %sw.bb4
    i32 1, label %sw.bb7
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %entry
  %switch.tableidx = add i32 %attr, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %1 = icmp ult i32 %switch.tableidx, 13
  br i1 %1, label %switch.lookup, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb1:                                           ; preds = %entry
  %switch.tableidx26 = add i32 %attr, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx26)
  %2 = icmp ult i32 %switch.tableidx26, 13
  br i1 %2, label %switch.lookup25, label %sw.bb1.return_crit_edge

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb4:                                           ; preds = %entry
  %switch.tableidx30 = add i32 %attr, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %switch.tableidx30)
  %3 = icmp ult i32 %switch.tableidx30, 18
  br i1 %3, label %switch.lookup29, label %sw.bb4.return_crit_edge

sw.bb4.return_crit_edge:                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb7:                                           ; preds = %entry
  %4 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %attr, label %sw.default.i23 [
    i32 1, label %sw.bb7.return_crit_edge
    i32 23, label %sw.bb7.return_crit_edge33
    i32 22, label %sw.bb7.return_crit_edge34
    i32 16, label %sw.bb7.return_crit_edge35
    i32 15, label %sw.bb7.return_crit_edge36
    i32 21, label %sw.bb7.return_crit_edge37
    i32 24, label %sw.bb1.i21
    i32 7, label %sw.bb7.sw.bb2.i22_crit_edge
    i32 5, label %sw.bb7.sw.bb2.i22_crit_edge38
  ]

sw.bb7.sw.bb2.i22_crit_edge38:                    ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i22

sw.bb7.sw.bb2.i22_crit_edge:                      ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i22

sw.bb7.return_crit_edge37:                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb7.return_crit_edge36:                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb7.return_crit_edge35:                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb7.return_crit_edge34:                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb7.return_crit_edge33:                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb7.return_crit_edge:                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb1.i21:                                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb2.i22:                                       ; preds = %sw.bb7.sw.bb2.i22_crit_edge, %sw.bb7.sw.bb2.i22_crit_edge38
  br label %return

sw.default.i23:                                   ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

switch.lookup:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [13 x i16], ptr @switch.table.ltc2947_is_visible, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %5)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %return

switch.lookup25:                                  ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep27 = getelementptr inbounds [13 x i16], ptr @switch.table.ltc2947_is_visible.45, i32 0, i32 %switch.tableidx26
  %6 = ptrtoint ptr %switch.gep27 to i32
  call void @__asan_load2_noabort(i32 %6)
  %switch.load28 = load i16, ptr %switch.gep27, align 2
  br label %return

switch.lookup29:                                  ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep31 = getelementptr inbounds [18 x i16], ptr @switch.table.ltc2947_is_visible.46, i32 0, i32 %switch.tableidx30
  %7 = ptrtoint ptr %switch.gep31 to i32
  call void @__asan_load2_noabort(i32 %7)
  %switch.load32 = load i16, ptr %switch.gep31, align 2
  br label %return

return:                                           ; preds = %switch.lookup29, %switch.lookup25, %switch.lookup, %sw.default.i23, %sw.bb2.i22, %sw.bb1.i21, %sw.bb7.return_crit_edge, %sw.bb7.return_crit_edge33, %sw.bb7.return_crit_edge34, %sw.bb7.return_crit_edge35, %sw.bb7.return_crit_edge36, %sw.bb7.return_crit_edge37, %sw.bb4.return_crit_edge, %sw.bb1.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i16 [ 0, %entry.return_crit_edge ], [ 0, %sw.default.i23 ], [ 420, %sw.bb2.i22 ], [ 128, %sw.bb1.i21 ], [ 292, %sw.bb7.return_crit_edge ], [ 292, %sw.bb7.return_crit_edge33 ], [ 292, %sw.bb7.return_crit_edge34 ], [ 292, %sw.bb7.return_crit_edge35 ], [ 292, %sw.bb7.return_crit_edge36 ], [ 292, %sw.bb7.return_crit_edge37 ], [ %switch.load, %switch.lookup ], [ 0, %sw.bb.return_crit_edge ], [ %switch.load28, %switch.lookup25 ], [ 0, %sw.bb1.return_crit_edge ], [ %switch.load32, %switch.lookup29 ], [ 0, %sw.bb4.return_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc2947_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  %__val.i55 = alloca i64, align 8
  %__val.i32 = alloca i64, align 8
  %__val.i17 = alloca i64, align 8
  %__val.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %type, label %entry.return_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb1
    i32 4, label %sw.bb3
    i32 1, label %sw.bb5
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %__val.i) #8
  %3 = ptrtoint ptr %__val.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %__val.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %channel)
  %4 = icmp ugt i32 %channel, 1
  br i1 %4, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %dev2.i = getelementptr inbounds %struct.ltc2947_data, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev2.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.17, i32 noundef %channel) #11
  br label %ltc2947_read_in.exit

if.end.i:                                         ; preds = %sw.bb
  %7 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %attr, label %if.end.i.ltc2947_read_in.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 8, label %sw.bb8.i
    i32 7, label %sw.bb15.i
    i32 13, label %sw.bb22.i
    i32 12, label %sw.bb28.i
    i32 3, label %sw.bb34.i
    i32 2, label %sw.bb41.i
  ]

if.end.i.ltc2947_read_in.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc2947_read_in.exit

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %channel)
  %cmp3.i = icmp eq i32 %channel, 1
  br i1 %cmp3.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i = call fastcc i32 @ltc2947_val_read(ptr noundef %2, i8 noundef zeroext -92, i8 noundef zeroext 0, i32 noundef 2, ptr noundef nonnull %__val.i) #8
  br label %sw.epilog.i

if.else.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i = call fastcc i32 @ltc2947_val_read(ptr noundef %2, i8 noundef zeroext -96, i8 noundef zeroext 0, i32 noundef 2, ptr noundef nonnull %__val.i) #8
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %channel)
  %cmp9.i = icmp eq i32 %channel, 1
  br i1 %cmp9.i, label %if.then10.i, label %if.else12.i

if.then10.i:                                      ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i = call fastcc i32 @ltc2947_val_read(ptr noundef %2, i8 noundef zeroext 88, i8 noundef zeroext 0, i32 noundef 2, ptr noundef nonnull %__val.i) #8
  br label %sw.epilog.i

if.else12.i:                                      ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i = call fastcc i32 @ltc2947_val_read(ptr noundef %2, i8 noundef zeroext 80, i8 noundef zeroext 0, i32 noundef 2, ptr noundef nonnull %__val.i) #8
  br label %sw.epilog.i

sw.bb15.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %channel)
  %cmp16.i = icmp eq i32 %channel, 1
  br i1 %cmp16.i, label %if.then17.i, label %if.else19.i

if.then17.i:                                      ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #10
  %call18.i = call fastcc i32 @ltc2947_val_read(ptr noundef %2, i8 noundef zeroext 90, i8 noundef zeroext 0, i32 noundef 2, ptr noundef nonnull %__val.i) #8
  br label %sw.epilog.i

if.else19.i:                                      ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #10
  %call20.i = call fastcc i32 @ltc2947_val_read(ptr noundef %2, i8 noundef zeroext 82, i8 noundef zeroext 0, i32 noundef 2, ptr noundef nonnull %__val.i) #8
  br label %sw.epilog.i

sw.bb22.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %channel)
  %cmp23.i = icmp eq i32 %channel, 1
  br i1 %cmp23.i, label %if.then24.i, label %if.end26.i

if.then24.i:                                      ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #10
  %call25.i = tail call fastcc i32 @ltc2947_alarm_read(ptr noundef %2, i8 noundef zeroext -121, i32 noundef 1, ptr noundef %val) #8
  br label %ltc2947_read_in.exit

if.end26.i:                                       ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #10
  %call27.i = tail call fastcc i32 @ltc2947_alarm_read(ptr noundef %2, i8 noundef zeroext -127, i32 noundef 1, ptr noundef %val) #8
  br label %ltc2947_read_in.exit

sw.bb28.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %channel)
  %cmp29.i = icmp eq i32 %channel, 1
  br i1 %cmp29.i, label %if.then30.i, label %if.end32.i

if.then30.i:                                      ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #10
  %call31.i = tail call fastcc i32 @ltc2947_alarm_read(ptr noundef %2, i8 noundef zeroext -121, i32 noundef 2, ptr noundef %val) #8
  br label %ltc2947_read_in.exit

if.end32.i:                                       ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #10
  %call33.i = tail call fastcc i32 @ltc2947_alarm_read(ptr noundef %2, i8 noundef zeroext -127, i32 noundef 2, ptr noundef %val) #8
  br label %ltc2947_read_in.exit

sw.bb34.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %channel)
  %cmp35.i = icmp eq i32 %channel, 1
  br i1 %cmp35.i, label %if.then36.i, label %if.else38.i

if.then36.i:                                      ; preds = %sw.bb34.i
  call void @__sanitizer_cov_trace_pc() #10
  %call37.i = call fastcc i32 @ltc2947_val_read(ptr noundef %2, i8 noundef zeroext -104, i8 noundef zeroext 1, i32 noundef 2, ptr noundef nonnull %__val.i) #8
  br label %sw.epilog.i

if.else38.i:                                      ; preds = %sw.bb34.i
  call void @__sanitizer_cov_trace_pc() #10
  %call39.i = call fastcc i32 @ltc2947_val_read(ptr noundef %2, i8 noundef zeroext -112, i8 noundef zeroext 1, i32 noundef 2, ptr noundef nonnull %__val.i) #8
  br label %sw.epilog.i

sw.bb41.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %channel)
  %cmp42.i = icmp eq i32 %channel, 1
  br i1 %cmp42.i, label %if.then43.i, label %if.else45.i

if.then43.i:                                      ; preds = %sw.bb41.i
  call void @__sanitizer_cov_trace_pc() #10
  %call44.i = call fastcc i32 @ltc2947_val_read(ptr noundef %2, i8 noundef zeroext -102, i8 noundef zeroext 1, i32 noundef 2, ptr noundef nonnull %__val.i) #8
  br label %sw.epilog.i

if.else45.i:                                      ; preds = %sw.bb41.i
  call void @__sanitizer_cov_trace_pc() #10
  %call46.i = call fastcc i32 @ltc2947_val_read(ptr noundef %2, i8 noundef zeroext -110, i8 noundef zeroext 1, i32 noundef 2, ptr noundef nonnull %__val.i) #8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.else45.i, %if.then43.i, %if.else38.i, %if.then36.i, %if.else19.i, %if.then17.i, %if.else12.i, %if.then10.i, %if.else.i, %if.then4.i
  %ret.0.i = phi i32 [ %call44.i, %if.then43.i ], [ %call46.i, %if.else45.i ], [ %call37.i, %if.then36.i ], [ %call39.i, %if.else38.i ], [ %call18.i, %if.then17.i ], [ %call20.i, %if.else19.i ], [ %call11.i, %if.then10.i ], [ %call13.i, %if.else12.i ], [ %call5.i, %if.then4.i ], [ %call6.i, %if.else.i ]
  %lsb.0.i = phi i8 [ -111, %if.then43.i ], [ 2, %if.else45.i ], [ -111, %if.then36.i ], [ 2, %if.else38.i ], [ -111, %if.then17.i ], [ 2, %if.else19.i ], [ -111, %if.then10.i ], [ 2, %if.else12.i ], [ -111, %if.then4.i ], [ 2, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool.not.i, label %if.end49.i, label %sw.epilog.i.ltc2947_read_in.exit_crit_edge

sw.epilog.i.ltc2947_read_in.exit_crit_edge:       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc2947_read_in.exit

if.end49.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %__val.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %__val.i, align 8
  %conv.i = zext i8 %lsb.0.i to i64
  %mul.i = mul i64 %9, %conv.i
  %conv50.i = trunc i64 %mul.i to i32
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv50.i, ptr %val, align 4
  br label %ltc2947_read_in.exit

ltc2947_read_in.exit:                             ; preds = %if.end49.i, %sw.epilog.i.ltc2947_read_in.exit_crit_edge, %if.end32.i, %if.then30.i, %if.end26.i, %if.then24.i, %if.end.i.ltc2947_read_in.exit_crit_edge, %do.end.i
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ 0, %if.end49.i ], [ %call31.i, %if.then30.i ], [ %call33.i, %if.end32.i ], [ %call25.i, %if.then24.i ], [ %call27.i, %if.end26.i ], [ -524, %if.end.i.ltc2947_read_in.exit_crit_edge ], [ %ret.0.i, %sw.epilog.i.ltc2947_read_in.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %__val.i) #8
  br label %return

sw.bb1:                                           ; preds = %entry
  %driver_data.i.i18 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %11 = ptrtoint ptr %driver_data.i.i18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i18, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %__val.i17) #8
  %13 = ptrtoint ptr %__val.i17 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %__val.i17, align 8
  %14 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %attr, label %sw.bb1.ltc2947_read_curr.exit_crit_edge [
    i32 1, label %sw.bb.i19
    i32 8, label %sw.bb2.i
    i32 7, label %sw.bb4.i
    i32 13, label %sw.bb6.i
    i32 12, label %sw.bb8.i21
    i32 3, label %sw.bb10.i
    i32 2, label %sw.bb12.i
  ]

sw.bb1.ltc2947_read_curr.exit_crit_edge:          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc2947_read_curr.exit

sw.bb.i19:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = call fastcc i32 @ltc2947_val_read(ptr noundef %12, i8 noundef zeroext -112, i8 noundef zeroext 0, i32 noundef 3, ptr noundef nonnull %__val.i17) #8
  br label %sw.epilog.i27

sw.bb2.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = call fastcc i32 @ltc2947_val_read(ptr noundef %12, i8 noundef zeroext 64, i8 noundef zeroext 0, i32 noundef 2, ptr noundef nonnull %__val.i17) #8
  br label %sw.epilog.i27

sw.bb4.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i20 = call fastcc i32 @ltc2947_val_read(ptr noundef %12, i8 noundef zeroext 66, i8 noundef zeroext 0, i32 noundef 2, ptr noundef nonnull %__val.i17) #8
  br label %sw.epilog.i27

sw.bb6.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i = tail call fastcc i32 @ltc2947_alarm_read(ptr noundef %12, i8 noundef zeroext -126, i32 noundef 1, ptr noundef %val) #8
  br label %ltc2947_read_curr.exit

sw.bb8.i21:                                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  %call9.i = tail call fastcc i32 @ltc2947_alarm_read(ptr noundef %12, i8 noundef zeroext -126, i32 noundef 2, ptr noundef %val) #8
  br label %ltc2947_read_curr.exit

sw.bb10.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i22 = call fastcc i32 @ltc2947_val_read(ptr noundef %12, i8 noundef zeroext -128, i8 noundef zeroext 1, i32 noundef 2, ptr noundef nonnull %__val.i17) #8
  br label %sw.epilog.i27

sw.bb12.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i23 = call fastcc i32 @ltc2947_val_read(ptr noundef %12, i8 noundef zeroext -126, i8 noundef zeroext 1, i32 noundef 2, ptr noundef nonnull %__val.i17) #8
  br label %sw.epilog.i27

sw.epilog.i27:                                    ; preds = %sw.bb12.i, %sw.bb10.i, %sw.bb4.i, %sw.bb2.i, %sw.bb.i19
  %ret.0.i24 = phi i32 [ %call13.i23, %sw.bb12.i ], [ %call11.i22, %sw.bb10.i ], [ %call5.i20, %sw.bb4.i ], [ %call3.i, %sw.bb2.i ], [ %call1.i, %sw.bb.i19 ]
  %lsb.0.i25 = phi i8 [ 12, %sw.bb12.i ], [ 12, %sw.bb10.i ], [ 12, %sw.bb4.i ], [ 12, %sw.bb2.i ], [ 3, %sw.bb.i19 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i24)
  %tobool.not.i26 = icmp eq i32 %ret.0.i24, 0
  br i1 %tobool.not.i26, label %if.end.i30, label %sw.epilog.i27.ltc2947_read_curr.exit_crit_edge

sw.epilog.i27.ltc2947_read_curr.exit_crit_edge:   ; preds = %sw.epilog.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc2947_read_curr.exit

if.end.i30:                                       ; preds = %sw.epilog.i27
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %__val.i17 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %__val.i17, align 8
  %conv.i28 = zext i8 %lsb.0.i25 to i64
  %mul.i29 = mul i64 %16, %conv.i28
  %conv14.i = trunc i64 %mul.i29 to i32
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv14.i, ptr %val, align 4
  br label %ltc2947_read_curr.exit

ltc2947_read_curr.exit:                           ; preds = %if.end.i30, %sw.epilog.i27.ltc2947_read_curr.exit_crit_edge, %sw.bb8.i21, %sw.bb6.i, %sw.bb1.ltc2947_read_curr.exit_crit_edge
  %retval.0.i31 = phi i32 [ 0, %if.end.i30 ], [ %call9.i, %sw.bb8.i21 ], [ %call7.i, %sw.bb6.i ], [ -524, %sw.bb1.ltc2947_read_curr.exit_crit_edge ], [ %ret.0.i24, %sw.epilog.i27.ltc2947_read_curr.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %__val.i17) #8
  br label %return

sw.bb3:                                           ; preds = %entry
  %driver_data.i.i33 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %18 = ptrtoint ptr %driver_data.i.i33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_data.i.i33, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %__val.i32) #8
  %20 = ptrtoint ptr %__val.i32 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 0, ptr %__val.i32, align 8
  %21 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %attr, label %sw.bb3.ltc2947_read_power.exit_crit_edge [
    i32 9, label %sw.bb.i35
    i32 10, label %sw.bb2.i37
    i32 11, label %sw.bb4.i39
    i32 26, label %sw.bb6.i41
    i32 25, label %sw.bb8.i43
    i32 19, label %sw.bb10.i45
    i32 18, label %sw.bb12.i47
  ]

sw.bb3.ltc2947_read_power.exit_crit_edge:         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc2947_read_power.exit

sw.bb.i35:                                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i34 = call fastcc i32 @ltc2947_val_read(ptr noundef %19, i8 noundef zeroext -109, i8 noundef zeroext 0, i32 noundef 3, ptr noundef nonnull %__val.i32) #8
  br label %sw.epilog.i51

sw.bb2.i37:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i36 = call fastcc i32 @ltc2947_val_read(ptr noundef %19, i8 noundef zeroext 68, i8 noundef zeroext 0, i32 noundef 2, ptr noundef nonnull %__val.i32) #8
  br label %sw.epilog.i51

sw.bb4.i39:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i38 = call fastcc i32 @ltc2947_val_read(ptr noundef %19, i8 noundef zeroext 70, i8 noundef zeroext 0, i32 noundef 2, ptr noundef nonnull %__val.i32) #8
  br label %sw.epilog.i51

sw.bb6.i41:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i40 = tail call fastcc i32 @ltc2947_alarm_read(ptr noundef %19, i8 noundef zeroext -126, i32 noundef 4, ptr noundef %val) #8
  br label %ltc2947_read_power.exit

sw.bb8.i43:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  %call9.i42 = tail call fastcc i32 @ltc2947_alarm_read(ptr noundef %19, i8 noundef zeroext -126, i32 noundef 8, ptr noundef %val) #8
  br label %ltc2947_read_power.exit

sw.bb10.i45:                                      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i44 = call fastcc i32 @ltc2947_val_read(ptr noundef %19, i8 noundef zeroext -124, i8 noundef zeroext 1, i32 noundef 2, ptr noundef nonnull %__val.i32) #8
  br label %sw.epilog.i51

sw.bb12.i47:                                      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i46 = call fastcc i32 @ltc2947_val_read(ptr noundef %19, i8 noundef zeroext -122, i8 noundef zeroext 1, i32 noundef 2, ptr noundef nonnull %__val.i32) #8
  br label %sw.epilog.i51

sw.epilog.i51:                                    ; preds = %sw.bb12.i47, %sw.bb10.i45, %sw.bb4.i39, %sw.bb2.i37, %sw.bb.i35
  %ret.0.i48 = phi i32 [ %call13.i46, %sw.bb12.i47 ], [ %call11.i44, %sw.bb10.i45 ], [ %call5.i38, %sw.bb4.i39 ], [ %call3.i36, %sw.bb2.i37 ], [ %call1.i34, %sw.bb.i35 ]
  %lsb.0.i49 = phi i32 [ 200000, %sw.bb12.i47 ], [ 200000, %sw.bb10.i45 ], [ 200000, %sw.bb4.i39 ], [ 200000, %sw.bb2.i37 ], [ 50000, %sw.bb.i35 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i48)
  %tobool.not.i50 = icmp eq i32 %ret.0.i48, 0
  br i1 %tobool.not.i50, label %if.end.i53, label %sw.epilog.i51.ltc2947_read_power.exit_crit_edge

sw.epilog.i51.ltc2947_read_power.exit_crit_edge:  ; preds = %sw.epilog.i51
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc2947_read_power.exit

if.end.i53:                                       ; preds = %sw.epilog.i51
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %__val.i32 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %__val.i32, align 8
  %24 = trunc i64 %23 to i32
  %conv14.i52 = mul i32 %lsb.0.i49, %24
  %25 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv14.i52, ptr %val, align 4
  br label %ltc2947_read_power.exit

ltc2947_read_power.exit:                          ; preds = %if.end.i53, %sw.epilog.i51.ltc2947_read_power.exit_crit_edge, %sw.bb8.i43, %sw.bb6.i41, %sw.bb3.ltc2947_read_power.exit_crit_edge
  %retval.0.i54 = phi i32 [ 0, %if.end.i53 ], [ %call9.i42, %sw.bb8.i43 ], [ %call7.i40, %sw.bb6.i41 ], [ -524, %sw.bb3.ltc2947_read_power.exit_crit_edge ], [ %ret.0.i48, %sw.epilog.i51.ltc2947_read_power.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %__val.i32) #8
  br label %return

sw.bb5:                                           ; preds = %entry
  %driver_data.i.i56 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %26 = ptrtoint ptr %driver_data.i.i56 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %driver_data.i.i56, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %__val.i55) #8
  %28 = ptrtoint ptr %__val.i55 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 0, ptr %__val.i55, align 8
  %29 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %attr, label %sw.bb5.ltc2947_read_temp.exit_crit_edge [
    i32 1, label %sw.bb.i58
    i32 23, label %sw.bb2.i60
    i32 22, label %sw.bb4.i62
    i32 16, label %sw.bb6.i63
    i32 15, label %sw.bb9.i
    i32 7, label %sw.bb15.i67
    i32 5, label %sw.bb21.i
  ]

sw.bb5.ltc2947_read_temp.exit_crit_edge:          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc2947_read_temp.exit

sw.bb.i58:                                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i57 = call fastcc i32 @ltc2947_val_read(ptr noundef %27, i8 noundef zeroext -94, i8 noundef zeroext 0, i32 noundef 2, ptr noundef nonnull %__val.i55) #8
  br label %sw.epilog.i73

sw.bb2.i60:                                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i59 = call fastcc i32 @ltc2947_val_read(ptr noundef %27, i8 noundef zeroext 84, i8 noundef zeroext 0, i32 noundef 2, ptr noundef nonnull %__val.i55) #8
  br label %sw.epilog.i73

sw.bb4.i62:                                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i61 = call fastcc i32 @ltc2947_val_read(ptr noundef %27, i8 noundef zeroext 86, i8 noundef zeroext 0, i32 noundef 2, ptr noundef nonnull %__val.i55) #8
  br label %sw.epilog.i73

sw.bb6.i63:                                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %channel)
  %cmp.i = icmp eq i32 %channel, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.i65

if.then.i:                                        ; preds = %sw.bb6.i63
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i64 = tail call fastcc i32 @ltc2947_alarm_read(ptr noundef %27, i8 noundef zeroext -127, i32 noundef 16, ptr noundef %val) #8
  br label %ltc2947_read_temp.exit

if.end.i65:                                       ; preds = %sw.bb6.i63
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i = tail call fastcc i32 @ltc2947_alarm_read(ptr noundef %27, i8 noundef zeroext -127, i32 noundef 4, ptr noundef %val) #8
  br label %ltc2947_read_temp.exit

sw.bb9.i:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %channel)
  %cmp10.i = icmp eq i32 %channel, 1
  br i1 %cmp10.i, label %if.then11.i, label %if.end13.i

if.then11.i:                                      ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #10
  %call12.i = tail call fastcc i32 @ltc2947_alarm_read(ptr noundef %27, i8 noundef zeroext -127, i32 noundef 32, ptr noundef %val) #8
  br label %ltc2947_read_temp.exit

if.end13.i:                                       ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #10
  %call14.i = tail call fastcc i32 @ltc2947_alarm_read(ptr noundef %27, i8 noundef zeroext -127, i32 noundef 8, ptr noundef %val) #8
  br label %ltc2947_read_temp.exit

sw.bb15.i67:                                      ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %channel)
  %cmp16.i66 = icmp eq i32 %channel, 1
  br i1 %cmp16.i66, label %if.then17.i69, label %if.else.i70

if.then17.i69:                                    ; preds = %sw.bb15.i67
  call void @__sanitizer_cov_trace_pc() #10
  %call18.i68 = call fastcc i32 @ltc2947_val_read(ptr noundef %27, i8 noundef zeroext -100, i8 noundef zeroext 1, i32 noundef 2, ptr noundef nonnull %__val.i55) #8
  br label %sw.epilog.i73

if.else.i70:                                      ; preds = %sw.bb15.i67
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i = call fastcc i32 @ltc2947_val_read(ptr noundef %27, i8 noundef zeroext -108, i8 noundef zeroext 1, i32 noundef 2, ptr noundef nonnull %__val.i55) #8
  br label %sw.epilog.i73

sw.bb21.i:                                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %channel)
  %cmp22.i = icmp eq i32 %channel, 1
  br i1 %cmp22.i, label %if.then23.i, label %if.else25.i

if.then23.i:                                      ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #10
  %call24.i = call fastcc i32 @ltc2947_val_read(ptr noundef %27, i8 noundef zeroext -98, i8 noundef zeroext 1, i32 noundef 2, ptr noundef nonnull %__val.i55) #8
  br label %sw.epilog.i73

if.else25.i:                                      ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #10
  %call26.i = call fastcc i32 @ltc2947_val_read(ptr noundef %27, i8 noundef zeroext -106, i8 noundef zeroext 1, i32 noundef 2, ptr noundef nonnull %__val.i55) #8
  br label %sw.epilog.i73

sw.epilog.i73:                                    ; preds = %if.else25.i, %if.then23.i, %if.else.i70, %if.then17.i69, %sw.bb4.i62, %sw.bb2.i60, %sw.bb.i58
  %ret.0.i71 = phi i32 [ %call24.i, %if.then23.i ], [ %call26.i, %if.else25.i ], [ %call18.i68, %if.then17.i69 ], [ %call19.i, %if.else.i70 ], [ %call5.i61, %sw.bb4.i62 ], [ %call3.i59, %sw.bb2.i60 ], [ %call1.i57, %sw.bb.i58 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i71)
  %tobool.not.i72 = icmp eq i32 %ret.0.i71, 0
  br i1 %tobool.not.i72, label %if.end29.i, label %sw.epilog.i73.ltc2947_read_temp.exit_crit_edge

sw.epilog.i73.ltc2947_read_temp.exit_crit_edge:   ; preds = %sw.epilog.i73
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc2947_read_temp.exit

if.end29.i:                                       ; preds = %sw.epilog.i73
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %__val.i55 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %__val.i55, align 8
  %32 = trunc i64 %31 to i32
  %33 = mul i32 %32, 204
  %conv.i74 = add i32 %33, 550
  %34 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv.i74, ptr %val, align 4
  br label %ltc2947_read_temp.exit

ltc2947_read_temp.exit:                           ; preds = %if.end29.i, %sw.epilog.i73.ltc2947_read_temp.exit_crit_edge, %if.end13.i, %if.then11.i, %if.end.i65, %if.then.i, %sw.bb5.ltc2947_read_temp.exit_crit_edge
  %retval.0.i75 = phi i32 [ 0, %if.end29.i ], [ %call12.i, %if.then11.i ], [ %call14.i, %if.end13.i ], [ %call7.i64, %if.then.i ], [ %call8.i, %if.end.i65 ], [ -524, %sw.bb5.ltc2947_read_temp.exit_crit_edge ], [ %ret.0.i71, %sw.epilog.i73.ltc2947_read_temp.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %__val.i55) #8
  br label %return

return:                                           ; preds = %ltc2947_read_temp.exit, %ltc2947_read_power.exit, %ltc2947_read_curr.exit, %ltc2947_read_in.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i75, %ltc2947_read_temp.exit ], [ %retval.0.i54, %ltc2947_read_power.exit ], [ %retval.0.i31, %ltc2947_read_curr.exit ], [ %retval.0.i, %ltc2947_read_in.exit ], [ -524, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ltc2947_read_labels(ptr nocapture noundef readnone %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %str) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %type, label %entry.return_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %entry.return.sink.split_crit_edge
    i32 1, label %sw.bb2
    i32 4, label %sw.bb7
  ]

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return.sink.split

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %channel)
  %cmp = icmp eq i32 %channel, 1
  %.str.24..str.25 = select i1 %cmp, ptr @.str.24, ptr @.str.25
  br label %return.sink.split

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %channel)
  %cmp3 = icmp eq i32 %channel, 1
  %.str.27..str.28 = select i1 %cmp3, ptr @.str.27, ptr @.str.28
  br label %return.sink.split

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb7, %sw.bb2, %sw.bb, %entry.return.sink.split_crit_edge
  %.str.29.sink = phi ptr [ @.str.29, %sw.bb7 ], [ %.str.27..str.28, %sw.bb2 ], [ %.str.24..str.25, %sw.bb ], [ @.str.26, %entry.return.sink.split_crit_edge ]
  %1 = ptrtoint ptr %str to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %.str.29.sink, ptr %str, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i32 [ -524, %entry.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc2947_write(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %type, label %entry.return_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb1
    i32 4, label %sw.bb3
    i32 1, label %sw.bb5
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %channel)
  %cmp.i = icmp sgt i32 %channel, 1
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %dev1.i = getelementptr inbounds %struct.ltc2947_data, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev1.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.17, i32 noundef %channel) #11
  br label %return

if.end.i:                                         ; preds = %sw.bb
  %5 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %attr, label %if.end.i.return_crit_edge [
    i32 9, label %sw.bb.i
    i32 3, label %sw.bb10.i
    i32 2, label %sw.bb71.i
  ]

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %val)
  %cmp2.not.i = icmp eq i32 %val, 1
  br i1 %cmp2.not.i, label %if.end4.i, label %sw.bb.i.return_crit_edge

sw.bb.i.return_crit_edge:                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %channel)
  %cmp5.i = icmp eq i32 %channel, 1
  br i1 %cmp5.i, label %if.then6.i, label %if.end8.i

if.then6.i:                                       ; preds = %if.end4.i
  %call.i.i = tail call fastcc i32 @ltc2947_val_write(ptr noundef %2, i8 noundef zeroext 88, i8 noundef zeroext 0, i64 noundef 32768) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then6.i.return_crit_edge

if.then6.i.return_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.i = tail call fastcc i32 @ltc2947_val_write(ptr noundef %2, i8 noundef zeroext 90, i8 noundef zeroext 0, i64 noundef 32767) #8
  br label %return

if.end8.i:                                        ; preds = %if.end4.i
  %call.i207.i = tail call fastcc i32 @ltc2947_val_write(ptr noundef %2, i8 noundef zeroext 80, i8 noundef zeroext 0, i64 noundef 32768) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i207.i)
  %tobool.not.i208.i = icmp eq i32 %call.i207.i, 0
  br i1 %tobool.not.i208.i, label %if.end.i210.i, label %if.end8.i.return_crit_edge

if.end8.i.return_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i210.i:                                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i209.i = tail call fastcc i32 @ltc2947_val_write(ptr noundef %2, i8 noundef zeroext 82, i8 noundef zeroext 0, i64 noundef 32767) #8
  br label %return

sw.bb10.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %channel)
  %cmp11.i = icmp eq i32 %channel, 1
  br i1 %cmp11.i, label %if.then12.i, label %if.end35.i

if.then12.i:                                      ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #10
  %6 = tail call i32 @llvm.smax.i32(i32 %val, i32 4750) #8
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 15000) #8
  %8 = trunc i32 %7 to i16
  %div27213.lhs.trunc.i = add nuw nsw i16 %8, 72
  %div27213214.i = udiv i16 %div27213.lhs.trunc.i, 145
  %9 = zext i16 %div27213214.i to i64
  %call34.i = tail call fastcc i32 @ltc2947_val_write(ptr noundef %2, i8 noundef zeroext -104, i8 noundef zeroext 1, i64 noundef %9) #8
  br label %return

if.end35.i:                                       ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #10
  %10 = tail call i32 @llvm.smax.i32(i32 %val, i32 -300) #8
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 15500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp53.inv.i = icmp slt i32 %10, 1
  %cond68.in.v.i = select i1 %cmp53.inv.i, i32 65535, i32 1
  %cond68.in.i = add nsw i32 %cond68.in.v.i, %11
  %cond68.lhs.trunc.i = trunc i32 %cond68.in.i to i16
  %cond68215.i = sdiv i16 %cond68.lhs.trunc.i, 2
  %conv69.i = sext i16 %cond68215.i to i64
  %call70.i = tail call fastcc i32 @ltc2947_val_write(ptr noundef %2, i8 noundef zeroext -112, i8 noundef zeroext 1, i64 noundef %conv69.i) #8
  br label %return

sw.bb71.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %channel)
  %cmp72.i = icmp eq i32 %channel, 1
  br i1 %cmp72.i, label %if.then74.i, label %if.end110.i

if.then74.i:                                      ; preds = %sw.bb71.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = tail call i32 @llvm.smax.i32(i32 %val, i32 4750) #8
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 15000) #8
  %14 = trunc i32 %13 to i16
  %div101216.lhs.trunc.i = add nuw nsw i16 %14, 72
  %div101216217.i = udiv i16 %div101216.lhs.trunc.i, 145
  %15 = zext i16 %div101216217.i to i64
  %call109.i = tail call fastcc i32 @ltc2947_val_write(ptr noundef %2, i8 noundef zeroext -102, i8 noundef zeroext 1, i64 noundef %15) #8
  br label %return

if.end110.i:                                      ; preds = %sw.bb71.i
  call void @__sanitizer_cov_trace_pc() #10
  %16 = tail call i32 @llvm.smax.i32(i32 %val, i32 -300) #8
  %17 = tail call i32 @llvm.smin.i32(i32 %16, i32 15500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp128.inv.i = icmp slt i32 %16, 1
  %cond143.in.v.i = select i1 %cmp128.inv.i, i32 65535, i32 1
  %cond143.in.i = add nsw i32 %cond143.in.v.i, %17
  %cond143.lhs.trunc.i = trunc i32 %cond143.in.i to i16
  %cond143218.i = sdiv i16 %cond143.lhs.trunc.i, 2
  %conv144.i = sext i16 %cond143218.i to i64
  %call145.i = tail call fastcc i32 @ltc2947_val_write(ptr noundef %2, i8 noundef zeroext -110, i8 noundef zeroext 1, i64 noundef %conv144.i) #8
  br label %return

sw.bb1:                                           ; preds = %entry
  %driver_data.i.i17 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %18 = ptrtoint ptr %driver_data.i.i17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_data.i.i17, align 4
  %20 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %attr, label %sw.bb1.return_crit_edge [
    i32 9, label %sw.bb.i18
    i32 3, label %sw.bb2.i
    i32 2, label %sw.bb25.i
  ]

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb.i18:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %val)
  %cmp.not.i = icmp eq i32 %val, 1
  br i1 %cmp.not.i, label %if.end.i21, label %sw.bb.i18.return_crit_edge

sw.bb.i18.return_crit_edge:                       ; preds = %sw.bb.i18
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i21:                                       ; preds = %sw.bb.i18
  %call.i.i19 = tail call fastcc i32 @ltc2947_val_write(ptr noundef %19, i8 noundef zeroext 64, i8 noundef zeroext 0, i64 noundef 32768) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i19)
  %tobool.not.i.i20 = icmp eq i32 %call.i.i19, 0
  br i1 %tobool.not.i.i20, label %if.end.i.i23, label %if.end.i21.return_crit_edge

if.end.i21.return_crit_edge:                      ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i.i23:                                     ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.i22 = tail call fastcc i32 @ltc2947_val_write(ptr noundef %19, i8 noundef zeroext 66, i8 noundef zeroext 0, i64 noundef 32767) #8
  br label %return

sw.bb2.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  %21 = tail call i32 @llvm.smax.i32(i32 %val, i32 -30000) #8
  %22 = tail call i32 @llvm.smin.i32(i32 %21, i32 30000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp11.i24 = icmp sgt i32 %21, 0
  %cond22.in.v.i = select i1 %cmp11.i24, i32 6, i32 65530
  %cond22.in.i = add nsw i32 %cond22.in.v.i, %22
  %cond22.lhs.trunc.i = trunc i32 %cond22.in.i to i16
  %cond2288.i = sdiv i16 %cond22.lhs.trunc.i, 12
  %conv23.i = sext i16 %cond2288.i to i64
  %call24.i = tail call fastcc i32 @ltc2947_val_write(ptr noundef %19, i8 noundef zeroext -128, i8 noundef zeroext 1, i64 noundef %conv23.i) #8
  br label %return

sw.bb25.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  %23 = tail call i32 @llvm.smax.i32(i32 %val, i32 -30000) #8
  %24 = tail call i32 @llvm.smin.i32(i32 %23, i32 30000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp43.i = icmp sgt i32 %23, 0
  %cond58.in.v.i = select i1 %cmp43.i, i32 6, i32 65530
  %cond58.in.i = add nsw i32 %cond58.in.v.i, %24
  %cond58.lhs.trunc.i = trunc i32 %cond58.in.i to i16
  %cond5889.i = sdiv i16 %cond58.lhs.trunc.i, 12
  %conv59.i = sext i16 %cond5889.i to i64
  %call60.i = tail call fastcc i32 @ltc2947_val_write(ptr noundef %19, i8 noundef zeroext -126, i8 noundef zeroext 1, i64 noundef %conv59.i) #8
  br label %return

sw.bb3:                                           ; preds = %entry
  %driver_data.i.i26 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %25 = ptrtoint ptr %driver_data.i.i26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %driver_data.i.i26, align 4
  %27 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %attr, label %sw.bb3.return_crit_edge [
    i32 12, label %sw.bb.i28
    i32 19, label %sw.bb2.i39
    i32 18, label %sw.bb25.i45
  ]

sw.bb3.return_crit_edge:                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb.i28:                                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %val)
  %cmp.not.i27 = icmp eq i32 %val, 1
  br i1 %cmp.not.i27, label %if.end.i31, label %sw.bb.i28.return_crit_edge

sw.bb.i28.return_crit_edge:                       ; preds = %sw.bb.i28
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i31:                                       ; preds = %sw.bb.i28
  %call.i.i29 = tail call fastcc i32 @ltc2947_val_write(ptr noundef %26, i8 noundef zeroext 68, i8 noundef zeroext 0, i64 noundef 32768) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i29)
  %tobool.not.i.i30 = icmp eq i32 %call.i.i29, 0
  br i1 %tobool.not.i.i30, label %if.end.i.i33, label %if.end.i31.return_crit_edge

if.end.i31.return_crit_edge:                      ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i.i33:                                     ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.i32 = tail call fastcc i32 @ltc2947_val_write(ptr noundef %26, i8 noundef zeroext 70, i8 noundef zeroext 0, i64 noundef 32767) #8
  br label %return

sw.bb2.i39:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  %28 = tail call i32 @llvm.smax.i32(i32 %val, i32 -450000000) #8
  %29 = tail call i32 @llvm.smin.i32(i32 %28, i32 450000000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp11.i34 = icmp sgt i32 %28, 0
  %cond22.in.v.i35 = select i1 %cmp11.i34, i32 100000, i32 -100000
  %cond22.in.i36 = add nsw i32 %cond22.in.v.i35, %29
  %cond22.i = sdiv i32 %cond22.in.i36, 200000
  %conv23.i37 = sext i32 %cond22.i to i64
  %call24.i38 = tail call fastcc i32 @ltc2947_val_write(ptr noundef %26, i8 noundef zeroext -124, i8 noundef zeroext 1, i64 noundef %conv23.i37) #8
  br label %return

sw.bb25.i45:                                      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  %30 = tail call i32 @llvm.smax.i32(i32 %val, i32 -450000000) #8
  %31 = tail call i32 @llvm.smin.i32(i32 %30, i32 450000000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp43.i40 = icmp sgt i32 %30, 0
  %cond58.in.v.i41 = select i1 %cmp43.i40, i32 100000, i32 -100000
  %cond58.in.i42 = add nsw i32 %cond58.in.v.i41, %31
  %cond58.i = sdiv i32 %cond58.in.i42, 200000
  %conv59.i43 = sext i32 %cond58.i to i64
  %call60.i44 = tail call fastcc i32 @ltc2947_val_write(ptr noundef %26, i8 noundef zeroext -122, i8 noundef zeroext 1, i64 noundef %conv59.i43) #8
  br label %return

sw.bb5:                                           ; preds = %entry
  %driver_data.i.i47 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %32 = ptrtoint ptr %driver_data.i.i47 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %driver_data.i.i47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %channel)
  %34 = icmp ugt i32 %channel, 1
  br i1 %34, label %do.end.i48, label %if.end.i49

do.end.i48:                                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  %dev2.i = getelementptr inbounds %struct.ltc2947_data, ptr %33, i32 0, i32 1
  %35 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev2.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.31, i32 noundef %channel) #11
  br label %return

if.end.i49:                                       ; preds = %sw.bb5
  %37 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %attr, label %if.end.i49.return_crit_edge [
    i32 24, label %sw.bb.i50
    i32 7, label %sw.bb7.i
    i32 5, label %sw.bb58.i
  ]

if.end.i49.return_crit_edge:                      ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb.i50:                                        ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %val)
  %cmp3.not.i = icmp eq i32 %val, 1
  br i1 %cmp3.not.i, label %if.end5.i, label %sw.bb.i50.return_crit_edge

sw.bb.i50.return_crit_edge:                       ; preds = %sw.bb.i50
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end5.i:                                        ; preds = %sw.bb.i50
  %call.i.i51 = tail call fastcc i32 @ltc2947_val_write(ptr noundef %33, i8 noundef zeroext 84, i8 noundef zeroext 0, i64 noundef 32768) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i51)
  %tobool.not.i.i52 = icmp eq i32 %call.i.i51, 0
  br i1 %tobool.not.i.i52, label %if.end.i.i54, label %if.end5.i.return_crit_edge

if.end5.i.return_crit_edge:                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i.i54:                                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.i53 = tail call fastcc i32 @ltc2947_val_write(ptr noundef %33, i8 noundef zeroext 86, i8 noundef zeroext 0, i64 noundef 32767) #8
  br label %return

sw.bb7.i:                                         ; preds = %if.end.i49
  %38 = tail call i32 @llvm.smax.i32(i32 %val, i32 -40000) #8
  %39 = tail call i32 @llvm.smin.i32(i32 %38, i32 85000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %channel)
  %cmp15.i = icmp eq i32 %channel, 1
  br i1 %cmp15.i, label %if.then16.i, label %if.end35.i56

if.then16.i:                                      ; preds = %sw.bb7.i
  %gpio_out.i = getelementptr inbounds %struct.ltc2947_data, ptr %33, i32 0, i32 4
  %40 = ptrtoint ptr %gpio_out.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %gpio_out.i, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i = icmp eq i8 %41, 0
  br i1 %tobool.not.i, label %if.then16.i.return_crit_edge, label %if.end18.i

if.then16.i.return_crit_edge:                     ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end18.i:                                       ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 550, i32 %39)
  %cmp20.i = icmp sgt i32 %39, 550
  %cond32.in.v.i = select i1 %cmp20.i, i32 -448, i32 -652
  %cond32.in.i = add nsw i32 %cond32.in.v.i, %39
  %cond32.i = sdiv i32 %cond32.in.i, 204
  %conv33.i = sext i32 %cond32.i to i64
  %call34.i55 = tail call fastcc i32 @ltc2947_val_write(ptr noundef %33, i8 noundef zeroext -100, i8 noundef zeroext 1, i64 noundef %conv33.i) #8
  br label %return

if.end35.i56:                                     ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 550, i32 %39)
  %cmp40.i = icmp sgt i32 %39, 550
  %cond55.in.v.i = select i1 %cmp40.i, i32 -448, i32 -652
  %cond55.in.i = add nsw i32 %cond55.in.v.i, %39
  %cond55.i = sdiv i32 %cond55.in.i, 204
  %conv56.i = sext i32 %cond55.i to i64
  %call57.i = tail call fastcc i32 @ltc2947_val_write(ptr noundef %33, i8 noundef zeroext -108, i8 noundef zeroext 1, i64 noundef %conv56.i) #8
  br label %return

sw.bb58.i:                                        ; preds = %if.end.i49
  %42 = tail call i32 @llvm.smax.i32(i32 %val, i32 -40000) #8
  %43 = tail call i32 @llvm.smin.i32(i32 %42, i32 85000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %channel)
  %cmp73.i = icmp eq i32 %channel, 1
  br i1 %cmp73.i, label %if.then75.i, label %if.end102.i

if.then75.i:                                      ; preds = %sw.bb58.i
  %gpio_out76.i = getelementptr inbounds %struct.ltc2947_data, ptr %33, i32 0, i32 4
  %44 = ptrtoint ptr %gpio_out76.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %gpio_out76.i, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool77.not.i = icmp eq i8 %45, 0
  br i1 %tobool77.not.i, label %if.then75.i.return_crit_edge, label %if.end79.i

if.then75.i.return_crit_edge:                     ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end79.i:                                       ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 550, i32 %43)
  %cmp84.i = icmp sgt i32 %43, 550
  %cond99.in.v.i = select i1 %cmp84.i, i32 -448, i32 -652
  %cond99.in.i = add nsw i32 %cond99.in.v.i, %43
  %cond99.i = sdiv i32 %cond99.in.i, 204
  %conv100.i = sext i32 %cond99.i to i64
  %call101.i = tail call fastcc i32 @ltc2947_val_write(ptr noundef %33, i8 noundef zeroext -98, i8 noundef zeroext 1, i64 noundef %conv100.i) #8
  br label %return

if.end102.i:                                      ; preds = %sw.bb58.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 550, i32 %43)
  %cmp107.i = icmp sgt i32 %43, 550
  %cond122.in.v.i = select i1 %cmp107.i, i32 -448, i32 -652
  %cond122.in.i = add nsw i32 %cond122.in.v.i, %43
  %cond122.i = sdiv i32 %cond122.in.i, 204
  %conv123.i = sext i32 %cond122.i to i64
  %call124.i = tail call fastcc i32 @ltc2947_val_write(ptr noundef %33, i8 noundef zeroext -106, i8 noundef zeroext 1, i64 noundef %conv123.i) #8
  br label %return

return:                                           ; preds = %if.end102.i, %if.end79.i, %if.then75.i.return_crit_edge, %if.end35.i56, %if.end18.i, %if.then16.i.return_crit_edge, %if.end.i.i54, %if.end5.i.return_crit_edge, %sw.bb.i50.return_crit_edge, %if.end.i49.return_crit_edge, %do.end.i48, %sw.bb25.i45, %sw.bb2.i39, %if.end.i.i33, %if.end.i31.return_crit_edge, %sw.bb.i28.return_crit_edge, %sw.bb3.return_crit_edge, %sw.bb25.i, %sw.bb2.i, %if.end.i.i23, %if.end.i21.return_crit_edge, %sw.bb.i18.return_crit_edge, %sw.bb1.return_crit_edge, %if.end110.i, %if.then74.i, %if.end35.i, %if.then12.i, %if.end.i210.i, %if.end8.i.return_crit_edge, %if.end.i.i, %if.then6.i.return_crit_edge, %sw.bb.i.return_crit_edge, %if.end.i.return_crit_edge, %do.end.i, %entry.return_crit_edge
  %retval.0 = phi i32 [ -524, %entry.return_crit_edge ], [ -22, %do.end.i ], [ %call109.i, %if.then74.i ], [ %call145.i, %if.end110.i ], [ %call34.i, %if.then12.i ], [ %call70.i, %if.end35.i ], [ -22, %sw.bb.i.return_crit_edge ], [ -524, %if.end.i.return_crit_edge ], [ %call1.i.i, %if.end.i.i ], [ %call.i.i, %if.then6.i.return_crit_edge ], [ %call1.i209.i, %if.end.i210.i ], [ %call.i207.i, %if.end8.i.return_crit_edge ], [ %call60.i, %sw.bb25.i ], [ %call24.i, %sw.bb2.i ], [ -22, %sw.bb.i18.return_crit_edge ], [ -524, %sw.bb1.return_crit_edge ], [ %call1.i.i22, %if.end.i.i23 ], [ %call.i.i19, %if.end.i21.return_crit_edge ], [ %call60.i44, %sw.bb25.i45 ], [ %call24.i38, %sw.bb2.i39 ], [ -22, %sw.bb.i28.return_crit_edge ], [ -524, %sw.bb3.return_crit_edge ], [ %call1.i.i32, %if.end.i.i33 ], [ %call.i.i29, %if.end.i31.return_crit_edge ], [ -22, %do.end.i48 ], [ %call101.i, %if.end79.i ], [ %call124.i, %if.end102.i ], [ %call34.i55, %if.end18.i ], [ %call57.i, %if.end35.i56 ], [ -22, %sw.bb.i50.return_crit_edge ], [ -524, %if.then16.i.return_crit_edge ], [ -524, %if.then75.i.return_crit_edge ], [ -524, %if.end.i49.return_crit_edge ], [ %call1.i.i53, %if.end.i.i54 ], [ %call.i.i51, %if.end5.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ltc2947_val_read(ptr noundef %st, i8 noundef zeroext %reg, i8 noundef zeroext %page, i32 noundef %size, ptr nocapture noundef %val) unnamed_addr #0 align 64 {
entry:
  %__val.i71 = alloca i64, align 8
  %__val.i64 = alloca i32, align 4
  %__val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ltc2947_data, ptr %st, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %0 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %st, align 4
  %conv = zext i8 %page to i32
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 255, i32 noundef %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ltc2947_val_read.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ltc2947_val_read, %do.end)) #8
          to label %if.then7 [label %do.end], !srcloc !121

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.ltc2947_data, ptr %st, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %conv8 = zext i8 %reg to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ltc2947_val_read.__UNIQUE_ID_ddebug170, ptr noundef %3, ptr noundef nonnull @.str.20, i32 noundef %conv8, i32 noundef %conv, i32 noundef %size) #8
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %4 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %size, label %sw.epilog.thread [
    i32 2, label %sw.bb
    i32 3, label %sw.bb12
    i32 6, label %sw.bb14
  ]

sw.epilog.thread:                                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %__val.i) #8
  %5 = ptrtoint ptr %__val.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %__val.i, align 2
  %6 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %st, align 4
  %conv.i62 = zext i8 %reg to i32
  %call.i = call i32 @regmap_bulk_read(ptr noundef %7, i32 noundef %conv.i62, ptr noundef nonnull %__val.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.__ltc2947_val_read16.exit_crit_edge

sw.bb.__ltc2947_val_read16.exit_crit_edge:        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %__ltc2947_val_read16.exit

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %__val.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %__val.i, align 2
  %conv1.i63 = zext i16 %9 to i64
  br label %__ltc2947_val_read16.exit

__ltc2947_val_read16.exit:                        ; preds = %if.end.i, %sw.bb.__ltc2947_val_read16.exit_crit_edge
  %__val.0 = phi i64 [ %conv1.i63, %if.end.i ], [ 0, %sw.bb.__ltc2947_val_read16.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %__val.i) #8
  br label %sw.epilog

sw.bb12:                                          ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__val.i64) #8
  %10 = ptrtoint ptr %__val.i64 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %__val.i64, align 4
  %11 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %st, align 4
  %conv.i65 = zext i8 %reg to i32
  %call.i66 = call i32 @regmap_bulk_read(ptr noundef %12, i32 noundef %conv.i65, ptr noundef nonnull %__val.i64, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %tobool.not.i67 = icmp eq i32 %call.i66, 0
  br i1 %tobool.not.i67, label %if.end.i70, label %sw.bb12.__ltc2947_val_read24.exit_crit_edge

sw.bb12.__ltc2947_val_read24.exit_crit_edge:      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  br label %__ltc2947_val_read24.exit

if.end.i70:                                       ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %__val.i64 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %__val.i64, align 4
  %shr.i68 = lshr i32 %14, 8
  %conv1.i69 = zext i32 %shr.i68 to i64
  br label %__ltc2947_val_read24.exit

__ltc2947_val_read24.exit:                        ; preds = %if.end.i70, %sw.bb12.__ltc2947_val_read24.exit_crit_edge
  %__val.1 = phi i64 [ %conv1.i69, %if.end.i70 ], [ 0, %sw.bb12.__ltc2947_val_read24.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__val.i64) #8
  br label %sw.epilog

sw.bb14:                                          ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %__val.i71) #8
  %15 = ptrtoint ptr %__val.i71 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %__val.i71, align 8
  %16 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %st, align 4
  %conv.i72 = zext i8 %reg to i32
  %call.i73 = call i32 @regmap_bulk_read(ptr noundef %17, i32 noundef %conv.i72, ptr noundef nonnull %__val.i71, i32 noundef 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %tobool.not.i74 = icmp eq i32 %call.i73, 0
  br i1 %tobool.not.i74, label %if.end.i76, label %sw.bb14.__ltc2947_val_read64.exit_crit_edge

sw.bb14.__ltc2947_val_read64.exit_crit_edge:      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  br label %__ltc2947_val_read64.exit

if.end.i76:                                       ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %__val.i71 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %__val.i71, align 8
  %shr.i75 = lshr i64 %19, 16
  br label %__ltc2947_val_read64.exit

__ltc2947_val_read64.exit:                        ; preds = %if.end.i76, %sw.bb14.__ltc2947_val_read64.exit_crit_edge
  %__val.2 = phi i64 [ %shr.i75, %if.end.i76 ], [ 0, %sw.bb14.__ltc2947_val_read64.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %__val.i71) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %__ltc2947_val_read64.exit, %__ltc2947_val_read24.exit, %__ltc2947_val_read16.exit
  %__val.3 = phi i64 [ %__val.2, %__ltc2947_val_read64.exit ], [ %__val.1, %__ltc2947_val_read24.exit ], [ %__val.0, %__ltc2947_val_read16.exit ]
  %ret.0 = phi i32 [ %call.i73, %__ltc2947_val_read64.exit ], [ %call.i66, %__ltc2947_val_read24.exit ], [ %call.i, %__ltc2947_val_read16.exit ]
  call void @mutex_unlock(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool17.not = icmp eq i32 %ret.0, 0
  br i1 %tobool17.not, label %if.end19, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %mul.neg = mul nsw i32 %size, -8
  %conv.i = add nsw i32 %mul.neg, 64
  %sh_prom.i = zext i32 %conv.i to i64
  %shl.i = shl i64 %__val.3, %sh_prom.i
  %shr.i = ashr i64 %shl.i, %sh_prom.i
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %shr.i, ptr %val, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ltc2947_val_read.__UNIQUE_ID_ddebug171, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ltc2947_val_read, %cleanup)) #8
          to label %if.then35 [label %cleanup], !srcloc !121

if.then35:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %dev36 = getelementptr inbounds %struct.ltc2947_data, ptr %st, i32 0, i32 1
  %21 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev36, align 4
  %23 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %val, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ltc2947_val_read.__UNIQUE_ID_ddebug171, ptr noundef %22, ptr noundef nonnull @.str.21, i64 noundef %24, i64 noundef %__val.3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.end19, %sw.epilog.cleanup_crit_edge, %sw.epilog.thread, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %ret.0, %sw.epilog.cleanup_crit_edge ], [ 0, %if.then35 ], [ -22, %sw.epilog.thread ], [ 0, %if.end19 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ltc2947_alarm_read(ptr noundef %st, i8 noundef zeroext %reg, i32 noundef %mask, ptr nocapture noundef writeonly %val) unnamed_addr #0 align 64 {
entry:
  %alarms = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %reg to i32
  %sub = xor i8 %reg, -128
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %alarms) #8
  %0 = ptrtoint ptr %alarms to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %alarms, align 8
  %lock = getelementptr inbounds %struct.ltc2947_data, ptr %st, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %1 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %st, align 4
  %call = tail call i32 @regmap_write(ptr noundef %2, i32 noundef 255, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %entry.unlock_crit_edge

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ltc2947_alarm_read.__UNIQUE_ID_ddebug173, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ltc2947_alarm_read, %do.end)) #8
          to label %if.then7 [label %do.end], !srcloc !121

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.ltc2947_data, ptr %st, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ltc2947_alarm_read.__UNIQUE_ID_ddebug173, ptr noundef %4, ptr noundef nonnull @.str.23, i32 noundef %conv, i32 noundef %mask) #8
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %5 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %st, align 4
  %call12 = call i32 @regmap_bulk_read(ptr noundef %6, i32 noundef 128, ptr noundef nonnull %alarms, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %do.end.unlock_crit_edge

do.end.unlock_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end15:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %idxprom = zext i8 %sub to i32
  %arrayidx = getelementptr [8 x i8], ptr %alarms, i32 0, i32 %idxprom
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %conv16 = zext i8 %8 to i32
  %and = and i32 %conv16, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17 = icmp ne i32 %and, 0
  %lnot.ext21 = zext i1 %tobool17 to i32
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %lnot.ext21, ptr %val, align 4
  br label %unlock

unlock:                                           ; preds = %if.end15, %do.end.unlock_crit_edge, %entry.unlock_crit_edge
  %ret.0 = phi i32 [ %call, %entry.unlock_crit_edge ], [ %call12, %do.end.unlock_crit_edge ], [ 0, %if.end15 ]
  call void @mutex_unlock(ptr noundef %lock) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %alarms) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc2947_show_value(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %remainder.i = alloca i32, align 4
  %val = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %val, align 8
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %3 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index, align 4
  %conv = trunc i32 %4 to i8
  %call1 = call fastcc i32 @ltc2947_val_read(ptr noundef %1, i8 noundef zeroext %conv, i8 noundef zeroext 0, i32 noundef 6, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %val, align 8
  %lsb_energy = getelementptr inbounds %struct.ltc2947_data, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %lsb_energy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lsb_energy, align 4
  %conv2 = zext i32 %8 to i64
  %mul = mul i64 %6, %conv2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i) #8
  %9 = ptrtoint ptr %remainder.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %remainder.i, align 4, !annotation !117
  %call.i = call i64 @div_s64_rem(i64 noundef %mul, i32 noundef 1000, ptr noundef nonnull %remainder.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i) #8
  %call4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i64 noundef %call.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !34, !36, !38, !40, !41, !42, !44, !45, !46, !47, !49, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !65, !66, !67, !69, !71, !73, !75, !77, !79, !81, !82, !83, !85, !86, !87, !88, !90, !92, !93, !95, !97, !98, !100, !102, !103, !105, !106, !107}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = !{ptr @ltc2947_core_probe.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/ltc2947-core.c", i32 1125, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__ksymtab_ltc2947_core_probe, !4, !"__ksymtab_ltc2947_core_probe", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/ltc2947-core.c", i32 1136, i32 1}
!5 = !{ptr @ltc2947_pm_ops, !6, !"ltc2947_pm_ops", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/ltc2947-core.c", i32 1175, i32 1}
!7 = !{ptr @__ksymtab_ltc2947_pm_ops, !8, !"__ksymtab_ltc2947_pm_ops", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/ltc2947-core.c", i32 1176, i32 1}
!9 = !{ptr @ltc2947_of_match, !10, !"ltc2947_of_match", i1 false, i1 false}
!10 = !{!"../drivers/hwmon/ltc2947-core.c", i32 1178, i32 27}
!11 = !{ptr @__ksymtab_ltc2947_of_match, !12, !"__ksymtab_ltc2947_of_match", i1 false, i1 false}
!12 = !{!"../drivers/hwmon/ltc2947-core.c", i32 1182, i32 1}
!13 = !{ptr @__UNIQUE_ID_author269, !14, !"__UNIQUE_ID_author269", i1 false, i1 false}
!14 = !{!"../drivers/hwmon/ltc2947-core.c", i32 1185, i32 1}
!15 = !{ptr @__UNIQUE_ID_description270, !16, !"__UNIQUE_ID_description270", i1 false, i1 false}
!16 = !{!"../drivers/hwmon/ltc2947-core.c", i32 1186, i32 1}
!17 = !{ptr @__UNIQUE_ID_file271, !18, !"__UNIQUE_ID_file271", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/ltc2947-core.c", i32 1187, i32 1}
!19 = !{ptr @__UNIQUE_ID_license272, !18, !"__UNIQUE_ID_license272", i1 false, i1 false}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/hwmon/ltc2947-core.c", i32 995, i32 10}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/ltc2947-core.c", i32 1005, i32 4}
!24 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ltc2947_setup._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @ltc2947_setup._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/hwmon/ltc2947-core.c", i32 1053, i32 7}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/hwmon/ltc2947-core.c", i32 1064, i32 8}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/hwmon/ltc2947-core.c", i32 1074, i32 47}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/hwmon/ltc2947-core.c", i32 1085, i32 53}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/hwmon/ltc2947-core.c", i32 1096, i32 4}
!40 = !{ptr @ltc2947_setup._entry.11, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @ltc2947_setup._entry_ptr.13, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/hwmon/ltc2947-core.c", i32 252, i32 2}
!44 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @ltc2947_val_write.__UNIQUE_ID_ddebug172, !43, !"__UNIQUE_ID_ddebug172", i1 false, i1 false}
!47 = !{ptr @ltc2947_chip_info, !48, !"ltc2947_chip_info", i1 false, i1 false}
!48 = !{!"../drivers/hwmon/ltc2947-core.c", i32 941, i32 37}
!49 = !{ptr @ltc2947_hwmon_ops, !50, !"ltc2947_hwmon_ops", i1 false, i1 false}
!50 = !{!"../drivers/hwmon/ltc2947-core.c", i32 934, i32 31}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/hwmon/ltc2947-core.c", i32 507, i32 3}
!53 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @ltc2947_read_in._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @ltc2947_read_in._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/hwmon/ltc2947-core.c", i32 191, i32 2}
!58 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @ltc2947_val_read.__UNIQUE_ID_ddebug170, !57, !"__UNIQUE_ID_ddebug170", i1 false, i1 false}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/hwmon/ltc2947-core.c", i32 216, i32 2}
!62 = !{ptr @ltc2947_val_read.__UNIQUE_ID_ddebug171, !61, !"__UNIQUE_ID_ddebug171", i1 false, i1 false}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/hwmon/ltc2947-core.c", i32 303, i32 2}
!65 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @ltc2947_alarm_read.__UNIQUE_ID_ddebug173, !64, !"__UNIQUE_ID_ddebug173", i1 false, i1 false}
!67 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/hwmon/ltc2947-core.c", i32 785, i32 11}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/hwmon/ltc2947-core.c", i32 787, i32 11}
!71 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/hwmon/ltc2947-core.c", i32 790, i32 10}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/hwmon/ltc2947-core.c", i32 794, i32 11}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/hwmon/ltc2947-core.c", i32 796, i32 11}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/hwmon/ltc2947-core.c", i32 799, i32 10}
!79 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/hwmon/ltc2947-core.c", i32 716, i32 3}
!81 = !{ptr @ltc2947_write_in._entry, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @ltc2947_write_in._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/hwmon/ltc2947-core.c", i32 613, i32 3}
!85 = !{ptr @.str.32, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @ltc2947_write_temp._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @ltc2947_write_temp._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @ltc2947_info, !89, !"ltc2947_info", i1 false, i1 false}
!89 = !{!"../drivers/hwmon/ltc2947-core.c", i32 904, i32 41}
!90 = !{ptr @ltc2947_groups, !91, !"ltc2947_groups", i1 false, i1 false}
!91 = !{!"../drivers/hwmon/ltc2947-core.c", i32 957, i32 1}
!92 = !{ptr @ltc2947_group, !91, !"ltc2947_group", i1 false, i1 false}
!93 = !{ptr @ltc2947_attrs, !94, !"ltc2947_attrs", i1 false, i1 false}
!94 = !{!"../drivers/hwmon/ltc2947-core.c", i32 952, i32 26}
!95 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/hwmon/ltc2947-core.c", i32 947, i32 8}
!97 = !{ptr @sensor_dev_attr_energy1_input, !96, !"sensor_dev_attr_energy1_input", i1 false, i1 false}
!98 = !{ptr @.str.41, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/hwmon/ltc2947-core.c", i32 336, i32 22}
!100 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/hwmon/ltc2947-core.c", i32 949, i32 8}
!102 = !{ptr @sensor_dev_attr_energy2_input, !101, !"sensor_dev_attr_energy2_input", i1 false, i1 false}
!103 = !{ptr @.str.43, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/hwmon/ltc2947-core.c", i32 1158, i32 3}
!105 = !{ptr @.str.44, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @ltc2947_resume._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @ltc2947_resume._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{i32 1, !"wchar_size", i32 2}
!109 = !{i32 1, !"min_enum_size", i32 4}
!110 = !{i32 8, !"branch-target-enforcement", i32 0}
!111 = !{i32 8, !"sign-return-address", i32 0}
!112 = !{i32 8, !"sign-return-address-all", i32 0}
!113 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!114 = !{i32 7, !"uwtable", i32 1}
!115 = !{i32 7, !"frame-pointer", i32 2}
!116 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!117 = !{!"auto-init"}
!118 = !{!"branch_weights", i32 2000, i32 1}
!119 = !{i64 2148690498, i64 2148690778, i64 2148691112, i64 2148691446}
!120 = !{i8 0, i8 2}
!121 = !{i64 2148781779, i64 2148781784, i64 2148781797, i64 2148781841, i64 2148781875, i64 2148781896}
