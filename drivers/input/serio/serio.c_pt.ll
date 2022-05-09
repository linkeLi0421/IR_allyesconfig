; ModuleID = '/llk/IR_all_yes/drivers/input/serio/serio.c_pt.bc'
source_filename = "../drivers/input/serio/serio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+serio_rescan\22, \22a\22\09"
module asm "\09.weak\09__crc_serio_rescan\09\09\09\09"
module asm "\09.long\09__crc_serio_rescan\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serio_rescan:\09\09\09\09\09"
module asm "\09.asciz \09\22serio_rescan\22\09\09\09\09\09"
module asm "__kstrtabns_serio_rescan:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+serio_reconnect\22, \22a\22\09"
module asm "\09.weak\09__crc_serio_reconnect\09\09\09\09"
module asm "\09.long\09__crc_serio_reconnect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serio_reconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22serio_reconnect\22\09\09\09\09\09"
module asm "__kstrtabns_serio_reconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__serio_register_port\22, \22a\22\09"
module asm "\09.weak\09__crc___serio_register_port\09\09\09\09"
module asm "\09.long\09__crc___serio_register_port\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___serio_register_port:\09\09\09\09\09"
module asm "\09.asciz \09\22__serio_register_port\22\09\09\09\09\09"
module asm "__kstrtabns___serio_register_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+serio_unregister_port\22, \22a\22\09"
module asm "\09.weak\09__crc_serio_unregister_port\09\09\09\09"
module asm "\09.long\09__crc_serio_unregister_port\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serio_unregister_port:\09\09\09\09\09"
module asm "\09.asciz \09\22serio_unregister_port\22\09\09\09\09\09"
module asm "__kstrtabns_serio_unregister_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+serio_unregister_child_port\22, \22a\22\09"
module asm "\09.weak\09__crc_serio_unregister_child_port\09\09\09\09"
module asm "\09.long\09__crc_serio_unregister_child_port\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serio_unregister_child_port:\09\09\09\09\09"
module asm "\09.asciz \09\22serio_unregister_child_port\22\09\09\09\09\09"
module asm "__kstrtabns_serio_unregister_child_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__serio_register_driver\22, \22a\22\09"
module asm "\09.weak\09__crc___serio_register_driver\09\09\09\09"
module asm "\09.long\09__crc___serio_register_driver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___serio_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22__serio_register_driver\22\09\09\09\09\09"
module asm "__kstrtabns___serio_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+serio_unregister_driver\22, \22a\22\09"
module asm "\09.weak\09__crc_serio_unregister_driver\09\09\09\09"
module asm "\09.long\09__crc_serio_unregister_driver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serio_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22serio_unregister_driver\22\09\09\09\09\09"
module asm "__kstrtabns_serio_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+serio_open\22, \22a\22\09"
module asm "\09.weak\09__crc_serio_open\09\09\09\09"
module asm "\09.long\09__crc_serio_open\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serio_open:\09\09\09\09\09"
module asm "\09.asciz \09\22serio_open\22\09\09\09\09\09"
module asm "__kstrtabns_serio_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+serio_close\22, \22a\22\09"
module asm "\09.weak\09__crc_serio_close\09\09\09\09"
module asm "\09.long\09__crc_serio_close\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serio_close:\09\09\09\09\09"
module asm "\09.asciz \09\22serio_close\22\09\09\09\09\09"
module asm "__kstrtabns_serio_close:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+serio_interrupt\22, \22a\22\09"
module asm "\09.weak\09__crc_serio_interrupt\09\09\09\09"
module asm "\09.long\09__crc_serio_interrupt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serio_interrupt:\09\09\09\09\09"
module asm "\09.asciz \09\22serio_interrupt\22\09\09\09\09\09"
module asm "__kstrtabns_serio_interrupt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+serio_bus\22, \22a\22\09"
module asm "\09.weak\09__crc_serio_bus\09\09\09\09"
module asm "\09.long\09__crc_serio_bus\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_serio_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22serio_bus\22\09\09\09\09\09"
module asm "__kstrtabns_serio_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.driver_attribute = type { %struct.attribute, ptr, ptr }
%struct.serio_event = type { i32, ptr, ptr, %struct.list_head }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.serio_driver = type { ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_author187 = internal constant [45 x i8] c"serio.author=Vojtech Pavlik <vojtech@ucw.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description188 = internal constant [41 x i8] c"serio.description=Serio abstraction core\00", section ".modinfo", align 1
@__UNIQUE_ID_file189 = internal constant [37 x i8] c"serio.file=drivers/input/serio/serio\00", section ".modinfo", align 1
@__UNIQUE_ID_license190 = internal constant [18 x i8] c"serio.license=GPL\00", section ".modinfo", align 1
@__kstrtab_serio_rescan = external dso_local constant [0 x i8], align 1
@__kstrtabns_serio_rescan = external dso_local constant [0 x i8], align 1
@__ksymtab_serio_rescan = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serio_rescan to i32), ptr @__kstrtab_serio_rescan, ptr @__kstrtabns_serio_rescan }, section "___ksymtab+serio_rescan", align 4
@__kstrtab_serio_reconnect = external dso_local constant [0 x i8], align 1
@__kstrtabns_serio_reconnect = external dso_local constant [0 x i8], align 1
@__ksymtab_serio_reconnect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serio_reconnect to i32), ptr @__kstrtab_serio_reconnect, ptr @__kstrtabns_serio_reconnect }, section "___ksymtab+serio_reconnect", align 4
@__kstrtab___serio_register_port = external dso_local constant [0 x i8], align 1
@__kstrtabns___serio_register_port = external dso_local constant [0 x i8], align 1
@__ksymtab___serio_register_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__serio_register_port to i32), ptr @__kstrtab___serio_register_port, ptr @__kstrtabns___serio_register_port }, section "___ksymtab+__serio_register_port", align 4
@serio_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.35, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @serio_mutex, i64 52), ptr getelementptr (i8, ptr @serio_mutex, i64 52) }, ptr @serio_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.36, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_serio_unregister_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_serio_unregister_port = external dso_local constant [0 x i8], align 1
@__ksymtab_serio_unregister_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serio_unregister_port to i32), ptr @__kstrtab_serio_unregister_port, ptr @__kstrtabns_serio_unregister_port }, section "___ksymtab+serio_unregister_port", align 4
@__kstrtab_serio_unregister_child_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_serio_unregister_child_port = external dso_local constant [0 x i8], align 1
@__ksymtab_serio_unregister_child_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serio_unregister_child_port to i32), ptr @__kstrtab_serio_unregister_child_port, ptr @__kstrtabns_serio_unregister_child_port }, section "___ksymtab+serio_unregister_child_port", align 4
@serio_bus = dso_local global { %struct.bus_type, [32 x i8] } { %struct.bus_type { ptr @.str.3, ptr null, ptr null, ptr null, ptr null, ptr @serio_driver_groups, ptr @serio_bus_match, ptr @serio_uevent, ptr @serio_driver_probe, ptr null, ptr @serio_driver_remove, ptr @serio_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @serio_pm_ops, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__serio_register_driver._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 831, ptr null, ptr null }, align 1
@.str = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013serio: driver_register() failed for %s, error: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"__serio_register_driver\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/input/serio/serio.c\00", [36 x i8] zeroinitializer }, align 32
@__serio_register_driver._entry_ptr = internal global ptr @__serio_register_driver._entry, section ".printk_index", align 4
@__kstrtab___serio_register_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns___serio_register_driver = external dso_local constant [0 x i8], align 1
@__ksymtab___serio_register_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__serio_register_driver to i32), ptr @__kstrtab___serio_register_driver, ptr @__kstrtabns___serio_register_driver }, section "___ksymtab+__serio_register_driver", align 4
@serio_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @serio_list, ptr @serio_list }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_serio_unregister_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_serio_unregister_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_serio_unregister_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serio_unregister_driver to i32), ptr @__kstrtab_serio_unregister_driver, ptr @__kstrtabns_serio_unregister_driver }, section "___ksymtab+serio_unregister_driver", align 4
@__kstrtab_serio_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_serio_open = external dso_local constant [0 x i8], align 1
@__ksymtab_serio_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serio_open to i32), ptr @__kstrtab_serio_open, ptr @__kstrtabns_serio_open }, section "___ksymtab+serio_open", align 4
@__kstrtab_serio_close = external dso_local constant [0 x i8], align 1
@__kstrtabns_serio_close = external dso_local constant [0 x i8], align 1
@__ksymtab_serio_close = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serio_close to i32), ptr @__kstrtab_serio_close, ptr @__kstrtabns_serio_close }, section "___ksymtab+serio_close", align 4
@__kstrtab_serio_interrupt = external dso_local constant [0 x i8], align 1
@__kstrtabns_serio_interrupt = external dso_local constant [0 x i8], align 1
@__ksymtab_serio_interrupt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serio_interrupt to i32), ptr @__kstrtab_serio_interrupt, ptr @__kstrtabns_serio_interrupt }, section "___ksymtab+serio_interrupt", align 4
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"serio\00", [26 x i8] zeroinitializer }, align 32
@serio_driver_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @serio_driver_group, ptr null], [24 x i8] zeroinitializer }, align 32
@serio_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @serio_suspend, ptr @serio_resume, ptr null, ptr null, ptr @serio_suspend, ptr @serio_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_serio_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_serio_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_serio_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @serio_bus to i32), ptr @__kstrtab_serio_bus, ptr @__kstrtabns_serio_bus }, section "___ksymtab+serio_bus", align 4
@serio_event_work = internal global { %struct.work_struct, [52 x i8] } { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @serio_event_work, i64 4), ptr getelementptr (i8, ptr @serio_event_work, i64 4) }, ptr @serio_handle_event, %struct.lockdep_map { ptr @serio_event_work, [2 x ptr] zeroinitializer, ptr @.str.48, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_serio__191_1051_serio_init4 = internal global ptr @serio_init, section ".initcall4.init", align 4
@__exitcall_serio_exit = internal global ptr @serio_exit, section ".exitcall.exit", align 4
@serio_event_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@serio_event_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @serio_event_list, ptr @serio_event_list }, [24 x i8] zeroinitializer }, align 32
@serio_queue_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013serio: Not enough memory to queue event %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"serio_queue_event\00", [46 x i8] zeroinitializer }, align 32
@serio_queue_event._entry_ptr = internal global ptr @serio_queue_event._entry, section ".printk_index", align 4
@serio_queue_event._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.2, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014serio: Can't get module reference, dropping event %d\0A\00", [40 x i8] zeroinitializer }, align 32
@serio_queue_event._entry_ptr.8 = internal global ptr @serio_queue_event._entry.6, section ".printk_index", align 4
@system_long_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"serio_event_lock\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@serio_init_port.serio_no = internal global { %struct.atomic_t, [28 x i8] } { %struct.atomic_t { i32 -1 }, [28 x i8] zeroinitializer }, align 32
@serio_init_port.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&serio->lock\00", [19 x i8] zeroinitializer }, align 32
@serio_init_port.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&serio->drv_mutex\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"serio%lu\00", [23 x i8] zeroinitializer }, align 32
@serio_device_attr_groups = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @serio_id_attr_group, ptr @serio_device_attr_group, ptr null], [20 x i8] zeroinitializer }, align 32
@serio_id_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.14, ptr null, ptr null, ptr @serio_device_id_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@serio_device_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @serio_device_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"id\00", [29 x i8] zeroinitializer }, align 32
@serio_device_id_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @dev_attr_type, ptr @dev_attr_proto, ptr @dev_attr_id, ptr @dev_attr_extra, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_type = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @type_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_proto = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @proto_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_extra = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @extra_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02x\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"proto\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"extra\00", [26 x i8] zeroinitializer }, align 32
@serio_device_attrs = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @dev_attr_modalias, ptr @dev_attr_description, ptr @dev_attr_drvctl, ptr @dev_attr_bind_mode, ptr @dev_attr_firmware_id, ptr null], [40 x i8] zeroinitializer }, align 32
@dev_attr_modalias = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @modalias_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_description = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @serio_show_description, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_drvctl = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @drvctl_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_bind_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @serio_show_bind_mode, ptr @serio_set_bind_mode }, [36 x i8] zeroinitializer }, align 32
@dev_attr_firmware_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @firmware_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"modalias\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"serio:ty%02Xpr%02Xid%02Xex%02X\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"description\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"drvctl\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reconnect\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rescan\00", [25 x i8] zeroinitializer }, align 32
@serio_bind_driver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 107, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"device_bind_driver() failed for %s (%s) and %s, error: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"serio_bind_driver\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@serio_bind_driver._entry_ptr = internal global ptr @serio_bind_driver._entry, section ".printk_index", align 4
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bind_mode\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"manual\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auto\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"firmware_id\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"serio_mutex.wait_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"serio_mutex\00", [20 x i8] zeroinitializer }, align 32
@serio_find_driver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 124, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"device_attach() failed for %s (%s), error: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"serio_find_driver\00", [46 x i8] zeroinitializer }, align 32
@serio_find_driver._entry_ptr = internal global ptr @serio_find_driver._entry, section ".printk_index", align 4
@serio_driver_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @serio_driver_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@serio_driver_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @driver_attr_description, ptr @driver_attr_bind_mode, ptr null], [20 x i8] zeroinitializer }, align 32
@driver_attr_description = internal global { %struct.driver_attribute, [36 x i8] } { %struct.driver_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @description_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@driver_attr_bind_mode = internal global { %struct.driver_attribute, [36 x i8] } { %struct.driver_attribute { %struct.attribute { ptr @.str.31, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bind_mode_show, ptr @bind_mode_store }, [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(none)\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SERIO_TYPE=%02x\00", [16 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SERIO_PROTO=%02x\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SERIO_ID=%02x\00", [18 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SERIO_EXTRA=%02x\00", [47 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"MODALIAS=serio:ty%02Xpr%02Xid%02Xex%02X\00", [56 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SERIO_FIRMWARE_ID=%s\00", [43 x i8] zeroinitializer }, align 32
@serio_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 946, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"fast reconnect failed with error %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"serio_resume\00", [19 x i8] zeroinitializer }, align 32
@serio_resume._entry_ptr = internal global ptr @serio_resume._entry, section ".printk_index", align 4
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"serio_event_work\00", [47 x i8] zeroinitializer }, align 32
@serio_add_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 546, ptr @.str.51, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"device_add() failed for %s (%s), error: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"serio_add_port\00", [17 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@serio_add_port._entry_ptr = internal global ptr @serio_add_port._entry, section ".printk_index", align 4
@serio_attach_driver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 810, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014serio: driver_attach() failed for %s with error %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"serio_attach_driver\00", [44 x i8] zeroinitializer }, align 32
@serio_attach_driver._entry_ptr = internal global ptr @serio_attach_driver._entry, section ".printk_index", align 4
@serio_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 1033, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013serio: Failed to register serio bus, error: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"serio_init\00", [21 x i8] zeroinitializer }, align 32
@serio_init._entry_ptr = internal global ptr @serio_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.58 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.59 = private unnamed_addr constant [12 x i8] c"serio_mutex\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [10 x i8] c"serio_bus\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1013, i32 17 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 830, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [11 x i8] c"serio_list\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 34, i32 8 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1014, i32 11 }
@___asan_gen_.80 = private unnamed_addr constant [20 x i8] c"serio_driver_groups\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [13 x i8] c"serio_pm_ops\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 961, i32 32 }
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"serio_event_work\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"serio_event_lock\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"serio_event_list\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 148, i32 8 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 266, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 272, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 147, i32 8 }
@___asan_gen_.113 = private unnamed_addr constant [9 x i8] c"serio_no\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 499, i32 18 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 506, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 507, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 509, i32 28 }
@___asan_gen_.131 = private unnamed_addr constant [25 x i8] c"serio_device_attr_groups\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 480, i32 38 }
@___asan_gen_.134 = private unnamed_addr constant [20 x i8] c"serio_id_attr_group\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 456, i32 37 }
@___asan_gen_.137 = private unnamed_addr constant [24 x i8] c"serio_device_attr_group\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 476, i32 37 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 457, i32 10 }
@___asan_gen_.143 = private unnamed_addr constant [22 x i8] c"serio_device_id_attrs\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 448, i32 26 }
@___asan_gen_.146 = private unnamed_addr constant [14 x i8] c"dev_attr_type\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [15 x i8] c"dev_attr_proto\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [12 x i8] c"dev_attr_id\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 445, i32 8 }
@___asan_gen_.155 = private unnamed_addr constant [15 x i8] c"dev_attr_extra\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 443, i32 8 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 361, i32 22 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 444, i32 8 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 446, i32 8 }
@___asan_gen_.170 = private unnamed_addr constant [19 x i8] c"serio_device_attrs\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 467, i32 26 }
@___asan_gen_.173 = private unnamed_addr constant [18 x i8] c"dev_attr_modalias\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [21 x i8] c"dev_attr_description\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [16 x i8] c"dev_attr_drvctl\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [19 x i8] c"dev_attr_bind_mode\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [21 x i8] c"dev_attr_firmware_id\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 461, i32 8 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 354, i32 22 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 463, i32 8 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 347, i32 22 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 462, i32 8 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 392, i32 20 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 394, i32 27 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 396, i32 27 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 104, i32 4 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 464, i32 8 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 416, i32 51 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 416, i32 62 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 465, i32 8 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 32, i32 8 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 122, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant [19 x i8] c"serio_driver_group\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 771, i32 1 }
@___asan_gen_.257 = private unnamed_addr constant [19 x i8] c"serio_driver_attrs\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 766, i32 26 }
@___asan_gen_.260 = private unnamed_addr constant [24 x i8] c"driver_attr_description\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 740, i32 8 }
@___asan_gen_.263 = private unnamed_addr constant [22 x i8] c"driver_attr_bind_mode\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 764, i32 8 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 738, i32 74 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 910, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 911, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 912, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 913, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 915, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 919, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 945, i32 4 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 238, i32 8 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 544, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 809, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.326 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.327 = private constant [31 x i8] c"../drivers/input/serio/serio.c\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1033, i32 3 }
@llvm.compiler.used = appending global [118 x ptr] [ptr @__UNIQUE_ID_author187, ptr @__UNIQUE_ID_description188, ptr @__UNIQUE_ID_file189, ptr @__UNIQUE_ID_license190, ptr @__exitcall_serio_exit, ptr @__initcall__kmod_serio__191_1051_serio_init4, ptr @__ksymtab___serio_register_driver, ptr @__ksymtab___serio_register_port, ptr @__ksymtab_serio_bus, ptr @__ksymtab_serio_close, ptr @__ksymtab_serio_interrupt, ptr @__ksymtab_serio_open, ptr @__ksymtab_serio_reconnect, ptr @__ksymtab_serio_rescan, ptr @__ksymtab_serio_unregister_child_port, ptr @__ksymtab_serio_unregister_driver, ptr @__ksymtab_serio_unregister_port, ptr @__serio_register_driver._entry, ptr @__serio_register_driver._entry_ptr, ptr @serio_add_port._entry, ptr @serio_add_port._entry_ptr, ptr @serio_attach_driver._entry, ptr @serio_attach_driver._entry_ptr, ptr @serio_bind_driver._entry, ptr @serio_bind_driver._entry_ptr, ptr @serio_exit, ptr @serio_find_driver._entry, ptr @serio_find_driver._entry_ptr, ptr @serio_init._entry, ptr @serio_init._entry_ptr, ptr @serio_queue_event._entry, ptr @serio_queue_event._entry.6, ptr @serio_queue_event._entry_ptr, ptr @serio_queue_event._entry_ptr.8, ptr @serio_resume._entry, ptr @serio_resume._entry_ptr, ptr @serio_mutex, ptr @serio_bus, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @serio_list, ptr @.str.3, ptr @serio_driver_groups, ptr @serio_pm_ops, ptr @serio_event_work, ptr @serio_event_lock, ptr @serio_event_list, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @serio_init_port.serio_no, ptr @serio_init_port.__key, ptr @.str.10, ptr @serio_init_port.__key.11, ptr @.str.12, ptr @.str.13, ptr @serio_device_attr_groups, ptr @serio_id_attr_group, ptr @serio_device_attr_group, ptr @.str.14, ptr @serio_device_id_attrs, ptr @dev_attr_type, ptr @dev_attr_proto, ptr @dev_attr_id, ptr @dev_attr_extra, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @serio_device_attrs, ptr @dev_attr_modalias, ptr @dev_attr_description, ptr @dev_attr_drvctl, ptr @dev_attr_bind_mode, ptr @dev_attr_firmware_id, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @serio_driver_group, ptr @serio_driver_attrs, ptr @driver_attr_description, ptr @driver_attr_bind_mode, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55], section "llvm.metadata"
@0 = internal global [90 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serio_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serio_bus to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serio_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serio_driver_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serio_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serio_event_work to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serio_event_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serio_event_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serio_queue_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serio_queue_event._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serio_init_port.serio_no to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serio_init_port.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serio_init_port.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serio_device_attr_groups to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serio_id_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serio_device_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serio_device_id_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_proto to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_extra to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serio_device_attrs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_modalias to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_description to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_drvctl to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_bind_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_firmware_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serio_bind_driver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serio_find_driver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serio_driver_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serio_driver_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_attr_description to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_attr_bind_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serio_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serio_add_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serio_attach_driver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serio_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @serio_rescan(ptr noundef %serio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @serio_queue_event(ptr noundef %serio, ptr noundef null, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @serio_queue_event(ptr noundef %object, ptr noundef %owner, i32 noundef %event_type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @serio_event_lock) #11
  %.pn56 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @serio_event_list, i32 0, i32 1), align 4
  %cmp7.not57 = icmp eq ptr %.pn56, @serio_event_list
  br i1 %cmp7.not57, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn58 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn56, %entry.for.body_crit_edge ]
  %object9 = getelementptr i8, ptr %.pn58, i32 -8
  %0 = ptrtoint ptr %object9 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object9, align 4
  %cmp10 = icmp eq ptr %1, %object
  br i1 %cmp10, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %event.0.le = getelementptr i8, ptr %.pn58, i32 -12
  %2 = ptrtoint ptr %event.0.le to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %event.0.le, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %event_type)
  %cmp12 = icmp eq i32 %3, %event_type
  br i1 %cmp12, label %if.then.out_crit_edge, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.inc:                                          ; preds = %for.body
  %prev = getelementptr inbounds %struct.list_head, ptr %.pn58, i32 0, i32 1
  %4 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %prev, align 4
  %cmp7.not = icmp eq ptr %.pn, @serio_event_list
  br i1 %cmp7.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then.for.end_crit_edge, %entry.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 2592, i32 noundef 20) #14
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %do.end24, label %if.end27

