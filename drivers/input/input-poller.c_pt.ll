; ModuleID = '/llk/IR_all_yes/drivers/input/input-poller.c_pt.bc'
source_filename = "../drivers/input/input-poller.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+input_setup_polling\22, \22a\22\09"
module asm "\09.weak\09__crc_input_setup_polling\09\09\09\09"
module asm "\09.long\09__crc_input_setup_polling\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_setup_polling:\09\09\09\09\09"
module asm "\09.asciz \09\22input_setup_polling\22\09\09\09\09\09"
module asm "__kstrtabns_input_setup_polling:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+input_set_poll_interval\22, \22a\22\09"
module asm "\09.weak\09__crc_input_set_poll_interval\09\09\09\09"
module asm "\09.long\09__crc_input_set_poll_interval\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_set_poll_interval:\09\09\09\09\09"
module asm "\09.asciz \09\22input_set_poll_interval\22\09\09\09\09\09"
module asm "__kstrtabns_input_set_poll_interval:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+input_set_min_poll_interval\22, \22a\22\09"
module asm "\09.weak\09__crc_input_set_min_poll_interval\09\09\09\09"
module asm "\09.long\09__crc_input_set_min_poll_interval\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_set_min_poll_interval:\09\09\09\09\09"
module asm "\09.asciz \09\22input_set_min_poll_interval\22\09\09\09\09\09"
module asm "__kstrtabns_input_set_min_poll_interval:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+input_set_max_poll_interval\22, \22a\22\09"
module asm "\09.weak\09__crc_input_set_max_poll_interval\09\09\09\09"
module asm "\09.long\09__crc_input_set_max_poll_interval\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_set_max_poll_interval:\09\09\09\09\09"
module asm "\09.asciz \09\22input_set_max_poll_interval\22\09\09\09\09\09"
module asm "__kstrtabns_input_set_max_poll_interval:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+input_get_poll_interval\22, \22a\22\09"
module asm "\09.weak\09__crc_input_get_poll_interval\09\09\09\09"
module asm "\09.long\09__crc_input_get_poll_interval\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_get_poll_interval:\09\09\09\09\09"
module asm "\09.asciz \09\22input_get_poll_interval\22\09\09\09\09\09"
module asm "__kstrtabns_input_get_poll_interval:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.input_dev_poller = type { ptr, i32, i32, i32, ptr, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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

