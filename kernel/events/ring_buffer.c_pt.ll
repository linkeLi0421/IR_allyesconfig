; ModuleID = '/llk/IR_all_yes/kernel/events/ring_buffer.c_pt.bc'
source_filename = "../kernel/events/ring_buffer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+perf_aux_output_flag\22, \22a\22\09"
module asm "\09.weak\09__crc_perf_aux_output_flag\09\09\09\09"
module asm "\09.long\09__crc_perf_aux_output_flag\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_perf_aux_output_flag:\09\09\09\09\09"
module asm "\09.asciz \09\22perf_aux_output_flag\22\09\09\09\09\09"
module asm "__kstrtabns_perf_aux_output_flag:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+perf_aux_output_begin\22, \22a\22\09"
module asm "\09.weak\09__crc_perf_aux_output_begin\09\09\09\09"
module asm "\09.long\09__crc_perf_aux_output_begin\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_perf_aux_output_begin:\09\09\09\09\09"
module asm "\09.asciz \09\22perf_aux_output_begin\22\09\09\09\09\09"
module asm "__kstrtabns_perf_aux_output_begin:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+perf_aux_output_end\22, \22a\22\09"
module asm "\09.weak\09__crc_perf_aux_output_end\09\09\09\09"
module asm "\09.long\09__crc_perf_aux_output_end\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_perf_aux_output_end:\09\09\09\09\09"
module asm "\09.asciz \09\22perf_aux_output_end\22\09\09\09\09\09"
module asm "__kstrtabns_perf_aux_output_end:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+perf_aux_output_skip\22, \22a\22\09"
module asm "\09.weak\09__crc_perf_aux_output_skip\09\09\09\09"
module asm "\09.long\09__crc_perf_aux_output_skip\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_perf_aux_output_skip:\09\09\09\09\09"
module asm "\09.asciz \09\22perf_aux_output_skip\22\09\09\09\09\09"
module asm "__kstrtabns_perf_aux_output_skip:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+perf_get_aux\22, \22a\22\09"
module asm "\09.weak\09__crc_perf_get_aux\09\09\09\09"
module asm "\09.long\09__crc_perf_get_aux\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_perf_get_aux:\09\09\09\09\09"
module asm "\09.asciz \09\22perf_get_aux\22\09\09\09\09\09"
module asm "__kstrtabns_perf_get_aux:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.97 = type { %struct.perf_event_header, i64, i64 }
%struct.perf_event_header = type { i32, i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.perf_event = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.rb_node, i64, %struct.list_head, %struct.hlist_node, %struct.list_head, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.local64_t, %struct.atomic64_t, i64, i64, i64, %struct.perf_event_attr, i16, i16, i16, %struct.hw_perf_event, ptr, %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.list_head, ptr, %struct.mutex, %struct.atomic_t, ptr, %struct.list_head, i32, i32, %struct.wait_queue_head, ptr, i32, i32, i32, i32, %struct.irq_work, %struct.atomic_t, %struct.perf_addr_filters_head, ptr, i32, ptr, ptr, %struct.callback_head, ptr, i64, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, %struct.ftrace_ops, ptr, ptr, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.local64_t = type { %struct.atomic64_t }
%struct.perf_event_attr = type { i32, i32, i64, %union.anon.71, i64, i64, i64, %union.anon.72, i32, %union.anon.73, %union.anon.74, i64, i64, i32, i32, i64, i32, i16, i16, i32, i32, i64 }
%union.anon.71 = type { i64 }
%union.anon.72 = type { i32 }
%union.anon.73 = type { i64 }
%union.anon.74 = type { i64 }
%struct.hw_perf_event = type { %union.anon.75, ptr, ptr, i32, i32, %struct.local64_t, i64, %union.anon.82, i64, i64, i64, i64 }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { i64, i64, i32, i32, i32, i32, i32, i32, %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i64, i32, i32, i32 }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { i64, %struct.local64_t }
%struct.atomic64_t = type { i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.atomic_t = type { i32 }
%struct.perf_addr_filters_head = type { %struct.list_head, %struct.raw_spinlock, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.ftrace_ops = type { ptr, ptr, i32, ptr, ptr, %struct.ftrace_ops_hash, ptr, %struct.ftrace_ops_hash, i32, i32, %struct.list_head }
%struct.ftrace_ops_hash = type { ptr, ptr, %struct.mutex }
%struct.list_head = type { ptr, ptr }
%struct.perf_buffer = type { %struct.refcount_struct, %struct.callback_head, %struct.work_struct, i32, i32, i32, i32, %struct.atomic_t, %struct.local_t, i32, %struct.local_t, %struct.local_t, %struct.local_t, i32, i32, %struct.spinlock, %struct.list_head, %struct.atomic_t, i32, ptr, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, ptr, %struct.refcount_struct, i32, ptr, ptr, ptr, [0 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.local_t = type { %struct.atomic_t }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.perf_output_handle = type { ptr, ptr, i32, i32, i64, %union.anon.92, i32 }
%union.anon.92 = type { ptr }
%struct.perf_event_mmap_page = type { i32, i32, i32, i32, i64, i64, i64, %union.anon.85, i16, i16, i32, i64, i64, i32, i32, i64, i64, [928 x i8], i64, i64, i64, i64, i64, i64, i64, i64 }
%union.anon.85 = type { i64 }
%struct.pmu = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.atomic_t, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.68, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.68 = type { %struct.atomic_t }

@perf_aux_output_flag.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"kernel/events/ring_buffer.c\00", [36 x i8] zeroinitializer }, align 32
@__kstrtab_perf_aux_output_flag = external dso_local constant [0 x i8], align 1
@__kstrtabns_perf_aux_output_flag = external dso_local constant [0 x i8], align 1
@__ksymtab_perf_aux_output_flag = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @perf_aux_output_flag to i32), ptr @__kstrtab_perf_aux_output_flag, ptr @__kstrtabns_perf_aux_output_flag }, section "___ksymtab_gpl+perf_aux_output_flag", align 4
@perf_aux_output_begin.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_perf_aux_output_begin = external dso_local constant [0 x i8], align 1
@__kstrtabns_perf_aux_output_begin = external dso_local constant [0 x i8], align 1
@__ksymtab_perf_aux_output_begin = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @perf_aux_output_begin to i32), ptr @__kstrtab_perf_aux_output_begin, ptr @__kstrtabns_perf_aux_output_begin }, section "___ksymtab_gpl+perf_aux_output_begin", align 4
@__kstrtab_perf_aux_output_end = external dso_local constant [0 x i8], align 1
@__kstrtabns_perf_aux_output_end = external dso_local constant [0 x i8], align 1
@__ksymtab_perf_aux_output_end = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @perf_aux_output_end to i32), ptr @__kstrtab_perf_aux_output_end, ptr @__kstrtabns_perf_aux_output_end }, section "___ksymtab_gpl+perf_aux_output_end", align 4
@__kstrtab_perf_aux_output_skip = external dso_local constant [0 x i8], align 1
@__kstrtabns_perf_aux_output_skip = external dso_local constant [0 x i8], align 1
@__ksymtab_perf_aux_output_skip = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @perf_aux_output_skip to i32), ptr @__kstrtab_perf_aux_output_skip, ptr @__kstrtabns_perf_aux_output_skip }, section "___ksymtab_gpl+perf_aux_output_skip", align 4
@__kstrtab_perf_get_aux = external dso_local constant [0 x i8], align 1
@__kstrtabns_perf_get_aux = external dso_local constant [0 x i8], align 1
@__ksymtab_perf_get_aux = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @perf_get_aux to i32), ptr @__kstrtab_perf_get_aux, ptr @__kstrtabns_perf_get_aux }, section "___ksymtab_gpl+perf_get_aux", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@rb_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(work_completion)(&rb->work)\00", [35 x i8] zeroinitializer }, align 32
@__perf_output_begin.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@__rb_free_aux.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@ring_buffer_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&rb->event_lock\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 340, i32 6 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 922, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 170, i32 7 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 695, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 723, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 452, i32 1 }
@___asan_gen_.33 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private constant [31 x i8] c"../kernel/events/ring_buffer.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 324, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__ksymtab_perf_aux_output_begin, ptr @__ksymtab_perf_aux_output_end, ptr @__ksymtab_perf_aux_output_flag, ptr @__ksymtab_perf_aux_output_skip, ptr @__ksymtab_perf_get_aux, ptr @.str, ptr @rb_alloc.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @ring_buffer_init.__key, ptr @.str.8], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rb_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ring_buffer_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @perf_output_begin_forward(ptr noundef %handle, ptr noundef %data, ptr noundef %event, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %lost_event.i = alloca %struct.anon.97, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %lost_event.i) #11
  %0 = getelementptr inbounds %struct.perf_event_header, ptr %lost_event.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.perf_event_header, ptr %lost_event.i, i32 0, i32 2
  %2 = getelementptr inbounds %struct.anon.97, ptr %lost_event.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.anon.97, ptr %lost_event.i, i32 0, i32 2
  %4 = call ptr @memset(ptr %lost_event.i, i32 255, i32 24)
  %5 = tail call i32 @llvm.read_register.i32(metadata !37) #11
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !47
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #11
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %parent.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 32
  %9 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  %spec.select.i = select i1 %tobool.not.i, ptr %event, ptr %10
  %rb2.i = getelementptr inbounds %struct.perf_event, ptr %spec.select.i, i32 0, i32 39
  %11 = ptrtoint ptr %rb2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %rb2.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end12.i_crit_edge

rcu_read_lock.exit.i.do.end12.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.do.end12.i_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.do.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %.b203.i = load i1, ptr @__perf_output_begin.__warned, align 1
  br i1 %.b203.i, label %land.lhs.true7.i.do.end12.i_crit_edge, label %if.then9.i

land.lhs.true7.i.do.end12.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12.i

if.then9.i:                                       ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__perf_output_begin.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 170, ptr noundef nonnull @.str.2) #11
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.then9.i, %land.lhs.true7.i.do.end12.i_crit_edge, %land.lhs.true.i.do.end12.i_crit_edge, %rcu_read_lock.exit.i.do.end12.i_crit_edge
  %tobool14.not.i = icmp eq ptr %12, null
  br i1 %tobool14.not.i, label %do.end12.i.out.i_crit_edge, label %if.end19.i, !prof !48

do.end12.i.out.i_crit_edge:                       ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end19.i:                                       ; preds = %do.end12.i
  %paused.i = getelementptr inbounds %struct.perf_buffer, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %paused.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %paused.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool20.not.i = icmp eq i32 %14, 0
  br i1 %tobool20.not.i, label %if.end31.i, label %if.then27.i, !prof !49

if.then27.i:                                      ; preds = %if.end19.i
  %nr_pages.i = getelementptr inbounds %struct.perf_buffer, ptr %12, i32 0, i32 4
  %15 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr_pages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool28.not.i = icmp eq i32 %16, 0
  br i1 %tobool28.not.i, label %if.then27.i.out.i_crit_edge, label %if.then29.i

if.then27.i.out.i_crit_edge:                      ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.then29.i:                                      ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #13
  %lost.i = getelementptr inbounds %struct.perf_buffer, ptr %12, i32 0, i32 12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lost.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %lost.i, i32 1, i32 3, i32 1) #11
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %lost.i, ptr %lost.i, i32 1, ptr elementtype(i32) %lost.i) #11, !srcloc !50
  br label %out.i

if.end31.i:                                       ; preds = %if.end19.i
  %rb32.i = getelementptr inbounds %struct.perf_output_handle, ptr %handle, i32 0, i32 1
  %18 = ptrtoint ptr %rb32.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %12, ptr %rb32.i, align 4
  %19 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %spec.select.i, ptr %handle, align 8
  %lost34.i = getelementptr inbounds %struct.perf_buffer, ptr %12, i32 0, i32 12
  %call.i.i206.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %lost34.i, i32 noundef 4) #11
  %20 = ptrtoint ptr %lost34.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %lost34.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool37.not.i = icmp eq i32 %21, 0
  br i1 %tobool37.not.i, label %if.end31.i.if.end49.i_crit_edge, label %if.then44.i, !prof !49

if.end31.i.if.end49.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49.i

if.then44.i:                                      ; preds = %if.end31.i
  %add.i = add i32 %size, 24
  %sample_id_all.i = getelementptr inbounds %struct.perf_event, ptr %spec.select.i, i32 0, i32 21, i32 6
  %22 = ptrtoint ptr %sample_id_all.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %bf.load.i = load i64, ptr %sample_id_all.i, align 8
  %23 = and i64 %bf.load.i, 35184372088832
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %tobool45.not.i = icmp eq i64 %23, 0
  br i1 %tobool45.not.i, label %if.then44.i.if.end49.i_crit_edge, label %if.then46.i

if.then44.i.if.end49.i_crit_edge:                 ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49.i

if.then46.i:                                      ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #13
  %id_header_size.i = getelementptr inbounds %struct.perf_event, ptr %spec.select.i, i32 0, i32 23
  %24 = ptrtoint ptr %id_header_size.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %id_header_size.i, align 2
  %conv.i = zext i16 %25 to i32
  %add47.i = add i32 %add.i, %conv.i
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then46.i, %if.then44.i.if.end49.i_crit_edge, %if.end31.i.if.end49.i_crit_edge
  %size.addr.0.i = phi i32 [ %add47.i, %if.then46.i ], [ %add.i, %if.then44.i.if.end49.i_crit_edge ], [ %size, %if.end31.i.if.end49.i_crit_edge ]
  %26 = ptrtoint ptr %rb32.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rb32.i, align 4
  %28 = tail call i32 @llvm.read_register.i32(metadata !37) #11
  %and.i.i.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %31, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !51
  %nest.i.i = getelementptr inbounds %struct.perf_buffer, ptr %27, i32 0, i32 9
  %32 = ptrtoint ptr %nest.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %nest.i.i, align 4
  %inc.i.i = add i32 %33, 1
  store volatile i32 %inc.i.i, ptr %nest.i.i, align 4
  %wakeup.i.i = getelementptr inbounds %struct.perf_buffer, ptr %27, i32 0, i32 11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %wakeup.i.i, i32 noundef 4) #11
  %34 = ptrtoint ptr %wakeup.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %wakeup.i.i, align 4
  %wakeup2.i.i = getelementptr inbounds %struct.perf_output_handle, ptr %handle, i32 0, i32 2
  %36 = ptrtoint ptr %wakeup2.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %wakeup2.i.i, align 8
  %user_page.i = getelementptr inbounds %struct.perf_buffer, ptr %12, i32 0, i32 33
  %head56.i = getelementptr inbounds %struct.perf_buffer, ptr %12, i32 0, i32 8
  %overwrite.i = getelementptr inbounds %struct.perf_buffer, ptr %12, i32 0, i32 5
  %nr_pages.i.i = getelementptr inbounds %struct.perf_buffer, ptr %12, i32 0, i32 4
  %page_order.i.i.i = getelementptr inbounds %struct.perf_buffer, ptr %12, i32 0, i32 3
  br label %do.body50.i