do.end24:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %event_type) #15
  br label %out

if.end27:                                         ; preds = %for.end
  %call28 = tail call zeroext i1 @try_module_get(ptr noundef %owner) #11
  br i1 %call28, label %if.end35, label %do.end32

do.end32:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %event_type) #15
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %out

if.end35:                                         ; preds = %if.end27
  %6 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %event_type, ptr %call7.i, align 8
  %object37 = getelementptr inbounds %struct.serio_event, ptr %call7.i, i32 0, i32 1
  %7 = ptrtoint ptr %object37 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %object, ptr %object37, align 4
  %owner38 = getelementptr inbounds %struct.serio_event, ptr %call7.i, i32 0, i32 2
  %8 = ptrtoint ptr %owner38 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %owner, ptr %owner38, align 8
  %node39 = getelementptr inbounds %struct.serio_event, ptr %call7.i, i32 0, i32 3
  %9 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @serio_event_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node39, ptr noundef %9, ptr noundef nonnull @serio_event_list) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end35.list_add_tail.exit_crit_edge

if.end35.list_add_tail.exit_crit_edge:            ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %node39, ptr getelementptr inbounds (%struct.list_head, ptr @serio_event_list, i32 0, i32 1), align 4
  %10 = ptrtoint ptr %node39 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @serio_event_list, ptr %node39, align 4
  %prev3.i.i = getelementptr inbounds %struct.serio_event, ptr %call7.i, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %prev3.i.i, align 8
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %node39, ptr %9, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end35.list_add_tail.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_long_wq to i32))
  %13 = load ptr, ptr @system_long_wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %13, ptr noundef nonnull @serio_event_work) #11
  br label %out

out:                                              ; preds = %list_add_tail.exit, %do.end32, %do.end24, %if.then.out_crit_edge
  %retval1.0 = phi i32 [ 0, %if.then.out_crit_edge ], [ 0, %list_add_tail.exit ], [ -22, %do.end32 ], [ -12, %do.end24 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @serio_event_lock, i32 noundef %call3) #11
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @serio_reconnect(ptr noundef %serio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @serio_queue_event(ptr noundef %serio, ptr noundef null, i32 noundef 2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__serio_register_port(ptr noundef %serio, ptr noundef %owner) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__module_get(ptr noundef null) #11
  %node.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 19
  %0 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %node.i, ptr %node.i, align 4
  %prev.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 19, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %node.i, ptr %prev.i.i, align 4
  %child_node.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 13
  %2 = ptrtoint ptr %child_node.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %child_node.i, ptr %child_node.i, align 4
  %prev.i44.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 13, i32 1
  %3 = ptrtoint ptr %prev.i44.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %child_node.i, ptr %prev.i44.i, align 4
  %children.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 14
  %4 = ptrtoint ptr %children.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %children.i, ptr %children.i, align 4
  %prev.i45.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 14, i32 1
  %5 = ptrtoint ptr %prev.i45.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %children.i, ptr %prev.i45.i, align 4
  %lock.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @serio_init_port.__key, i16 noundef signext 3) #11
  %drv_mutex.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 17
  tail call void @__mutex_init(ptr noundef %drv_mutex.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @serio_init_port.__key.11) #11
  %dev.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18
  tail call void @device_initialize(ptr noundef %dev.i) #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @serio_init_port.serio_no, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !197
  tail call void @llvm.prefetch.p0(ptr nonnull @serio_init_port.serio_no, i32 1, i32 3, i32 1) #11
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @serio_init_port.serio_no, ptr nonnull @serio_init_port.serio_no, i32 1, ptr nonnull elementtype(i32) @serio_init_port.serio_no) #11, !srcloc !198
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !199
  %call5.i = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev.i, ptr noundef nonnull @.str.13, i32 noundef %asmresult.i.i.i.i.i) #11
  %bus.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 5
  %7 = ptrtoint ptr %bus.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @serio_bus, ptr %bus.i, align 8
  %release.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 35
  %8 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @serio_release_port, ptr %release.i, align 4
  %groups.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 34
  %9 = ptrtoint ptr %groups.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @serio_device_attr_groups, ptr %groups.i, align 8
  %parent.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 12
  %10 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %entry.serio_init_port.exit_crit_edge, label %if.then.i

entry.serio_init_port.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %serio_init_port.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev10.i = getelementptr inbounds %struct.serio, ptr %11, i32 0, i32 18
  %parent12.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 1
  %12 = ptrtoint ptr %parent12.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev10.i, ptr %parent12.i, align 8
  %depth.i = getelementptr inbounds %struct.serio, ptr %11, i32 0, i32 15
  %13 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %depth.i, align 8
  %add.i = add i32 %14, 1
  br label %serio_init_port.exit

serio_init_port.exit:                             ; preds = %if.then.i, %entry.serio_init_port.exit_crit_edge
  %add.sink.i = phi i32 [ %add.i, %if.then.i ], [ 0, %entry.serio_init_port.exit_crit_edge ]
  %15 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 15
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add.sink.i, ptr %15, align 8
  %dep_map.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 6, i32 0, i32 0, i32 4
  %17 = ptrtoint ptr %dep_map.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dep_map.i, align 4
  %wait_type_inner.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 6, i32 0, i32 0, i32 4, i32 4
  %19 = ptrtoint ptr %wait_type_inner.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %wait_type_inner.i, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.10, ptr noundef %18, i32 noundef %add.sink.i, i8 noundef zeroext %20, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %call = tail call fastcc i32 @serio_queue_event(ptr noundef %serio, ptr noundef %owner, i32 noundef 3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @serio_unregister_port(ptr noundef %serio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @serio_mutex, i32 noundef 0) #11
  %children.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 14
  %0 = ptrtoint ptr %children.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %children.i, align 4
  %cmp.i.not21.i = icmp eq ptr %1, %children.i
  br i1 %cmp.i.not21.i, label %entry.serio_disconnect_port.exit_crit_edge, label %entry.while.cond1.i_crit_edge

entry.while.cond1.i_crit_edge:                    ; preds = %entry
  br label %while.cond1.i

entry.serio_disconnect_port.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %serio_disconnect_port.exit

while.cond1.i:                                    ; preds = %while.cond1.i.backedge, %entry.while.cond1.i_crit_edge
  %s.1.i = phi ptr [ %s.1.i.be, %while.cond1.i.backedge ], [ %serio, %entry.while.cond1.i_crit_edge ]
  %children2.i = getelementptr inbounds %struct.serio, ptr %s.1.i, i32 0, i32 14
  %2 = ptrtoint ptr %children2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %children2.i, align 4
  %cmp.i19.not.i = icmp eq ptr %3, %children2.i
  %add.ptr.i = getelementptr i8, ptr %3, i32 -272
  br i1 %cmp.i19.not.i, label %while.end.i, label %while.cond1.i.while.cond1.i.backedge_crit_edge

while.cond1.i.while.cond1.i.backedge_crit_edge:   ; preds = %while.cond1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond1.i.backedge

while.cond1.i.backedge:                           ; preds = %if.end.i.while.cond1.i.backedge_crit_edge, %while.cond1.i.while.cond1.i.backedge_crit_edge
  %s.1.i.be = phi ptr [ %add.ptr.i, %while.cond1.i.while.cond1.i.backedge_crit_edge ], [ %s.2.i, %if.end.i.while.cond1.i.backedge_crit_edge ]
  br label %while.cond1.i

while.end.i:                                      ; preds = %while.cond1.i
  %cmp.not.i = icmp eq ptr %s.1.i, %serio
  br i1 %cmp.not.i, label %while.end.i.if.end.i_crit_edge, label %if.then.i

while.end.i.if.end.i_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %parent8.i = getelementptr inbounds %struct.serio, ptr %s.1.i, i32 0, i32 12
  %4 = ptrtoint ptr %parent8.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent8.i, align 4
  %dev.i = getelementptr inbounds %struct.serio, ptr %s.1.i, i32 0, i32 18
  tail call void @device_release_driver(ptr noundef %dev.i) #11
  tail call fastcc void @serio_destroy_port(ptr noundef %s.1.i) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.end.i.if.end.i_crit_edge
  %s.2.i = phi ptr [ %5, %if.then.i ], [ %serio, %while.end.i.if.end.i_crit_edge ]
  %6 = ptrtoint ptr %children.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %children.i, align 4
  %cmp.i.not.i = icmp eq ptr %7, %children.i
  br i1 %cmp.i.not.i, label %if.end.i.serio_disconnect_port.exit_crit_edge, label %if.end.i.while.cond1.i.backedge_crit_edge

if.end.i.while.cond1.i.backedge_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond1.i.backedge

if.end.i.serio_disconnect_port.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %serio_disconnect_port.exit

serio_disconnect_port.exit:                       ; preds = %if.end.i.serio_disconnect_port.exit_crit_edge, %entry.serio_disconnect_port.exit_crit_edge
  %dev10.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18
  tail call void @device_release_driver(ptr noundef %dev10.i) #11
  tail call fastcc void @serio_destroy_port(ptr noundef %serio)
  tail call void @mutex_unlock(ptr noundef nonnull @serio_mutex) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @serio_destroy_port(ptr noundef %serio) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call2.i43 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @serio_event_lock) #11
  %.pn23.i44 = load ptr, ptr @serio_event_list, align 4
  %cmp6.not24.i45 = icmp eq ptr %.pn23.i44, @serio_event_list
  br i1 %cmp6.not24.i45, label %entry.serio_get_pending_child.exit.thread_crit_edge, label %entry.for.body.i.preheader_crit_edge

entry.for.body.i.preheader_crit_edge:             ; preds = %entry
  br label %for.body.i.preheader

entry.serio_get_pending_child.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %serio_get_pending_child.exit.thread

for.body.i.preheader:                             ; preds = %while.body.for.body.i.preheader_crit_edge, %entry.for.body.i.preheader_crit_edge
  %.pn23.i47 = phi ptr [ %.pn23.i, %while.body.for.body.i.preheader_crit_edge ], [ %.pn23.i44, %entry.for.body.i.preheader_crit_edge ]
  %call2.i46 = phi i32 [ %call2.i, %while.body.for.body.i.preheader_crit_edge ], [ %call2.i43, %entry.for.body.i.preheader_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %.pn25.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn23.i47, %for.body.i.preheader ]
  %event.0.i = getelementptr i8, ptr %.pn25.i, i32 -12
  %0 = ptrtoint ptr %event.0.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event.0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp8.i = icmp eq i32 %1, 3
  br i1 %cmp8.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %object.i = getelementptr i8, ptr %.pn25.i, i32 -8
  %2 = ptrtoint ptr %object.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %object.i, align 4
  %parent10.i = getelementptr inbounds %struct.serio, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %parent10.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent10.i, align 4
  %cmp11.i = icmp eq ptr %5, %serio
  br i1 %cmp11.i, label %serio_get_pending_child.exit, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %6 = ptrtoint ptr %.pn25.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i = load ptr, ptr %.pn25.i, align 4
  %cmp6.not.i = icmp eq ptr %.pn.i, @serio_event_list
  br i1 %cmp6.not.i, label %for.inc.i.serio_get_pending_child.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.serio_get_pending_child.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %serio_get_pending_child.exit.thread

serio_get_pending_child.exit.thread:              ; preds = %while.body.serio_get_pending_child.exit.thread_crit_edge, %for.inc.i.serio_get_pending_child.exit.thread_crit_edge, %entry.serio_get_pending_child.exit.thread_crit_edge
  %call2.i42 = phi i32 [ %call2.i43, %entry.serio_get_pending_child.exit.thread_crit_edge ], [ %call2.i46, %for.inc.i.serio_get_pending_child.exit.thread_crit_edge ], [ %call2.i, %while.body.serio_get_pending_child.exit.thread_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @serio_event_lock, i32 noundef %call2.i42) #11
  br label %while.end

serio_get_pending_child.exit:                     ; preds = %if.then.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @serio_event_lock, i32 noundef %call2.i46) #11
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %serio_get_pending_child.exit.while.end_crit_edge, label %while.body