@input_setup_polling._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 81, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: unable to allocate poller structure\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"input_setup_polling\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/input/input-poller.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@input_setup_polling._entry_ptr = internal global ptr @input_setup_polling._entry, section ".printk_index", align 4
@input_setup_polling.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&(&poller->work)->work)\00", [54 x i8] zeroinitializer }, align 32
@input_setup_polling.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&(&poller->work)->timer\00", [40 x i8] zeroinitializer }, align 32
@__kstrtab_input_setup_polling = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_setup_polling = external dso_local constant [0 x i8], align 1
@__ksymtab_input_setup_polling = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_setup_polling to i32), ptr @__kstrtab_input_setup_polling, ptr @__kstrtabns_input_setup_polling }, section "___ksymtab+input_setup_polling", align 4
@__kstrtab_input_set_poll_interval = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_set_poll_interval = external dso_local constant [0 x i8], align 1
@__ksymtab_input_set_poll_interval = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_set_poll_interval to i32), ptr @__kstrtab_input_set_poll_interval, ptr @__kstrtabns_input_set_poll_interval }, section "___ksymtab+input_set_poll_interval", align 4
@__kstrtab_input_set_min_poll_interval = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_set_min_poll_interval = external dso_local constant [0 x i8], align 1
@__ksymtab_input_set_min_poll_interval = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_set_min_poll_interval to i32), ptr @__kstrtab_input_set_min_poll_interval, ptr @__kstrtabns_input_set_min_poll_interval }, section "___ksymtab+input_set_min_poll_interval", align 4
@__kstrtab_input_set_max_poll_interval = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_set_max_poll_interval = external dso_local constant [0 x i8], align 1
@__ksymtab_input_set_max_poll_interval = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_set_max_poll_interval to i32), ptr @__kstrtab_input_set_max_poll_interval, ptr @__kstrtabns_input_set_max_poll_interval }, section "___ksymtab+input_set_max_poll_interval", align 4
@__kstrtab_input_get_poll_interval = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_get_poll_interval = external dso_local constant [0 x i8], align 1
@__ksymtab_input_get_poll_interval = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_get_poll_interval to i32), ptr @__kstrtab_input_get_poll_interval, ptr @__kstrtabns_input_get_poll_interval }, section "___ksymtab+input_get_poll_interval", align 4
@input_poller_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_poll, ptr @dev_attr_max, ptr @dev_attr_min, ptr null], [16 x i8] zeroinitializer }, align 32
@input_poller_attribute_group = dso_local global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @input_poller_attrs_visible, ptr null, ptr @input_poller_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@system_freezable_wq = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@input_dev_ensure_poller._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 98, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"poller structure has not been set up\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"input_dev_ensure_poller\00", [40 x i8] zeroinitializer }, align 32
@input_dev_ensure_poller._entry_ptr = internal global ptr @input_dev_ensure_poller._entry, section ".printk_index", align 4
@dev_attr_poll = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @input_dev_get_poll_interval, ptr @input_dev_set_poll_interval }, [36 x i8] zeroinitializer }, align 32
@dev_attr_max = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @input_dev_get_poll_max, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_min = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @input_dev_get_poll_min, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"poll\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"max\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"min\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 80, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 85, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [19 x i8] c"input_poller_attrs\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 212, i32 26 }
@___asan_gen_.47 = private unnamed_addr constant [29 x i8] c"input_poller_attribute_group\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 219, i32 24 }
@___asan_gen_.50 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 97, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [14 x i8] c"dev_attr_poll\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [13 x i8] c"dev_attr_max\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [13 x i8] c"dev_attr_min\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 180, i32 8 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 143, i32 22 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 191, i32 8 }
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.78 = private constant [32 x i8] c"../drivers/input/input-poller.c\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 201, i32 8 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__ksymtab_input_get_poll_interval, ptr @__ksymtab_input_set_max_poll_interval, ptr @__ksymtab_input_set_min_poll_interval, ptr @__ksymtab_input_set_poll_interval, ptr @__ksymtab_input_setup_polling, ptr @input_dev_ensure_poller._entry, ptr @input_dev_ensure_poller._entry_ptr, ptr @input_setup_polling._entry, ptr @input_setup_polling._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @input_setup_polling.__key, ptr @.str.5, ptr @input_setup_polling.__key.6, ptr @.str.7, ptr @input_poller_attrs, ptr @input_poller_attribute_group, ptr @.str.8, ptr @.str.9, ptr @dev_attr_poll, ptr @dev_attr_max, ptr @dev_attr_min, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input_setup_polling._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input_setup_polling.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input_setup_polling.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input_poller_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input_poller_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input_dev_ensure_poller._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_poll to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_max to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_min to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @input_dev_poller_finalize(ptr nocapture noundef %poller) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %poll_interval = getelementptr inbounds %struct.input_dev_poller, ptr %poller, i32 0, i32 1
  %0 = ptrtoint ptr %poll_interval to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %poll_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %poll_interval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 500, ptr %poll_interval, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %poll_interval_max = getelementptr inbounds %struct.input_dev_poller, ptr %poller, i32 0, i32 2
  %3 = ptrtoint ptr %poll_interval_max to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %poll_interval_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %poll_interval to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %poll_interval, align 4
  %7 = ptrtoint ptr %poll_interval_max to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %poll_interval_max, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @input_dev_poller_start(ptr noundef %poller) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %poll_interval = getelementptr inbounds %struct.input_dev_poller, ptr %poller, i32 0, i32 1
  %0 = ptrtoint ptr %poll_interval to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %poll_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %poller to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %poller, align 4
  %input = getelementptr inbounds %struct.input_dev_poller, ptr %poller, i32 0, i32 4
  %4 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input, align 4
  tail call void %3(ptr noundef %5) #10
  %6 = ptrtoint ptr %poll_interval to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %poll_interval, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %call2.i.i)
  %cmp.i = icmp ugt i32 %call2.i.i, 99
  br i1 %cmp.i, label %if.then.i, label %if.then.input_dev_poller_queue_work.exit_crit_edge

