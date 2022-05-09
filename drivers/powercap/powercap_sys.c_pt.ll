; ModuleID = '/llk/IR_all_yes/drivers/powercap/powercap_sys.c_pt.bc'
source_filename = "../drivers/powercap/powercap_sys.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+powercap_register_zone\22, \22a\22\09"
module asm "\09.weak\09__crc_powercap_register_zone\09\09\09\09"
module asm "\09.long\09__crc_powercap_register_zone\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_powercap_register_zone:\09\09\09\09\09"
module asm "\09.asciz \09\22powercap_register_zone\22\09\09\09\09\09"
module asm "__kstrtabns_powercap_register_zone:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+powercap_unregister_zone\22, \22a\22\09"
module asm "\09.weak\09__crc_powercap_unregister_zone\09\09\09\09"
module asm "\09.long\09__crc_powercap_unregister_zone\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_powercap_unregister_zone:\09\09\09\09\09"
module asm "\09.asciz \09\22powercap_unregister_zone\22\09\09\09\09\09"
module asm "__kstrtabns_powercap_unregister_zone:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+powercap_register_control_type\22, \22a\22\09"
module asm "\09.weak\09__crc_powercap_register_control_type\09\09\09\09"
module asm "\09.long\09__crc_powercap_register_control_type\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_powercap_register_control_type:\09\09\09\09\09"
module asm "\09.asciz \09\22powercap_register_control_type\22\09\09\09\09\09"
module asm "__kstrtabns_powercap_register_control_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+powercap_unregister_control_type\22, \22a\22\09"
module asm "\09.weak\09__crc_powercap_unregister_control_type\09\09\09\09"
module asm "\09.long\09__crc_powercap_unregister_control_type\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_powercap_unregister_control_type:\09\09\09\09\09"
module asm "\09.asciz \09\22powercap_unregister_control_type\22\09\09\09\09\09"
module asm "__kstrtabns_powercap_unregister_control_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.powercap_constraint_attr = type { %struct.device_attribute, %struct.device_attribute, %struct.device_attribute, %struct.device_attribute, %struct.device_attribute, %struct.device_attribute, %struct.device_attribute }
%struct.powercap_zone_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.powercap_zone = type { i32, ptr, ptr, ptr, %struct.device, i32, %struct.idr, ptr, ptr, ptr, i32, %struct.attribute_group, [2 x ptr], i8, ptr }
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
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.powercap_control_type = type { %struct.device, %struct.idr, i32, ptr, %struct.mutex, i8, %struct.list_head }
%struct.powercap_zone_constraint_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.powercap_zone_constraint = type { i32, ptr, ptr }
%struct.powercap_control_type_ops = type { ptr, ptr, ptr }

@powercap_class = internal global { %struct.class, [36 x i8] } { %struct.class { ptr @.str.8, ptr null, ptr null, ptr @powercap_groups, ptr null, ptr null, ptr null, ptr null, ptr @powercap_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s:%x\00", [26 x i8] zeroinitializer }, align 32
@__kstrtab_powercap_register_zone = external dso_local constant [0 x i8], align 1
@__kstrtabns_powercap_register_zone = external dso_local constant [0 x i8], align 1
@__ksymtab_powercap_register_zone = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @powercap_register_zone to i32), ptr @__kstrtab_powercap_register_zone, ptr @__kstrtabns_powercap_register_zone }, section "___ksymtab_gpl+powercap_register_zone", align 4
@__kstrtab_powercap_unregister_zone = external dso_local constant [0 x i8], align 1
@__kstrtabns_powercap_unregister_zone = external dso_local constant [0 x i8], align 1
@__ksymtab_powercap_unregister_zone = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @powercap_unregister_zone to i32), ptr @__kstrtab_powercap_unregister_zone, ptr @__kstrtabns_powercap_unregister_zone }, section "___ksymtab_gpl+powercap_unregister_zone", align 4
@powercap_register_control_type.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&control_type->lock\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@powercap_cntrl_list_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.19, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @powercap_cntrl_list_lock, i64 52), ptr getelementptr (i8, ptr @powercap_cntrl_list_lock, i64 52) }, ptr @powercap_cntrl_list_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.20, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@powercap_cntrl_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @powercap_cntrl_list, ptr @powercap_cntrl_list }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_powercap_register_control_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_powercap_register_control_type = external dso_local constant [0 x i8], align 1
@__ksymtab_powercap_register_control_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @powercap_register_control_type to i32), ptr @__kstrtab_powercap_register_control_type, ptr @__kstrtabns_powercap_register_control_type }, section "___ksymtab_gpl+powercap_register_control_type", align 4
@powercap_unregister_control_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 644, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Zones of this type still not freed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"powercap_unregister_control_type\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/powercap/powercap_sys.c\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@powercap_unregister_control_type._entry_ptr = internal global ptr @powercap_unregister_control_type._entry, section ".printk_index", align 4
@__kstrtab_powercap_unregister_control_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_powercap_unregister_control_type = external dso_local constant [0 x i8], align 1
@__ksymtab_powercap_unregister_control_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @powercap_unregister_control_type to i32), ptr @__kstrtab_powercap_unregister_control_type, ptr @__kstrtabns_powercap_unregister_control_type }, section "___ksymtab_gpl+powercap_unregister_control_type", align 4
@__initcall__kmod_powercap_sys__183_673_powercap_init5 = internal global ptr @powercap_init, section ".initcall5.init", align 4
@__UNIQUE_ID_description184 = internal constant [47 x i8] c"powercap_sys.description=PowerCap sysfs Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author185 = internal constant [78 x i8] c"powercap_sys.author=Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file186 = internal constant [48 x i8] c"powercap_sys.file=drivers/powercap/powercap_sys\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [28 x i8] c"powercap_sys.license=GPL v2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"powercap\00", [23 x i8] zeroinitializer }, align 32
@powercap_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @powercap_group, ptr null], [24 x i8] zeroinitializer }, align 32
@powercap_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @powercap_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@powercap_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_enabled, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_enabled = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @enabled_show, ptr @enabled_store }, [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@dev_attr_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_max_energy_range_uj = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max_energy_range_uj_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_energy_uj = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @energy_uj_show, ptr @energy_uj_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_power_uw = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @power_uw_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_max_power_range_uw = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max_power_range_uw_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max_energy_range_uj\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%lld\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"energy_uj\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"power_uw\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max_power_range_uw\00", [45 x i8] zeroinitializer }, align 32
@constraint_attrs = internal global { [10 x %struct.powercap_constraint_attr], [504 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"powercap_cntrl_list_lock.wait_lock\00", [61 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"powercap_cntrl_list_lock\00", [39 x i8] zeroinitializer }, align 32
@powercap_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"power_limit_uw\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"time_window_us\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"max_power_uw\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"min_power_uw\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max_time_window_us\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"min_time_window_us\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"constraint_%d_%s\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"constraint_%d_\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%.*s\0A\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.30 = private unnamed_addr constant [15 x i8] c"powercap_class\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 475, i32 21 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 532, i32 33 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 618, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 622, i32 35 }
@___asan_gen_.45 = private unnamed_addr constant [25 x i8] c"powercap_cntrl_list_lock\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [20 x i8] c"powercap_cntrl_list\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 149, i32 8 }
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 644, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 476, i32 10 }
@___asan_gen_.72 = private unnamed_addr constant [16 x i8] c"powercap_groups\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [15 x i8] c"powercap_group\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 473, i32 1 }
@___asan_gen_.78 = private unnamed_addr constant [15 x i8] c"powercap_attrs\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 469, i32 26 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"dev_attr_enabled\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 467, i32 8 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 440, i32 22 }
@___asan_gen_.94 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 378, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [14 x i8] c"dev_attr_name\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [29 x i8] c"dev_attr_max_energy_range_uj\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [19 x i8] c"dev_attr_energy_uj\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [18 x i8] c"dev_attr_power_uw\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [28 x i8] c"dev_attr_max_power_range_uw\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 355, i32 8 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 352, i32 22 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 121, i32 8 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 116, i32 1 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 122, i32 8 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 120, i32 8 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 119, i32 8 }
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"constraint_attrs\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 146, i32 5 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 151, i32 8 }
@___asan_gen_.141 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 670, i32 9 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 225, i32 40 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 232, i32 40 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 245, i32 40 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 251, i32 40 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 257, i32 40 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 264, i32 40 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 193, i32 46 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 125, i32 1 }
@___asan_gen_.168 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.169 = private constant [35 x i8] c"../drivers/powercap/powercap_sys.c\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 173, i32 17 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__UNIQUE_ID_author185, ptr @__UNIQUE_ID_description184, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__initcall__kmod_powercap_sys__183_673_powercap_init5, ptr @__ksymtab_powercap_register_control_type, ptr @__ksymtab_powercap_register_zone, ptr @__ksymtab_powercap_unregister_control_type, ptr @__ksymtab_powercap_unregister_zone, ptr @powercap_unregister_control_type._entry, ptr @powercap_unregister_control_type._entry_ptr, ptr @powercap_class, ptr @.str, ptr @powercap_register_control_type.__key, ptr @.str.1, ptr @.str.2, ptr @powercap_cntrl_list_lock, ptr @powercap_cntrl_list, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @powercap_groups, ptr @powercap_group, ptr @powercap_attrs, ptr @dev_attr_enabled, ptr @.str.9, ptr @.str.10, ptr @xa_init_flags.__key, ptr @.str.11, ptr @dev_attr_name, ptr @dev_attr_max_energy_range_uj, ptr @dev_attr_energy_uj, ptr @dev_attr_power_uw, ptr @dev_attr_max_power_range_uw, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @constraint_attrs, ptr @.str.19, ptr @.str.20, ptr @powercap_init.__key, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @powercap_class to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @powercap_register_control_type.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @powercap_cntrl_list_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @powercap_cntrl_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @powercap_unregister_control_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @powercap_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @powercap_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @powercap_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_enabled to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_max_energy_range_uj to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_energy_uj to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_power_uw to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_max_power_range_uw to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @constraint_attrs to i32), i32 1960, i32 2464, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @powercap_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @powercap_register_zone(ptr noundef %power_zone, ptr noundef %control_type, ptr noundef %name, ptr noundef %parent, ptr noundef %ops, i32 noundef %nr_constraints, ptr noundef %const_ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %name, null
  %tobool1.not = icmp eq ptr %control_type, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  %tobool3.not = icmp eq ptr %ops, null
  %or.cond159 = or i1 %or.cond, %tobool3.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %nr_constraints)
  %cmp = icmp sgt i32 %nr_constraints, 10
  %or.cond160 = or i1 %or.cond159, %cmp
  br i1 %or.cond160, label %entry.cleanup_crit_edge, label %lor.lhs.false5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false5:                                   ; preds = %entry
  %get_energy_uj = getelementptr inbounds %struct.powercap_zone_ops, ptr %ops, i32 0, i32 1
  %0 = ptrtoint ptr %get_energy_uj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_energy_uj, align 4
  %tobool6.not = icmp eq ptr %1, null
  br i1 %tobool6.not, label %land.lhs.true, label %lor.lhs.false5.lor.lhs.false8_crit_edge

lor.lhs.false5.lor.lhs.false8_crit_edge:          ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false8

land.lhs.true:                                    ; preds = %lor.lhs.false5
  %get_power_uw = getelementptr inbounds %struct.powercap_zone_ops, ptr %ops, i32 0, i32 4
  %2 = ptrtoint ptr %get_power_uw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_power_uw, align 4
  %tobool7.not = icmp eq ptr %3, null
  br i1 %tobool7.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.lor.lhs.false8_crit_edge