serio_get_pending_child.exit.while.end_crit_edge: ; preds = %serio_get_pending_child.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %serio_get_pending_child.exit
  tail call fastcc void @serio_remove_pending_events(ptr noundef nonnull %3)
  %dev = getelementptr inbounds %struct.serio, ptr %3, i32 0, i32 18
  tail call void @put_device(ptr noundef %dev) #11
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @serio_event_lock) #11
  %.pn23.i = load ptr, ptr @serio_event_list, align 4
  %cmp6.not24.i = icmp eq ptr %.pn23.i, @serio_event_list
  br i1 %cmp6.not24.i, label %while.body.serio_get_pending_child.exit.thread_crit_edge, label %while.body.for.body.i.preheader_crit_edge

while.body.for.body.i.preheader_crit_edge:        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.preheader

while.body.serio_get_pending_child.exit.thread_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %serio_get_pending_child.exit.thread

while.end:                                        ; preds = %serio_get_pending_child.exit.while.end_crit_edge, %serio_get_pending_child.exit.thread
  %stop = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 11
  %7 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %stop, align 8
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %while.end.if.end_crit_edge, label %if.then

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %8(ptr noundef %serio) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end.if.end_crit_edge
  %parent = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 12
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent, align 4
  %tobool2.not = icmp eq ptr %10, null
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then3:                                         ; preds = %if.end
  %lock.i = getelementptr inbounds %struct.serio, ptr %10, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #11
  %child_node = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %child_node) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then3.list_del_init.exit_crit_edge

if.then3.list_del_init.exit_crit_edge:            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 13, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %child_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %child_node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then3.list_del_init.exit_crit_edge
  %17 = ptrtoint ptr %child_node to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %child_node, ptr %child_node, align 4
  %prev.i3.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 13, i32 1
  %18 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %child_node, ptr %prev.i3.i, align 4
  %19 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent, align 4
  %lock.i30 = getelementptr inbounds %struct.serio, ptr %20, i32 0, i32 6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i30) #11
  %21 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %parent, align 4
  br label %if.end7

if.end7:                                          ; preds = %list_del_init.exit, %if.end.if.end7_crit_edge
  %dev8 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18
  %state_in_sysfs.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 0, i32 8
  %22 = ptrtoint ptr %state_in_sysfs.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load.i = load i8, ptr %state_in_sysfs.i, align 4
  %23 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool10.not = icmp eq i8 %23, 0
  br i1 %tobool10.not, label %if.end7.if.end13_crit_edge, label %if.then11

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @device_del(ptr noundef %dev8) #11
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end7.if.end13_crit_edge
  %node = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 19
  %call.i.i31 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #11
  br i1 %call.i.i31, label %if.end.i.i34, label %if.end13.list_del_init.exit36_crit_edge

if.end13.list_del_init.exit36_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit36

if.end.i.i34:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i32 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 19, i32 1
  %24 = ptrtoint ptr %prev.i.i32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i32, align 4
  %26 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %node, align 4
  %prev1.i.i.i33 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i33 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i33, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del_init.exit36

list_del_init.exit36:                             ; preds = %if.end.i.i34, %if.end13.list_del_init.exit36_crit_edge
  %30 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %node, ptr %node, align 4
  %prev.i3.i35 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 19, i32 1
  %31 = ptrtoint ptr %prev.i3.i35 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %node, ptr %prev.i3.i35, align 4
  tail call fastcc void @serio_remove_pending_events(ptr noundef %serio)
  tail call void @put_device(ptr noundef %dev8) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @serio_unregister_child_port(ptr noundef readonly %serio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @serio_mutex, i32 noundef 0) #11
  %children = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 14
  %0 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %children, align 8
  %cmp.not19 = icmp eq ptr %1, %children
  br i1 %cmp.not19, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %serio_disconnect_port.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in20 = phi ptr [ %.pn, %serio_disconnect_port.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %s.0 = getelementptr i8, ptr %.pn.in20, i32 -272
  %2 = ptrtoint ptr %.pn.in20 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in20, align 8
  %children.i = getelementptr i8, ptr %.pn.in20, i32 8
  %3 = ptrtoint ptr %children.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %children.i, align 4
  %cmp.i.not21.i = icmp eq ptr %4, %children.i
  br i1 %cmp.i.not21.i, label %for.body.serio_disconnect_port.exit_crit_edge, label %for.body.while.cond1.i_crit_edge

for.body.while.cond1.i_crit_edge:                 ; preds = %for.body
  br label %while.cond1.i

for.body.serio_disconnect_port.exit_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %serio_disconnect_port.exit

while.cond1.i:                                    ; preds = %while.cond1.i.backedge, %for.body.while.cond1.i_crit_edge
  %s.1.i = phi ptr [ %s.1.i.be, %while.cond1.i.backedge ], [ %s.0, %for.body.while.cond1.i_crit_edge ]
  %children2.i = getelementptr inbounds %struct.serio, ptr %s.1.i, i32 0, i32 14
  %5 = ptrtoint ptr %children2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %children2.i, align 4
  %cmp.i19.not.i = icmp eq ptr %6, %children2.i
  %add.ptr.i = getelementptr i8, ptr %6, i32 -272
  br i1 %cmp.i19.not.i, label %while.end.i, label %while.cond1.i.while.cond1.i.backedge_crit_edge

while.cond1.i.while.cond1.i.backedge_crit_edge:   ; preds = %while.cond1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond1.i.backedge

while.cond1.i.backedge:                           ; preds = %if.end.i.while.cond1.i.backedge_crit_edge, %while.cond1.i.while.cond1.i.backedge_crit_edge
  %s.1.i.be = phi ptr [ %add.ptr.i, %while.cond1.i.while.cond1.i.backedge_crit_edge ], [ %s.2.i, %if.end.i.while.cond1.i.backedge_crit_edge ]
  br label %while.cond1.i

while.end.i:                                      ; preds = %while.cond1.i
  %cmp.not.i = icmp eq ptr %s.1.i, %s.0
  br i1 %cmp.not.i, label %while.end.i.if.end.i_crit_edge, label %if.then.i

while.end.i.if.end.i_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %parent8.i = getelementptr inbounds %struct.serio, ptr %s.1.i, i32 0, i32 12
  %7 = ptrtoint ptr %parent8.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent8.i, align 4
  %dev.i = getelementptr inbounds %struct.serio, ptr %s.1.i, i32 0, i32 18
  tail call void @device_release_driver(ptr noundef %dev.i) #11
  tail call fastcc void @serio_destroy_port(ptr noundef %s.1.i) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.end.i.if.end.i_crit_edge
  %s.2.i = phi ptr [ %8, %if.then.i ], [ %s.0, %while.end.i.if.end.i_crit_edge ]
  %9 = ptrtoint ptr %children.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %children.i, align 4
  %cmp.i.not.i = icmp eq ptr %10, %children.i
  br i1 %cmp.i.not.i, label %if.end.i.serio_disconnect_port.exit_crit_edge, label %if.end.i.while.cond1.i.backedge_crit_edge

if.end.i.while.cond1.i.backedge_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond1.i.backedge

if.end.i.serio_disconnect_port.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %serio_disconnect_port.exit

serio_disconnect_port.exit:                       ; preds = %if.end.i.serio_disconnect_port.exit_crit_edge, %for.body.serio_disconnect_port.exit_crit_edge
  %dev10.i = getelementptr i8, ptr %.pn.in20, i32 120
  tail call void @device_release_driver(ptr noundef %dev10.i) #11
  tail call fastcc void @serio_destroy_port(ptr noundef %s.0)
  %cmp.not = icmp eq ptr %.pn, %children
  br i1 %cmp.not, label %serio_disconnect_port.exit.for.end_crit_edge, label %serio_disconnect_port.exit.for.body_crit_edge

serio_disconnect_port.exit.for.body_crit_edge:    ; preds = %serio_disconnect_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

serio_disconnect_port.exit.for.end_crit_edge:     ; preds = %serio_disconnect_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %serio_disconnect_port.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @serio_mutex) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__serio_register_driver(ptr noundef %drv, ptr noundef %owner, ptr noundef %mod_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %manual_bind1 = getelementptr inbounds %struct.serio_driver, ptr %drv, i32 0, i32 2
  %0 = ptrtoint ptr %manual_bind1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %manual_bind1, align 4, !range !200
  %driver = getelementptr inbounds %struct.serio_driver, ptr %drv, i32 0, i32 10
  %bus = getelementptr inbounds %struct.serio_driver, ptr %drv, i32 0, i32 10, i32 1
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @serio_bus, ptr %bus, align 4
  %owner3 = getelementptr inbounds %struct.serio_driver, ptr %drv, i32 0, i32 10, i32 2
  %3 = ptrtoint ptr %owner3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %owner, ptr %owner3, align 4
  %mod_name5 = getelementptr inbounds %struct.serio_driver, ptr %drv, i32 0, i32 10, i32 3
  %4 = ptrtoint ptr %mod_name5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %mod_name, ptr %mod_name5, align 4
  store i8 1, ptr %manual_bind1, align 4
  %call = tail call i32 @driver_register(ptr noundef %driver) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver, align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %6, i32 noundef %call) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then12:                                        ; preds = %if.end
  %7 = ptrtoint ptr %manual_bind1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %manual_bind1, align 4
  %call14 = tail call fastcc i32 @serio_queue_event(ptr noundef %drv, ptr noundef null, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then12.cleanup_crit_edge, label %if.then16

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then16:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @driver_unregister(ptr noundef %driver) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.then12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call14, %if.then16 ], [ 0, %if.then12.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @serio_unregister_driver(ptr noundef %drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @serio_mutex, i32 noundef 0) #11
  %manual_bind = getelementptr inbounds %struct.serio_driver, ptr %drv, i32 0, i32 2
  %0 = ptrtoint ptr %manual_bind to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %manual_bind, align 4
  tail call fastcc void @serio_remove_pending_events(ptr noundef %drv)
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %entry
  %.pn.in = phi ptr [ @serio_list, %entry ], [ %.pn.in.be, %for.cond.backedge ]
  %1 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @serio_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %drv1 = getelementptr i8, ptr %.pn, i32 -1028
  %2 = ptrtoint ptr %drv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv1, align 4
  %cmp2 = icmp eq ptr %3, %drv
  br i1 %cmp2, label %if.then, label %for.body.for.cond.backedge_crit_edge

for.body.for.cond.backedge_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %do.end.i, %serio_disconnect_port.exit.for.cond.backedge_crit_edge, %for.body.for.cond.backedge_crit_edge
  %.pn.in.be = phi ptr [ %.pn, %for.body.for.cond.backedge_crit_edge ], [ @serio_list, %serio_disconnect_port.exit.for.cond.backedge_crit_edge ], [ @serio_list, %do.end.i ]
  br label %for.cond

if.then:                                          ; preds = %for.body
  %serio.0.le = getelementptr i8, ptr %.pn, i32 -1320
  %children.i = getelementptr i8, ptr %.pn, i32 -1040
  %4 = ptrtoint ptr %children.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %children.i, align 4
  %cmp.i.not21.i = icmp eq ptr %5, %children.i
  br i1 %cmp.i.not21.i, label %if.then.serio_disconnect_port.exit_crit_edge, label %if.then.while.cond1.i_crit_edge

if.then.while.cond1.i_crit_edge:                  ; preds = %if.then
  br label %while.cond1.i

if.then.serio_disconnect_port.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %serio_disconnect_port.exit

while.cond1.i:                                    ; preds = %while.cond1.i.backedge, %if.then.while.cond1.i_crit_edge
  %s.1.i = phi ptr [ %s.1.i.be, %while.cond1.i.backedge ], [ %serio.0.le, %if.then.while.cond1.i_crit_edge ]
  %children2.i = getelementptr inbounds %struct.serio, ptr %s.1.i, i32 0, i32 14
  %6 = ptrtoint ptr %children2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %children2.i, align 4
  %cmp.i19.not.i = icmp eq ptr %7, %children2.i
  %add.ptr.i = getelementptr i8, ptr %7, i32 -272
  br i1 %cmp.i19.not.i, label %while.end.i, label %while.cond1.i.while.cond1.i.backedge_crit_edge

while.cond1.i.while.cond1.i.backedge_crit_edge:   ; preds = %while.cond1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond1.i.backedge

while.cond1.i.backedge:                           ; preds = %if.end.i.while.cond1.i.backedge_crit_edge, %while.cond1.i.while.cond1.i.backedge_crit_edge
  %s.1.i.be = phi ptr [ %add.ptr.i, %while.cond1.i.while.cond1.i.backedge_crit_edge ], [ %s.2.i, %if.end.i.while.cond1.i.backedge_crit_edge ]
  br label %while.cond1.i

while.end.i:                                      ; preds = %while.cond1.i
  %cmp.not.i = icmp eq ptr %s.1.i, %serio.0.le
  br i1 %cmp.not.i, label %while.end.i.if.end.i_crit_edge, label %if.then.i

while.end.i.if.end.i_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %parent8.i = getelementptr inbounds %struct.serio, ptr %s.1.i, i32 0, i32 12
  %8 = ptrtoint ptr %parent8.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent8.i, align 4
  %dev.i = getelementptr inbounds %struct.serio, ptr %s.1.i, i32 0, i32 18
  tail call void @device_release_driver(ptr noundef %dev.i) #11
  tail call fastcc void @serio_destroy_port(ptr noundef %s.1.i) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.end.i.if.end.i_crit_edge
  %s.2.i = phi ptr [ %9, %if.then.i ], [ %serio.0.le, %while.end.i.if.end.i_crit_edge ]
  %10 = ptrtoint ptr %children.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %children.i, align 4
  %cmp.i.not.i = icmp eq ptr %11, %children.i
  br i1 %cmp.i.not.i, label %if.end.i.serio_disconnect_port.exit_crit_edge, label %if.end.i.while.cond1.i.backedge_crit_edge

if.end.i.while.cond1.i.backedge_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond1.i.backedge

if.end.i.serio_disconnect_port.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %serio_disconnect_port.exit

serio_disconnect_port.exit:                       ; preds = %if.end.i.serio_disconnect_port.exit_crit_edge, %if.then.serio_disconnect_port.exit_crit_edge
  %dev10.i = getelementptr i8, ptr %.pn, i32 -928
  tail call void @device_release_driver(ptr noundef %dev10.i) #11
  %call.i = tail call i32 @device_attach(ptr noundef %dev10.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call.i)
  %cmp1.not.i = icmp eq i32 %call.i, -517
  %or.cond.i = or i1 %cmp.i, %cmp1.not.i
  br i1 %or.cond.i, label %serio_disconnect_port.exit.for.cond.backedge_crit_edge, label %do.end.i

serio_disconnect_port.exit.for.cond.backedge_crit_edge: ; preds = %serio_disconnect_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge

do.end.i:                                         ; preds = %serio_disconnect_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  %phys.i = getelementptr i8, ptr %.pn, i32 -1284
  %name.i = getelementptr i8, ptr %.pn, i32 -1316
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev10.i, ptr noundef nonnull @.str.37, ptr noundef %phys.i, ptr noundef %name.i, i32 noundef %call.i) #15
  br label %for.cond.backedge

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  %driver = getelementptr inbounds %struct.serio_driver, ptr %drv, i32 0, i32 10
  tail call void @driver_unregister(ptr noundef %driver) #11
  tail call void @mutex_unlock(ptr noundef nonnull @serio_mutex) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @serio_remove_pending_events(ptr noundef readnone %object) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @serio_event_lock) #11
  %0 = load ptr, ptr @serio_event_list, align 4
  %cmp11.not30 = icmp eq ptr %0, @serio_event_list
  br i1 %cmp11.not30, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in31 = phi ptr [ %.pn33, %for.inc.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %event.032 = getelementptr i8, ptr %.pn.in31, i32 -12
  %1 = ptrtoint ptr %.pn.in31 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn33 = load ptr, ptr %.pn.in31, align 4
  %object13 = getelementptr i8, ptr %.pn.in31, i32 -8
  %2 = ptrtoint ptr %object13 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %object13, align 4
  %cmp14 = icmp eq ptr %3, %object
  br i1 %cmp14, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in31) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in31, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %.pn.in31 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %.pn.in31, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %10 = ptrtoint ptr %.pn.in31 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %.pn.in31, ptr %.pn.in31, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in31, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %.pn.in31, ptr %prev.i3.i, align 4
  %owner.i = getelementptr i8, ptr %.pn.in31, i32 -4
  %12 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %owner.i, align 4
  tail call void @module_put(ptr noundef %13) #11
  tail call void @kfree(ptr noundef %event.032) #11
  br label %for.inc

for.inc:                                          ; preds = %list_del_init.exit, %for.body.for.inc_crit_edge
  %cmp11.not = icmp eq ptr %.pn33, @serio_event_list
  br i1 %cmp11.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @serio_event_lock, i32 noundef %call2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @serio_open(ptr noundef %serio, ptr noundef %drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i) #11
  %drv1.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 16
  %0 = ptrtoint ptr %drv1.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %drv, ptr %drv1.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i.i) #11
  %open = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 8
  %1 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %open, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %land.lhs.true

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 %2(ptr noundef %serio) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %land.lhs.true.return_crit_edge, label %if.then

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i) #11
  %3 = ptrtoint ptr %drv1.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %drv1.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i.i) #11
  br label %return

