; ModuleID = '/llk/IR_all_yes/drivers/soc/qcom/rpmh.c_pt.bc'
source_filename = "../drivers/soc/qcom/rpmh.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+rpmh_write_async\22, \22a\22\09"
module asm "\09.weak\09__crc_rpmh_write_async\09\09\09\09"
module asm "\09.long\09__crc_rpmh_write_async\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpmh_write_async:\09\09\09\09\09"
module asm "\09.asciz \09\22rpmh_write_async\22\09\09\09\09\09"
module asm "__kstrtabns_rpmh_write_async:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rpmh_write\22, \22a\22\09"
module asm "\09.weak\09__crc_rpmh_write\09\09\09\09"
module asm "\09.long\09__crc_rpmh_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpmh_write:\09\09\09\09\09"
module asm "\09.asciz \09\22rpmh_write\22\09\09\09\09\09"
module asm "__kstrtabns_rpmh_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rpmh_write_batch\22, \22a\22\09"
module asm "\09.weak\09__crc_rpmh_write_batch\09\09\09\09"
module asm "\09.long\09__crc_rpmh_write_batch\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpmh_write_batch:\09\09\09\09\09"
module asm "\09.asciz \09\22rpmh_write_batch\22\09\09\09\09\09"
module asm "__kstrtabns_rpmh_write_batch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rpmh_invalidate\22, \22a\22\09"
module asm "\09.weak\09__crc_rpmh_invalidate\09\09\09\09"
module asm "\09.long\09__crc_rpmh_invalidate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpmh_invalidate:\09\09\09\09\09"
module asm "\09.asciz \09\22rpmh_invalidate\22\09\09\09\09\09"
module asm "__kstrtabns_rpmh_invalidate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rpmh_request = type { %struct.tcs_request, [16 x %struct.tcs_cmd], ptr, ptr, i32, i8 }
%struct.tcs_request = type { i32, i32, i32, ptr }
%struct.tcs_cmd = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
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
%struct.rsc_drv = type { ptr, ptr, i32, i32, %struct.notifier_block, %struct.atomic_t, [4 x %struct.tcs_group], [1 x i32], %struct.spinlock, %struct.wait_queue_head, %struct.rpmh_ctrlr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.tcs_group = type { ptr, i32, i32, i32, i32, i32, [3 x ptr], [2 x i32] }
%struct.rpmh_ctrlr = type { %struct.list_head, %struct.spinlock, i8, %struct.list_head }
%struct.cache_req = type { i32, i32, i32, %struct.list_head }
%struct.batch_cache_req = type { %struct.list_head, i32, [0 x %struct.rpmh_request] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@rpmh_tx_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 90, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"RPMH TX fail in msg addr=%#x, err=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rpmh_tx_done\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/soc/qcom/rpmh.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rpmh_tx_done._entry_ptr = internal global ptr @rpmh_tx_done._entry, section ".printk_index", align 4
@__kstrtab_rpmh_write_async = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpmh_write_async = external dso_local constant [0 x i8], align 1
@__ksymtab_rpmh_write_async = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpmh_write_async to i32), ptr @__kstrtab_rpmh_write_async, ptr @__kstrtabns_rpmh_write_async }, section "___ksymtab+rpmh_write_async", align 4
@__kstrtab_rpmh_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpmh_write = external dso_local constant [0 x i8], align 1
@__ksymtab_rpmh_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpmh_write to i32), ptr @__kstrtab_rpmh_write, ptr @__kstrtabns_rpmh_write }, section "___ksymtab+rpmh_write", align 4
@rpmh_write_batch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 379, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013Error(%d) sending RPMH message addr=%#x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rpmh_write_batch\00", [47 x i8] zeroinitializer }, align 32
@rpmh_write_batch._entry_ptr = internal global ptr @rpmh_write_batch._entry, section ".printk_index", align 4
@__kstrtab_rpmh_write_batch = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpmh_write_batch = external dso_local constant [0 x i8], align 1
@__ksymtab_rpmh_write_batch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpmh_write_batch to i32), ptr @__kstrtab_rpmh_write_batch, ptr @__kstrtabns_rpmh_write_batch }, section "___ksymtab+rpmh_write_batch", align 4
@rpmh_flush.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@rpmh_flush.__UNIQUE_ID_ddebug195 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qcom_rpmh\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rpmh_flush\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Skipping flush, TCS has latest data.\0A\00", [58 x i8] zeroinitializer }, align 32
@rpmh_flush.__UNIQUE_ID_ddebug196 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.2, ptr @.str.10, i8 0, i8 116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: skipping RPMH req: a:%#x s:%#x w:%#x\00", [55 x i8] zeroinitializer }, align 32
@__kstrtab_rpmh_invalidate = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpmh_invalidate = external dso_local constant [0 x i8], align 1
@__ksymtab_rpmh_invalidate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpmh_invalidate to i32), ptr @__kstrtab_rpmh_invalidate, ptr @__kstrtabns_rpmh_invalidate }, section "___ksymtab+rpmh_invalidate", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 89, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 378, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 452, i32 3 }
@___asan_gen_.49 = private constant [27 x i8] c"../drivers/soc/qcom/rpmh.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 466, i32 4 }
@___asan_gen_.51 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 87, i32 2 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__ksymtab_rpmh_invalidate, ptr @__ksymtab_rpmh_write, ptr @__ksymtab_rpmh_write_async, ptr @__ksymtab_rpmh_write_batch, ptr @rpmh_tx_done._entry, ptr @rpmh_tx_done._entry_ptr, ptr @rpmh_write_batch._entry, ptr @rpmh_write_batch._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @init_completion.__key, ptr @.str.11], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmh_tx_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmh_write_batch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rpmh_tx_done(ptr noundef %msg, i32 noundef %r) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %completion = getelementptr inbounds %struct.rpmh_request, ptr %msg, i32 0, i32 2
  %0 = ptrtoint ptr %completion to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %completion, align 4
  %needs_free = getelementptr inbounds %struct.rpmh_request, ptr %msg, i32 0, i32 5
  %2 = ptrtoint ptr %needs_free to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %needs_free, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %err = getelementptr inbounds %struct.rpmh_request, ptr %msg, i32 0, i32 4
  %4 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %r, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r)
  %tobool1.not = icmp eq i32 %r, 0
  br i1 %tobool1.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.rpmh_request, ptr %msg, i32 0, i32 3
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %cmds = getelementptr inbounds %struct.tcs_request, ptr %msg, i32 0, i32 3
  %7 = ptrtoint ptr %cmds to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cmds, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str, i32 noundef %10, i32 noundef %r) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %if.end.exit_crit_edge, label %if.end5

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @complete(ptr noundef nonnull %1) #7
  br label %exit