land.lhs.true.lor.lhs.false8_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false8

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false8:                                   ; preds = %land.lhs.true.lor.lhs.false8_crit_edge, %lor.lhs.false5.lor.lhs.false8_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @powercap_cntrl_list_lock, i32 noundef 0) #11
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %lor.lhs.false8
  %.pn.in.i = phi ptr [ @powercap_cntrl_list, %lor.lhs.false8 ], [ %.pn.i, %for.cond.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @powercap_cntrl_list
  %pos.0.i = getelementptr i8, ptr %.pn.i, i32 -1092
  %cmp1.i = icmp eq ptr %pos.0.i, %control_type
  %or.cond.i = or i1 %cmp.not.i, %cmp1.i
  br i1 %or.cond.i, label %control_type_valid.exit, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

control_type_valid.exit:                          ; preds = %for.cond.i
  tail call void @mutex_unlock(ptr noundef nonnull @powercap_cntrl_list_lock) #11
  br i1 %cmp.not.i, label %control_type_valid.exit.cleanup_crit_edge, label %if.end

control_type_valid.exit.cleanup_crit_edge:        ; preds = %control_type_valid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %control_type_valid.exit
  %tobool10.not = icmp eq ptr %power_zone, null
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end
  %release = getelementptr inbounds %struct.powercap_zone_ops, ptr %ops, i32 0, i32 7
  %5 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %release, align 4
  %tobool12.not = icmp eq ptr %6, null
  br i1 %tobool12.not, label %if.then11.cleanup_crit_edge, label %if.end15

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %7 = call ptr @memset(ptr %power_zone, i32 0, i32 1064)
  br label %if.end21

if.else:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 1064) #14
  %tobool17.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool17.not, label %if.else.cleanup_crit_edge, label %if.end20

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end20:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %allocated = getelementptr inbounds %struct.powercap_zone, ptr %call7.i.i, i32 0, i32 13
  %9 = ptrtoint ptr %allocated to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %allocated, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.end15
  %power_zone.addr.0 = phi ptr [ %power_zone, %if.end15 ], [ %call7.i.i, %if.end20 ]
  %ops22 = getelementptr inbounds %struct.powercap_zone, ptr %power_zone.addr.0, i32 0, i32 3
  %10 = ptrtoint ptr %ops22 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %ops, ptr %ops22, align 4
  %control_type_inst = getelementptr inbounds %struct.powercap_zone, ptr %power_zone.addr.0, i32 0, i32 2
  %11 = ptrtoint ptr %control_type_inst to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %control_type, ptr %control_type_inst, align 8
  %tobool23.not = icmp eq ptr %parent, null
  %idr = getelementptr inbounds %struct.powercap_control_type, ptr %control_type, i32 0, i32 1
  %dev28 = getelementptr inbounds %struct.powercap_zone, ptr %parent, i32 0, i32 4
  %idr31 = getelementptr inbounds %struct.powercap_zone, ptr %parent, i32 0, i32 6
  %dev28.sink = select i1 %tobool23.not, ptr %control_type, ptr %dev28
  %idr31.sink = select i1 %tobool23.not, ptr %idr, ptr %idr31
  %12 = getelementptr inbounds %struct.powercap_zone, ptr %power_zone.addr.0, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev28.sink, ptr %12, align 8
  %14 = getelementptr inbounds %struct.powercap_zone, ptr %power_zone.addr.0, i32 0, i32 7
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %idr31.sink, ptr %14, align 8
  %dev34 = getelementptr inbounds %struct.powercap_zone, ptr %power_zone.addr.0, i32 0, i32 4
  %class = getelementptr inbounds %struct.powercap_zone, ptr %power_zone.addr.0, i32 0, i32 4, i32 33
  %16 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @powercap_class, ptr %class, align 4
  %lock = getelementptr inbounds %struct.powercap_control_type, ptr %control_type, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %14, align 8
  %call36 = tail call i32 @idr_alloc(ptr noundef %18, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.end21.err_idr_alloc_crit_edge, label %if.end39

if.end21.err_idr_alloc_crit_edge:                 ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_idr_alloc

if.end39:                                         ; preds = %if.end21
  %19 = ptrtoint ptr %power_zone.addr.0 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call36, ptr %power_zone.addr.0, align 8
  %idr40 = getelementptr inbounds %struct.powercap_zone, ptr %power_zone.addr.0, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %idr40, ptr noundef nonnull @.str.11, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #11
  %xa_flags.i.i.i = getelementptr inbounds %struct.powercap_zone, ptr %power_zone.addr.0, i32 0, i32 6, i32 0, i32 1
  %20 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 67108868, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr inbounds %struct.powercap_zone, ptr %power_zone.addr.0, i32 0, i32 6, i32 0, i32 2
  %21 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %xa_head.i.i.i, align 4
  %idr_base.i.i = getelementptr inbounds %struct.powercap_zone, ptr %power_zone.addr.0, i32 0, i32 6, i32 1
  %22 = ptrtoint ptr %idr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %idr_base.i.i, align 4
  %idr_next.i.i = getelementptr inbounds %struct.powercap_zone, ptr %power_zone.addr.0, i32 0, i32 6, i32 2
  %23 = ptrtoint ptr %idr_next.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %idr_next.i.i, align 4
  %call41 = tail call noalias ptr @kstrdup(ptr noundef nonnull %name, i32 noundef 3264) #11
  %name42 = getelementptr inbounds %struct.powercap_zone, ptr %power_zone.addr.0, i32 0, i32 1
  %24 = ptrtoint ptr %name42 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call41, ptr %name42, align 4
  %tobool44.not = icmp eq ptr %call41, null
  br i1 %tobool44.not, label %if.end39.err_name_alloc_crit_edge, label %if.end46

if.end39.err_name_alloc_crit_edge:                ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_name_alloc

if.end46:                                         ; preds = %if.end39
  %25 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %12, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end46.dev_name.exit_crit_edge

if.end46.dev_name.exit_crit_edge:                 ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %26, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end46.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %30, %if.end.i ], [ %28, %if.end46.dev_name.exit_crit_edge ]
  %31 = ptrtoint ptr %power_zone.addr.0 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %power_zone.addr.0, align 8
  %call52 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev34, ptr noundef nonnull @.str, ptr noundef %retval.0.i, i32 noundef %32) #11
  %33 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nr_constraints, i32 12) #11
  %34 = extractvalue { i32, i1 } %33, 1
  br i1 %34, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !105

kcalloc.exit.thread:                              ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  %constraints209 = getelementptr inbounds %struct.powercap_zone, ptr %power_zone.addr.0, i32 0, i32 14
  %35 = ptrtoint ptr %constraints209 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %constraints209, align 8
  br label %err_const_alloc

if.end7.i.i:                                      ; preds = %dev_name.exit
  %36 = extractvalue { i32, i1 } %33, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %36, i32 noundef 3520) #15
  %constraints = getelementptr inbounds %struct.powercap_zone, ptr %power_zone.addr.0, i32 0, i32 14
  %37 = ptrtoint ptr %constraints to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call8.i.i, ptr %constraints, align 8
  %tobool55.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool55.not, label %if.end7.i.i.err_const_alloc_crit_edge, label %if.end57

if.end7.i.i.err_const_alloc_crit_edge:            ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_const_alloc

if.end57:                                         ; preds = %if.end7.i.i
  %mul = shl nuw i32 %nr_constraints, 3
  %add58 = or i32 %mul, 7
  %38 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add58, i32 4) #11
  %39 = extractvalue { i32, i1 } %38, 1
  br i1 %39, label %kcalloc.exit192.thread, label %if.end7.i.i190, !prof !105

kcalloc.exit192.thread:                           ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  %zone_dev_attrs217 = getelementptr inbounds %struct.powercap_zone, ptr %power_zone.addr.0, i32 0, i32 9
  %40 = ptrtoint ptr %zone_dev_attrs217 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %zone_dev_attrs217, align 8
  br label %err_attr_alloc

if.end7.i.i190:                                   ; preds = %if.end57
  %41 = extractvalue { i32, i1 } %38, 0
  %call8.i.i189 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %41, i32 noundef 3520) #15
  %zone_dev_attrs = getelementptr inbounds %struct.powercap_zone, ptr %power_zone.addr.0, i32 0, i32 9
  %42 = ptrtoint ptr %zone_dev_attrs to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call8.i.i189, ptr %zone_dev_attrs, align 8
  %tobool61.not = icmp eq ptr %call8.i.i189, null
  br i1 %tobool61.not, label %if.end7.i.i190.err_attr_alloc_crit_edge, label %if.end63

if.end7.i.i190.err_attr_alloc_crit_edge:          ; preds = %if.end7.i.i190
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_attr_alloc

if.end63:                                         ; preds = %if.end7.i.i190
  %43 = ptrtoint ptr %call8.i.i189 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @dev_attr_name, ptr %call8.i.i189, align 128
  %44 = ptrtoint ptr %ops22 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops22, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %tobool.not.i193 = icmp eq ptr %47, null
  br i1 %tobool.not.i193, label %if.end63.if.end.i194_crit_edge, label %if.then.i

if.end63.if.end.i194_crit_edge:                   ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i194

if.then.i:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %zone_dev_attrs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %zone_dev_attrs, align 8
  %arrayidx3.i = getelementptr ptr, ptr %49, i32 1
  %50 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @dev_attr_max_energy_range_uj, ptr %arrayidx3.i, align 4
  br label %if.end.i194

if.end.i194:                                      ; preds = %if.then.i, %if.end63.if.end.i194_crit_edge
  %count.0.i = phi i32 [ 2, %if.then.i ], [ 1, %if.end63.if.end.i194_crit_edge ]
  %51 = ptrtoint ptr %ops22 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops22, align 4
  %get_energy_uj.i = getelementptr inbounds %struct.powercap_zone_ops, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %get_energy_uj.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %get_energy_uj.i, align 4
  %tobool5.not.i = icmp eq ptr %54, null
  br i1 %tobool5.not.i, label %if.end.i194.if.end14.i_crit_edge, label %if.then6.i

if.end.i194.if.end14.i_crit_edge:                 ; preds = %if.end.i194
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i

if.then6.i:                                       ; preds = %if.end.i194
  call void @__sanitizer_cov_trace_pc() #13
  %reset_energy_uj.i = getelementptr inbounds %struct.powercap_zone_ops, ptr %52, i32 0, i32 2
  %55 = ptrtoint ptr %reset_energy_uj.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %reset_energy_uj.i, align 4
  %tobool8.not.i = icmp eq ptr %56, null
  %..i = select i1 %tobool8.not.i, i16 256, i16 384
  store i16 %..i, ptr getelementptr inbounds (%struct.device_attribute, ptr @dev_attr_energy_uj, i32 0, i32 0, i32 1), align 4
  %57 = ptrtoint ptr %zone_dev_attrs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %zone_dev_attrs, align 8
  %inc12.i = add nuw nsw i32 %count.0.i, 1
  %arrayidx13.i = getelementptr ptr, ptr %58, i32 %count.0.i
  %59 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @dev_attr_energy_uj, ptr %arrayidx13.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then6.i, %if.end.i194.if.end14.i_crit_edge
  %count.1.i = phi i32 [ %inc12.i, %if.then6.i ], [ %count.0.i, %if.end.i194.if.end14.i_crit_edge ]
  %60 = ptrtoint ptr %ops22 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ops22, align 4
  %get_power_uw.i = getelementptr inbounds %struct.powercap_zone_ops, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %get_power_uw.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %get_power_uw.i, align 4
  %tobool16.not.i = icmp eq ptr %63, null
  br i1 %tobool16.not.i, label %if.end14.i.if.end21.i_crit_edge, label %if.then17.i

if.end14.i.if.end21.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  %64 = ptrtoint ptr %zone_dev_attrs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %zone_dev_attrs, align 8
  %inc19.i = add nuw nsw i32 %count.1.i, 1
  %arrayidx20.i = getelementptr ptr, ptr %65, i32 %count.1.i
  %66 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @dev_attr_power_uw, ptr %arrayidx20.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then17.i, %if.end14.i.if.end21.i_crit_edge
  %count.2.i = phi i32 [ %inc19.i, %if.then17.i ], [ %count.1.i, %if.end14.i.if.end21.i_crit_edge ]
  %67 = ptrtoint ptr %ops22 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ops22, align 4
  %get_max_power_range_uw.i = getelementptr inbounds %struct.powercap_zone_ops, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %get_max_power_range_uw.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %get_max_power_range_uw.i, align 4
  %tobool23.not.i = icmp eq ptr %70, null
  br i1 %tobool23.not.i, label %if.end21.i.create_power_zone_common_attributes.exit_crit_edge, label %if.then24.i

if.end21.i.create_power_zone_common_attributes.exit_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %create_power_zone_common_attributes.exit

if.then24.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  %71 = ptrtoint ptr %zone_dev_attrs to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %zone_dev_attrs, align 8
  %inc26.i = add nuw nsw i32 %count.2.i, 1
  %arrayidx27.i = getelementptr ptr, ptr %72, i32 %count.2.i
  %73 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @dev_attr_max_power_range_uw, ptr %arrayidx27.i, align 4
  br label %create_power_zone_common_attributes.exit