if.then.input_dev_poller_queue_work.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %input_dev_poller_queue_work.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call i32 @round_jiffies_relative(i32 noundef %call2.i.i) #10
  br label %input_dev_poller_queue_work.exit

input_dev_poller_queue_work.exit:                 ; preds = %if.then.i, %if.then.input_dev_poller_queue_work.exit_crit_edge
  %delay.0.i = phi i32 [ %call1.i, %if.then.i ], [ %call2.i.i, %if.then.input_dev_poller_queue_work.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezable_wq to i32))
  %8 = load ptr, ptr @system_freezable_wq, align 4
  %work.i = getelementptr inbounds %struct.input_dev_poller, ptr %poller, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %work.i, i32 noundef %delay.0.i) #10
  br label %if.end

if.end:                                           ; preds = %input_dev_poller_queue_work.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @input_dev_poller_stop(ptr noundef %poller) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %work = getelementptr inbounds %struct.input_dev_poller, ptr %poller, i32 0, i32 5
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @input_setup_polling(ptr noundef %dev, ptr noundef %poll_fn) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 120) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %do.body5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %parent = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %tobool2.not = icmp eq ptr %2, null
  %dev1 = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40
  %spec.select = select i1 %tobool2.not, ptr %dev1, ptr %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spec.select, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #14
  br label %cleanup

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %work = getelementptr inbounds %struct.input_dev_poller, ptr %call7.i.i, i32 0, i32 5
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #10
  %3 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.input_dev_poller, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.5, ptr noundef nonnull @input_setup_polling.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry13 = getelementptr inbounds %struct.input_dev_poller, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 1
  %4 = ptrtoint ptr %entry13 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %entry13, ptr %entry13, align 8
  %prev.i = getelementptr inbounds %struct.input_dev_poller, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %entry13, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.input_dev_poller, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 2
  %6 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @input_dev_poller_work, ptr %func, align 8
  %timer = getelementptr inbounds %struct.input_dev_poller, ptr %call7.i.i, i32 0, i32 5, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.7, ptr noundef nonnull @input_setup_polling.__key.6) #10
  %input = getelementptr inbounds %struct.input_dev_poller, ptr %call7.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %input, align 8
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %poll_fn, ptr %call7.i.i, align 8
  %poller24 = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 21
  %9 = ptrtoint ptr %poller24 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %poller24, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body5, %do.end
  %retval.0 = phi i32 [ 0, %do.body5 ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @input_dev_poller_work(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -20
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %input = getelementptr i8, ptr %work, i32 -4
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input, align 4
  tail call void %1(ptr noundef %3) #10
  %poll_interval.i = getelementptr i8, ptr %work, i32 -16
  %4 = ptrtoint ptr %poll_interval.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %poll_interval.i, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %call2.i.i)
  %cmp.i = icmp ugt i32 %call2.i.i, 99
  br i1 %cmp.i, label %if.then.i, label %entry.input_dev_poller_queue_work.exit_crit_edge

entry.input_dev_poller_queue_work.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %input_dev_poller_queue_work.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call i32 @round_jiffies_relative(i32 noundef %call2.i.i) #10
  br label %input_dev_poller_queue_work.exit

input_dev_poller_queue_work.exit:                 ; preds = %if.then.i, %entry.input_dev_poller_queue_work.exit_crit_edge
  %delay.0.i = phi i32 [ %call1.i, %if.then.i ], [ %call2.i.i, %entry.input_dev_poller_queue_work.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezable_wq to i32))
  %6 = load ptr, ptr @system_freezable_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %work, i32 noundef %delay.0.i) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @input_set_poll_interval(ptr noundef %dev, i32 noundef %interval) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %poller.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 21
  %0 = ptrtoint ptr %poller.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %poller.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %input_dev_ensure_poller.exit, label %if.then

input_dev_ensure_poller.exit:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %parent.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %tobool2.not.i = icmp eq ptr %3, null
  %dev1.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40
  %spec.select.i = select i1 %tobool2.not.i, ptr %dev1.i, ptr %3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spec.select.i, ptr noundef nonnull @.str.8) #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %poller.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %poller.i, align 4
  %poll_interval = getelementptr inbounds %struct.input_dev_poller, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %poll_interval to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %interval, ptr %poll_interval, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %input_dev_ensure_poller.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @input_set_min_poll_interval(ptr noundef %dev, i32 noundef %interval) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %poller.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 21
  %0 = ptrtoint ptr %poller.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %poller.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %input_dev_ensure_poller.exit, label %if.then

