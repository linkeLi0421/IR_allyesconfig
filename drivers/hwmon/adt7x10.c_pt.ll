; ModuleID = '/llk/IR_all_yes/drivers/hwmon/adt7x10.c_pt.bc'
source_filename = "../drivers/hwmon/adt7x10.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+adt7x10_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_adt7x10_probe\09\09\09\09"
module asm "\09.long\09__crc_adt7x10_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_adt7x10_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22adt7x10_probe\22\09\09\09\09\09"
module asm "__kstrtabns_adt7x10_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+adt7x10_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_adt7x10_remove\09\09\09\09"
module asm "\09.long\09__crc_adt7x10_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_adt7x10_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22adt7x10_remove\22\09\09\09\09\09"
module asm "__kstrtabns_adt7x10_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+adt7x10_dev_pm_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_adt7x10_dev_pm_ops\09\09\09\09"
module asm "\09.long\09__crc_adt7x10_dev_pm_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_adt7x10_dev_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22adt7x10_dev_pm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_adt7x10_dev_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.adt7x10_data = type { ptr, ptr, ptr, %struct.mutex, i8, i8, i8, i32, [4 x i16], i8 }
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
%struct.adt7x10_ops = type { ptr, ptr, ptr, ptr }

@adt7x10_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@adt7x10_probe.__UNIQUE_ID_ddebug203 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 94, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adt7x10\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adt7x10_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hwmon/adt7x10.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Can't read config? %d\0A\00", [41 x i8] zeroinitializer }, align 32
@adt7x10_probe.__UNIQUE_ID_ddebug204 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 0, i8 99, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Config %02x\0A\00", [19 x i8] zeroinitializer }, align 32
@adt7x10_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @adt7x10_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@dev_attr_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_adt7x10_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_adt7x10_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_adt7x10_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @adt7x10_probe to i32), ptr @__kstrtab_adt7x10_probe, ptr @__kstrtabns_adt7x10_probe }, section "___ksymtab_gpl+adt7x10_probe", align 4
@__kstrtab_adt7x10_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_adt7x10_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_adt7x10_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @adt7x10_remove to i32), ptr @__kstrtab_adt7x10_remove, ptr @__kstrtabns_adt7x10_remove }, section "___ksymtab_gpl+adt7x10_remove", align 4
@adt7x10_dev_pm_ops = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @adt7x10_suspend, ptr @adt7x10_resume, ptr @adt7x10_suspend, ptr @adt7x10_resume, ptr @adt7x10_suspend, ptr @adt7x10_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_adt7x10_dev_pm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_adt7x10_dev_pm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_adt7x10_dev_pm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @adt7x10_dev_pm_ops to i32), ptr @__kstrtab_adt7x10_dev_pm_ops, ptr @__kstrtabns_adt7x10_dev_pm_ops }, section "___ksymtab_gpl+adt7x10_dev_pm_ops", align 4
@__UNIQUE_ID_author205 = internal constant [30 x i8] c"adt7x10.author=Hartmut Knaack\00", section ".modinfo", align 1
@__UNIQUE_ID_description206 = internal constant [65 x i8] c"adt7x10.description=ADT7410/ADT7420, ADT7310/ADT7320 common code\00", section ".modinfo", align 1
@__UNIQUE_ID_file207 = internal constant [35 x i8] c"adt7x10.file=drivers/hwmon/adt7x10\00", section ".modinfo", align 1
@__UNIQUE_ID_license208 = internal constant [20 x i8] c"adt7x10.license=GPL\00", section ".modinfo", align 1
@ADT7X10_REG_TEMP = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\04\06\08", [28 x i8] zeroinitializer }, align 32
@adt7x10_fill_cache.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str.3, ptr @.str.7, i8 0, i8 45, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adt7x10_fill_cache\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to read value: reg %d, error %d\0A\00", [56 x i8] zeroinitializer }, align 32
@adt7x10_fill_cache.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str.3, ptr @.str.7, i8 0, i8 47, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@adt7x10_attributes = internal global { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_min, ptr @sensor_dev_attr_temp1_crit, ptr @sensor_dev_attr_temp1_max_hyst, ptr @sensor_dev_attr_temp1_min_hyst, ptr @sensor_dev_attr_temp1_crit_hyst, ptr @sensor_dev_attr_temp1_min_alarm, ptr @sensor_dev_attr_temp1_max_alarm, ptr @sensor_dev_attr_temp1_crit_alarm, ptr null], [52 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7x10_temp_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7x10_temp_show, ptr @adt7x10_temp_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7x10_temp_show, ptr @adt7x10_temp_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7x10_temp_show, ptr @adt7x10_temp_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7x10_t_hyst_show, ptr @adt7x10_t_hyst_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_min_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7x10_t_hyst_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_crit_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7x10_t_hyst_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_min_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7x10_alarm_show, ptr null }, i32 16 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7x10_alarm_show, ptr null }, i32 32 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_crit_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7x10_alarm_show, ptr null }, i32 64 }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@adt7x10_update_temp.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.11, i8 0, i8 37, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"adt7x10_update_temp\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Starting update\0A\00", [47 x i8] zeroinitializer }, align 32
@adt7x10_update_temp.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.7, i8 0, i8 39, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_max\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_min\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp1_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp1_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp1_min_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp1_crit_hyst\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp1_min_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp1_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp1_crit_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.23 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 373, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 378, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 396, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [14 x i8] c"adt7x10_group\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 355, i32 37 }
@___asan_gen_.47 = private unnamed_addr constant [14 x i8] c"dev_attr_name\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [19 x i8] c"adt7x10_dev_pm_ops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 480, i32 1 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"ADT7X10_REG_TEMP\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 96, i32 17 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 180, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant [19 x i8] c"adt7x10_attributes\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 341, i32 26 }
@___asan_gen_.65 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_max\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_min\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp1_crit\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_temp1_max_hyst\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_temp1_min_hyst\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp1_crit_hyst\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp1_min_alarm\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp1_max_alarm\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_temp1_crit_alarm\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 326, i32 8 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 235, i32 22 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 148, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 327, i32 8 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 328, i32 8 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 329, i32 8 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 330, i32 8 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 331, i32 8 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 332, i32 8 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 333, i32 8 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 335, i32 8 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 337, i32 8 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 339, i32 8 }
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.138 = private constant [27 x i8] c"../drivers/hwmon/adt7x10.c\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 323, i32 22 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_author205, ptr @__UNIQUE_ID_description206, ptr @__UNIQUE_ID_file207, ptr @__UNIQUE_ID_license208, ptr @__ksymtab_adt7x10_dev_pm_ops, ptr @__ksymtab_adt7x10_probe, ptr @__ksymtab_adt7x10_remove, ptr @adt7x10_probe.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @adt7x10_group, ptr @dev_attr_name, ptr @adt7x10_dev_pm_ops, ptr @ADT7X10_REG_TEMP, ptr @.str.6, ptr @.str.7, ptr @adt7x10_attributes, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_min, ptr @sensor_dev_attr_temp1_crit, ptr @sensor_dev_attr_temp1_max_hyst, ptr @sensor_dev_attr_temp1_min_hyst, ptr @sensor_dev_attr_temp1_crit_hyst, ptr @sensor_dev_attr_temp1_min_alarm, ptr @sensor_dev_attr_temp1_max_alarm, ptr @sensor_dev_attr_temp1_crit_alarm, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7x10_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7x10_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7x10_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ADT7X10_REG_TEMP to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7x10_attributes to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_min_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_crit_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_min_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adt7x10_probe(ptr noundef %dev, ptr noundef %name, i32 noundef %irq, ptr noundef %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 124, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ops, ptr %call.i, align 4
  %name2 = getelementptr inbounds %struct.adt7x10_data, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %name2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %name, ptr %name2, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i, align 4
  %update_lock = getelementptr inbounds %struct.adt7x10_data, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str, ptr noundef nonnull @adt7x10_probe.__key) #6
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call1.i = tail call i32 %8(ptr noundef %dev, i8 noundef zeroext 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %do.body5, label %if.end15

do.body5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adt7x10_probe.__UNIQUE_ID_ddebug203, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@adt7x10_probe, %cleanup)) #6
          to label %if.then11 [label %cleanup], !srcloc !91

