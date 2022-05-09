; ModuleID = '/llk/IR_all_yes/drivers/input/ff-core.c_pt.bc'
source_filename = "../drivers/input/ff-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+input_ff_upload\22, \22a\22\09"
module asm "\09.weak\09__crc_input_ff_upload\09\09\09\09"
module asm "\09.long\09__crc_input_ff_upload\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_ff_upload:\09\09\09\09\09"
module asm "\09.asciz \09\22input_ff_upload\22\09\09\09\09\09"
module asm "__kstrtabns_input_ff_upload:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+input_ff_erase\22, \22a\22\09"
module asm "\09.weak\09__crc_input_ff_erase\09\09\09\09"
module asm "\09.long\09__crc_input_ff_erase\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_ff_erase:\09\09\09\09\09"
module asm "\09.asciz \09\22input_ff_erase\22\09\09\09\09\09"
module asm "__kstrtabns_input_ff_erase:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+input_ff_flush\22, \22a\22\09"
module asm "\09.weak\09__crc_input_ff_flush\09\09\09\09"
module asm "\09.long\09__crc_input_ff_flush\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_ff_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22input_ff_flush\22\09\09\09\09\09"
module asm "__kstrtabns_input_ff_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+input_ff_event\22, \22a\22\09"
module asm "\09.weak\09__crc_input_ff_event\09\09\09\09"
module asm "\09.long\09__crc_input_ff_event\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_ff_event:\09\09\09\09\09"
module asm "\09.asciz \09\22input_ff_event\22\09\09\09\09\09"
module asm "__kstrtabns_input_ff_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+input_ff_create\22, \22a\22\09"
module asm "\09.weak\09__crc_input_ff_create\09\09\09\09"
module asm "\09.long\09__crc_input_ff_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_ff_create:\09\09\09\09\09"
module asm "\09.asciz \09\22input_ff_create\22\09\09\09\09\09"
module asm "__kstrtabns_input_ff_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+input_ff_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc_input_ff_destroy\09\09\09\09"
module asm "\09.long\09__crc_input_ff_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_ff_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22input_ff_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_input_ff_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, ptr }
%struct.ff_envelope = type { i16, i16, i16, i16 }
%struct.ff_device = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i32], %struct.mutex, i32, ptr, [0 x ptr] }