exit:                                             ; preds = %if.end5, %if.end.exit_crit_edge
  br i1 %tobool.not, label %exit.if.end8_crit_edge, label %if.then7

exit.if.end8_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then7:                                         ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef %msg) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %exit.if.end8_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rpmh_write_async(ptr nocapture noundef readonly %dev, i32 noundef %state, ptr noundef readonly %cmd, i32 noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 224) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %needs_free = getelementptr inbounds %struct.rpmh_request, ptr %call7.i.i, i32 0, i32 5
  %1 = ptrtoint ptr %needs_free to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %needs_free, align 4
  %tobool.not.i = icmp eq ptr %cmd, null
  %2 = add i32 %n, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %2)
  %3 = icmp ult i32 %2, -16
  %4 = or i1 %tobool.not.i, %3
  br i1 %4, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %cmd3.i = getelementptr inbounds %struct.rpmh_request, ptr %call7.i.i, i32 0, i32 1
  %mul.i = mul nuw nsw i32 %n, 12
  %5 = call ptr @memcpy(ptr %cmd3.i, ptr %cmd, i32 %mul.i)
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %state, ptr %call7.i.i, align 8
  %cmds.i = getelementptr inbounds %struct.tcs_request, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %cmds.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %cmd3.i, ptr %cmds.i, align 4
  %num_cmds.i = getelementptr inbounds %struct.tcs_request, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %num_cmds.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %n, ptr %num_cmds.i, align 8
  %call5 = tail call fastcc i32 @__rpmh_write(ptr noundef %dev, i32 noundef %state, ptr noundef nonnull %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then3 ], [ %call5, %if.end4 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__rpmh_write(ptr nocapture noundef readonly %dev, i32 noundef %state, ptr noundef %rpm_msg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %client.i = getelementptr inbounds %struct.rsc_drv, ptr %3, i32 0, i32 10
  %num_cmds = getelementptr inbounds %struct.tcs_request, ptr %rpm_msg, i32 0, i32 2
  %4 = ptrtoint ptr %num_cmds to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_cmds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp68.not = icmp eq i32 %5, 0
  br i1 %cmp68.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %cmds = getelementptr inbounds %struct.tcs_request, ptr %rpm_msg, i32 0, i32 3
  %cache_lock.i = getelementptr inbounds %struct.rsc_drv, ptr %3, i32 0, i32 10, i32 1
  %prev.i.i = getelementptr inbounds %struct.rsc_drv, ptr %3, i32 0, i32 10, i32 0, i32 1
  %dirty.i = getelementptr inbounds %struct.rsc_drv, ptr %3, i32 0, i32 10, i32 2
  br label %for.body

for.cond:                                         ; preds = %cache_rpm_request.exit
  %inc = add nuw i32 %i.069, 1
  %6 = ptrtoint ptr %num_cmds to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_cmds, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.069 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %8 = ptrtoint ptr %cmds to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cmds, align 4
  %arrayidx = getelementptr %struct.tcs_cmd, ptr %9, i32 %i.069
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cache_lock.i) #7
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.body
  %.pn.in.i.i = phi ptr [ %client.i, %for.body ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %12 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %client.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.if.end.i_crit_edge, label %for.body.i.i

for.cond.i.i.if.end.i_crit_edge:                  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %p.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -12
  %13 = ptrtoint ptr %p.0.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %p.0.i.i, align 4
  %cmp3.i.i = icmp eq i32 %14, %11
  br i1 %cmp3.i.i, label %__find_req.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

__find_req.exit.i:                                ; preds = %for.body.i.i
  %p.0.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -12
  %tobool.not.i = icmp eq ptr %p.0.i.i.le, null
  br i1 %tobool.not.i, label %__find_req.exit.i.if.end.i_crit_edge, label %__find_req.exit.i.existing.i_crit_edge

__find_req.exit.i.existing.i_crit_edge:           ; preds = %__find_req.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %existing.i

__find_req.exit.i.if.end.i_crit_edge:             ; preds = %__find_req.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i:                                         ; preds = %__find_req.exit.i.if.end.i_crit_edge, %for.cond.i.i.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 2848, i32 noundef 20) #11
  %tobool7.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool7.not.i, label %cache_rpm_request.exit.thread, label %if.end10.i

cache_rpm_request.exit.thread:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cache_lock.i, i32 noundef %call2.i) #7
  br label %if.then

if.end10.i:                                       ; preds = %if.end.i
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %18 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %call7.i.i.i, align 8
  %wake_val.i = getelementptr inbounds %struct.cache_req, ptr %call7.i.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %wake_val.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %wake_val.i, align 8
  %sleep_val.i = getelementptr inbounds %struct.cache_req, ptr %call7.i.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %sleep_val.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %sleep_val.i, align 4
  %list.i = getelementptr inbounds %struct.cache_req, ptr %call7.i.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %22, ptr noundef %client.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end10.i.existing.i_crit_edge

if.end10.i.existing.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %existing.i

if.end.i.i.i:                                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %list.i, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %client.i, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.cache_req, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i.i, align 8
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %list.i, ptr %22, align 4
  br label %existing.i

existing.i:                                       ; preds = %if.end.i.i.i, %if.end10.i.existing.i_crit_edge, %__find_req.exit.i.existing.i_crit_edge
  %req.0.i = phi ptr [ %p.0.i.i.le, %__find_req.exit.i.existing.i_crit_edge ], [ %call7.i.i.i, %if.end10.i.existing.i_crit_edge ], [ %call7.i.i.i, %if.end.i.i.i ]
  %sleep_val13.i = getelementptr inbounds %struct.cache_req, ptr %req.0.i, i32 0, i32 1
  %27 = ptrtoint ptr %sleep_val13.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sleep_val13.i, align 4
  %wake_val14.i = getelementptr inbounds %struct.cache_req, ptr %req.0.i, i32 0, i32 2
  %29 = ptrtoint ptr %wake_val14.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %wake_val14.i, align 4
  %31 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values)
  switch i32 %state, label %existing.i.lor.lhs.false.i_crit_edge [
    i32 2, label %existing.i.sw.epilog.i.thread_crit_edge
    i32 1, label %existing.i.sw.epilog.i.thread_crit_edge92
    i32 0, label %sw.epilog.i
  ]

existing.i.sw.epilog.i.thread_crit_edge92:        ; preds = %existing.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.thread

existing.i.sw.epilog.i.thread_crit_edge:          ; preds = %existing.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.thread

existing.i.lor.lhs.false.i_crit_edge:             ; preds = %existing.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i

