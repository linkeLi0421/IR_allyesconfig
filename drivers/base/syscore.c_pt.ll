; ModuleID = '/llk/IR_all_yes/drivers/base/syscore.c_pt.bc'
source_filename = "../drivers/base/syscore.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+register_syscore_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_register_syscore_ops\09\09\09\09"
module asm "\09.long\09__crc_register_syscore_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_syscore_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22register_syscore_ops\22\09\09\09\09\09"
module asm "__kstrtabns_register_syscore_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+unregister_syscore_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_unregister_syscore_ops\09\09\09\09"
module asm "\09.long\09__crc_unregister_syscore_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_syscore_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_syscore_ops\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_syscore_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+syscore_suspend\22, \22a\22\09"
module asm "\09.weak\09__crc_syscore_suspend\09\09\09\09"
module asm "\09.long\09__crc_syscore_suspend\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_syscore_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22syscore_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_syscore_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+syscore_resume\22, \22a\22\09"
module asm "\09.weak\09__crc_syscore_resume\09\09\09\09"
module asm "\09.long\09__crc_syscore_resume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_syscore_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22syscore_resume\22\09\09\09\09\09"
module asm "__kstrtabns_syscore_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@syscore_ops_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @syscore_ops_lock, i64 52), ptr getelementptr (i8, ptr @syscore_ops_lock, i64 52) }, ptr @syscore_ops_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@syscore_ops_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @syscore_ops_list, ptr @syscore_ops_list }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_register_syscore_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_syscore_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_register_syscore_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_syscore_ops to i32), ptr @__kstrtab_register_syscore_ops, ptr @__kstrtabns_register_syscore_ops }, section "___ksymtab_gpl+register_syscore_ops", align 4
@__kstrtab_unregister_syscore_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_syscore_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_syscore_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_syscore_ops to i32), ptr @__kstrtab_unregister_syscore_ops, ptr @__kstrtabns_unregister_syscore_ops }, section "___ksymtab_gpl+unregister_syscore_ops", align 4
@syscore_suspend.___tp_str = internal global ptr @.str, section "__tracepoint_str", align 4
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"syscore_suspend\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Checking wakeup interrupts\0A\00", [36 x i8] zeroinitializer }, align 32
@syscore_suspend.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/base/syscore.c\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Interrupts enabled before system core suspend.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Calling %pS\0A\00", [19 x i8] zeroinitializer }, align 32
@syscore_suspend.__already_done.5 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Interrupts enabled after %pS\0A\00", [34 x i8] zeroinitializer }, align 32
@syscore_suspend.___tp_str.7 = internal global ptr @.str, section "__tracepoint_str", align 4
@syscore_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str, ptr @.str.2, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013PM: System core suspend callback %pS failed.\0A\00", [48 x i8] zeroinitializer }, align 32
@syscore_suspend._entry_ptr = internal global ptr @syscore_suspend._entry, section ".printk_index", align 4
@__kstrtab_syscore_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_syscore_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_syscore_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @syscore_suspend to i32), ptr @__kstrtab_syscore_suspend, ptr @__kstrtabns_syscore_suspend }, section "___ksymtab_gpl+syscore_suspend", align 4
@syscore_resume.___tp_str = internal global ptr @.str.9, section "__tracepoint_str", align 4
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"syscore_resume\00", [17 x i8] zeroinitializer }, align 32
@syscore_resume.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Interrupts enabled before system core resume.\0A\00", [49 x i8] zeroinitializer }, align 32
@syscore_resume.__already_done.11 = internal unnamed_addr global i1 false, section ".data.once", align 1
@syscore_resume.___tp_str.12 = internal global ptr @.str.9, section "__tracepoint_str", align 4
@__kstrtab_syscore_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_syscore_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_syscore_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @syscore_resume to i32), ptr @__kstrtab_syscore_resume, ptr @__kstrtabns_syscore_resume }, section "___ksymtab_gpl+syscore_resume", align 4
@initcall_debug = external dso_local local_unnamed_addr global i8, align 1
@syscore_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016PM: Calling %pS\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"syscore_shutdown\00", [47 x i8] zeroinitializer }, align 32
@syscore_shutdown._entry_ptr = internal global ptr @syscore_shutdown._entry, section ".printk_index", align 4
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"syscore_ops_lock.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"syscore_ops_lock\00", [47 x i8] zeroinitializer }, align 32
@__tracepoint_suspend_resume = external dso_local global %struct.tracepoint, align 4
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/power.h\00", [35 x i8] zeroinitializer }, align 32
@trace_suspend_resume.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"syscore_ops_lock\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"syscore_ops_list\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 14, i32 8 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 52, i32 23 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 53, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 59, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 64, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 68, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 76, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 95, i32 23 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 96, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 123, i32 5 }
@___asan_gen_.69 = private constant [26 x i8] c"../drivers/base/syscore.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 15, i32 8 }
@___asan_gen_.75 = private unnamed_addr constant [32 x i8] c"../include/trace/events/power.h\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 226, i32 1 }
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 108, i32 2 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__ksymtab_register_syscore_ops, ptr @__ksymtab_syscore_resume, ptr @__ksymtab_syscore_suspend, ptr @__ksymtab_unregister_syscore_ops, ptr @syscore_resume.___tp_str, ptr @syscore_resume.___tp_str.12, ptr @syscore_shutdown._entry, ptr @syscore_shutdown._entry_ptr, ptr @syscore_suspend.___tp_str, ptr @syscore_suspend.___tp_str.7, ptr @syscore_suspend._entry, ptr @syscore_suspend._entry_ptr, ptr @syscore_ops_lock, ptr @syscore_ops_list, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @syscore_ops_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @syscore_ops_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @syscore_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @syscore_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @register_syscore_ops(ptr noundef %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @syscore_ops_lock, i32 noundef 0) #5
  %0 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @syscore_ops_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ops, ptr noundef %0, ptr noundef nonnull @syscore_ops_list) #5
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  store ptr %ops, ptr getelementptr inbounds (%struct.list_head, ptr @syscore_ops_list, i32 0, i32 1), align 4
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @syscore_ops_list, ptr %ops, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %ops, i32 0, i32 1
  %2 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %0, ptr %prev3.i.i, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %ops, ptr %0, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @syscore_ops_lock) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unregister_syscore_ops(ptr noundef %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @syscore_ops_lock, i32 noundef 0) #5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ops) #5
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ops, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %ops, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %ops, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @syscore_ops_lock) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @syscore_suspend() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @syscore_suspend.___tp_str, align 4
  tail call fastcc void @trace_suspend_resume(ptr noundef %0, i1 noundef zeroext true)
  tail call void (i1, ptr, ...) @__pm_pr_dbg(i1 noundef zeroext false, ptr noundef nonnull @.str.1) #5
  %call = tail call zeroext i1 @pm_wakeup_pending() #5
  br i1 %call, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !67
  %and.i = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %land.rhs, label %if.end.if.end46_crit_edge

