; ModuleID = '/llk/IR_all_yes/drivers/usb/typec/altmodes/displayport.c_pt.bc'
source_filename = "../drivers/usb/typec/altmodes/displayport.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+dp_altmode_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_dp_altmode_probe\09\09\09\09"
module asm "\09.long\09__crc_dp_altmode_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dp_altmode_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22dp_altmode_probe\22\09\09\09\09\09"
module asm "__kstrtabns_dp_altmode_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dp_altmode_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_dp_altmode_remove\09\09\09\09"
module asm "\09.long\09__crc_dp_altmode_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dp_altmode_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22dp_altmode_remove\22\09\09\09\09\09"
module asm "__kstrtabns_dp_altmode_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.typec_altmode_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.typec_altmode_driver = type { ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.typec_device_id = type { i16, i8, i32 }
%struct.typec_altmode = type { %struct.device, i16, i32, i32, i8, ptr, ptr }
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
%struct.dp_altmode = type { %struct.typec_displayport_data, i32, i8, %struct.mutex, %struct.work_struct, ptr, ptr, ptr }
%struct.typec_displayport_data = type { i32, i32 }

@dp_altmode_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.4, ptr null, ptr null, ptr @dp_altmode_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@dp_altmode_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(work_completion)(&dp->work)\00", [35 x i8] zeroinitializer }, align 32
@dp_altmode_probe.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&dp->lock\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DisplayPort\00", [20 x i8] zeroinitializer }, align 32
@dp_altmode_ops = internal constant { %struct.typec_altmode_ops, [40 x i8] } { %struct.typec_altmode_ops { ptr null, ptr null, ptr @dp_altmode_attention, ptr @dp_altmode_vdm, ptr null, ptr @dp_altmode_activate }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"displayport\00", [20 x i8] zeroinitializer }, align 32
@__kstrtab_dp_altmode_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_dp_altmode_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_dp_altmode_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dp_altmode_probe to i32), ptr @__kstrtab_dp_altmode_probe, ptr @__kstrtabns_dp_altmode_probe }, section "___ksymtab_gpl+dp_altmode_probe", align 4
@__kstrtab_dp_altmode_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_dp_altmode_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_dp_altmode_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dp_altmode_remove to i32), ptr @__kstrtab_dp_altmode_remove, ptr @__kstrtabns_dp_altmode_remove }, section "___ksymtab_gpl+dp_altmode_remove", align 4
@__initcall__kmod_typec_displayport__246_599_dp_altmode_driver_init6 = internal global ptr @dp_altmode_driver_init, section ".initcall6.init", align 4
@dp_altmode_driver = internal global { %struct.typec_altmode_driver, [40 x i8] } { %struct.typec_altmode_driver { ptr @dp_typec_id, ptr @dp_altmode_probe, ptr @dp_altmode_remove, %struct.device_driver { ptr @.str.44, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [40 x i8] zeroinitializer }, align 32
@__exitcall_dp_altmode_driver_exit = internal global ptr @dp_altmode_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author247 = internal constant [75 x i8] c"typec_displayport.author=Heikki Krogerus <heikki.krogerus@linux.intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file248 = internal constant [68 x i8] c"typec_displayport.file=drivers/usb/typec/altmodes/typec_displayport\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [33 x i8] c"typec_displayport.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description250 = internal constant [57 x i8] c"typec_displayport.description=DisplayPort Alternate Mode\00", section ".modinfo", align 1
@dp_altmode_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_configuration, ptr @dev_attr_pin_assignment, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_configuration = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @configuration_show, ptr @configuration_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_pin_assignment = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pin_assignment_show, ptr @pin_assignment_store }, [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"configuration\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"USB\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"[USB]\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"[%s] \00", [26 x i8] zeroinitializer }, align 32
@configurations = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.7, ptr @.str.10, ptr @.str.11], [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"source\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sink\00", [27 x i8] zeroinitializer }, align 32
@dp_altmode_configure_vdm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.14, i32 176, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"unable to put to connector to safe mode\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dp_altmode_configure_vdm\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/usb/typec/altmodes/displayport.c\00", [55 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dp_altmode_configure_vdm._entry_ptr = internal global ptr @dp_altmode_configure_vdm._entry, section ".printk_index", align 4
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pin_assignment\00", [17 x i8] zeroinitializer }, align 32
@pin_assignments = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"A\00", [30 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"B\00", [30 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"C\00", [30 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"D\00", [30 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"E\00", [30 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"F\00", [30 x i8] zeroinitializer }, align 32
@dp_altmode_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.14, i32 201, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to enter mode\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dp_altmode_work\00", [16 x i8] zeroinitializer }, align 32
@dp_altmode_work._entry_ptr = internal global ptr @dp_altmode_work._entry, section ".printk_index", align 4
@dp_altmode_work._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.14, i32 213, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"unable to send Status Update command (%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@dp_altmode_work._entry_ptr.28 = internal global ptr @dp_altmode_work._entry.26, section ".printk_index", align 4
@dp_altmode_work._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.14, i32 219, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"unable to send Configure command (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@dp_altmode_work._entry_ptr.31 = internal global ptr @dp_altmode_work._entry.29, section ".printk_index", align 4
@dp_altmode_work._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.25, ptr @.str.14, i32 223, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Exit Mode Failed!\0A\00", [45 x i8] zeroinitializer }, align 32
@dp_altmode_work._entry_ptr.34 = internal global ptr @dp_altmode_work._entry.32, section ".printk_index", align 4
@dp_altmode_attention._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.14, i32 246, ptr @.str.37, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ATTENTION while processing state %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dp_altmode_attention\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@dp_altmode_attention._entry_ptr = internal global ptr @dp_altmode_attention._entry, section ".printk_index", align 4
@dp_altmode_attention._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.36, ptr @.str.14, i32 249, ptr @.str.37, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: status update failed\0A\00", [38 x i8] zeroinitializer }, align 32
@dp_altmode_attention._entry_ptr.40 = internal global ptr @dp_altmode_attention._entry.38, section ".printk_index", align 4
@dp_altmode_attention._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.36, ptr @.str.14, i32 252, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: notification failed\0A\00", [39 x i8] zeroinitializer }, align 32
@dp_altmode_attention._entry_ptr.43 = internal global ptr @dp_altmode_attention._entry.41, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@dp_typec_id = internal constant { [2 x %struct.typec_device_id], [16 x i8] } { [2 x %struct.typec_device_id] [%struct.typec_device_id { i16 -255, i8 1, i32 0 }, %struct.typec_device_id zeroinitializer], [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"typec_displayport\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.47 = internal global [6 x i64] [i64 4, i64 32, i64 4, i64 5, i64 16, i64 17]
@__sancov_gen_cov_switch_values.48 = internal global [6 x i64] [i64 4, i64 2, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"dp_altmode_group\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 517, i32 37 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 546, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 547, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 551, i32 14 }
@___asan_gen_.67 = private unnamed_addr constant [15 x i8] c"dp_altmode_ops\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 324, i32 39 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 555, i32 55 }
@___asan_gen_.73 = private unnamed_addr constant [18 x i8] c"dp_altmode_driver\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 590, i32 36 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"dp_altmode_attrs\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 511, i32 26 }
@___asan_gen_.79 = private unnamed_addr constant [23 x i8] c"dev_attr_configuration\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [24 x i8] c"dev_attr_pin_assignment\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 411, i32 8 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 396, i32 21 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 396, i32 34 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 396, i32 42 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 400, i32 30 }
@___asan_gen_.100 = private unnamed_addr constant [15 x i8] c"configurations\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 330, i32 27 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 332, i32 20 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 333, i32 20 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 175, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 509, i32 8 }
@___asan_gen_.130 = private unnamed_addr constant [16 x i8] c"pin_assignments\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 413, i32 27 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 414, i32 22 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 415, i32 22 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 416, i32 22 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 417, i32 22 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 418, i32 22 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 419, i32 22 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 201, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 211, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 218, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 223, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 245, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 249, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 252, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant [12 x i8] c"dp_typec_id\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 584, i32 37 }
@___asan_gen_.205 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.206 = private constant [44 x i8] c"../drivers/usb/typec/altmodes/displayport.c\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 595, i32 11 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_file248, ptr @__UNIQUE_ID_license249, ptr @__exitcall_dp_altmode_driver_exit, ptr @__initcall__kmod_typec_displayport__246_599_dp_altmode_driver_init6, ptr @__ksymtab_dp_altmode_probe, ptr @__ksymtab_dp_altmode_remove, ptr @dp_altmode_attention._entry, ptr @dp_altmode_attention._entry.38, ptr @dp_altmode_attention._entry.41, ptr @dp_altmode_attention._entry_ptr, ptr @dp_altmode_attention._entry_ptr.40, ptr @dp_altmode_attention._entry_ptr.43, ptr @dp_altmode_configure_vdm._entry, ptr @dp_altmode_configure_vdm._entry_ptr, ptr @dp_altmode_driver_exit, ptr @dp_altmode_work._entry, ptr @dp_altmode_work._entry.26, ptr @dp_altmode_work._entry.29, ptr @dp_altmode_work._entry.32, ptr @dp_altmode_work._entry_ptr, ptr @dp_altmode_work._entry_ptr.28, ptr @dp_altmode_work._entry_ptr.31, ptr @dp_altmode_work._entry_ptr.34, ptr @dp_altmode_group, ptr @dp_altmode_probe.__key, ptr @.str, ptr @dp_altmode_probe.__key.1, ptr @.str.2, ptr @.str.3, ptr @dp_altmode_ops, ptr @.str.4, ptr @dp_altmode_driver, ptr @dp_altmode_attrs, ptr @dev_attr_configuration, ptr @dev_attr_pin_assignment, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @configurations, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @pin_assignments, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @dp_typec_id, ptr @.str.44], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_altmode_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_altmode_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_altmode_probe.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_altmode_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_altmode_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_altmode_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_configuration to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pin_assignment to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configurations to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_altmode_configure_vdm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_assignments to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_altmode_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_altmode_work._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_altmode_work._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_altmode_work._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_altmode_attention._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_altmode_attention._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_altmode_attention._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_typec_id to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dp_altmode_probe(ptr noundef %alt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @typec_altmode_get_partner(ptr noundef %alt) #7
  %vdo = getelementptr inbounds %struct.typec_altmode, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %vdo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vdo, align 8
  %and = lshr i32 %1, 8
  %vdo1 = getelementptr inbounds %struct.typec_altmode, ptr %alt, i32 0, i32 3
  %2 = ptrtoint ptr %vdo1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vdo1, align 8
  %and2 = lshr i32 %3, 16
  %shr3 = and i32 %and, 255
  %and4 = and i32 %shr3, %and2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %and6 = lshr i32 %1, 16
  %and9 = lshr i32 %3, 8
  %shr10 = and i32 %and6, 255
  %and11 = and i32 %shr10, %and9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = tail call i32 @sysfs_create_group(ptr noundef %alt, ptr noundef nonnull @dp_altmode_group) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %alt, i32 noundef 164, i32 noundef 3520) #7
  %tobool19.not = icmp eq ptr %call.i, null
  br i1 %tobool19.not, label %if.end16.cleanup_crit_edge, label %do.body

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %work = getelementptr inbounds %struct.dp_altmode, ptr %call.i, i32 0, i32 4
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #7
  %4 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.dp_altmode, ptr %call.i, i32 0, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @dp_altmode_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry25 = getelementptr inbounds %struct.dp_altmode, ptr %call.i, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %entry25 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry25, ptr %entry25, align 4
  %prev.i = getelementptr inbounds %struct.dp_altmode, ptr %call.i, i32 0, i32 4, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry25, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.dp_altmode, ptr %call.i, i32 0, i32 4, i32 2
  %7 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @dp_altmode_work, ptr %func, align 4
  %lock = getelementptr inbounds %struct.dp_altmode, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @dp_altmode_probe.__key.1) #7
  %port30 = getelementptr inbounds %struct.dp_altmode, ptr %call.i, i32 0, i32 6
  %8 = ptrtoint ptr %port30 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %port30, align 4
  %alt31 = getelementptr inbounds %struct.dp_altmode, ptr %call.i, i32 0, i32 5
  %9 = ptrtoint ptr %alt31 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %alt, ptr %alt31, align 4
  %desc = getelementptr inbounds %struct.typec_altmode, ptr %alt, i32 0, i32 5
  %10 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.3, ptr %desc, align 8
  %ops = getelementptr inbounds %struct.typec_altmode, ptr %alt, i32 0, i32 6
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @dp_altmode_ops, ptr %ops, align 4
  %parent = getelementptr inbounds %struct.device, ptr %alt, i32 0, i32 1
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent, align 8
  %parent33 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %parent33 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent33, align 8
  %call34 = tail call ptr @dev_fwnode(ptr noundef %15) #7
  %call35 = tail call ptr @fwnode_find_reference(ptr noundef %call34, ptr noundef nonnull @.str.4, i32 noundef 0) #7
  %connector_fwnode = getelementptr inbounds %struct.dp_altmode, ptr %call.i, i32 0, i32 7
  %cmp.i = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  %spec.store.select = select i1 %cmp.i, ptr null, ptr %call35
  %16 = ptrtoint ptr %connector_fwnode to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %spec.store.select, ptr %connector_fwnode, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %alt, i32 0, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %state = getelementptr inbounds %struct.dp_altmode, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %state, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %19 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %19, ptr noundef %work) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -19, %land.lhs.true.cleanup_crit_edge ], [ %call13, %if.end.cleanup_crit_edge ], [ -12, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @typec_altmode_get_partner(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dp_altmode_work(ptr noundef %work) #0 align 64 {
entry:
  %vdo = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vdo) #7
  %0 = ptrtoint ptr %vdo to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %vdo, align 4, !annotation !118
  %lock = getelementptr i8, ptr %work, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %state = getelementptr i8, ptr %work, i32 -100
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb23
    i32 4, label %sw.bb33
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %alt = getelementptr i8, ptr %work, i32 44
  %4 = ptrtoint ptr %alt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %alt, align 4
  %call = tail call i32 @typec_altmode_enter(ptr noundef %5, ptr noundef null) #7
  %6 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %call, label %do.end [
    i32 0, label %sw.bb.sw.epilog_crit_edge
    i32 -16, label %sw.bb.sw.epilog_crit_edge66
  ]

sw.bb.sw.epilog_crit_edge66:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %alt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %alt, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.24) #10
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %alt3 = getelementptr i8, ptr %work, i32 44
  %9 = ptrtoint ptr %alt3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %alt3, align 4
  %call.i = tail call ptr @typec_altmode2port(ptr noundef %10) #7
  %call1.i = tail call i32 @typec_get_negotiated_svdm_version(ptr noundef %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp5 = icmp slt i32 %call1.i, 0
  br i1 %cmp5, label %sw.bb2.sw.epilog_crit_edge, label %if.end7

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end7:                                          ; preds = %sw.bb2
  %11 = ptrtoint ptr %alt3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %alt3, align 4
  %svid = getelementptr inbounds %struct.typec_altmode, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %svid to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %svid, align 8
  %conv = zext i16 %14 to i32
  %shl = shl nuw i32 %conv, 16
  %shl9 = shl i32 %call1.i, 13
  %or = or i32 %shl9, %shl
  %or12 = or i32 %or, 33040
  %15 = ptrtoint ptr %vdo to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %vdo, align 4
  %call14 = call i32 @typec_altmode_vdm(ptr noundef %12, i32 noundef %or12, ptr noundef nonnull %vdo, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end7.sw.epilog_crit_edge, label %do.end19

if.end7.sw.epilog_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end19:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %alt3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %alt3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.27, i32 noundef %call14) #10
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %work, i32 -108
  %conf = getelementptr i8, ptr %work, i32 -104
  %18 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %conf, align 4
  %call24 = tail call fastcc i32 @dp_altmode_configure_vdm(ptr noundef %add.ptr, i32 noundef %19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %sw.bb23.sw.epilog_crit_edge, label %do.end29

sw.bb23.sw.epilog_crit_edge:                      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end29:                                         ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #9
  %alt30 = getelementptr i8, ptr %work, i32 44
  %20 = ptrtoint ptr %alt30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %alt30, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.30, i32 noundef %call24) #10
  br label %sw.epilog

sw.bb33:                                          ; preds = %entry
  %alt34 = getelementptr i8, ptr %work, i32 44
  %22 = ptrtoint ptr %alt34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %alt34, align 4
  %call35 = tail call i32 @typec_altmode_exit(ptr noundef %23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %sw.bb33.sw.epilog_crit_edge, label %do.end40

sw.bb33.sw.epilog_crit_edge:                      ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end40:                                         ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %alt34 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %alt34, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.33) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end40, %sw.bb33.sw.epilog_crit_edge, %do.end29, %sw.bb23.sw.epilog_crit_edge, %do.end19, %if.end7.sw.epilog_crit_edge, %sw.bb2.sw.epilog_crit_edge, %do.end, %sw.bb.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge66, %entry.sw.epilog_crit_edge
  %26 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %state, align 4
  call void @mutex_unlock(ptr noundef %lock) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vdo) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_find_reference(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_altmode_remove(ptr noundef %alt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %alt, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @sysfs_remove_group(ptr noundef %alt, ptr noundef nonnull @dp_altmode_group) #7
  %work = getelementptr inbounds %struct.dp_altmode, ptr %1, i32 0, i32 4
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #7
  %connector_fwnode = getelementptr inbounds %struct.dp_altmode, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %connector_fwnode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connector_fwnode, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then:                                          ; preds = %entry
  %hpd = getelementptr inbounds %struct.dp_altmode, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %hpd to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hpd, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drm_connector_oob_hotplug_event(ptr noundef nonnull %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %6 = ptrtoint ptr %connector_fwnode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %connector_fwnode, align 4
  tail call void @fwnode_handle_put(ptr noundef %7) #7
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_oob_hotplug_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_altmode_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__typec_altmode_register_driver(ptr noundef nonnull @dp_altmode_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dp_altmode_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @typec_altmode_unregister_driver(ptr noundef nonnull @dp_altmode_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_altmode_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @configuration_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.dp_altmode, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %alt = getelementptr inbounds %struct.dp_altmode, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %alt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %alt, align 4
  %vdo = getelementptr inbounds %struct.typec_altmode, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %vdo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vdo, align 8
  %conf = getelementptr inbounds %struct.typec_displayport_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %conf, align 4
  %conv2 = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv2)
  %tobool.not = icmp eq i32 %conv2, 0
  %cond = select i1 %tobool.not, ptr @.str.8, ptr @.str.7
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.6, ptr noundef nonnull %cond)
  %and19 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv2)
  %cmp7 = icmp eq i32 %conv2, 1
  br i1 %cmp7, label %for.inc.thread, label %if.else

for.inc.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %buf, i32 %call4
  %call9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10)
  %add = add i32 %call9, %call4
  br label %if.else.1

if.else:                                          ; preds = %entry
  %and13 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.else.for.inc_crit_edge, label %if.then21

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr22 = getelementptr i8, ptr %buf, i32 %call4
  %call24 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr22, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.10)
  %add25 = add i32 %call24, %call4
  br label %for.inc

for.inc:                                          ; preds = %if.then21, %if.else.for.inc_crit_edge
  %len.1 = phi i32 [ %add25, %if.then21 ], [ %call4, %if.else.for.inc_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv2)
  %cmp7.1 = icmp eq i32 %conv2, 2
  br i1 %cmp7.1, label %for.inc.for.inc.1.sink.split_crit_edge, label %for.inc.if.else.1_crit_edge

for.inc.if.else.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.1

for.inc.for.inc.1.sink.split_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.sink.split

if.else.1:                                        ; preds = %for.inc.if.else.1_crit_edge, %for.inc.thread
  %len.156 = phi i32 [ %add, %for.inc.thread ], [ %len.1, %for.inc.if.else.1_crit_edge ]
  br i1 %tobool20.not, label %if.else.1.for.inc.1_crit_edge, label %if.else.1.for.inc.1.sink.split_crit_edge

if.else.1.for.inc.1.sink.split_crit_edge:         ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.sink.split

if.else.1.for.inc.1_crit_edge:                    ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

for.inc.1.sink.split:                             ; preds = %if.else.1.for.inc.1.sink.split_crit_edge, %for.inc.for.inc.1.sink.split_crit_edge
  %len.1.sink57 = phi i32 [ %len.156, %if.else.1.for.inc.1.sink.split_crit_edge ], [ %len.1, %for.inc.for.inc.1.sink.split_crit_edge ]
  %.str.9.sink = phi ptr [ @.str.6, %if.else.1.for.inc.1.sink.split_crit_edge ], [ @.str.9, %for.inc.for.inc.1.sink.split_crit_edge ]
  %add.ptr.1 = getelementptr i8, ptr %buf, i32 %len.1.sink57
  %call9.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.1, ptr noundef nonnull %.str.9.sink, ptr noundef nonnull @.str.11)
  %add.1 = add i32 %call9.1, %len.1.sink57
  br label %for.inc.1

for.inc.1:                                        ; preds = %for.inc.1.sink.split, %if.else.1.for.inc.1_crit_edge
  %len.1.1 = phi i32 [ %len.156, %if.else.1.for.inc.1_crit_edge ], [ %add.1, %for.inc.1.sink.split ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  %sub = add i32 %len.1.1, -1
  %arrayidx28 = getelementptr i8, ptr %buf, i32 %sub
  %8 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 10, ptr %arrayidx28, align 1
  ret i32 %len.1.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @configuration_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @__sysfs_match_string(ptr noundef nonnull @configurations, i32 noundef 3, ptr noundef %buf) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.dp_altmode, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %state = getelementptr inbounds %struct.dp_altmode, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2.not = icmp eq i32 %3, 0
  br i1 %cmp2.not, label %if.end4, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  %alt = getelementptr inbounds %struct.dp_altmode, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %alt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %alt, align 4
  %vdo = getelementptr inbounds %struct.typec_altmode, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %vdo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vdo, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp5 = icmp eq i32 %call1, 1
  %and6 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  %or.cond = select i1 %cmp5, i1 %tobool.not, i1 false
  br i1 %or.cond, label %if.end4.cleanup.sink.split_crit_edge, label %lor.lhs.false

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call1)
  %cmp7 = icmp eq i32 %call1, 2
  %and9 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %or.cond47 = select i1 %cmp7, i1 %tobool10.not, i1 false
  br i1 %or.cond47, label %lor.lhs.false.cleanup.sink.split_crit_edge, label %if.end12

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end12:                                         ; preds = %lor.lhs.false
  %conf13 = getelementptr inbounds %struct.typec_displayport_data, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %conf13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %conf13, align 4
  %and14 = and i32 %9, -4
  %or = or i32 %and14, %call1
  %active = getelementptr inbounds %struct.typec_altmode, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool16.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool16.not, label %if.end12._crit_edge, label %if.then17

if.end12._crit_edge:                              ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %11

if.then17:                                        ; preds = %if.end12
  %call18 = tail call fastcc i32 @dp_altmode_configure_vdm(ptr noundef %1, i32 noundef %or)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then17._crit_edge, label %if.then17.cleanup.sink.split_crit_edge

if.then17.cleanup.sink.split_crit_edge:           ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then17._crit_edge:                             ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %11

11:                                               ; preds = %if.then17._crit_edge, %if.end12._crit_edge
  %12 = ptrtoint ptr %conf13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or, ptr %conf13, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %11, %if.then17.cleanup.sink.split_crit_edge, %lor.lhs.false.cleanup.sink.split_crit_edge, %if.end4.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %size, %11 ], [ -22, %if.end4.cleanup.sink.split_crit_edge ], [ -22, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ -16, %if.end.cleanup.sink.split_crit_edge ], [ %call18, %if.then17.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sysfs_match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dp_altmode_configure_vdm(ptr noundef %dp, i32 noundef %conf) unnamed_addr #0 align 64 {
entry:
  %conf.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %conf.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %conf, ptr %conf.addr, align 4
  %alt = getelementptr inbounds %struct.dp_altmode, ptr %dp, i32 0, i32 5
  %1 = ptrtoint ptr %alt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %alt, align 4
  %call.i = tail call ptr @typec_altmode2port(ptr noundef %2) #7
  %call1.i = tail call i32 @typec_get_negotiated_svdm_version(ptr noundef %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %alt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %alt, align 4
  %svid = getelementptr inbounds %struct.typec_altmode, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %svid to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %svid, align 8
  %call7 = tail call i32 @typec_altmode_notify(ptr noundef %4, i32 noundef 0, ptr noundef %dp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end10, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %alt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %alt, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.12) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %conv = zext i16 %6 to i32
  %shl = shl nuw i32 %conv, 16
  %shl2 = shl i32 %call1.i, 13
  %or = or i32 %shl2, %shl
  %or5 = or i32 %or, 33041
  %9 = ptrtoint ptr %alt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %alt, align 4
  %call12 = call i32 @typec_altmode_vdm(ptr noundef %10, i32 noundef %or5, ptr noundef nonnull %conf.addr, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %if.then14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then14:                                        ; preds = %if.end10
  %conf1.i = getelementptr inbounds %struct.typec_displayport_data, ptr %dp, i32 0, i32 1
  %11 = ptrtoint ptr %conf1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %conf1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %if.then14.dp_altmode_notify.exit_crit_edge, label %if.then.i

if.then14.dp_altmode_notify.exit_crit_edge:       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %dp_altmode_notify.exit

if.then.i:                                        ; preds = %if.then14
  %and.i = lshr i32 %12, 8
  %shr.i = and i32 %and.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %cmp.i.i = icmp eq i32 %shr.i, 0
  br i1 %cmp.i.i, label %if.then.i.dp_altmode_notify.exit_crit_edge, label %if.end.i.i

if.then.i.dp_altmode_notify.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dp_altmode_notify.exit

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %dec.i.i = add nsw i32 %shr.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool.not.i.i.i = icmp eq i32 %dec.i.i, 0
  %13 = call i32 @llvm.ctlz.i32(i32 %dec.i.i, i1 true) #7, !range !120
  %sub.i.i.op.i = sub nuw nsw i32 34, %13
  %phi.bo.i = select i1 %tobool.not.i.i.i, i32 2, i32 %sub.i.i.op.i
  br label %dp_altmode_notify.exit

dp_altmode_notify.exit:                           ; preds = %if.end.i.i, %if.then.i.dp_altmode_notify.exit_crit_edge, %if.then14.dp_altmode_notify.exit_crit_edge
  %conf.0.i = phi i32 [ 1, %if.then14.dp_altmode_notify.exit_crit_edge ], [ %phi.bo.i, %if.end.i.i ], [ 257, %if.then.i.dp_altmode_notify.exit_crit_edge ]
  %14 = ptrtoint ptr %alt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %alt, align 4
  %call6.i = call i32 @typec_altmode_notify(ptr noundef %15, i32 noundef %conf.0.i, ptr noundef %dp) #7
  br label %cleanup

cleanup:                                          ; preds = %dp_altmode_notify.exit, %if.end10.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %do.end ], [ %call1.i, %entry.cleanup_crit_edge ], [ %call12, %dp_altmode_notify.exit ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @typec_altmode_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @typec_altmode_vdm(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @typec_get_negotiated_svdm_version(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @typec_altmode2port(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pin_assignment_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.dp_altmode, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %conf = getelementptr inbounds %struct.typec_displayport_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %conf, align 4
  %and = lshr i32 %3, 8
  %shr = and i32 %and, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %cmp.i = icmp eq i32 %shr, 0
  br i1 %cmp.i, label %entry.get_count_order.exit_crit_edge, label %if.end.i

entry.get_count_order.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_count_order.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dec.i = add nsw i32 %shr, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i.i = icmp eq i32 %dec.i, 0
  %4 = tail call i32 @llvm.ctlz.i32(i32 %dec.i, i1 true) #7, !range !120
  %sub.i.i = sub nuw nsw i32 32, %4
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  br label %get_count_order.exit

get_count_order.exit:                             ; preds = %if.end.i, %entry.get_count_order.exit_crit_edge
  %retval.0.i = phi i32 [ %cond.i.i, %if.end.i ], [ 255, %entry.get_count_order.exit_crit_edge ]
  %and4 = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and4)
  %cmp = icmp eq i32 %and4, 1
  %alt = getelementptr inbounds %struct.dp_altmode, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %alt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %alt, align 4
  %vdo = getelementptr inbounds %struct.typec_altmode, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %vdo to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vdo, align 8
  %and6 = lshr i32 %8, 16
  %shr7 = and i32 %and6, 255
  %and11 = lshr i32 %8, 8
  %assignments.0.in = select i1 %cmp, i32 %shr7, i32 %and11
  %assignments.152 = trunc i32 %assignments.0.in to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %assignments.152)
  %tobool.not53 = icmp eq i8 %assignments.152, 0
  br i1 %tobool.not53, label %get_count_order.exit.for.end_crit_edge, label %for.body.preheader

get_count_order.exit.for.end_crit_edge:           ; preds = %get_count_order.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.preheader:                               ; preds = %get_count_order.exit
  %arrayidx = getelementptr [6 x ptr], ptr @pin_assignments, i32 0, i32 %retval.0.i
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.056 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %len.055 = phi i32 [ %len.1, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %assignments.1.in54 = phi i32 [ %11, %for.inc.for.body_crit_edge ], [ %assignments.0.in, %for.body.preheader ]
  %and15 = and i32 %assignments.1.in54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %for.body.for.inc_crit_edge, label %if.then17

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_cmp4(i32 %i.056, i32 %retval.0.i)
  %cmp19 = icmp eq i32 %i.056, %retval.0.i
  %add.ptr = getelementptr i8, ptr %buf, i32 %len.055
  %arrayidx25 = getelementptr [6 x ptr], ptr @pin_assignments, i32 0, i32 %i.056
  %arrayidx25.sink = select i1 %cmp19, ptr %arrayidx, ptr %arrayidx25
  %.str.6.sink = select i1 %cmp19, ptr @.str.9, ptr @.str.6
  %9 = ptrtoint ptr %arrayidx25.sink to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx25.sink, align 4
  %call26 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull %.str.6.sink, ptr noundef %10)
  %add27 = add i32 %call26, %len.055
  br label %for.inc

for.inc:                                          ; preds = %if.then17, %for.body.for.inc_crit_edge
  %len.1 = phi i32 [ %len.055, %for.body.for.inc_crit_edge ], [ %add27, %if.then17 ]
  %conv14 = lshr i32 %assignments.1.in54, 1
  %11 = and i32 %conv14, 127
  %inc = add i32 %i.056, 1
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %get_count_order.exit.for.end_crit_edge
  %len.0.lcssa = phi i32 [ 0, %get_count_order.exit.for.end_crit_edge ], [ %len.1, %for.inc.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  %sub = add i32 %len.0.lcssa, -1
  %arrayidx34 = getelementptr i8, ptr %buf, i32 %sub
  %12 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 10, ptr %arrayidx34, align 1
  ret i32 %len.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pin_assignment_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @__sysfs_match_string(ptr noundef nonnull @pin_assignments, i32 noundef 6, ptr noundef %buf) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %shl2 = shl i32 256, %call1
  %lock = getelementptr inbounds %struct.dp_altmode, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %conf3 = getelementptr inbounds %struct.typec_displayport_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %conf3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %conf3, align 4
  %and = and i32 %3, %shl2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end5:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.dp_altmode, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp6.not = icmp eq i32 %5, 0
  br i1 %cmp6.not, label %if.end8, label %if.end5.cleanup.sink.split_crit_edge

if.end5.cleanup.sink.split_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end8:                                          ; preds = %if.end5
  %and11 = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and11)
  %cmp12 = icmp eq i32 %and11, 1
  %alt = getelementptr inbounds %struct.dp_altmode, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %alt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %alt, align 4
  %vdo = getelementptr inbounds %struct.typec_altmode, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %vdo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vdo, align 8
  %and14 = lshr i32 %9, 16
  %shr = and i32 %and14, 255
  %and17 = lshr i32 %9, 8
  %assignments.0.in = select i1 %cmp12, i32 %shr, i32 %and17
  %and21 = lshr exact i32 %shl2, 8
  %conv23 = and i32 %and21, 255
  %and24 = and i32 %conv23, %assignments.0.in
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end8.cleanup.sink.split_crit_edge, label %if.end27

if.end8.cleanup.sink.split_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end27:                                         ; preds = %if.end8
  %and30 = and i32 %3, -65281
  %or = or i32 %and30, %shl2
  %alt31 = getelementptr inbounds %struct.dp_altmode, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %alt31 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %alt31, align 4
  %active = getelementptr inbounds %struct.typec_altmode, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool32.not = icmp sgt i8 %bf.load, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool36.not = icmp eq i32 %and11, 0
  %or.cond = select i1 %tobool32.not, i1 true, i1 %tobool36.not
  br i1 %or.cond, label %if.end27.if.end42_crit_edge, label %if.then37

if.end27.if.end42_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then37:                                        ; preds = %if.end27
  %call38 = tail call fastcc i32 @dp_altmode_configure_vdm(ptr noundef %1, i32 noundef %or)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then37.if.end42_crit_edge, label %if.then37.cleanup.sink.split_crit_edge

if.then37.cleanup.sink.split_crit_edge:           ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then37.if.end42_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.end42:                                         ; preds = %if.then37.if.end42_crit_edge, %if.end27.if.end42_crit_edge
  %13 = ptrtoint ptr %conf3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or, ptr %conf3, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end42, %if.then37.cleanup.sink.split_crit_edge, %if.end8.cleanup.sink.split_crit_edge, %if.end5.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -22, %if.end8.cleanup.sink.split_crit_edge ], [ -16, %if.end5.cleanup.sink.split_crit_edge ], [ %call38, %if.then37.cleanup.sink.split_crit_edge ], [ %size, %if.end42 ], [ %size, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @typec_altmode_enter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @typec_altmode_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dp_altmode_attention(ptr noundef %alt, i32 noundef %vdo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %alt, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.dp_altmode, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %state = getelementptr inbounds %struct.dp_altmode, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %vdo, ptr %1, align 4
  %conv1 = and i32 %3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1)
  %cmp.not = icmp eq i32 %conv1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %alt, ptr noundef nonnull @.str.35, i32 noundef %conv1) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call4 = tail call fastcc i32 @dp_altmode_status_update(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end.if.end10_crit_edge, label %do.end8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %alt, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.36) #10
  br label %if.end10

if.end10:                                         ; preds = %do.end8, %if.end.if.end10_crit_edge
  %conf1.i = getelementptr inbounds %struct.typec_displayport_data, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %conf1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %conf1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.end10.dp_altmode_notify.exit_crit_edge, label %if.then.i

if.end10.dp_altmode_notify.exit_crit_edge:        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %dp_altmode_notify.exit

if.then.i:                                        ; preds = %if.end10
  %and.i = lshr i32 %6, 8
  %shr.i = and i32 %and.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %cmp.i.i = icmp eq i32 %shr.i, 0
  br i1 %cmp.i.i, label %if.then.i.dp_altmode_notify.exit_crit_edge, label %if.end.i.i

if.then.i.dp_altmode_notify.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dp_altmode_notify.exit

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %dec.i.i = add nsw i32 %shr.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool.not.i.i.i = icmp eq i32 %dec.i.i, 0
  %7 = tail call i32 @llvm.ctlz.i32(i32 %dec.i.i, i1 true) #7, !range !120
  %sub.i.i.op.i = sub nuw nsw i32 34, %7
  %phi.bo.i = select i1 %tobool.not.i.i.i, i32 2, i32 %sub.i.i.op.i
  br label %dp_altmode_notify.exit

dp_altmode_notify.exit:                           ; preds = %if.end.i.i, %if.then.i.dp_altmode_notify.exit_crit_edge, %if.end10.dp_altmode_notify.exit_crit_edge
  %conf.0.i = phi i32 [ 1, %if.end10.dp_altmode_notify.exit_crit_edge ], [ %phi.bo.i, %if.end.i.i ], [ 257, %if.then.i.dp_altmode_notify.exit_crit_edge ]
  %alt.i = getelementptr inbounds %struct.dp_altmode, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %alt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %alt.i, align 4
  %call6.i = tail call i32 @typec_altmode_notify(ptr noundef %9, i32 noundef %conf.0.i, ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool12.not = icmp eq i32 %call6.i, 0
  br i1 %tobool12.not, label %dp_altmode_notify.exit.if.end18_crit_edge, label %do.end16

dp_altmode_notify.exit.if.end18_crit_edge:        ; preds = %dp_altmode_notify.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

do.end16:                                         ; preds = %dp_altmode_notify.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %alt, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.36) #10
  br label %if.end18

if.end18:                                         ; preds = %do.end16, %dp_altmode_notify.exit.if.end18_crit_edge
  br i1 %cmp.not, label %land.lhs.true, label %if.end18.if.end27_crit_edge

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

land.lhs.true:                                    ; preds = %if.end18
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp23.not = icmp eq i32 %11, 0
  br i1 %cmp23.not, label %land.lhs.true.if.end27_crit_edge, label %if.then25

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %work = getelementptr inbounds %struct.dp_altmode, ptr %1, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %12 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %work) #7
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %land.lhs.true.if.end27_crit_edge, %if.end18.if.end27_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_altmode_vdm(ptr nocapture noundef readonly %alt, i32 noundef %hdr, ptr nocapture noundef readonly %vdo, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %alt, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %and1 = and i32 %hdr, 31
  %lock = getelementptr inbounds %struct.dp_altmode, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %state = getelementptr inbounds %struct.dp_altmode, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.err_unlock_crit_edge

entry.err_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unlock

if.end:                                           ; preds = %entry
  %shr = lshr i32 %hdr, 6
  %and = and i32 %shr, 3
  %4 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %and, label %if.end.err_unlock_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb12
  ]

if.end.err_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unlock

sw.bb:                                            ; preds = %if.end
  %5 = zext i32 %and1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %and1, label %sw.bb.sw.epilog20_crit_edge [
    i32 4, label %sw.epilog20.thread58
    i32 5, label %sw.bb4
    i32 16, label %sw.bb6
    i32 17, label %sw.bb10
  ]

sw.bb.sw.epilog20_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog20

sw.epilog20.thread58:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %state, align 4
  br label %if.then23

sw.bb4:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %1, align 4
  %conf = getelementptr inbounds %struct.typec_displayport_data, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %conf to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %conf, align 4
  br label %sw.epilog20

sw.bb6:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %vdo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vdo, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %1, align 4
  %call9 = tail call fastcc i32 @dp_altmode_status_update(ptr noundef %1)
  br label %sw.epilog20

sw.bb10:                                          ; preds = %sw.bb
  %alt.i = getelementptr inbounds %struct.dp_altmode, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %alt.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %alt.i, align 4
  tail call void @sysfs_notify(ptr noundef %13, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #7
  %14 = ptrtoint ptr %alt.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %alt.i, align 4
  tail call void @sysfs_notify(ptr noundef %15, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.17) #7
  %conf1.i.i = getelementptr inbounds %struct.typec_displayport_data, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %conf1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %conf1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i, label %sw.bb10.dp_altmode_configured.exit_crit_edge, label %if.then.i.i

sw.bb10.dp_altmode_configured.exit_crit_edge:     ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  br label %dp_altmode_configured.exit

if.then.i.i:                                      ; preds = %sw.bb10
  %and.i.i = lshr i32 %17, 8
  %shr.i.i = and i32 %and.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i.i)
  %cmp.i.i.i = icmp eq i32 %shr.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.dp_altmode_configured.exit_crit_edge, label %if.end.i.i.i

if.then.i.i.dp_altmode_configured.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dp_altmode_configured.exit

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dec.i.i.i = add nsw i32 %shr.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %dec.i.i.i, 0
  %18 = tail call i32 @llvm.ctlz.i32(i32 %dec.i.i.i, i1 true) #7, !range !120
  %sub.i.i.op.i.i = sub nuw nsw i32 34, %18
  %phi.bo.i.i = select i1 %tobool.not.i.i.i.i, i32 2, i32 %sub.i.i.op.i.i
  br label %dp_altmode_configured.exit

dp_altmode_configured.exit:                       ; preds = %if.end.i.i.i, %if.then.i.i.dp_altmode_configured.exit_crit_edge, %sw.bb10.dp_altmode_configured.exit_crit_edge
  %conf.0.i.i = phi i32 [ 1, %sw.bb10.dp_altmode_configured.exit_crit_edge ], [ %phi.bo.i.i, %if.end.i.i.i ], [ 257, %if.then.i.i.dp_altmode_configured.exit_crit_edge ]
  %19 = ptrtoint ptr %alt.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %alt.i, align 4
  %call6.i.i = tail call i32 @typec_altmode_notify(ptr noundef %20, i32 noundef %conf.0.i.i, ptr noundef %1) #7
  br label %sw.epilog20

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %and1)
  %cond = icmp eq i32 %and1, 17
  br i1 %cond, label %sw.bb13, label %sw.bb12.sw.epilog20_crit_edge

sw.bb12.sw.epilog20_crit_edge:                    ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog20

sw.bb13:                                          ; preds = %sw.bb12
  %conf15 = getelementptr inbounds %struct.typec_displayport_data, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %conf15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %conf15, align 4
  %alt.i41 = getelementptr inbounds %struct.dp_altmode, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %alt.i41 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %alt.i41, align 4
  tail call void @sysfs_notify(ptr noundef %23, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #7
  %24 = ptrtoint ptr %alt.i41 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %alt.i41, align 4
  tail call void @sysfs_notify(ptr noundef %25, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.17) #7
  %26 = ptrtoint ptr %conf15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %conf15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i.i43 = icmp eq i32 %27, 0
  br i1 %tobool.not.i.i43, label %sw.bb13.dp_altmode_configured.exit55_crit_edge, label %if.then.i.i47

sw.bb13.dp_altmode_configured.exit55_crit_edge:   ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  br label %dp_altmode_configured.exit55

if.then.i.i47:                                    ; preds = %sw.bb13
  %and.i.i44 = lshr i32 %27, 8
  %shr.i.i45 = and i32 %and.i.i44, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i.i45)
  %cmp.i.i.i46 = icmp eq i32 %shr.i.i45, 0
  br i1 %cmp.i.i.i46, label %if.then.i.i47.dp_altmode_configured.exit55_crit_edge, label %if.end.i.i.i52

if.then.i.i47.dp_altmode_configured.exit55_crit_edge: ; preds = %if.then.i.i47
  call void @__sanitizer_cov_trace_pc() #9
  br label %dp_altmode_configured.exit55

if.end.i.i.i52:                                   ; preds = %if.then.i.i47
  call void @__sanitizer_cov_trace_pc() #9
  %dec.i.i.i48 = add nsw i32 %shr.i.i45, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i48)
  %tobool.not.i.i.i.i49 = icmp eq i32 %dec.i.i.i48, 0
  %28 = tail call i32 @llvm.ctlz.i32(i32 %dec.i.i.i48, i1 true) #7, !range !120
  %sub.i.i.op.i.i50 = sub nuw nsw i32 34, %28
  %phi.bo.i.i51 = select i1 %tobool.not.i.i.i.i49, i32 2, i32 %sub.i.i.op.i.i50
  br label %dp_altmode_configured.exit55