do.body50.i:                                      ; preds = %atomic_long_cmpxchg.exit.i.do.body50.i_crit_edge, %if.end49.i
  %37 = ptrtoint ptr %user_page.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %user_page.i, align 4
  %data_tail.i = getelementptr inbounds %struct.perf_event_mmap_page, ptr %38, i32 0, i32 19
  %39 = ptrtoint ptr %data_tail.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load volatile i64, ptr %data_tail.i, align 8
  %call.i.i207.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %head56.i, i32 noundef 4) #11
  %41 = ptrtoint ptr %head56.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %head56.i, align 4
  %43 = ptrtoint ptr %overwrite.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %overwrite.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool59.not.i = icmp eq i32 %44, 0
  br i1 %tobool59.not.i, label %if.then60.i, label %do.body50.i.if.end74.i_crit_edge

do.body50.i.if.end74.i_crit_edge:                 ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74.i

if.then60.i:                                      ; preds = %do.body50.i
  %conv55.i = trunc i64 %40 to i32
  %45 = ptrtoint ptr %nr_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nr_pages.i.i, align 4
  %47 = ptrtoint ptr %page_order.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %page_order.i.i.i, align 4
  %add.i.i = add i32 %48, 12
  %shl.i.i = shl i32 %46, %add.i.i
  %add2.neg.i.i = xor i32 %42, -1
  %sub3.i.i = add i32 %add2.neg.i.i, %conv55.i
  %sub4.i.i = add i32 %shl.i.i, -1
  %and5.i.i = and i32 %sub4.i.i, %sub3.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and5.i.i, i32 %size.addr.0.i)
  %retval.0.i.not.i = icmp ult i32 %and5.i.i, %size.addr.0.i
  br i1 %retval.0.i.not.i, label %fail.i, label %if.then60.i.if.end74.i_crit_edge, !prof !48

if.then60.i.if.end74.i_crit_edge:                 ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.then60.i.if.end74.i_crit_edge, %do.body50.i.if.end74.i_crit_edge
  %head.0.i = add i32 %42, %size.addr.0.i
  %call.i.i208.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %head56.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !52
  tail call void @llvm.prefetch.p0(ptr %head56.i, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %if.end74.i
  %49 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %head56.i, ptr %head56.i, i32 %42, i32 %head.0.i, ptr elementtype(i32) %head56.i) #11, !srcloc !53
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %49, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %atomic_long_cmpxchg.exit.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i

atomic_long_cmpxchg.exit.i:                       ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %49, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !54
  %cmp.not.i = icmp eq i32 %asmresult3.i.i.i.i.i, %42
  br i1 %cmp.not.i, label %do.end84.i, label %atomic_long_cmpxchg.exit.i.do.body50.i_crit_edge

atomic_long_cmpxchg.exit.i.do.body50.i_crit_edge: ; preds = %atomic_long_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body50.i

do.end84.i:                                       ; preds = %atomic_long_cmpxchg.exit.i
  %wakeup.i = getelementptr inbounds %struct.perf_buffer, ptr %12, i32 0, i32 11
  %call.i.i209.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %wakeup.i, i32 noundef 4) #11
  %50 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %wakeup.i, align 4
  %sub93.i = sub i32 %head.0.i, %51
  %watermark.i = getelementptr inbounds %struct.perf_buffer, ptr %12, i32 0, i32 13
  %52 = ptrtoint ptr %watermark.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %watermark.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub93.i, i32 %53)
  %cmp94.i = icmp ugt i32 %sub93.i, %53
  br i1 %cmp94.i, label %if.then102.i, label %do.end84.i.if.end106.i_crit_edge, !prof !48

do.end84.i.if.end106.i_crit_edge:                 ; preds = %do.end84.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106.i

if.then102.i:                                     ; preds = %do.end84.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i210.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %wakeup.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %wakeup.i, i32 1, i32 3, i32 1) #11
  %54 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wakeup.i, ptr %wakeup.i, i32 %53, ptr elementtype(i32) %wakeup.i) #11, !srcloc !50
  br label %if.end106.i

if.end106.i:                                      ; preds = %if.then102.i, %do.end84.i.if.end106.i_crit_edge
  %55 = ptrtoint ptr %page_order.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %page_order.i.i.i, align 4
  %add108.i = add i32 %56, 12
  %shr.i = lshr i32 %42, %add108.i
  %57 = ptrtoint ptr %nr_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %nr_pages.i.i, align 4
  %sub110.i = add i32 %58, -1
  %and.i = and i32 %shr.i, %sub110.i
  %page.i = getelementptr inbounds %struct.perf_output_handle, ptr %handle, i32 0, i32 6
  %59 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %and.i, ptr %page.i, align 4
  %shl.i = shl nuw i32 1, %add108.i
  %sub111.i = add i32 %shl.i, -1
  %and112.i = and i32 %sub111.i, %42
  %arrayidx.i = getelementptr %struct.perf_buffer, ptr %12, i32 0, i32 34, i32 %and.i
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %61, i32 %and112.i
  %62 = getelementptr inbounds %struct.perf_output_handle, ptr %handle, i32 0, i32 5
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %add.ptr.i, ptr %62, align 8
  %sub115.i = sub i32 %shl.i, %and112.i
  %size116.i = getelementptr inbounds %struct.perf_output_handle, ptr %handle, i32 0, i32 3
  %64 = ptrtoint ptr %size116.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %sub115.i, ptr %size116.i, align 4
  br i1 %tobool37.not.i, label %if.end106.i.__perf_output_begin.exit_crit_edge, label %if.then124.i, !prof !49

if.end106.i.__perf_output_begin.exit_crit_edge:   ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__perf_output_begin.exit

if.then124.i:                                     ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #13
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 24, ptr %1, align 2
  %66 = ptrtoint ptr %lost_event.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 2, ptr %lost_event.i, align 8
  %67 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 0, ptr %0, align 4
  %id.i = getelementptr inbounds %struct.perf_event, ptr %spec.select.i, i32 0, i32 58
  %68 = ptrtoint ptr %id.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %id.i, align 8
  %70 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %69, ptr %2, align 8
  %call.i.i211.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lost34.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !55
  tail call void @llvm.prefetch.p0(ptr %lost34.i, i32 1, i32 3, i32 1) #11
  %71 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %lost34.i) #11, !srcloc !56
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %71, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !57
  %conv132.i = sext i32 %asmresult.i.i.i.i to i64
  %72 = ptrtoint ptr %3 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %conv132.i, ptr %3, align 8
  call void @perf_event_header__init_id(ptr noundef nonnull %lost_event.i, ptr noundef %data, ptr noundef %spec.select.i) #11
  %call135.i = call i32 @perf_output_copy(ptr noundef %handle, ptr noundef nonnull %lost_event.i, i32 noundef 24) #11
  call void @perf_event__output_id_sample(ptr noundef %spec.select.i, ptr noundef %handle, ptr noundef %data) #11
  br label %__perf_output_begin.exit

fail.i:                                           ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i212.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lost34.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %lost34.i, i32 1, i32 3, i32 1) #11
  %73 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %lost34.i, ptr %lost34.i, i32 1, ptr elementtype(i32) %lost34.i) #11, !srcloc !50
  tail call fastcc void @perf_output_put_handle(ptr noundef %handle) #11
  br label %out.i

out.i:                                            ; preds = %fail.i, %if.then29.i, %if.then27.i.out.i_crit_edge, %do.end12.i.out.i_crit_edge
  tail call fastcc void @rcu_read_unlock() #11
  br label %__perf_output_begin.exit

__perf_output_begin.exit:                         ; preds = %out.i, %if.then124.i, %if.end106.i.__perf_output_begin.exit_crit_edge
  %retval.0.i = phi i32 [ -28, %out.i ], [ 0, %if.then124.i ], [ 0, %if.end106.i.__perf_output_begin.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %lost_event.i) #11
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @perf_output_begin_backward(ptr noundef %handle, ptr noundef %data, ptr noundef %event, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %lost_event.i = alloca %struct.anon.97, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %lost_event.i) #11
  %0 = getelementptr inbounds %struct.perf_event_header, ptr %lost_event.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.perf_event_header, ptr %lost_event.i, i32 0, i32 2
  %2 = getelementptr inbounds %struct.anon.97, ptr %lost_event.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.anon.97, ptr %lost_event.i, i32 0, i32 2
  %4 = call ptr @memset(ptr %lost_event.i, i32 255, i32 24)
  %5 = tail call i32 @llvm.read_register.i32(metadata !37) #11
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !47
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #11
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %parent.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 32
  %9 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  %spec.select.i = select i1 %tobool.not.i, ptr %event, ptr %10
  %rb2.i = getelementptr inbounds %struct.perf_event, ptr %spec.select.i, i32 0, i32 39
  %11 = ptrtoint ptr %rb2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %rb2.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end12.i_crit_edge

rcu_read_lock.exit.i.do.end12.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.do.end12.i_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.do.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %.b203.i = load i1, ptr @__perf_output_begin.__warned, align 1
  br i1 %.b203.i, label %land.lhs.true7.i.do.end12.i_crit_edge, label %if.then9.i

land.lhs.true7.i.do.end12.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12.i

if.then9.i:                                       ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__perf_output_begin.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 170, ptr noundef nonnull @.str.2) #11
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.then9.i, %land.lhs.true7.i.do.end12.i_crit_edge, %land.lhs.true.i.do.end12.i_crit_edge, %rcu_read_lock.exit.i.do.end12.i_crit_edge
  %tobool14.not.i = icmp eq ptr %12, null
  br i1 %tobool14.not.i, label %do.end12.i.out.i_crit_edge, label %if.end19.i, !prof !48

do.end12.i.out.i_crit_edge:                       ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end19.i:                                       ; preds = %do.end12.i
  %paused.i = getelementptr inbounds %struct.perf_buffer, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %paused.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %paused.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool20.not.i = icmp eq i32 %14, 0
  br i1 %tobool20.not.i, label %if.end31.i, label %if.then27.i, !prof !49

if.then27.i:                                      ; preds = %if.end19.i
  %nr_pages.i = getelementptr inbounds %struct.perf_buffer, ptr %12, i32 0, i32 4
  %15 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr_pages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool28.not.i = icmp eq i32 %16, 0
  br i1 %tobool28.not.i, label %if.then27.i.out.i_crit_edge, label %if.then29.i

if.then27.i.out.i_crit_edge:                      ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.then29.i:                                      ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #13
  %lost.i = getelementptr inbounds %struct.perf_buffer, ptr %12, i32 0, i32 12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lost.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %lost.i, i32 1, i32 3, i32 1) #11
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %lost.i, ptr %lost.i, i32 1, ptr elementtype(i32) %lost.i) #11, !srcloc !50
  br label %out.i

if.end31.i:                                       ; preds = %if.end19.i
  %rb32.i = getelementptr inbounds %struct.perf_output_handle, ptr %handle, i32 0, i32 1
  %18 = ptrtoint ptr %rb32.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %12, ptr %rb32.i, align 4
  %19 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %spec.select.i, ptr %handle, align 8
  %lost34.i = getelementptr inbounds %struct.perf_buffer, ptr %12, i32 0, i32 12
  %call.i.i206.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %lost34.i, i32 noundef 4) #11
  %20 = ptrtoint ptr %lost34.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %lost34.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool37.not.i = icmp eq i32 %21, 0
  br i1 %tobool37.not.i, label %if.end31.i.if.end49.i_crit_edge, label %if.then44.i, !prof !49

if.end31.i.if.end49.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49.i

if.then44.i:                                      ; preds = %if.end31.i
  %add.i = add i32 %size, 24
  %sample_id_all.i = getelementptr inbounds %struct.perf_event, ptr %spec.select.i, i32 0, i32 21, i32 6
  %22 = ptrtoint ptr %sample_id_all.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %bf.load.i = load i64, ptr %sample_id_all.i, align 8
  %23 = and i64 %bf.load.i, 35184372088832
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %tobool45.not.i = icmp eq i64 %23, 0
  br i1 %tobool45.not.i, label %if.then44.i.if.end49.i_crit_edge, label %if.then46.i

if.then44.i.if.end49.i_crit_edge:                 ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49.i

if.then46.i:                                      ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #13
  %id_header_size.i = getelementptr inbounds %struct.perf_event, ptr %spec.select.i, i32 0, i32 23
  %24 = ptrtoint ptr %id_header_size.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %id_header_size.i, align 2
  %conv.i = zext i16 %25 to i32
  %add47.i = add i32 %add.i, %conv.i
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then46.i, %if.then44.i.if.end49.i_crit_edge, %if.end31.i.if.end49.i_crit_edge
  %size.addr.0.i = phi i32 [ %add47.i, %if.then46.i ], [ %add.i, %if.then44.i.if.end49.i_crit_edge ], [ %size, %if.end31.i.if.end49.i_crit_edge ]
  %26 = ptrtoint ptr %rb32.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rb32.i, align 4
  %28 = tail call i32 @llvm.read_register.i32(metadata !37) #11
  %and.i.i.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %31, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !51
  %nest.i.i = getelementptr inbounds %struct.perf_buffer, ptr %27, i32 0, i32 9
  %32 = ptrtoint ptr %nest.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %nest.i.i, align 4
  %inc.i.i = add i32 %33, 1
  store volatile i32 %inc.i.i, ptr %nest.i.i, align 4
  %wakeup.i.i = getelementptr inbounds %struct.perf_buffer, ptr %27, i32 0, i32 11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %wakeup.i.i, i32 noundef 4) #11
  %34 = ptrtoint ptr %wakeup.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %wakeup.i.i, align 4
  %wakeup2.i.i = getelementptr inbounds %struct.perf_output_handle, ptr %handle, i32 0, i32 2
  %36 = ptrtoint ptr %wakeup2.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %wakeup2.i.i, align 8
  %user_page.i = getelementptr inbounds %struct.perf_buffer, ptr %12, i32 0, i32 33
  %head56.i = getelementptr inbounds %struct.perf_buffer, ptr %12, i32 0, i32 8
  %overwrite.i = getelementptr inbounds %struct.perf_buffer, ptr %12, i32 0, i32 5
  %nr_pages.i.i = getelementptr inbounds %struct.perf_buffer, ptr %12, i32 0, i32 4
  %page_order.i.i.i = getelementptr inbounds %struct.perf_buffer, ptr %12, i32 0, i32 3
  br label %do.body50.i

do.body50.i:                                      ; preds = %atomic_long_cmpxchg.exit.i.do.body50.i_crit_edge, %if.end49.i
  %37 = ptrtoint ptr %user_page.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %user_page.i, align 4
  %data_tail.i = getelementptr inbounds %struct.perf_event_mmap_page, ptr %38, i32 0, i32 19
  %39 = ptrtoint ptr %data_tail.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load volatile i64, ptr %data_tail.i, align 8
  %call.i.i207.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %head56.i, i32 noundef 4) #11
  %41 = ptrtoint ptr %head56.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %head56.i, align 4
  %43 = ptrtoint ptr %overwrite.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %overwrite.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool59.not.i = icmp eq i32 %44, 0
  br i1 %tobool59.not.i, label %if.then60.i, label %do.body50.i.if.end74.i_crit_edge

do.body50.i.if.end74.i_crit_edge:                 ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74.i