if.end.if.end46_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

land.rhs:                                         ; preds = %if.end
  %.b197 = load i1, ptr @syscore_suspend.__already_done, align 1
  br i1 %.b197, label %land.rhs.if.end46_crit_edge, label %if.then20, !prof !68

land.rhs.if.end46_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

if.then20:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @syscore_suspend.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 60, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end46

if.end46:                                         ; preds = %if.then20, %land.rhs.if.end46_crit_edge, %if.end.if.end46_crit_edge
  %ops.0200 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @syscore_ops_list, i32 0, i32 1), align 4
  %cmp55.not201 = icmp eq ptr %ops.0200, @syscore_ops_list
  br i1 %cmp55.not201, label %if.end46.for.end_crit_edge, label %if.end46.for.body_crit_edge

if.end46.for.body_crit_edge:                      ; preds = %if.end46
  br label %for.body

if.end46.for.end_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end46.for.body_crit_edge
  %ops.0202 = phi ptr [ %ops.0, %for.inc.for.body_crit_edge ], [ %ops.0200, %if.end46.for.body_crit_edge ]
  %suspend = getelementptr inbounds %struct.syscore_ops, ptr %ops.0202, i32 0, i32 1
  %2 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %suspend, align 4
  %tobool59.not = icmp eq ptr %3, null
  br i1 %tobool59.not, label %for.body.for.inc_crit_edge, label %if.then60

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then60:                                        ; preds = %for.body
  tail call void (i1, ptr, ...) @__pm_pr_dbg(i1 noundef zeroext false, ptr noundef nonnull @.str.4, ptr noundef nonnull %3) #5
  %4 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %suspend, align 4
  %call63 = tail call i32 %5() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %do.end151

