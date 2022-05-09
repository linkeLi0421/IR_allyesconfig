; ModuleID = '/llk/IR_all_yes/drivers/media/common/videobuf2/frame_vector.c_pt.bc'
source_filename = "../drivers/media/common/videobuf2/frame_vector.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+get_vaddr_frames\22, \22a\22\09"
module asm "\09.weak\09__crc_get_vaddr_frames\09\09\09\09"
module asm "\09.long\09__crc_get_vaddr_frames\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_vaddr_frames:\09\09\09\09\09"
module asm "\09.asciz \09\22get_vaddr_frames\22\09\09\09\09\09"
module asm "__kstrtabns_get_vaddr_frames:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+put_vaddr_frames\22, \22a\22\09"
module asm "\09.weak\09__crc_put_vaddr_frames\09\09\09\09"
module asm "\09.long\09__crc_put_vaddr_frames\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_put_vaddr_frames:\09\09\09\09\09"
module asm "\09.asciz \09\22put_vaddr_frames\22\09\09\09\09\09"
module asm "__kstrtabns_put_vaddr_frames:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+frame_vector_to_pages\22, \22a\22\09"
module asm "\09.weak\09__crc_frame_vector_to_pages\09\09\09\09"
module asm "\09.long\09__crc_frame_vector_to_pages\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_frame_vector_to_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22frame_vector_to_pages\22\09\09\09\09\09"
module asm "__kstrtabns_frame_vector_to_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+frame_vector_to_pfns\22, \22a\22\09"
module asm "\09.weak\09__crc_frame_vector_to_pfns\09\09\09\09"
module asm "\09.long\09__crc_frame_vector_to_pfns\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_frame_vector_to_pfns:\09\09\09\09\09"
module asm "\09.asciz \09\22frame_vector_to_pfns\22\09\09\09\09\09"
module asm "__kstrtabns_frame_vector_to_pfns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+frame_vector_create\22, \22a\22\09"
module asm "\09.weak\09__crc_frame_vector_create\09\09\09\09"
module asm "\09.long\09__crc_frame_vector_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_frame_vector_create:\09\09\09\09\09"
module asm "\09.asciz \09\22frame_vector_create\22\09\09\09\09\09"
module asm "__kstrtabns_frame_vector_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+frame_vector_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc_frame_vector_destroy\09\09\09\09"
module asm "\09.long\09__crc_frame_vector_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_frame_vector_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22frame_vector_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_frame_vector_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.70 }
%struct.atomic_t = type { i32 }
%union.anon.70 = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.47, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.23 }
%struct.llist_node = type { ptr }
%union.anon.23 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.25 }
%union.anon.25 = type { %struct.anon.26 }
%struct.anon.26 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.47 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.frame_vector = type { i32, i32, i8, i8, [0 x ptr] }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.page = type { i32, %union.anon.3, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }

@get_vaddr_frames.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/media/common/videobuf2/frame_vector.c\00", [50 x i8] zeroinitializer }, align 32
@__kstrtab_get_vaddr_frames = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_vaddr_frames = external dso_local constant [0 x i8], align 1
@__ksymtab_get_vaddr_frames = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_vaddr_frames to i32), ptr @__kstrtab_get_vaddr_frames, ptr @__kstrtabns_get_vaddr_frames }, section "___ksymtab+get_vaddr_frames", align 4
@__kstrtab_put_vaddr_frames = external dso_local constant [0 x i8], align 1
@__kstrtabns_put_vaddr_frames = external dso_local constant [0 x i8], align 1
@__ksymtab_put_vaddr_frames = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @put_vaddr_frames to i32), ptr @__kstrtab_put_vaddr_frames, ptr @__kstrtabns_put_vaddr_frames }, section "___ksymtab+put_vaddr_frames", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_frame_vector_to_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_frame_vector_to_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_frame_vector_to_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @frame_vector_to_pages to i32), ptr @__kstrtab_frame_vector_to_pages, ptr @__kstrtabns_frame_vector_to_pages }, section "___ksymtab+frame_vector_to_pages", align 4
@__kstrtab_frame_vector_to_pfns = external dso_local constant [0 x i8], align 1
@__kstrtabns_frame_vector_to_pfns = external dso_local constant [0 x i8], align 1
@__ksymtab_frame_vector_to_pfns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @frame_vector_to_pfns to i32), ptr @__kstrtab_frame_vector_to_pfns, ptr @__kstrtabns_frame_vector_to_pfns }, section "___ksymtab+frame_vector_to_pfns", align 4
@frame_vector_create.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@frame_vector_create.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_frame_vector_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_frame_vector_create = external dso_local constant [0 x i8], align 1
@__ksymtab_frame_vector_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @frame_vector_create to i32), ptr @__kstrtab_frame_vector_create, ptr @__kstrtabns_frame_vector_create }, section "___ksymtab+frame_vector_create", align 4
@__kstrtab_frame_vector_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_frame_vector_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_frame_vector_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @frame_vector_destroy to i32), ptr @__kstrtab_frame_vector_destroy, ptr @__kstrtabns_frame_vector_destroy }, section "___ksymtab+frame_vector_destroy", align 4
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private constant [49 x i8] c"../drivers/media/common/videobuf2/frame_vector.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 47, i32 6 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_frame_vector_create, ptr @__ksymtab_frame_vector_destroy, ptr @__ksymtab_frame_vector_to_pages, ptr @__ksymtab_frame_vector_to_pfns, ptr @__ksymtab_get_vaddr_frames, ptr @__ksymtab_put_vaddr_frames, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_vaddr_frames(i32 noundef %start, i32 noundef %nr_frames, ptr noundef %vec) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !19) #5
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %mm1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_frames)
  %cmp = icmp eq i32 %nr_frames, 0
  br i1 %cmp, label %entry.cleanup85_crit_edge, label %if.end

entry.cleanup85_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup85

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %vec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vec, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %nr_frames)
  %cmp2 = icmp ult i32 %7, %nr_frames
  br i1 %cmp2, label %land.rhs, label %if.end.if.end42_crit_edge

if.end.if.end42_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

land.rhs:                                         ; preds = %if.end
  %.b128 = load i1, ptr @get_vaddr_frames.__already_done, align 1
  br i1 %.b128, label %land.rhs.if.then40_crit_edge, label %if.then9, !prof !29

land.rhs.if.then40_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then40

if.then9:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @get_vaddr_frames.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 47, i32 noundef 9, ptr noundef null) #5
  br label %if.then40

if.then40:                                        ; preds = %if.then9, %land.rhs.if.then40_crit_edge
  %8 = ptrtoint ptr %vec to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vec, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end.if.end42_crit_edge
  %nr_frames.addr.0 = phi i32 [ %9, %if.then40 ], [ %nr_frames, %if.end.if.end42_crit_edge ]
  %ptrs = getelementptr inbounds %struct.frame_vector, ptr %vec, i32 0, i32 4
  %call43 = tail call i32 @pin_user_pages_fast(i32 noundef %start, i32 noundef %nr_frames.addr.0, i32 noundef 65553, ptr noundef %ptrs) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp sgt i32 %call43, 0
  br i1 %cmp44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  %got_ref = getelementptr inbounds %struct.frame_vector, ptr %vec, i32 0, i32 2
  %10 = ptrtoint ptr %got_ref to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %got_ref, align 4
  %is_pfns = getelementptr inbounds %struct.frame_vector, ptr %vec, i32 0, i32 3
  %11 = ptrtoint ptr %is_pfns to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %is_pfns, align 1
  br label %out_unlocked

if.end46:                                         ; preds = %if.end42
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@get_vaddr_frames, %if.then.i.i)) #5
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !30

if.then.i.i:                                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %5, i1 noundef zeroext false) #5
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.end46
  %mmap_lock.i = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 15
  tail call void @down_read(ptr noundef %mmap_lock.i) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@get_vaddr_frames, %if.then.i3.i)) #5
          to label %mmap_read_lock.exit [label %if.then.i3.i], !srcloc !30

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %5, i1 noundef zeroext false, i1 noundef zeroext true) #5
  br label %mmap_read_lock.exit