if.then60.i:                                      ; preds = %do.body50.i
  %conv55.i = trunc i64 %40 to i32
  %45 = ptrtoint ptr %nr_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nr_pages.i.i, align 4
  %47 = ptrtoint ptr %page_order.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %page_order.i.i.i, align 4
  %add.i.i = add i32 %48, 12
  %shl.i.i = shl i32 %46, %add.i.i
  %add2.neg.i.i = xor i32 %conv55.i, -1
  %sub3.i.i = add i32 %42, %add2.neg.i.i
  %sub4.i.i = add i32 %shl.i.i, -1
  %and5.i.i = and i32 %sub4.i.i, %sub3.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and5.i.i, i32 %size.addr.0.i)
  %retval.0.i.not.i = icmp ult i32 %and5.i.i, %size.addr.0.i
  br i1 %retval.0.i.not.i, label %fail.i, label %if.then60.i.if.end74.i_crit_edge, !prof !48

if.then60.i.if.end74.i_crit_edge:                 ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.then60.i.if.end74.i_crit_edge, %do.body50.i.if.end74.i_crit_edge
  %head.0.i = sub i32 %42, %size.addr.0.i
  %call.i.i208.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %head56.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !52
  tail call void @llvm.prefetch.p0(ptr %head56.i, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %if.end74.i
  %49 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %head56.i, ptr %head56.i, i32 %42, i32 %head.0.i, ptr elementtype(i32) %head56.i) #11, !srcloc !53
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %49, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %atomic_long_cmpxchg.exit.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i

atomic_long_cmpxchg.exit.i:                       ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %49, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !54
  %cmp.not.i = icmp eq i32 %asmresult3.i.i.i.i.i, %42
  br i1 %cmp.not.i, label %do.end84.i, label %atomic_long_cmpxchg.exit.i.do.body50.i_crit_edge

atomic_long_cmpxchg.exit.i.do.body50.i_crit_edge: ; preds = %atomic_long_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body50.i

do.end84.i:                                       ; preds = %atomic_long_cmpxchg.exit.i
  %wakeup.i = getelementptr inbounds %struct.perf_buffer, ptr %12, i32 0, i32 11
  %call.i.i209.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %wakeup.i, i32 noundef 4) #11
  %50 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %wakeup.i, align 4
  %52 = add i32 %head.0.i, %51
  %sub93.i = sub i32 0, %52
  %watermark.i = getelementptr inbounds %struct.perf_buffer, ptr %12, i32 0, i32 13
  %53 = ptrtoint ptr %watermark.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %watermark.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %sub93.i)
  %cmp94.i = icmp ult i32 %54, %sub93.i
  br i1 %cmp94.i, label %if.then102.i, label %do.end84.i.if.end106.i_crit_edge, !prof !48

do.end84.i.if.end106.i_crit_edge:                 ; preds = %do.end84.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106.i

if.then102.i:                                     ; preds = %do.end84.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i210.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %wakeup.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %wakeup.i, i32 1, i32 3, i32 1) #11
  %55 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wakeup.i, ptr %wakeup.i, i32 %54, ptr elementtype(i32) %wakeup.i) #11, !srcloc !50
  br label %if.end106.i

if.end106.i:                                      ; preds = %if.then102.i, %do.end84.i.if.end106.i_crit_edge
  %56 = ptrtoint ptr %page_order.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %page_order.i.i.i, align 4
  %add108.i = add i32 %57, 12
  %shr.i = lshr i32 %head.0.i, %add108.i
  %58 = ptrtoint ptr %nr_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %nr_pages.i.i, align 4
  %sub110.i = add i32 %59, -1
  %and.i = and i32 %shr.i, %sub110.i
  %page.i = getelementptr inbounds %struct.perf_output_handle, ptr %handle, i32 0, i32 6
  %60 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %and.i, ptr %page.i, align 4
  %shl.i = shl nuw i32 1, %add108.i
  %sub111.i = add i32 %shl.i, -1
  %and112.i = and i32 %sub111.i, %head.0.i
  %arrayidx.i = getelementptr %struct.perf_buffer, ptr %12, i32 0, i32 34, i32 %and.i
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %62, i32 %and112.i
  %63 = getelementptr inbounds %struct.perf_output_handle, ptr %handle, i32 0, i32 5
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %add.ptr.i, ptr %63, align 8
  %sub115.i = sub i32 %shl.i, %and112.i
  %size116.i = getelementptr inbounds %struct.perf_output_handle, ptr %handle, i32 0, i32 3
  %65 = ptrtoint ptr %size116.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %sub115.i, ptr %size116.i, align 4
  br i1 %tobool37.not.i, label %if.end106.i.__perf_output_begin.exit_crit_edge, label %if.then124.i, !prof !49

if.end106.i.__perf_output_begin.exit_crit_edge:   ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__perf_output_begin.exit

if.then124.i:                                     ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #13
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 24, ptr %1, align 2
  %67 = ptrtoint ptr %lost_event.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 2, ptr %lost_event.i, align 8
  %68 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 0, ptr %0, align 4
  %id.i = getelementptr inbounds %struct.perf_event, ptr %spec.select.i, i32 0, i32 58
  %69 = ptrtoint ptr %id.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %id.i, align 8
  %71 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %70, ptr %2, align 8
  %call.i.i211.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lost34.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !55
  tail call void @llvm.prefetch.p0(ptr %lost34.i, i32 1, i32 3, i32 1) #11
  %72 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %lost34.i) #11, !srcloc !56
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %72, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !57
  %conv132.i = sext i32 %asmresult.i.i.i.i to i64
  %73 = ptrtoint ptr %3 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %conv132.i, ptr %3, align 8
  call void @perf_event_header__init_id(ptr noundef nonnull %lost_event.i, ptr noundef %data, ptr noundef %spec.select.i) #11
  %call135.i = call i32 @perf_output_copy(ptr noundef %handle, ptr noundef nonnull %lost_event.i, i32 noundef 24) #11
  call void @perf_event__output_id_sample(ptr noundef %spec.select.i, ptr noundef %handle, ptr noundef %data) #11
  br label %__perf_output_begin.exit

fail.i:                                           ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i212.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lost34.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %lost34.i, i32 1, i32 3, i32 1) #11
  %74 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %lost34.i, ptr %lost34.i, i32 1, ptr elementtype(i32) %lost34.i) #11, !srcloc !50
  tail call fastcc void @perf_output_put_handle(ptr noundef %handle) #11
  br label %out.i

out.i:                                            ; preds = %fail.i, %if.then29.i, %if.then27.i.out.i_crit_edge, %do.end12.i.out.i_crit_edge
  tail call fastcc void @rcu_read_unlock() #11
  br label %__perf_output_begin.exit

__perf_output_begin.exit:                         ; preds = %out.i, %if.then124.i, %if.end106.i.__perf_output_begin.exit_crit_edge
  %retval.0.i = phi i32 [ -28, %out.i ], [ 0, %if.then124.i ], [ 0, %if.end106.i.__perf_output_begin.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %lost_event.i) #11
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @perf_output_begin(ptr noundef %handle, ptr noundef %data, ptr noundef %event, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %lost_event.i = alloca %struct.anon.97, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %write_backward.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 6
  %0 = ptrtoint ptr %write_backward.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %bf.load.i4 = load i64, ptr %write_backward.i, align 8
  %1 = and i64 %bf.load.i4, 68719476736
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.i.not = icmp eq i64 %1, 0
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %lost_event.i) #11
  %2 = getelementptr inbounds %struct.perf_event_header, ptr %lost_event.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.perf_event_header, ptr %lost_event.i, i32 0, i32 2
  %4 = getelementptr inbounds %struct.anon.97, ptr %lost_event.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.anon.97, ptr %lost_event.i, i32 0, i32 2
  %6 = call ptr @memset(ptr %lost_event.i, i32 255, i32 24)
  %7 = tail call i32 @llvm.read_register.i32(metadata !37) #11
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !47
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #11
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %parent.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 32
  %11 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  %spec.select.i = select i1 %tobool.not.i, ptr %event, ptr %12
  %rb2.i = getelementptr inbounds %struct.perf_event, ptr %spec.select.i, i32 0, i32 39
  %13 = ptrtoint ptr %rb2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %rb2.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end12.i_crit_edge

rcu_read_lock.exit.i.do.end12.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.do.end12.i_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.do.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %.b203.i = load i1, ptr @__perf_output_begin.__warned, align 1
  br i1 %.b203.i, label %land.lhs.true7.i.do.end12.i_crit_edge, label %if.then9.i

land.lhs.true7.i.do.end12.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12.i

if.then9.i:                                       ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__perf_output_begin.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 170, ptr noundef nonnull @.str.2) #11
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.then9.i, %land.lhs.true7.i.do.end12.i_crit_edge, %land.lhs.true.i.do.end12.i_crit_edge, %rcu_read_lock.exit.i.do.end12.i_crit_edge
  %tobool14.not.i = icmp eq ptr %14, null
  br i1 %tobool14.not.i, label %do.end12.i.out.i_crit_edge, label %if.end19.i, !prof !48

do.end12.i.out.i_crit_edge:                       ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end19.i:                                       ; preds = %do.end12.i
  %paused.i = getelementptr inbounds %struct.perf_buffer, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %paused.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %paused.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool20.not.i = icmp eq i32 %16, 0
  br i1 %tobool20.not.i, label %if.end31.i, label %if.then27.i, !prof !49

if.then27.i:                                      ; preds = %if.end19.i
  %nr_pages.i = getelementptr inbounds %struct.perf_buffer, ptr %14, i32 0, i32 4
  %17 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr_pages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool28.not.i = icmp eq i32 %18, 0
  br i1 %tobool28.not.i, label %if.then27.i.out.i_crit_edge, label %if.then29.i

if.then27.i.out.i_crit_edge:                      ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.then29.i:                                      ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #13
  %lost.i = getelementptr inbounds %struct.perf_buffer, ptr %14, i32 0, i32 12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lost.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %lost.i, i32 1, i32 3, i32 1) #11
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %lost.i, ptr %lost.i, i32 1, ptr elementtype(i32) %lost.i) #11, !srcloc !50
  br label %out.i

if.end31.i:                                       ; preds = %if.end19.i
  %rb32.i = getelementptr inbounds %struct.perf_output_handle, ptr %handle, i32 0, i32 1
  %20 = ptrtoint ptr %rb32.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %14, ptr %rb32.i, align 4
  %21 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %spec.select.i, ptr %handle, align 8
  %lost34.i = getelementptr inbounds %struct.perf_buffer, ptr %14, i32 0, i32 12
  %call.i.i206.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %lost34.i, i32 noundef 4) #11
  %22 = ptrtoint ptr %lost34.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %lost34.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool37.not.i = icmp eq i32 %23, 0
  br i1 %tobool37.not.i, label %if.end31.i.if.end49.i_crit_edge, label %if.then44.i, !prof !49

if.end31.i.if.end49.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49.i

if.then44.i:                                      ; preds = %if.end31.i
  %add.i = add i32 %size, 24
  %sample_id_all.i = getelementptr inbounds %struct.perf_event, ptr %spec.select.i, i32 0, i32 21, i32 6
  %24 = ptrtoint ptr %sample_id_all.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %bf.load.i = load i64, ptr %sample_id_all.i, align 8
  %25 = and i64 %bf.load.i, 35184372088832
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %25)
  %tobool45.not.i = icmp eq i64 %25, 0
  br i1 %tobool45.not.i, label %if.then44.i.if.end49.i_crit_edge, label %if.then46.i

if.then44.i.if.end49.i_crit_edge:                 ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49.i

if.then46.i:                                      ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #13
  %id_header_size.i = getelementptr inbounds %struct.perf_event, ptr %spec.select.i, i32 0, i32 23
  %26 = ptrtoint ptr %id_header_size.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %id_header_size.i, align 2
  %conv.i = zext i16 %27 to i32
  %add47.i = add i32 %add.i, %conv.i
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then46.i, %if.then44.i.if.end49.i_crit_edge, %if.end31.i.if.end49.i_crit_edge
  %size.addr.0.i = phi i32 [ %add47.i, %if.then46.i ], [ %add.i, %if.then44.i.if.end49.i_crit_edge ], [ %size, %if.end31.i.if.end49.i_crit_edge ]
  %28 = ptrtoint ptr %rb32.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rb32.i, align 4
  %30 = tail call i32 @llvm.read_register.i32(metadata !37) #11
  %and.i.i.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %33, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !51
  %nest.i.i = getelementptr inbounds %struct.perf_buffer, ptr %29, i32 0, i32 9
  %34 = ptrtoint ptr %nest.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %nest.i.i, align 4
  %inc.i.i = add i32 %35, 1
  store volatile i32 %inc.i.i, ptr %nest.i.i, align 4
  %wakeup.i.i = getelementptr inbounds %struct.perf_buffer, ptr %29, i32 0, i32 11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %wakeup.i.i, i32 noundef 4) #11
  %36 = ptrtoint ptr %wakeup.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %wakeup.i.i, align 4
  %wakeup2.i.i = getelementptr inbounds %struct.perf_output_handle, ptr %handle, i32 0, i32 2
  %38 = ptrtoint ptr %wakeup2.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %wakeup2.i.i, align 8
  %user_page.i = getelementptr inbounds %struct.perf_buffer, ptr %14, i32 0, i32 33
  %head56.i = getelementptr inbounds %struct.perf_buffer, ptr %14, i32 0, i32 8
  %overwrite.i = getelementptr inbounds %struct.perf_buffer, ptr %14, i32 0, i32 5
  %nr_pages.i.i = getelementptr inbounds %struct.perf_buffer, ptr %14, i32 0, i32 4
  %page_order.i.i.i = getelementptr inbounds %struct.perf_buffer, ptr %14, i32 0, i32 3
  %39 = sub i32 0, %size.addr.0.i
  %head.0.p.i = select i1 %tobool.i.not, i32 %size.addr.0.i, i32 %39
  br label %do.body50.i

do.body50.i:                                      ; preds = %atomic_long_cmpxchg.exit.i.do.body50.i_crit_edge, %if.end49.i
  %40 = ptrtoint ptr %user_page.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %user_page.i, align 4
  %data_tail.i = getelementptr inbounds %struct.perf_event_mmap_page, ptr %41, i32 0, i32 19
  %42 = ptrtoint ptr %data_tail.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load volatile i64, ptr %data_tail.i, align 8
  %call.i.i207.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %head56.i, i32 noundef 4) #11
  %44 = ptrtoint ptr %head56.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %head56.i, align 4
  %46 = ptrtoint ptr %overwrite.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %overwrite.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool59.not.i = icmp eq i32 %47, 0
  br i1 %tobool59.not.i, label %if.then60.i, label %do.body50.i.if.end74.i_crit_edge

do.body50.i.if.end74.i_crit_edge:                 ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74.i

if.then60.i:                                      ; preds = %do.body50.i
  %conv55.i = trunc i64 %43 to i32
  %48 = ptrtoint ptr %nr_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nr_pages.i.i, align 4
  %50 = ptrtoint ptr %page_order.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %page_order.i.i.i, align 4
  %add.i.i = add i32 %51, 12
  %shl.i.i = shl i32 %49, %add.i.i
  %tail.head.i.i = select i1 %tobool.i.not, i32 %45, i32 %conv55.i
  %head.tail.i.i = select i1 %tobool.i.not, i32 %conv55.i, i32 %45
  %add2.neg.i.i = xor i32 %tail.head.i.i, -1
  %sub3.i.i = add i32 %head.tail.i.i, %add2.neg.i.i
  %sub4.i.i = add i32 %shl.i.i, -1
  %and5.i.i = and i32 %sub4.i.i, %sub3.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and5.i.i, i32 %size.addr.0.i)
  %retval.0.i.not.i = icmp ult i32 %and5.i.i, %size.addr.0.i
  br i1 %retval.0.i.not.i, label %fail.i, label %if.then60.i.if.end74.i_crit_edge, !prof !48