if.end66:                                         ; preds = %if.then60
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !67
  %and.i198 = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i198)
  %tobool86.not = icmp eq i32 %and.i198, 0
  br i1 %tobool86.not, label %land.rhs96, label %if.end66.for.inc_crit_edge

if.end66.for.inc_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.rhs96:                                       ; preds = %if.end66
  %.b195196 = load i1, ptr @syscore_suspend.__already_done.5, align 1
  br i1 %.b195196, label %land.rhs96.for.inc_crit_edge, label %if.then107, !prof !68

land.rhs96.for.inc_crit_edge:                     ; preds = %land.rhs96
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then107:                                       ; preds = %land.rhs96
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @syscore_suspend.__already_done.5, align 1
  %7 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %suspend, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 69, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef %8) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then107, %land.rhs96.for.inc_crit_edge, %if.end66.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %prev = getelementptr inbounds %struct.list_head, ptr %ops.0202, i32 0, i32 1
  %9 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %9)
  %ops.0 = load ptr, ptr %prev, align 4
  %cmp55.not = icmp eq ptr %ops.0, @syscore_ops_list
  br i1 %cmp55.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end46.for.end_crit_edge
  %10 = load ptr, ptr @syscore_suspend.___tp_str.7, align 4
  tail call fastcc void @trace_suspend_resume(ptr noundef %10, i1 noundef zeroext false)
  br label %cleanup

do.end151:                                        ; preds = %if.then60
  %11 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %suspend, align 4
  %call154 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %12) #8
  %13 = ptrtoint ptr %ops.0202 to i32
  call void @__asan_load4_noabort(i32 %13)
  %ops.1204 = load ptr, ptr %ops.0202, align 4
  %cmp161.not205 = icmp eq ptr %ops.1204, @syscore_ops_list
  br i1 %cmp161.not205, label %do.end151.cleanup_crit_edge, label %do.end151.for.body165_crit_edge

do.end151.for.body165_crit_edge:                  ; preds = %do.end151
  br label %for.body165

do.end151.cleanup_crit_edge:                      ; preds = %do.end151
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body165:                                      ; preds = %for.inc170.for.body165_crit_edge, %do.end151.for.body165_crit_edge
  %ops.1206 = phi ptr [ %ops.1, %for.inc170.for.body165_crit_edge ], [ %ops.1204, %do.end151.for.body165_crit_edge ]
  %resume = getelementptr inbounds %struct.syscore_ops, ptr %ops.1206, i32 0, i32 2
  %14 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %resume, align 4
  %tobool166.not = icmp eq ptr %15, null
  br i1 %tobool166.not, label %for.body165.for.inc170_crit_edge, label %if.then167

for.body165.for.inc170_crit_edge:                 ; preds = %for.body165
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc170

if.then167:                                       ; preds = %for.body165
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %15() #5
  br label %for.inc170

for.inc170:                                       ; preds = %if.then167, %for.body165.for.inc170_crit_edge
  %16 = ptrtoint ptr %ops.1206 to i32
  call void @__asan_load4_noabort(i32 %16)
  %ops.1 = load ptr, ptr %ops.1206, align 4
  %cmp161.not = icmp eq ptr %ops.1, @syscore_ops_list
  br i1 %cmp161.not, label %for.inc170.cleanup_crit_edge, label %for.inc170.for.body165_crit_edge

for.inc170.for.body165_crit_edge:                 ; preds = %for.inc170
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body165

for.inc170.cleanup_crit_edge:                     ; preds = %for.inc170
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc170.cleanup_crit_edge, %do.end151.cleanup_crit_edge, %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -16, %entry.cleanup_crit_edge ], [ %call63, %do.end151.cleanup_crit_edge ], [ %call63, %for.inc170.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_suspend_resume(ptr noundef %action, i1 noundef zeroext %start) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 1), ptr blockaddress(@trace_suspend_resume, %do.body)) #5
          to label %if.end49 [label %do.body], !srcloc !69

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !57) #5
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !68

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #5
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #7
  %9 = tail call i32 @llvm.read_register.i32(metadata !57) #5
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !70
  %call43 = tail call i32 @__traceiter_suspend_resume(ptr noundef null, ptr noundef %action, i32 noundef 0, i1 noundef zeroext %start) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !71
  %13 = tail call i32 @llvm.read_register.i32(metadata !57) #5
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !57) #5
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end49.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end49.cpu_online.exit14_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end49
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !68

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #5
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end49.cpu_online.exit14_crit_edge
  %div1.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end70_crit_edge, label %if.then53