@input_ff_upload.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"input_core\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"input_ff_upload\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/input/ff-core.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"invalid or not supported effect type in upload\0A\00", [48 x i8] zeroinitializer }, align 32
@input_ff_upload.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 28, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"invalid or not supported wave form in upload\0A\00", [50 x i8] zeroinitializer }, align 32
@__kstrtab_input_ff_upload = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_ff_upload = external dso_local constant [0 x i8], align 1
@__ksymtab_input_ff_upload = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_ff_upload to i32), ptr @__kstrtab_input_ff_upload, ptr @__kstrtabns_input_ff_upload }, section "___ksymtab_gpl+input_ff_upload", align 4
@__kstrtab_input_ff_erase = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_ff_erase = external dso_local constant [0 x i8], align 1
@__ksymtab_input_ff_erase = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_ff_erase to i32), ptr @__kstrtab_input_ff_erase, ptr @__kstrtabns_input_ff_erase }, section "___ksymtab_gpl+input_ff_erase", align 4
@input_ff_flush.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"input_ff_flush\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"flushing now\0A\00", [18 x i8] zeroinitializer }, align 32
@__kstrtab_input_ff_flush = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_ff_flush = external dso_local constant [0 x i8], align 1
@__ksymtab_input_ff_flush = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_ff_flush to i32), ptr @__kstrtab_input_ff_flush, ptr @__kstrtabns_input_ff_flush }, section "___ksymtab_gpl+input_ff_flush", align 4
@__kstrtab_input_ff_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_ff_event = external dso_local constant [0 x i8], align 1
@__ksymtab_input_ff_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_ff_event to i32), ptr @__kstrtab_input_ff_event, ptr @__kstrtabns_input_ff_event }, section "___ksymtab_gpl+input_ff_event", align 4
@input_ff_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 312, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"cannot allocate device without any effects\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"input_ff_create\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@input_ff_create._entry_ptr = internal global ptr @input_ff_create._entry, section ".printk_index", align 4
@input_ff_create._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.8, ptr @.str.2, i32 317, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"cannot allocate more than FF_MAX_EFFECTS effects\0A\00", [46 x i8] zeroinitializer }, align 32
@input_ff_create._entry_ptr.13 = internal global ptr @input_ff_create._entry.11, section ".printk_index", align 4
@input_ff_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ff->mutex\00", [21 x i8] zeroinitializer }, align 32
@__kstrtab_input_ff_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_ff_create = external dso_local constant [0 x i8], align 1
@__ksymtab_input_ff_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_ff_create to i32), ptr @__kstrtab_input_ff_create, ptr @__kstrtabns_input_ff_create }, section "___ksymtab_gpl+input_ff_create", align 4
@__kstrtab_input_ff_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_ff_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_input_ff_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_ff_destroy to i32), ptr @__kstrtab_input_ff_destroy, ptr @__kstrtabns_input_ff_destroy }, section "___ksymtab_gpl+input_ff_destroy", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 96, i64 97]
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 105, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 113, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 241, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 312, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 317, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private constant [27 x i8] c"../drivers/input/ff-core.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 338, i32 2 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__ksymtab_input_ff_create, ptr @__ksymtab_input_ff_destroy, ptr @__ksymtab_input_ff_erase, ptr @__ksymtab_input_ff_event, ptr @__ksymtab_input_ff_flush, ptr @__ksymtab_input_ff_upload, ptr @input_ff_create._entry, ptr @input_ff_create._entry.11, ptr @input_ff_create._entry_ptr, ptr @input_ff_create._entry_ptr.13, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @input_ff_create.__key, ptr @.str.14], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input_ff_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input_ff_create._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input_ff_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @input_ff_upload(ptr noundef %dev, ptr noundef %effect, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ff1 = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %ff1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ff1, align 8
  %evbit = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %evbit, align 4
  %4 = and i32 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %effect to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %effect, align 4
  %7 = add i16 %6, -88
  call void @__sanitizer_cov_trace_const_cmp2(i16 -8, i16 %7)
  %8 = icmp ult i16 %7, -8
  br i1 %8, label %if.end.do.body_crit_edge, label %lor.lhs.false7

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

lor.lhs.false7:                                   ; preds = %if.end
  %conv = zext i16 %6 to i32
  %ffbit = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 12
  %div3.i = lshr i32 %conv, 5
  %arrayidx.i = getelementptr i32, ptr %ffbit, i32 %div3.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %conv, 31
  %11 = shl nuw i32 1, %and.i
  %12 = and i32 %10, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool12.not = icmp eq i32 %12, 0
  br i1 %tobool12.not, label %lor.lhs.false7.do.body_crit_edge, label %if.end21

lor.lhs.false7.do.body_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false7.do.body_crit_edge, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @input_ff_upload.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@input_ff_upload, %if.then18)) #4
          to label %cleanup [label %if.then18], !srcloc !48

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %dev19 = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @input_ff_upload.__UNIQUE_ID_ddebug223, ptr noundef %dev19, ptr noundef nonnull @.str.3) #4
  br label %cleanup

if.end21:                                         ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_const_cmp2(i16 81, i16 %6)
  %cmp24 = icmp eq i16 %6, 81
  br i1 %cmp24, label %land.lhs.true, label %if.end61

land.lhs.true:                                    ; preds = %if.end21
  %u = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %13 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %u, align 4
  %15 = add i16 %14, -94
  call void @__sanitizer_cov_trace_const_cmp2(i16 -6, i16 %15)
  %16 = icmp ult i16 %15, -6
  br i1 %16, label %land.lhs.true.do.body44_crit_edge, label %lor.lhs.false35

land.lhs.true.do.body44_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body44