if.then11:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adt7x10_probe.__UNIQUE_ID_ddebug203, ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %call1.i) #6
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %conv = trunc i32 %call1.i to i8
  %oldconfig = getelementptr inbounds %struct.adt7x10_data, ptr %call.i, i32 0, i32 5
  %9 = ptrtoint ptr %oldconfig to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %oldconfig, align 1
  %config = getelementptr inbounds %struct.adt7x10_data, ptr %call.i, i32 0, i32 4
  %10 = and i8 %conv, 3
  %conv22 = or i8 %10, -112
  %11 = ptrtoint ptr %config to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv22, ptr %config, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %conv22, i8 %conv)
  %cmp27.not = icmp eq i8 %conv22, %conv
  br i1 %cmp27.not, label %if.end15.do.body36_crit_edge, label %if.then29

if.end15.do.body36_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body36

if.then29:                                        ; preds = %if.end15
  %12 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %write_byte.i = getelementptr inbounds %struct.adt7x10_ops, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %write_byte.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_byte.i, align 4
  %call1.i144 = tail call i32 %17(ptr noundef %dev, i8 noundef zeroext 3, i8 noundef zeroext %conv22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i144)
  %tobool32.not = icmp eq i32 %call1.i144, 0
  br i1 %tobool32.not, label %if.then29.do.body36_crit_edge, label %if.then29.cleanup_crit_edge

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then29.do.body36_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body36

do.body36:                                        ; preds = %if.then29.do.body36_crit_edge, %if.end15.do.body36_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adt7x10_probe.__UNIQUE_ID_ddebug204, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@adt7x10_probe, %do.end55)) #6
          to label %if.then50 [label %do.end55], !srcloc !91

if.then50:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %config, align 4
  %conv52 = zext i8 %19 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adt7x10_probe.__UNIQUE_ID_ddebug204, ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %conv52) #6
  br label %do.end55

do.end55:                                         ; preds = %if.then50, %do.body36
  %call56 = tail call fastcc i32 @adt7x10_fill_cache(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %do.end55.exit_restore_crit_edge

do.end55.exit_restore_crit_edge:                  ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_restore

if.end59:                                         ; preds = %do.end55
  %call60 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef nonnull @adt7x10_group) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %if.end59.exit_restore_crit_edge

if.end59.exit_restore_crit_edge:                  ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_restore

if.end63:                                         ; preds = %if.end59
  %tobool64.not = icmp eq ptr %name, null
  br i1 %tobool64.not, label %if.end63.if.end70_crit_edge, label %if.then65

if.end63.if.end70_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

if.then65:                                        ; preds = %if.end63
  %call66 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_name) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.then65.if.end70_crit_edge, label %if.then65.exit_remove_crit_edge