if.then60.i.if.end74.i_crit_edge:                 ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.then60.i.if.end74.i_crit_edge, %do.body50.i.if.end74.i_crit_edge
  %head.0.i = add i32 %45, %head.0.p.i
  %call.i.i208.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %head56.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !52
  tail call void @llvm.prefetch.p0(ptr %head56.i, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %if.end74.i
  %52 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %head56.i, ptr %head56.i, i32 %45, i32 %head.0.i, ptr elementtype(i32) %head56.i) #11, !srcloc !53
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %52, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %atomic_long_cmpxchg.exit.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i

atomic_long_cmpxchg.exit.i:                       ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %52, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !54
  %cmp.not.i = icmp eq i32 %asmresult3.i.i.i.i.i, %45
  br i1 %cmp.not.i, label %do.end84.i, label %atomic_long_cmpxchg.exit.i.do.body50.i_crit_edge

atomic_long_cmpxchg.exit.i.do.body50.i_crit_edge: ; preds = %atomic_long_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body50.i

do.end84.i:                                       ; preds = %atomic_long_cmpxchg.exit.i
  %sub87.i = sub i32 0, %head.0.i
  %spec.select204.i = select i1 %tobool.i.not, i32 %45, i32 %head.0.i
  %spec.select205.i = select i1 %tobool.i.not, i32 %head.0.i, i32 %sub87.i
  %wakeup.i = getelementptr inbounds %struct.perf_buffer, ptr %14, i32 0, i32 11
  %call.i.i209.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %wakeup.i, i32 noundef 4) #11
  %53 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %wakeup.i, align 4
  %sub93.i = sub i32 %spec.select205.i, %54
  %watermark.i = getelementptr inbounds %struct.perf_buffer, ptr %14, i32 0, i32 13
  %55 = ptrtoint ptr %watermark.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %watermark.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub93.i, i32 %56)
  %cmp94.i = icmp ugt i32 %sub93.i, %56
  br i1 %cmp94.i, label %if.then102.i, label %do.end84.i.if.end106.i_crit_edge, !prof !48

do.end84.i.if.end106.i_crit_edge:                 ; preds = %do.end84.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106.i

if.then102.i:                                     ; preds = %do.end84.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i210.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %wakeup.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %wakeup.i, i32 1, i32 3, i32 1) #11
  %57 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wakeup.i, ptr %wakeup.i, i32 %56, ptr elementtype(i32) %wakeup.i) #11, !srcloc !50
  br label %if.end106.i

if.end106.i:                                      ; preds = %if.then102.i, %do.end84.i.if.end106.i_crit_edge
  %58 = ptrtoint ptr %page_order.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %page_order.i.i.i, align 4
  %add108.i = add i32 %59, 12
  %shr.i = lshr i32 %spec.select204.i, %add108.i
  %60 = ptrtoint ptr %nr_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nr_pages.i.i, align 4
  %sub110.i = add i32 %61, -1
  %and.i = and i32 %shr.i, %sub110.i
  %page.i = getelementptr inbounds %struct.perf_output_handle, ptr %handle, i32 0, i32 6
  %62 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %and.i, ptr %page.i, align 4
  %shl.i = shl nuw i32 1, %add108.i
  %sub111.i = add i32 %shl.i, -1
  %and112.i = and i32 %sub111.i, %spec.select204.i
  %arrayidx.i = getelementptr %struct.perf_buffer, ptr %14, i32 0, i32 34, i32 %and.i
  %63 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %64, i32 %and112.i
  %65 = getelementptr inbounds %struct.perf_output_handle, ptr %handle, i32 0, i32 5
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %add.ptr.i, ptr %65, align 8
  %sub115.i = sub i32 %shl.i, %and112.i
  %size116.i = getelementptr inbounds %struct.perf_output_handle, ptr %handle, i32 0, i32 3
  %67 = ptrtoint ptr %size116.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %sub115.i, ptr %size116.i, align 4
  br i1 %tobool37.not.i, label %if.end106.i.__perf_output_begin.exit_crit_edge, label %if.then124.i, !prof !49

if.end106.i.__perf_output_begin.exit_crit_edge:   ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__perf_output_begin.exit

if.then124.i:                                     ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #13
  %68 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 24, ptr %3, align 2
  %69 = ptrtoint ptr %lost_event.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 2, ptr %lost_event.i, align 8
  %70 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 0, ptr %2, align 4
  %id.i = getelementptr inbounds %struct.perf_event, ptr %spec.select.i, i32 0, i32 58
  %71 = ptrtoint ptr %id.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %id.i, align 8
  %73 = ptrtoint ptr %4 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %72, ptr %4, align 8
  %call.i.i211.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lost34.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !55
  tail call void @llvm.prefetch.p0(ptr %lost34.i, i32 1, i32 3, i32 1) #11
  %74 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %lost34.i) #11, !srcloc !56
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %74, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !57
  %conv132.i = sext i32 %asmresult.i.i.i.i to i64
  %75 = ptrtoint ptr %5 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %conv132.i, ptr %5, align 8
  call void @perf_event_header__init_id(ptr noundef nonnull %lost_event.i, ptr noundef %data, ptr noundef %spec.select.i) #11
  %call135.i = call i32 @perf_output_copy(ptr noundef %handle, ptr noundef nonnull %lost_event.i, i32 noundef 24) #11
  call void @perf_event__output_id_sample(ptr noundef %spec.select.i, ptr noundef %handle, ptr noundef %data) #11
  br label %__perf_output_begin.exit

fail.i:                                           ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i212.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lost34.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %lost34.i, i32 1, i32 3, i32 1) #11
  %76 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %lost34.i, ptr %lost34.i, i32 1, ptr elementtype(i32) %lost34.i) #11, !srcloc !50
  tail call fastcc void @perf_output_put_handle(ptr noundef %handle) #11
  br label %out.i

out.i:                                            ; preds = %fail.i, %if.then29.i, %if.then27.i.out.i_crit_edge, %do.end12.i.out.i_crit_edge
  tail call fastcc void @rcu_read_unlock() #11
  br label %__perf_output_begin.exit

__perf_output_begin.exit:                         ; preds = %out.i, %if.then124.i, %if.end106.i.__perf_output_begin.exit_crit_edge
  %retval.0.i = phi i32 [ -28, %out.i ], [ 0, %if.then124.i ], [ 0, %if.end106.i.__perf_output_begin.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %lost_event.i) #11
  ret i32 %retval.0.i
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @perf_output_copy(ptr nocapture noundef %handle, ptr nocapture noundef readonly %buf, i32 noundef %len) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %size1.i = getelementptr inbounds %struct.perf_output_handle, ptr %handle, i32 0, i32 3
  %0 = getelementptr inbounds %struct.perf_output_handle, ptr %handle, i32 0, i32 5
  %rb7.i = getelementptr inbounds %struct.perf_output_handle, ptr %handle, i32 0, i32 1
  %page.i = getelementptr inbounds %struct.perf_output_handle, ptr %handle, i32 0, i32 6
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %entry
  %len.addr.0.i = phi i32 [ %len, %entry ], [ %sub2.i, %do.cond.i.do.body.i_crit_edge ]
  %buf.addr.0.i = phi ptr [ %buf, %entry ], [ %add.ptr3.i, %do.cond.i.do.body.i_crit_edge ]
  %1 = ptrtoint ptr %size1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %size1.i, align 4
  %3 = tail call i32 @llvm.umin.i32(i32 %2, i32 %len.addr.0.i) #11
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %0, align 8
  %6 = call ptr @memcpy(ptr %5, ptr %buf.addr.0.i, i32 %3)
  %sub2.i = sub i32 %len.addr.0.i, %3
  %7 = load ptr, ptr %0, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 %3
  store ptr %add.ptr.i, ptr %0, align 8
  %add.ptr3.i = getelementptr i8, ptr %buf.addr.0.i, i32 %3
  %8 = ptrtoint ptr %size1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size1.i, align 4
  %sub5.i = sub i32 %9, %3
  store i32 %sub5.i, ptr %size1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %3)
  %tobool.not.i = icmp eq i32 %9, %3
  br i1 %tobool.not.i, label %if.then.i, label %do.body.i.do.cond.i_crit_edge

do.body.i.do.cond.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond.i

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %rb7.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rb7.i, align 4
  %12 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %page.i, align 4
  %inc.i = add i32 %13, 1
  store i32 %inc.i, ptr %page.i, align 4
  %nr_pages.i = getelementptr inbounds %struct.perf_buffer, ptr %11, i32 0, i32 4
  %14 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_pages.i, align 4
  %sub8.i = add i32 %15, -1
  %and.i = and i32 %sub8.i, %inc.i
  store i32 %and.i, ptr %page.i, align 4
  %arrayidx.i = getelementptr %struct.perf_buffer, ptr %11, i32 0, i32 34, i32 %and.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %0, align 8
  %page_order.i.i = getelementptr inbounds %struct.perf_buffer, ptr %11, i32 0, i32 3
  %19 = ptrtoint ptr %page_order.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %page_order.i.i, align 4
  %shl.i = shl i32 4096, %20
  %21 = ptrtoint ptr %size1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shl.i, ptr %size1.i, align 4
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.then.i, %do.body.i.do.cond.i_crit_edge
  %tobool13.not.i = icmp eq i32 %sub2.i, 0
  br i1 %tobool13.not.i, label %__output_copy.exit, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

__output_copy.exit:                               ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  ret i32 0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @perf_output_skip(ptr nocapture noundef %handle, i32 noundef %len) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %size1.i = getelementptr inbounds %struct.perf_output_handle, ptr %handle, i32 0, i32 3
  %0 = getelementptr inbounds %struct.perf_output_handle, ptr %handle, i32 0, i32 5
  %rb7.i = getelementptr inbounds %struct.perf_output_handle, ptr %handle, i32 0, i32 1
  %page.i = getelementptr inbounds %struct.perf_output_handle, ptr %handle, i32 0, i32 6
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %entry
  %len.addr.0.i = phi i32 [ %len, %entry ], [ %sub2.i, %do.cond.i.do.body.i_crit_edge ]
  %1 = ptrtoint ptr %size1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %size1.i, align 4
  %3 = tail call i32 @llvm.umin.i32(i32 %2, i32 %len.addr.0.i) #11
  %sub2.i = sub i32 %len.addr.0.i, %3
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %0, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 %3
  store ptr %add.ptr.i, ptr %0, align 8
  %sub5.i = sub i32 %2, %3
  %6 = ptrtoint ptr %size1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub5.i, ptr %size1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %len.addr.0.i)
  %tobool.not.not.i = icmp ugt i32 %2, %len.addr.0.i
  br i1 %tobool.not.not.i, label %do.body.i.do.cond.i_crit_edge, label %if.then.i

do.body.i.do.cond.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond.i

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %rb7.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rb7.i, align 4
  %9 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %page.i, align 4
  %inc.i = add i32 %10, 1
  store i32 %inc.i, ptr %page.i, align 4
  %nr_pages.i = getelementptr inbounds %struct.perf_buffer, ptr %8, i32 0, i32 4
  %11 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_pages.i, align 4
  %sub8.i = add i32 %12, -1
  %and.i = and i32 %sub8.i, %inc.i
  store i32 %and.i, ptr %page.i, align 4
  %arrayidx.i = getelementptr %struct.perf_buffer, ptr %8, i32 0, i32 34, i32 %and.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %0, align 8
  %page_order.i.i = getelementptr inbounds %struct.perf_buffer, ptr %8, i32 0, i32 3
  %16 = ptrtoint ptr %page_order.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %page_order.i.i, align 4
  %shl.i = shl i32 4096, %17
  %18 = ptrtoint ptr %size1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shl.i, ptr %size1.i, align 4
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.then.i, %do.body.i.do.cond.i_crit_edge
  %tobool13.not.i = icmp eq i32 %sub2.i, 0
  br i1 %tobool13.not.i, label %__output_skip.exit, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

__output_skip.exit:                               ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @perf_output_end(ptr nocapture noundef readonly %handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @perf_output_put_handle(ptr noundef %handle)
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_unlock.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_unlock.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, %entry.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !58
  %0 = tail call i32 @llvm.read_register.i32(metadata !37) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @perf_output_put_handle(ptr nocapture noundef readonly %handle) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rb1 = getelementptr inbounds %struct.perf_output_handle, ptr %handle, i32 0, i32 1
  %0 = ptrtoint ptr %rb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rb1, align 4
  %nest2 = getelementptr inbounds %struct.perf_buffer, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %nest2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %nest2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp ugt i32 %3, 1
  br i1 %cmp, label %do.body7, label %again.preheader

again.preheader:                                  ; preds = %entry
  %head13 = getelementptr inbounds %struct.perf_buffer, ptr %1, i32 0, i32 8
  %user_page = getelementptr inbounds %struct.perf_buffer, ptr %1, i32 0, i32 33
  br label %again

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sub = add i32 %3, -1
  %4 = ptrtoint ptr %nest2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 %sub, ptr %nest2, align 4
  br label %do.body64

again:                                            ; preds = %do.body50, %again.preheader
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !59
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %head13, i32 noundef 4) #11
  %5 = ptrtoint ptr %head13 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %head13, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !60
  %conv = zext i32 %6 to i64
  %7 = ptrtoint ptr %user_page to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %user_page, align 4
  %data_head = getelementptr inbounds %struct.perf_event_mmap_page, ptr %8, i32 0, i32 18
  %9 = ptrtoint ptr %data_head to i32
  call void @__asan_store8_noabort(i32 %9)
  store volatile i64 %conv, ptr %data_head, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !61
  %10 = ptrtoint ptr %nest2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 0, ptr %nest2, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !62
  %call.i.i78 = tail call zeroext i1 @__kasan_check_read(ptr noundef %head13, i32 noundef 4) #11
  %11 = ptrtoint ptr %head13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %head13, align 4
  %cmp42.not = icmp eq i32 %6, %12
  br i1 %cmp42.not, label %if.end56, label %do.body50, !prof !49

do.body50:                                        ; preds = %again
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %nest2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 1, ptr %nest2, align 4
  br label %again

if.end56:                                         ; preds = %again
  %wakeup = getelementptr inbounds %struct.perf_output_handle, ptr %handle, i32 0, i32 2
  %14 = ptrtoint ptr %wakeup to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wakeup, align 8
  %wakeup57 = getelementptr inbounds %struct.perf_buffer, ptr %1, i32 0, i32 11
  %call.i.i79 = tail call zeroext i1 @__kasan_check_read(ptr noundef %wakeup57, i32 noundef 4) #11
  %16 = ptrtoint ptr %wakeup57 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %wakeup57, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp60.not = icmp eq i32 %15, %17
  br i1 %cmp60.not, label %if.end56.do.body64_crit_edge, label %if.then62