cpu_online.exit14.if.end70_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !57) #5
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !72
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_suspend_resume.__warned, align 1
  br i1 %.b1, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @trace_suspend_resume.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 246, ptr noundef nonnull @.str.18) #5
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !73
  %31 = tail call i32 @llvm.read_register.i32(metadata !57) #5
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit14.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_pr_dbg(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pm_wakeup_pending() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @syscore_resume() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @syscore_resume.___tp_str, align 4
  tail call fastcc void @trace_suspend_resume(ptr noundef %0, i1 noundef zeroext true)
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !67
  %and.i = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end43_crit_edge

entry.if.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

land.rhs:                                         ; preds = %entry
  %.b153 = load i1, ptr @syscore_resume.__already_done, align 1
  br i1 %.b153, label %land.rhs.if.end43_crit_edge, label %if.then, !prof !68

land.rhs.if.end43_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @syscore_resume.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 97, i32 noundef 9, ptr noundef nonnull @.str.10) #5
  br label %if.end43

if.end43:                                         ; preds = %if.then, %land.rhs.if.end43_crit_edge, %entry.if.end43_crit_edge
  %ops.0155 = load ptr, ptr @syscore_ops_list, align 4
  %cmp52.not156 = icmp eq ptr %ops.0155, @syscore_ops_list
  br i1 %cmp52.not156, label %if.end43.for.end_crit_edge, label %if.end43.for.body_crit_edge

if.end43.for.body_crit_edge:                      ; preds = %if.end43
  br label %for.body

if.end43.for.end_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end43.for.body_crit_edge
  %ops.0157 = phi ptr [ %ops.0, %for.inc.for.body_crit_edge ], [ %ops.0155, %if.end43.for.body_crit_edge ]
  %resume = getelementptr inbounds %struct.syscore_ops, ptr %ops.0157, i32 0, i32 2
  %2 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resume, align 4
  %tobool56.not = icmp eq ptr %3, null
  br i1 %tobool56.not, label %for.body.for.inc_crit_edge, label %if.then57

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then57:                                        ; preds = %for.body
  tail call void (i1, ptr, ...) @__pm_pr_dbg(i1 noundef zeroext false, ptr noundef nonnull @.str.4, ptr noundef nonnull %3) #5
  %4 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resume, align 4
  tail call void %5() #5
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !67
  %and.i154 = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i154)
  %tobool79.not = icmp eq i32 %and.i154, 0
  br i1 %tobool79.not, label %land.rhs89, label %if.then57.for.inc_crit_edge

if.then57.for.inc_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.rhs89:                                       ; preds = %if.then57
  %.b151152 = load i1, ptr @syscore_resume.__already_done.11, align 1
  br i1 %.b151152, label %land.rhs89.for.inc_crit_edge, label %if.then100, !prof !68