create_power_zone_common_attributes.exit:         ; preds = %if.then24.i, %if.end21.i.create_power_zone_common_attributes.exit_crit_edge
  %count.3.i = phi i32 [ %inc26.i, %if.then24.i ], [ %count.2.i, %if.end21.i.create_power_zone_common_attributes.exit_crit_edge ]
  %74 = ptrtoint ptr %zone_dev_attrs to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %zone_dev_attrs, align 8
  %arrayidx30.i = getelementptr ptr, ptr %75, i32 %count.3.i
  %76 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %arrayidx30.i, align 4
  %zone_attr_count.i = getelementptr inbounds %struct.powercap_zone, ptr %power_zone.addr.0, i32 0, i32 10
  %77 = ptrtoint ptr %zone_attr_count.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %count.3.i, ptr %zone_attr_count.i, align 4
  %tobool1.not.i = icmp eq ptr %const_ops, null
  br i1 %tobool1.not.i, label %create_power_zone_common_attributes.exit.err_dev_ret_crit_edge, label %lor.lhs.false2.i

create_power_zone_common_attributes.exit.err_dev_ret_crit_edge: ; preds = %create_power_zone_common_attributes.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_dev_ret

lor.lhs.false2.i:                                 ; preds = %create_power_zone_common_attributes.exit
  %get_power_limit_uw.i = getelementptr inbounds %struct.powercap_zone_constraint_ops, ptr %const_ops, i32 0, i32 1
  %78 = ptrtoint ptr %get_power_limit_uw.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %get_power_limit_uw.i, align 4
  %tobool3.not.i = icmp eq ptr %79, null
  br i1 %tobool3.not.i, label %lor.lhs.false2.i.err_dev_ret_crit_edge, label %lor.lhs.false4.i

lor.lhs.false2.i.err_dev_ret_crit_edge:           ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_dev_ret

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false2.i
  %80 = ptrtoint ptr %const_ops to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %const_ops, align 4
  %tobool5.not.i197 = icmp eq ptr %81, null
  br i1 %tobool5.not.i197, label %lor.lhs.false4.i.err_dev_ret_crit_edge, label %lor.lhs.false6.i

lor.lhs.false4.i.err_dev_ret_crit_edge:           ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_dev_ret

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false4.i
  %get_time_window_us.i = getelementptr inbounds %struct.powercap_zone_constraint_ops, ptr %const_ops, i32 0, i32 3
  %82 = ptrtoint ptr %get_time_window_us.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %get_time_window_us.i, align 4
  %tobool7.not.i = icmp eq ptr %83, null
  br i1 %tobool7.not.i, label %lor.lhs.false6.i.err_dev_ret_crit_edge, label %lor.lhs.false8.i

lor.lhs.false6.i.err_dev_ret_crit_edge:           ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_dev_ret

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false6.i
  %set_time_window_us.i = getelementptr inbounds %struct.powercap_zone_constraint_ops, ptr %const_ops, i32 0, i32 2
  %84 = ptrtoint ptr %set_time_window_us.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %set_time_window_us.i, align 4
  %tobool9.not.i = icmp eq ptr %85, null
  br i1 %tobool9.not.i, label %lor.lhs.false8.i.err_dev_ret_crit_edge, label %if.end.i199

lor.lhs.false8.i.err_dev_ret_crit_edge:           ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_dev_ret

if.end.i199:                                      ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_constraints)
  %cmp108.i.not = icmp eq i32 %nr_constraints, 0
  br i1 %cmp108.i.not, label %if.end.i199.if.end67_crit_edge, label %for.body.lr.ph.i

if.end.i199.if.end67_crit_edge:                   ; preds = %if.end.i199
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

for.body.lr.ph.i:                                 ; preds = %if.end.i199
  %const_id_cnt.i = getelementptr inbounds %struct.powercap_zone, ptr %power_zone.addr.0, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %count.0115.i = phi i32 [ %count.3.i, %for.body.lr.ph.i ], [ %count.5.i, %for.inc.i.for.body.i_crit_edge ]
  %i.0109.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc64.i, %for.inc.i.for.body.i_crit_edge ]
  %86 = ptrtoint ptr %constraints to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %constraints, align 8
  %arrayidx.i = getelementptr %struct.powercap_zone_constraint, ptr %87, i32 %i.0109.i
  %ops.i201 = getelementptr %struct.powercap_zone_constraint, ptr %87, i32 %i.0109.i, i32 2
  %88 = ptrtoint ptr %ops.i201 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %const_ops, ptr %ops.i201, align 4
  %89 = ptrtoint ptr %const_id_cnt.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %const_id_cnt.i, align 8
  %91 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %arrayidx.i, align 4
  %92 = load i32, ptr %const_id_cnt.i, align 8
  %inc.i = add i32 %92, 1
  store i32 %inc.i, ptr %const_id_cnt.i, align 8
  %arrayidx11.i = getelementptr [10 x %struct.powercap_constraint_attr], ptr @constraint_attrs, i32 0, i32 %i.0109.i
  %93 = ptrtoint ptr %zone_dev_attrs to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %zone_dev_attrs, align 8
  %inc12.i202 = add i32 %count.0115.i, 1
  %arrayidx13.i203 = getelementptr ptr, ptr %94, i32 %count.0115.i
  %95 = ptrtoint ptr %arrayidx13.i203 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %arrayidx11.i, ptr %arrayidx13.i203, align 4
  %time_window_attr.i = getelementptr [10 x %struct.powercap_constraint_attr], ptr @constraint_attrs, i32 0, i32 %i.0109.i, i32 1
  %96 = load ptr, ptr %zone_dev_attrs, align 8
  %inc17.i = add i32 %count.0115.i, 2
  %arrayidx18.i = getelementptr ptr, ptr %96, i32 %inc12.i202
  %97 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %time_window_attr.i, ptr %arrayidx18.i, align 4
  %98 = load ptr, ptr %ops.i201, align 4
  %get_name.i = getelementptr inbounds %struct.powercap_zone_constraint_ops, ptr %98, i32 0, i32 8
  %99 = ptrtoint ptr %get_name.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %get_name.i, align 4
  %tobool20.not.i = icmp eq ptr %100, null
  br i1 %tobool20.not.i, label %for.body.i.if.end27.i_crit_edge, label %if.then21.i

for.body.i.if.end27.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27.i

if.then21.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %name_attr.i = getelementptr [10 x %struct.powercap_constraint_attr], ptr @constraint_attrs, i32 0, i32 %i.0109.i, i32 6
  %101 = ptrtoint ptr %zone_dev_attrs to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %zone_dev_attrs, align 8
  %inc25.i = add i32 %count.0115.i, 3
  %arrayidx26.i = getelementptr ptr, ptr %102, i32 %inc17.i
  %103 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %name_attr.i, ptr %arrayidx26.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then21.i, %for.body.i.if.end27.i_crit_edge
  %count.1.i204 = phi i32 [ %inc25.i, %if.then21.i ], [ %inc17.i, %for.body.i.if.end27.i_crit_edge ]
  %104 = ptrtoint ptr %ops.i201 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ops.i201, align 4
  %get_max_power_uw.i = getelementptr inbounds %struct.powercap_zone_constraint_ops, ptr %105, i32 0, i32 4
  %106 = ptrtoint ptr %get_max_power_uw.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %get_max_power_uw.i, align 4
  %tobool29.not.i = icmp eq ptr %107, null
  br i1 %tobool29.not.i, label %if.end27.i.if.end36.i_crit_edge, label %if.then30.i

if.end27.i.if.end36.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36.i

if.then30.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  %max_power_attr.i = getelementptr [10 x %struct.powercap_constraint_attr], ptr @constraint_attrs, i32 0, i32 %i.0109.i, i32 2
  %108 = ptrtoint ptr %zone_dev_attrs to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %zone_dev_attrs, align 8
  %inc34.i = add i32 %count.1.i204, 1
  %arrayidx35.i = getelementptr ptr, ptr %109, i32 %count.1.i204
  %110 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %max_power_attr.i, ptr %arrayidx35.i, align 4
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then30.i, %if.end27.i.if.end36.i_crit_edge
  %count.2.i205 = phi i32 [ %inc34.i, %if.then30.i ], [ %count.1.i204, %if.end27.i.if.end36.i_crit_edge ]
  %111 = ptrtoint ptr %ops.i201 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ops.i201, align 4
  %get_min_power_uw.i = getelementptr inbounds %struct.powercap_zone_constraint_ops, ptr %112, i32 0, i32 5
  %113 = ptrtoint ptr %get_min_power_uw.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %get_min_power_uw.i, align 4
  %tobool38.not.i = icmp eq ptr %114, null
  br i1 %tobool38.not.i, label %if.end36.i.if.end45.i_crit_edge, label %if.then39.i

if.end36.i.if.end45.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45.i

if.then39.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #13
  %min_power_attr.i = getelementptr [10 x %struct.powercap_constraint_attr], ptr @constraint_attrs, i32 0, i32 %i.0109.i, i32 3
  %115 = ptrtoint ptr %zone_dev_attrs to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %zone_dev_attrs, align 8
  %inc43.i = add i32 %count.2.i205, 1
  %arrayidx44.i = getelementptr ptr, ptr %116, i32 %count.2.i205
  %117 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %min_power_attr.i, ptr %arrayidx44.i, align 4
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then39.i, %if.end36.i.if.end45.i_crit_edge
  %count.3.i206 = phi i32 [ %inc43.i, %if.then39.i ], [ %count.2.i205, %if.end36.i.if.end45.i_crit_edge ]
  %118 = ptrtoint ptr %ops.i201 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ops.i201, align 4
  %get_max_time_window_us.i = getelementptr inbounds %struct.powercap_zone_constraint_ops, ptr %119, i32 0, i32 6
  %120 = ptrtoint ptr %get_max_time_window_us.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %get_max_time_window_us.i, align 4
  %tobool47.not.i = icmp eq ptr %121, null
  br i1 %tobool47.not.i, label %if.end45.i.if.end54.i_crit_edge, label %if.then48.i

if.end45.i.if.end54.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54.i

if.then48.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #13
  %max_time_window_attr.i = getelementptr [10 x %struct.powercap_constraint_attr], ptr @constraint_attrs, i32 0, i32 %i.0109.i, i32 4
  %122 = ptrtoint ptr %zone_dev_attrs to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %zone_dev_attrs, align 8
  %inc52.i = add i32 %count.3.i206, 1
  %arrayidx53.i = getelementptr ptr, ptr %123, i32 %count.3.i206
  %124 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %max_time_window_attr.i, ptr %arrayidx53.i, align 4
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then48.i, %if.end45.i.if.end54.i_crit_edge
  %count.4.i = phi i32 [ %inc52.i, %if.then48.i ], [ %count.3.i206, %if.end45.i.if.end54.i_crit_edge ]
  %125 = ptrtoint ptr %ops.i201 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %ops.i201, align 4
  %get_min_time_window_us.i = getelementptr inbounds %struct.powercap_zone_constraint_ops, ptr %126, i32 0, i32 7
  %127 = ptrtoint ptr %get_min_time_window_us.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %get_min_time_window_us.i, align 4
  %tobool56.not.i = icmp eq ptr %128, null
  br i1 %tobool56.not.i, label %if.end54.i.for.inc.i_crit_edge, label %if.then57.i

if.end54.i.for.inc.i_crit_edge:                   ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then57.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #13
  %min_time_window_attr.i = getelementptr [10 x %struct.powercap_constraint_attr], ptr @constraint_attrs, i32 0, i32 %i.0109.i, i32 5
  %129 = ptrtoint ptr %zone_dev_attrs to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %zone_dev_attrs, align 8
  %inc61.i = add i32 %count.4.i, 1
  %arrayidx62.i = getelementptr ptr, ptr %130, i32 %count.4.i
  %131 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %min_time_window_attr.i, ptr %arrayidx62.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then57.i, %if.end54.i.for.inc.i_crit_edge
  %count.5.i = phi i32 [ %inc61.i, %if.then57.i ], [ %count.4.i, %if.end54.i.for.inc.i_crit_edge ]
  %inc64.i = add nuw nsw i32 %i.0109.i, 1
  %exitcond.not.i = icmp eq i32 %inc64.i, %nr_constraints
  br i1 %exitcond.not.i, label %for.inc.i.if.end67_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.if.end67_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