dp_altmode_configured.exit55:                     ; preds = %if.end.i.i.i52, %if.then.i.i47.dp_altmode_configured.exit55_crit_edge, %sw.bb13.dp_altmode_configured.exit55_crit_edge
  %conf.0.i.i53 = phi i32 [ 1, %sw.bb13.dp_altmode_configured.exit55_crit_edge ], [ %phi.bo.i.i51, %if.end.i.i.i52 ], [ 257, %if.then.i.i47.dp_altmode_configured.exit55_crit_edge ]
  %29 = ptrtoint ptr %alt.i41 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %alt.i41, align 4
  %call6.i.i54 = tail call i32 @typec_altmode_notify(ptr noundef %30, i32 noundef %conf.0.i.i53, ptr noundef %1) #7
  br label %sw.epilog20

sw.epilog20:                                      ; preds = %dp_altmode_configured.exit55, %sw.bb12.sw.epilog20_crit_edge, %dp_altmode_configured.exit, %sw.bb6, %sw.bb4, %sw.bb.sw.epilog20_crit_edge
  %ret.0.ph = phi i32 [ 0, %sw.bb4 ], [ %call9, %sw.bb6 ], [ %call6.i.i, %dp_altmode_configured.exit ], [ 0, %sw.bb.sw.epilog20_crit_edge ], [ 0, %sw.bb12.sw.epilog20_crit_edge ], [ %call6.i.i54, %dp_altmode_configured.exit55 ]
  %31 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pr = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp22.not = icmp eq i32 %.pr, 0
  br i1 %cmp22.not, label %sw.epilog20.err_unlock_crit_edge, label %sw.epilog20.if.then23_crit_edge