lor.lhs.false35:                                  ; preds = %land.lhs.true
  %conv26 = zext i16 %14 to i32
  %div3.i166 = lshr i32 %conv26, 5
  %arrayidx.i167 = getelementptr i32, ptr %ffbit, i32 %div3.i166
  %17 = ptrtoint ptr %arrayidx.i167 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %arrayidx.i167, align 4
  %and.i168 = and i32 %conv26, 31
  %19 = shl nuw i32 1, %and.i168
  %20 = and i32 %18, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool42.not = icmp eq i32 %20, 0
  br i1 %tobool42.not, label %lor.lhs.false35.do.body44_crit_edge, label %if.end61.thread

lor.lhs.false35.do.body44_crit_edge:              ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body44

do.body44:                                        ; preds = %lor.lhs.false35.do.body44_crit_edge, %land.lhs.true.do.body44_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @input_ff_upload.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@input_ff_upload, %if.then56)) #4
          to label %cleanup [label %if.then56], !srcloc !48

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #6
  %dev57 = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @input_ff_upload.__UNIQUE_ID_ddebug224, ptr noundef %dev57, ptr noundef nonnull @.str.4) #4
  br label %cleanup

if.end61:                                         ; preds = %if.end21
  %ffbit64 = getelementptr inbounds %struct.ff_device, ptr %1, i32 0, i32 7
  %arrayidx.i175 = getelementptr i32, ptr %ffbit64, i32 %div3.i
  %21 = ptrtoint ptr %arrayidx.i175 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %arrayidx.i175, align 4
  %23 = and i32 %22, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool67.not = icmp eq i32 %23, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 80, i16 %6)
  %cond.i = icmp eq i16 %6, 80
  %or.cond202 = select i1 %tobool67.not, i1 %cond.i, i1 false
  br i1 %or.cond202, label %sw.bb.i, label %if.end61.if.end73_crit_edge

if.end61.if.end73_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end73

if.end61.thread:                                  ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #6
  %ffbit64189 = getelementptr inbounds %struct.ff_device, ptr %1, i32 0, i32 7
  %arrayidx.i175190 = getelementptr i32, ptr %ffbit64189, i32 %div3.i
  %24 = ptrtoint ptr %arrayidx.i175190 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %arrayidx.i175190, align 4
  br label %if.end73

sw.bb.i:                                          ; preds = %if.end61
  %arrayidx.i.i = getelementptr %struct.ff_device, ptr %1, i32 0, i32 7, i32 2
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %arrayidx.i.i, align 4
  %28 = and i32 %27, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %sw.bb.i.cleanup_crit_edge, label %if.end.i

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  %u.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %29 = ptrtoint ptr %u.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %u.i, align 4
  %31 = udiv i16 %30, 3
  %weak_magnitude.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %32 = ptrtoint ptr %weak_magnitude.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %weak_magnitude.i, align 2
  %34 = udiv i16 %33, 6
  %narrow.i = add nuw nsw i16 %34, %31
  %35 = ptrtoint ptr %effect to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 81, ptr %effect, align 4
  store i16 90, ptr %u.i, align 4
  store i16 50, ptr %weak_magnitude.i, align 2
  %magnitude10.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 2
  %36 = ptrtoint ptr %magnitude10.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %narrow.i, ptr %magnitude10.i, align 4
  %offset.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 3
  %37 = call ptr @memset(ptr %offset.i, i32 0, i32 12)
  br label %if.end73