if.end56.do.body64_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body64

if.then62:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %rb1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rb1, align 4
  %poll.i = getelementptr inbounds %struct.perf_buffer, ptr %19, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %poll.i, i32 noundef 4) #11
  %20 = ptrtoint ptr %poll.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 1, ptr %poll.i, align 4
  %21 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %handle, align 8
  %pending_wakeup.i = getelementptr inbounds %struct.perf_event, ptr %22, i32 0, i32 45
  %23 = ptrtoint ptr %pending_wakeup.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %pending_wakeup.i, align 8
  %24 = load ptr, ptr %handle, align 8
  %pending.i = getelementptr inbounds %struct.perf_event, ptr %24, i32 0, i32 49
  %call.i = tail call zeroext i1 @irq_work_queue(ptr noundef %pending.i) #11
  br label %do.body64

do.body64:                                        ; preds = %if.then62, %if.end56.do.body64_crit_edge, %do.body7
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !63
  %25 = tail call i32 @llvm.read_register.i32(metadata !37) #11
  %and.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %28, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !58
  %0 = tail call i32 @llvm.read_register.i32(metadata !37) #11
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @perf_aux_output_flag(ptr nocapture noundef %handle, i64 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i64 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end38.critedge, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b42 = load i1, ptr @perf_aux_output_flag.__already_done, align 1
  br i1 %.b42, label %land.rhs.return_crit_edge, label %if.then, !prof !49

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @perf_aux_output_flag.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 340, i32 noundef 9, ptr noundef null) #11
  br label %return

if.end38.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %aux_flags = getelementptr inbounds %struct.perf_output_handle, ptr %handle, i32 0, i32 4
  %0 = ptrtoint ptr %aux_flags to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %aux_flags, align 8
  %or = or i64 %1, %flags
  store i64 %or, ptr %aux_flags, align 8
  br label %return

return:                                           ; preds = %if.end38.critedge, %if.then, %land.rhs.return_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @perf_aux_output_begin(ptr nocapture noundef %handle, ptr noundef %event) #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 32
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %tobool.not = icmp eq ptr %1, null
  %spec.select = select i1 %tobool.not, ptr %event, ptr %1
  %call = tail call ptr @ring_buffer_get(ptr noundef %spec.select) #11
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %entry.cleanup_crit_edge, label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %entry
  %aux_nr_pages.i = getelementptr inbounds %struct.perf_buffer, ptr %call, i32 0, i32 24
  %2 = ptrtoint ptr %aux_nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %aux_nr_pages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not = icmp eq i32 %3, 0
  br i1 %tobool.i.not, label %if.end4.err_crit_edge, label %if.end7

if.end4.err_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end7:                                          ; preds = %if.end4
  %aux_mmap_count = getelementptr inbounds %struct.perf_buffer, ptr %call, i32 0, i32 26
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %aux_mmap_count, i32 noundef 4) #11
  %4 = ptrtoint ptr %aux_mmap_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %aux_mmap_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool9.not = icmp eq i32 %5, 0
  br i1 %tobool9.not, label %if.end7.err_crit_edge, label %if.end11

if.end7.err_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end11:                                         ; preds = %if.end7
  %aux_refcount = getelementptr inbounds %struct.perf_buffer, ptr %call, i32 0, i32 29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #11
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %aux_refcount, i32 noundef 4) #11
  %6 = ptrtoint ptr %aux_refcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %aux_refcount, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %if.end11
  %8 = phi i32 [ %7, %if.end11 ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %9 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %8, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %aux_refcount, i32 noundef 4) #11
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #11
  %10 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %aux_refcount, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %12 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %aux_refcount, ptr %aux_refcount, i32 %11, i32 %add.i.i.i, ptr elementtype(i32) %aux_refcount) #11, !srcloc !53
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %11
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !49

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %13 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %14, 1
  %15 = or i32 %add5.i.i.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !49

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %aux_refcount, i32 noundef 0) #11
  %16 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %17 = phi i32 [ %14, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool12.i.i.i.not = icmp eq i32 %17, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #11
  br i1 %tobool12.i.i.i.not, label %refcount_inc_not_zero.exit.err_crit_edge, label %do.end

refcount_inc_not_zero.exit.err_crit_edge:         ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

do.end:                                           ; preds = %refcount_inc_not_zero.exit
  %aux_nest = getelementptr inbounds %struct.perf_buffer, ptr %call, i32 0, i32 21
  %18 = ptrtoint ptr %aux_nest to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %aux_nest, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool15.not = icmp eq i32 %19, 0
  br i1 %tobool15.not, label %do.body64.critedge, label %land.rhs

land.rhs:                                         ; preds = %do.end
  %.b149 = load i1, ptr @perf_aux_output_begin.__already_done, align 1
  br i1 %.b149, label %land.rhs.err_put_crit_edge, label %if.then23, !prof !49

land.rhs.err_put_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_put

if.then23:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @perf_aux_output_begin.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 403, i32 noundef 9, ptr noundef null) #11
  br label %err_put

do.body64.critedge:                               ; preds = %do.end
  %20 = ptrtoint ptr %aux_nest to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 1, ptr %aux_nest, align 4
  %aux_head70 = getelementptr inbounds %struct.perf_buffer, ptr %call, i32 0, i32 20
  %21 = ptrtoint ptr %aux_head70 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %aux_head70, align 4
  %rb71 = getelementptr inbounds %struct.perf_output_handle, ptr %handle, i32 0, i32 1
  %23 = ptrtoint ptr %rb71 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call, ptr %rb71, align 4
  %24 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %event, ptr %handle, align 8
  %25 = getelementptr inbounds %struct.perf_output_handle, ptr %handle, i32 0, i32 5
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %22, ptr %25, align 8
  %size = getelementptr inbounds %struct.perf_output_handle, ptr %handle, i32 0, i32 3
  %27 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %size, align 4
  %aux_flags = getelementptr inbounds %struct.perf_output_handle, ptr %handle, i32 0, i32 4
  %28 = ptrtoint ptr %aux_flags to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 0, ptr %aux_flags, align 8
  %aux_overwrite = getelementptr inbounds %struct.perf_buffer, ptr %call, i32 0, i32 25
  %29 = ptrtoint ptr %aux_overwrite to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %aux_overwrite, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool73.not = icmp eq i32 %30, 0
  br i1 %tobool73.not, label %do.end77, label %do.body64.critedge.if.end105_crit_edge

do.body64.critedge.if.end105_crit_edge:           ; preds = %do.body64.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end105

do.end77:                                         ; preds = %do.body64.critedge
  %user_page = getelementptr inbounds %struct.perf_buffer, ptr %call, i32 0, i32 33
  %31 = ptrtoint ptr %user_page to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %user_page, align 4
  %aux_tail79 = getelementptr inbounds %struct.perf_event_mmap_page, ptr %32, i32 0, i32 23
  %33 = ptrtoint ptr %aux_tail79 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load volatile i64, ptr %aux_tail79, align 8
  %conv = trunc i64 %34 to i32
  %aux_wakeup = getelementptr inbounds %struct.perf_buffer, ptr %call, i32 0, i32 22
  %35 = ptrtoint ptr %aux_wakeup to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %aux_wakeup, align 4
  %aux_watermark = getelementptr inbounds %struct.perf_buffer, ptr %call, i32 0, i32 14
  %37 = ptrtoint ptr %aux_watermark to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %aux_watermark, align 4
  %add80 = add i32 %38, %36
  %wakeup = getelementptr inbounds %struct.perf_output_handle, ptr %handle, i32 0, i32 2
  %39 = ptrtoint ptr %wakeup to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add80, ptr %wakeup, align 8
  %sub = sub i32 %22, %conv
  %40 = ptrtoint ptr %aux_nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %aux_nr_pages.i, align 4
  %shl.i = shl i32 %41, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %shl.i)
  %cmp = icmp ult i32 %sub, %shl.i
  br i1 %cmp, label %if.then83, label %if.end89thread-pre-split

if.then83:                                        ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #13
  %add84.neg = xor i32 %22, -1
  %sub85 = add i32 %conv, %add84.neg
  %sub87 = add i32 %shl.i, -1
  %and = and i32 %sub87, %sub85
  %42 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %and, ptr %size, align 4
  br label %if.end89

if.end89thread-pre-split:                         ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pr155 = load i32, ptr %size, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.end89thread-pre-split, %if.then83
  %44 = phi i32 [ %.pr155, %if.end89thread-pre-split ], [ %and, %if.then83 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool91.not = icmp eq i32 %44, 0
  br i1 %tobool91.not, label %if.then92, label %if.end89.if.end105_crit_edge

if.end89.if.end105_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end105

if.then92:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #13
  %45 = call i32 @llvm.read_register.i32(metadata !37) #11
  %and.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cpu, align 4
  %pending_disable = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 47
  %49 = ptrtoint ptr %pending_disable to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %pending_disable, align 8
  call fastcc void @perf_output_wakeup(ptr noundef %handle)
  %50 = ptrtoint ptr %aux_nest to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile i32 0, ptr %aux_nest, align 4
  br label %err_put

if.end105:                                        ; preds = %if.end89.if.end105_crit_edge, %do.body64.critedge.if.end105_crit_edge
  %aux_priv = getelementptr inbounds %struct.perf_buffer, ptr %call, i32 0, i32 32
  %51 = ptrtoint ptr %aux_priv to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %aux_priv, align 4
  br label %cleanup

err_put:                                          ; preds = %if.then92, %if.then23, %land.rhs.err_put_crit_edge
  %call.i.i.i.i.i.i154 = call zeroext i1 @__kasan_check_write(ptr noundef %aux_refcount, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !64
  call void @llvm.prefetch.p0(ptr %aux_refcount, i32 1, i32 3, i32 1) #11
  %53 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %aux_refcount, ptr %aux_refcount, i32 1, ptr elementtype(i32) %aux_refcount) #11, !srcloc !65
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %err_put
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.err_crit_edge, label %if.then10.i.i.i.i, !prof !49

if.end5.i.i.i.i.err_crit_edge:                    ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %aux_refcount, i32 noundef 3) #11
  br label %err

if.then.i:                                        ; preds = %err_put
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !66
  call fastcc void @__rb_free_aux(ptr noundef nonnull %call) #11
  br label %err

err:                                              ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.err_crit_edge, %refcount_inc_not_zero.exit.err_crit_edge, %if.end7.err_crit_edge, %if.end4.err_crit_edge
  call void @ring_buffer_put(ptr noundef nonnull %call) #11
  %54 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %handle, align 8
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end105, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %err ], [ %52, %if.end105 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ring_buffer_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @perf_output_wakeup(ptr nocapture noundef readonly %handle) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rb = getelementptr inbounds %struct.perf_output_handle, ptr %handle, i32 0, i32 1
  %0 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rb, align 4
  %poll = getelementptr inbounds %struct.perf_buffer, ptr %1, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %poll, i32 noundef 4) #11
  %2 = ptrtoint ptr %poll to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %poll, align 4
  %3 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %handle, align 8
  %pending_wakeup = getelementptr inbounds %struct.perf_event, ptr %4, i32 0, i32 45
  %5 = ptrtoint ptr %pending_wakeup to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %pending_wakeup, align 8
  %6 = load ptr, ptr %handle, align 8
  %pending = getelementptr inbounds %struct.perf_event, ptr %6, i32 0, i32 49
  %call = tail call zeroext i1 @irq_work_queue(ptr noundef %pending) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rb_free_aux(ptr noundef %rb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %aux_refcount = getelementptr inbounds %struct.perf_buffer, ptr %rb, i32 0, i32 29
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %aux_refcount, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !64
  tail call void @llvm.prefetch.p0(ptr %aux_refcount, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %aux_refcount, ptr %aux_refcount, i32 1, ptr elementtype(i32) %aux_refcount) #11, !srcloc !65
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !49

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %aux_refcount, i32 noundef 3) #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call fastcc void @__rb_free_aux(ptr noundef %rb)
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ring_buffer_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @perf_aux_output_end(ptr nocapture noundef %handle, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %aux_flags = getelementptr inbounds %struct.perf_output_handle, ptr %handle, i32 0, i32 4
  %0 = ptrtoint ptr %aux_flags to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %aux_flags, align 8
  %2 = and i64 %1, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %.not = icmp eq i64 %2, 0
  %rb2 = getelementptr inbounds %struct.perf_output_handle, ptr %handle, i32 0, i32 1
  %3 = ptrtoint ptr %rb2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rb2, align 4
  %aux_overwrite = getelementptr inbounds %struct.perf_buffer, ptr %4, i32 0, i32 25
  %5 = ptrtoint ptr %aux_overwrite to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %aux_overwrite, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %or = or i64 %1, 2
  %7 = ptrtoint ptr %aux_flags to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %or, ptr %aux_flags, align 8
  %8 = getelementptr inbounds %struct.perf_output_handle, ptr %handle, i32 0, i32 5
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %aux_head5 = getelementptr inbounds %struct.perf_buffer, ptr %4, i32 0, i32 20
  %11 = ptrtoint ptr %aux_head5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %aux_head5, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %and7 = and i64 %1, -3
  %12 = ptrtoint ptr %aux_flags to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %and7, ptr %aux_flags, align 8
  %aux_head8 = getelementptr inbounds %struct.perf_buffer, ptr %4, i32 0, i32 20
  %13 = ptrtoint ptr %aux_head8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %aux_head8, align 4
  %add = add i32 %14, %size
  store i32 %add, ptr %aux_head8, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %aux_head.0 = phi i32 [ %10, %if.then ], [ %14, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool10.not = icmp eq i32 %size, 0
  br i1 %tobool10.not, label %lor.lhs.false, label %if.end.if.then14_crit_edge

if.end.if.then14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

lor.lhs.false:                                    ; preds = %if.end
  %15 = ptrtoint ptr %aux_flags to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %aux_flags, align 8
  %and12 = and i64 %16, -3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and12)
  %tobool13.not = icmp eq i64 %and12, 0
  br i1 %tobool13.not, label %lor.lhs.false.do.body18_crit_edge, label %lor.lhs.false.if.then14_crit_edge

lor.lhs.false.if.then14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

lor.lhs.false.do.body18_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body18

if.then14:                                        ; preds = %lor.lhs.false.if.then14_crit_edge, %if.end.if.then14_crit_edge
  %17 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %handle, align 8
  %19 = ptrtoint ptr %aux_flags to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %aux_flags, align 8
  tail call void @perf_event_aux_event(ptr noundef %18, i32 noundef %aux_head.0, i32 noundef %size, i64 noundef %20) #11
  br label %do.body18

do.body18:                                        ; preds = %if.then14, %lor.lhs.false.do.body18_crit_edge
  %aux_head19 = getelementptr inbounds %struct.perf_buffer, ptr %4, i32 0, i32 20
  %21 = ptrtoint ptr %aux_head19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %aux_head19, align 4
  %conv = sext i32 %22 to i64
  %user_page = getelementptr inbounds %struct.perf_buffer, ptr %4, i32 0, i32 33
  %23 = ptrtoint ptr %user_page to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %user_page, align 4
  %aux_head20 = getelementptr inbounds %struct.perf_event_mmap_page, ptr %24, i32 0, i32 22
  %25 = ptrtoint ptr %aux_head20 to i32
  call void @__asan_store8_noabort(i32 %25)
  store volatile i64 %conv, ptr %aux_head20, align 8
  %26 = ptrtoint ptr %aux_overwrite to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %aux_overwrite, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body18.rb_need_aux_wakeup.exit_crit_edge

do.body18.rb_need_aux_wakeup.exit_crit_edge:      ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #13
  br label %rb_need_aux_wakeup.exit

if.end.i:                                         ; preds = %do.body18
  %28 = ptrtoint ptr %aux_head19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %aux_head19, align 4
  %aux_wakeup.i = getelementptr inbounds %struct.perf_buffer, ptr %4, i32 0, i32 22
  %30 = ptrtoint ptr %aux_wakeup.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %aux_wakeup.i, align 4
  %sub.i = sub i32 %29, %31
  %aux_watermark.i = getelementptr inbounds %struct.perf_buffer, ptr %4, i32 0, i32 14
  %32 = ptrtoint ptr %aux_watermark.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %aux_watermark.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %33)
  %cmp.not.i = icmp slt i32 %sub.i, %33
  br i1 %cmp.not.i, label %if.end.i.rb_need_aux_wakeup.exit_crit_edge, label %rb_need_aux_wakeup.exit.thread