if.then65.exit_remove_crit_edge:                  ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_remove

if.then65.if.end70_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

if.end70:                                         ; preds = %if.then65.if.end70_crit_edge, %if.end63.if.end70_crit_edge
  %call71 = tail call ptr @hwmon_device_register(ptr noundef %dev) #6
  %hwmon_dev = getelementptr inbounds %struct.adt7x10_data, ptr %call.i, i32 0, i32 2
  %20 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call71, ptr %hwmon_dev, align 4
  %cmp.i = icmp ugt ptr %call71, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then74, label %if.end77

if.then74:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %call71 to i32
  br label %exit_remove_name

if.end77:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq)
  %cmp78 = icmp sgt i32 %irq, 0
  br i1 %cmp78, label %if.then80, label %if.end77.cleanup_crit_edge

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then80:                                        ; preds = %if.end77
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %22 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then80.dev_name.exit_crit_edge

if.then80.dev_name.exit_crit_edge:                ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then80.dev_name.exit_crit_edge
  %retval.0.i145 = phi ptr [ %25, %if.end.i ], [ %23, %if.then80.dev_name.exit_crit_edge ]
  %call82 = tail call i32 @request_threaded_irq(i32 noundef %irq, ptr noundef null, ptr noundef nonnull @adt7x10_irq_handler, i32 noundef 8194, ptr noundef %retval.0.i145, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %dev_name.exit.cleanup_crit_edge, label %exit_hwmon_device_unregister

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

exit_hwmon_device_unregister:                     ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hwmon_dev, align 4
  tail call void @hwmon_device_unregister(ptr noundef %27) #6
  br label %exit_remove_name

exit_remove_name:                                 ; preds = %exit_hwmon_device_unregister, %if.then74
  %ret.0 = phi i32 [ %21, %if.then74 ], [ %call82, %exit_hwmon_device_unregister ]
  br i1 %tobool64.not, label %exit_remove_name.exit_remove_crit_edge, label %if.then89

exit_remove_name.exit_remove_crit_edge:           ; preds = %exit_remove_name
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_remove

if.then89:                                        ; preds = %exit_remove_name
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_name) #6
  br label %exit_remove

exit_remove:                                      ; preds = %if.then89, %exit_remove_name.exit_remove_crit_edge, %if.then65.exit_remove_crit_edge
  %ret.1 = phi i32 [ %call66, %if.then65.exit_remove_crit_edge ], [ %ret.0, %if.then89 ], [ %ret.0, %exit_remove_name.exit_remove_crit_edge ]
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @adt7x10_group) #6
  br label %exit_restore

exit_restore:                                     ; preds = %exit_remove, %if.end59.exit_restore_crit_edge, %do.end55.exit_restore_crit_edge
  %ret.2 = phi i32 [ %call56, %do.end55.exit_restore_crit_edge ], [ %call60, %if.end59.exit_restore_crit_edge ], [ %ret.1, %exit_remove ]
  %28 = ptrtoint ptr %oldconfig to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %oldconfig, align 1
  %30 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %driver_data.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %write_byte.i147 = getelementptr inbounds %struct.adt7x10_ops, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %write_byte.i147 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write_byte.i147, align 4
  %call1.i148 = tail call i32 %35(ptr noundef %dev, i8 noundef zeroext 3, i8 noundef zeroext %29) #6
  br label %cleanup

cleanup:                                          ; preds = %exit_restore, %dev_name.exit.cleanup_crit_edge, %if.end77.cleanup_crit_edge, %if.then29.cleanup_crit_edge, %if.then11, %do.body5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %exit_restore ], [ -12, %entry.cleanup_crit_edge ], [ %call1.i, %if.then11 ], [ %call1.i144, %if.then29.cleanup_crit_edge ], [ 0, %dev_name.exit.cleanup_crit_edge ], [ 0, %if.end77.cleanup_crit_edge ], [ %call1.i, %do.body5 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adt7x10_fill_cache(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %read_word.i = getelementptr inbounds %struct.adt7x10_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %read_word.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_word.i, align 4
  %call1.i = tail call i32 %5(ptr noundef %dev, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2 = icmp slt i32 %call1.i, 0
  br i1 %cmp2, label %entry.do.body_crit_edge, label %if.end9

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %if.end9.1.do.body_crit_edge, %if.end9.do.body_crit_edge, %entry.do.body_crit_edge
  %.lcssa = phi i32 [ 4, %entry.do.body_crit_edge ], [ 6, %if.end9.do.body_crit_edge ], [ 8, %if.end9.1.do.body_crit_edge ]
  %call1.i.lcssa = phi i32 [ %call1.i, %entry.do.body_crit_edge ], [ %call1.i.1, %if.end9.do.body_crit_edge ], [ %call1.i.2, %if.end9.1.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adt7x10_fill_cache.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@adt7x10_fill_cache, %cleanup)) #6
          to label %if.then7 [label %cleanup], !srcloc !91

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adt7x10_fill_cache.__UNIQUE_ID_ddebug189, ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %.lcssa, i32 noundef %call1.i.lcssa) #6
  br label %cleanup

if.end9:                                          ; preds = %entry
  %conv10 = trunc i32 %call1.i to i16
  %arrayidx11 = getelementptr %struct.adt7x10_data, ptr %1, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv10, ptr %arrayidx11, align 2
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %read_word.i.1 = getelementptr inbounds %struct.adt7x10_ops, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %read_word.i.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read_word.i.1, align 4
  %call1.i.1 = tail call i32 %12(ptr noundef %dev, i8 noundef zeroext 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.1)
  %cmp2.1 = icmp slt i32 %call1.i.1, 0
  br i1 %cmp2.1, label %if.end9.do.body_crit_edge, label %if.end9.1

if.end9.do.body_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end9.1:                                        ; preds = %if.end9
  %conv10.1 = trunc i32 %call1.i.1 to i16
  %arrayidx11.1 = getelementptr %struct.adt7x10_data, ptr %1, i32 0, i32 8, i32 2
  %13 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv10.1, ptr %arrayidx11.1, align 2
  %14 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %read_word.i.2 = getelementptr inbounds %struct.adt7x10_ops, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %read_word.i.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_word.i.2, align 4
  %call1.i.2 = tail call i32 %19(ptr noundef %dev, i8 noundef zeroext 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.2)
  %cmp2.2 = icmp slt i32 %call1.i.2, 0
  br i1 %cmp2.2, label %if.end9.1.do.body_crit_edge, label %if.end9.2

if.end9.1.do.body_crit_edge:                      ; preds = %if.end9.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end9.2:                                        ; preds = %if.end9.1
  %conv10.2 = trunc i32 %call1.i.2 to i16
  %arrayidx11.2 = getelementptr %struct.adt7x10_data, ptr %1, i32 0, i32 8, i32 3
  %20 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv10.2, ptr %arrayidx11.2, align 2
  %21 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %driver_data.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %call1.i58 = tail call i32 %26(ptr noundef %dev, i8 noundef zeroext 10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i58)
  %cmp13 = icmp slt i32 %call1.i58, 0
  br i1 %cmp13, label %do.body16, label %if.end34

do.body16:                                        ; preds = %if.end9.2
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adt7x10_fill_cache.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@adt7x10_fill_cache, %cleanup)) #6
          to label %if.then30 [label %cleanup], !srcloc !91