if.end73:                                         ; preds = %if.end.i, %if.end61.thread, %if.end61.if.end73_crit_edge
  %mutex = getelementptr inbounds %struct.ff_device, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %id74 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 1
  %38 = ptrtoint ptr %id74 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %id74, align 2
  %conv75 = sext i16 %39 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %39)
  %cmp76 = icmp eq i16 %39, -1
  br i1 %cmp76, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %if.end73
  %max_effects = getelementptr inbounds %struct.ff_device, ptr %1, i32 0, i32 9
  %40 = ptrtoint ptr %max_effects to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %max_effects, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp79204 = icmp sgt i32 %41, 0
  br i1 %cmp79204, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.out_crit_edge

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %id.0205 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ff_device, ptr %1, i32 0, i32 11, i32 %id.0205
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx, align 4
  %tobool81.not = icmp eq ptr %43, null
  br i1 %tobool81.not, label %if.end88, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %id.0205, 1
  %exitcond.not = icmp eq i32 %inc, %41
  br i1 %exitcond.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end88:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %conv89 = trunc i32 %id.0205 to i16
  %44 = ptrtoint ptr %id74 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv89, ptr %id74, align 2
  br label %if.end102

if.else:                                          ; preds = %if.end73
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %cmp.i = icmp slt i16 %39, 0
  br i1 %cmp.i, label %if.else.out_crit_edge, label %lor.lhs.false.i

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

lor.lhs.false.i:                                  ; preds = %if.else
  %max_effects.i = getelementptr inbounds %struct.ff_device, ptr %1, i32 0, i32 9
  %45 = ptrtoint ptr %max_effects.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %max_effects.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %conv75)
  %cmp1.not.i = icmp sgt i32 %46, %conv75
  br i1 %cmp1.not.i, label %lor.lhs.false2.i, label %lor.lhs.false.i.out_crit_edge

lor.lhs.false.i.out_crit_edge:                    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %arrayidx.i180 = getelementptr %struct.ff_device, ptr %1, i32 0, i32 11, i32 %conv75
  %47 = ptrtoint ptr %arrayidx.i180 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i180, align 4
  %tobool.not.i181 = icmp eq ptr %48, null
  br i1 %tobool.not.i181, label %lor.lhs.false2.i.out_crit_edge, label %if.end.i182

lor.lhs.false2.i.out_crit_edge:                   ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end.i182:                                      ; preds = %lor.lhs.false2.i
  %tobool3.not.i = icmp eq ptr %file, null
  %cmp6.not.i = icmp eq ptr %48, %file
  %or.cond.i = select i1 %tobool3.not.i, i1 true, i1 %cmp6.not.i
  br i1 %or.cond.i, label %if.end96, label %if.end.i182.out_crit_edge

if.end.i182.out_crit_edge:                        ; preds = %if.end.i182
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end96:                                         ; preds = %if.end.i182
  %effects = getelementptr inbounds %struct.ff_device, ptr %1, i32 0, i32 10
  %49 = ptrtoint ptr %effects to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %effects, align 4
  %arrayidx97 = getelementptr %struct.ff_effect, ptr %50, i32 %conv75
  %51 = ptrtoint ptr %effect to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %effect, align 4
  %53 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx97, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %52, i16 %54)
  %cmp.i184 = icmp eq i16 %52, %54
  br i1 %cmp.i184, label %land.rhs.i, label %if.end96.out_crit_edge

if.end96.out_crit_edge:                           ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

land.rhs.i:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_const_cmp2(i16 81, i16 %52)
  %cmp6.not.i185 = icmp eq i16 %52, 81
  br i1 %cmp6.not.i185, label %check_effects_compatible.exit, label %land.rhs.i.if.end102_crit_edge

land.rhs.i.if.end102_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end102

check_effects_compatible.exit:                    ; preds = %land.rhs.i
  %u.i186 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %55 = ptrtoint ptr %u.i186 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %u.i186, align 4
  %u9.i = getelementptr %struct.ff_effect, ptr %50, i32 %conv75, i32 5
  %57 = ptrtoint ptr %u9.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %u9.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %56, i16 %58)
  %cmp12.i.not = icmp eq i16 %56, %58
  br i1 %cmp12.i.not, label %check_effects_compatible.exit.if.end102_crit_edge, label %check_effects_compatible.exit.out_crit_edge

check_effects_compatible.exit.out_crit_edge:      ; preds = %check_effects_compatible.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

check_effects_compatible.exit.if.end102_crit_edge: ; preds = %check_effects_compatible.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end102