if.end67:                                         ; preds = %for.inc.i.if.end67_crit_edge, %if.end.i199.if.end67_crit_edge
  %count.0.lcssa.i = phi i32 [ %count.3.i, %if.end.i199.if.end67_crit_edge ], [ %count.5.i, %for.inc.i.if.end67_crit_edge ]
  %132 = ptrtoint ptr %zone_attr_count.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %count.0.lcssa.i, ptr %zone_attr_count.i, align 4
  %133 = ptrtoint ptr %zone_dev_attrs to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %zone_dev_attrs, align 8
  %arrayidx = getelementptr ptr, ptr %134, i32 %count.0.lcssa.i
  %135 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr null, ptr %arrayidx, align 4
  %136 = load ptr, ptr %zone_dev_attrs, align 8
  %dev_zone_attr_group = getelementptr inbounds %struct.powercap_zone, ptr %power_zone.addr.0, i32 0, i32 11
  %attrs = getelementptr inbounds %struct.powercap_zone, ptr %power_zone.addr.0, i32 0, i32 11, i32 3
  %137 = ptrtoint ptr %attrs to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %136, ptr %attrs, align 4
  %dev_attr_groups = getelementptr inbounds %struct.powercap_zone, ptr %power_zone.addr.0, i32 0, i32 12
  %138 = ptrtoint ptr %dev_attr_groups to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %dev_zone_attr_group, ptr %dev_attr_groups, align 4
  %arrayidx73 = getelementptr %struct.powercap_zone, ptr %power_zone.addr.0, i32 0, i32 12, i32 1
  %139 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr null, ptr %arrayidx73, align 4
  %groups = getelementptr inbounds %struct.powercap_zone, ptr %power_zone.addr.0, i32 0, i32 4, i32 34
  %140 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %dev_attr_groups, ptr %groups, align 8
  %call77 = tail call i32 @device_register(ptr noundef %dev34) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %if.end67.err_dev_ret_crit_edge

if.end67.err_dev_ret_crit_edge:                   ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_dev_ret

if.end80:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  %nr_zones = getelementptr inbounds %struct.powercap_control_type, ptr %control_type, i32 0, i32 2
  %141 = ptrtoint ptr %nr_zones to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %nr_zones, align 4
  %inc = add i32 %142, 1
  store i32 %inc, ptr %nr_zones, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #11
  br label %cleanup

err_dev_ret:                                      ; preds = %if.end67.err_dev_ret_crit_edge, %lor.lhs.false8.i.err_dev_ret_crit_edge, %lor.lhs.false6.i.err_dev_ret_crit_edge, %lor.lhs.false4.i.err_dev_ret_crit_edge, %lor.lhs.false2.i.err_dev_ret_crit_edge, %create_power_zone_common_attributes.exit.err_dev_ret_crit_edge
  %result.0 = phi i32 [ %call77, %if.end67.err_dev_ret_crit_edge ], [ -22, %lor.lhs.false8.i.err_dev_ret_crit_edge ], [ -22, %lor.lhs.false6.i.err_dev_ret_crit_edge ], [ -22, %lor.lhs.false4.i.err_dev_ret_crit_edge ], [ -22, %lor.lhs.false2.i.err_dev_ret_crit_edge ], [ -22, %create_power_zone_common_attributes.exit.err_dev_ret_crit_edge ]
  %143 = ptrtoint ptr %zone_dev_attrs to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %zone_dev_attrs, align 8
  tail call void @kfree(ptr noundef %144) #11
  br label %err_attr_alloc

err_attr_alloc:                                   ; preds = %err_dev_ret, %if.end7.i.i190.err_attr_alloc_crit_edge, %kcalloc.exit192.thread
  %result.1 = phi i32 [ %result.0, %err_dev_ret ], [ -12, %if.end7.i.i190.err_attr_alloc_crit_edge ], [ -12, %kcalloc.exit192.thread ]
  %145 = ptrtoint ptr %constraints to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %constraints, align 8
  tail call void @kfree(ptr noundef %146) #11
  br label %err_const_alloc

err_const_alloc:                                  ; preds = %err_attr_alloc, %if.end7.i.i.err_const_alloc_crit_edge, %kcalloc.exit.thread
  %result.2 = phi i32 [ %result.1, %err_attr_alloc ], [ -12, %if.end7.i.i.err_const_alloc_crit_edge ], [ -12, %kcalloc.exit.thread ]
  %147 = ptrtoint ptr %name42 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %name42, align 4
  tail call void @kfree(ptr noundef %148) #11
  br label %err_name_alloc

err_name_alloc:                                   ; preds = %err_const_alloc, %if.end39.err_name_alloc_crit_edge
  %result.3 = phi i32 [ %result.2, %err_const_alloc ], [ -12, %if.end39.err_name_alloc_crit_edge ]
  %149 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %14, align 8
  %151 = ptrtoint ptr %power_zone.addr.0 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %power_zone.addr.0, align 8
  %call87 = tail call ptr @idr_remove(ptr noundef %150, i32 noundef %152) #11
  br label %err_idr_alloc

err_idr_alloc:                                    ; preds = %err_name_alloc, %if.end21.err_idr_alloc_crit_edge
  %result.4 = phi i32 [ %call36, %if.end21.err_idr_alloc_crit_edge ], [ %result.3, %err_name_alloc ]
  %allocated88 = getelementptr inbounds %struct.powercap_zone, ptr %power_zone.addr.0, i32 0, i32 13
  %153 = ptrtoint ptr %allocated88 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %allocated88, align 4, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %tobool89.not = icmp eq i8 %154, 0
  br i1 %tobool89.not, label %err_idr_alloc.if.end91_crit_edge, label %if.then90

err_idr_alloc.if.end91_crit_edge:                 ; preds = %err_idr_alloc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91

if.then90:                                        ; preds = %err_idr_alloc
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %power_zone.addr.0) #11
  br label %if.end91

if.end91:                                         ; preds = %if.then90, %err_idr_alloc.if.end91_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #11
  %155 = inttoptr i32 %result.4 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.end91, %if.end80, %if.else.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %control_type_valid.exit.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %155, %if.end91 ], [ %power_zone.addr.0, %if.end80 ], [ inttoptr (i32 -22 to ptr), %control_type_valid.exit.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then11.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.else.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @powercap_unregister_zone(ptr noundef %control_type, ptr noundef %power_zone) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %power_zone, null
  %tobool1.not = icmp eq ptr %control_type, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %lock = getelementptr inbounds %struct.powercap_control_type, ptr %control_type, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %nr_zones = getelementptr inbounds %struct.powercap_control_type, ptr %control_type, i32 0, i32 2
  %0 = ptrtoint ptr %nr_zones to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_zones, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %nr_zones, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #11
  %dev = getelementptr inbounds %struct.powercap_zone, ptr %power_zone, i32 0, i32 4
  tail call void @device_unregister(ptr noundef %dev) #11
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @powercap_register_control_type(ptr noundef %control_type, ptr noundef %name, ptr noundef %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %name, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %control_type, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %tobool3.not = icmp eq ptr %ops, null
  br i1 %tobool3.not, label %if.then2.cleanup_crit_edge, label %lor.lhs.false

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then2
  %release = getelementptr inbounds %struct.powercap_control_type_ops, ptr %ops, i32 0, i32 2
  %0 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %release, align 4
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %2 = call ptr @memset(ptr %control_type, i32 0, i32 1104)
  br label %do.body

if.else:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 1104) #14
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %if.else.cleanup_crit_edge, label %if.end12

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %allocated = getelementptr inbounds %struct.powercap_control_type, ptr %call7.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %allocated to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %allocated, align 8
  br label %do.body

do.body:                                          ; preds = %if.end12, %if.end7
  %control_type.addr.0 = phi ptr [ %control_type, %if.end7 ], [ %call7.i.i, %if.end12 ]
  %lock = getelementptr inbounds %struct.powercap_control_type, ptr %control_type.addr.0, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @powercap_register_control_type.__key) #11
  %ops14 = getelementptr inbounds %struct.powercap_control_type, ptr %control_type.addr.0, i32 0, i32 3
  %5 = ptrtoint ptr %ops14 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ops, ptr %ops14, align 8
  %node = getelementptr inbounds %struct.powercap_control_type, ptr %control_type.addr.0, i32 0, i32 6
  %6 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %node, ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.powercap_control_type, ptr %control_type.addr.0, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %node, ptr %prev.i, align 4
  %class = getelementptr inbounds %struct.device, ptr %control_type.addr.0, i32 0, i32 33
  %8 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @powercap_class, ptr %class, align 4
  %call16 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %control_type.addr.0, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #11
  %call18 = tail call i32 @device_register(ptr noundef nonnull %control_type.addr.0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end26, label %if.then20

if.then20:                                        ; preds = %do.body
  %allocated21 = getelementptr inbounds %struct.powercap_control_type, ptr %control_type.addr.0, i32 0, i32 5
  %9 = ptrtoint ptr %allocated21 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %allocated21, align 8, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool22.not = icmp eq i8 %10, 0
  br i1 %tobool22.not, label %if.then20.if.end24_crit_edge, label %if.then23

if.then20.if.end24_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then23:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %control_type.addr.0) #11
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.then20.if.end24_crit_edge
  %11 = inttoptr i32 %call18 to ptr
  br label %cleanup

if.end26:                                         ; preds = %do.body
  %idr = getelementptr inbounds %struct.powercap_control_type, ptr %control_type.addr.0, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %idr, ptr noundef nonnull @.str.11, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #11
  %xa_flags.i.i.i = getelementptr inbounds %struct.powercap_control_type, ptr %control_type.addr.0, i32 0, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 67108868, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr inbounds %struct.powercap_control_type, ptr %control_type.addr.0, i32 0, i32 1, i32 0, i32 2
  %13 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %xa_head.i.i.i, align 4
  %idr_base.i.i = getelementptr inbounds %struct.powercap_control_type, ptr %control_type.addr.0, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %idr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %idr_base.i.i, align 4
  %idr_next.i.i = getelementptr inbounds %struct.powercap_control_type, ptr %control_type.addr.0, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %idr_next.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %idr_next.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @powercap_cntrl_list_lock, i32 noundef 0) #11
  %16 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @powercap_cntrl_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %16, ptr noundef nonnull @powercap_cntrl_list) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end26.list_add_tail.exit_crit_edge

if.end26.list_add_tail.exit_crit_edge:            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %node, ptr getelementptr inbounds (%struct.list_head, ptr @powercap_cntrl_list, i32 0, i32 1), align 4
  %17 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @powercap_cntrl_list, ptr %node, align 4
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %16, ptr %prev.i, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %node, ptr %16, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end26.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @powercap_cntrl_list_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.end24, %if.else.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %11, %if.end24 ], [ %control_type.addr.0, %list_add_tail.exit ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then2.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.else.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @powercap_unregister_control_type(ptr noundef %control_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_zones = getelementptr inbounds %struct.powercap_control_type, ptr %control_type, i32 0, i32 2
  %0 = ptrtoint ptr %nr_zones to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_zones, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %control_type, ptr noundef nonnull @.str.3) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @powercap_cntrl_list_lock, i32 noundef 0) #11
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %.pn.in = phi ptr [ @powercap_cntrl_list, %if.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @powercap_cntrl_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %pos.0 = getelementptr i8, ptr %.pn, i32 -1092
  %cmp1 = icmp eq ptr %pos.0, %control_type
  br i1 %cmp1, label %if.then2, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

if.then2:                                         ; preds = %for.body
  %node3 = getelementptr inbounds %struct.powercap_control_type, ptr %control_type, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node3) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then2.list_del.exit_crit_edge

if.then2.list_del.exit_crit_edge:                 ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.powercap_control_type, ptr %control_type, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %node3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %node3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then2.list_del.exit_crit_edge
  %9 = ptrtoint ptr %node3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %node3, align 4
  %prev.i = getelementptr inbounds %struct.powercap_control_type, ptr %control_type, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @powercap_cntrl_list_lock) #11
  tail call void @device_unregister(ptr noundef %control_type) #11
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef nonnull @powercap_cntrl_list_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end, %list_del.exit, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %list_del.exit ], [ -19, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @powercap_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.0117.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [10 x %struct.powercap_constraint_attr], ptr @constraint_attrs, i32 0, i32 %i.0117.i
  %call.i.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.27, i32 noundef %i.0117.i, ptr noundef nonnull @.str.21) #11
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i.i, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %for.body.i.for.body.i.i.preheader_crit_edge, label %if.end.i

for.body.i.for.body.i.i.preheader_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.preheader

for.body.i.i.preheader:                           ; preds = %if.end25.i.for.body.i.i.preheader_crit_edge, %if.end20.i.for.body.i.i.preheader_crit_edge, %if.end15.i.for.body.i.i.preheader_crit_edge, %if.end10.i.for.body.i.i.preheader_crit_edge, %if.end5.i.for.body.i.i.preheader_crit_edge, %if.end.i.for.body.i.i.preheader_crit_edge, %for.body.i.for.body.i.i.preheader_crit_edge
  br label %for.body.i.i