if.then30:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adt7x10_fill_cache.__UNIQUE_ID_ddebug190, ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef 10, i32 noundef %call1.i58) #6
  br label %cleanup

if.end34:                                         ; preds = %if.end9.2
  call void @__sanitizer_cov_trace_pc() #8
  %conv35 = trunc i32 %call1.i58 to i8
  %hyst = getelementptr inbounds %struct.adt7x10_data, ptr %1, i32 0, i32 9
  %27 = ptrtoint ptr %hyst to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv35, ptr %hyst, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.then30, %do.body16, %if.then7, %do.body
  %retval.0 = phi i32 [ 0, %if.end34 ], [ %call1.i.lcssa, %if.then7 ], [ %call1.i58, %if.then30 ], [ %call1.i.lcssa, %do.body ], [ %call1.i58, %do.body16 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwmon_device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7x10_irq_handler(i32 noundef %irq, ptr noundef %private) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %private, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call1.i = tail call i32 %5(ptr noundef %private, i8 noundef zeroext 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call1.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end2_crit_edge, label %if.then1

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @sysfs_notify(ptr noundef %private, ptr noundef null, ptr noundef nonnull @.str.19) #6
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end.if.end2_crit_edge
  %and3 = and i32 %call1.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end2.if.end7_crit_edge, label %if.then5

if.end2.if.end7_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @sysfs_notify(ptr noundef %private, ptr noundef null, ptr noundef nonnull @.str.18) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end2.if.end7_crit_edge
  %and8 = and i32 %call1.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.then10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @sysfs_notify(ptr noundef %private, ptr noundef null, ptr noundef nonnull @.str.20) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwmon_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @adt7x10_remove(ptr noundef %dev, i32 noundef %irq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq)
  %cmp = icmp sgt i32 %irq, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call ptr @free_irq(i32 noundef %irq, ptr noundef %dev) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hwmon_dev = getelementptr inbounds %struct.adt7x10_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmon_dev, align 4
  tail call void @hwmon_device_unregister(ptr noundef %3) #6
  %name = getelementptr inbounds %struct.adt7x10_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_name) #6
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @adt7x10_group) #6
  %oldconfig = getelementptr inbounds %struct.adt7x10_data, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %oldconfig to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %oldconfig, align 1
  %config = getelementptr inbounds %struct.adt7x10_data, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %config, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %9)
  %cmp5.not = icmp eq i8 %7, %9
  br i1 %cmp5.not, label %if.end3.if.end10_crit_edge, label %if.then7

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %write_byte.i = getelementptr inbounds %struct.adt7x10_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %write_byte.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_byte.i, align 4
  %call1.i = tail call i32 %15(ptr noundef %dev, i8 noundef zeroext 3, i8 noundef zeroext %7) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end3.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7x10_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %config = getelementptr inbounds %struct.adt7x10_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %config, align 4
  %4 = or i8 %3, 96
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %write_byte.i = getelementptr inbounds %struct.adt7x10_ops, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %write_byte.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_byte.i, align 4
  %call1.i = tail call i32 %8(ptr noundef %dev, i8 noundef zeroext 3, i8 noundef zeroext %4) #6
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7x10_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %config = getelementptr inbounds %struct.adt7x10_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %config, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %write_byte.i = getelementptr inbounds %struct.adt7x10_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write_byte.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_byte.i, align 4
  %call1.i = tail call i32 %7(ptr noundef %dev, i8 noundef zeroext 3, i8 noundef zeroext %3) #6
  ret i32 %call1.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7x10_temp_show(ptr noundef %dev, ptr nocapture noundef readonly %da, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc i32 @adt7x10_update_temp(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then.if.end3_crit_edge, label %if.then.cleanup7_crit_edge

if.then.cleanup7_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup7

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.adt7x10_data, ptr %1, i32 0, i32 8, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  %config.i = getelementptr inbounds %struct.adt7x10_data, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %config.i, align 4
  %10 = and i16 %7, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not21.i = icmp slt i8 %9, 0
  %spec.select.i = select i1 %tobool.not21.i, i16 %7, i16 %10
  %conv4.i = sext i16 %spec.select.i to i32
  %mul.i = mul nsw i32 %conv4.i, 1000
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %spec.select.i)
  %cmp.i = icmp sgt i16 %spec.select.i, 0
  %cond.in.v.i = select i1 %cmp.i, i32 64, i32 -64
  %cond.in.i = add nsw i32 %mul.i, %cond.in.v.i
  %cond.i = sdiv i32 %cond.in.i, 128
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %cond.i)
  br label %cleanup7