if.end.i.rb_need_aux_wakeup.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rb_need_aux_wakeup.exit

rb_need_aux_wakeup.exit.thread:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %rem.i = srem i32 %29, %33
  %sub4.i = sub i32 %29, %rem.i
  %34 = ptrtoint ptr %aux_wakeup.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub4.i, ptr %aux_wakeup.i, align 4
  br label %if.then28

rb_need_aux_wakeup.exit:                          ; preds = %if.end.i.rb_need_aux_wakeup.exit_crit_edge, %do.body18.rb_need_aux_wakeup.exit_crit_edge
  br i1 %.not, label %rb_need_aux_wakeup.exit.if.end36_crit_edge, label %rb_need_aux_wakeup.exit.if.then28_crit_edge

rb_need_aux_wakeup.exit.if.then28_crit_edge:      ; preds = %rb_need_aux_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then28

rb_need_aux_wakeup.exit.if.end36_crit_edge:       ; preds = %rb_need_aux_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then28:                                        ; preds = %rb_need_aux_wakeup.exit.if.then28_crit_edge, %rb_need_aux_wakeup.exit.thread
  %35 = ptrtoint ptr %aux_flags to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %aux_flags, align 8
  %and30 = and i64 %36, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and30)
  %tobool31.not = icmp eq i64 %and30, 0
  br i1 %tobool31.not, label %if.then28.if.end35_crit_edge, label %if.then32

if.then28.if.end35_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then32:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  %37 = tail call i32 @llvm.read_register.i32(metadata !37) #11
  %and.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cpu, align 4
  %41 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %handle, align 8
  %pending_disable = getelementptr inbounds %struct.perf_event, ptr %42, i32 0, i32 47
  %43 = ptrtoint ptr %pending_disable to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %40, ptr %pending_disable, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.then28.if.end35_crit_edge
  %44 = ptrtoint ptr %rb2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rb2, align 4
  %poll.i = getelementptr inbounds %struct.perf_buffer, ptr %45, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %poll.i, i32 noundef 4) #11
  %46 = ptrtoint ptr %poll.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile i32 1, ptr %poll.i, align 4
  %47 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %handle, align 8
  %pending_wakeup.i = getelementptr inbounds %struct.perf_event, ptr %48, i32 0, i32 45
  %49 = ptrtoint ptr %pending_wakeup.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %pending_wakeup.i, align 8
  %50 = load ptr, ptr %handle, align 8
  %pending.i = getelementptr inbounds %struct.perf_event, ptr %50, i32 0, i32 49
  %call.i = tail call zeroext i1 @irq_work_queue(ptr noundef %pending.i) #11
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %rb_need_aux_wakeup.exit.if.end36_crit_edge
  %51 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %handle, align 8
  %aux_nest = getelementptr inbounds %struct.perf_buffer, ptr %4, i32 0, i32 21
  %52 = ptrtoint ptr %aux_nest to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile i32 0, ptr %aux_nest, align 4
  %aux_refcount.i = getelementptr inbounds %struct.perf_buffer, ptr %4, i32 0, i32 29
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %aux_refcount.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !64
  tail call void @llvm.prefetch.p0(ptr %aux_refcount.i, i32 1, i32 3, i32 1) #11
  %53 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %aux_refcount.i, ptr %aux_refcount.i, i32 1, ptr elementtype(i32) %aux_refcount.i) #11, !srcloc !65
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.rb_free_aux.exit_crit_edge, label %if.then10.i.i.i.i, !prof !49

if.end5.i.i.i.i.rb_free_aux.exit_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rb_free_aux.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %aux_refcount.i, i32 noundef 3) #11
  br label %rb_free_aux.exit

if.then.i:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call fastcc void @__rb_free_aux(ptr noundef %4) #11
  br label %rb_free_aux.exit

rb_free_aux.exit:                                 ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.rb_free_aux.exit_crit_edge
  tail call void @ring_buffer_put(ptr noundef %4) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_event_aux_event(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @perf_aux_output_skip(ptr nocapture noundef %handle, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rb1 = getelementptr inbounds %struct.perf_output_handle, ptr %handle, i32 0, i32 1
  %0 = ptrtoint ptr %rb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rb1, align 4
  %size2 = getelementptr inbounds %struct.perf_output_handle, ptr %handle, i32 0, i32 3
  %2 = ptrtoint ptr %size2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %size)
  %cmp = icmp ult i32 %3, %size
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %aux_head = getelementptr inbounds %struct.perf_buffer, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %aux_head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %aux_head, align 4
  %add = add i32 %5, %size
  store i32 %add, ptr %aux_head, align 4
  %conv = sext i32 %add to i64
  %user_page = getelementptr inbounds %struct.perf_buffer, ptr %1, i32 0, i32 33
  %6 = ptrtoint ptr %user_page to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_page, align 4
  %aux_head6 = getelementptr inbounds %struct.perf_event_mmap_page, ptr %7, i32 0, i32 22
  %8 = ptrtoint ptr %aux_head6 to i32
  call void @__asan_store8_noabort(i32 %8)
  store volatile i64 %conv, ptr %aux_head6, align 8
  %aux_overwrite.i = getelementptr inbounds %struct.perf_buffer, ptr %1, i32 0, i32 25
  %9 = ptrtoint ptr %aux_overwrite.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %aux_overwrite.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end.i:                                         ; preds = %if.end
  %11 = ptrtoint ptr %aux_head to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %aux_head, align 4
  %aux_wakeup.i = getelementptr inbounds %struct.perf_buffer, ptr %1, i32 0, i32 22
  %13 = ptrtoint ptr %aux_wakeup.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %aux_wakeup.i, align 4
  %sub.i = sub i32 %12, %14
  %aux_watermark.i = getelementptr inbounds %struct.perf_buffer, ptr %1, i32 0, i32 14
  %15 = ptrtoint ptr %aux_watermark.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %aux_watermark.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %16)
  %cmp.not.i = icmp slt i32 %sub.i, %16
  br i1 %cmp.not.i, label %if.end.i.if.end13_crit_edge, label %if.then11

if.end.i.if.end13_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then11:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %rem.i = srem i32 %12, %16
  %sub4.i = sub i32 %12, %rem.i
  %17 = ptrtoint ptr %aux_wakeup.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub4.i, ptr %aux_wakeup.i, align 4
  %18 = ptrtoint ptr %rb1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rb1, align 4
  %poll.i = getelementptr inbounds %struct.perf_buffer, ptr %19, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %poll.i, i32 noundef 4) #11
  %20 = ptrtoint ptr %poll.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 1, ptr %poll.i, align 4
  %21 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %handle, align 8
  %pending_wakeup.i = getelementptr inbounds %struct.perf_event, ptr %22, i32 0, i32 45
  %23 = ptrtoint ptr %pending_wakeup.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %pending_wakeup.i, align 8
  %24 = load ptr, ptr %handle, align 8
  %pending.i = getelementptr inbounds %struct.perf_event, ptr %24, i32 0, i32 49
  %call.i = tail call zeroext i1 @irq_work_queue(ptr noundef %pending.i) #11
  %25 = ptrtoint ptr %aux_wakeup.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %aux_wakeup.i, align 4
  %27 = ptrtoint ptr %aux_watermark.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %aux_watermark.i, align 4
  %add12 = add i32 %28, %26
  %wakeup = getelementptr inbounds %struct.perf_output_handle, ptr %handle, i32 0, i32 2
  %29 = ptrtoint ptr %wakeup to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add12, ptr %wakeup, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end.i.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %30 = ptrtoint ptr %aux_head to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %aux_head, align 4
  %32 = getelementptr inbounds %struct.perf_output_handle, ptr %handle, i32 0, i32 5
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %31, ptr %32, align 8
  %34 = ptrtoint ptr %size2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size2, align 4
  %sub = sub i32 %35, %size
  store i32 %sub, ptr %size2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ -28, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @perf_get_aux(ptr nocapture noundef readonly %handle) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %rb = getelementptr inbounds %struct.perf_output_handle, ptr %handle, i32 0, i32 1
  %2 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rb, align 4
  %aux_priv = getelementptr inbounds %struct.perf_buffer, ptr %3, i32 0, i32 32
  %4 = ptrtoint ptr %aux_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aux_priv, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ %5, %if.end ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @perf_output_copy_aux(ptr nocapture noundef readonly %aux_handle, ptr nocapture noundef %handle, i32 noundef %from, i32 noundef %to) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rb1 = getelementptr inbounds %struct.perf_output_handle, ptr %aux_handle, i32 0, i32 1
  %0 = ptrtoint ptr %rb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rb1, align 4
  %aux_nr_pages = getelementptr inbounds %struct.perf_buffer, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %aux_nr_pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %aux_nr_pages, align 4
  %shl = shl i32 %3, 12
  %sub = add i32 %shl, -1
  %and = and i32 %sub, %from
  %and5 = and i32 %sub, %to
  %aux_pages = getelementptr inbounds %struct.perf_buffer, ptr %1, i32 0, i32 31
  %size1.i.i = getelementptr inbounds %struct.perf_output_handle, ptr %handle, i32 0, i32 3
  %4 = getelementptr inbounds %struct.perf_output_handle, ptr %handle, i32 0, i32 5
  %rb7.i.i = getelementptr inbounds %struct.perf_output_handle, ptr %handle, i32 0, i32 1
  %page.i.i = getelementptr inbounds %struct.perf_output_handle, ptr %handle, i32 0, i32 6
  br label %do.body

do.body:                                          ; preds = %if.end15.do.body_crit_edge, %entry
  %from.addr.0 = phi i32 [ %and, %entry ], [ %and20, %if.end15.do.body_crit_edge ]
  %len.0 = phi i32 [ 0, %entry ], [ %add, %if.end15.do.body_crit_edge ]
  %and6 = and i32 %from.addr.0, 4095
  %sub7 = sub nuw nsw i32 4096, %and6
  call void @__sanitizer_cov_trace_cmp4(i32 %and5, i32 %from.addr.0)
  %cmp = icmp ugt i32 %and5, %from.addr.0
  %sub8 = sub i32 %and5, %from.addr.0
  %5 = tail call i32 @llvm.umin.i32(i32 %sub7, i32 %sub8)
  %tocopy.0 = select i1 %cmp, i32 %5, i32 %sub7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tocopy.0)
  %tobool.not = icmp eq i32 %tocopy.0, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.end11

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %do.body
  %6 = ptrtoint ptr %aux_pages to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aux_pages, align 4
  %shr = lshr i32 %from.addr.0, 12
  %arrayidx = getelementptr ptr, ptr %7, i32 %shr
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %and6
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond.i.i.do.body.i.i_crit_edge, %if.end11
  %len.addr.0.i.i = phi i32 [ %tocopy.0, %if.end11 ], [ %sub2.i.i, %do.cond.i.i.do.body.i.i_crit_edge ]
  %buf.addr.0.i.i = phi ptr [ %add.ptr, %if.end11 ], [ %add.ptr3.i.i, %do.cond.i.i.do.body.i.i_crit_edge ]
  %10 = ptrtoint ptr %size1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size1.i.i, align 4
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 %len.addr.0.i.i) #11
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %4, align 8
  %15 = call ptr @memcpy(ptr %14, ptr %buf.addr.0.i.i, i32 %12)
  %sub2.i.i = sub i32 %len.addr.0.i.i, %12
  %16 = load ptr, ptr %4, align 8
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 %12
  store ptr %add.ptr.i.i, ptr %4, align 8
  %add.ptr3.i.i = getelementptr i8, ptr %buf.addr.0.i.i, i32 %12
  %17 = ptrtoint ptr %size1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size1.i.i, align 4
  %sub5.i.i = sub i32 %18, %12
  store i32 %sub5.i.i, ptr %size1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %12)
  %tobool.not.i.i = icmp eq i32 %18, %12
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body.i.i.do.cond.i.i_crit_edge

do.body.i.i.do.cond.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond.i.i

if.then.i.i:                                      ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %rb7.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rb7.i.i, align 4
  %21 = ptrtoint ptr %page.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %page.i.i, align 4
  %inc.i.i = add i32 %22, 1
  store i32 %inc.i.i, ptr %page.i.i, align 4
  %nr_pages.i.i = getelementptr inbounds %struct.perf_buffer, ptr %20, i32 0, i32 4
  %23 = ptrtoint ptr %nr_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nr_pages.i.i, align 4
  %sub8.i.i = add i32 %24, -1
  %and.i.i = and i32 %sub8.i.i, %inc.i.i
  store i32 %and.i.i, ptr %page.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.perf_buffer, ptr %20, i32 0, i32 34, i32 %and.i.i
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i.i, align 4
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %4, align 8
  %page_order.i.i.i = getelementptr inbounds %struct.perf_buffer, ptr %20, i32 0, i32 3
  %28 = ptrtoint ptr %page_order.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %page_order.i.i.i, align 4
  %shl.i.i = shl i32 4096, %29
  %30 = ptrtoint ptr %size1.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %shl.i.i, ptr %size1.i.i, align 4
  br label %do.cond.i.i

do.cond.i.i:                                      ; preds = %if.then.i.i, %do.body.i.i.do.cond.i.i_crit_edge
  %tobool13.not.i.i = icmp eq i32 %sub2.i.i, 0
  br i1 %tobool13.not.i.i, label %if.end15, label %do.cond.i.i.do.body.i.i_crit_edge

do.cond.i.i.do.body.i.i_crit_edge:                ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i

if.end15:                                         ; preds = %do.cond.i.i
  %add = add i32 %tocopy.0, %len.0
  %add16 = add i32 %tocopy.0, %from.addr.0
  %31 = ptrtoint ptr %aux_nr_pages to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %aux_nr_pages, align 4
  %shl18 = shl i32 %32, 12
  %sub19 = add i32 %shl18, -1
  %and20 = and i32 %sub19, %add16
  %cmp21.not = icmp eq i32 %and5, %and20
  br i1 %cmp21.not, label %if.end15.cleanup_crit_edge, label %if.end15.do.body_crit_edge