sw.epilog20.if.then23_crit_edge:                  ; preds = %sw.epilog20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23

sw.epilog20.err_unlock_crit_edge:                 ; preds = %sw.epilog20
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unlock

if.then23:                                        ; preds = %sw.epilog20.if.then23_crit_edge, %sw.epilog20.thread58
  %ret.061 = phi i32 [ 0, %sw.epilog20.thread58 ], [ %ret.0.ph, %sw.epilog20.if.then23_crit_edge ]
  %work = getelementptr inbounds %struct.dp_altmode, ptr %1, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %32 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %32, ptr noundef %work) #7
  br label %err_unlock

err_unlock:                                       ; preds = %if.then23, %sw.epilog20.err_unlock_crit_edge, %if.end.err_unlock_crit_edge, %entry.err_unlock_crit_edge
  %ret.1 = phi i32 [ %ret.061, %if.then23 ], [ %ret.0.ph, %sw.epilog20.err_unlock_crit_edge ], [ -16, %entry.err_unlock_crit_edge ], [ 0, %if.end.err_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_altmode_activate(ptr noundef %alt, i32 noundef %activate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %activate)
  %tobool.not = icmp eq i32 %activate, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @typec_altmode_enter(ptr noundef %alt, ptr noundef null) #7
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @typec_altmode_exit(ptr noundef %alt) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call1, %cond.false ]
  ret i32 %cond
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dp_altmode_status_update(ptr nocapture noundef %dp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conf = getelementptr inbounds %struct.typec_displayport_data, ptr %dp, i32 0, i32 1
  %0 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %conf, align 4
  %2 = and i32 %1, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  %3 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dp, align 4
  %and3 = lshr i32 %4, 7
  %and3.lobit = and i32 %and3, 1
  %5 = trunc i32 %and3.lobit to i8
  %and15 = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool16.not
  br i1 %or.cond, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %conf to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %conf, align 4
  %state = getelementptr inbounds %struct.dp_altmode, ptr %dp, i32 0, i32 1
  %7 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %state, align 4
  br label %if.end50

if.else:                                          ; preds = %entry
  %and21 = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.else25, label %if.then23

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %state24 = getelementptr inbounds %struct.dp_altmode, ptr %dp, i32 0, i32 1
  %8 = ptrtoint ptr %state24 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %state24, align 4
  br label %if.end50

if.else25:                                        ; preds = %if.else
  %conv = and i32 %1, 3
  %and30 = and i32 %conv, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.then32, label %if.else36

if.then32:                                        ; preds = %if.else25
  %trunc = trunc i32 %4 to i2
  %9 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.48)
  switch i2 %trunc, label %if.then32.unreachabledefault [
    i2 0, label %if.then32.if.then34_crit_edge
    i2 1, label %if.then32.sw.epilog.sink.split.i_crit_edge
    i2 -2, label %if.then32.sw.bb7.i_crit_edge
    i2 -1, label %if.then32.sw.bb7.i_crit_edge70
  ]