sw.epilog.i.thread:                               ; preds = %existing.i.sw.epilog.i.thread_crit_edge, %existing.i.sw.epilog.i.thread_crit_edge92
  %data.i = getelementptr %struct.tcs_cmd, ptr %9, i32 %i.069, i32 1
  %32 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data.i, align 4
  %34 = ptrtoint ptr %wake_val14.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %wake_val14.i, align 4
  br label %lor.lhs.false.i

sw.epilog.i:                                      ; preds = %existing.i
  %data17.i = getelementptr %struct.tcs_cmd, ptr %9, i32 %i.069, i32 1
  %35 = ptrtoint ptr %data17.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %data17.i, align 4
  %37 = ptrtoint ptr %sleep_val13.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %sleep_val13.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %28)
  %cmp20.not.i = icmp eq i32 %36, %28
  br i1 %cmp20.not.i, label %sw.epilog.i.lor.lhs.false.i_crit_edge, label %sw.epilog.i.land.lhs.true.i_crit_edge

sw.epilog.i.land.lhs.true.i_crit_edge:            ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

sw.epilog.i.lor.lhs.false.i_crit_edge:            ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %sw.epilog.i.lor.lhs.false.i_crit_edge, %sw.epilog.i.thread, %existing.i.lor.lhs.false.i_crit_edge
  %38 = ptrtoint ptr %wake_val14.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %wake_val14.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %30)
  %cmp23.not.i = icmp eq i32 %39, %30
  br i1 %cmp23.not.i, label %lor.lhs.false.i.cache_rpm_request.exit_crit_edge, label %lor.lhs.false.i.land.lhs.true.i_crit_edge

lor.lhs.false.i.land.lhs.true.i_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

lor.lhs.false.i.cache_rpm_request.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cache_rpm_request.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i.land.lhs.true.i_crit_edge, %sw.epilog.i.land.lhs.true.i_crit_edge
  %40 = phi i32 [ %28, %lor.lhs.false.i.land.lhs.true.i_crit_edge ], [ %36, %sw.epilog.i.land.lhs.true.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %cmp26.not.i = icmp eq i32 %40, -1
  br i1 %cmp26.not.i, label %land.lhs.true.i.cache_rpm_request.exit_crit_edge, label %land.rhs.i

land.lhs.true.i.cache_rpm_request.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cache_rpm_request.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %wake_val14.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %wake_val14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %cmp29.i = icmp ne i32 %42, -1
  %phi.cast.i = zext i1 %cmp29.i to i8
  br label %cache_rpm_request.exit

cache_rpm_request.exit:                           ; preds = %land.rhs.i, %land.lhs.true.i.cache_rpm_request.exit_crit_edge, %lor.lhs.false.i.cache_rpm_request.exit_crit_edge
  %43 = phi i8 [ 0, %land.lhs.true.i.cache_rpm_request.exit_crit_edge ], [ 0, %lor.lhs.false.i.cache_rpm_request.exit_crit_edge ], [ %phi.cast.i, %land.rhs.i ]
  %44 = ptrtoint ptr %dirty.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %dirty.i, align 4, !range !44
  %or.i = or i8 %45, %43
  store i8 %or.i, ptr %dirty.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cache_lock.i, i32 noundef %call2.i) #7
  %cmp.i = icmp ugt ptr %req.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cache_rpm_request.exit.if.then_crit_edge, label %for.cond

cache_rpm_request.exit.if.then_crit_edge:         ; preds = %cache_rpm_request.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %cache_rpm_request.exit.if.then_crit_edge, %cache_rpm_request.exit.thread
  %req.1.i65 = phi ptr [ inttoptr (i32 -12 to ptr), %cache_rpm_request.exit.thread ], [ %req.0.i, %cache_rpm_request.exit.if.then_crit_edge ]
  %46 = ptrtoint ptr %req.1.i65 to i32
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %state)
  %cmp5 = icmp eq i32 %state, 2
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %for.end
  %47 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !45
  %and.i = and i32 %47, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then6.if.end34_crit_edge, label %do.end28, !prof !46

if.then6.if.end34_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

do.end28:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 192, i32 noundef 9, ptr noundef null) #7
  br label %if.end34

if.end34:                                         ; preds = %do.end28, %if.then6.if.end34_crit_edge
  %call44 = tail call i32 @rpmh_rsc_send_data(ptr noundef %3, ptr noundef %rpm_msg) #7
  br label %cleanup

if.else:                                          ; preds = %for.end
  %completion.i = getelementptr inbounds %struct.rpmh_request, ptr %rpm_msg, i32 0, i32 2
  %48 = ptrtoint ptr %completion.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %completion.i, align 4
  %needs_free.i = getelementptr inbounds %struct.rpmh_request, ptr %rpm_msg, i32 0, i32 5
  %50 = ptrtoint ptr %needs_free.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %needs_free.i, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i60 = icmp eq i8 %51, 0
  %err.i = getelementptr inbounds %struct.rpmh_request, ptr %rpm_msg, i32 0, i32 4
  %52 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %err.i, align 4
  %tobool3.not.i = icmp eq ptr %49, null
  br i1 %tobool3.not.i, label %if.else.exit.i_crit_edge, label %if.end5.i

if.else.exit.i_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.i

if.end5.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @complete(ptr noundef nonnull %49) #7
  br label %exit.i

exit.i:                                           ; preds = %if.end5.i, %if.else.exit.i_crit_edge
  br i1 %tobool.not.i60, label %exit.i.cleanup_crit_edge, label %if.then7.i