if.end15.do.body_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %if.end15.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %if.end15.cleanup_crit_edge ], [ %len.0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rb_alloc_aux(ptr noundef %rb, ptr noundef %event, i32 noundef %pgoff, i32 noundef %nr_pages, i32 noundef %watermark, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %pmu.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %0 = ptrtoint ptr %pmu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu.i, align 8
  %setup_aux.i = getelementptr inbounds %struct.pmu, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %setup_aux.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %setup_aux.i, align 4
  %tobool.i.not = icmp eq ptr %3, null
  br i1 %tobool.i.not, label %entry.cleanup109_crit_edge, label %if.end

entry.cleanup109_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup109

if.end:                                           ; preds = %entry
  br i1 %tobool.not, label %cond.false14, label %if.end14.i

if.end14.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %watermark)
  %tobool4.not = icmp eq i32 %watermark, 0
  %shl = shl i32 %nr_pages, 11
  %spec.select165 = select i1 %tobool4.not, i32 %shl, i32 %watermark
  %dec.i = add i32 %spec.select165, -1
  %shr.i = lshr i32 %dec.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i)
  %tobool.not.i.i = icmp ult i32 %dec.i, 4096
  %4 = tail call i32 @llvm.ctlz.i32(i32 %shr.i, i1 true) #11, !range !67
  %sub.i.i = sub nuw nsw i32 32, %4
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  br label %if.end18

cond.false14:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_pages)
  %tobool.not.i.i167 = icmp eq i32 %nr_pages, 0
  %5 = tail call i32 @llvm.ctlz.i32(i32 %nr_pages, i1 true) #11, !range !67
  %sub.i.op.i = xor i32 %5, 31
  %sub.i168 = select i1 %tobool.not.i.i167, i32 -1, i32 %sub.i.op.i
  br label %if.end18

if.end18:                                         ; preds = %cond.false14, %if.end14.i
  %max_order.0 = phi i32 [ %sub.i168, %cond.false14 ], [ %cond.i.i, %if.end14.i ]
  %watermark.addr.1 = phi i32 [ 0, %cond.false14 ], [ %spec.select165, %if.end14.i ]
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nr_pages, i32 4) #11
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %kcalloc_node.exit.thread, label %if.end7.i.i, !prof !48

kcalloc_node.exit.thread:                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %aux_pages176 = getelementptr inbounds %struct.perf_buffer, ptr %rb, i32 0, i32 31
  %8 = ptrtoint ptr %aux_pages176 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %aux_pages176, align 4
  br label %cleanup109

if.end7.i.i:                                      ; preds = %if.end18
  %9 = extractvalue { i32, i1 } %6, 0
  %call.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3520) #14
  %aux_pages = getelementptr inbounds %struct.perf_buffer, ptr %rb, i32 0, i32 31
  %10 = ptrtoint ptr %aux_pages to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i.i.i, ptr %aux_pages, align 4
  %tobool21.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool21.not, label %if.end7.i.i.cleanup109_crit_edge, label %if.end23

if.end7.i.i.cleanup109_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup109

if.end23:                                         ; preds = %if.end7.i.i
  %11 = ptrtoint ptr %pmu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pmu.i, align 8
  %free_aux = getelementptr inbounds %struct.pmu, ptr %12, i32 0, i32 32
  %13 = ptrtoint ptr %free_aux to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %free_aux, align 4
  %free_aux24 = getelementptr inbounds %struct.perf_buffer, ptr %rb, i32 0, i32 28
  %15 = ptrtoint ptr %free_aux24 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %free_aux24, align 4
  %aux_nr_pages = getelementptr inbounds %struct.perf_buffer, ptr %rb, i32 0, i32 24
  %16 = ptrtoint ptr %aux_nr_pages to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %aux_nr_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_pages)
  %cmp26195.not = icmp eq i32 %nr_pages, 0
  br i1 %cmp26195.not, label %if.end23.for.end73_crit_edge, label %if.end23.cond.end48_crit_edge

if.end23.cond.end48_crit_edge:                    ; preds = %if.end23
  br label %cond.end48

if.end23.for.end73_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end73

for.cond.loopexit:                                ; preds = %for.body66.for.cond.loopexit_crit_edge, %if.end59.for.cond.loopexit_crit_edge
  %17 = ptrtoint ptr %aux_nr_pages to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %aux_nr_pages, align 4
  %cmp26 = icmp slt i32 %18, %nr_pages
  br i1 %cmp26, label %for.cond.loopexit.cond.end48_crit_edge, label %for.cond.loopexit.for.end73_crit_edge

for.cond.loopexit.for.end73_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end73

for.cond.loopexit.cond.end48_crit_edge:           ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end48

cond.end48:                                       ; preds = %for.cond.loopexit.cond.end48_crit_edge, %if.end23.cond.end48_crit_edge
  %19 = phi i32 [ %18, %for.cond.loopexit.cond.end48_crit_edge ], [ 0, %if.end23.cond.end48_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %nr_pages)
  %tobool.not.i.i169 = icmp eq i32 %19, %nr_pages
  %sub29 = sub i32 %nr_pages, %19
  %20 = tail call i32 @llvm.ctlz.i32(i32 %sub29, i1 true) #11, !range !67
  %sub.i.op.i170 = xor i32 %20, 31
  %sub.i171 = select i1 %tobool.not.i.i169, i32 -1, i32 %sub.i.op.i170
  %21 = tail call i32 @llvm.smin.i32(i32 %max_order.0, i32 %sub.i171)
  %22 = tail call i32 @llvm.smin.i32(i32 %21, i32 12) #11
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i.do.body.i_crit_edge, %cond.end48
  %order.addr.0.i = phi i32 [ %22, %cond.end48 ], [ %dec.i173, %land.rhs.i.do.body.i_crit_edge ]
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 77248, i32 noundef %order.addr.0.i, i32 noundef 0, ptr noundef null) #11
  %tobool.not.i172 = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool.not.i172, label %land.rhs.i, label %do.end.i

land.rhs.i:                                       ; preds = %do.body.i
  %dec.i173 = add i32 %order.addr.0.i, -1
  %tobool1.not.i = icmp eq i32 %order.addr.0.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i.if.else107_crit_edge, label %land.rhs.i.do.body.i_crit_edge

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

land.rhs.i.if.else107_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else107

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %order.addr.0.i)
  %tobool3.not.i = icmp eq i32 %order.addr.0.i, 0
  br i1 %tobool3.not.i, label %do.end.i.if.end59_crit_edge, label %if.then4.i

do.end.i.if.end59_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

if.then4.i:                                       ; preds = %do.end.i
  tail call void @split_page(ptr noundef nonnull %call38.i.i.i, i32 noundef %order.addr.0.i) #11
  %23 = ptrtoint ptr %call38.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %call38.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp.i.not.i.i = icmp eq i32 %24, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %SetPagePrivate.exit.i, !prof !48

if.then.i.i:                                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef nonnull %call38.i.i.i, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #11, !srcloc !68
  unreachable

SetPagePrivate.exit.i:                            ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 13, ptr noundef nonnull %call38.i.i.i) #11
  %private1.i.i = getelementptr inbounds %struct.page, ptr %call38.i.i.i, i32 0, i32 1, i32 0, i32 3
  %25 = ptrtoint ptr %private1.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %order.addr.0.i, ptr %private1.i.i, align 4
  br label %if.end59

if.end59:                                         ; preds = %SetPagePrivate.exit.i, %do.end.i.if.end59_crit_edge
  %26 = ptrtoint ptr %aux_nr_pages to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %aux_nr_pages, align 4
  %private = getelementptr inbounds %struct.page, ptr %call38.i.i.i, i32 0, i32 1, i32 0, i32 3
  %28 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %private, align 4
  %shl61 = shl nuw i32 1, %29
  %add = add i32 %shl61, %27
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %27)
  %cmp64193 = icmp sgt i32 %add, %27
  br i1 %cmp64193, label %if.end59.for.body66_crit_edge, label %if.end59.for.cond.loopexit_crit_edge

if.end59.for.cond.loopexit_crit_edge:             ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.loopexit

if.end59.for.body66_crit_edge:                    ; preds = %if.end59
  br label %for.body66

for.body66:                                       ; preds = %for.body66.for.body66_crit_edge, %if.end59.for.body66_crit_edge
  %page.0194 = phi ptr [ %incdec.ptr, %for.body66.for.body66_crit_edge ], [ %call38.i.i.i, %if.end59.for.body66_crit_edge ]
  %incdec.ptr = getelementptr %struct.page, ptr %page.0194, i32 1
  %call67 = tail call ptr @page_address(ptr noundef %page.0194) #11
  %30 = ptrtoint ptr %aux_pages to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %aux_pages, align 4
  %32 = ptrtoint ptr %aux_nr_pages to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %aux_nr_pages, align 4
  %arrayidx = getelementptr ptr, ptr %31, i32 %33
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call67, ptr %arrayidx, align 4
  %35 = load i32, ptr %aux_nr_pages, align 4
  %inc = add i32 %35, 1
  store i32 %inc, ptr %aux_nr_pages, align 4
  %cmp64 = icmp sgt i32 %add, %inc
  br i1 %cmp64, label %for.body66.for.body66_crit_edge, label %for.body66.for.cond.loopexit_crit_edge

for.body66.for.cond.loopexit_crit_edge:           ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.loopexit

for.body66.for.body66_crit_edge:                  ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body66

for.end73:                                        ; preds = %for.cond.loopexit.for.end73_crit_edge, %if.end23.for.end73_crit_edge
  %36 = ptrtoint ptr %pmu.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pmu.i, align 8
  %capabilities = getelementptr inbounds %struct.pmu, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %capabilities, align 4
  %and75 = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp ne i32 %and75, 0
  %40 = and i1 %tobool.not, %tobool76.not
  br i1 %40, label %if.then79, label %for.end73.if.end94_crit_edge

for.end73.if.end94_crit_edge:                     ; preds = %for.end73
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

if.then79:                                        ; preds = %for.end73
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %41 = load ptr, ptr @mem_map, align 4
  %42 = ptrtoint ptr %aux_pages to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %aux_pages, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %46 = ptrtoint ptr %45 to i32
  %sub83 = add i32 %46, 1073741824
  %shr = lshr i32 %sub83, 12
  %private86 = getelementptr %struct.page, ptr %41, i32 %shr, i32 1, i32 0, i32 3
  %47 = ptrtoint ptr %private86 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %private86, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %max_order.0)
  %cmp87.not = icmp eq i32 %48, %max_order.0
  br i1 %cmp87.not, label %if.then79.if.end94_crit_edge, label %if.then79.if.else107_crit_edge

if.then79.if.else107_crit_edge:                   ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else107

if.then79.if.end94_crit_edge:                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

if.end94:                                         ; preds = %if.then79.if.end94_crit_edge, %for.end73.if.end94_crit_edge
  %setup_aux = getelementptr inbounds %struct.pmu, ptr %37, i32 0, i32 31
  %49 = ptrtoint ptr %setup_aux to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %setup_aux, align 4
  %51 = ptrtoint ptr %aux_pages to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %aux_pages, align 4
  %call98 = tail call ptr %50(ptr noundef %event, ptr noundef %52, i32 noundef %nr_pages, i1 noundef zeroext %tobool.not) #11
  %aux_priv = getelementptr inbounds %struct.perf_buffer, ptr %rb, i32 0, i32 32
  %53 = ptrtoint ptr %aux_priv to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call98, ptr %aux_priv, align 4
  %tobool100.not = icmp eq ptr %call98, null
  br i1 %tobool100.not, label %if.end94.if.else107_crit_edge, label %if.then106

if.end94.if.else107_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else107

if.then106:                                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  %aux_refcount = getelementptr inbounds %struct.perf_buffer, ptr %rb, i32 0, i32 29
  %call.i.i.i174 = tail call zeroext i1 @__kasan_check_write(ptr noundef %aux_refcount, i32 noundef 4) #11
  %54 = ptrtoint ptr %aux_refcount to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile i32 1, ptr %aux_refcount, align 4
  %55 = xor i32 %and, 1
  %aux_overwrite = getelementptr inbounds %struct.perf_buffer, ptr %rb, i32 0, i32 25
  %56 = ptrtoint ptr %aux_overwrite to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %aux_overwrite, align 4
  %aux_watermark = getelementptr inbounds %struct.perf_buffer, ptr %rb, i32 0, i32 14
  %57 = ptrtoint ptr %aux_watermark to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %watermark.addr.1, ptr %aux_watermark, align 4
  %aux_pgoff = getelementptr inbounds %struct.perf_buffer, ptr %rb, i32 0, i32 23
  %58 = ptrtoint ptr %aux_pgoff to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %pgoff, ptr %aux_pgoff, align 4
  br label %cleanup109

if.else107:                                       ; preds = %if.end94.if.else107_crit_edge, %if.then79.if.else107_crit_edge, %land.rhs.i.if.else107_crit_edge
  tail call fastcc void @__rb_free_aux(ptr noundef %rb)
  br label %cleanup109

cleanup109:                                       ; preds = %if.else107, %if.then106, %if.end7.i.i.cleanup109_crit_edge, %kcalloc_node.exit.thread, %entry.cleanup109_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup109_crit_edge ], [ -12, %if.end7.i.i.cleanup109_crit_edge ], [ -12, %if.else107 ], [ 0, %if.then106 ], [ -12, %kcalloc_node.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__rb_free_aux(ptr nocapture noundef %rb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !37) #11
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %entry.if.end27_crit_edge, label %land.rhs

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

land.rhs:                                         ; preds = %entry
  %.b60 = load i1, ptr @__rb_free_aux.__already_done, align 1
  br i1 %.b60, label %land.rhs.if.end27_crit_edge, label %if.then, !prof !49

land.rhs.if.end27_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__rb_free_aux.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 650, i32 noundef 9, ptr noundef null) #11
  br label %if.end27

if.end27:                                         ; preds = %if.then, %land.rhs.if.end27_crit_edge, %entry.if.end27_crit_edge
  %aux_priv = getelementptr inbounds %struct.perf_buffer, ptr %rb, i32 0, i32 32
  %4 = ptrtoint ptr %aux_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aux_priv, align 4
  %tobool35.not = icmp eq ptr %5, null
  br i1 %tobool35.not, label %if.end27.if.end40_crit_edge, label %if.then36

if.end27.if.end40_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then36:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %free_aux = getelementptr inbounds %struct.perf_buffer, ptr %rb, i32 0, i32 28
  %6 = ptrtoint ptr %free_aux to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %free_aux, align 4
  tail call void %7(ptr noundef nonnull %5) #11
  %8 = ptrtoint ptr %free_aux to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %free_aux, align 4
  %9 = ptrtoint ptr %aux_priv to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %aux_priv, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %if.end27.if.end40_crit_edge
  %aux_nr_pages = getelementptr inbounds %struct.perf_buffer, ptr %rb, i32 0, i32 24
  %10 = ptrtoint ptr %aux_nr_pages to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %aux_nr_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool41.not = icmp eq i32 %11, 0
  br i1 %tobool41.not, label %if.end40.if.end46_crit_edge, label %for.cond.preheader

if.end40.if.end46_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