if.end102:                                        ; preds = %check_effects_compatible.exit.if.end102_crit_edge, %land.rhs.i.if.end102_crit_edge, %if.end88
  %id.1 = phi i32 [ %id.0205, %if.end88 ], [ %conv75, %check_effects_compatible.exit.if.end102_crit_edge ], [ %conv75, %land.rhs.i.if.end102_crit_edge ]
  %old.0 = phi ptr [ null, %if.end88 ], [ %arrayidx97, %check_effects_compatible.exit.if.end102_crit_edge ], [ %arrayidx97, %land.rhs.i.if.end102_crit_edge ]
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 4
  %call103 = tail call i32 %60(ptr noundef %dev, ptr noundef %effect, ptr noundef %old.0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end106, label %if.end102.out_crit_edge

if.end102.out_crit_edge:                          ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end106:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #6
  %event_lock = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 36
  tail call void @_raw_spin_lock_irq(ptr noundef %event_lock) #4
  %effects107 = getelementptr inbounds %struct.ff_device, ptr %1, i32 0, i32 10
  %61 = ptrtoint ptr %effects107 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %effects107, align 4
  %arrayidx108 = getelementptr %struct.ff_effect, ptr %62, i32 %id.1
  %63 = call ptr @memcpy(ptr %arrayidx108, ptr %effect, i32 44)
  %arrayidx110 = getelementptr %struct.ff_device, ptr %1, i32 0, i32 11, i32 %id.1
  %64 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %file, ptr %arrayidx110, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_lock) #4
  br label %out