return:                                           ; preds = %if.then, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %land.lhs.true.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @serio_close(ptr noundef %serio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %close = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 9
  %0 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %close, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %1(ptr noundef %serio) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %lock.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i) #11
  %drv1.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 16
  %2 = ptrtoint ptr %drv1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %drv1.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i.i) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @serio_interrupt(ptr noundef %serio, i8 noundef zeroext %data, i32 noundef %dfl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 6
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %drv = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 16
  %0 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then, !prof !201

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %interrupt = getelementptr inbounds %struct.serio_driver, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %interrupt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %interrupt, align 4
  %call8 = tail call i32 %3(ptr noundef %serio, i8 noundef zeroext %data, i32 noundef %dfl) #11
  br label %if.end13

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dfl)
  %tobool9.not = icmp eq i32 %dfl, 0
  br i1 %tobool9.not, label %land.lhs.true, label %if.else.if.end13_crit_edge

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

land.lhs.true:                                    ; preds = %if.else
  %state_in_sysfs.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 0, i32 8
  %4 = ptrtoint ptr %state_in_sysfs.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %state_in_sysfs.i, align 4
  %5 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool11.not = icmp eq i8 %5, 0
  br i1 %tobool11.not, label %land.lhs.true.if.end13_crit_edge, label %if.then12

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call fastcc i32 @serio_queue_event(ptr noundef %serio, ptr noundef null, i32 noundef 0) #11
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %land.lhs.true.if.end13_crit_edge, %if.else.if.end13_crit_edge, %if.then
  %ret.0 = phi i32 [ %call8, %if.then ], [ 0, %if.else.if.end13_crit_edge ], [ 1, %if.then12 ], [ 0, %land.lhs.true.if.end13_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #11
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @serio_bus_match(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %drv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %manual_bind = getelementptr i8, ptr %dev, i32 -196
  %0 = ptrtoint ptr %manual_bind to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %manual_bind, align 4, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %manual_bind4 = getelementptr i8, ptr %drv, i32 -32
  %2 = ptrtoint ptr %manual_bind4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %manual_bind4, align 4, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool5.not = icmp eq i8 %3, 0
  br i1 %tobool5.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %id_table = getelementptr i8, ptr %drv, i32 -36
  %4 = ptrtoint ptr %id_table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %id_table, align 4
  %id45.i = getelementptr i8, ptr %dev, i32 -193
  %id.i = getelementptr i8, ptr %dev, i32 -195
  %proto20.i = getelementptr i8, ptr %dev, i32 -192
  %extra32.i = getelementptr i8, ptr %dev, i32 -194
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end.i, %if.end
  %ids.addr.0.i = phi ptr [ %5, %if.end ], [ %incdec.ptr.i, %if.end.i ]
  %6 = ptrtoint ptr %ids.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ids.addr.0.i, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %7, label %while.cond.i.lor.lhs.false.i_crit_edge [
    i8 0, label %lor.rhs.i
    i8 -1, label %while.cond.i.land.lhs.true.i_crit_edge
  ]

while.cond.i.land.lhs.true.i_crit_edge:           ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

while.cond.i.lor.lhs.false.i_crit_edge:           ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i

lor.rhs.i:                                        ; preds = %while.cond.i
  %proto.i = getelementptr inbounds %struct.serio_device_id, ptr %ids.addr.0.i, i32 0, i32 3
  %9 = ptrtoint ptr %proto.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %proto.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool2.not.i = icmp eq i8 %10, 0
  br i1 %tobool2.not.i, label %lor.rhs.i.cleanup_crit_edge, label %lor.rhs.i.lor.lhs.false.i_crit_edge

lor.rhs.i.lor.lhs.false.i_crit_edge:              ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i

lor.rhs.i.cleanup_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %lor.rhs.i.lor.lhs.false.i_crit_edge, %while.cond.i.lor.lhs.false.i_crit_edge
  %11 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %id.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %12)
  %cmp10.i = icmp eq i8 %7, %12
  br i1 %cmp10.i, label %lor.lhs.false.i.land.lhs.true.i_crit_edge, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

lor.lhs.false.i.land.lhs.true.i_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i.land.lhs.true.i_crit_edge, %while.cond.i.land.lhs.true.i_crit_edge
  %proto12.i = getelementptr inbounds %struct.serio_device_id, ptr %ids.addr.0.i, i32 0, i32 3
  %13 = ptrtoint ptr %proto12.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %proto12.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %cmp14.i = icmp eq i8 %14, -1
  br i1 %cmp14.i, label %land.lhs.true.i.land.lhs.true24.i_crit_edge, label %lor.lhs.false16.i

land.lhs.true.i.land.lhs.true24.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true24.i

lor.lhs.false16.i:                                ; preds = %land.lhs.true.i
  %15 = ptrtoint ptr %proto20.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %proto20.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %16)
  %cmp22.i = icmp eq i8 %14, %16
  br i1 %cmp22.i, label %lor.lhs.false16.i.land.lhs.true24.i_crit_edge, label %lor.lhs.false16.i.if.end.i_crit_edge

lor.lhs.false16.i.if.end.i_crit_edge:             ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

lor.lhs.false16.i.land.lhs.true24.i_crit_edge:    ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true24.i

land.lhs.true24.i:                                ; preds = %lor.lhs.false16.i.land.lhs.true24.i_crit_edge, %land.lhs.true.i.land.lhs.true24.i_crit_edge
  %extra.i = getelementptr inbounds %struct.serio_device_id, ptr %ids.addr.0.i, i32 0, i32 1
  %17 = ptrtoint ptr %extra.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %extra.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %18)
  %cmp26.i = icmp eq i8 %18, -1
  br i1 %cmp26.i, label %land.lhs.true24.i.land.lhs.true36.i_crit_edge, label %lor.lhs.false28.i

land.lhs.true24.i.land.lhs.true36.i_crit_edge:    ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true36.i

lor.lhs.false28.i:                                ; preds = %land.lhs.true24.i
  %19 = ptrtoint ptr %extra32.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %extra32.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %20)
  %cmp34.i = icmp eq i8 %18, %20
  br i1 %cmp34.i, label %lor.lhs.false28.i.land.lhs.true36.i_crit_edge, label %lor.lhs.false28.i.if.end.i_crit_edge

lor.lhs.false28.i.if.end.i_crit_edge:             ; preds = %lor.lhs.false28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

lor.lhs.false28.i.land.lhs.true36.i_crit_edge:    ; preds = %lor.lhs.false28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true36.i

land.lhs.true36.i:                                ; preds = %lor.lhs.false28.i.land.lhs.true36.i_crit_edge, %land.lhs.true24.i.land.lhs.true36.i_crit_edge
  %id37.i = getelementptr inbounds %struct.serio_device_id, ptr %ids.addr.0.i, i32 0, i32 2
  %21 = ptrtoint ptr %id37.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %id37.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %22)
  %cmp39.i = icmp eq i8 %22, -1
  br i1 %cmp39.i, label %land.lhs.true36.i.cleanup_crit_edge, label %lor.lhs.false41.i

land.lhs.true36.i.cleanup_crit_edge:              ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false41.i:                                ; preds = %land.lhs.true36.i
  %23 = ptrtoint ptr %id45.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %id45.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %24)
  %cmp47.i = icmp eq i8 %22, %24
  br i1 %cmp47.i, label %lor.lhs.false41.i.cleanup_crit_edge, label %lor.lhs.false41.i.if.end.i_crit_edge

lor.lhs.false41.i.if.end.i_crit_edge:             ; preds = %lor.lhs.false41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

lor.lhs.false41.i.cleanup_crit_edge:              ; preds = %lor.lhs.false41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false41.i.if.end.i_crit_edge, %lor.lhs.false28.i.if.end.i_crit_edge, %lor.lhs.false16.i.if.end.i_crit_edge, %lor.lhs.false.i.if.end.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.serio_device_id, ptr %ids.addr.0.i, i32 1
  br label %while.cond.i

cleanup:                                          ; preds = %lor.lhs.false41.i.cleanup_crit_edge, %land.lhs.true36.i.cleanup_crit_edge, %lor.rhs.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %lor.rhs.i.cleanup_crit_edge ], [ 1, %land.lhs.true36.i.cleanup_crit_edge ], [ 1, %lor.lhs.false41.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serio_uevent(ptr noundef %dev, ptr noundef %env) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cleanup82_crit_edge, label %if.end

entry.cleanup82_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup82

if.end:                                           ; preds = %entry
  %id = getelementptr i8, ptr %dev, i32 -195
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id, align 1
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.40, i32 noundef %conv) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %do.body4, label %if.end.cleanup82_crit_edge

if.end.cleanup82_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup82

do.body4:                                         ; preds = %if.end
  %proto = getelementptr i8, ptr %dev, i32 -192
  %2 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %proto, align 1
  %conv7 = zext i8 %3 to i32
  %call8 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.41, i32 noundef %conv7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.body17, label %do.body4.cleanup82_crit_edge

do.body4.cleanup82_crit_edge:                     ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup82

do.body17:                                        ; preds = %do.body4
  %id20 = getelementptr i8, ptr %dev, i32 -193
  %4 = ptrtoint ptr %id20 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id20, align 1
  %conv21 = zext i8 %5 to i32
  %call22 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.42, i32 noundef %conv21) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %do.body31, label %do.body17.cleanup82_crit_edge

do.body17.cleanup82_crit_edge:                    ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup82

do.body31:                                        ; preds = %do.body17
  %extra = getelementptr i8, ptr %dev, i32 -194
  %6 = ptrtoint ptr %extra to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %extra, align 1
  %conv34 = zext i8 %7 to i32
  %call35 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.43, i32 noundef %conv34) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %do.body44, label %do.body31.cleanup82_crit_edge

do.body31.cleanup82_crit_edge:                    ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup82

do.body44:                                        ; preds = %do.body31
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %id, align 1
  %conv48 = zext i8 %9 to i32
  %10 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %proto, align 1
  %conv51 = zext i8 %11 to i32
  %12 = ptrtoint ptr %id20 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %id20, align 1
  %conv54 = zext i8 %13 to i32
  %14 = ptrtoint ptr %extra to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %extra, align 1
  %conv57 = zext i8 %15 to i32
  %call58 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.44, i32 noundef %conv48, i32 noundef %conv51, i32 noundef %conv54, i32 noundef %conv57) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %do.end66, label %do.body44.cleanup82_crit_edge

do.body44.cleanup82_crit_edge:                    ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup82

do.end66:                                         ; preds = %do.body44
  %firmware_id = getelementptr i8, ptr %dev, i32 -324
  %16 = ptrtoint ptr %firmware_id to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %firmware_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool67.not = icmp eq i8 %17, 0
  br i1 %tobool67.not, label %do.end66.if.end81_crit_edge, label %do.body69

do.end66.if.end81_crit_edge:                      ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

do.body69:                                        ; preds = %do.end66
  %call72 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.45, ptr noundef %firmware_id) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %do.body69.if.end81_crit_edge, label %do.body69.cleanup82_crit_edge

do.body69.cleanup82_crit_edge:                    ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup82

do.body69.if.end81_crit_edge:                     ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

if.end81:                                         ; preds = %do.body69.if.end81_crit_edge, %do.end66.if.end81_crit_edge
  br label %cleanup82

cleanup82:                                        ; preds = %if.end81, %do.body69.cleanup82_crit_edge, %do.body44.cleanup82_crit_edge, %do.body31.cleanup82_crit_edge, %do.body17.cleanup82_crit_edge, %do.body4.cleanup82_crit_edge, %if.end.cleanup82_crit_edge, %entry.cleanup82_crit_edge
  %retval.6 = phi i32 [ 0, %if.end81 ], [ %call72, %do.body69.cleanup82_crit_edge ], [ %call58, %do.body44.cleanup82_crit_edge ], [ %call35, %do.body31.cleanup82_crit_edge ], [ %call22, %do.body17.cleanup82_crit_edge ], [ %call8, %do.body4.cleanup82_crit_edge ], [ %call, %if.end.cleanup82_crit_edge ], [ -19, %entry.cleanup82_crit_edge ]
  ret i32 %retval.6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serio_driver_probe(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -392
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %add.ptr3 = getelementptr i8, ptr %1, i32 -40
  %drv_mutex.i = getelementptr i8, ptr %dev, i32 -96
  tail call void @mutex_lock_nested(ptr noundef %drv_mutex.i, i32 noundef 0) #11
  %connect.i = getelementptr i8, ptr %1, i32 -20
  %2 = ptrtoint ptr %connect.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connect.i, align 4
  %call.i = tail call i32 %3(ptr noundef %add.ptr, ptr noundef %add.ptr3) #11
  tail call void @mutex_unlock(ptr noundef %drv_mutex.i) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serio_driver_remove(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_mutex.i = getelementptr i8, ptr %dev, i32 -96
  tail call void @mutex_lock_nested(ptr noundef %drv_mutex.i, i32 noundef 0) #11
  %drv.i = getelementptr i8, ptr %dev, i32 -100
  %0 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.serio_disconnect_driver.exit_crit_edge, label %if.then.i

entry.serio_disconnect_driver.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %serio_disconnect_driver.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %dev, i32 -392
  %disconnect.i = getelementptr inbounds %struct.serio_driver, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %disconnect.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disconnect.i, align 4
  tail call void %3(ptr noundef %add.ptr) #11
  br label %serio_disconnect_driver.exit

serio_disconnect_driver.exit:                     ; preds = %if.then.i, %entry.serio_disconnect_driver.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %drv_mutex.i) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serio_shutdown(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -392
  %drv_mutex.i = getelementptr i8, ptr %dev, i32 -96
  tail call void @mutex_lock_nested(ptr noundef %drv_mutex.i, i32 noundef 0) #11
  %drv.i = getelementptr i8, ptr %dev, i32 -100
  %0 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.serio_cleanup.exit_crit_edge, label %land.lhs.true.i

entry.serio_cleanup.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %serio_cleanup.exit

land.lhs.true.i:                                  ; preds = %entry
  %cleanup.i = getelementptr inbounds %struct.serio_driver, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cleanup.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cleanup.i, align 4
  %tobool2.not.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.serio_cleanup.exit_crit_edge, label %if.then.i

land.lhs.true.i.serio_cleanup.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %serio_cleanup.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %3(ptr noundef %add.ptr) #11
  br label %serio_cleanup.exit

serio_cleanup.exit:                               ; preds = %if.then.i, %land.lhs.true.i.serio_cleanup.exit_crit_edge, %entry.serio_cleanup.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %drv_mutex.i) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @serio_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @bus_unregister(ptr noundef nonnull @serio_bus) #11
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef nonnull @serio_event_work) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @serio_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bus_register(ptr noundef nonnull @serio_bus) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %call) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serio_release_port(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -392
  tail call void @kfree(ptr noundef %add.ptr) #11
  tail call void @module_put(ptr noundef null) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @type_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr i8, ptr %dev, i32 -195
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id, align 1
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proto_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %proto = getelementptr i8, ptr %dev, i32 -192
  %0 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %proto, align 1
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %id1 = getelementptr i8, ptr %dev, i32 -193
  %0 = ptrtoint ptr %id1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id1, align 1
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @extra_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %extra = getelementptr i8, ptr %dev, i32 -194
  %0 = ptrtoint ptr %extra to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %extra, align 1
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @modalias_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr i8, ptr %dev, i32 -195
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id, align 1
  %conv = zext i8 %1 to i32
  %proto = getelementptr i8, ptr %dev, i32 -192
  %2 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %proto, align 1
  %conv2 = zext i8 %3 to i32
  %id4 = getelementptr i8, ptr %dev, i32 -193
  %4 = ptrtoint ptr %id4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id4, align 1
  %conv5 = zext i8 %5 to i32
  %extra = getelementptr i8, ptr %dev, i32 -194
  %6 = ptrtoint ptr %extra to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %extra, align 1
  %conv7 = zext i8 %7 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.20, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv5, i32 noundef %conv7)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serio_show_description(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr i8, ptr %dev, i32 -388
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, ptr noundef %name)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drvctl_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -392
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef nonnull @serio_mutex, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.24, i32 noundef %count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %children.i = getelementptr i8, ptr %dev, i32 -112
  %0 = ptrtoint ptr %children.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %children.i, align 4
  %cmp.i.not21.i = icmp eq ptr %1, %children.i
  br i1 %cmp.i.not21.i, label %if.then3.serio_disconnect_port.exit_crit_edge, label %if.then3.while.cond1.i_crit_edge

if.then3.while.cond1.i_crit_edge:                 ; preds = %if.then3
  br label %while.cond1.i

if.then3.serio_disconnect_port.exit_crit_edge:    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %serio_disconnect_port.exit

while.cond1.i:                                    ; preds = %while.cond1.i.backedge, %if.then3.while.cond1.i_crit_edge
  %s.1.i = phi ptr [ %s.1.i.be, %while.cond1.i.backedge ], [ %add.ptr, %if.then3.while.cond1.i_crit_edge ]
  %children2.i = getelementptr inbounds %struct.serio, ptr %s.1.i, i32 0, i32 14
  %2 = ptrtoint ptr %children2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %children2.i, align 4
  %cmp.i19.not.i = icmp eq ptr %3, %children2.i
  %add.ptr.i = getelementptr i8, ptr %3, i32 -272
  br i1 %cmp.i19.not.i, label %while.end.i, label %while.cond1.i.while.cond1.i.backedge_crit_edge

while.cond1.i.while.cond1.i.backedge_crit_edge:   ; preds = %while.cond1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond1.i.backedge

while.cond1.i.backedge:                           ; preds = %if.end.i.while.cond1.i.backedge_crit_edge, %while.cond1.i.while.cond1.i.backedge_crit_edge
  %s.1.i.be = phi ptr [ %add.ptr.i, %while.cond1.i.while.cond1.i.backedge_crit_edge ], [ %s.2.i, %if.end.i.while.cond1.i.backedge_crit_edge ]
  br label %while.cond1.i