for.cond.preheader:                               ; preds = %if.end40
  %12 = ptrtoint ptr %aux_nr_pages to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %aux_nr_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp4461 = icmp sgt i32 %13, 0
  br i1 %cmp4461, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %aux_pages.i = getelementptr inbounds %struct.perf_buffer, ptr %rb, i32 0, i32 31
  br label %for.body

for.body:                                         ; preds = %rb_free_aux_page.exit.for.body_crit_edge, %for.body.lr.ph
  %pg.062 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %rb_free_aux_page.exit.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %14 = load ptr, ptr @mem_map, align 4
  %15 = ptrtoint ptr %aux_pages.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %aux_pages.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %16, i32 %pg.062
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  %19 = ptrtoint ptr %18 to i32
  %sub.i = add i32 %19, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %14, i32 %shr.i
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp.i.not.i.i = icmp eq i32 %21, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %rb_free_aux_page.exit, !prof !48

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #11, !srcloc !69
  unreachable

rb_free_aux_page.exit:                            ; preds = %for.body
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %add.ptr.i) #11
  %mapping.i = getelementptr %struct.page, ptr %14, i32 %shr.i, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %mapping.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %mapping.i, align 4
  tail call void @__free_pages(ptr noundef %add.ptr.i, i32 noundef 0) #11
  %inc = add nuw nsw i32 %pg.062, 1
  %23 = ptrtoint ptr %aux_nr_pages to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %aux_nr_pages, align 4
  %cmp44 = icmp slt i32 %inc, %24
  br i1 %cmp44, label %rb_free_aux_page.exit.for.body_crit_edge, label %rb_free_aux_page.exit.for.end_crit_edge

rb_free_aux_page.exit.for.end_crit_edge:          ; preds = %rb_free_aux_page.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

rb_free_aux_page.exit.for.body_crit_edge:         ; preds = %rb_free_aux_page.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %rb_free_aux_page.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %aux_pages = getelementptr inbounds %struct.perf_buffer, ptr %rb, i32 0, i32 31
  %25 = ptrtoint ptr %aux_pages to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %aux_pages, align 4
  tail call void @kfree(ptr noundef %26) #11
  %27 = ptrtoint ptr %aux_nr_pages to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %aux_nr_pages, align 4
  br label %if.end46

if.end46:                                         ; preds = %for.end, %if.end40.if.end46_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rb_free(ptr noundef %rb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %work = getelementptr inbounds %struct.perf_buffer, ptr %rb, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %work) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rb_alloc(i32 noundef %nr_pages, i32 noundef %watermark, i32 noundef %cpu, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 228) #15
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  %work = getelementptr inbounds %struct.perf_buffer, ptr %call.i.i.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #11
  %1 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.perf_buffer, ptr %call.i.i.i, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @rb_alloc.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry4 = getelementptr inbounds %struct.perf_buffer, ptr %call.i.i.i, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %entry4, ptr %entry4, align 8
  %prev.i = getelementptr inbounds %struct.perf_buffer, ptr %call.i.i.i, i32 0, i32 2, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.perf_buffer, ptr %call.i.i.i, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @rb_free_work, ptr %func, align 8
  %add6 = shl i32 %nr_pages, 12
  %mul = add i32 %add6, 4096
  %call7 = tail call noalias ptr @vmalloc_user(i32 noundef %mul) #14
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %fail_all_buf, label %if.end10

if.end10:                                         ; preds = %do.body
  %user_page = getelementptr inbounds %struct.perf_buffer, ptr %call.i.i.i, i32 0, i32 33
  %5 = ptrtoint ptr %user_page to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7, ptr %user_page, align 4
  %add.ptr = getelementptr i8, ptr %call7, i32 4096
  %data_pages = getelementptr inbounds %struct.perf_buffer, ptr %call.i.i.i, i32 0, i32 34
  %6 = ptrtoint ptr %data_pages to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr, ptr %data_pages, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_pages)
  %tobool11.not = icmp eq i32 %nr_pages, 0
  br i1 %tobool11.not, label %if.end10.if.end24_crit_edge, label %if.then12

if.end10.if.end24_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %nr_pages13 = getelementptr inbounds %struct.perf_buffer, ptr %call.i.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %nr_pages13 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %nr_pages13, align 4
  %8 = tail call i32 @llvm.ctlz.i32(i32 %nr_pages, i1 true) #11, !range !67
  %sub.i.op.i = xor i32 %8, 31
  %page_order = getelementptr inbounds %struct.perf_buffer, ptr %call.i.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %page_order to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub.i.op.i, ptr %page_order, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then12, %if.end10.if.end24_crit_edge
  %nr_pages.i.i = getelementptr inbounds %struct.perf_buffer, ptr %call.i.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %nr_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_pages.i.i, align 4
  %page_order.i.i.i = getelementptr inbounds %struct.perf_buffer, ptr %call.i.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %page_order.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %page_order.i.i.i, align 8
  %add.i.i = add i32 %13, 12
  %shl.i.i = shl i32 %11, %add.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %watermark)
  %tobool.not.i = icmp eq i32 %watermark, 0
  br i1 %tobool.not.i, label %if.end24.if.end.i_crit_edge, label %if.then.i

if.end24.if.end.i_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %14 = tail call i32 @llvm.smin.i32(i32 %shl.i.i, i32 %watermark) #11
  %watermark1.i = getelementptr inbounds %struct.perf_buffer, ptr %call.i.i.i, i32 0, i32 13
  %15 = ptrtoint ptr %watermark1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %watermark1.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end24.if.end.i_crit_edge
  %watermark2.i = getelementptr inbounds %struct.perf_buffer, ptr %call.i.i.i, i32 0, i32 13
  %16 = ptrtoint ptr %watermark2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %watermark2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool3.not.i = icmp eq i32 %17, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %div.i = sdiv i32 %shl.i.i, 2
  %18 = ptrtoint ptr %watermark2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div.i, ptr %watermark2.i, align 8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.end.i.if.end6.i_crit_edge
  %and.i = and i32 %flags, 1
  %19 = xor i32 %and.i, 1
  %20 = getelementptr inbounds %struct.perf_buffer, ptr %call.i.i.i, i32 0, i32 5
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %19, ptr %20, align 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i.i.i, i32 noundef 4) #11
  %22 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 1, ptr %call.i.i.i, align 8
  %event_list.i = getelementptr inbounds %struct.perf_buffer, ptr %call.i.i.i, i32 0, i32 16
  %23 = ptrtoint ptr %event_list.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %event_list.i, ptr %event_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.perf_buffer, ptr %call.i.i.i, i32 0, i32 16, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %event_list.i, ptr %prev.i.i, align 8
  %event_lock.i = getelementptr inbounds %struct.perf_buffer, ptr %call.i.i.i, i32 0, i32 15
  tail call void @__raw_spin_lock_init(ptr noundef %event_lock.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @ring_buffer_init.__key, i16 noundef signext 3) #11
  %25 = ptrtoint ptr %nr_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nr_pages.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool12.not.i = icmp eq i32 %26, 0
  br i1 %tobool12.not.i, label %if.then13.i, label %if.end6.i.cleanup_crit_edge

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then13.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  %paused.i = getelementptr inbounds %struct.perf_buffer, ptr %call.i.i.i, i32 0, i32 6
  %27 = ptrtoint ptr %paused.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %paused.i, align 4
  br label %cleanup

fail_all_buf:                                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call.i.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %fail_all_buf, %if.then13.i, %if.end6.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %fail_all_buf ], [ %call.i.i.i, %if.end6.i.cleanup_crit_edge ], [ %call.i.i.i, %if.then13.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rb_free_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_pages.i = getelementptr i8, ptr %work, i32 48
  %0 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_pages.i, align 4
  %page_order.i.i = getelementptr i8, ptr %work, i32 44
  %2 = ptrtoint ptr %page_order.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %page_order.i.i, align 4
  %shl.i = shl i32 %1, %3
  %user_page = getelementptr i8, ptr %work, i32 208
  %4 = ptrtoint ptr %user_page to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %user_page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i)
  %cmp.not7 = icmp slt i32 %shl.i, 0
  br i1 %cmp.not7, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.08 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %mul = shl i32 %i.08, 12
  %add.ptr1 = getelementptr i8, ptr %5, i32 %mul
  %call.i = tail call ptr @vmalloc_to_page(ptr noundef %add.ptr1) #11
  %mapping.i = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %mapping.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %mapping.i, align 4
  %inc = add i32 %i.08, 1
  %cmp.not = icmp sgt i32 %inc, %shl.i
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %add.ptr = getelementptr i8, ptr %work, i32 -12
  tail call void @vfree(ptr noundef %5) #11
  tail call void @kfree(ptr noundef %add.ptr) #11
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc_user(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @perf_mmap_to_page(ptr nocapture noundef readonly %rb, i32 noundef %pgoff) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %aux_nr_pages = getelementptr inbounds %struct.perf_buffer, ptr %rb, i32 0, i32 24
  %0 = ptrtoint ptr %aux_nr_pages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %aux_nr_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %if.then

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then:                                          ; preds = %entry
  %aux_pgoff = getelementptr inbounds %struct.perf_buffer, ptr %rb, i32 0, i32 23
  %2 = ptrtoint ptr %aux_pgoff to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %aux_pgoff, align 4
  %add = add i32 %3, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %pgoff)
  %cmp = icmp ult i32 %add, %pgoff
  br i1 %cmp, label %if.then.return_crit_edge, label %if.end

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %pgoff)
  %cmp4.not = icmp ugt i32 %3, %pgoff
  br i1 %cmp4.not, label %if.end.if.end16_crit_edge, label %if.then5

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %sub = sub i32 %pgoff, %3
  %4 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub, i32 %1) #11, !srcloc !70
  %and = and i32 %4, %sub
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %5 = load ptr, ptr @mem_map, align 4
  %aux_pages = getelementptr inbounds %struct.perf_buffer, ptr %rb, i32 0, i32 31
  %6 = ptrtoint ptr %aux_pages to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aux_pages, align 4
  %arrayidx = getelementptr ptr, ptr %7, i32 %and
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %9 to i32
  %sub12 = add i32 %10, 1073741824
  %shr = lshr i32 %sub12, 12
  %add.ptr = getelementptr %struct.page, ptr %5, i32 %shr
  br label %return

if.end16:                                         ; preds = %if.end.if.end16_crit_edge, %entry.if.end16_crit_edge
  %nr_pages.i.i = getelementptr inbounds %struct.perf_buffer, ptr %rb, i32 0, i32 4
  %11 = ptrtoint ptr %nr_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_pages.i.i, align 4
  %page_order.i.i.i = getelementptr inbounds %struct.perf_buffer, ptr %rb, i32 0, i32 3
  %13 = ptrtoint ptr %page_order.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %page_order.i.i.i, align 4
  %shl.i.i = shl i32 %12, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.i, i32 %pgoff)
  %cmp.i = icmp ult i32 %shl.i.i, %pgoff
  br i1 %cmp.i, label %if.end16.return_crit_edge, label %if.end.i

if.end16.return_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end.i:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %user_page.i = getelementptr inbounds %struct.perf_buffer, ptr %rb, i32 0, i32 33
  %15 = ptrtoint ptr %user_page.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %user_page.i, align 4
  %mul.i = shl i32 %pgoff, 12
  %add.ptr.i = getelementptr i8, ptr %16, i32 %mul.i
  %call1.i = tail call ptr @vmalloc_to_page(ptr noundef %add.ptr.i) #11
  br label %return

return:                                           ; preds = %if.end.i, %if.end16.return_crit_edge, %if.then5, %if.then.return_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %if.then5 ], [ null, %if.then.return_crit_edge ], [ %call1.i, %if.end.i ], [ null, %if.end16.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_event_header__init_id(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_event__output_id_sample(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @irq_work_queue(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @split_page(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !18, !20, !21, !23, !24, !25, !27, !28, !30, !32, !34, !36}
!llvm.named.register.sp = !{!37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../kernel/events/ring_buffer.c", i32 340, i32 6}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__ksymtab_perf_aux_output_flag, !4, !"__ksymtab_perf_aux_output_flag", i1 false, i1 false}
!4 = !{!"../kernel/events/ring_buffer.c", i32 345, i32 1}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../kernel/events/ring_buffer.c", i32 403, i32 6}
!7 = !{ptr @__ksymtab_perf_aux_output_begin, !8, !"__ksymtab_perf_aux_output_begin", i1 false, i1 false}
!8 = !{!"../kernel/events/ring_buffer.c", i32 452, i32 1}
!9 = !{ptr @__ksymtab_perf_aux_output_end, !10, !"__ksymtab_perf_aux_output_end", i1 false, i1 false}
!10 = !{!"../kernel/events/ring_buffer.c", i32 529, i32 1}
!11 = !{ptr @__ksymtab_perf_aux_output_skip, !12, !"__ksymtab_perf_aux_output_skip", i1 false, i1 false}
!12 = !{!"../kernel/events/ring_buffer.c", i32 555, i32 1}
!13 = !{ptr @__ksymtab_perf_get_aux, !14, !"__ksymtab_perf_get_aux", i1 false, i1 false}
!14 = !{!"../kernel/events/ring_buffer.c", i32 565, i32 1}
!15 = !{ptr @rb_alloc.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../kernel/events/ring_buffer.c", i32 922, i32 2}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../kernel/events/ring_buffer.c", i32 170, i32 7}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!27 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/linux/page-flags.h", i32 452, i32 1}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../kernel/events/ring_buffer.c", i32 650, i32 2}
!34 = !{ptr @ring_buffer_init.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../kernel/events/ring_buffer.c", i32 324, i32 2}
!36 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!37 = !{!"sp"}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i64 2149377872}
!48 = !{!"branch_weights", i32 1, i32 2000}
!49 = !{!"branch_weights", i32 2000, i32 1}
!50 = !{i64 2148567402, i64 2148567428, i64 2148567457, i64 2148567491, i64 2148567522, i64 2148567545}
!51 = !{i64 2154743377}
!52 = !{i64 2148669225}
!53 = !{i64 1052915, i64 1052939, i64 1052960, i64 1052977, i64 1052994}
!54 = !{i64 2148669451}
!55 = !{i64 2148743065}
!56 = !{i64 1074170, i64 1074187, i64 1074211, i64 1074237, i64 1074255}
!57 = !{i64 2148743435}
!58 = !{i64 2149378138}
!59 = !{i64 2154748169}
!60 = !{i64 2154748315}
!61 = !{i64 2154750793}
!62 = !{i64 2154752819}
!63 = !{i64 2154755049}
!64 = !{i64 2148656933}
!65 = !{i64 2148571397, i64 2148571429, i64 2148571458, i64 2148571492, i64 2148571523, i64 2148571546}
!66 = !{i64 2149685859}
!67 = !{i32 0, i32 33}
!68 = !{i64 2151469821, i64 2151469994, i64 2151470009, i64 2151470061, i64 2151470120, i64 2151470144, i64 2151470185, i64 2151470206, i64 2151470234, i64 2151470266}
!69 = !{i64 2151474400, i64 2151474573, i64 2151474588, i64 2151474640, i64 2151474699, i64 2151474723, i64 2151474764, i64 2151474785, i64 2151474813, i64 2151474845}
!70 = !{i64 1017184, i64 1017201}