out:                                              ; preds = %if.end106, %if.end102.out_crit_edge, %check_effects_compatible.exit.out_crit_edge, %if.end96.out_crit_edge, %if.end.i182.out_crit_edge, %lor.lhs.false2.i.out_crit_edge, %lor.lhs.false.i.out_crit_edge, %if.else.out_crit_edge, %for.inc.out_crit_edge, %for.cond.preheader.out_crit_edge
  %ret.0 = phi i32 [ %call103, %if.end102.out_crit_edge ], [ 0, %if.end106 ], [ -22, %check_effects_compatible.exit.out_crit_edge ], [ -13, %if.end.i182.out_crit_edge ], [ -22, %if.else.out_crit_edge ], [ -22, %lor.lhs.false.i.out_crit_edge ], [ -22, %lor.lhs.false2.i.out_crit_edge ], [ -22, %if.end96.out_crit_edge ], [ -28, %for.cond.preheader.out_crit_edge ], [ -28, %for.inc.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  br label %cleanup

cleanup:                                          ; preds = %out, %sw.bb.i.cleanup_crit_edge, %if.then56, %do.body44, %if.then18, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -38, %entry.cleanup_crit_edge ], [ -22, %if.then18 ], [ -22, %if.then56 ], [ -22, %do.body ], [ -22, %do.body44 ], [ -22, %sw.bb.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @input_ff_erase(ptr noundef %dev, i32 noundef %effect_id, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ff1 = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %ff1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ff1, align 8
  %evbit = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %evbit, align 4
  %4 = and i32 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %mutex = getelementptr inbounds %struct.ff_device, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %call2 = tail call fastcc i32 @erase_effect(ptr noundef %dev, i32 noundef %effect_id, ptr noundef %file)
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -38, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @erase_effect(ptr noundef %dev, i32 noundef %effect_id, ptr noundef %file) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ff1 = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %ff1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ff1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %effect_id)
  %cmp.i = icmp slt i32 %effect_id, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %max_effects.i = getelementptr inbounds %struct.ff_device, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %max_effects.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_effects.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %effect_id)
  %cmp1.not.i = icmp sgt i32 %3, %effect_id
  br i1 %cmp1.not.i, label %lor.lhs.false2.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %arrayidx.i = getelementptr %struct.ff_device, ptr %1, i32 0, i32 11, i32 %effect_id
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %lor.lhs.false2.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false2.i.cleanup_crit_edge:               ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false2.i
  %tobool3.not.i = icmp eq ptr %file, null
  %cmp6.not.i = icmp eq ptr %5, %file
  %or.cond.i = select i1 %tobool3.not.i, i1 true, i1 %cmp6.not.i
  br i1 %or.cond.i, label %if.end, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %event_lock = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 36
  tail call void @_raw_spin_lock_irq(ptr noundef %event_lock) #4
  %playback = getelementptr inbounds %struct.ff_device, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %playback to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %playback, align 4
  %call2 = tail call i32 %7(ptr noundef %dev, i32 noundef %effect_id, i32 noundef 0) #4
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_lock) #4
  %erase = getelementptr inbounds %struct.ff_device, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %erase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %erase, align 4
  %tobool4.not = icmp eq ptr %10, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then5:                                         ; preds = %if.end
  %call7 = tail call i32 %10(ptr noundef %dev, i32 noundef %effect_id) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then5.cleanup_crit_edge, label %if.then9

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then9:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_lock_irq(ptr noundef %event_lock) #4
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %file, ptr %arrayidx.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_lock) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.then5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %lor.lhs.false2.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then9 ], [ 0, %if.then5.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -13, %if.end.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %lor.lhs.false2.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @input_ff_flush(ptr noundef %dev, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ff1 = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %ff1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ff1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @input_ff_flush.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@input_ff_flush, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !48

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev4 = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @input_ff_flush.__UNIQUE_ID_ddebug225, ptr noundef %dev4, ptr noundef nonnull @.str.6) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mutex = getelementptr inbounds %struct.ff_device, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %max_effects = getelementptr inbounds %struct.ff_device, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %max_effects to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_effects, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp14 = icmp sgt i32 %3, 0
  br i1 %cmp14, label %do.end.for.body_crit_edge, label %do.end.for.end_crit_edge

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %i.015 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %call5 = tail call fastcc i32 @erase_effect(ptr noundef %dev, i32 noundef %i.015, ptr noundef %file)
  %inc = add nuw nsw i32 %i.015, 1
  %4 = ptrtoint ptr %max_effects to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_effects, align 4
  %cmp = icmp slt i32 %inc, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @input_ff_event(ptr noundef %dev, i32 noundef %type, i32 noundef %code, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ff1 = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %ff1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ff1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %type)
  %cmp.not = icmp eq i32 %type, 21
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %code to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %code, label %sw.default [
    i32 96, label %sw.bb
    i32 97, label %sw.bb5
  ]

sw.bb:                                            ; preds = %if.end
  %arrayidx.i = getelementptr %struct.input_dev, ptr %dev, i32 0, i32 12, i32 3
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %value)
  %cmp2 = icmp ugt i32 %value, 65535
  %or.cond = or i1 %cmp2, %tobool.not
  br i1 %or.cond, label %sw.bb.cleanup_crit_edge, label %if.end4

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %set_gain = getelementptr inbounds %struct.ff_device, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %set_gain to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set_gain, align 4
  %conv = trunc i32 %value to i16
  tail call void %6(ptr noundef %dev, i16 noundef zeroext %conv) #4
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  %arrayidx.i37 = getelementptr %struct.input_dev, ptr %dev, i32 0, i32 12, i32 3
  %7 = ptrtoint ptr %arrayidx.i37 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %arrayidx.i37, align 4
  %9 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool9.not = icmp eq i32 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %value)
  %cmp11 = icmp ugt i32 %value, 65535
  %or.cond36 = or i1 %cmp11, %tobool9.not
  br i1 %or.cond36, label %sw.bb5.cleanup_crit_edge, label %if.end14

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end14:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #6
  %set_autocenter = getelementptr inbounds %struct.ff_device, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %set_autocenter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_autocenter, align 4
  %conv15 = trunc i32 %value to i16
  tail call void %11(ptr noundef %dev, i16 noundef zeroext %conv15) #4
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %code)
  %cmp.i = icmp slt i32 %code, 0
  br i1 %cmp.i, label %sw.default.cleanup_crit_edge, label %lor.lhs.false.i

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %sw.default
  %max_effects.i = getelementptr inbounds %struct.ff_device, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %max_effects.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_effects.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %code)
  %cmp1.not.i = icmp sgt i32 %13, %code
  br i1 %cmp1.not.i, label %lor.lhs.false2.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %arrayidx.i39 = getelementptr %struct.ff_device, ptr %1, i32 0, i32 11, i32 %code
  %14 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i39, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %lor.lhs.false2.i.cleanup_crit_edge, label %if.then19