if.end.i:                                         ; preds = %for.body.i
  %mode5.i.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i, i32 0, i32 1
  %1 = ptrtoint ptr %mode5.i.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 420, ptr %mode5.i.i, align 4
  %show6.i.i = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i, i32 0, i32 1
  %2 = ptrtoint ptr %show6.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @show_constraint_power_limit_uw, ptr %show6.i.i, align 4
  %store7.i.i = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i, i32 0, i32 2
  %3 = ptrtoint ptr %store7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @store_constraint_power_limit_uw, ptr %store7.i.i, align 4
  %time_window_attr.i = getelementptr [10 x %struct.powercap_constraint_attr], ptr @constraint_attrs, i32 0, i32 %i.0117.i, i32 1
  %call.i54.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.27, i32 noundef %i.0117.i, ptr noundef nonnull @.str.22) #11
  %4 = ptrtoint ptr %time_window_attr.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i54.i, ptr %time_window_attr.i, align 4
  %tobool.not.i55.i = icmp eq ptr %call.i54.i, null
  br i1 %tobool.not.i55.i, label %if.end.i.for.body.i.i.preheader_crit_edge, label %if.end5.i

if.end.i.for.body.i.i.preheader_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.preheader

if.end5.i:                                        ; preds = %if.end.i
  %mode5.i56.i = getelementptr inbounds %struct.attribute, ptr %time_window_attr.i, i32 0, i32 1
  %5 = ptrtoint ptr %mode5.i56.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 420, ptr %mode5.i56.i, align 4
  %show6.i57.i = getelementptr [10 x %struct.powercap_constraint_attr], ptr @constraint_attrs, i32 0, i32 %i.0117.i, i32 1, i32 1
  %6 = ptrtoint ptr %show6.i57.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @show_constraint_time_window_us, ptr %show6.i57.i, align 4
  %store7.i58.i = getelementptr [10 x %struct.powercap_constraint_attr], ptr @constraint_attrs, i32 0, i32 %i.0117.i, i32 1, i32 2
  %7 = ptrtoint ptr %store7.i58.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @store_constraint_time_window_us, ptr %store7.i58.i, align 4
  %name_attr.i = getelementptr [10 x %struct.powercap_constraint_attr], ptr @constraint_attrs, i32 0, i32 %i.0117.i, i32 6
  %call.i62.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.27, i32 noundef %i.0117.i, ptr noundef nonnull @.str.12) #11
  %8 = ptrtoint ptr %name_attr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i62.i, ptr %name_attr.i, align 4
  %tobool.not.i63.i = icmp eq ptr %call.i62.i, null
  br i1 %tobool.not.i63.i, label %if.end5.i.for.body.i.i.preheader_crit_edge, label %if.end10.i

if.end5.i.for.body.i.i.preheader_crit_edge:       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.preheader

if.end10.i:                                       ; preds = %if.end5.i
  %mode5.i64.i = getelementptr inbounds %struct.attribute, ptr %name_attr.i, i32 0, i32 1
  %9 = ptrtoint ptr %mode5.i64.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 292, ptr %mode5.i64.i, align 4
  %show6.i65.i = getelementptr [10 x %struct.powercap_constraint_attr], ptr @constraint_attrs, i32 0, i32 %i.0117.i, i32 6, i32 1
  %10 = ptrtoint ptr %show6.i65.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @show_constraint_name, ptr %show6.i65.i, align 4
  %store7.i66.i = getelementptr [10 x %struct.powercap_constraint_attr], ptr @constraint_attrs, i32 0, i32 %i.0117.i, i32 6, i32 2
  %11 = ptrtoint ptr %store7.i66.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %store7.i66.i, align 4
  %max_power_attr.i = getelementptr [10 x %struct.powercap_constraint_attr], ptr @constraint_attrs, i32 0, i32 %i.0117.i, i32 2
  %call.i70.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.27, i32 noundef %i.0117.i, ptr noundef nonnull @.str.23) #11
  %12 = ptrtoint ptr %max_power_attr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i70.i, ptr %max_power_attr.i, align 4
  %tobool.not.i71.i = icmp eq ptr %call.i70.i, null
  br i1 %tobool.not.i71.i, label %if.end10.i.for.body.i.i.preheader_crit_edge, label %if.end15.i

if.end10.i.for.body.i.i.preheader_crit_edge:      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.preheader

if.end15.i:                                       ; preds = %if.end10.i
  %mode5.i72.i = getelementptr inbounds %struct.attribute, ptr %max_power_attr.i, i32 0, i32 1
  %13 = ptrtoint ptr %mode5.i72.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 292, ptr %mode5.i72.i, align 4
  %show6.i73.i = getelementptr [10 x %struct.powercap_constraint_attr], ptr @constraint_attrs, i32 0, i32 %i.0117.i, i32 2, i32 1
  %14 = ptrtoint ptr %show6.i73.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @show_constraint_max_power_uw, ptr %show6.i73.i, align 4
  %store7.i74.i = getelementptr [10 x %struct.powercap_constraint_attr], ptr @constraint_attrs, i32 0, i32 %i.0117.i, i32 2, i32 2
  %15 = ptrtoint ptr %store7.i74.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %store7.i74.i, align 4
  %min_power_attr.i = getelementptr [10 x %struct.powercap_constraint_attr], ptr @constraint_attrs, i32 0, i32 %i.0117.i, i32 3
  %call.i78.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.27, i32 noundef %i.0117.i, ptr noundef nonnull @.str.24) #11
  %16 = ptrtoint ptr %min_power_attr.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i78.i, ptr %min_power_attr.i, align 4
  %tobool.not.i79.i = icmp eq ptr %call.i78.i, null
  br i1 %tobool.not.i79.i, label %if.end15.i.for.body.i.i.preheader_crit_edge, label %if.end20.i

if.end15.i.for.body.i.i.preheader_crit_edge:      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.preheader

if.end20.i:                                       ; preds = %if.end15.i
  %mode5.i80.i = getelementptr inbounds %struct.attribute, ptr %min_power_attr.i, i32 0, i32 1
  %17 = ptrtoint ptr %mode5.i80.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 292, ptr %mode5.i80.i, align 4
  %show6.i81.i = getelementptr [10 x %struct.powercap_constraint_attr], ptr @constraint_attrs, i32 0, i32 %i.0117.i, i32 3, i32 1
  %18 = ptrtoint ptr %show6.i81.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @show_constraint_min_power_uw, ptr %show6.i81.i, align 4
  %store7.i82.i = getelementptr [10 x %struct.powercap_constraint_attr], ptr @constraint_attrs, i32 0, i32 %i.0117.i, i32 3, i32 2
  %19 = ptrtoint ptr %store7.i82.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %store7.i82.i, align 4
  %max_time_window_attr.i = getelementptr [10 x %struct.powercap_constraint_attr], ptr @constraint_attrs, i32 0, i32 %i.0117.i, i32 4
  %call.i86.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.27, i32 noundef %i.0117.i, ptr noundef nonnull @.str.25) #11
  %20 = ptrtoint ptr %max_time_window_attr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i86.i, ptr %max_time_window_attr.i, align 4
  %tobool.not.i87.i = icmp eq ptr %call.i86.i, null
  br i1 %tobool.not.i87.i, label %if.end20.i.for.body.i.i.preheader_crit_edge, label %if.end25.i

if.end20.i.for.body.i.i.preheader_crit_edge:      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.preheader

if.end25.i:                                       ; preds = %if.end20.i
  %mode5.i88.i = getelementptr inbounds %struct.attribute, ptr %max_time_window_attr.i, i32 0, i32 1
  %21 = ptrtoint ptr %mode5.i88.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 292, ptr %mode5.i88.i, align 4
  %show6.i89.i = getelementptr [10 x %struct.powercap_constraint_attr], ptr @constraint_attrs, i32 0, i32 %i.0117.i, i32 4, i32 1
  %22 = ptrtoint ptr %show6.i89.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @show_constraint_max_time_window_us, ptr %show6.i89.i, align 4
  %store7.i90.i = getelementptr [10 x %struct.powercap_constraint_attr], ptr @constraint_attrs, i32 0, i32 %i.0117.i, i32 4, i32 2
  %23 = ptrtoint ptr %store7.i90.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %store7.i90.i, align 4
  %min_time_window_attr.i = getelementptr [10 x %struct.powercap_constraint_attr], ptr @constraint_attrs, i32 0, i32 %i.0117.i, i32 5
  %call.i94.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.27, i32 noundef %i.0117.i, ptr noundef nonnull @.str.26) #11
  %24 = ptrtoint ptr %min_time_window_attr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i94.i, ptr %min_time_window_attr.i, align 4
  %tobool.not.i95.i = icmp eq ptr %call.i94.i, null
  br i1 %tobool.not.i95.i, label %if.end25.i.for.body.i.i.preheader_crit_edge, label %for.inc.i

if.end25.i.for.body.i.i.preheader_crit_edge:      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.preheader

for.inc.i:                                        ; preds = %if.end25.i
  %mode5.i96.i = getelementptr inbounds %struct.attribute, ptr %min_time_window_attr.i, i32 0, i32 1
  %25 = ptrtoint ptr %mode5.i96.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 292, ptr %mode5.i96.i, align 4
  %show6.i97.i = getelementptr [10 x %struct.powercap_constraint_attr], ptr @constraint_attrs, i32 0, i32 %i.0117.i, i32 5, i32 1
  %26 = ptrtoint ptr %show6.i97.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @show_constraint_min_time_window_us, ptr %show6.i97.i, align 4
  %store7.i98.i = getelementptr [10 x %struct.powercap_constraint_attr], ptr @constraint_attrs, i32 0, i32 %i.0117.i, i32 5, i32 2
  %27 = ptrtoint ptr %store7.i98.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %store7.i98.i, align 4
  %inc.i = add nuw nsw i32 %i.0117.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %if.end, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.i.i.preheader
  %i.027.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.i.preheader ]
  %arrayidx.i.i = getelementptr [10 x %struct.powercap_constraint_attr], ptr @constraint_attrs, i32 0, i32 %i.027.i.i
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void @kfree(ptr noundef %29) #11
  %time_window_attr.i.i = getelementptr [10 x %struct.powercap_constraint_attr], ptr @constraint_attrs, i32 0, i32 %i.027.i.i, i32 1
  %30 = ptrtoint ptr %time_window_attr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %time_window_attr.i.i, align 4
  tail call void @kfree(ptr noundef %31) #11
  %name_attr.i.i = getelementptr [10 x %struct.powercap_constraint_attr], ptr @constraint_attrs, i32 0, i32 %i.027.i.i, i32 6
  %32 = ptrtoint ptr %name_attr.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %name_attr.i.i, align 4
  tail call void @kfree(ptr noundef %33) #11
  %max_power_attr.i.i = getelementptr [10 x %struct.powercap_constraint_attr], ptr @constraint_attrs, i32 0, i32 %i.027.i.i, i32 2
  %34 = ptrtoint ptr %max_power_attr.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %max_power_attr.i.i, align 4
  tail call void @kfree(ptr noundef %35) #11
  %min_power_attr.i.i = getelementptr [10 x %struct.powercap_constraint_attr], ptr @constraint_attrs, i32 0, i32 %i.027.i.i, i32 3
  %36 = ptrtoint ptr %min_power_attr.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %min_power_attr.i.i, align 4
  tail call void @kfree(ptr noundef %37) #11
  %max_time_window_attr.i.i = getelementptr [10 x %struct.powercap_constraint_attr], ptr @constraint_attrs, i32 0, i32 %i.027.i.i, i32 4
  %38 = ptrtoint ptr %max_time_window_attr.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %max_time_window_attr.i.i, align 4
  tail call void @kfree(ptr noundef %39) #11
  %min_time_window_attr.i.i = getelementptr [10 x %struct.powercap_constraint_attr], ptr @constraint_attrs, i32 0, i32 %i.027.i.i, i32 5
  %40 = ptrtoint ptr %min_time_window_attr.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %min_time_window_attr.i.i, align 4
  tail call void @kfree(ptr noundef %41) #11
  %inc.i.i = add nuw nsw i32 %i.027.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 10
  br i1 %exitcond.not.i.i, label %for.body.i.i.cleanup_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.body.i.i.cleanup_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 @__class_register(ptr noundef nonnull @powercap_class, ptr noundef nonnull @powercap_init.__key) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -12, %for.body.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @powercap_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %allocated1 = getelementptr i8, ptr %dev, i32 1036
  %2 = ptrtoint ptr %allocated1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %allocated1, align 4, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  %parent_idr = getelementptr i8, ptr %dev, i32 992
  %4 = ptrtoint ptr %parent_idr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent_idr, align 8
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr, align 8
  %call = tail call ptr @idr_remove(ptr noundef %5, i32 noundef %7) #11
  %idr = getelementptr i8, ptr %dev, i32 932
  tail call void @idr_destroy(ptr noundef %idr) #11
  %name = getelementptr i8, ptr %dev, i32 -12
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  tail call void @kfree(ptr noundef %9) #11
  %zone_dev_attrs = getelementptr i8, ptr %dev, i32 1000
  %10 = ptrtoint ptr %zone_dev_attrs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %zone_dev_attrs, align 8
  tail call void @kfree(ptr noundef %11) #11
  %constraints = getelementptr i8, ptr %dev, i32 1040
  %12 = ptrtoint ptr %constraints to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %constraints, align 8
  tail call void @kfree(ptr noundef %13) #11
  %ops = getelementptr i8, ptr %dev, i32 -4
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %release = getelementptr inbounds %struct.powercap_zone_ops, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %release, align 4
  %tobool3.not = icmp eq ptr %17, null
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call i32 %17(ptr noundef %add.ptr) #11
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  br i1 %tobool2.not, label %if.end.if.end31_crit_edge, label %if.end.if.end31.sink.split_crit_edge