mmap_read_lock.exit:                              ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  %got_ref47 = getelementptr inbounds %struct.frame_vector, ptr %vec, i32 0, i32 2
  %12 = ptrtoint ptr %got_ref47 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %got_ref47, align 4
  %is_pfns48 = getelementptr inbounds %struct.frame_vector, ptr %vec, i32 0, i32 3
  %13 = ptrtoint ptr %is_pfns48 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %is_pfns48, align 1
  %nr_frames.i.i = getelementptr inbounds %struct.frame_vector, ptr %vec, i32 0, i32 1
  br label %do.body49

do.body49thread-pre-split:                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %is_pfns48 to i32
  call void @__asan_load1_noabort(i32 %14)
  %.pr = load i8, ptr %is_pfns48, align 1
  br label %do.body49

do.body49:                                        ; preds = %do.body49thread-pre-split, %mmap_read_lock.exit
  %15 = phi i8 [ %.pr, %do.body49thread-pre-split ], [ 1, %mmap_read_lock.exit ]
  %ret.0 = phi i32 [ %ret.1.lcssa, %do.body49thread-pre-split ], [ 0, %mmap_read_lock.exit ]
  %start.addr.0 = phi i32 [ %start.addr.1.lcssa, %do.body49thread-pre-split ], [ %start, %mmap_read_lock.exit ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %if.end.i.i, label %do.body49.frame_vector_pfns.exit_crit_edge

do.body49.frame_vector_pfns.exit_crit_edge:       ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #7
  br label %frame_vector_pfns.exit

if.end.i.i:                                       ; preds = %do.body49
  %16 = ptrtoint ptr %nr_frames.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_frames.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp12.not.i.i = icmp eq i32 %17, 0
  br i1 %cmp12.not.i.i, label %if.end.i.i.frame_vector_to_pfns.exit.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

if.end.i.i.frame_vector_to_pfns.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %frame_vector_to_pfns.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %i.013.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr ptr, ptr %ptrs, i32 %i.013.i.i
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %20 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %19 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %20 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %21 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i = add i32 %sub.ptr.div.i.i, %21
  store i32 %add.i.i, ptr %arrayidx.i.i, align 4
  %inc.i.i = add nuw i32 %i.013.i.i, 1
  %22 = ptrtoint ptr %nr_frames.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr_frames.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %23
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.frame_vector_to_pfns.exit.i_crit_edge

for.body.i.i.frame_vector_to_pfns.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %frame_vector_to_pfns.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

frame_vector_to_pfns.exit.i:                      ; preds = %for.body.i.i.frame_vector_to_pfns.exit.i_crit_edge, %if.end.i.i.frame_vector_to_pfns.exit.i_crit_edge
  %24 = ptrtoint ptr %is_pfns48 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %is_pfns48, align 1
  br label %frame_vector_pfns.exit

frame_vector_pfns.exit:                           ; preds = %frame_vector_to_pfns.exit.i, %do.body49.frame_vector_pfns.exit_crit_edge
  %call.i = tail call ptr @find_vma(ptr noundef %5, i32 noundef %start.addr.0) #5
  %tobool.not.i130 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i130, label %frame_vector_pfns.exit.out_crit_edge, label %land.lhs.true.i

frame_vector_pfns.exit.out_crit_edge:             ; preds = %frame_vector_pfns.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

land.lhs.true.i:                                  ; preds = %frame_vector_pfns.exit
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %start.addr.0)
  %cmp.i = icmp ugt i32 %26, %start.addr.0
  br i1 %cmp.i, label %land.lhs.true.i.out_crit_edge, label %while.cond.preheader

land.lhs.true.i.out_crit_edge:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

while.cond.preheader:                             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_cmp4(i32 %ret.0, i32 %nr_frames.addr.0)
  %cmp55143 = icmp ult i32 %ret.0, %nr_frames.addr.0
  br i1 %cmp55143, label %land.rhs56.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

land.rhs56.lr.ph:                                 ; preds = %while.cond.preheader
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %call.i, i32 0, i32 1
  br label %land.rhs56