land.rhs89.for.inc_crit_edge:                     ; preds = %land.rhs89
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then100:                                       ; preds = %land.rhs89
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @syscore_resume.__already_done.11, align 1
  %7 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %resume, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 104, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef %8) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then100, %land.rhs89.for.inc_crit_edge, %if.then57.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %9 = ptrtoint ptr %ops.0157 to i32
  call void @__asan_load4_noabort(i32 %9)
  %ops.0 = load ptr, ptr %ops.0157, align 4
  %cmp52.not = icmp eq ptr %ops.0, @syscore_ops_list
  br i1 %cmp52.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end43.for.end_crit_edge
  %10 = load ptr, ptr @syscore_resume.___tp_str.12, align 4
  tail call fastcc void @trace_suspend_resume(ptr noundef %10, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @syscore_shutdown() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @syscore_ops_lock, i32 noundef 0) #5
  %ops.015 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @syscore_ops_list, i32 0, i32 1), align 4
  %cmp.not16 = icmp eq ptr %ops.015, @syscore_ops_list
  br i1 %cmp.not16, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %ops.017 = phi ptr [ %ops.0, %for.inc.for.body_crit_edge ], [ %ops.015, %entry.for.body_crit_edge ]
  %shutdown = getelementptr inbounds %struct.syscore_ops, ptr %ops.017, i32 0, i32 3
  %0 = ptrtoint ptr %shutdown to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shutdown, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @initcall_debug to i32))
  %2 = load i8, ptr @initcall_debug, align 1, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull %1) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %3 = ptrtoint ptr %shutdown to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %shutdown, align 4
  tail call void %4() #5
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %prev = getelementptr inbounds %struct.list_head, ptr %ops.017, i32 0, i32 1
  %5 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %5)
  %ops.0 = load ptr, ptr %prev, align 4
  %cmp.not = icmp eq ptr %ops.0, @syscore_ops_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @syscore_ops_lock) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_suspend_resume(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !13, !15, !17, !18, !20, !22, !23, !24, !26, !28, !29, !31, !32, !34, !36, !38, !40, !41, !42, !43, !45, !46, !47, !49, !51, !52, !53, !54, !56}
!llvm.named.register.sp = !{!57}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @__ksymtab_register_syscore_ops, !1, !"__ksymtab_register_syscore_ops", i1 false, i1 false}
!1 = !{!"../drivers/base/syscore.c", i32 27, i32 1}
!2 = !{ptr @__ksymtab_unregister_syscore_ops, !3, !"__ksymtab_unregister_syscore_ops", i1 false, i1 false}
!3 = !{!"../drivers/base/syscore.c", i32 39, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/base/syscore.c", i32 52, i32 23}
!6 = !{ptr @syscore_suspend.___tp_str, !5, !"___tp_str", i1 false, i1 false}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/base/syscore.c", i32 53, i32 2}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../drivers/base/syscore.c", i32 59, i32 2}
!11 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/base/syscore.c", i32 64, i32 4}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../drivers/base/syscore.c", i32 68, i32 4}
!17 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @syscore_suspend.___tp_str.7, !19, !"___tp_str", i1 false, i1 false}
!19 = !{!"../drivers/base/syscore.c", i32 72, i32 23}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/base/syscore.c", i32 76, i32 2}
!22 = !{ptr @syscore_suspend._entry, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @syscore_suspend._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @__ksymtab_syscore_suspend, !25, !"__ksymtab_syscore_suspend", i1 false, i1 false}
!25 = !{!"../drivers/base/syscore.c", i32 84, i32 1}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/base/syscore.c", i32 95, i32 23}
!28 = !{ptr @syscore_resume.___tp_str, !27, !"___tp_str", i1 false, i1 false}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../drivers/base/syscore.c", i32 96, i32 2}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../drivers/base/syscore.c", i32 103, i32 4}
!34 = !{ptr @syscore_resume.___tp_str.12, !35, !"___tp_str", i1 false, i1 false}
!35 = !{!"../drivers/base/syscore.c", i32 106, i32 23}
!36 = !{ptr @__ksymtab_syscore_resume, !37, !"__ksymtab_syscore_resume", i1 false, i1 false}
!37 = !{!"../drivers/base/syscore.c", i32 108, i32 1}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/base/syscore.c", i32 123, i32 5}
!40 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @syscore_shutdown._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @syscore_shutdown._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/base/syscore.c", i32 15, i32 8}
!45 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @syscore_ops_lock, !44, !"syscore_ops_lock", i1 false, i1 false}
!47 = !{ptr @syscore_ops_list, !48, !"syscore_ops_list", i1 false, i1 false}
!48 = !{!"../drivers/base/syscore.c", i32 14, i32 8}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../include/trace/events/power.h", i32 226, i32 1}
!51 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!52 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!53 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!56 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!57 = !{!"sp"}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{i64 867505}
!68 = !{!"branch_weights", i32 2000, i32 1}
!69 = !{i64 2148283908, i64 2148283913, i64 2148283926, i64 2148283970, i64 2148284004, i64 2148284025}
!70 = !{i64 2155789891}
!71 = !{i64 2155790118}
!72 = !{i64 2149377850}
!73 = !{i64 2149378886}
!74 = !{i8 0, i8 2}