if.end.if.end31.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.sink.split

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.else:                                          ; preds = %entry
  %allocated14 = getelementptr inbounds %struct.powercap_control_type, ptr %dev, i32 0, i32 5
  %18 = ptrtoint ptr %allocated14 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %allocated14, align 8, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool15.not = icmp eq i8 %19, 0
  %idr17 = getelementptr inbounds %struct.powercap_control_type, ptr %dev, i32 0, i32 1
  tail call void @idr_destroy(ptr noundef %idr17) #11
  %lock = getelementptr inbounds %struct.powercap_control_type, ptr %dev, i32 0, i32 4
  tail call void @mutex_destroy(ptr noundef %lock) #11
  %ops18 = getelementptr inbounds %struct.powercap_control_type, ptr %dev, i32 0, i32 3
  %20 = ptrtoint ptr %ops18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops18, align 8
  %tobool19.not = icmp eq ptr %21, null
  br i1 %tobool19.not, label %if.else.if.end27_crit_edge, label %land.lhs.true

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

land.lhs.true:                                    ; preds = %if.else
  %release21 = getelementptr inbounds %struct.powercap_control_type_ops, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %release21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %release21, align 4
  %tobool22.not = icmp eq ptr %23, null
  br i1 %tobool22.not, label %land.lhs.true.if.end27_crit_edge, label %if.then23

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call26 = tail call i32 %23(ptr noundef %dev) #11
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %land.lhs.true.if.end27_crit_edge, %if.else.if.end27_crit_edge
  br i1 %tobool15.not, label %if.end27.if.end31_crit_edge, label %if.end27.if.end31.sink.split_crit_edge

if.end27.if.end31.sink.split_crit_edge:           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.sink.split

if.end27.if.end31_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.end31.sink.split:                              ; preds = %if.end27.if.end31.sink.split_crit_edge, %if.end.if.end31.sink.split_crit_edge
  %dev.sink = phi ptr [ %add.ptr, %if.end.if.end31.sink.split_crit_edge ], [ %dev, %if.end27.if.end31.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef %dev.sink) #11
  br label %if.end31

if.end31:                                         ; preds = %if.end31.sink.split, %if.end27.if.end31_crit_edge, %if.end.if.end31_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enabled_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %mode = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mode) #11
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %mode, align 1
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %ops = getelementptr i8, ptr %dev, i32 -4
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %get_enable = getelementptr inbounds %struct.powercap_zone_ops, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %get_enable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_enable, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %if.then.if.end24_crit_edge, label %if.then2

if.then.if.end24_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then2:                                         ; preds = %if.then
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %call = call i32 %6(ptr noundef %add.ptr, ptr noundef nonnull %mode) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.then2.if.end24_crit_edge, label %if.then6

if.then2.if.end24_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then6:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %mode, align 1
  br label %if.end24

if.else:                                          ; preds = %entry
  %ops11 = getelementptr inbounds %struct.powercap_control_type, ptr %dev, i32 0, i32 3
  %8 = ptrtoint ptr %ops11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops11, align 8
  %tobool12.not = icmp eq ptr %9, null
  br i1 %tobool12.not, label %if.else.if.end24_crit_edge, label %land.lhs.true

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

land.lhs.true:                                    ; preds = %if.else
  %get_enable14 = getelementptr inbounds %struct.powercap_control_type_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %get_enable14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_enable14, align 4
  %tobool15.not = icmp eq ptr %11, null
  br i1 %tobool15.not, label %land.lhs.true.if.end24_crit_edge, label %if.then16

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then16:                                        ; preds = %land.lhs.true
  %call19 = call i32 %11(ptr noundef %dev, ptr noundef nonnull %mode) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then16.if.end24_crit_edge, label %if.then21

if.then16.if.end24_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then21:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %mode, align 1
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.then16.if.end24_crit_edge, %land.lhs.true.if.end24_crit_edge, %if.else.if.end24_crit_edge, %if.then6, %if.then2.if.end24_crit_edge, %if.then.if.end24_crit_edge
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mode, align 1, !range !106
  %15 = zext i8 %14 to i32
  %call26 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.10, i32 noundef %15)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mode) #11
  ret i32 %call26
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enabled_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %mode = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mode) #11
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %mode, align 1, !annotation !107
  %call.i = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %mode) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup34_crit_edge

entry.cleanup34_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup34

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %ops = getelementptr i8, ptr %dev, i32 -4
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %set_enable = getelementptr inbounds %struct.powercap_zone_ops, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %set_enable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set_enable, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %if.then2.if.end12_crit_edge, label %if.then4