cleanup7:                                         ; preds = %if.end3, %if.then.cleanup7_crit_edge
  %retval.1 = phi i32 [ %call6, %if.end3 ], [ %call1, %if.then.cleanup7_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adt7x10_update_temp(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %update_lock = getelementptr inbounds %struct.adt7x10_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #6
  %last_updated = getelementptr inbounds %struct.adt7x10_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %last_updated to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_updated, align 4
  %add1 = add i32 %3, 150
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add1, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %valid = getelementptr inbounds %struct.adt7x10_data, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %valid, align 2, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.abort_crit_edge

lor.lhs.false.abort_crit_edge:                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %abort

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adt7x10_update_temp.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@adt7x10_update_temp, %do.end)) #6
          to label %if.then7 [label %do.end], !srcloc !91

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adt7x10_update_temp.__UNIQUE_ID_ddebug187, ptr noundef %dev, ptr noundef nonnull @.str.11) #6
  br label %do.end

do.end:                                           ; preds = %if.then7, %if.then
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call1.i.i = tail call i32 %12(ptr noundef %dev, i8 noundef zeroext 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp1.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp1.i, label %do.end.abort_crit_edge, label %if.end.i

do.end.abort_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %abort

if.end.i:                                         ; preds = %do.end
  %and.i = and i32 %call1.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end11_crit_edge, label %if.end3.i

if.end.i.if.end11_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end3.i:                                        ; preds = %if.end.i
  tail call void @msleep(i32 noundef 60) #6
  %13 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %call1.i.1.i = tail call i32 %18(ptr noundef %dev, i8 noundef zeroext 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.1.i)
  %cmp1.1.i = icmp slt i32 %call1.i.1.i, 0
  br i1 %cmp1.1.i, label %if.end3.i.abort_crit_edge, label %if.end.1.i

if.end3.i.abort_crit_edge:                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %abort

if.end.1.i:                                       ; preds = %if.end3.i
  %and.1.i = and i32 %call1.i.1.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool.not.1.i, label %if.end.1.i.if.end11_crit_edge, label %if.end3.1.i

if.end.1.i.if.end11_crit_edge:                    ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end3.1.i:                                      ; preds = %if.end.1.i
  tail call void @msleep(i32 noundef 60) #6
  %19 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver_data.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %call1.i.2.i = tail call i32 %24(ptr noundef %dev, i8 noundef zeroext 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.2.i)
  %cmp1.2.i = icmp slt i32 %call1.i.2.i, 0
  br i1 %cmp1.2.i, label %if.end3.1.i.abort_crit_edge, label %if.end.2.i

if.end3.1.i.abort_crit_edge:                      ; preds = %if.end3.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %abort

if.end.2.i:                                       ; preds = %if.end3.1.i
  %and.2.i = and i32 %call1.i.2.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool.not.2.i, label %if.end.2.i.if.end11_crit_edge, label %if.end3.2.i

if.end.2.i.if.end11_crit_edge:                    ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end3.2.i:                                      ; preds = %if.end.2.i
  tail call void @msleep(i32 noundef 60) #6
  %25 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %driver_data.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %call1.i.3.i = tail call i32 %30(ptr noundef %dev, i8 noundef zeroext 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.3.i)
  %cmp1.3.i = icmp slt i32 %call1.i.3.i, 0
  br i1 %cmp1.3.i, label %if.end3.2.i.abort_crit_edge, label %if.end.3.i

if.end3.2.i.abort_crit_edge:                      ; preds = %if.end3.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %abort

if.end.3.i:                                       ; preds = %if.end3.2.i
  %and.3.i = and i32 %call1.i.3.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool.not.3.i = icmp eq i32 %and.3.i, 0
  br i1 %tobool.not.3.i, label %if.end.3.i.if.end11_crit_edge, label %if.end3.3.i

if.end.3.i.if.end11_crit_edge:                    ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end3.3.i:                                      ; preds = %if.end.3.i
  tail call void @msleep(i32 noundef 60) #6
  %31 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %driver_data.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %call1.i.4.i = tail call i32 %36(ptr noundef %dev, i8 noundef zeroext 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.4.i)
  %cmp1.4.i = icmp slt i32 %call1.i.4.i, 0
  br i1 %cmp1.4.i, label %if.end3.3.i.abort_crit_edge, label %if.end.4.i

if.end3.3.i.abort_crit_edge:                      ; preds = %if.end3.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %abort

if.end.4.i:                                       ; preds = %if.end3.3.i
  %and.4.i = and i32 %call1.i.4.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i)
  %tobool.not.4.i = icmp eq i32 %and.4.i, 0
  br i1 %tobool.not.4.i, label %if.end.4.i.if.end11_crit_edge, label %if.end3.4.i