lor.lhs.false2.i.cleanup_crit_edge:               ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then19:                                        ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #6
  %playback = getelementptr inbounds %struct.ff_device, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %playback to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %playback, align 4
  %call20 = tail call i32 %17(ptr noundef %dev, i32 noundef %code, i32 noundef %value) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %lor.lhs.false2.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %sw.default.cleanup_crit_edge, %if.end14, %sw.bb5.cleanup_crit_edge, %if.end4, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @input_ff_create(ptr noundef %dev, i32 noundef %max_effects) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_effects)
  %tobool.not = icmp eq i32 %max_effects, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev1 = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %max_effects)
  %cmp = icmp ugt i32 %max_effects, 96
  br i1 %cmp, label %do.end5, label %if.end8.i.i

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev6 = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef nonnull @.str.12) #7
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end
  %mul = shl nuw nsw i32 %max_effects, 2
  %add = add nuw nsw i32 %mul, 144
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #8
  %tobool11.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool11.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end7.i.i

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end8.i.i
  %0 = mul nuw nsw i32 %max_effects, 44
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %0, i32 noundef 3520) #8
  %effects = getelementptr inbounds %struct.ff_device, ptr %call9.i.i, i32 0, i32 10
  %1 = ptrtoint ptr %effects to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call8.i.i, ptr %effects, align 4
  %tobool16.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool16.not, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #4
  br label %cleanup

if.end18:                                         ; preds = %if.end7.i.i
  %max_effects19 = getelementptr inbounds %struct.ff_device, ptr %call9.i.i, i32 0, i32 9
  %2 = ptrtoint ptr %max_effects19 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %max_effects, ptr %max_effects19, align 8
  %mutex = getelementptr inbounds %struct.ff_device, ptr %call9.i.i, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.14, ptr noundef nonnull @input_ff_create.__key) #4
  %ff23 = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 20
  %3 = ptrtoint ptr %ff23 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call9.i.i, ptr %ff23, align 8
  %flush = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 33
  %4 = ptrtoint ptr %flush to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @input_ff_flush, ptr %flush, align 8
  %event = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 34
  %5 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @input_ff_event, ptr %event, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 5
  %6 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %evbit, align 4
  %or.i = or i32 %7, 2097152
  store i32 %or.i, ptr %evbit, align 4
  %ffbit = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 12
  %call25 = tail call i32 @_find_next_bit_be(ptr noundef %ffbit, i32 noundef 128, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %call25)
  %cmp2677 = icmp slt i32 %call25, 128
  br i1 %cmp2677, label %for.body.lr.ph, label %if.end18.for.end_crit_edge