input_dev_ensure_poller.exit:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %parent.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %tobool2.not.i = icmp eq ptr %3, null
  %dev1.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40
  %spec.select.i = select i1 %tobool2.not.i, ptr %dev1.i, ptr %3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spec.select.i, ptr noundef nonnull @.str.8) #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %poller.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %poller.i, align 4
  %poll_interval_min = getelementptr inbounds %struct.input_dev_poller, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %poll_interval_min to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %interval, ptr %poll_interval_min, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %input_dev_ensure_poller.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @input_set_max_poll_interval(ptr noundef %dev, i32 noundef %interval) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %poller.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 21
  %0 = ptrtoint ptr %poller.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %poller.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %input_dev_ensure_poller.exit, label %if.then

input_dev_ensure_poller.exit:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %parent.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %tobool2.not.i = icmp eq ptr %3, null
  %dev1.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40
  %spec.select.i = select i1 %tobool2.not.i, ptr %dev1.i, ptr %3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spec.select.i, ptr noundef nonnull @.str.8) #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %poller.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %poller.i, align 4
  %poll_interval_max = getelementptr inbounds %struct.input_dev_poller, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %poll_interval_max to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %interval, ptr %poll_interval_max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %input_dev_ensure_poller.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @input_get_poll_interval(ptr nocapture noundef readonly %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %poller = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 21
  %0 = ptrtoint ptr %poller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %poller, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %poll_interval = getelementptr inbounds %struct.input_dev_poller, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %poll_interval to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %poll_interval, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %3, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @input_poller_attrs_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, i32 noundef %n) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %poller = getelementptr i8, ptr %kobj, i32 -348
  %0 = ptrtoint ptr %poller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %poller, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mode = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mode, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i16 [ %3, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  ret i16 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies_relative(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @input_dev_get_poll_interval(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %poller = getelementptr i8, ptr %dev, i32 -348
  %0 = ptrtoint ptr %poller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %poller, align 4
  %poll_interval = getelementptr inbounds %struct.input_dev_poller, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %poll_interval to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %poll_interval, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.11, i32 noundef %3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @input_dev_set_poll_interval(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #1 align 64 {
entry:
  %interval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -544
  %poller1 = getelementptr i8, ptr %dev, i32 -348
  %0 = ptrtoint ptr %poller1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %poller1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %interval) #10
  %2 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %interval, align 4, !annotation !52
  %call = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %interval) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %interval, align 4
  %poll_interval_min = getelementptr inbounds %struct.input_dev_poller, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %poll_interval_min to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %poll_interval_min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp = icmp ult i32 %4, %6
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %poll_interval_max = getelementptr inbounds %struct.input_dev_poller, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %poll_interval_max to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %poll_interval_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %8)
  %cmp4 = icmp ugt i32 %4, %8
  br i1 %cmp4, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %mutex = getelementptr i8, ptr %dev, i32 -104
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %9 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %interval, align 4
  %poll_interval = getelementptr inbounds %struct.input_dev_poller, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %poll_interval to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %poll_interval, align 4
  %call7 = call zeroext i1 @input_device_enabled(ptr noundef %add.ptr) #10
  br i1 %call7, label %if.then8, label %if.end6.if.end14_crit_edge

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then8:                                         ; preds = %if.end6
  %work = getelementptr inbounds %struct.input_dev_poller, ptr %1, i32 0, i32 5
  %call9 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #10
  %12 = ptrtoint ptr %poll_interval to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %poll_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp11.not = icmp eq i32 %13, 0
  br i1 %cmp11.not, label %if.then8.if.end14_crit_edge, label %if.else.i.i

if.then8.if.end14_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.else.i.i:                                      ; preds = %if.then8
  %call2.i.i = call i32 @__msecs_to_jiffies(i32 noundef %13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %call2.i.i)
  %cmp.i = icmp ugt i32 %call2.i.i, 99
  br i1 %cmp.i, label %if.then.i, label %if.else.i.i.input_dev_poller_queue_work.exit_crit_edge

if.else.i.i.input_dev_poller_queue_work.exit_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %input_dev_poller_queue_work.exit

if.then.i:                                        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = call i32 @round_jiffies_relative(i32 noundef %call2.i.i) #10
  br label %input_dev_poller_queue_work.exit

input_dev_poller_queue_work.exit:                 ; preds = %if.then.i, %if.else.i.i.input_dev_poller_queue_work.exit_crit_edge
  %delay.0.i = phi i32 [ %call1.i, %if.then.i ], [ %call2.i.i, %if.else.i.i.input_dev_poller_queue_work.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezable_wq to i32))
  %14 = load ptr, ptr @system_freezable_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %14, ptr noundef %work, i32 noundef %delay.0.i) #10
  br label %if.end14