if.end.4.i.if.end11_crit_edge:                    ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end3.4.i:                                      ; preds = %if.end.4.i
  tail call void @msleep(i32 noundef 60) #6
  %37 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %driver_data.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %call1.i.5.i = tail call i32 %42(ptr noundef %dev, i8 noundef zeroext 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.5.i)
  %cmp1.5.i = icmp slt i32 %call1.i.5.i, 0
  br i1 %cmp1.5.i, label %if.end3.4.i.abort_crit_edge, label %if.end.5.i

if.end3.4.i.abort_crit_edge:                      ; preds = %if.end3.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %abort

if.end.5.i:                                       ; preds = %if.end3.4.i
  %and.5.i = and i32 %call1.i.5.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i)
  %tobool.not.5.i = icmp eq i32 %and.5.i, 0
  br i1 %tobool.not.5.i, label %if.end.5.i.if.end11_crit_edge, label %if.end3.5.i

if.end.5.i.if.end11_crit_edge:                    ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end3.5.i:                                      ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef 60) #6
  br label %abort

if.end11:                                         ; preds = %if.end.5.i.if.end11_crit_edge, %if.end.4.i.if.end11_crit_edge, %if.end.3.i.if.end11_crit_edge, %if.end.2.i.if.end11_crit_edge, %if.end.1.i.if.end11_crit_edge, %if.end.i.if.end11_crit_edge
  %43 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %driver_data.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %read_word.i = getelementptr inbounds %struct.adt7x10_ops, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %read_word.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %read_word.i, align 4
  %call1.i = tail call i32 %48(ptr noundef %dev, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp13 = icmp slt i32 %call1.i, 0
  br i1 %cmp13, label %if.then14, label %if.end33

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adt7x10_update_temp.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@adt7x10_update_temp, %abort)) #6
          to label %if.then29 [label %abort], !srcloc !91

if.then29:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adt7x10_update_temp.__UNIQUE_ID_ddebug188, ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef 0, i32 noundef %call1.i) #6
  br label %abort

if.end33:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %conv34 = trunc i32 %call1.i to i16
  %temp35 = getelementptr inbounds %struct.adt7x10_data, ptr %1, i32 0, i32 8
  %49 = ptrtoint ptr %temp35 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv34, ptr %temp35, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %50 = load volatile i32, ptr @jiffies, align 128
  %51 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %last_updated, align 4
  %valid37 = getelementptr inbounds %struct.adt7x10_data, ptr %1, i32 0, i32 6
  %52 = ptrtoint ptr %valid37 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %valid37, align 2
  br label %abort