if.then2.if.end12_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then4:                                         ; preds = %if.then2
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mode, align 1, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool7 = icmp ne i8 %8, 0
  %call8 = call i32 %6(ptr noundef %add.ptr, i1 noundef zeroext %tobool7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then4.cleanup34_crit_edge, label %if.then4.if.end12_crit_edge

if.then4.if.end12_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then4.cleanup34_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup34

if.end12:                                         ; preds = %if.then4.if.end12_crit_edge, %if.then2.if.end12_crit_edge
  br label %cleanup34

if.else:                                          ; preds = %if.end
  %ops16 = getelementptr inbounds %struct.powercap_control_type, ptr %dev, i32 0, i32 3
  %9 = ptrtoint ptr %ops16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops16, align 8
  %tobool17.not = icmp eq ptr %10, null
  br i1 %tobool17.not, label %if.else.if.end29_crit_edge, label %land.lhs.true

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

land.lhs.true:                                    ; preds = %if.else
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool20.not = icmp eq ptr %12, null
  br i1 %tobool20.not, label %land.lhs.true.if.end29_crit_edge, label %if.then21

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then21:                                        ; preds = %land.lhs.true
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mode, align 1, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool24 = icmp ne i8 %14, 0
  %call25 = call i32 %12(ptr noundef %dev, i1 noundef zeroext %tobool24) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then21.cleanup34_crit_edge, label %if.then21.if.end29_crit_edge

if.then21.if.end29_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then21.cleanup34_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup34

if.end29:                                         ; preds = %if.then21.if.end29_crit_edge, %land.lhs.true.if.end29_crit_edge, %if.else.if.end29_crit_edge
  br label %cleanup34

cleanup34:                                        ; preds = %if.end29, %if.then21.cleanup34_crit_edge, %if.end12, %if.then4.cleanup34_crit_edge, %entry.cleanup34_crit_edge
  %retval.2 = phi i32 [ -22, %entry.cleanup34_crit_edge ], [ %len, %if.then4.cleanup34_crit_edge ], [ %len, %if.then21.cleanup34_crit_edge ], [ -38, %if.end29 ], [ -38, %if.end12 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mode) #11
  ret i32 %retval.2
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @name_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr i8, ptr %dev, i32 -12
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.13, ptr noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_energy_range_uj_show(ptr noundef %dev, ptr nocapture noundef readnone %dev_attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %value = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value) #11
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %value, align 8, !annotation !107
  %ops = getelementptr i8, ptr %dev, i32 -4
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %call = call i32 %4(ptr noundef %add.ptr, ptr noundef nonnull %value) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then4, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %value, align 8
  %call5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i64 noundef %6)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %len.0 = phi i32 [ -22, %if.then.if.end6_crit_edge ], [ %call5, %if.then4 ], [ -22, %entry.if.end6_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value) #11
  ret i32 %len.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @energy_uj_show(ptr noundef %dev, ptr nocapture noundef readnone %dev_attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %value = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value) #11
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %value, align 8, !annotation !107
  %ops = getelementptr i8, ptr %dev, i32 -4
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops, align 4
  %get_energy_uj = getelementptr inbounds %struct.powercap_zone_ops, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %get_energy_uj to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_energy_uj, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %call = call i32 %4(ptr noundef %add.ptr, ptr noundef nonnull %value) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then4, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %value, align 8
  %call5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i64 noundef %6)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %len.0 = phi i32 [ -22, %if.then.if.end6_crit_edge ], [ %call5, %if.then4 ], [ -22, %entry.if.end6_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value) #11
  ret i32 %len.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @energy_uj_store(ptr noundef %dev, ptr nocapture noundef readnone %dev_attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value) #11
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %value, align 8, !annotation !107
  %call = call i32 @kstrtoull(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %tobool1.not = icmp eq i64 %2, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %ops = getelementptr i8, ptr %dev, i32 -4
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %reset_energy_uj = getelementptr inbounds %struct.powercap_zone_ops, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %reset_energy_uj to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reset_energy_uj, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %if.end3.if.end12_crit_edge, label %if.then5

if.end3.if.end12_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then5:                                         ; preds = %if.end3
  %call8 = call i32 %6(ptr noundef %add.ptr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then5.cleanup_crit_edge, label %if.then5.if.end12_crit_edge

if.then5.if.end12_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %if.then5.if.end12_crit_edge, %if.end3.if.end12_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end12 ], [ -22, %entry.cleanup_crit_edge ], [ %count, %if.end.cleanup_crit_edge ], [ %count, %if.then5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @power_uw_show(ptr noundef %dev, ptr nocapture noundef readnone %dev_attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %value = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value) #11
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %value, align 8, !annotation !107
  %ops = getelementptr i8, ptr %dev, i32 -4
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops, align 4
  %get_power_uw = getelementptr inbounds %struct.powercap_zone_ops, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %get_power_uw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_power_uw, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %call = call i32 %4(ptr noundef %add.ptr, ptr noundef nonnull %value) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then4, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %value, align 8
  %call5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i64 noundef %6)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %len.0 = phi i32 [ -22, %if.then.if.end6_crit_edge ], [ %call5, %if.then4 ], [ -22, %entry.if.end6_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value) #11
  ret i32 %len.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_power_range_uw_show(ptr noundef %dev, ptr nocapture noundef readnone %dev_attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %value = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value) #11
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %value, align 8, !annotation !107
  %ops = getelementptr i8, ptr %dev, i32 -4
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops, align 4
  %get_max_power_range_uw = getelementptr inbounds %struct.powercap_zone_ops, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %get_max_power_range_uw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_max_power_range_uw, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %call = call i32 %4(ptr noundef %add.ptr, ptr noundef nonnull %value) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then4, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %value, align 8
  %call5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i64 noundef %6)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %len.0 = phi i32 [ -22, %if.then.if.end6_crit_edge ], [ %call5, %if.then4 ], [ -22, %entry.if.end6_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value) #11
  ret i32 %len.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_constraint_power_limit_uw(ptr noundef %dev, ptr nocapture noundef readonly %dev_attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %value = alloca i64, align 8
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value) #11
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %value, align 8, !annotation !107
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #11
  %1 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %id, align 4, !annotation !107
  %2 = ptrtoint ptr %dev_attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_attr, align 4
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %3, ptr noundef nonnull @.str.28, ptr noundef nonnull %id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %const_id_cnt = getelementptr i8, ptr %dev, i32 928
  %6 = ptrtoint ptr %const_id_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %const_id_cnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp slt i32 %5, %7
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %constraints = getelementptr i8, ptr %dev, i32 1040
  %8 = ptrtoint ptr %constraints to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %constraints, align 8
  %arrayidx = getelementptr %struct.powercap_zone_constraint, ptr %9, i32 %5
  %tobool3.not = icmp eq ptr %arrayidx, null
  br i1 %tobool3.not, label %if.end2.cleanup_crit_edge, label %land.lhs.true

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end2
  %ops = getelementptr %struct.powercap_zone_constraint, ptr %9, i32 %5, i32 2
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true5:                                   ; preds = %land.lhs.true
  %get_power_limit_uw = getelementptr inbounds %struct.powercap_zone_constraint_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %get_power_limit_uw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_power_limit_uw, align 4
  %tobool7.not = icmp eq ptr %13, null
  br i1 %tobool7.not, label %land.lhs.true5.cleanup_crit_edge, label %if.then8

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then8:                                         ; preds = %land.lhs.true5
  %call11 = call i32 %13(ptr noundef %add.ptr, i32 noundef %5, ptr noundef nonnull %value) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then13:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %value, align 8
  %call14 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i64 noundef %15)
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.then8.cleanup_crit_edge, %land.lhs.true5.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -61, %if.then8.cleanup_crit_edge ], [ %call14, %if.then13 ], [ -61, %land.lhs.true5.cleanup_crit_edge ], [ -61, %land.lhs.true.cleanup_crit_edge ], [ -61, %if.end2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_constraint_power_limit_uw(ptr noundef %dev, ptr nocapture noundef readonly %dev_attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value = alloca i64, align 8
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value) #11
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %value, align 8, !annotation !107
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #11
  %1 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %id, align 4, !annotation !107
  %2 = ptrtoint ptr %dev_attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_attr, align 4
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %3, ptr noundef nonnull @.str.28, ptr noundef nonnull %id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %const_id_cnt = getelementptr i8, ptr %dev, i32 928
  %6 = ptrtoint ptr %const_id_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %const_id_cnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp slt i32 %5, %7
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %constraints = getelementptr i8, ptr %dev, i32 1040
  %8 = ptrtoint ptr %constraints to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %constraints, align 8
  %call3 = call i32 @kstrtoull(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %arrayidx = getelementptr %struct.powercap_zone_constraint, ptr %9, i32 %5
  %tobool7.not = icmp eq ptr %arrayidx, null
  br i1 %tobool7.not, label %if.end6.if.end19_crit_edge, label %land.lhs.true

if.end6.if.end19_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end6
  %ops = getelementptr %struct.powercap_zone_constraint, ptr %9, i32 %5, i32 2
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %tobool8.not = icmp eq ptr %11, null
  br i1 %tobool8.not, label %land.lhs.true.if.end19_crit_edge, label %land.lhs.true9

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

land.lhs.true9:                                   ; preds = %land.lhs.true
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool11.not = icmp eq ptr %13, null
  br i1 %tobool11.not, label %land.lhs.true9.if.end19_crit_edge, label %if.then12

land.lhs.true9.if.end19_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then12:                                        ; preds = %land.lhs.true9
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id, align 4
  %16 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %value, align 8
  %call15 = call i32 %13(ptr noundef %add.ptr, i32 noundef %15, i64 noundef %17) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then12.cleanup_crit_edge, label %if.then12.if.end19_crit_edge

if.then12.if.end19_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end19:                                         ; preds = %if.then12.if.end19_crit_edge, %land.lhs.true9.if.end19_crit_edge, %land.lhs.true.if.end19_crit_edge, %if.end6.if.end19_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then12.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -61, %if.end19 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end2.cleanup_crit_edge ], [ %count, %if.then12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_constraint_time_window_us(ptr noundef %dev, ptr nocapture noundef readonly %dev_attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %value = alloca i64, align 8
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value) #11
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %value, align 8, !annotation !107
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #11
  %1 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %id, align 4, !annotation !107
  %2 = ptrtoint ptr %dev_attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_attr, align 4
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %3, ptr noundef nonnull @.str.28, ptr noundef nonnull %id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %const_id_cnt = getelementptr i8, ptr %dev, i32 928
  %6 = ptrtoint ptr %const_id_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %const_id_cnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp slt i32 %5, %7
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %constraints = getelementptr i8, ptr %dev, i32 1040
  %8 = ptrtoint ptr %constraints to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %constraints, align 8
  %arrayidx = getelementptr %struct.powercap_zone_constraint, ptr %9, i32 %5
  %tobool3.not = icmp eq ptr %arrayidx, null
  br i1 %tobool3.not, label %if.end2.cleanup_crit_edge, label %land.lhs.true

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end2
  %ops = getelementptr %struct.powercap_zone_constraint, ptr %9, i32 %5, i32 2
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true5:                                   ; preds = %land.lhs.true
  %get_time_window_us = getelementptr inbounds %struct.powercap_zone_constraint_ops, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %get_time_window_us to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_time_window_us, align 4
  %tobool7.not = icmp eq ptr %13, null
  br i1 %tobool7.not, label %land.lhs.true5.cleanup_crit_edge, label %if.then8

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then8:                                         ; preds = %land.lhs.true5
  %call11 = call i32 %13(ptr noundef %add.ptr, i32 noundef %5, ptr noundef nonnull %value) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then13:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %value, align 8
  %call14 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i64 noundef %15)
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.then8.cleanup_crit_edge, %land.lhs.true5.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -61, %if.then8.cleanup_crit_edge ], [ %call14, %if.then13 ], [ -61, %land.lhs.true5.cleanup_crit_edge ], [ -61, %land.lhs.true.cleanup_crit_edge ], [ -61, %if.end2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_constraint_time_window_us(ptr noundef %dev, ptr nocapture noundef readonly %dev_attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value = alloca i64, align 8
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value) #11
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %value, align 8, !annotation !107
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #11
  %1 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %id, align 4, !annotation !107
  %2 = ptrtoint ptr %dev_attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_attr, align 4
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %3, ptr noundef nonnull @.str.28, ptr noundef nonnull %id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %const_id_cnt = getelementptr i8, ptr %dev, i32 928
  %6 = ptrtoint ptr %const_id_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %const_id_cnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp slt i32 %5, %7
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %constraints = getelementptr i8, ptr %dev, i32 1040
  %8 = ptrtoint ptr %constraints to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %constraints, align 8
  %call3 = call i32 @kstrtoull(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %arrayidx = getelementptr %struct.powercap_zone_constraint, ptr %9, i32 %5
  %tobool7.not = icmp eq ptr %arrayidx, null
  br i1 %tobool7.not, label %if.end6.if.end19_crit_edge, label %land.lhs.true

if.end6.if.end19_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end6
  %ops = getelementptr %struct.powercap_zone_constraint, ptr %9, i32 %5, i32 2
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %tobool8.not = icmp eq ptr %11, null
  br i1 %tobool8.not, label %land.lhs.true.if.end19_crit_edge, label %land.lhs.true9

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

land.lhs.true9:                                   ; preds = %land.lhs.true
  %set_time_window_us = getelementptr inbounds %struct.powercap_zone_constraint_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %set_time_window_us to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_time_window_us, align 4
  %tobool11.not = icmp eq ptr %13, null
  br i1 %tobool11.not, label %land.lhs.true9.if.end19_crit_edge, label %if.then12

land.lhs.true9.if.end19_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then12:                                        ; preds = %land.lhs.true9
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id, align 4
  %16 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %value, align 8
  %call15 = call i32 %13(ptr noundef %add.ptr, i32 noundef %15, i64 noundef %17) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then12.cleanup_crit_edge, label %if.then12.if.end19_crit_edge

if.then12.if.end19_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end19:                                         ; preds = %if.then12.if.end19_crit_edge, %land.lhs.true9.if.end19_crit_edge, %land.lhs.true.if.end19_crit_edge, %if.end6.if.end19_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then12.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -61, %if.end19 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end2.cleanup_crit_edge ], [ %count, %if.then12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_constraint_name(ptr noundef %dev, ptr nocapture noundef readonly %dev_attr, ptr nocapture noundef %buf) #0 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #11
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %id, align 4, !annotation !107
  %1 = ptrtoint ptr %dev_attr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_attr, align 4
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %2, ptr noundef nonnull @.str.28, ptr noundef nonnull %id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  %const_id_cnt = getelementptr i8, ptr %dev, i32 928
  %5 = ptrtoint ptr %const_id_cnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %const_id_cnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.not = icmp slt i32 %4, %6
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %constraints = getelementptr i8, ptr %dev, i32 1040
  %7 = ptrtoint ptr %constraints to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %constraints, align 8
  %arrayidx = getelementptr %struct.powercap_zone_constraint, ptr %8, i32 %4
  %tobool4.not = icmp eq ptr %arrayidx, null
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %land.lhs.true

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end3
  %ops = getelementptr %struct.powercap_zone_constraint, ptr %8, i32 %4, i32 2
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %tobool5.not = icmp eq ptr %10, null
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true6:                                   ; preds = %land.lhs.true
  %get_name = getelementptr inbounds %struct.powercap_zone_constraint_ops, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %get_name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %get_name, align 4
  %tobool8.not = icmp eq ptr %12, null
  br i1 %tobool8.not, label %land.lhs.true6.cleanup_crit_edge, label %if.then9

land.lhs.true6.cleanup_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then9:                                         ; preds = %land.lhs.true6
  %call12 = call ptr %12(ptr noundef %add.ptr, i32 noundef %4) #11
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.then9.cleanup_crit_edge, label %if.then14

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then14:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  %call15 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.29, i32 noundef 29, ptr noundef nonnull %call12)
  %call16 = call i32 @strlen(ptr noundef %buf) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.then9.cleanup_crit_edge, %land.lhs.true6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call16, %if.then14 ], [ -61, %if.then9.cleanup_crit_edge ], [ -61, %land.lhs.true6.cleanup_crit_edge ], [ -61, %land.lhs.true.cleanup_crit_edge ], [ -61, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_constraint_max_power_uw(ptr noundef %dev, ptr nocapture noundef readonly %dev_attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %value = alloca i64, align 8
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value) #11
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %value, align 8, !annotation !107
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #11
  %1 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %id, align 4, !annotation !107
  %2 = ptrtoint ptr %dev_attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_attr, align 4
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %3, ptr noundef nonnull @.str.28, ptr noundef nonnull %id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %const_id_cnt = getelementptr i8, ptr %dev, i32 928
  %6 = ptrtoint ptr %const_id_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %const_id_cnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp slt i32 %5, %7
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %constraints = getelementptr i8, ptr %dev, i32 1040
  %8 = ptrtoint ptr %constraints to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %constraints, align 8
  %arrayidx = getelementptr %struct.powercap_zone_constraint, ptr %9, i32 %5
  %tobool3.not = icmp eq ptr %arrayidx, null
  br i1 %tobool3.not, label %if.end2.cleanup_crit_edge, label %land.lhs.true

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end2
  %ops = getelementptr %struct.powercap_zone_constraint, ptr %9, i32 %5, i32 2
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true5:                                   ; preds = %land.lhs.true
  %get_max_power_uw = getelementptr inbounds %struct.powercap_zone_constraint_ops, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %get_max_power_uw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_max_power_uw, align 4
  %tobool7.not = icmp eq ptr %13, null
  br i1 %tobool7.not, label %land.lhs.true5.cleanup_crit_edge, label %if.then8

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then8:                                         ; preds = %land.lhs.true5
  %call11 = call i32 %13(ptr noundef %add.ptr, i32 noundef %5, ptr noundef nonnull %value) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then13:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %value, align 8
  %call14 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i64 noundef %15)
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.then8.cleanup_crit_edge, %land.lhs.true5.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -61, %if.then8.cleanup_crit_edge ], [ %call14, %if.then13 ], [ -61, %land.lhs.true5.cleanup_crit_edge ], [ -61, %land.lhs.true.cleanup_crit_edge ], [ -61, %if.end2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_constraint_min_power_uw(ptr noundef %dev, ptr nocapture noundef readonly %dev_attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %value = alloca i64, align 8
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value) #11
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %value, align 8, !annotation !107
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #11
  %1 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %id, align 4, !annotation !107
  %2 = ptrtoint ptr %dev_attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_attr, align 4
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %3, ptr noundef nonnull @.str.28, ptr noundef nonnull %id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %const_id_cnt = getelementptr i8, ptr %dev, i32 928
  %6 = ptrtoint ptr %const_id_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %const_id_cnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp slt i32 %5, %7
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %constraints = getelementptr i8, ptr %dev, i32 1040
  %8 = ptrtoint ptr %constraints to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %constraints, align 8
  %arrayidx = getelementptr %struct.powercap_zone_constraint, ptr %9, i32 %5
  %tobool3.not = icmp eq ptr %arrayidx, null
  br i1 %tobool3.not, label %if.end2.cleanup_crit_edge, label %land.lhs.true

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end2
  %ops = getelementptr %struct.powercap_zone_constraint, ptr %9, i32 %5, i32 2
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true5:                                   ; preds = %land.lhs.true
  %get_min_power_uw = getelementptr inbounds %struct.powercap_zone_constraint_ops, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %get_min_power_uw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_min_power_uw, align 4
  %tobool7.not = icmp eq ptr %13, null
  br i1 %tobool7.not, label %land.lhs.true5.cleanup_crit_edge, label %if.then8

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then8:                                         ; preds = %land.lhs.true5
  %call11 = call i32 %13(ptr noundef %add.ptr, i32 noundef %5, ptr noundef nonnull %value) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then13:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %value, align 8
  %call14 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i64 noundef %15)
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.then8.cleanup_crit_edge, %land.lhs.true5.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -61, %if.then8.cleanup_crit_edge ], [ %call14, %if.then13 ], [ -61, %land.lhs.true5.cleanup_crit_edge ], [ -61, %land.lhs.true.cleanup_crit_edge ], [ -61, %if.end2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_constraint_max_time_window_us(ptr noundef %dev, ptr nocapture noundef readonly %dev_attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %value = alloca i64, align 8
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value) #11
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %value, align 8, !annotation !107
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #11
  %1 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %id, align 4, !annotation !107
  %2 = ptrtoint ptr %dev_attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_attr, align 4
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %3, ptr noundef nonnull @.str.28, ptr noundef nonnull %id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %const_id_cnt = getelementptr i8, ptr %dev, i32 928
  %6 = ptrtoint ptr %const_id_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %const_id_cnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp slt i32 %5, %7
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %constraints = getelementptr i8, ptr %dev, i32 1040
  %8 = ptrtoint ptr %constraints to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %constraints, align 8
  %arrayidx = getelementptr %struct.powercap_zone_constraint, ptr %9, i32 %5
  %tobool3.not = icmp eq ptr %arrayidx, null
  br i1 %tobool3.not, label %if.end2.cleanup_crit_edge, label %land.lhs.true

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end2
  %ops = getelementptr %struct.powercap_zone_constraint, ptr %9, i32 %5, i32 2
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true5:                                   ; preds = %land.lhs.true
  %get_max_time_window_us = getelementptr inbounds %struct.powercap_zone_constraint_ops, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %get_max_time_window_us to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_max_time_window_us, align 4
  %tobool7.not = icmp eq ptr %13, null
  br i1 %tobool7.not, label %land.lhs.true5.cleanup_crit_edge, label %if.then8

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then8:                                         ; preds = %land.lhs.true5
  %call11 = call i32 %13(ptr noundef %add.ptr, i32 noundef %5, ptr noundef nonnull %value) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then13:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %value, align 8
  %call14 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i64 noundef %15)
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.then8.cleanup_crit_edge, %land.lhs.true5.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -61, %if.then8.cleanup_crit_edge ], [ %call14, %if.then13 ], [ -61, %land.lhs.true5.cleanup_crit_edge ], [ -61, %land.lhs.true.cleanup_crit_edge ], [ -61, %if.end2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_constraint_min_time_window_us(ptr noundef %dev, ptr nocapture noundef readonly %dev_attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %value = alloca i64, align 8
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value) #11
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %value, align 8, !annotation !107
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #11
  %1 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %id, align 4, !annotation !107
  %2 = ptrtoint ptr %dev_attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_attr, align 4
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %3, ptr noundef nonnull @.str.28, ptr noundef nonnull %id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %const_id_cnt = getelementptr i8, ptr %dev, i32 928
  %6 = ptrtoint ptr %const_id_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %const_id_cnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp slt i32 %5, %7
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %constraints = getelementptr i8, ptr %dev, i32 1040
  %8 = ptrtoint ptr %constraints to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %constraints, align 8
  %arrayidx = getelementptr %struct.powercap_zone_constraint, ptr %9, i32 %5
  %tobool3.not = icmp eq ptr %arrayidx, null
  br i1 %tobool3.not, label %if.end2.cleanup_crit_edge, label %land.lhs.true

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end2
  %ops = getelementptr %struct.powercap_zone_constraint, ptr %9, i32 %5, i32 2
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true5:                                   ; preds = %land.lhs.true
  %get_min_time_window_us = getelementptr inbounds %struct.powercap_zone_constraint_ops, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %get_min_time_window_us to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_min_time_window_us, align 4
  %tobool7.not = icmp eq ptr %13, null
  br i1 %tobool7.not, label %land.lhs.true5.cleanup_crit_edge, label %if.then8

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then8:                                         ; preds = %land.lhs.true5
  %call11 = call i32 %13(ptr noundef %add.ptr, i32 noundef %5, ptr noundef nonnull %value) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then13:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %value, align 8
  %call14 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i64 noundef %15)
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.then8.cleanup_crit_edge, %land.lhs.true5.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -61, %if.then8.cleanup_crit_edge ], [ %call14, %if.then13 ], [ -61, %land.lhs.true5.cleanup_crit_edge ], [ -61, %land.lhs.true.cleanup_crit_edge ], [ -61, %if.end2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !25, !27, !29, !31, !32, !34, !36, !38, !39, !41, !43, !44, !46, !48, !49, !51, !52, !54, !56, !57, !59, !61, !62, !64, !65, !67, !68, !70, !72, !73, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94}
!llvm.module.flags = !{!96, !97, !98, !99, !100, !101, !102, !103}
!llvm.ident = !{!104}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/powercap/powercap_sys.c", i32 532, i32 33}
!2 = !{ptr @__ksymtab_powercap_register_zone, !3, !"__ksymtab_powercap_register_zone", i1 false, i1 false}
!3 = !{!"../drivers/powercap/powercap_sys.c", i32 581, i32 1}
!4 = !{ptr @__ksymtab_powercap_unregister_zone, !5, !"__ksymtab_powercap_unregister_zone", i1 false, i1 false}
!5 = !{!"../drivers/powercap/powercap_sys.c", i32 597, i32 1}
!6 = !{ptr @powercap_register_control_type.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/powercap/powercap_sys.c", i32 618, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/powercap/powercap_sys.c", i32 622, i32 35}
!11 = !{ptr @__ksymtab_powercap_register_control_type, !12, !"__ksymtab_powercap_register_control_type", i1 false, i1 false}
!12 = !{!"../drivers/powercap/powercap_sys.c", i32 637, i32 1}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/powercap/powercap_sys.c", i32 644, i32 3}
!15 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @powercap_unregister_control_type._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @powercap_unregister_control_type._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @__ksymtab_powercap_unregister_control_type, !22, !"__ksymtab_powercap_unregister_control_type", i1 false, i1 false}
!22 = !{!"../drivers/powercap/powercap_sys.c", i32 660, i32 1}
!23 = !{ptr @__initcall__kmod_powercap_sys__183_673_powercap_init5, !24, !"__initcall__kmod_powercap_sys__183_673_powercap_init5", i1 false, i1 false}
!24 = !{!"../drivers/powercap/powercap_sys.c", i32 673, i32 1}
!25 = !{ptr @__UNIQUE_ID_description184, !26, !"__UNIQUE_ID_description184", i1 false, i1 false}
!26 = !{!"../drivers/powercap/powercap_sys.c", i32 675, i32 1}
!27 = !{ptr @__UNIQUE_ID_author185, !28, !"__UNIQUE_ID_author185", i1 false, i1 false}
!28 = !{!"../drivers/powercap/powercap_sys.c", i32 676, i32 1}
!29 = !{ptr @__UNIQUE_ID_file186, !30, !"__UNIQUE_ID_file186", i1 false, i1 false}
!30 = !{!"../drivers/powercap/powercap_sys.c", i32 677, i32 1}
!31 = !{ptr @__UNIQUE_ID_license187, !30, !"__UNIQUE_ID_license187", i1 false, i1 false}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/powercap/powercap_sys.c", i32 476, i32 10}
!34 = !{ptr @powercap_class, !35, !"powercap_class", i1 false, i1 false}
!35 = !{!"../drivers/powercap/powercap_sys.c", i32 475, i32 21}
!36 = !{ptr @powercap_groups, !37, !"powercap_groups", i1 false, i1 false}
!37 = !{!"../drivers/powercap/powercap_sys.c", i32 473, i32 1}
!38 = !{ptr @powercap_group, !37, !"powercap_group", i1 false, i1 false}
!39 = !{ptr @powercap_attrs, !40, !"powercap_attrs", i1 false, i1 false}
!40 = !{!"../drivers/powercap/powercap_sys.c", i32 469, i32 26}
!41 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/powercap/powercap_sys.c", i32 467, i32 8}
!43 = !{ptr @dev_attr_enabled, !42, !"dev_attr_enabled", i1 false, i1 false}
!44 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/powercap/powercap_sys.c", i32 440, i32 22}
!46 = !{ptr @xa_init_flags.__key, !47, !"__key", i1 false, i1 false}
!47 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!48 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.12, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/powercap/powercap_sys.c", i32 355, i32 8}
!51 = !{ptr @dev_attr_name, !50, !"dev_attr_name", i1 false, i1 false}
!52 = !{ptr @.str.13, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/powercap/powercap_sys.c", i32 352, i32 22}
!54 = !{ptr @.str.14, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/powercap/powercap_sys.c", i32 121, i32 8}
!56 = !{ptr @dev_attr_max_energy_range_uj, !55, !"dev_attr_max_energy_range_uj", i1 false, i1 false}
!57 = !{ptr @.str.15, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/powercap/powercap_sys.c", i32 116, i32 1}
!59 = !{ptr @.str.16, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/powercap/powercap_sys.c", i32 122, i32 8}
!61 = !{ptr @dev_attr_energy_uj, !60, !"dev_attr_energy_uj", i1 false, i1 false}
!62 = !{ptr @.str.17, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/powercap/powercap_sys.c", i32 120, i32 8}
!64 = !{ptr @dev_attr_power_uw, !63, !"dev_attr_power_uw", i1 false, i1 false}
!65 = !{ptr @.str.18, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/powercap/powercap_sys.c", i32 119, i32 8}
!67 = !{ptr @dev_attr_max_power_range_uw, !66, !"dev_attr_max_power_range_uw", i1 false, i1 false}
!68 = !{ptr @constraint_attrs, !69, !"constraint_attrs", i1 false, i1 false}
!69 = !{!"../drivers/powercap/powercap_sys.c", i32 146, i32 5}
!70 = !{ptr @.str.19, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/powercap/powercap_sys.c", i32 151, i32 8}
!72 = !{ptr @.str.20, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @powercap_cntrl_list_lock, !71, !"powercap_cntrl_list_lock", i1 false, i1 false}
!74 = !{ptr @powercap_cntrl_list, !75, !"powercap_cntrl_list", i1 false, i1 false}
!75 = !{!"../drivers/powercap/powercap_sys.c", i32 149, i32 8}
!76 = !{ptr @powercap_init.__key, !77, !"__key", i1 false, i1 false}
!77 = !{!"../drivers/powercap/powercap_sys.c", i32 670, i32 9}
!78 = !{ptr @.str.21, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/powercap/powercap_sys.c", i32 225, i32 40}
!80 = !{ptr @.str.22, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/powercap/powercap_sys.c", i32 232, i32 40}
!82 = !{ptr @.str.23, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/powercap/powercap_sys.c", i32 245, i32 40}
!84 = !{ptr @.str.24, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/powercap/powercap_sys.c", i32 251, i32 40}
!86 = !{ptr @.str.25, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/powercap/powercap_sys.c", i32 257, i32 40}
!88 = !{ptr @.str.26, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/powercap/powercap_sys.c", i32 264, i32 40}
!90 = !{ptr @.str.27, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/powercap/powercap_sys.c", i32 193, i32 46}
!92 = !{ptr @.str.28, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/powercap/powercap_sys.c", i32 125, i32 1}
!94 = !{ptr @.str.29, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/powercap/powercap_sys.c", i32 173, i32 17}
!96 = !{i32 1, !"wchar_size", i32 2}
!97 = !{i32 1, !"min_enum_size", i32 4}
!98 = !{i32 8, !"branch-target-enforcement", i32 0}
!99 = !{i32 8, !"sign-return-address", i32 0}
!100 = !{i32 8, !"sign-return-address-all", i32 0}
!101 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!102 = !{i32 7, !"uwtable", i32 1}
!103 = !{i32 7, !"frame-pointer", i32 2}
!104 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!105 = !{!"branch_weights", i32 1, i32 2000}
!106 = !{i8 0, i8 2}
!107 = !{!"auto-init"}