exit.i.cleanup_crit_edge:                         ; preds = %exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7.i:                                       ; preds = %exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef %rpm_msg) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then7.i, %exit.i.cleanup_crit_edge, %if.end34, %if.then
  %retval.0 = phi i32 [ %46, %if.then ], [ %call44, %if.end34 ], [ 0, %exit.i.cleanup_crit_edge ], [ 0, %if.then7.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rpmh_write(ptr noundef %dev, i32 noundef %state, ptr noundef readonly %cmd, i32 noundef %n) #0 align 64 {
entry:
  %compl = alloca %struct.completion, align 4
  %rpm_msg = alloca %struct.rpmh_request, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %compl) #7
  %0 = getelementptr inbounds i8, ptr %compl, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 52)
  %2 = ptrtoint ptr %compl to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %compl, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %compl, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @init_completion.__key) #7
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %rpm_msg) #7
  %3 = getelementptr inbounds i8, ptr %rpm_msg, i32 16
  %4 = call ptr @memset(ptr %3, i32 0, i32 208)
  %wait_for_compl = getelementptr inbounds %struct.tcs_request, ptr %rpm_msg, i32 0, i32 1
  %5 = ptrtoint ptr %wait_for_compl to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %wait_for_compl, align 4
  %completion = getelementptr inbounds %struct.rpmh_request, ptr %rpm_msg, i32 0, i32 2
  %6 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %compl, ptr %completion, align 4
  %dev4 = getelementptr inbounds %struct.rpmh_request, ptr %rpm_msg, i32 0, i32 3
  %7 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %dev4, align 4
  %tobool.not.i = icmp eq ptr %cmd, null
  %8 = add i32 %n, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %8)
  %9 = icmp ult i32 %8, -16
  %10 = or i1 %tobool.not.i, %9
  br i1 %10, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmd2 = getelementptr inbounds %struct.rpmh_request, ptr %rpm_msg, i32 0, i32 1
  %cmds = getelementptr inbounds %struct.tcs_request, ptr %rpm_msg, i32 0, i32 3
  %mul.i = mul nuw nsw i32 %n, 12
  %11 = call ptr @memcpy(ptr %cmd2, ptr %cmd, i32 %mul.i)
  %12 = ptrtoint ptr %rpm_msg to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %state, ptr %rpm_msg, align 4
  %13 = ptrtoint ptr %cmds to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cmd2, ptr %cmds, align 4
  %num_cmds.i = getelementptr inbounds %struct.tcs_request, ptr %rpm_msg, i32 0, i32 2
  %14 = ptrtoint ptr %num_cmds.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %n, ptr %num_cmds.i, align 4
  %call5 = call fastcc i32 @__rpmh_write(ptr noundef %dev, i32 noundef %state, ptr noundef nonnull %rpm_msg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call10 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %compl, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.end, label %if.end8.if.end27_crit_edge, !prof !47

if.end8.if.end27_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 276, i32 noundef 9, ptr noundef null) #7
  br label %if.end27

if.end27:                                         ; preds = %do.end, %if.end8.if.end27_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp sgt i32 %call10, 0
  %cond = select i1 %cmp, i32 0, i32 -110
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end27 ], [ %call5, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %rpm_msg) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %compl) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rpmh_write_batch(ptr nocapture noundef readonly %dev, i32 noundef %state, ptr noundef readonly %cmd, ptr noundef readonly %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %cmd, null
  %tobool1.not = icmp eq ptr %n, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup73_crit_edge, label %entry.while.cond_crit_edge

entry.while.cond_crit_edge:                       ; preds = %entry
  br label %while.cond

entry.cleanup73_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup73

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry.while.cond_crit_edge
  %count.0 = phi i32 [ %inc, %while.cond.while.cond_crit_edge ], [ 0, %entry.while.cond_crit_edge ]
  %arrayidx = getelementptr i32, ptr %n, i32 %count.0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %cmp.not = icmp eq i32 %5, 0
  %inc = add i32 %count.0, 1
  br i1 %cmp.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0)
  %tobool2.not = icmp eq i32 %count.0, 0
  br i1 %tobool2.not, label %while.end.cleanup73_crit_edge, label %if.end8.i.i

while.end.cleanup73_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup73

if.end8.i.i:                                      ; preds = %while.end
  %mul = mul i32 %count.0, 280
  %add = add i32 %mul, 12
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 2848) #12
  %tobool6.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool6.not, label %if.end8.i.i.cleanup73_crit_edge, label %if.end8

if.end8.i.i.cleanup73_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup73

if.end8:                                          ; preds = %if.end8.i.i
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 12
  %mul9 = mul i32 %count.0, 224
  %add.ptr10 = getelementptr i8, ptr %add.ptr, i32 %mul9
  %count11 = getelementptr inbounds %struct.batch_cache_req, ptr %call9.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %count11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %count.0, ptr %count11, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0)
  %cmp13127 = icmp sgt i32 %count.0, 0
  br i1 %cmp13127, label %if.end8.for.body_crit_edge, label %for.end.thread

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  br label %for.body

for.body:                                         ; preds = %__fill_rpmh_msg.exit.for.body_crit_edge, %if.end8.for.body_crit_edge
  %cmd.addr.0130 = phi ptr [ %add.ptr18, %__fill_rpmh_msg.exit.for.body_crit_edge ], [ %cmd, %if.end8.for.body_crit_edge ]
  %i.0128 = phi i32 [ %inc19, %__fill_rpmh_msg.exit.for.body_crit_edge ], [ 0, %if.end8.for.body_crit_edge ]
  %arrayidx15 = getelementptr i32, ptr %n, i32 %i.0128
  %7 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx15, align 4
  %tobool.not.i = icmp eq ptr %cmd.addr.0130, null
  %9 = add i32 %8, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %9)
  %10 = icmp ult i32 %9, -16
  %11 = or i1 %tobool.not.i, %10
  br i1 %11, label %for.body.__fill_rpmh_msg.exit_crit_edge, label %if.end.i

for.body.__fill_rpmh_msg.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %__fill_rpmh_msg.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr14 = getelementptr %struct.rpmh_request, ptr %add.ptr, i32 %i.0128
  %cmd3.i = getelementptr %struct.rpmh_request, ptr %add.ptr, i32 %i.0128, i32 1
  %mul.i = mul nuw nsw i32 %8, 12
  %12 = call ptr @memcpy(ptr %cmd3.i, ptr %cmd.addr.0130, i32 %mul.i)
  %13 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %state, ptr %add.ptr14, align 4
  %cmds.i = getelementptr inbounds %struct.tcs_request, ptr %add.ptr14, i32 0, i32 3
  %14 = ptrtoint ptr %cmds.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %cmd3.i, ptr %cmds.i, align 8
  %num_cmds.i = getelementptr inbounds %struct.tcs_request, ptr %add.ptr14, i32 0, i32 2
  %15 = ptrtoint ptr %num_cmds.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %8, ptr %num_cmds.i, align 4
  br label %__fill_rpmh_msg.exit

__fill_rpmh_msg.exit:                             ; preds = %if.end.i, %for.body.__fill_rpmh_msg.exit_crit_edge
  %add.ptr18 = getelementptr %struct.tcs_cmd, ptr %cmd.addr.0130, i32 %8
  %inc19 = add nuw nsw i32 %i.0128, 1
  %exitcond.not = icmp eq i32 %inc19, %count.0
  br i1 %exitcond.not, label %for.end, label %__fill_rpmh_msg.exit.for.body_crit_edge

__fill_rpmh_msg.exit.for.body_crit_edge:          ; preds = %__fill_rpmh_msg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %__fill_rpmh_msg.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %state)
  %cmp20.not = icmp eq i32 %state, 2
  br i1 %cmp20.not, label %for.cond23.preheader, label %for.end.if.then21_crit_edge