abort:                                            ; preds = %if.end33, %if.then29, %if.then14, %if.end3.5.i, %if.end3.4.i.abort_crit_edge, %if.end3.3.i.abort_crit_edge, %if.end3.2.i.abort_crit_edge, %if.end3.1.i.abort_crit_edge, %if.end3.i.abort_crit_edge, %do.end.abort_crit_edge, %lor.lhs.false.abort_crit_edge
  %ret.1 = phi i32 [ 0, %lor.lhs.false.abort_crit_edge ], [ 0, %if.end33 ], [ %call1.i, %if.then29 ], [ -110, %if.end3.5.i ], [ %call1.i.5.i, %if.end3.4.i.abort_crit_edge ], [ %call1.i.4.i, %if.end3.3.i.abort_crit_edge ], [ %call1.i.3.i, %if.end3.2.i.abort_crit_edge ], [ %call1.i.2.i, %if.end3.1.i.abort_crit_edge ], [ %call1.i.1.i, %if.end3.i.abort_crit_edge ], [ %call1.i.i, %do.end.abort_crit_edge ], [ %call1.i, %if.then14 ]
  tail call void @mutex_unlock(ptr noundef %update_lock) #6
  ret i32 %ret.1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7x10_temp_store(ptr noundef %dev, ptr nocapture noundef readonly %da, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #6
  %4 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %temp, align 4, !annotation !93
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %temp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %update_lock = getelementptr inbounds %struct.adt7x10_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #6
  %5 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %temp, align 4
  %7 = call i32 @llvm.smax.i32(i32 %6, i32 -55000) #6
  %8 = call i32 @llvm.smin.i32(i32 %7, i32 150000) #6
  %mul.i = shl nsw i32 %8, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp8.i = icmp sgt i32 %7, 0
  %cond19.in.v.i = select i1 %cmp8.i, i32 500, i32 -500
  %cond19.in.i = add nsw i32 %mul.i, %cond19.in.v.i
  %cond19.i = sdiv i32 %cond19.in.i, 1000
  %conv20.i = trunc i32 %cond19.i to i16
  %arrayidx = getelementptr %struct.adt7x10_data, ptr %1, i32 0, i32 8, i32 %3
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv20.i, ptr %arrayidx, align 2
  %arrayidx4 = getelementptr [4 x i8], ptr @ADT7X10_REG_TEMP, i32 0, i32 %3
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx4, align 1
  %12 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %write_word.i = getelementptr inbounds %struct.adt7x10_ops, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %write_word.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_word.i, align 4
  %call1.i = call i32 %17(ptr noundef %dev, i8 noundef zeroext %11, i16 noundef zeroext %conv20.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool8.not = icmp eq i32 %call1.i, 0
  %spec.select = select i1 %tobool8.not, i32 %count, i32 %call1.i
  call void @mutex_unlock(ptr noundef %update_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7x10_t_hyst_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %hyst1 = getelementptr inbounds %struct.adt7x10_data, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %hyst1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hyst1, align 4
  %6 = and i8 %5, 15
  %and = zext i8 %6 to i32
  %mul = mul nuw nsw i32 %and, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  %sub = sub nsw i32 0, %mul
  %7 = select i1 %cmp, i32 %mul, i32 %sub
  %arrayidx = getelementptr %struct.adt7x10_data, ptr %1, i32 0, i32 8, i32 %3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 2
  %config.i = getelementptr inbounds %struct.adt7x10_data, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %config.i, align 4
  %12 = and i16 %9, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not21.i = icmp slt i8 %11, 0
  %spec.select.i = select i1 %tobool.not21.i, i16 %9, i16 %12
  %conv4.i = sext i16 %spec.select.i to i32
  %mul.i = mul nsw i32 %conv4.i, 1000
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %spec.select.i)
  %cmp.i = icmp sgt i16 %spec.select.i, 0
  %cond.in.v.i = select i1 %cmp.i, i32 64, i32 -64
  %cond.in.i = add nsw i32 %mul.i, %cond.in.v.i
  %cond.i = sdiv i32 %cond.in.i, 128
  %sub4 = add nsw i32 %cond.i, %7
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %sub4)
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7x10_t_hyst_store(ptr noundef %dev, ptr nocapture noundef readnone %da, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %hyst = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hyst) #6
  %2 = ptrtoint ptr %hyst to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %hyst, align 4, !annotation !93
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %hyst) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.adt7x10_data, ptr %1, i32 0, i32 8, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx, align 2
  %config.i = getelementptr inbounds %struct.adt7x10_data, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %config.i, align 4
  %7 = and i16 %4, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not21.i = icmp slt i8 %6, 0
  %spec.select.i = select i1 %tobool.not21.i, i16 %4, i16 %7
  %conv4.i = sext i16 %spec.select.i to i32
  %mul.i = mul nsw i32 %conv4.i, 1000
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %spec.select.i)
  %cmp.i = icmp sgt i16 %spec.select.i, 0
  %cond.in.v.i = select i1 %cmp.i, i32 64, i32 -64
  %cond.in.i = add nsw i32 %mul.i, %cond.in.v.i
  %cond.i = sdiv i32 %cond.in.i, 128
  %8 = ptrtoint ptr %hyst to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hyst, align 4
  %10 = call i32 @llvm.smax.i32(i32 %9, i32 -55000)
  %11 = call i32 @llvm.smin.i32(i32 %10, i32 150000)
  %12 = ptrtoint ptr %hyst to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %hyst, align 4
  %sub = sub nsw i32 %cond.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp10 = icmp sgt i32 %sub, 0
  %cond22.in.v = select i1 %cmp10, i32 500, i32 -500
  %cond22.in = add nsw i32 %cond22.in.v, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %cond22.in)
  %cmp24 = icmp sgt i32 %cond22.in, 999
  %cond22 = sdiv i32 %cond22.in, 1000
  %13 = call i32 @llvm.smin.i32(i32 %cond22, i32 15)
  %14 = trunc i32 %13 to i8
  %conv37 = select i1 %cmp24, i8 %14, i8 0
  %hyst38 = getelementptr inbounds %struct.adt7x10_data, ptr %1, i32 0, i32 9
  %15 = ptrtoint ptr %hyst38 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv37, ptr %hyst38, align 4
  %16 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %write_byte.i = getelementptr inbounds %struct.adt7x10_ops, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %write_byte.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_byte.i, align 4
  %call1.i = call i32 %21(ptr noundef %dev, i8 noundef zeroext 10, i8 noundef zeroext %conv37) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool41.not = icmp eq i32 %call1.i, 0
  %spec.select = select i1 %tobool41.not, i32 %count, i32 %call1.i
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %spec.select, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hyst) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7x10_alarm_show(ptr noundef %dev, ptr nocapture noundef readonly %da, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call1.i = tail call i32 %5(ptr noundef %dev, i8 noundef zeroext 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %and = and i32 %7, %call1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %lnot.ext = zext i1 %tobool to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %lnot.ext)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @name_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %da, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %name = getelementptr inbounds %struct.adt7x10_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, ptr noundef %3)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_notify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !27, !29, !30, !31, !33, !35, !37, !39, !41, !42, !44, !46, !47, !48, !50, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !73, !74, !76, !77, !79, !80}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @adt7x10_probe.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/adt7x10.c", i32 373, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/adt7x10.c", i32 378, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @adt7x10_probe.__UNIQUE_ID_ddebug203, !4, !"__UNIQUE_ID_ddebug203", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/hwmon/adt7x10.c", i32 396, i32 2}
!11 = !{ptr @adt7x10_probe.__UNIQUE_ID_ddebug204, !10, !"__UNIQUE_ID_ddebug204", i1 false, i1 false}
!12 = !{ptr @__ksymtab_adt7x10_probe, !13, !"__ksymtab_adt7x10_probe", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/adt7x10.c", i32 445, i32 1}
!14 = !{ptr @__ksymtab_adt7x10_remove, !15, !"__ksymtab_adt7x10_remove", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/adt7x10.c", i32 461, i32 1}
!16 = !{ptr @adt7x10_dev_pm_ops, !17, !"adt7x10_dev_pm_ops", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/adt7x10.c", i32 480, i32 1}
!18 = !{ptr @__ksymtab_adt7x10_dev_pm_ops, !19, !"__ksymtab_adt7x10_dev_pm_ops", i1 false, i1 false}
!19 = !{!"../drivers/hwmon/adt7x10.c", i32 481, i32 1}
!20 = !{ptr @__UNIQUE_ID_author205, !21, !"__UNIQUE_ID_author205", i1 false, i1 false}
!21 = !{!"../drivers/hwmon/adt7x10.c", i32 485, i32 1}
!22 = !{ptr @__UNIQUE_ID_description206, !23, !"__UNIQUE_ID_description206", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/adt7x10.c", i32 486, i32 1}
!24 = !{ptr @__UNIQUE_ID_file207, !25, !"__UNIQUE_ID_file207", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/adt7x10.c", i32 487, i32 1}
!26 = !{ptr @__UNIQUE_ID_license208, !25, !"__UNIQUE_ID_license208", i1 false, i1 false}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/hwmon/adt7x10.c", i32 180, i32 4}
!29 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @adt7x10_fill_cache.__UNIQUE_ID_ddebug189, !28, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!31 = !{ptr @adt7x10_fill_cache.__UNIQUE_ID_ddebug190, !32, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!32 = !{!"../drivers/hwmon/adt7x10.c", i32 189, i32 3}
!33 = !{ptr @ADT7X10_REG_TEMP, !34, !"ADT7X10_REG_TEMP", i1 false, i1 false}
!34 = !{!"../drivers/hwmon/adt7x10.c", i32 96, i32 17}
!35 = !{ptr @adt7x10_group, !36, !"adt7x10_group", i1 false, i1 false}
!36 = !{!"../drivers/hwmon/adt7x10.c", i32 355, i32 37}
!37 = !{ptr @adt7x10_attributes, !38, !"adt7x10_attributes", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/adt7x10.c", i32 341, i32 26}
!39 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/hwmon/adt7x10.c", i32 326, i32 8}
!41 = !{ptr @sensor_dev_attr_temp1_input, !40, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!42 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/hwmon/adt7x10.c", i32 235, i32 22}
!44 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/hwmon/adt7x10.c", i32 148, i32 3}
!46 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @adt7x10_update_temp.__UNIQUE_ID_ddebug187, !45, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!48 = !{ptr @adt7x10_update_temp.__UNIQUE_ID_ddebug188, !49, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!49 = !{!"../drivers/hwmon/adt7x10.c", i32 157, i32 4}
!50 = !{ptr @.str.12, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hwmon/adt7x10.c", i32 327, i32 8}
!52 = !{ptr @sensor_dev_attr_temp1_max, !51, !"sensor_dev_attr_temp1_max", i1 false, i1 false}
!53 = !{ptr @.str.13, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/hwmon/adt7x10.c", i32 328, i32 8}
!55 = !{ptr @sensor_dev_attr_temp1_min, !54, !"sensor_dev_attr_temp1_min", i1 false, i1 false}
!56 = !{ptr @.str.14, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/hwmon/adt7x10.c", i32 329, i32 8}
!58 = !{ptr @sensor_dev_attr_temp1_crit, !57, !"sensor_dev_attr_temp1_crit", i1 false, i1 false}
!59 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/hwmon/adt7x10.c", i32 330, i32 8}
!61 = !{ptr @sensor_dev_attr_temp1_max_hyst, !60, !"sensor_dev_attr_temp1_max_hyst", i1 false, i1 false}
!62 = !{ptr @.str.16, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/hwmon/adt7x10.c", i32 331, i32 8}
!64 = !{ptr @sensor_dev_attr_temp1_min_hyst, !63, !"sensor_dev_attr_temp1_min_hyst", i1 false, i1 false}
!65 = !{ptr @.str.17, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/hwmon/adt7x10.c", i32 332, i32 8}
!67 = !{ptr @sensor_dev_attr_temp1_crit_hyst, !66, !"sensor_dev_attr_temp1_crit_hyst", i1 false, i1 false}
!68 = !{ptr @.str.18, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/hwmon/adt7x10.c", i32 333, i32 8}
!70 = !{ptr @sensor_dev_attr_temp1_min_alarm, !69, !"sensor_dev_attr_temp1_min_alarm", i1 false, i1 false}
!71 = !{ptr @.str.19, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/hwmon/adt7x10.c", i32 335, i32 8}
!73 = !{ptr @sensor_dev_attr_temp1_max_alarm, !72, !"sensor_dev_attr_temp1_max_alarm", i1 false, i1 false}
!74 = !{ptr @.str.20, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/hwmon/adt7x10.c", i32 337, i32 8}
!76 = !{ptr @sensor_dev_attr_temp1_crit_alarm, !75, !"sensor_dev_attr_temp1_crit_alarm", i1 false, i1 false}
!77 = !{ptr @.str.21, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/hwmon/adt7x10.c", i32 339, i32 8}
!79 = !{ptr @dev_attr_name, !78, !"dev_attr_name", i1 false, i1 false}
!80 = !{ptr @.str.22, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/hwmon/adt7x10.c", i32 323, i32 22}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{i64 2148964056, i64 2148964061, i64 2148964074, i64 2148964118, i64 2148964152, i64 2148964173}
!92 = !{i8 0, i8 2}
!93 = !{!"auto-init"}