land.rhs56:                                       ; preds = %if.end69.land.rhs56_crit_edge, %land.rhs56.lr.ph
  %start.addr.1145 = phi i32 [ %start.addr.0, %land.rhs56.lr.ph ], [ %add, %if.end69.land.rhs56_crit_edge ]
  %ret.1144 = phi i32 [ %ret.0, %land.rhs56.lr.ph ], [ %inc, %if.end69.land.rhs56_crit_edge ]
  %add = add i32 %start.addr.1145, 4096
  %27 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vm_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %28)
  %cmp57.not = icmp ugt i32 %add, %28
  br i1 %cmp57.not, label %land.rhs56.while.end_crit_edge, label %while.body

land.rhs56.while.end_crit_edge:                   ; preds = %land.rhs56
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %land.rhs56
  %arrayidx = getelementptr i32, ptr %ptrs, i32 %ret.1144
  %call59 = tail call i32 @follow_pfn(ptr noundef nonnull %call.i, i32 noundef %start.addr.1145, ptr noundef %arrayidx) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end69, label %if.then61

if.then61:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1144)
  %tobool62.not = icmp eq i32 %ret.1144, 0
  br i1 %tobool62.not, label %if.end64, label %if.then61.out_crit_edge

if.then61.out_crit_edge:                          ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end64:                                         ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call59)
  %cmp65 = icmp ne i32 %call59, -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool66.not = icmp eq i32 %call43, 0
  %or.cond = select i1 %cmp65, i1 true, i1 %tobool66.not
  %ret.2 = select i1 %or.cond, i32 %call59, i32 %call43
  br label %out

if.end69:                                         ; preds = %while.body
  %inc = add i32 %ret.1144, 1
  %exitcond.not = icmp eq i32 %inc, %nr_frames.addr.0
  br i1 %exitcond.not, label %if.end69.out_crit_edge, label %if.end69.land.rhs56_crit_edge

if.end69.land.rhs56_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs56

if.end69.out_crit_edge:                           ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

while.end:                                        ; preds = %land.rhs56.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %ret.1.lcssa = phi i32 [ %ret.0, %while.cond.preheader.while.end_crit_edge ], [ %ret.1144, %land.rhs56.while.end_crit_edge ]
  %start.addr.1.lcssa = phi i32 [ %start.addr.0, %while.cond.preheader.while.end_crit_edge ], [ %start.addr.1145, %land.rhs56.while.end_crit_edge ]
  %vm_end71 = getelementptr inbounds %struct.vm_area_struct, ptr %call.i, i32 0, i32 1
  %29 = ptrtoint ptr %vm_end71 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vm_end71, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %start.addr.1.lcssa, i32 %30)
  %cmp72 = icmp uge i32 %start.addr.1.lcssa, %30
  call void @__sanitizer_cov_trace_cmp4(i32 %ret.1.lcssa, i32 %nr_frames.addr.0)
  %cmp76 = icmp ult i32 %ret.1.lcssa, %nr_frames.addr.0
  %or.cond140 = select i1 %cmp72, i1 %cmp76, i1 false
  br i1 %or.cond140, label %do.body49thread-pre-split, label %while.end.out_crit_edge

while.end.out_crit_edge:                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

out:                                              ; preds = %while.end.out_crit_edge, %if.end69.out_crit_edge, %if.end64, %if.then61.out_crit_edge, %land.lhs.true.i.out_crit_edge, %frame_vector_pfns.exit.out_crit_edge
  %ret.3139 = phi i32 [ %ret.1144, %if.then61.out_crit_edge ], [ %ret.2, %if.end64 ], [ %nr_frames.addr.0, %if.end69.out_crit_edge ], [ %ret.1.lcssa, %while.end.out_crit_edge ], [ %ret.0, %land.lhs.true.i.out_crit_edge ], [ %ret.0, %frame_vector_pfns.exit.out_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@get_vaddr_frames, %if.then.i.i131)) #5
          to label %mmap_read_unlock.exit [label %if.then.i.i131], !srcloc !30