for.end.if.then21_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21

for.end.thread:                                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %state)
  %cmp20.not139 = icmp eq i32 %state, 2
  br i1 %cmp20.not139, label %for.end.thread.for.end41_crit_edge, label %for.end.thread.if.then21_crit_edge

for.end.thread.if.then21_crit_edge:               ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21

for.end.thread.for.end41_crit_edge:               ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end41

for.cond23.preheader:                             ; preds = %for.end
  br i1 %cmp13127, label %for.cond23.preheader.for.body25_crit_edge, label %for.cond23.preheader.for.end41_crit_edge

for.cond23.preheader.for.end41_crit_edge:         ; preds = %for.cond23.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end41

for.cond23.preheader.for.body25_crit_edge:        ; preds = %for.cond23.preheader
  br label %for.body25

if.then21:                                        ; preds = %for.end.thread.if.then21_crit_edge, %for.end.if.then21_crit_edge
  %cache_lock.i = getelementptr inbounds %struct.rsc_drv, ptr %3, i32 0, i32 10, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cache_lock.i) #7
  %batch_cache.i = getelementptr inbounds %struct.rsc_drv, ptr %3, i32 0, i32 10, i32 3
  %prev.i.i = getelementptr inbounds %struct.rsc_drv, ptr %3, i32 0, i32 10, i32 3, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i, ptr noundef %17, ptr noundef %batch_cache.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then21.cache_batch.exit_crit_edge

if.then21.cache_batch.exit_crit_edge:             ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cache_batch.exit

if.end.i.i.i:                                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call9.i.i, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %batch_cache.i, ptr %call9.i.i, align 128
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev3.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %call9.i.i, ptr %17, align 4
  br label %cache_batch.exit

cache_batch.exit:                                 ; preds = %if.end.i.i.i, %if.then21.cache_batch.exit_crit_edge
  %dirty.i = getelementptr inbounds %struct.rsc_drv, ptr %3, i32 0, i32 10, i32 2
  %22 = ptrtoint ptr %dirty.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %dirty.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cache_lock.i, i32 noundef %call2.i) #7
  br label %cleanup73

for.body25:                                       ; preds = %for.inc39.for.body25_crit_edge, %for.cond23.preheader.for.body25_crit_edge
  %i.1133 = phi i32 [ %inc40, %for.inc39.for.body25_crit_edge ], [ 0, %for.cond23.preheader.for.body25_crit_edge ]
  %arrayidx26 = getelementptr %struct.completion, ptr %add.ptr10, i32 %i.1133
  %23 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %arrayidx26, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %arrayidx26, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @init_completion.__key) #7
  %arrayidx27 = getelementptr %struct.rpmh_request, ptr %add.ptr, i32 %i.1133
  %completion = getelementptr %struct.rpmh_request, ptr %add.ptr, i32 %i.1133, i32 2
  %24 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %arrayidx26, ptr %completion, align 4
  %call30 = tail call i32 @rpmh_rsc_send_data(ptr noundef %3, ptr noundef %arrayidx27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %for.inc39, label %cleanup

cleanup:                                          ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #9
  %cmds = getelementptr inbounds %struct.tcs_request, ptr %arrayidx27, i32 0, i32 3
  %25 = ptrtoint ptr %cmds to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cmds, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call30, i32 noundef %28) #10
  br label %for.end41

for.inc39:                                        ; preds = %for.body25
  %inc40 = add nuw nsw i32 %i.1133, 1
  %exitcond138.not = icmp eq i32 %inc40, %count.0
  br i1 %exitcond138.not, label %for.inc39.for.end41_crit_edge, label %for.inc39.for.body25_crit_edge

for.inc39.for.body25_crit_edge:                   ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body25

for.inc39.for.end41_crit_edge:                    ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end41

for.end41:                                        ; preds = %for.inc39.for.end41_crit_edge, %cleanup, %for.cond23.preheader.for.end41_crit_edge, %for.end.thread.for.end41_crit_edge
  %i.1125 = phi i32 [ %i.1133, %cleanup ], [ 0, %for.cond23.preheader.for.end41_crit_edge ], [ 0, %for.end.thread.for.end41_crit_edge ], [ %count.0, %for.inc39.for.end41_crit_edge ]
  %ret.1 = phi i32 [ %call30, %cleanup ], [ -1, %for.cond23.preheader.for.end41_crit_edge ], [ -1, %for.end.thread.for.end41_crit_edge ], [ 0, %for.inc39.for.end41_crit_edge ]
  br label %while.cond43

while.cond43:                                     ; preds = %while.body45.while.cond43_crit_edge, %for.end41
  %time_left.0 = phi i32 [ 1000, %for.end41 ], [ %call47, %while.body45.while.cond43_crit_edge ]
  %i.2 = phi i32 [ %i.1125, %for.end41 ], [ %dec, %while.body45.while.cond43_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.2)
  %tobool44.not = icmp eq i32 %i.2, 0
  br i1 %tobool44.not, label %while.cond43.exit_crit_edge, label %while.body45

while.cond43.exit_crit_edge:                      ; preds = %while.cond43
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

while.body45:                                     ; preds = %while.cond43
  %dec = add i32 %i.2, -1
  %arrayidx46 = getelementptr %struct.completion, ptr %add.ptr10, i32 %dec
  %call47 = tail call i32 @wait_for_completion_timeout(ptr noundef %arrayidx46, i32 noundef %time_left.0) #7
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %do.end57, label %while.body45.while.cond43_crit_edge

while.body45.while.cond43_crit_edge:              ; preds = %while.body45
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond43

do.end57:                                         ; preds = %while.body45
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 393, i32 noundef 9, ptr noundef null) #7
  br label %exit