while.end.i:                                      ; preds = %while.cond1.i
  %cmp.not.i = icmp eq ptr %s.1.i, %add.ptr
  br i1 %cmp.not.i, label %while.end.i.if.end.i_crit_edge, label %if.then.i

while.end.i.if.end.i_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %parent8.i = getelementptr inbounds %struct.serio, ptr %s.1.i, i32 0, i32 12
  %4 = ptrtoint ptr %parent8.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent8.i, align 4
  %dev.i = getelementptr inbounds %struct.serio, ptr %s.1.i, i32 0, i32 18
  tail call void @device_release_driver(ptr noundef %dev.i) #11
  tail call fastcc void @serio_destroy_port(ptr noundef %s.1.i) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.end.i.if.end.i_crit_edge
  %s.2.i = phi ptr [ %5, %if.then.i ], [ %add.ptr, %while.end.i.if.end.i_crit_edge ]
  %6 = ptrtoint ptr %children.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %children.i, align 4
  %cmp.i.not.i = icmp eq ptr %7, %children.i
  br i1 %cmp.i.not.i, label %if.end.i.serio_disconnect_port.exit_crit_edge, label %if.end.i.while.cond1.i.backedge_crit_edge

if.end.i.while.cond1.i.backedge_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond1.i.backedge

if.end.i.serio_disconnect_port.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %serio_disconnect_port.exit

serio_disconnect_port.exit:                       ; preds = %if.end.i.serio_disconnect_port.exit_crit_edge, %if.then3.serio_disconnect_port.exit_crit_edge
  tail call void @device_release_driver(ptr noundef %dev) #11
  br label %if.end22.thread

if.else:                                          ; preds = %if.end
  %call4 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.else.do.body.i_crit_edge, label %if.else7

if.else.do.body.i_crit_edge:                      ; preds = %if.else
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.else.do.body.i_crit_edge
  %s.0.i = phi ptr [ %add.ptr15.i, %do.cond.i.do.body.i_crit_edge ], [ %add.ptr, %if.else.do.body.i_crit_edge ]
  %call.i = tail call fastcc i32 @serio_reconnect_port(ptr noundef %s.0.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i44, label %do.body.i.while.cond.i.preheader_crit_edge

do.body.i.while.cond.i.preheader_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.preheader

if.then.i44:                                      ; preds = %do.body.i
  %children.i42 = getelementptr inbounds %struct.serio, ptr %s.0.i, i32 0, i32 14
  %8 = ptrtoint ptr %children.i42 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %children.i42, align 4
  %cmp.i.not.i43 = icmp eq ptr %9, %children.i42
  br i1 %cmp.i.not.i43, label %if.then.i44.while.cond.i.preheader_crit_edge, label %if.then.i44.do.cond.i_crit_edge

if.then.i44.do.cond.i_crit_edge:                  ; preds = %if.then.i44
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond.i

if.then.i44.while.cond.i.preheader_crit_edge:     ; preds = %if.then.i44
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.preheader

while.cond.i.preheader:                           ; preds = %if.then.i44.while.cond.i.preheader_crit_edge, %do.body.i.while.cond.i.preheader_crit_edge
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %while.cond.i.preheader
  %s.1.i45 = phi ptr [ %11, %while.body.i.while.cond.i_crit_edge ], [ %s.0.i, %while.cond.i.preheader ]
  %cmp.not.i46 = icmp eq ptr %s.1.i45, %add.ptr
  br i1 %cmp.not.i46, label %while.cond.i.if.end22.thread_crit_edge, label %while.body.i

while.cond.i.if.end22.thread_crit_edge:           ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.thread

while.body.i:                                     ; preds = %while.cond.i
  %parent6.i = getelementptr inbounds %struct.serio, ptr %s.1.i45, i32 0, i32 12
  %10 = ptrtoint ptr %parent6.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent6.i, align 4
  %child_node.i = getelementptr inbounds %struct.serio, ptr %s.1.i45, i32 0, i32 13
  %children7.i = getelementptr inbounds %struct.serio, ptr %11, i32 0, i32 14
  %12 = ptrtoint ptr %child_node.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %child_node.i, align 4
  %cmp.i28.not.i = icmp eq ptr %13, %children7.i
  br i1 %cmp.i28.not.i, label %while.body.i.while.cond.i_crit_edge, label %while.body.i.do.cond.i_crit_edge

while.body.i.do.cond.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond.i

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

do.cond.i:                                        ; preds = %while.body.i.do.cond.i_crit_edge, %if.then.i44.do.cond.i_crit_edge
  %.lcssa.sink.i = phi ptr [ %9, %if.then.i44.do.cond.i_crit_edge ], [ %13, %while.body.i.do.cond.i_crit_edge ]
  %add.ptr15.i = getelementptr i8, ptr %.lcssa.sink.i, i32 -272
  %cmp17.not.i = icmp eq ptr %add.ptr15.i, %add.ptr
  br i1 %cmp17.not.i, label %do.cond.i.if.end22.thread_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

do.cond.i.if.end22.thread_crit_edge:              ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.thread

if.else7:                                         ; preds = %if.else
  %call8 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.26, i32 noundef %count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else7
  %children.i47 = getelementptr i8, ptr %dev, i32 -112
  %14 = ptrtoint ptr %children.i47 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %children.i47, align 4
  %cmp.i.not21.i48 = icmp eq ptr %15, %children.i47
  br i1 %cmp.i.not21.i48, label %if.then10.serio_disconnect_port.exit65_crit_edge, label %if.then10.while.cond1.i55_crit_edge

if.then10.while.cond1.i55_crit_edge:              ; preds = %if.then10
  br label %while.cond1.i55

if.then10.serio_disconnect_port.exit65_crit_edge: ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %serio_disconnect_port.exit65

while.cond1.i55:                                  ; preds = %while.cond1.i55.backedge, %if.then10.while.cond1.i55_crit_edge
  %s.1.i51 = phi ptr [ %s.1.i51.be, %while.cond1.i55.backedge ], [ %add.ptr, %if.then10.while.cond1.i55_crit_edge ]
  %children2.i52 = getelementptr inbounds %struct.serio, ptr %s.1.i51, i32 0, i32 14
  %16 = ptrtoint ptr %children2.i52 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %children2.i52, align 4
  %cmp.i19.not.i53 = icmp eq ptr %17, %children2.i52
  %add.ptr.i54 = getelementptr i8, ptr %17, i32 -272
  br i1 %cmp.i19.not.i53, label %while.end.i57, label %while.cond1.i55.while.cond1.i55.backedge_crit_edge

while.cond1.i55.while.cond1.i55.backedge_crit_edge: ; preds = %while.cond1.i55
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond1.i55.backedge

while.cond1.i55.backedge:                         ; preds = %if.end.i63.while.cond1.i55.backedge_crit_edge, %while.cond1.i55.while.cond1.i55.backedge_crit_edge
  %s.1.i51.be = phi ptr [ %add.ptr.i54, %while.cond1.i55.while.cond1.i55.backedge_crit_edge ], [ %s.2.i61, %if.end.i63.while.cond1.i55.backedge_crit_edge ]
  br label %while.cond1.i55

while.end.i57:                                    ; preds = %while.cond1.i55
  %cmp.not.i56 = icmp eq ptr %s.1.i51, %add.ptr
  br i1 %cmp.not.i56, label %while.end.i57.if.end.i63_crit_edge, label %if.then.i60

while.end.i57.if.end.i63_crit_edge:               ; preds = %while.end.i57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i63

if.then.i60:                                      ; preds = %while.end.i57
  call void @__sanitizer_cov_trace_pc() #13
  %parent8.i58 = getelementptr inbounds %struct.serio, ptr %s.1.i51, i32 0, i32 12
  %18 = ptrtoint ptr %parent8.i58 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent8.i58, align 4
  %dev.i59 = getelementptr inbounds %struct.serio, ptr %s.1.i51, i32 0, i32 18
  tail call void @device_release_driver(ptr noundef %dev.i59) #11
  tail call fastcc void @serio_destroy_port(ptr noundef %s.1.i51) #11
  br label %if.end.i63

if.end.i63:                                       ; preds = %if.then.i60, %while.end.i57.if.end.i63_crit_edge
  %s.2.i61 = phi ptr [ %19, %if.then.i60 ], [ %add.ptr, %while.end.i57.if.end.i63_crit_edge ]
  %20 = ptrtoint ptr %children.i47 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %children.i47, align 4
  %cmp.i.not.i62 = icmp eq ptr %21, %children.i47
  br i1 %cmp.i.not.i62, label %if.end.i63.serio_disconnect_port.exit65_crit_edge, label %if.end.i63.while.cond1.i55.backedge_crit_edge

if.end.i63.while.cond1.i55.backedge_crit_edge:    ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond1.i55.backedge

if.end.i63.serio_disconnect_port.exit65_crit_edge: ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #13
  br label %serio_disconnect_port.exit65

serio_disconnect_port.exit65:                     ; preds = %if.end.i63.serio_disconnect_port.exit65_crit_edge, %if.then10.serio_disconnect_port.exit65_crit_edge
  tail call void @device_release_driver(ptr noundef %dev) #11
  %call.i67 = tail call i32 @device_attach(ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i67)
  %cmp.i = icmp sgt i32 %call.i67, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call.i67)
  %cmp1.not.i = icmp eq i32 %call.i67, -517
  %or.cond.i = or i1 %cmp.i, %cmp1.not.i
  br i1 %or.cond.i, label %serio_disconnect_port.exit65.serio_find_driver.exit_crit_edge, label %do.end.i

serio_disconnect_port.exit65.serio_find_driver.exit_crit_edge: ; preds = %serio_disconnect_port.exit65
  call void @__sanitizer_cov_trace_pc() #13
  br label %serio_find_driver.exit

do.end.i:                                         ; preds = %serio_disconnect_port.exit65
  call void @__sanitizer_cov_trace_pc() #13
  %phys.i = getelementptr i8, ptr %dev, i32 -356
  %name.i = getelementptr i8, ptr %dev, i32 -388
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.37, ptr noundef %phys.i, ptr noundef %name.i, i32 noundef %call.i67) #15
  br label %serio_find_driver.exit

serio_find_driver.exit:                           ; preds = %do.end.i, %serio_disconnect_port.exit65.serio_find_driver.exit_crit_edge
  tail call fastcc void @serio_remove_duplicate_events(ptr noundef %add.ptr, i32 noundef 0)
  br label %if.end22.thread

if.else11:                                        ; preds = %if.else7
  %call12 = tail call ptr @driver_find(ptr noundef %buf, ptr noundef nonnull @serio_bus) #11
  %cmp.not = icmp eq ptr %call12, null
  br i1 %cmp.not, label %if.end22.thread96, label %if.then13

if.end22.thread96:                                ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef nonnull @serio_mutex) #11
  br label %cleanup

if.then13:                                        ; preds = %if.else11
  %children.i69 = getelementptr i8, ptr %dev, i32 -112
  %22 = ptrtoint ptr %children.i69 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %children.i69, align 4
  %cmp.i.not21.i70 = icmp eq ptr %23, %children.i69
  br i1 %cmp.i.not21.i70, label %if.then13.serio_disconnect_port.exit87_crit_edge, label %if.then13.while.cond1.i77_crit_edge

if.then13.while.cond1.i77_crit_edge:              ; preds = %if.then13
  br label %while.cond1.i77

if.then13.serio_disconnect_port.exit87_crit_edge: ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %serio_disconnect_port.exit87

while.cond1.i77:                                  ; preds = %while.cond1.i77.backedge, %if.then13.while.cond1.i77_crit_edge
  %s.1.i73 = phi ptr [ %s.1.i73.be, %while.cond1.i77.backedge ], [ %add.ptr, %if.then13.while.cond1.i77_crit_edge ]
  %children2.i74 = getelementptr inbounds %struct.serio, ptr %s.1.i73, i32 0, i32 14
  %24 = ptrtoint ptr %children2.i74 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %children2.i74, align 4
  %cmp.i19.not.i75 = icmp eq ptr %25, %children2.i74
  %add.ptr.i76 = getelementptr i8, ptr %25, i32 -272
  br i1 %cmp.i19.not.i75, label %while.end.i79, label %while.cond1.i77.while.cond1.i77.backedge_crit_edge

while.cond1.i77.while.cond1.i77.backedge_crit_edge: ; preds = %while.cond1.i77
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond1.i77.backedge

while.cond1.i77.backedge:                         ; preds = %if.end.i85.while.cond1.i77.backedge_crit_edge, %while.cond1.i77.while.cond1.i77.backedge_crit_edge
  %s.1.i73.be = phi ptr [ %add.ptr.i76, %while.cond1.i77.while.cond1.i77.backedge_crit_edge ], [ %s.2.i83, %if.end.i85.while.cond1.i77.backedge_crit_edge ]
  br label %while.cond1.i77

while.end.i79:                                    ; preds = %while.cond1.i77
  %cmp.not.i78 = icmp eq ptr %s.1.i73, %add.ptr
  br i1 %cmp.not.i78, label %while.end.i79.if.end.i85_crit_edge, label %if.then.i82

while.end.i79.if.end.i85_crit_edge:               ; preds = %while.end.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i85

if.then.i82:                                      ; preds = %while.end.i79
  call void @__sanitizer_cov_trace_pc() #13
  %parent8.i80 = getelementptr inbounds %struct.serio, ptr %s.1.i73, i32 0, i32 12
  %26 = ptrtoint ptr %parent8.i80 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %parent8.i80, align 4
  %dev.i81 = getelementptr inbounds %struct.serio, ptr %s.1.i73, i32 0, i32 18
  tail call void @device_release_driver(ptr noundef %dev.i81) #11
  tail call fastcc void @serio_destroy_port(ptr noundef %s.1.i73) #11
  br label %if.end.i85

if.end.i85:                                       ; preds = %if.then.i82, %while.end.i79.if.end.i85_crit_edge
  %s.2.i83 = phi ptr [ %27, %if.then.i82 ], [ %add.ptr, %while.end.i79.if.end.i85_crit_edge ]
  %28 = ptrtoint ptr %children.i69 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %children.i69, align 4
  %cmp.i.not.i84 = icmp eq ptr %29, %children.i69
  br i1 %cmp.i.not.i84, label %if.end.i85.serio_disconnect_port.exit87_crit_edge, label %if.end.i85.while.cond1.i77.backedge_crit_edge

if.end.i85.while.cond1.i77.backedge_crit_edge:    ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond1.i77.backedge

if.end.i85.serio_disconnect_port.exit87_crit_edge: ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #13
  br label %serio_disconnect_port.exit87

serio_disconnect_port.exit87:                     ; preds = %if.end.i85.serio_disconnect_port.exit87_crit_edge, %if.then13.serio_disconnect_port.exit87_crit_edge
  tail call void @device_release_driver(ptr noundef %dev) #11
  %add.ptr16 = getelementptr i8, ptr %call12, i32 -40
  %id_table.i = getelementptr i8, ptr %call12, i32 -36
  %30 = ptrtoint ptr %id_table.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %id_table.i, align 4
  %id45.i.i = getelementptr i8, ptr %dev, i32 -193
  %id.i.i = getelementptr i8, ptr %dev, i32 -195
  %proto20.i.i = getelementptr i8, ptr %dev, i32 -192
  %extra32.i.i = getelementptr i8, ptr %dev, i32 -194
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %if.end.i.i, %serio_disconnect_port.exit87
  %ids.addr.0.i.i = phi ptr [ %31, %serio_disconnect_port.exit87 ], [ %incdec.ptr.i.i, %if.end.i.i ]
  %32 = ptrtoint ptr %ids.addr.0.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ids.addr.0.i.i, align 1
  %34 = zext i8 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.56)
  switch i8 %33, label %while.cond.i.i.lor.lhs.false.i.i_crit_edge [
    i8 0, label %lor.rhs.i.i
    i8 -1, label %while.cond.i.i.land.lhs.true.i.i_crit_edge
  ]

while.cond.i.i.land.lhs.true.i.i_crit_edge:       ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i.i

while.cond.i.i.lor.lhs.false.i.i_crit_edge:       ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i.i

lor.rhs.i.i:                                      ; preds = %while.cond.i.i
  %proto.i.i = getelementptr inbounds %struct.serio_device_id, ptr %ids.addr.0.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %proto.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %proto.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool2.not.i.i = icmp eq i8 %36, 0
  br i1 %tobool2.not.i.i, label %lor.rhs.i.i.if.end22_crit_edge, label %lor.rhs.i.i.lor.lhs.false.i.i_crit_edge

lor.rhs.i.i.lor.lhs.false.i.i_crit_edge:          ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i.i

lor.rhs.i.i.if.end22_crit_edge:                   ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

lor.lhs.false.i.i:                                ; preds = %lor.rhs.i.i.lor.lhs.false.i.i_crit_edge, %while.cond.i.i.lor.lhs.false.i.i_crit_edge
  %37 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %id.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %38)
  %cmp10.i.i = icmp eq i8 %33, %38
  br i1 %cmp10.i.i, label %lor.lhs.false.i.i.land.lhs.true.i.i_crit_edge, label %lor.lhs.false.i.i.if.end.i.i_crit_edge

lor.lhs.false.i.i.if.end.i.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