if.end18.for.end_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end18
  %ffbit27 = getelementptr inbounds %struct.ff_device, ptr %call9.i.i, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.078 = phi i32 [ %call25, %for.body.lr.ph ], [ %call32, %for.body.for.body_crit_edge ]
  %rem.i = and i32 %i.078, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %i.078, 5
  %add.ptr.i = getelementptr i32, ptr %ffbit27, i32 %div2.i
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i, align 4
  %or.i67 = or i32 %9, %shl.i
  store i32 %or.i67, ptr %add.ptr.i, align 4
  %add31 = add nsw i32 %i.078, 1
  %call32 = tail call i32 @_find_next_bit_be(ptr noundef %ffbit, i32 noundef 128, i32 noundef %add31) #4
  %cmp26 = icmp slt i32 %call32, 128
  br i1 %cmp26, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end18.for.end_crit_edge
  %arrayidx.i = getelementptr %struct.ff_device, ptr %call9.i.i, i32 0, i32 7, i32 2
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx.i, align 4
  %12 = and i32 %11, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool36.not = icmp eq i32 %12, 0
  br i1 %tobool36.not, label %for.end.cleanup_crit_edge, label %if.then37

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then37:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i68 = getelementptr %struct.input_dev, ptr %dev, i32 0, i32 12, i32 2
  %13 = ptrtoint ptr %add.ptr.i68 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i68, align 4
  %or.i69 = or i32 %14, 65536
  store i32 %or.i69, ptr %add.ptr.i68, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %for.end.cleanup_crit_edge, %if.then17, %if.end8.i.i.cleanup_crit_edge, %do.end5, %do.end
  %retval.0 = phi i32 [ -22, %do.end5 ], [ -12, %if.then17 ], [ -22, %do.end ], [ -12, %if.end8.i.i.cleanup_crit_edge ], [ 0, %if.then37 ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @input_ff_destroy(ptr nocapture noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ff1 = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %ff1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ff1, align 8
  %evbit = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %evbit, align 4
  %and.i = and i32 %3, -2097153
  store i32 %and.i, ptr %evbit, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then:                                          ; preds = %entry
  %destroy = getelementptr inbounds %struct.ff_device, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %destroy, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %5(ptr noundef nonnull %1) #4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %private = getelementptr inbounds %struct.ff_device, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private, align 4
  tail call void @kfree(ptr noundef %7) #4
  %effects = getelementptr inbounds %struct.ff_device, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %effects to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %effects, align 4
  tail call void @kfree(ptr noundef %9) #4
  tail call void @kfree(ptr noundef nonnull %1) #4
  %10 = ptrtoint ptr %ff1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %ff1, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !13, !15, !16, !17, !19, !21, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/input/ff-core.c", i32 105, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @input_ff_upload.__UNIQUE_ID_ddebug223, !1, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/input/ff-core.c", i32 113, i32 3}
!8 = !{ptr @input_ff_upload.__UNIQUE_ID_ddebug224, !7, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!9 = !{ptr @__ksymtab_input_ff_upload, !10, !"__ksymtab_input_ff_upload", i1 false, i1 false}
!10 = !{!"../drivers/input/ff-core.c", i32 166, i32 1}
!11 = !{ptr @__ksymtab_input_ff_erase, !12, !"__ksymtab_input_ff_erase", i1 false, i1 false}
!12 = !{!"../drivers/input/ff-core.c", i32 225, i32 1}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/input/ff-core.c", i32 241, i32 2}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @input_ff_flush.__UNIQUE_ID_ddebug225, !14, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!17 = !{ptr @__ksymtab_input_ff_flush, !18, !"__ksymtab_input_ff_flush", i1 false, i1 false}
!18 = !{!"../drivers/input/ff-core.c", i32 252, i32 1}
!19 = !{ptr @__ksymtab_input_ff_event, !20, !"__ksymtab_input_ff_event", i1 false, i1 false}
!20 = !{!"../drivers/input/ff-core.c", i32 292, i32 1}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/input/ff-core.c", i32 312, i32 3}
!23 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @input_ff_create._entry, !22, !"_entry", i1 false, i1 false}
!27 = !{ptr @input_ff_create._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/ff-core.c", i32 317, i32 3}
!30 = !{ptr @input_ff_create._entry.11, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @input_ff_create._entry_ptr.13, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @input_ff_create.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/input/ff-core.c", i32 338, i32 2}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @__ksymtab_input_ff_create, !36, !"__ksymtab_input_ff_create", i1 false, i1 false}
!36 = !{!"../drivers/input/ff-core.c", i32 355, i32 1}
!37 = !{ptr @__ksymtab_input_ff_destroy, !38, !"__ksymtab_input_ff_destroy", i1 false, i1 false}
!38 = !{!"../drivers/input/ff-core.c", i32 379, i32 1}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{i64 2149039911, i64 2149039916, i64 2149039929, i64 2149039973, i64 2149040007, i64 2149040028}