if.end14:                                         ; preds = %input_dev_poller_queue_work.exit, %if.then8.if.end14_crit_edge, %if.end6.if.end14_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end14 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %interval) #10
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_device_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @input_dev_get_poll_max(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %poller = getelementptr i8, ptr %dev, i32 -348
  %0 = ptrtoint ptr %poller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %poller, align 4
  %poll_interval_max = getelementptr inbounds %struct.input_dev_poller, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %poll_interval_max to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %poll_interval_max, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.11, i32 noundef %3)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @input_dev_get_poll_min(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %poller = getelementptr i8, ptr %dev, i32 -348
  %0 = ptrtoint ptr %poller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %poller, align 4
  %poll_interval_min = getelementptr inbounds %struct.input_dev_poller, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %poll_interval_min to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %poll_interval_min, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.11, i32 noundef %3)
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !17, !19, !21, !23, !25, !27, !28, !29, !30, !32, !34, !35, !37, !39, !40, !42}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/input/input-poller.c", i32 80, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @input_setup_polling._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @input_setup_polling._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @input_setup_polling.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/input/input-poller.c", i32 85, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @input_setup_polling.__key.6, !9, !"__key", i1 false, i1 false}
!12 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @__ksymtab_input_setup_polling, !14, !"__ksymtab_input_setup_polling", i1 false, i1 false}
!14 = !{!"../drivers/input/input-poller.c", i32 92, i32 1}
!15 = !{ptr @__ksymtab_input_set_poll_interval, !16, !"__ksymtab_input_set_poll_interval", i1 false, i1 false}
!16 = !{!"../drivers/input/input-poller.c", i32 110, i32 1}
!17 = !{ptr @__ksymtab_input_set_min_poll_interval, !18, !"__ksymtab_input_set_min_poll_interval", i1 false, i1 false}
!18 = !{!"../drivers/input/input-poller.c", i32 117, i32 1}
!19 = !{ptr @__ksymtab_input_set_max_poll_interval, !20, !"__ksymtab_input_set_max_poll_interval", i1 false, i1 false}
!20 = !{!"../drivers/input/input-poller.c", i32 124, i32 1}
!21 = !{ptr @__ksymtab_input_get_poll_interval, !22, !"__ksymtab_input_get_poll_interval", i1 false, i1 false}
!22 = !{!"../drivers/input/input-poller.c", i32 133, i32 1}
!23 = !{ptr @input_poller_attribute_group, !24, !"input_poller_attribute_group", i1 false, i1 false}
!24 = !{!"../drivers/input/input-poller.c", i32 219, i32 24}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/input/input-poller.c", i32 97, i32 3}
!27 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @input_dev_ensure_poller._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @input_dev_ensure_poller._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @input_poller_attrs, !31, !"input_poller_attrs", i1 false, i1 false}
!31 = !{!"../drivers/input/input-poller.c", i32 212, i32 26}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/input-poller.c", i32 180, i32 8}
!34 = !{ptr @dev_attr_poll, !33, !"dev_attr_poll", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/input/input-poller.c", i32 143, i32 22}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/input/input-poller.c", i32 191, i32 8}
!39 = !{ptr @dev_attr_max, !38, !"dev_attr_max", i1 false, i1 false}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/input-poller.c", i32 201, i32 8}
!42 = !{ptr @dev_attr_min, !41, !"dev_attr_min", i1 false, i1 false}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{!"auto-init"}