lor.lhs.false.i.i.land.lhs.true.i.i_crit_edge:    ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i.land.lhs.true.i.i_crit_edge, %while.cond.i.i.land.lhs.true.i.i_crit_edge
  %proto12.i.i = getelementptr inbounds %struct.serio_device_id, ptr %ids.addr.0.i.i, i32 0, i32 3
  %39 = ptrtoint ptr %proto12.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %proto12.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %40)
  %cmp14.i.i = icmp eq i8 %40, -1
  br i1 %cmp14.i.i, label %land.lhs.true.i.i.land.lhs.true24.i.i_crit_edge, label %lor.lhs.false16.i.i

land.lhs.true.i.i.land.lhs.true24.i.i_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true24.i.i

lor.lhs.false16.i.i:                              ; preds = %land.lhs.true.i.i
  %41 = ptrtoint ptr %proto20.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %proto20.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %40, i8 %42)
  %cmp22.i.i = icmp eq i8 %40, %42
  br i1 %cmp22.i.i, label %lor.lhs.false16.i.i.land.lhs.true24.i.i_crit_edge, label %lor.lhs.false16.i.i.if.end.i.i_crit_edge

lor.lhs.false16.i.i.if.end.i.i_crit_edge:         ; preds = %lor.lhs.false16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

lor.lhs.false16.i.i.land.lhs.true24.i.i_crit_edge: ; preds = %lor.lhs.false16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true24.i.i

land.lhs.true24.i.i:                              ; preds = %lor.lhs.false16.i.i.land.lhs.true24.i.i_crit_edge, %land.lhs.true.i.i.land.lhs.true24.i.i_crit_edge
  %extra.i.i = getelementptr inbounds %struct.serio_device_id, ptr %ids.addr.0.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %extra.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %extra.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %44)
  %cmp26.i.i = icmp eq i8 %44, -1
  br i1 %cmp26.i.i, label %land.lhs.true24.i.i.land.lhs.true36.i.i_crit_edge, label %lor.lhs.false28.i.i

land.lhs.true24.i.i.land.lhs.true36.i.i_crit_edge: ; preds = %land.lhs.true24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true36.i.i

lor.lhs.false28.i.i:                              ; preds = %land.lhs.true24.i.i
  %45 = ptrtoint ptr %extra32.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %extra32.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %44, i8 %46)
  %cmp34.i.i = icmp eq i8 %44, %46
  br i1 %cmp34.i.i, label %lor.lhs.false28.i.i.land.lhs.true36.i.i_crit_edge, label %lor.lhs.false28.i.i.if.end.i.i_crit_edge

lor.lhs.false28.i.i.if.end.i.i_crit_edge:         ; preds = %lor.lhs.false28.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

lor.lhs.false28.i.i.land.lhs.true36.i.i_crit_edge: ; preds = %lor.lhs.false28.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true36.i.i

land.lhs.true36.i.i:                              ; preds = %lor.lhs.false28.i.i.land.lhs.true36.i.i_crit_edge, %land.lhs.true24.i.i.land.lhs.true36.i.i_crit_edge
  %id37.i.i = getelementptr inbounds %struct.serio_device_id, ptr %ids.addr.0.i.i, i32 0, i32 2
  %47 = ptrtoint ptr %id37.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %id37.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %48)
  %cmp39.i.i = icmp eq i8 %48, -1
  br i1 %cmp39.i.i, label %land.lhs.true36.i.i.if.then.i89_crit_edge, label %lor.lhs.false41.i.i

land.lhs.true36.i.i.if.then.i89_crit_edge:        ; preds = %land.lhs.true36.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i89

lor.lhs.false41.i.i:                              ; preds = %land.lhs.true36.i.i
  %49 = ptrtoint ptr %id45.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %id45.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %48, i8 %50)
  %cmp47.i.i = icmp eq i8 %48, %50
  br i1 %cmp47.i.i, label %lor.lhs.false41.i.i.if.then.i89_crit_edge, label %lor.lhs.false41.i.i.if.end.i.i_crit_edge

lor.lhs.false41.i.i.if.end.i.i_crit_edge:         ; preds = %lor.lhs.false41.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

lor.lhs.false41.i.i.if.then.i89_crit_edge:        ; preds = %lor.lhs.false41.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i89

if.end.i.i:                                       ; preds = %lor.lhs.false41.i.i.if.end.i.i_crit_edge, %lor.lhs.false28.i.i.if.end.i.i_crit_edge, %lor.lhs.false16.i.i.if.end.i.i_crit_edge, %lor.lhs.false.i.i.if.end.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr %struct.serio_device_id, ptr %ids.addr.0.i.i, i32 1
  br label %while.cond.i.i

if.then.i89:                                      ; preds = %lor.lhs.false41.i.i.if.then.i89_crit_edge, %land.lhs.true36.i.i.if.then.i89_crit_edge
  %driver1.i = getelementptr i8, ptr %dev, i32 156
  %51 = ptrtoint ptr %driver1.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call12, ptr %driver1.i, align 4
  %drv_mutex.i.i = getelementptr i8, ptr %dev, i32 -96
  tail call void @mutex_lock_nested(ptr noundef %drv_mutex.i.i, i32 noundef 0) #11
  %connect.i.i = getelementptr i8, ptr %call12, i32 -20
  %52 = ptrtoint ptr %connect.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %connect.i.i, align 4
  %call.i.i = tail call i32 %53(ptr noundef %add.ptr, ptr noundef %add.ptr16) #11
  tail call void @mutex_unlock(ptr noundef %drv_mutex.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not.i, label %if.end.i90, label %if.then.i89.cleanup.sink.split.i_crit_edge

if.then.i89.cleanup.sink.split.i_crit_edge:       ; preds = %if.then.i89
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

if.end.i90:                                       ; preds = %if.then.i89
  %call8.i = tail call i32 @device_bind_driver(ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end.i90.if.end22_crit_edge, label %do.end.i93

if.end.i90.if.end22_crit_edge:                    ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

do.end.i93:                                       ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #13
  %phys.i91 = getelementptr i8, ptr %dev, i32 -356
  %name.i92 = getelementptr i8, ptr %dev, i32 -388
  %54 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add.ptr16, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef %phys.i91, ptr noundef %name.i92, ptr noundef %55, i32 noundef %call8.i) #15
  tail call fastcc void @serio_disconnect_driver(ptr noundef %add.ptr) #11
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %do.end.i93, %if.then.i89.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ %call8.i, %do.end.i93 ], [ -19, %if.then.i89.cleanup.sink.split.i_crit_edge ]
  %56 = ptrtoint ptr %driver1.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %driver1.i, align 4
  br label %if.end22

if.end22.thread:                                  ; preds = %serio_find_driver.exit, %do.cond.i.if.end22.thread_crit_edge, %while.cond.i.if.end22.thread_crit_edge, %serio_disconnect_port.exit
  tail call void @mutex_unlock(ptr noundef nonnull @serio_mutex) #11
  br label %57

if.end22:                                         ; preds = %cleanup.sink.split.i, %if.end.i90.if.end22_crit_edge, %lor.rhs.i.i.if.end22_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i90.if.end22_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ], [ 0, %lor.rhs.i.i.if.end22_crit_edge ]
  tail call fastcc void @serio_remove_duplicate_events(ptr noundef %add.ptr, i32 noundef 0)
  tail call void @mutex_unlock(ptr noundef nonnull @serio_mutex) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool23.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool23.not, label %if.end22._crit_edge, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end22._crit_edge:                              ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %57

57:                                               ; preds = %if.end22._crit_edge, %if.end22.thread
  br label %cleanup

cleanup:                                          ; preds = %57, %if.end22.cleanup_crit_edge, %if.end22.thread96, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %count, %57 ], [ %retval.0.i, %if.end22.cleanup_crit_edge ], [ -22, %if.end22.thread96 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @serio_remove_duplicate_events(ptr noundef readnone %object, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @serio_event_lock) #11
  %0 = load ptr, ptr @serio_event_list, align 4
  %cmp11.not36 = icmp eq ptr %0, @serio_event_list
  br i1 %cmp11.not36, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in37 = phi ptr [ %.pn39, %for.inc.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %e.038 = getelementptr i8, ptr %.pn.in37, i32 -12
  %1 = ptrtoint ptr %.pn.in37 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn39 = load ptr, ptr %.pn.in37, align 4
  %object13 = getelementptr i8, ptr %.pn.in37, i32 -8
  %2 = ptrtoint ptr %object13 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %object13, align 4
  %cmp14 = icmp eq ptr %3, %object
  br i1 %cmp14, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %for.body
  %4 = ptrtoint ptr %e.038 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %e.038, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %type)
  %cmp17.not = icmp eq i32 %5, %type
  br i1 %cmp17.not, label %if.end, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end:                                           ; preds = %if.then
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in37) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in37, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %.pn.in37 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %.pn.in37, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %12 = ptrtoint ptr %.pn.in37 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %.pn.in37, ptr %.pn.in37, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in37, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %.pn.in37, ptr %prev.i3.i, align 4
  %owner.i = getelementptr i8, ptr %.pn.in37, i32 -4
  %14 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %owner.i, align 4
  tail call void @module_put(ptr noundef %15) #11
  tail call void @kfree(ptr noundef %e.038) #11
  br label %for.inc

for.inc:                                          ; preds = %list_del_init.exit, %for.body.for.inc_crit_edge
  %cmp11.not = icmp eq ptr %.pn39, @serio_event_list
  br i1 %cmp11.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @serio_event_lock, i32 noundef %call2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @driver_find(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @serio_reconnect_port(ptr noundef %serio) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_mutex.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %drv_mutex.i, i32 noundef 0) #11
  %drv.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 16
  %0 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.serio_reconnect_driver.exit.thread_crit_edge, label %land.lhs.true.i

entry.serio_reconnect_driver.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %serio_reconnect_driver.exit.thread

land.lhs.true.i:                                  ; preds = %entry
  %reconnect.i = getelementptr inbounds %struct.serio_driver, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %reconnect.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reconnect.i, align 4
  %tobool3.not.i = icmp eq ptr %3, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.serio_reconnect_driver.exit.thread_crit_edge, label %serio_reconnect_driver.exit

land.lhs.true.i.serio_reconnect_driver.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %serio_reconnect_driver.exit.thread

serio_reconnect_driver.exit.thread:               ; preds = %land.lhs.true.i.serio_reconnect_driver.exit.thread_crit_edge, %entry.serio_reconnect_driver.exit.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %drv_mutex.i) #11
  br label %if.then

serio_reconnect_driver.exit:                      ; preds = %land.lhs.true.i
  %call.i = tail call i32 %3(ptr noundef %serio) #11
  tail call void @mutex_unlock(ptr noundef %drv_mutex.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %serio_reconnect_driver.exit.if.end_crit_edge, label %serio_reconnect_driver.exit.if.then_crit_edge

serio_reconnect_driver.exit.if.then_crit_edge:    ; preds = %serio_reconnect_driver.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

serio_reconnect_driver.exit.if.end_crit_edge:     ; preds = %serio_reconnect_driver.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %serio_reconnect_driver.exit.if.then_crit_edge, %serio_reconnect_driver.exit.thread
  %retval1.0.i10 = phi i32 [ -1, %serio_reconnect_driver.exit.thread ], [ %call.i, %serio_reconnect_driver.exit.if.then_crit_edge ]
  %children.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 14
  %4 = ptrtoint ptr %children.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %children.i, align 4
  %cmp.i.not21.i = icmp eq ptr %5, %children.i
  br i1 %cmp.i.not21.i, label %if.then.serio_disconnect_port.exit_crit_edge, label %if.then.while.cond1.i_crit_edge

if.then.while.cond1.i_crit_edge:                  ; preds = %if.then
  br label %while.cond1.i

if.then.serio_disconnect_port.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %serio_disconnect_port.exit

while.cond1.i:                                    ; preds = %while.cond1.i.backedge, %if.then.while.cond1.i_crit_edge
  %s.1.i = phi ptr [ %s.1.i.be, %while.cond1.i.backedge ], [ %serio, %if.then.while.cond1.i_crit_edge ]
  %children2.i = getelementptr inbounds %struct.serio, ptr %s.1.i, i32 0, i32 14
  %6 = ptrtoint ptr %children2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %children2.i, align 4
  %cmp.i19.not.i = icmp eq ptr %7, %children2.i
  %add.ptr.i = getelementptr i8, ptr %7, i32 -272
  br i1 %cmp.i19.not.i, label %while.end.i, label %while.cond1.i.while.cond1.i.backedge_crit_edge

while.cond1.i.while.cond1.i.backedge_crit_edge:   ; preds = %while.cond1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond1.i.backedge

while.cond1.i.backedge:                           ; preds = %if.end.i.while.cond1.i.backedge_crit_edge, %while.cond1.i.while.cond1.i.backedge_crit_edge
  %s.1.i.be = phi ptr [ %add.ptr.i, %while.cond1.i.while.cond1.i.backedge_crit_edge ], [ %s.2.i, %if.end.i.while.cond1.i.backedge_crit_edge ]
  br label %while.cond1.i

while.end.i:                                      ; preds = %while.cond1.i
  %cmp.not.i = icmp eq ptr %s.1.i, %serio
  br i1 %cmp.not.i, label %while.end.i.if.end.i_crit_edge, label %if.then.i4

while.end.i.if.end.i_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i4:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %parent8.i = getelementptr inbounds %struct.serio, ptr %s.1.i, i32 0, i32 12
  %8 = ptrtoint ptr %parent8.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent8.i, align 4
  %dev.i = getelementptr inbounds %struct.serio, ptr %s.1.i, i32 0, i32 18
  tail call void @device_release_driver(ptr noundef %dev.i) #11
  tail call fastcc void @serio_destroy_port(ptr noundef %s.1.i) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i4, %while.end.i.if.end.i_crit_edge
  %s.2.i = phi ptr [ %9, %if.then.i4 ], [ %serio, %while.end.i.if.end.i_crit_edge ]
  %10 = ptrtoint ptr %children.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %children.i, align 4
  %cmp.i.not.i = icmp eq ptr %11, %children.i
  br i1 %cmp.i.not.i, label %if.end.i.serio_disconnect_port.exit_crit_edge, label %if.end.i.while.cond1.i.backedge_crit_edge

if.end.i.while.cond1.i.backedge_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond1.i.backedge

if.end.i.serio_disconnect_port.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %serio_disconnect_port.exit

serio_disconnect_port.exit:                       ; preds = %if.end.i.serio_disconnect_port.exit_crit_edge, %if.then.serio_disconnect_port.exit_crit_edge
  %dev10.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18
  tail call void @device_release_driver(ptr noundef %dev10.i) #11
  %call.i6 = tail call i32 @device_attach(ptr noundef %dev10.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i6)
  %cmp.i = icmp sgt i32 %call.i6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call.i6)
  %cmp1.not.i = icmp eq i32 %call.i6, -517
  %or.cond.i = or i1 %cmp.i, %cmp1.not.i
  br i1 %or.cond.i, label %serio_disconnect_port.exit.if.end_crit_edge, label %do.end.i

serio_disconnect_port.exit.if.end_crit_edge:      ; preds = %serio_disconnect_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end.i:                                         ; preds = %serio_disconnect_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  %phys.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 2
  %name.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev10.i, ptr noundef nonnull @.str.37, ptr noundef %phys.i, ptr noundef %name.i, i32 noundef %call.i6) #15
  br label %if.end

if.end:                                           ; preds = %do.end.i, %serio_disconnect_port.exit.if.end_crit_edge, %serio_reconnect_driver.exit.if.end_crit_edge
  %retval1.0.i11 = phi i32 [ 0, %serio_reconnect_driver.exit.if.end_crit_edge ], [ %retval1.0.i10, %serio_disconnect_port.exit.if.end_crit_edge ], [ %retval1.0.i10, %do.end.i ]
  ret i32 %retval1.0.i11
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_bind_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @serio_disconnect_driver(ptr noundef %serio) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_mutex = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %drv_mutex, i32 noundef 0) #11
  %drv = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 16
  %0 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %disconnect = getelementptr inbounds %struct.serio_driver, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %disconnect to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disconnect, align 4
  tail call void %3(ptr noundef %serio) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %drv_mutex) #11
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serio_show_bind_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %manual_bind = getelementptr i8, ptr %dev, i32 -196
  %0 = ptrtoint ptr %manual_bind to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %manual_bind, align 4, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %cond = select i1 %tobool.not, ptr @.str.33, ptr @.str.32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, ptr noundef nonnull %cond)
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @serio_set_bind_mode(ptr nocapture noundef writeonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.32, i32 noundef %count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end7.sink.split_crit_edge, label %if.else

entry.if.end7.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.sink.split

if.else:                                          ; preds = %entry
  %call2 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.33, i32 noundef %count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.else.if.end7.sink.split_crit_edge, label %if.else.if.end7_crit_edge

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.else.if.end7.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.sink.split

if.end7.sink.split:                               ; preds = %if.else.if.end7.sink.split_crit_edge, %entry.if.end7.sink.split_crit_edge
  %.sink = phi i8 [ 1, %entry.if.end7.sink.split_crit_edge ], [ 0, %if.else.if.end7.sink.split_crit_edge ]
  %manual_bind5 = getelementptr i8, ptr %dev, i32 -196
  %0 = ptrtoint ptr %manual_bind5 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %.sink, ptr %manual_bind5, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end7.sink.split, %if.else.if.end7_crit_edge
  %retval1.0 = phi i32 [ -22, %if.else.if.end7_crit_edge ], [ %count, %if.end7.sink.split ]
  ret i32 %retval1.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @firmware_id_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %firmware_id = getelementptr i8, ptr %dev, i32 -324
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, ptr noundef %firmware_id)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_release_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @description_show(ptr nocapture noundef readonly %drv, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %drv, i32 -40
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %tobool.not = icmp eq ptr %1, null
  %spec.select = select i1 %tobool.not, ptr @.str.39, ptr %1
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, ptr noundef nonnull %spec.select)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bind_mode_show(ptr nocapture noundef readonly %drv, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %manual_bind = getelementptr i8, ptr %drv, i32 -32
  %0 = ptrtoint ptr %manual_bind to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %manual_bind, align 4, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %cond = select i1 %tobool.not, ptr @.str.33, ptr @.str.32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, ptr noundef nonnull %cond)
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bind_mode_store(ptr nocapture noundef writeonly %drv, ptr nocapture noundef readonly %buf, i32 noundef %count) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.32, i32 noundef %count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end7.sink.split_crit_edge, label %if.else