if.then32.sw.bb7.i_crit_edge70:                   ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7.i

if.then32.sw.bb7.i_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7.i

if.then32.sw.epilog.sink.split.i_crit_edge:       ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.i

if.then32.if.then34_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then34

sw.bb7.i:                                         ; preds = %if.then32.sw.bb7.i_crit_edge, %if.then32.sw.bb7.i_crit_edge70
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb7.i, %if.then32.sw.epilog.sink.split.i_crit_edge
  %.sink64.i = phi i32 [ 8, %sw.bb7.i ], [ 16, %if.then32.sw.epilog.sink.split.i_crit_edge ]
  %.sink63.i = phi i32 [ 16, %sw.bb7.i ], [ 8, %if.then32.sw.epilog.sink.split.i_crit_edge ]
  %conf.0.ph.i = phi i32 [ 6, %sw.bb7.i ], [ 5, %if.then32.sw.epilog.sink.split.i_crit_edge ]
  br i1 %tobool.not, label %if.then.i, label %sw.epilog.sink.split.i.if.end45.i_crit_edge

sw.epilog.sink.split.i.if.end45.i_crit_edge:      ; preds = %sw.epilog.sink.split.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45.i

if.then32.unreachabledefault:                     ; preds = %if.then32
  unreachable

if.then.i:                                        ; preds = %sw.epilog.sink.split.i
  %port13.i = getelementptr inbounds %struct.dp_altmode, ptr %dp, i32 0, i32 6
  %10 = ptrtoint ptr %port13.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port13.i, align 4
  %vdo14.i = getelementptr inbounds %struct.typec_altmode, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %vdo14.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vdo14.i, align 8
  %and15.i = lshr i32 %13, %.sink63.i
  %alt9.i = getelementptr inbounds %struct.dp_altmode, ptr %dp, i32 0, i32 5
  %14 = ptrtoint ptr %alt9.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %alt9.i, align 4
  %vdo10.i = getelementptr inbounds %struct.typec_altmode, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %vdo10.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vdo10.i, align 8
  %and11.i = lshr i32 %17, %.sink64.i
  %and17.i = and i32 %and11.i, %and15.i
  %conv18.i = trunc i32 %and17.i to i8
  %and23.i = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  %18 = and i8 %conv18.i, 42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool27.not.i = icmp eq i8 %18, 0
  %or.cond.i = select i1 %tobool24.not.i, i1 true, i1 %tobool27.not.i
  %19 = and i8 %conv18.i, 21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool34.not.i = icmp eq i8 %19, 0
  %spec.select.i = select i1 %tobool34.not.i, i8 %conv18.i, i8 %19
  %pin_assign.1.i = select i1 %or.cond.i, i8 %spec.select.i, i8 %18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %pin_assign.1.i)
  %tobool40.not.i = icmp eq i8 %pin_assign.1.i, 0
  br i1 %tobool40.not.i, label %if.then.i.if.end50_crit_edge, label %if.end42.i