exit:                                             ; preds = %do.end57, %while.cond43.exit_crit_edge
  %ret.2 = phi i32 [ -110, %do.end57 ], [ %ret.1, %while.cond43.exit_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #7
  br label %cleanup73

cleanup73:                                        ; preds = %exit, %cache_batch.exit, %if.end8.i.i.cleanup73_crit_edge, %while.end.cleanup73_crit_edge, %entry.cleanup73_crit_edge
  %retval.0 = phi i32 [ 0, %cache_batch.exit ], [ %ret.2, %exit ], [ -22, %entry.cleanup73_crit_edge ], [ -22, %while.end.cleanup73_crit_edge ], [ -12, %if.end8.i.i.cleanup73_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpmh_rsc_send_data(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rpmh_flush(ptr noundef %ctrlr) local_unnamed_addr #0 align 64 {
entry:
  %rpm_msg.i210 = alloca %struct.rpmh_request, align 4
  %rpm_msg.i = alloca %struct.rpmh_request, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end86_crit_edge, label %land.lhs.true

entry.if.end86_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86

land.lhs.true:                                    ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !34) #7
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %4, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !48
  %5 = tail call i32 @llvm.read_register.i32(metadata !34) #7
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, ptrtoint (ptr @lockdep_recursion to i32)
  %11 = inttoptr i32 %add to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !49
  %14 = tail call i32 @llvm.read_register.i32(metadata !34) #7
  %and.i.i.i196 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i196 to ptr
  %preempt_count.i.i197 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i197 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i197, align 4
  %sub.i = add i32 %17, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i197, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not = icmp eq i32 %13, 0
  br i1 %tobool20.not, label %land.rhs, label %land.lhs.true.if.end86_crit_edge

land.lhs.true.if.end86_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86

land.rhs:                                         ; preds = %land.lhs.true
  %18 = tail call i32 @llvm.read_register.i32(metadata !34) #7
  %and.i.i.i198 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i198 to ptr
  %preempt_count.i.i199 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i199 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i199, align 4
  %add.i200 = add i32 %21, 1
  store volatile i32 %add.i200, ptr %preempt_count.i.i199, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !50
  %22 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu, align 4
  %arrayidx44 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx44, align 4
  %add45 = add i32 %25, ptrtoint (ptr @hardirqs_enabled to i32)
  %26 = inttoptr i32 %add45 to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !51
  %29 = tail call i32 @llvm.read_register.i32(metadata !34) #7
  %and.i.i.i201 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i201 to ptr
  %preempt_count.i.i202 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i202 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i202, align 4
  %sub.i203 = add i32 %32, -1
  store volatile i32 %sub.i203, ptr %preempt_count.i.i202, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool52.not = icmp eq i32 %28, 0
  br i1 %tobool52.not, label %land.rhs.if.end86_crit_edge, label %land.rhs55

land.rhs.if.end86_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86

land.rhs55:                                       ; preds = %land.rhs
  %.b192 = load i1, ptr @rpmh_flush.__already_done, align 1
  br i1 %.b192, label %land.rhs55.if.end86_crit_edge, label %if.then, !prof !46

land.rhs55.if.end86_crit_edge:                    ; preds = %land.rhs55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86

if.then:                                          ; preds = %land.rhs55
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rpmh_flush.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 441, i32 noundef 9, ptr noundef null) #7
  br label %if.end86

if.end86:                                         ; preds = %if.then, %land.rhs55.if.end86_crit_edge, %land.rhs.if.end86_crit_edge, %land.lhs.true.if.end86_crit_edge, %entry.if.end86_crit_edge
  %cache_lock = getelementptr inbounds %struct.rpmh_ctrlr, ptr %ctrlr, i32 0, i32 1
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef %cache_lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool97.not = icmp eq i32 %call.i, 0
  br i1 %tobool97.not, label %if.end86.cleanup_crit_edge, label %if.end99

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end99:                                         ; preds = %if.end86
  %dirty = getelementptr inbounds %struct.rpmh_ctrlr, ptr %ctrlr, i32 0, i32 2
  %33 = ptrtoint ptr %dirty to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %dirty, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool100.not = icmp eq i8 %34, 0
  br i1 %tobool100.not, label %do.body102, label %if.end117

do.body102:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rpmh_flush.__UNIQUE_ID_ddebug195, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rpmh_flush, %if.then113)) #7
          to label %exit [label %if.then113], !srcloc !52

if.then113:                                       ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rpmh_flush.__UNIQUE_ID_ddebug195, ptr noundef nonnull @.str.9) #7
  br label %exit

if.end117:                                        ; preds = %if.end99
  %add.ptr = getelementptr i8, ptr %ctrlr, i32 -308
  tail call void @rpmh_rsc_invalidate(ptr noundef %add.ptr) #7
  %batch_cache.i = getelementptr inbounds %struct.rpmh_ctrlr, ptr %ctrlr, i32 0, i32 3
  %35 = ptrtoint ptr %batch_cache.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %req.027.i = load ptr, ptr %batch_cache.i, align 4
  %cmp.not28.i = icmp eq ptr %req.027.i, %batch_cache.i
  br i1 %cmp.not28.i, label %if.end117.for.cond.preheader_crit_edge, label %if.end117.for.cond2.preheader.i_crit_edge

if.end117.for.cond2.preheader.i_crit_edge:        ; preds = %if.end117
  br label %for.cond2.preheader.i

if.end117.for.cond.preheader_crit_edge:           ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader

for.cond2.preheader.i:                            ; preds = %for.inc9.i.for.cond2.preheader.i_crit_edge, %if.end117.for.cond2.preheader.i_crit_edge
  %req.030.i = phi ptr [ %req.0.i, %for.inc9.i.for.cond2.preheader.i_crit_edge ], [ %req.027.i, %if.end117.for.cond2.preheader.i_crit_edge ]
  %ret.029.i = phi i32 [ %ret.2.i, %for.inc9.i.for.cond2.preheader.i_crit_edge ], [ 0, %if.end117.for.cond2.preheader.i_crit_edge ]
  %rpm_msgs.i = getelementptr inbounds %struct.batch_cache_req, ptr %req.030.i, i32 0, i32 2
  %count.i = getelementptr inbounds %struct.batch_cache_req, ptr %req.030.i, i32 0, i32 1
  %36 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp324.i = icmp sgt i32 %37, 0
  br i1 %cmp324.i, label %for.cond2.preheader.i.for.body4.i_crit_edge, label %for.cond2.preheader.i.for.inc9.i_crit_edge

for.cond2.preheader.i.for.inc9.i_crit_edge:       ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc9.i

for.cond2.preheader.i.for.body4.i_crit_edge:      ; preds = %for.cond2.preheader.i
  br label %for.body4.i

for.cond2.i:                                      ; preds = %for.body4.i
  %inc.i = add nuw nsw i32 %i.025.i, 1
  %38 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %count.i, align 4
  %cmp3.i = icmp slt i32 %inc.i, %39
  br i1 %cmp3.i, label %for.cond2.i.for.body4.i_crit_edge, label %for.cond2.i.for.inc9.i_crit_edge

for.cond2.i.for.inc9.i_crit_edge:                 ; preds = %for.cond2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc9.i

for.cond2.i.for.body4.i_crit_edge:                ; preds = %for.cond2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body4.i