entry.if.end7.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.sink.split

if.else:                                          ; preds = %entry
  %call2 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.33, i32 noundef %count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.else.if.end7.sink.split_crit_edge, label %if.else.if.end7_crit_edge

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.else.if.end7.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.sink.split

if.end7.sink.split:                               ; preds = %if.else.if.end7.sink.split_crit_edge, %entry.if.end7.sink.split_crit_edge
  %.sink = phi i8 [ 1, %entry.if.end7.sink.split_crit_edge ], [ 0, %if.else.if.end7.sink.split_crit_edge ]
  %manual_bind5 = getelementptr i8, ptr %drv, i32 -32
  %0 = ptrtoint ptr %manual_bind5 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %.sink, ptr %manual_bind5, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end7.sink.split, %if.else.if.end7_crit_edge
  %retval1.0 = phi i32 [ -22, %if.else.if.end7_crit_edge ], [ %count, %if.end7.sink.split ]
  ret i32 %retval1.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serio_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -392
  %drv_mutex.i = getelementptr i8, ptr %dev, i32 -96
  tail call void @mutex_lock_nested(ptr noundef %drv_mutex.i, i32 noundef 0) #11
  %drv.i = getelementptr i8, ptr %dev, i32 -100
  %0 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.serio_cleanup.exit_crit_edge, label %land.lhs.true.i

entry.serio_cleanup.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %serio_cleanup.exit

land.lhs.true.i:                                  ; preds = %entry
  %cleanup.i = getelementptr inbounds %struct.serio_driver, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cleanup.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cleanup.i, align 4
  %tobool2.not.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.serio_cleanup.exit_crit_edge, label %if.then.i

land.lhs.true.i.serio_cleanup.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %serio_cleanup.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %3(ptr noundef %add.ptr) #11
  br label %serio_cleanup.exit

serio_cleanup.exit:                               ; preds = %if.then.i, %land.lhs.true.i.serio_cleanup.exit_crit_edge, %entry.serio_cleanup.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %drv_mutex.i) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serio_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -392
  %drv_mutex = getelementptr i8, ptr %dev, i32 -96
  tail call void @mutex_lock_nested(ptr noundef %drv_mutex, i32 noundef 0) #11
  %drv = getelementptr i8, ptr %dev, i32 -100
  %0 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %land.lhs.true

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

land.lhs.true:                                    ; preds = %entry
  %fast_reconnect = getelementptr inbounds %struct.serio_driver, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %fast_reconnect to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fast_reconnect, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.if.end8_crit_edge, label %if.then

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 %3(ptr noundef %add.ptr) #11
  %4 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %call, label %do.end [
    i32 0, label %if.end13.critedge
    i32 -2, label %if.then.if.end8_crit_edge
  ]

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.46, i32 noundef %call) #15
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.then.if.end8_crit_edge, %land.lhs.true.if.end8_crit_edge, %entry.if.end8_crit_edge
  tail call void @mutex_unlock(ptr noundef %drv_mutex) #11
  %call12 = tail call fastcc i32 @serio_queue_event(ptr noundef %add.ptr, ptr noundef null, i32 noundef 1)
  br label %if.end13

if.end13.critedge:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef %drv_mutex) #11
  br label %if.end13

if.end13:                                         ; preds = %if.end13.critedge, %if.end8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serio_handle_event(ptr nocapture noundef readnone %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @serio_mutex, i32 noundef 0) #11
  %call2.i56 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @serio_event_lock) #11
  %0 = load volatile ptr, ptr @serio_event_list, align 4
  %cmp.i.not.i57 = icmp eq ptr %0, @serio_event_list
  br i1 %cmp.i.not.i57, label %entry.serio_get_event.exit.thread_crit_edge, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  br label %if.then.i

entry.serio_get_event.exit.thread_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %serio_get_event.exit.thread

serio_get_event.exit.thread:                      ; preds = %sw.epilog.serio_get_event.exit.thread_crit_edge, %entry.serio_get_event.exit.thread_crit_edge
  %call2.i.lcssa = phi i32 [ %call2.i56, %entry.serio_get_event.exit.thread_crit_edge ], [ %call2.i, %sw.epilog.serio_get_event.exit.thread_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @serio_event_lock, i32 noundef %call2.i.lcssa) #11
  br label %while.end

if.then.i:                                        ; preds = %sw.epilog.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %1 = phi ptr [ %61, %sw.epilog.if.then.i_crit_edge ], [ %0, %entry.if.then.i_crit_edge ]
  %call2.i58 = phi i32 [ %call2.i, %sw.epilog.if.then.i_crit_edge ], [ %call2.i56, %entry.if.then.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %1, i32 -12
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.serio_get_event.exit_crit_edge

if.then.i.serio_get_event.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %serio_get_event.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %serio_get_event.exit

serio_get_event.exit:                             ; preds = %if.end.i.i.i, %if.then.i.serio_get_event.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %prev.i3.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @serio_event_lock, i32 noundef %call2.i58) #11
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %serio_get_event.exit.while.end_crit_edge, label %while.body

serio_get_event.exit.while.end_crit_edge:         ; preds = %serio_get_event.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %serio_get_event.exit
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %11, label %while.body.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 1, label %sw.bb1
    i32 0, label %sw.bb4
    i32 2, label %sw.bb7
    i32 4, label %sw.bb9
  ]

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %while.body
  %object = getelementptr i8, ptr %1, i32 -8
  %13 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %object, align 4
  %parent1.i = getelementptr inbounds %struct.serio, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent1.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %sw.bb.if.end.i_crit_edge, label %if.then.i23

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i23:                                      ; preds = %sw.bb
  %lock.i.i = getelementptr inbounds %struct.serio, ptr %16, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i) #11
  %child_node.i = getelementptr inbounds %struct.serio, ptr %14, i32 0, i32 13
  %children.i = getelementptr inbounds %struct.serio, ptr %16, i32 0, i32 14
  %prev.i.i = getelementptr inbounds %struct.serio, ptr %16, i32 0, i32 14, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i22 = tail call zeroext i1 @__list_add_valid(ptr noundef %child_node.i, ptr noundef %18, ptr noundef %children.i) #11
  br i1 %call.i.i.i22, label %if.end.i.i.i24, label %if.then.i23.list_add_tail.exit.i_crit_edge

if.then.i23.list_add_tail.exit.i_crit_edge:       ; preds = %if.then.i23
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit.i

if.end.i.i.i24:                                   ; preds = %if.then.i23
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %child_node.i, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %child_node.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %children.i, ptr %child_node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.serio, ptr %14, i32 0, i32 13, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %child_node.i, ptr %18, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i24, %if.then.i23.list_add_tail.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i.i) #11
  br label %if.end.i

if.end.i:                                         ; preds = %list_add_tail.exit.i, %sw.bb.if.end.i_crit_edge
  %node.i = getelementptr inbounds %struct.serio, ptr %14, i32 0, i32 19
  %23 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @serio_list, i32 0, i32 1), align 4
  %call.i.i27.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %23, ptr noundef nonnull @serio_list) #11
  br i1 %call.i.i27.i, label %if.end.i.i29.i, label %if.end.i.list_add_tail.exit30.i_crit_edge

if.end.i.list_add_tail.exit30.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit30.i

if.end.i.i29.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %node.i, ptr getelementptr inbounds (%struct.list_head, ptr @serio_list, i32 0, i32 1), align 4
  %24 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @serio_list, ptr %node.i, align 4
  %prev3.i.i28.i = getelementptr inbounds %struct.serio, ptr %14, i32 0, i32 19, i32 1
  %25 = ptrtoint ptr %prev3.i.i28.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %23, ptr %prev3.i.i28.i, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %node.i, ptr %23, align 4
  br label %list_add_tail.exit30.i

list_add_tail.exit30.i:                           ; preds = %if.end.i.i29.i, %if.end.i.list_add_tail.exit30.i_crit_edge
  %start.i = getelementptr inbounds %struct.serio, ptr %14, i32 0, i32 10
  %27 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %start.i, align 4
  %tobool2.not.i = icmp eq ptr %28, null
  br i1 %tobool2.not.i, label %list_add_tail.exit30.i.if.end5.i_crit_edge, label %if.then3.i

list_add_tail.exit30.i.if.end5.i_crit_edge:       ; preds = %list_add_tail.exit30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

if.then3.i:                                       ; preds = %list_add_tail.exit30.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 %28(ptr noundef %14) #11
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %list_add_tail.exit30.i.if.end5.i_crit_edge
  %dev.i = getelementptr inbounds %struct.serio, ptr %14, i32 0, i32 18
  %call6.i = tail call i32 @device_add(ptr noundef %dev.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end5.i.sw.epilog_crit_edge, label %do.end.i

if.end5.i.sw.epilog_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end.i:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  %phys.i = getelementptr inbounds %struct.serio, ptr %14, i32 0, i32 2
  %name.i = getelementptr inbounds %struct.serio, ptr %14, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.49, ptr noundef %phys.i, ptr noundef %name.i, i32 noundef %call6.i) #15
  br label %sw.epilog

sw.bb1:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %object2 = getelementptr i8, ptr %1, i32 -8
  %29 = ptrtoint ptr %object2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %object2, align 4
  %call3 = tail call fastcc i32 @serio_reconnect_port(ptr noundef %30)
  br label %sw.epilog

sw.bb4:                                           ; preds = %while.body
  %object5 = getelementptr i8, ptr %1, i32 -8
  %31 = ptrtoint ptr %object5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %object5, align 4
  %children.i25 = getelementptr inbounds %struct.serio, ptr %32, i32 0, i32 14
  %33 = ptrtoint ptr %children.i25 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %children.i25, align 4
  %cmp.i.not21.i = icmp eq ptr %34, %children.i25
  br i1 %cmp.i.not21.i, label %sw.bb4.serio_disconnect_port.exit_crit_edge, label %sw.bb4.while.cond1.i_crit_edge

sw.bb4.while.cond1.i_crit_edge:                   ; preds = %sw.bb4
  br label %while.cond1.i

sw.bb4.serio_disconnect_port.exit_crit_edge:      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #13
  br label %serio_disconnect_port.exit

while.cond1.i:                                    ; preds = %while.cond1.i.backedge, %sw.bb4.while.cond1.i_crit_edge
  %s.1.i = phi ptr [ %s.1.i.be, %while.cond1.i.backedge ], [ %32, %sw.bb4.while.cond1.i_crit_edge ]
  %children2.i = getelementptr inbounds %struct.serio, ptr %s.1.i, i32 0, i32 14
  %35 = ptrtoint ptr %children2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %children2.i, align 4
  %cmp.i19.not.i = icmp eq ptr %36, %children2.i
  %add.ptr.i26 = getelementptr i8, ptr %36, i32 -272
  br i1 %cmp.i19.not.i, label %while.end.i, label %while.cond1.i.while.cond1.i.backedge_crit_edge

while.cond1.i.while.cond1.i.backedge_crit_edge:   ; preds = %while.cond1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond1.i.backedge

while.cond1.i.backedge:                           ; preds = %if.end.i30.while.cond1.i.backedge_crit_edge, %while.cond1.i.while.cond1.i.backedge_crit_edge
  %s.1.i.be = phi ptr [ %add.ptr.i26, %while.cond1.i.while.cond1.i.backedge_crit_edge ], [ %s.2.i, %if.end.i30.while.cond1.i.backedge_crit_edge ]
  br label %while.cond1.i

while.end.i:                                      ; preds = %while.cond1.i
  %cmp.not.i = icmp eq ptr %s.1.i, %32
  br i1 %cmp.not.i, label %while.end.i.if.end.i30_crit_edge, label %if.then.i28

while.end.i.if.end.i30_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i30

if.then.i28:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %parent8.i = getelementptr inbounds %struct.serio, ptr %s.1.i, i32 0, i32 12
  %37 = ptrtoint ptr %parent8.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %parent8.i, align 4
  %dev.i27 = getelementptr inbounds %struct.serio, ptr %s.1.i, i32 0, i32 18
  tail call void @device_release_driver(ptr noundef %dev.i27) #11
  tail call fastcc void @serio_destroy_port(ptr noundef %s.1.i) #11
  br label %if.end.i30

if.end.i30:                                       ; preds = %if.then.i28, %while.end.i.if.end.i30_crit_edge
  %s.2.i = phi ptr [ %38, %if.then.i28 ], [ %32, %while.end.i.if.end.i30_crit_edge ]
  %39 = ptrtoint ptr %children.i25 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %children.i25, align 4
  %cmp.i.not.i29 = icmp eq ptr %40, %children.i25
  br i1 %cmp.i.not.i29, label %if.end.i30.serio_disconnect_port.exit_crit_edge, label %if.end.i30.while.cond1.i.backedge_crit_edge

if.end.i30.while.cond1.i.backedge_crit_edge:      ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond1.i.backedge

if.end.i30.serio_disconnect_port.exit_crit_edge:  ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #13
  br label %serio_disconnect_port.exit

serio_disconnect_port.exit:                       ; preds = %if.end.i30.serio_disconnect_port.exit_crit_edge, %sw.bb4.serio_disconnect_port.exit_crit_edge
  %dev10.i = getelementptr inbounds %struct.serio, ptr %32, i32 0, i32 18
  tail call void @device_release_driver(ptr noundef %dev10.i) #11
  %41 = ptrtoint ptr %object5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %object5, align 4
  %dev.i31 = getelementptr inbounds %struct.serio, ptr %42, i32 0, i32 18
  %call.i32 = tail call i32 @device_attach(ptr noundef %dev.i31) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i32)
  %cmp.i = icmp sgt i32 %call.i32, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call.i32)
  %cmp1.not.i = icmp eq i32 %call.i32, -517
  %or.cond.i = or i1 %cmp.i, %cmp1.not.i
  br i1 %or.cond.i, label %serio_disconnect_port.exit.sw.epilog_crit_edge, label %do.end.i35

serio_disconnect_port.exit.sw.epilog_crit_edge:   ; preds = %serio_disconnect_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end.i35:                                       ; preds = %serio_disconnect_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  %phys.i33 = getelementptr inbounds %struct.serio, ptr %42, i32 0, i32 2
  %name.i34 = getelementptr inbounds %struct.serio, ptr %42, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i31, ptr noundef nonnull @.str.37, ptr noundef %phys.i33, ptr noundef %name.i34, i32 noundef %call.i32) #15
  br label %sw.epilog

sw.bb7:                                           ; preds = %while.body
  %object8 = getelementptr i8, ptr %1, i32 -8
  %43 = ptrtoint ptr %object8 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %object8, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %sw.bb7
  %s.0.i = phi ptr [ %44, %sw.bb7 ], [ %add.ptr15.i, %do.cond.i.do.body.i_crit_edge ]
  %call.i37 = tail call fastcc i32 @serio_reconnect_port(ptr noundef %s.0.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37)
  %tobool.not.i38 = icmp eq i32 %call.i37, 0
  br i1 %tobool.not.i38, label %if.then.i41, label %do.body.i.while.cond.i.preheader_crit_edge

do.body.i.while.cond.i.preheader_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.preheader

if.then.i41:                                      ; preds = %do.body.i
  %children.i39 = getelementptr inbounds %struct.serio, ptr %s.0.i, i32 0, i32 14
  %45 = ptrtoint ptr %children.i39 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %children.i39, align 4
  %cmp.i.not.i40 = icmp eq ptr %46, %children.i39
  br i1 %cmp.i.not.i40, label %if.then.i41.while.cond.i.preheader_crit_edge, label %if.then.i41.do.cond.i_crit_edge

if.then.i41.do.cond.i_crit_edge:                  ; preds = %if.then.i41
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond.i

if.then.i41.while.cond.i.preheader_crit_edge:     ; preds = %if.then.i41
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.preheader

while.cond.i.preheader:                           ; preds = %if.then.i41.while.cond.i.preheader_crit_edge, %do.body.i.while.cond.i.preheader_crit_edge
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %while.cond.i.preheader
  %s.1.i43 = phi ptr [ %48, %while.body.i.while.cond.i_crit_edge ], [ %s.0.i, %while.cond.i.preheader ]
  %cmp.not.i44 = icmp eq ptr %s.1.i43, %44
  br i1 %cmp.not.i44, label %while.cond.i.sw.epilog_crit_edge, label %while.body.i

while.cond.i.sw.epilog_crit_edge:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