if.then.i.if.end50_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.end42.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv43.i = zext i8 %pin_assign.1.i to i32
  %shl.i = shl nuw nsw i32 %conv43.i, 8
  %or44.i = or i32 %shl.i, %conf.0.ph.i
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.end42.i, %sw.epilog.sink.split.i.if.end45.i_crit_edge
  %conf.1.i = phi i32 [ %conf.0.ph.i, %sw.epilog.sink.split.i.if.end45.i_crit_edge ], [ %or44.i, %if.end42.i ]
  %20 = ptrtoint ptr %conf to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conf.1.i, ptr %conf, align 4
  br label %if.then34

if.then34:                                        ; preds = %if.end45.i, %if.then32.if.then34_crit_edge
  %state35 = getelementptr inbounds %struct.dp_altmode, ptr %dp, i32 0, i32 1
  %21 = ptrtoint ptr %state35 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 3, ptr %state35, align 4
  br label %if.end50

if.else36:                                        ; preds = %if.else25
  %hpd37 = getelementptr inbounds %struct.dp_altmode, ptr %dp, i32 0, i32 2
  %22 = ptrtoint ptr %hpd37 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %hpd37, align 4, !range !119
  %24 = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.lobit, i32 %24)
  %cmp.not = icmp eq i32 %and3.lobit, %24
  br i1 %cmp.not, label %if.else36.if.end50_crit_edge, label %if.then43