for.body4.i:                                      ; preds = %for.cond2.i.for.body4.i_crit_edge, %for.cond2.preheader.i.for.body4.i_crit_edge
  %i.025.i = phi i32 [ %inc.i, %for.cond2.i.for.body4.i_crit_edge ], [ 0, %for.cond2.preheader.i.for.body4.i_crit_edge ]
  %add.ptr5.i = getelementptr %struct.rpmh_request, ptr %rpm_msgs.i, i32 %i.025.i
  %call.i207 = tail call i32 @rpmh_rsc_write_ctrl_data(ptr noundef %add.ptr, ptr noundef %add.ptr5.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i207)
  %tobool.not.i = icmp eq i32 %call.i207, 0
  br i1 %tobool.not.i, label %for.cond2.i, label %for.body4.i.for.inc9.i_crit_edge

for.body4.i.for.inc9.i_crit_edge:                 ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc9.i

for.inc9.i:                                       ; preds = %for.body4.i.for.inc9.i_crit_edge, %for.cond2.i.for.inc9.i_crit_edge, %for.cond2.preheader.i.for.inc9.i_crit_edge
  %ret.2.i = phi i32 [ %ret.029.i, %for.cond2.preheader.i.for.inc9.i_crit_edge ], [ %call.i207, %for.body4.i.for.inc9.i_crit_edge ], [ 0, %for.cond2.i.for.inc9.i_crit_edge ]
  %40 = ptrtoint ptr %req.030.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %req.0.i = load ptr, ptr %req.030.i, align 4
  %cmp.not.i = icmp eq ptr %req.0.i, %batch_cache.i
  br i1 %cmp.not.i, label %flush_batch.exit, label %for.inc9.i.for.cond2.preheader.i_crit_edge

for.inc9.i.for.cond2.preheader.i_crit_edge:       ; preds = %for.inc9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond2.preheader.i

flush_batch.exit:                                 ; preds = %for.inc9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.i)
  %tobool120.not = icmp eq i32 %ret.2.i, 0
  br i1 %tobool120.not, label %flush_batch.exit.for.cond.preheader_crit_edge, label %flush_batch.exit.exit_crit_edge

flush_batch.exit.exit_crit_edge:                  ; preds = %flush_batch.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

flush_batch.exit.for.cond.preheader_crit_edge:    ; preds = %flush_batch.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %flush_batch.exit.for.cond.preheader_crit_edge, %if.end117.for.cond.preheader_crit_edge
  %41 = ptrtoint ptr %ctrlr to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pn221 = load ptr, ptr %ctrlr, align 4
  %cmp.not223 = icmp eq ptr %.pn221, %ctrlr
  br i1 %cmp.not223, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %42 = getelementptr inbounds i8, ptr %rpm_msg.i, i32 24
  %wait_for_compl.i = getelementptr inbounds %struct.tcs_request, ptr %rpm_msg.i, i32 0, i32 1
  %cmds.i = getelementptr inbounds %struct.tcs_request, ptr %rpm_msg.i, i32 0, i32 3
  %cmd.i = getelementptr inbounds %struct.rpmh_request, ptr %rpm_msg.i, i32 0, i32 1
  %data11.i = getelementptr inbounds %struct.rpmh_request, ptr %rpm_msg.i, i32 0, i32 1, i32 0, i32 1
  %num_cmds.i = getelementptr inbounds %struct.tcs_request, ptr %rpm_msg.i, i32 0, i32 2
  %43 = getelementptr inbounds i8, ptr %rpm_msg.i210, i32 24
  %wait_for_compl.i211 = getelementptr inbounds %struct.tcs_request, ptr %rpm_msg.i210, i32 0, i32 1
  %cmds.i212 = getelementptr inbounds %struct.tcs_request, ptr %rpm_msg.i210, i32 0, i32 3
  %cmd.i213 = getelementptr inbounds %struct.rpmh_request, ptr %rpm_msg.i210, i32 0, i32 1
  %data11.i214 = getelementptr inbounds %struct.rpmh_request, ptr %rpm_msg.i210, i32 0, i32 1, i32 0, i32 1
  %num_cmds.i215 = getelementptr inbounds %struct.tcs_request, ptr %rpm_msg.i210, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn224 = phi ptr [ %.pn221, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %p.0227 = getelementptr i8, ptr %.pn224, i32 -12
  %sleep_val.i = getelementptr i8, ptr %.pn224, i32 -8
  %44 = ptrtoint ptr %sleep_val.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sleep_val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %cmp.not.i208 = icmp eq i32 %45, -1
  br i1 %cmp.not.i208, label %for.body.do.body132_crit_edge, label %land.lhs.true.i

for.body.do.body132_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body132

land.lhs.true.i:                                  ; preds = %for.body
  %wake_val.i = getelementptr i8, ptr %.pn224, i32 -4
  %46 = ptrtoint ptr %wake_val.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %wake_val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %47)
  %cmp1.not.i = icmp eq i32 %47, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp4.i.not = icmp eq i32 %45, %47
  %or.cond = select i1 %cmp1.not.i, i1 true, i1 %cmp4.i.not
  br i1 %or.cond, label %land.lhs.true.i.do.body132_crit_edge, label %if.end148

land.lhs.true.i.do.body132_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body132

do.body132:                                       ; preds = %land.lhs.true.i.do.body132_crit_edge, %for.body.do.body132_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rpmh_flush.__UNIQUE_ID_ddebug196, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rpmh_flush, %if.then144)) #7
          to label %for.inc [label %if.then144], !srcloc !52

if.then144:                                       ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %p.0227 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %p.0227, align 4
  %50 = ptrtoint ptr %sleep_val.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sleep_val.i, align 4
  %wake_val = getelementptr i8, ptr %.pn224, i32 -4
  %52 = ptrtoint ptr %wake_val to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %wake_val, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rpmh_flush.__UNIQUE_ID_ddebug196, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8, i32 noundef %49, i32 noundef %51, i32 noundef %53) #7
  br label %for.inc

if.end148:                                        ; preds = %land.lhs.true.i
  %54 = ptrtoint ptr %p.0227 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %p.0227, align 4
  %56 = ptrtoint ptr %sleep_val.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sleep_val.i, align 4
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %rpm_msg.i) #7
  %58 = call ptr @memset(ptr %42, i32 0, i32 200)
  %59 = ptrtoint ptr %rpm_msg.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %rpm_msg.i, align 4
  %60 = ptrtoint ptr %cmds.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %cmd.i, ptr %cmds.i, align 4
  %61 = ptrtoint ptr %wait_for_compl.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %wait_for_compl.i, align 4
  %62 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %55, ptr %cmd.i, align 4
  %63 = ptrtoint ptr %data11.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %57, ptr %data11.i, align 4
  %64 = ptrtoint ptr %num_cmds.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %num_cmds.i, align 4
  %call.i209 = call i32 @rpmh_rsc_write_ctrl_data(ptr noundef %add.ptr, ptr noundef nonnull %rpm_msg.i) #7
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %rpm_msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i209)
  %tobool152.not = icmp eq i32 %call.i209, 0
  br i1 %tobool152.not, label %if.end154, label %if.end148.exit_crit_edge