while.body.i:                                     ; preds = %while.cond.i
  %parent6.i = getelementptr inbounds %struct.serio, ptr %s.1.i43, i32 0, i32 12
  %47 = ptrtoint ptr %parent6.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %parent6.i, align 4
  %child_node.i45 = getelementptr inbounds %struct.serio, ptr %s.1.i43, i32 0, i32 13
  %children7.i = getelementptr inbounds %struct.serio, ptr %48, i32 0, i32 14
  %49 = ptrtoint ptr %child_node.i45 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %child_node.i45, align 4
  %cmp.i28.not.i = icmp eq ptr %50, %children7.i
  br i1 %cmp.i28.not.i, label %while.body.i.while.cond.i_crit_edge, label %while.body.i.do.cond.i_crit_edge

while.body.i.do.cond.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond.i

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

do.cond.i:                                        ; preds = %while.body.i.do.cond.i_crit_edge, %if.then.i41.do.cond.i_crit_edge
  %.lcssa.sink.i = phi ptr [ %46, %if.then.i41.do.cond.i_crit_edge ], [ %50, %while.body.i.do.cond.i_crit_edge ]
  %add.ptr15.i = getelementptr i8, ptr %.lcssa.sink.i, i32 -272
  %cmp17.not.i = icmp eq ptr %add.ptr15.i, %44
  br i1 %cmp17.not.i, label %do.cond.i.sw.epilog_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

do.cond.i.sw.epilog_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb9:                                           ; preds = %while.body
  %object10 = getelementptr i8, ptr %1, i32 -8
  %51 = ptrtoint ptr %object10 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %object10, align 4
  %driver.i = getelementptr inbounds %struct.serio_driver, ptr %52, i32 0, i32 10
  %call.i47 = tail call i32 @driver_attach(ptr noundef %driver.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %tobool.not.i48 = icmp eq i32 %call.i47, 0
  br i1 %tobool.not.i48, label %sw.bb9.sw.epilog_crit_edge, label %do.end.i50

sw.bb9.sw.epilog_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end.i50:                                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %driver.i, align 4
  %call2.i49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %54, i32 noundef %call.i47) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.i50, %sw.bb9.sw.epilog_crit_edge, %do.cond.i.sw.epilog_crit_edge, %while.cond.i.sw.epilog_crit_edge, %do.end.i35, %serio_disconnect_port.exit.sw.epilog_crit_edge, %sw.bb1, %do.end.i, %if.end5.i.sw.epilog_crit_edge, %while.body.sw.epilog_crit_edge
  %object11 = getelementptr i8, ptr %1, i32 -8
  %55 = ptrtoint ptr %object11 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %object11, align 4
  %57 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %add.ptr.i, align 4
  tail call fastcc void @serio_remove_duplicate_events(ptr noundef %56, i32 noundef %58)
  %owner.i = getelementptr i8, ptr %1, i32 -4
  %59 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %owner.i, align 4
  tail call void @module_put(ptr noundef %60) #11
  tail call void @kfree(ptr noundef nonnull %add.ptr.i) #11
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @serio_event_lock) #11
  %61 = load volatile ptr, ptr @serio_event_list, align 4
  %cmp.i.not.i = icmp eq ptr %61, @serio_event_list
  br i1 %cmp.i.not.i, label %sw.epilog.serio_get_event.exit.thread_crit_edge, label %sw.epilog.if.then.i_crit_edge

sw.epilog.if.then.i_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

sw.epilog.serio_get_event.exit.thread_crit_edge:  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %serio_get_event.exit.thread

while.end:                                        ; preds = %serio_get_event.exit.while.end_crit_edge, %serio_get_event.exit.thread
  tail call void @mutex_unlock(ptr noundef nonnull @serio_mutex) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !57, !59, !61, !62, !64, !65, !67, !69, !71, !73, !75, !77, !78, !80, !82, !83, !85, !87, !88, !90, !92, !94, !95, !97, !99, !100, !102, !104, !105, !107, !109, !111, !113, !114, !115, !116, !117, !118, !120, !121, !123, !125, !127, !128, !130, !131, !132, !134, !136, !137, !138, !139, !141, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !167, !168, !169, !171, !172, !174, !175, !176, !177, !178, !180, !181, !182, !183, !185, !186, !187}
!llvm.module.flags = !{!188, !189, !190, !191, !192, !193, !194, !195}
!llvm.ident = !{!196}

!0 = !{ptr @__UNIQUE_ID_author187, !1, !"__UNIQUE_ID_author187", i1 false, i1 false}
!1 = !{!"../drivers/input/serio/serio.c", i32 24, i32 1}
!2 = !{ptr @__UNIQUE_ID_description188, !3, !"__UNIQUE_ID_description188", i1 false, i1 false}
!3 = !{!"../drivers/input/serio/serio.c", i32 25, i32 1}
!4 = !{ptr @__UNIQUE_ID_file189, !5, !"__UNIQUE_ID_file189", i1 false, i1 false}
!5 = !{!"../drivers/input/serio/serio.c", i32 26, i32 1}
!6 = !{ptr @__UNIQUE_ID_license190, !5, !"__UNIQUE_ID_license190", i1 false, i1 false}
!7 = !{ptr @__ksymtab_serio_rescan, !8, !"__ksymtab_serio_rescan", i1 false, i1 false}
!8 = !{!"../drivers/input/serio/serio.c", i32 683, i32 1}
!9 = !{ptr @__ksymtab_serio_reconnect, !10, !"__ksymtab_serio_reconnect", i1 false, i1 false}
!10 = !{!"../drivers/input/serio/serio.c", i32 689, i32 1}
!11 = !{ptr @__ksymtab___serio_register_port, !12, !"__ksymtab___serio_register_port", i1 false, i1 false}
!12 = !{!"../drivers/input/serio/serio.c", i32 700, i32 1}
!13 = !{ptr @__ksymtab_serio_unregister_port, !14, !"__ksymtab_serio_unregister_port", i1 false, i1 false}
!14 = !{!"../drivers/input/serio/serio.c", i32 712, i32 1}
!15 = !{ptr @__ksymtab_serio_unregister_child_port, !16, !"__ksymtab_serio_unregister_child_port", i1 false, i1 false}
!16 = !{!"../drivers/input/serio/serio.c", i32 728, i32 1}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/input/serio/serio.c", i32 830, i32 3}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @__serio_register_driver._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @__serio_register_driver._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @__ksymtab___serio_register_driver, !24, !"__ksymtab___serio_register_driver", i1 false, i1 false}
!24 = !{!"../drivers/input/serio/serio.c", i32 850, i32 1}
!25 = !{ptr @__ksymtab_serio_unregister_driver, !26, !"__ksymtab_serio_unregister_driver", i1 false, i1 false}
!26 = !{!"../drivers/input/serio/serio.c", i32 874, i32 1}
!27 = !{ptr @__ksymtab_serio_open, !28, !"__ksymtab_serio_open", i1 false, i1 false}
!28 = !{!"../drivers/input/serio/serio.c", i32 980, i32 1}
!29 = !{ptr @__ksymtab_serio_close, !30, !"__ksymtab_serio_close", i1 false, i1 false}
!30 = !{!"../drivers/input/serio/serio.c", i32 990, i32 1}
!31 = !{ptr @__ksymtab_serio_interrupt, !32, !"__ksymtab_serio_interrupt", i1 false, i1 false}
!32 = !{!"../drivers/input/serio/serio.c", i32 1011, i32 1}
!33 = !{ptr @.str.3, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/input/serio/serio.c", i32 1014, i32 11}
!35 = !{ptr @serio_bus, !36, !"serio_bus", i1 false, i1 false}
!36 = !{!"../drivers/input/serio/serio.c", i32 1013, i32 17}
!37 = !{ptr @__ksymtab_serio_bus, !38, !"__ksymtab_serio_bus", i1 false, i1 false}
!38 = !{!"../drivers/input/serio/serio.c", i32 1025, i32 1}
!39 = !{ptr @__initcall__kmod_serio__191_1051_serio_init4, !40, !"__initcall__kmod_serio__191_1051_serio_init4", i1 false, i1 false}
!40 = !{!"../drivers/input/serio/serio.c", i32 1051, i32 1}
!41 = !{ptr @__exitcall_serio_exit, !42, !"__exitcall_serio_exit", i1 false, i1 false}
!42 = !{!"../drivers/input/serio/serio.c", i32 1052, i32 1}
!43 = !{ptr @.str.4, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/input/serio/serio.c", i32 266, i32 3}
!45 = !{ptr @.str.5, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @serio_queue_event._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @serio_queue_event._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.7, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/serio/serio.c", i32 272, i32 3}
!50 = !{ptr @serio_queue_event._entry.6, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @serio_queue_event._entry_ptr.8, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.9, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/input/serio/serio.c", i32 147, i32 8}
!54 = !{ptr @serio_event_lock, !53, !"serio_event_lock", i1 false, i1 false}
!55 = !{ptr @serio_event_list, !56, !"serio_event_list", i1 false, i1 false}
!56 = !{!"../drivers/input/serio/serio.c", i32 148, i32 8}
!57 = !{ptr @serio_init_port.serio_no, !58, !"serio_no", i1 false, i1 false}
!58 = !{!"../drivers/input/serio/serio.c", i32 499, i32 18}
!59 = !{ptr @serio_init_port.__key, !60, !"__key", i1 false, i1 false}
!60 = !{!"../drivers/input/serio/serio.c", i32 506, i32 2}
!61 = !{ptr @.str.10, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @serio_init_port.__key.11, !63, !"__key", i1 false, i1 false}
!63 = !{!"../drivers/input/serio/serio.c", i32 507, i32 2}
!64 = !{ptr @.str.12, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.13, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/input/serio/serio.c", i32 509, i32 28}
!67 = !{ptr @serio_device_attr_groups, !68, !"serio_device_attr_groups", i1 false, i1 false}
!68 = !{!"../drivers/input/serio/serio.c", i32 480, i32 38}
!69 = !{ptr @.str.14, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/input/serio/serio.c", i32 457, i32 10}
!71 = !{ptr @serio_id_attr_group, !72, !"serio_id_attr_group", i1 false, i1 false}
!72 = !{!"../drivers/input/serio/serio.c", i32 456, i32 37}
!73 = !{ptr @serio_device_id_attrs, !74, !"serio_device_id_attrs", i1 false, i1 false}
!74 = !{!"../drivers/input/serio/serio.c", i32 448, i32 26}
!75 = !{ptr @.str.15, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/input/serio/serio.c", i32 443, i32 8}
!77 = !{ptr @dev_attr_type, !76, !"dev_attr_type", i1 false, i1 false}
!78 = !{ptr @.str.16, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/input/serio/serio.c", i32 361, i32 22}
!80 = !{ptr @.str.17, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/input/serio/serio.c", i32 444, i32 8}
!82 = !{ptr @dev_attr_proto, !81, !"dev_attr_proto", i1 false, i1 false}
!83 = !{ptr @dev_attr_id, !84, !"dev_attr_id", i1 false, i1 false}
!84 = !{!"../drivers/input/serio/serio.c", i32 445, i32 8}
!85 = !{ptr @.str.18, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/input/serio/serio.c", i32 446, i32 8}
!87 = !{ptr @dev_attr_extra, !86, !"dev_attr_extra", i1 false, i1 false}
!88 = !{ptr @serio_device_attr_group, !89, !"serio_device_attr_group", i1 false, i1 false}
!89 = !{!"../drivers/input/serio/serio.c", i32 476, i32 37}
!90 = !{ptr @serio_device_attrs, !91, !"serio_device_attrs", i1 false, i1 false}
!91 = !{!"../drivers/input/serio/serio.c", i32 467, i32 26}
!92 = !{ptr @.str.19, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/input/serio/serio.c", i32 461, i32 8}
!94 = !{ptr @dev_attr_modalias, !93, !"dev_attr_modalias", i1 false, i1 false}
!95 = !{ptr @.str.20, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/input/serio/serio.c", i32 354, i32 22}
!97 = !{ptr @.str.21, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/input/serio/serio.c", i32 463, i32 8}
!99 = !{ptr @dev_attr_description, !98, !"dev_attr_description", i1 false, i1 false}
!100 = !{ptr @.str.22, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/input/serio/serio.c", i32 347, i32 22}
!102 = !{ptr @.str.23, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/input/serio/serio.c", i32 462, i32 8}
!104 = !{ptr @dev_attr_drvctl, !103, !"dev_attr_drvctl", i1 false, i1 false}
!105 = !{ptr @.str.24, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/input/serio/serio.c", i32 392, i32 20}
!107 = !{ptr @.str.25, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/input/serio/serio.c", i32 394, i32 27}
!109 = !{ptr @.str.26, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/input/serio/serio.c", i32 396, i32 27}
!111 = !{ptr @.str.27, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/input/serio/serio.c", i32 104, i32 4}
!113 = !{ptr @.str.28, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.29, !112, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.30, !112, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @serio_bind_driver._entry, !112, !"_entry", i1 false, i1 false}
!117 = !{ptr @serio_bind_driver._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.31, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/input/serio/serio.c", i32 464, i32 8}
!120 = !{ptr @dev_attr_bind_mode, !119, !"dev_attr_bind_mode", i1 false, i1 false}
!121 = !{ptr @.str.32, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/input/serio/serio.c", i32 416, i32 51}
!123 = !{ptr @.str.33, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/input/serio/serio.c", i32 416, i32 62}
!125 = !{ptr @.str.34, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/input/serio/serio.c", i32 465, i32 8}
!127 = !{ptr @dev_attr_firmware_id, !126, !"dev_attr_firmware_id", i1 false, i1 false}
!128 = !{ptr @.str.35, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/input/serio/serio.c", i32 32, i32 8}
!130 = !{ptr @.str.36, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @serio_mutex, !129, !"serio_mutex", i1 false, i1 false}
!132 = !{ptr @serio_list, !133, !"serio_list", i1 false, i1 false}
!133 = !{!"../drivers/input/serio/serio.c", i32 34, i32 8}
!134 = !{ptr @.str.37, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/input/serio/serio.c", i32 122, i32 3}
!136 = !{ptr @.str.38, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @serio_find_driver._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @serio_find_driver._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @serio_driver_groups, !140, !"serio_driver_groups", i1 false, i1 false}
!140 = !{!"../drivers/input/serio/serio.c", i32 771, i32 1}
!141 = !{ptr @serio_driver_group, !140, !"serio_driver_group", i1 false, i1 false}
!142 = !{ptr @serio_driver_attrs, !143, !"serio_driver_attrs", i1 false, i1 false}
!143 = !{!"../drivers/input/serio/serio.c", i32 766, i32 26}
!144 = !{ptr @driver_attr_description, !145, !"driver_attr_description", i1 false, i1 false}
!145 = !{!"../drivers/input/serio/serio.c", i32 740, i32 8}
!146 = !{ptr @.str.39, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/input/serio/serio.c", i32 738, i32 74}
!148 = !{ptr @driver_attr_bind_mode, !149, !"driver_attr_bind_mode", i1 false, i1 false}
!149 = !{!"../drivers/input/serio/serio.c", i32 764, i32 8}
!150 = !{ptr @.str.40, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/input/serio/serio.c", i32 910, i32 2}
!152 = !{ptr @.str.41, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/input/serio/serio.c", i32 911, i32 2}
!154 = !{ptr @.str.42, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/input/serio/serio.c", i32 912, i32 2}
!156 = !{ptr @.str.43, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/input/serio/serio.c", i32 913, i32 2}
!158 = !{ptr @.str.44, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/input/serio/serio.c", i32 915, i32 2}
!160 = !{ptr @.str.45, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/input/serio/serio.c", i32 919, i32 3}
!162 = !{ptr @serio_pm_ops, !163, !"serio_pm_ops", i1 false, i1 false}
!163 = !{!"../drivers/input/serio/serio.c", i32 961, i32 32}
!164 = !{ptr @.str.46, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/input/serio/serio.c", i32 945, i32 4}
!166 = !{ptr @.str.47, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @serio_resume._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @serio_resume._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.48, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/input/serio/serio.c", i32 238, i32 8}
!171 = !{ptr @serio_event_work, !170, !"serio_event_work", i1 false, i1 false}
!172 = !{ptr @.str.49, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/input/serio/serio.c", i32 544, i32 3}
!174 = !{ptr @.str.50, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.51, !173, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @serio_add_port._entry, !173, !"_entry", i1 false, i1 false}
!177 = !{ptr @serio_add_port._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.52, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/input/serio/serio.c", i32 809, i32 3}
!180 = !{ptr @.str.53, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @serio_attach_driver._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @serio_attach_driver._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.54, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/input/serio/serio.c", i32 1033, i32 3}
!185 = !{ptr @.str.55, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @serio_init._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @serio_init._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{i32 1, !"wchar_size", i32 2}
!189 = !{i32 1, !"min_enum_size", i32 4}
!190 = !{i32 8, !"branch-target-enforcement", i32 0}
!191 = !{i32 8, !"sign-return-address", i32 0}
!192 = !{i32 8, !"sign-return-address-all", i32 0}
!193 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!194 = !{i32 7, !"uwtable", i32 1}
!195 = !{i32 7, !"frame-pointer", i32 2}
!196 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!197 = !{i64 2148448076}
!198 = !{i64 2148363361, i64 2148363393, i64 2148363422, i64 2148363456, i64 2148363487, i64 2148363510}
!199 = !{i64 2148448305}
!200 = !{i8 0, i8 2}
!201 = !{!"branch_weights", i32 1, i32 2000}