if.else36.if.end50_crit_edge:                     ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then43:                                        ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #9
  %connector_fwnode = getelementptr inbounds %struct.dp_altmode, ptr %dp, i32 0, i32 7
  %25 = ptrtoint ptr %connector_fwnode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %connector_fwnode, align 4
  tail call void @drm_connector_oob_hotplug_event(ptr noundef %26) #7
  %27 = ptrtoint ptr %hpd37 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %5, ptr %hpd37, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then43, %if.else36.if.end50_crit_edge, %if.then34, %if.then.i.if.end50_crit_edge, %if.then23, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ 0, %if.then23 ], [ 0, %if.then43 ], [ 0, %if.else36.if.end50_crit_edge ], [ 0, %if.then34 ], [ -22, %if.then.i.if.end50_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_notify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__typec_altmode_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !19, !21, !22, !24, !26, !28, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !48, !49, !50, !51, !52, !53, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !91, !92, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !107}
!llvm.module.flags = !{!109, !110, !111, !112, !113, !114, !115, !116}
!llvm.ident = !{!117}

!0 = !{ptr @dp_altmode_probe.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/usb/typec/altmodes/displayport.c", i32 546, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @dp_altmode_probe.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/usb/typec/altmodes/displayport.c", i32 547, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/usb/typec/altmodes/displayport.c", i32 551, i32 14}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/usb/typec/altmodes/displayport.c", i32 555, i32 55}
!10 = !{ptr @__ksymtab_dp_altmode_probe, !11, !"__ksymtab_dp_altmode_probe", i1 false, i1 false}
!11 = !{!"../drivers/usb/typec/altmodes/displayport.c", i32 566, i32 1}
!12 = !{ptr @__ksymtab_dp_altmode_remove, !13, !"__ksymtab_dp_altmode_remove", i1 false, i1 false}
!13 = !{!"../drivers/usb/typec/altmodes/displayport.c", i32 582, i32 1}
!14 = !{ptr @__initcall__kmod_typec_displayport__246_599_dp_altmode_driver_init6, !15, !"__initcall__kmod_typec_displayport__246_599_dp_altmode_driver_init6", i1 false, i1 false}
!15 = !{!"../drivers/usb/typec/altmodes/displayport.c", i32 599, i32 1}
!16 = !{ptr @__exitcall_dp_altmode_driver_exit, !15, !"__exitcall_dp_altmode_driver_exit", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_author247, !18, !"__UNIQUE_ID_author247", i1 false, i1 false}
!18 = !{!"../drivers/usb/typec/altmodes/displayport.c", i32 601, i32 1}
!19 = !{ptr @__UNIQUE_ID_file248, !20, !"__UNIQUE_ID_file248", i1 false, i1 false}
!20 = !{!"../drivers/usb/typec/altmodes/displayport.c", i32 602, i32 1}
!21 = !{ptr @__UNIQUE_ID_license249, !20, !"__UNIQUE_ID_license249", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_description250, !23, !"__UNIQUE_ID_description250", i1 false, i1 false}
!23 = !{!"../drivers/usb/typec/altmodes/displayport.c", i32 603, i32 1}
!24 = !{ptr @dp_altmode_group, !25, !"dp_altmode_group", i1 false, i1 false}
!25 = !{!"../drivers/usb/typec/altmodes/displayport.c", i32 517, i32 37}
!26 = !{ptr @dp_altmode_attrs, !27, !"dp_altmode_attrs", i1 false, i1 false}
!27 = !{!"../drivers/usb/typec/altmodes/displayport.c", i32 511, i32 26}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/typec/altmodes/displayport.c", i32 411, i32 8}
!30 = !{ptr @dev_attr_configuration, !29, !"dev_attr_configuration", i1 false, i1 false}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/typec/altmodes/displayport.c", i32 396, i32 21}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/typec/altmodes/displayport.c", i32 396, i32 34}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/typec/altmodes/displayport.c", i32 396, i32 42}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/typec/altmodes/displayport.c", i32 400, i32 30}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/typec/altmodes/displayport.c", i32 332, i32 20}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/usb/typec/altmodes/displayport.c", i32 333, i32 20}
!43 = !{ptr @configurations, !44, !"configurations", i1 false, i1 false}
!44 = !{!"../drivers/usb/typec/altmodes/displayport.c", i32 330, i32 27}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/typec/altmodes/displayport.c", i32 175, i32 3}
!47 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @dp_altmode_configure_vdm._entry, !46, !"_entry", i1 false, i1 false}
!52 = !{ptr @dp_altmode_configure_vdm._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/usb/typec/altmodes/displayport.c", i32 509, i32 8}
!55 = !{ptr @dev_attr_pin_assignment, !54, !"dev_attr_pin_assignment", i1 false, i1 false}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/typec/altmodes/displayport.c", i32 414, i32 22}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/typec/altmodes/displayport.c", i32 415, i32 22}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/typec/altmodes/displayport.c", i32 416, i32 22}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/typec/altmodes/displayport.c", i32 417, i32 22}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/typec/altmodes/displayport.c", i32 418, i32 22}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/typec/altmodes/displayport.c", i32 419, i32 22}
!68 = !{ptr @pin_assignments, !69, !"pin_assignments", i1 false, i1 false}
!69 = !{!"../drivers/usb/typec/altmodes/displayport.c", i32 413, i32 27}
!70 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/typec/altmodes/displayport.c", i32 201, i32 4}
!72 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @dp_altmode_work._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @dp_altmode_work._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/usb/typec/altmodes/displayport.c", i32 211, i32 4}
!77 = !{ptr @dp_altmode_work._entry.26, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @dp_altmode_work._entry_ptr.28, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/typec/altmodes/displayport.c", i32 218, i32 4}
!81 = !{ptr @dp_altmode_work._entry.29, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @dp_altmode_work._entry_ptr.31, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/usb/typec/altmodes/displayport.c", i32 223, i32 4}
!85 = !{ptr @dp_altmode_work._entry.32, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @dp_altmode_work._entry_ptr.34, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @dp_altmode_ops, !88, !"dp_altmode_ops", i1 false, i1 false}
!88 = !{!"../drivers/usb/typec/altmodes/displayport.c", i32 324, i32 39}
!89 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/usb/typec/altmodes/displayport.c", i32 245, i32 3}
!91 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @dp_altmode_attention._entry, !90, !"_entry", i1 false, i1 false}
!94 = !{ptr @dp_altmode_attention._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/usb/typec/altmodes/displayport.c", i32 249, i32 3}
!97 = !{ptr @dp_altmode_attention._entry.38, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @dp_altmode_attention._entry_ptr.40, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/usb/typec/altmodes/displayport.c", i32 252, i32 3}
!101 = !{ptr @dp_altmode_attention._entry.41, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @dp_altmode_attention._entry_ptr.43, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.44, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/usb/typec/altmodes/displayport.c", i32 595, i32 11}
!105 = !{ptr @dp_altmode_driver, !106, !"dp_altmode_driver", i1 false, i1 false}
!106 = !{!"../drivers/usb/typec/altmodes/displayport.c", i32 590, i32 36}
!107 = !{ptr @dp_typec_id, !108, !"dp_typec_id", i1 false, i1 false}
!108 = !{!"../drivers/usb/typec/altmodes/displayport.c", i32 584, i32 37}
!109 = !{i32 1, !"wchar_size", i32 2}
!110 = !{i32 1, !"min_enum_size", i32 4}
!111 = !{i32 8, !"branch-target-enforcement", i32 0}
!112 = !{i32 8, !"sign-return-address", i32 0}
!113 = !{i32 8, !"sign-return-address-all", i32 0}
!114 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!115 = !{i32 7, !"uwtable", i32 1}
!116 = !{i32 7, !"frame-pointer", i32 2}
!117 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!118 = !{!"auto-init"}
!119 = !{i8 0, i8 2}
!120 = !{i32 0, i32 33}