if.end148.exit_crit_edge:                         ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end154:                                        ; preds = %if.end148
  %65 = ptrtoint ptr %p.0227 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %p.0227, align 4
  %67 = ptrtoint ptr %wake_val.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %wake_val.i, align 4
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %rpm_msg.i210) #7
  %69 = call ptr @memset(ptr %43, i32 0, i32 200)
  %70 = ptrtoint ptr %rpm_msg.i210 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %rpm_msg.i210, align 4
  %71 = ptrtoint ptr %cmds.i212 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %cmd.i213, ptr %cmds.i212, align 4
  %72 = ptrtoint ptr %wait_for_compl.i211 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 1, ptr %wait_for_compl.i211, align 4
  %73 = ptrtoint ptr %cmd.i213 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %66, ptr %cmd.i213, align 4
  %74 = ptrtoint ptr %data11.i214 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %68, ptr %data11.i214, align 4
  %75 = ptrtoint ptr %num_cmds.i215 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1, ptr %num_cmds.i215, align 4
  %call.i217 = call i32 @rpmh_rsc_write_ctrl_data(ptr noundef %add.ptr, ptr noundef nonnull %rpm_msg.i210) #7
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %rpm_msg.i210) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i217)
  %tobool158.not = icmp eq i32 %call.i217, 0
  br i1 %tobool158.not, label %if.end154.for.inc_crit_edge, label %if.end154.exit_crit_edge

if.end154.exit_crit_edge:                         ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end154.for.inc_crit_edge:                      ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %if.end154.for.inc_crit_edge, %if.then144, %do.body132
  %76 = ptrtoint ptr %.pn224 to i32
  call void @__asan_load4_noabort(i32 %76)
  %.pn = load ptr, ptr %.pn224, align 4
  %cmp.not = icmp eq ptr %.pn, %ctrlr
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %77 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %dirty, align 4
  br label %exit

exit:                                             ; preds = %for.end, %if.end154.exit_crit_edge, %if.end148.exit_crit_edge, %flush_batch.exit.exit_crit_edge, %if.then113, %do.body102
  %ret.2 = phi i32 [ %ret.2.i, %flush_batch.exit.exit_crit_edge ], [ 0, %for.end ], [ 0, %if.then113 ], [ 0, %do.body102 ], [ %call.i217, %if.end154.exit_crit_edge ], [ %call.i209, %if.end148.exit_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %cache_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.end86.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %exit ], [ -16, %if.end86.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpmh_rsc_invalidate(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rpmh_invalidate(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %cache_lock = getelementptr inbounds %struct.rsc_drv, ptr %3, i32 0, i32 10, i32 1
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cache_lock) #7
  %batch_cache = getelementptr inbounds %struct.rsc_drv, ptr %3, i32 0, i32 10, i32 3
  %4 = ptrtoint ptr %batch_cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %batch_cache, align 4
  %cmp14.not31 = icmp eq ptr %5, %batch_cache
  br i1 %cmp14.not31, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %req.032 = phi ptr [ %tmp.0, %for.body.for.body_crit_edge ], [ %5, %entry.for.body_crit_edge ]
  %6 = ptrtoint ptr %req.032 to i32
  call void @__asan_load4_noabort(i32 %6)
  %tmp.0 = load ptr, ptr %req.032, align 4
  tail call void @kfree(ptr noundef %req.032) #7
  %cmp14.not = icmp eq ptr %tmp.0, %batch_cache
  br i1 %cmp14.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %7 = ptrtoint ptr %batch_cache to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %batch_cache, ptr %batch_cache, align 4
  %prev.i = getelementptr inbounds %struct.rsc_drv, ptr %3, i32 0, i32 10, i32 3, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %batch_cache, ptr %prev.i, align 4
  %dirty = getelementptr inbounds %struct.rsc_drv, ptr %3, i32 0, i32 10, i32 2
  %9 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %dirty, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cache_lock, i32 noundef %call4) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpmh_rsc_write_ctrl_data(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !15, !16, !17, !19, !21, !23, !24, !25, !26, !28, !29, !31, !33}
!llvm.named.register.sp = !{!34}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/soc/qcom/rpmh.c", i32 89, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @rpmh_tx_done._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @rpmh_tx_done._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_rpmh_write_async, !9, !"__ksymtab_rpmh_write_async", i1 false, i1 false}
!9 = !{!"../drivers/soc/qcom/rpmh.c", i32 248, i32 1}
!10 = !{ptr @__ksymtab_rpmh_write, !11, !"__ksymtab_rpmh_write", i1 false, i1 false}
!11 = !{!"../drivers/soc/qcom/rpmh.c", i32 279, i32 1}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/soc/qcom/rpmh.c", i32 378, i32 4}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @rpmh_write_batch._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @rpmh_write_batch._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @__ksymtab_rpmh_write_batch, !18, !"__ksymtab_rpmh_write_batch", i1 false, i1 false}
!18 = !{!"../drivers/soc/qcom/rpmh.c", i32 404, i32 1}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../drivers/soc/qcom/rpmh.c", i32 441, i32 2}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/soc/qcom/rpmh.c", i32 452, i32 3}
!23 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @rpmh_flush.__UNIQUE_ID_ddebug195, !22, !"__UNIQUE_ID_ddebug195", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/soc/qcom/rpmh.c", i32 466, i32 4}
!28 = !{ptr @rpmh_flush.__UNIQUE_ID_ddebug196, !27, !"__UNIQUE_ID_ddebug196", i1 false, i1 false}
!29 = !{ptr @__ksymtab_rpmh_invalidate, !30, !"__ksymtab_rpmh_invalidate", i1 false, i1 false}
!30 = !{!"../drivers/soc/qcom/rpmh.c", i32 507, i32 1}
!31 = !{ptr @init_completion.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../include/linux/completion.h", i32 87, i32 2}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{!"sp"}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{i8 0, i8 2}
!45 = !{i64 584390}
!46 = !{!"branch_weights", i32 2000, i32 1}
!47 = !{!"branch_weights", i32 1, i32 2000}
!48 = !{i64 2153347395}
!49 = !{i64 2153352329}
!50 = !{i64 2153374011}
!51 = !{i64 2153378905}
!52 = !{i64 2148574055, i64 2148574060, i64 2148574073, i64 2148574117, i64 2148574151, i64 2148574172}