if.then.i.i131:                                   ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__mmap_lock_do_trace_released(ptr noundef %5, i1 noundef zeroext false) #5
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i131, %out
  tail call void @up_read(ptr noundef %mmap_lock.i) #5
  br label %out_unlocked

out_unlocked:                                     ; preds = %mmap_read_unlock.exit, %if.then45
  %ret.4 = phi i32 [ %call43, %if.then45 ], [ %ret.3139, %mmap_read_unlock.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.4)
  %tobool78.not = icmp eq i32 %ret.4, 0
  %spec.select = select i1 %tobool78.not, i32 -14, i32 %ret.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp81 = icmp sgt i32 %spec.select, 0
  br i1 %cmp81, label %if.then82, label %out_unlocked.cleanup85_crit_edge

out_unlocked.cleanup85_crit_edge:                 ; preds = %out_unlocked
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup85

if.then82:                                        ; preds = %out_unlocked
  call void @__sanitizer_cov_trace_pc() #7
  %nr_frames83 = getelementptr inbounds %struct.frame_vector, ptr %vec, i32 0, i32 1
  %31 = ptrtoint ptr %nr_frames83 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %spec.select, ptr %nr_frames83, align 4
  br label %cleanup85

cleanup85:                                        ; preds = %if.then82, %out_unlocked.cleanup85_crit_edge, %entry.cleanup85_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup85_crit_edge ], [ %ret.4, %if.then82 ], [ %spec.select, %out_unlocked.cleanup85_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pin_user_pages_fast(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @follow_pfn(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @put_vaddr_frames(ptr noundef %vec) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %got_ref = getelementptr inbounds %struct.frame_vector, ptr %vec, i32 0, i32 2
  %0 = ptrtoint ptr %got_ref to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %got_ref, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  %is_pfns.i = getelementptr inbounds %struct.frame_vector, ptr %vec, i32 0, i32 3
  %2 = ptrtoint ptr %is_pfns.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_pfns.i, align 1, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.end.frame_vector_pages.exit_crit_edge, label %frame_vector_pfns.exit.i.i

if.end.frame_vector_pages.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %frame_vector_pages.exit

frame_vector_pfns.exit.i.i:                       ; preds = %if.end
  %ptrs.i.i.i = getelementptr inbounds %struct.frame_vector, ptr %vec, i32 0, i32 4
  %nr_frames.i.i = getelementptr inbounds %struct.frame_vector, ptr %vec, i32 0, i32 1
  %4 = ptrtoint ptr %nr_frames.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_frames.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp30.not.i.i = icmp eq i32 %5, 0
  br i1 %cmp30.not.i.i, label %frame_vector_pfns.exit.i.i.cleanup.thread.i_crit_edge, label %frame_vector_pfns.exit.i.i.for.body.i.i_crit_edge

frame_vector_pfns.exit.i.i.for.body.i.i_crit_edge: ; preds = %frame_vector_pfns.exit.i.i
  br label %for.body.i.i

frame_vector_pfns.exit.i.i.cleanup.thread.i_crit_edge: ; preds = %frame_vector_pfns.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.031.i.i, 1
  %6 = ptrtoint ptr %nr_frames.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_frames.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %7
  br i1 %cmp.i.i, label %for.cond.i.i.for.body.i.i_crit_edge, label %for.cond5.preheader.i.i

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.cond5.preheader.i.i:                          ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp732.not.i.i = icmp eq i32 %7, 0
  br i1 %cmp732.not.i.i, label %for.cond5.preheader.i.i.cleanup.thread.i_crit_edge, label %for.cond5.preheader.i.i.for.body8.i.i_crit_edge

for.cond5.preheader.i.i.for.body8.i.i_crit_edge:  ; preds = %for.cond5.preheader.i.i
  br label %for.body8.i.i

for.cond5.preheader.i.i.cleanup.thread.i_crit_edge: ; preds = %for.cond5.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %frame_vector_pfns.exit.i.i.for.body.i.i_crit_edge
  %i.031.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %frame_vector_pfns.exit.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i32, ptr %ptrs.i.i.i, i32 %i.031.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %call1.i.i = tail call i32 @pfn_valid(i32 noundef %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %for.body.i.i.do.end_crit_edge, label %for.cond.i.i

for.body.i.i.do.end_crit_edge:                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.body8.i.i:                                    ; preds = %for.body8.i.i.for.body8.i.i_crit_edge, %for.cond5.preheader.i.i.for.body8.i.i_crit_edge
  %i.133.i.i = phi i32 [ %inc12.i.i, %for.body8.i.i.for.body8.i.i_crit_edge ], [ 0, %for.cond5.preheader.i.i.for.body8.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %10 = load ptr, ptr @mem_map, align 4
  %arrayidx9.i.i = getelementptr i32, ptr %ptrs.i.i.i, i32 %i.133.i.i
  %11 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx9.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %13 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i.i = sub i32 %12, %13
  %add.ptr.i.i = getelementptr %struct.page, ptr %10, i32 %sub.i.i
  store ptr %add.ptr.i.i, ptr %arrayidx9.i.i, align 4
  %inc12.i.i = add nuw i32 %i.133.i.i, 1
  %14 = ptrtoint ptr %nr_frames.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_frames.i.i, align 4
  %cmp7.i.i = icmp ult i32 %inc12.i.i, %15
  br i1 %cmp7.i.i, label %for.body8.i.i.for.body8.i.i_crit_edge, label %for.body8.i.i.cleanup.thread.i_crit_edge

for.body8.i.i.cleanup.thread.i_crit_edge:         ; preds = %for.body8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread.i

for.body8.i.i.for.body8.i.i_crit_edge:            ; preds = %for.body8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body8.i.i

cleanup.thread.i:                                 ; preds = %for.body8.i.i.cleanup.thread.i_crit_edge, %for.cond5.preheader.i.i.cleanup.thread.i_crit_edge, %frame_vector_pfns.exit.i.i.cleanup.thread.i_crit_edge
  %16 = ptrtoint ptr %is_pfns.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %is_pfns.i, align 1
  br label %frame_vector_pages.exit

frame_vector_pages.exit:                          ; preds = %cleanup.thread.i, %if.end.frame_vector_pages.exit_crit_edge
  %ptrs.i = getelementptr inbounds %struct.frame_vector, ptr %vec, i32 0, i32 4
  %cmp.i = icmp ugt ptr %ptrs.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %frame_vector_pages.exit.do.end_crit_edge, label %if.end25.critedge, !prof !32

frame_vector_pages.exit.do.end_crit_edge:         ; preds = %frame_vector_pages.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %frame_vector_pages.exit.do.end_crit_edge, %for.body.i.i.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 130, i32 noundef 9, ptr noundef null) #5
  br label %out

if.end25.critedge:                                ; preds = %frame_vector_pages.exit
  call void @__sanitizer_cov_trace_pc() #7
  %nr_frames = getelementptr inbounds %struct.frame_vector, ptr %vec, i32 0, i32 1
  %17 = ptrtoint ptr %nr_frames to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr_frames, align 4
  tail call void @unpin_user_pages(ptr noundef %ptrs.i, i32 noundef %18) #5
  %19 = ptrtoint ptr %got_ref to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %got_ref, align 4
  br label %out

out:                                              ; preds = %if.end25.critedge, %do.end, %entry.out_crit_edge
  %nr_frames27 = getelementptr inbounds %struct.frame_vector, ptr %vec, i32 0, i32 1
  %20 = ptrtoint ptr %nr_frames27 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %nr_frames27, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unpin_user_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @frame_vector_to_pages(ptr nocapture noundef %vec) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %is_pfns = getelementptr inbounds %struct.frame_vector, ptr %vec, i32 0, i32 3
  %0 = ptrtoint ptr %is_pfns to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_pfns, align 1, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %frame_vector_pfns.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

frame_vector_pfns.exit:                           ; preds = %entry
  %ptrs.i = getelementptr inbounds %struct.frame_vector, ptr %vec, i32 0, i32 4
  %nr_frames = getelementptr inbounds %struct.frame_vector, ptr %vec, i32 0, i32 1
  %2 = ptrtoint ptr %nr_frames to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp30.not = icmp eq i32 %3, 0
  br i1 %cmp30.not, label %frame_vector_pfns.exit.for.end13_crit_edge, label %frame_vector_pfns.exit.for.body_crit_edge

frame_vector_pfns.exit.for.body_crit_edge:        ; preds = %frame_vector_pfns.exit
  br label %for.body

frame_vector_pfns.exit.for.end13_crit_edge:       ; preds = %frame_vector_pfns.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end13

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.031, 1
  %4 = ptrtoint ptr %nr_frames to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_frames, align 4
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond5.preheader

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.cond5.preheader:                              ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp732.not = icmp eq i32 %5, 0
  br i1 %cmp732.not, label %for.cond5.preheader.for.end13_crit_edge, label %for.cond5.preheader.for.body8_crit_edge

for.cond5.preheader.for.body8_crit_edge:          ; preds = %for.cond5.preheader
  br label %for.body8

for.cond5.preheader.for.end13_crit_edge:          ; preds = %for.cond5.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end13

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %frame_vector_pfns.exit.for.body_crit_edge
  %i.031 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %frame_vector_pfns.exit.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %ptrs.i, i32 %i.031
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %call1 = tail call i32 @pfn_valid(i32 noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body8:                                        ; preds = %for.body8.for.body8_crit_edge, %for.cond5.preheader.for.body8_crit_edge
  %i.133 = phi i32 [ %inc12, %for.body8.for.body8_crit_edge ], [ 0, %for.cond5.preheader.for.body8_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %8 = load ptr, ptr @mem_map, align 4
  %arrayidx9 = getelementptr i32, ptr %ptrs.i, i32 %i.133
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx9, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %11 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub = sub i32 %10, %11
  %add.ptr = getelementptr %struct.page, ptr %8, i32 %sub
  store ptr %add.ptr, ptr %arrayidx9, align 4
  %inc12 = add nuw i32 %i.133, 1
  %12 = ptrtoint ptr %nr_frames to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_frames, align 4
  %cmp7 = icmp ult i32 %inc12, %13
  br i1 %cmp7, label %for.body8.for.body8_crit_edge, label %for.body8.for.end13_crit_edge

for.body8.for.end13_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end13

for.body8.for.body8_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body8

for.end13:                                        ; preds = %for.body8.for.end13_crit_edge, %for.cond5.preheader.for.end13_crit_edge, %frame_vector_pfns.exit.for.end13_crit_edge
  %14 = ptrtoint ptr %is_pfns to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %is_pfns, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.end13, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end13 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @frame_vector_to_pfns(ptr nocapture noundef %vec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %is_pfns = getelementptr inbounds %struct.frame_vector, ptr %vec, i32 0, i32 3
  %0 = ptrtoint ptr %is_pfns to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_pfns, align 1, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %ptrs = getelementptr inbounds %struct.frame_vector, ptr %vec, i32 0, i32 4
  %nr_frames = getelementptr inbounds %struct.frame_vector, ptr %vec, i32 0, i32 1
  %2 = ptrtoint ptr %nr_frames to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp12.not = icmp eq i32 %3, 0
  br i1 %cmp12.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.013 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %ptrs, i32 %i.013
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %6 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %6 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %7 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %sub.ptr.div, %7
  store i32 %add, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.013, 1
  %8 = ptrtoint ptr %nr_frames to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_frames, align 4
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %10 = ptrtoint ptr %is_pfns to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %is_pfns, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @frame_vector_create(i32 noundef %nr_frames) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %nr_frames, 2
  %add = add i32 %mul, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_frames)
  %cmp = icmp eq i32 %nr_frames, 0
  br i1 %cmp, label %land.rhs, label %if.end37

land.rhs:                                         ; preds = %entry
  %.b112 = load i1, ptr @frame_vector_create.__already_done, align 1
  br i1 %.b112, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !29

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @frame_vector_create.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 202, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end37:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %nr_frames)
  %cmp39 = icmp ugt i32 %nr_frames, 268435455
  br i1 %cmp39, label %land.rhs46, label %if.end94

land.rhs46:                                       ; preds = %if.end37
  %.b110111 = load i1, ptr @frame_vector_create.__already_done.1, align 1
  br i1 %.b110111, label %land.rhs46.cleanup_crit_edge, label %if.then57, !prof !29

land.rhs46.cleanup_crit_edge:                     ; preds = %land.rhs46
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then57:                                        ; preds = %land.rhs46
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @frame_vector_create.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 208, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end94:                                         ; preds = %if.end37
  %call.i = tail call noalias ptr @kvmalloc_node(i32 noundef %add, i32 noundef 3264, i32 noundef -1) #8
  %tobool95.not = icmp eq ptr %call.i, null
  br i1 %tobool95.not, label %if.end94.cleanup_crit_edge, label %if.end97

if.end94.cleanup_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end97:                                         ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %nr_frames, ptr %call.i, align 4
  %nr_frames98 = getelementptr inbounds %struct.frame_vector, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %nr_frames98 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %nr_frames98, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end97, %if.end94.cleanup_crit_edge, %if.then57, %land.rhs46.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %if.end97 ], [ null, %if.then ], [ null, %if.then57 ], [ null, %if.end94.cleanup_crit_edge ], [ null, %land.rhs.cleanup_crit_edge ], [ null, %land.rhs46.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @frame_vector_destroy(ptr noundef %vec) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_frames = getelementptr inbounds %struct.frame_vector, ptr %vec, i32 0, i32 1
  %0 = ptrtoint ptr %nr_frames to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %do.end5, label %do.body2, !prof !29

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/common/videobuf2/frame_vector.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 232, 0\0A.popsection", ""() #5, !srcloc !33
  unreachable

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kvfree(ptr noundef %vec) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind readonly }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17}
!llvm.named.register.sp = !{!19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/media/common/videobuf2/frame_vector.c", i32 47, i32 6}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__ksymtab_get_vaddr_frames, !4, !"__ksymtab_get_vaddr_frames", i1 false, i1 false}
!4 = !{!"../drivers/media/common/videobuf2/frame_vector.c", i32 107, i32 1}
!5 = !{ptr @__ksymtab_put_vaddr_frames, !6, !"__ksymtab_put_vaddr_frames", i1 false, i1 false}
!6 = !{!"../drivers/media/common/videobuf2/frame_vector.c", i32 138, i32 1}
!7 = !{ptr @__ksymtab_frame_vector_to_pages, !8, !"__ksymtab_frame_vector_to_pages", i1 false, i1 false}
!8 = !{!"../drivers/media/common/videobuf2/frame_vector.c", i32 166, i32 1}
!9 = !{ptr @__ksymtab_frame_vector_to_pfns, !10, !"__ksymtab_frame_vector_to_pfns", i1 false, i1 false}
!10 = !{!"../drivers/media/common/videobuf2/frame_vector.c", i32 188, i32 1}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../drivers/media/common/videobuf2/frame_vector.c", i32 202, i32 6}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../drivers/media/common/videobuf2/frame_vector.c", i32 208, i32 6}
!15 = !{ptr @__ksymtab_frame_vector_create, !16, !"__ksymtab_frame_vector_create", i1 false, i1 false}
!16 = !{!"../drivers/media/common/videobuf2/frame_vector.c", i32 221, i32 1}
!17 = !{ptr @__ksymtab_frame_vector_destroy, !18, !"__ksymtab_frame_vector_destroy", i1 false, i1 false}
!18 = !{!"../drivers/media/common/videobuf2/frame_vector.c", i32 235, i32 1}
!19 = !{!"sp"}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"branch_weights", i32 2000, i32 1}
!30 = !{i64 2148696090, i64 2148696095, i64 2148696108, i64 2148696152, i64 2148696186, i64 2148696207}
!31 = !{i8 0, i8 2}
!32 = !{!"branch_weights", i32 1, i32 2000}
!33 = !{i64 2153770704, i64 2153771214, i64 2153770741, i64 2153770797, i64 2153770831, i64 2153770855, i64 2153770896, i64 2153770917, i64 2153770945, i64 2153770979}
