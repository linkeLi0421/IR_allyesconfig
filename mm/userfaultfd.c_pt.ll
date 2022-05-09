; ModuleID = '/llk/IR_all_yes/mm/userfaultfd.c_pt.bc'
source_filename = "../mm/userfaultfd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_key_true = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.30 }
%struct.atomic_t = type { i32 }
%union.anon.30 = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { %struct.rb_node, i32 }
%struct.list_head = type { ptr, ptr }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.page = type { i32, %union.anon.5, %union.anon.77, %struct.atomic_t, i32 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.77 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.33 }
%struct.llist_node = type { ptr }
%union.anon.33 = type { i32 }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.35 }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.file = type { %union.anon.9, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.9 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.anon.83 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t, i32 }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.79 = type { %struct.callback_head }
%union.anon.80 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.81 = type { ptr }

@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@__mcopy_atomic.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mm/userfaultfd.c\00", [47 x i8] zeroinitializer }, align 32
@mfill_atomic_pte.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@memory_cgrp_subsys_enabled_key = external dso_local global %struct.static_key_true, align 4
@zero_pfn = external dso_local local_unnamed_addr global i32, align 4
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 443, i32 1 }
@___asan_gen_.16 = private constant [20 x i8] c"../mm/userfaultfd.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 541, i32 6 }
@___asan_gen_.19 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 260, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 44, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 156, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 717, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mfill_atomic_install_pte(ptr noundef %dst_mm, ptr nocapture noundef readonly %dst_pmd, ptr noundef %dst_vma, i32 noundef %dst_addr, ptr noundef %page, i1 noundef zeroext %newly_allocated, i1 noundef zeroext %wp_copy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %dst_vma, i32 0, i32 8
  %0 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm_flags, align 4
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mapping, align 4
  %tobool7.not = icmp eq ptr %3, null
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %4 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %page to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %4 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %5 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %sub.ptr.div, %5
  %shl = shl i32 %add, 12
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %dst_vma, i32 0, i32 7
  %6 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vm_page_prot, align 4
  %or = or i32 %7, %shl
  %or.i.i = or i32 %or, 64
  br i1 %tobool7.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %8 = and i32 %1, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %8)
  %9 = icmp eq i32 %8, 10
  br i1 %9, label %land.lhs.true.if.then12_crit_edge, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

land.lhs.true.if.then12_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

if.end:                                           ; preds = %entry
  %10 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %extract.t81.not = icmp eq i32 %10, 0
  br i1 %extract.t81.not, label %if.end.if.end18_crit_edge, label %if.end.if.then12_crit_edge

if.end.if.then12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then12:                                        ; preds = %if.end.if.then12_crit_edge, %land.lhs.true.if.then12_crit_edge
  %and.i.i = and i32 %or.i.i, -129
  %spec.select86 = select i1 %wp_copy, i32 %or.i.i, i32 %and.i.i
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %if.end.if.end18_crit_edge, %land.lhs.true.if.end18_crit_edge
  %_dst_pte.0 = phi i32 [ %or.i.i, %if.end.if.end18_crit_edge ], [ %or.i.i, %land.lhs.true.if.end18_crit_edge ], [ %spec.select86, %if.then12 ]
  %11 = ptrtoint ptr %dst_pmd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dst_pmd, align 4
  %shr.i = lshr i32 %12, 12
  %sub.i = sub i32 %shr.i, %5
  %ptl.i.i = getelementptr %struct.page, ptr %4, i32 %sub.i, i32 1, i32 0, i32 3
  %13 = ptrtoint ptr %ptl.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ptl.i.i, align 4
  %add.ptr = getelementptr %struct.page, ptr %4, i32 %sub.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %15 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %15, 512
  %16 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %and.i.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %19, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !34
  %20 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %and.i.i.i1.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 213
  %24 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %25, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !35
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr, i32 noundef %or.i) #7
  %shr.i82 = lshr i32 %dst_addr, 12
  %and.i = and i32 %shr.i82, 511
  %add.ptr23 = getelementptr i32, ptr %call.i.i, i32 %and.i
  tail call void @_raw_spin_lock(ptr noundef %14) #7
  %call24 = tail call zeroext i1 @vma_is_shmem(ptr noundef %dst_vma) #7
  br i1 %call24, label %if.then25, label %if.end18.if.end35_crit_edge

if.end18.if.end35_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then25:                                        ; preds = %if.end18
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %dst_vma, i32 0, i32 14
  %26 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vm_file, align 4
  %f_inode = getelementptr inbounds %struct.file, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %f_inode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %f_inode, align 8
  %30 = ptrtoint ptr %dst_vma to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dst_vma, align 4
  %sub.i83 = sub i32 %dst_addr, %31
  %shr.i84 = lshr i32 %sub.i83, 12
  %vm_pgoff.i = getelementptr inbounds %struct.vm_area_struct, ptr %dst_vma, i32 0, i32 13
  %32 = ptrtoint ptr %vm_pgoff.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vm_pgoff.i, align 4
  %add.i = add i32 %shr.i84, %33
  %call27 = tail call fastcc i64 @i_size_read(ptr noundef %29)
  %sub29 = add i64 %call27, 4095
  %div = sdiv i64 %sub29, 4096
  %conv = trunc i64 %div to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv)
  %cmp.not = icmp ult i32 %add.i, %conv
  br i1 %cmp.not, label %if.then25.if.end35_crit_edge, label %if.then25.do.body_crit_edge, !prof !36

if.then25.do.body_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then25.if.end35_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.end35:                                         ; preds = %if.then25.if.end35_crit_edge, %if.end18.if.end35_crit_edge
  %34 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool36.not = icmp eq i32 %35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end35.do.body_crit_edge

if.end35.do.body_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end38:                                         ; preds = %if.end35
  br i1 %tobool7.not, label %if.else41, label %if.then40

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @page_add_file_rmap(ptr noundef %page, i1 noundef zeroext false) #7
  br label %if.end42

if.else41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @page_add_new_anon_rmap(ptr noundef %page, ptr noundef %dst_vma, i32 noundef %dst_addr, i1 noundef zeroext false) #7
  br label %if.end42

if.end42:                                         ; preds = %if.else41, %if.then40
  %36 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %36, align 4
  %and.i2.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i2.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end42.PageAnon.exit.i_crit_edge, label %if.then.i.i.i, !prof !36

if.end42.PageAnon.exit.i_crit_edge:               ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %PageAnon.exit.i

if.then.i.i.i:                                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i.i = add i32 %38, -1
  br label %PageAnon.exit.i

PageAnon.exit.i:                                  ; preds = %if.then.i.i.i, %if.end42.PageAnon.exit.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %sub.ptr.lhs.cast, %if.end42.PageAnon.exit.i_crit_edge ]
  %39 = inttoptr i32 %retval.0.i.i.i to ptr
  %mapping.i.i.i = getelementptr inbounds %struct.anon.83, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %mapping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mapping.i.i.i, align 4
  %42 = ptrtoint ptr %41 to i32
  %and.i.i.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %if.end.i, label %PageAnon.exit.i.mm_counter.exit_crit_edge

PageAnon.exit.i.mm_counter.exit_crit_edge:        ; preds = %PageAnon.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mm_counter.exit

if.end.i:                                         ; preds = %PageAnon.exit.i
  %43 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %36, align 4
  %and.i.i.i.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i._compound_head.exit.i.i.i_crit_edge, label %if.then.i.i.i.i, !prof !36

if.end.i._compound_head.exit.i.i.i_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_compound_head.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i.i.i = add i32 %44, -1
  br label %_compound_head.exit.i.i.i

_compound_head.exit.i.i.i:                        ; preds = %if.then.i.i.i.i, %if.end.i._compound_head.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %sub.i.i.i.i, %if.then.i.i.i.i ], [ %sub.ptr.lhs.cast, %if.end.i._compound_head.exit.i.i.i_crit_edge ]
  %45 = inttoptr i32 %retval.0.i.i.i.i to ptr
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %47)
  %cmp.i.not.i.i.i = icmp eq i32 %47, -1
  %48 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %36, align 4
  %and.i16.i.i.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i.i.i)
  %tobool.not.i17.i.i.i = icmp eq i32 %and.i16.i.i.i, 0
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i3.i, label %do.end10.i.i.i, !prof !37

if.then.i.i3.i:                                   ; preds = %_compound_head.exit.i.i.i
  br i1 %tobool.not.i17.i.i.i, label %if.then.i.i3.i._compound_head.exit22.i.i.i_crit_edge, label %if.then.i19.i.i.i, !prof !36

if.then.i.i3.i._compound_head.exit22.i.i.i_crit_edge: ; preds = %if.then.i.i3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_compound_head.exit22.i.i.i

if.then.i19.i.i.i:                                ; preds = %if.then.i.i3.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i18.i.i.i = add i32 %49, -1
  br label %_compound_head.exit22.i.i.i

_compound_head.exit22.i.i.i:                      ; preds = %if.then.i19.i.i.i, %if.then.i.i3.i._compound_head.exit22.i.i.i_crit_edge
  %retval.0.i21.i.i.i = phi i32 [ %sub.i18.i.i.i, %if.then.i19.i.i.i ], [ %sub.ptr.lhs.cast, %if.then.i.i3.i._compound_head.exit22.i.i.i_crit_edge ]
  %50 = inttoptr i32 %retval.0.i21.i.i.i to ptr
  tail call void @dump_page(ptr noundef %50, ptr noundef nonnull @.str) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 443, 0\0A.popsection", ""() #7, !srcloc !38
  unreachable

do.end10.i.i.i:                                   ; preds = %_compound_head.exit.i.i.i
  br i1 %tobool.not.i17.i.i.i, label %do.end10.i.i.i.mm_counter_file.exit.i_crit_edge, label %if.then.i26.i.i.i, !prof !36

do.end10.i.i.i.mm_counter_file.exit.i_crit_edge:  ; preds = %do.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mm_counter_file.exit.i

if.then.i26.i.i.i:                                ; preds = %do.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i25.i.i.i = add i32 %49, -1
  br label %mm_counter_file.exit.i

mm_counter_file.exit.i:                           ; preds = %if.then.i26.i.i.i, %do.end10.i.i.i.mm_counter_file.exit.i_crit_edge
  %retval.0.i28.i.i.i = phi i32 [ %sub.i25.i.i.i, %if.then.i26.i.i.i ], [ %sub.ptr.lhs.cast, %do.end10.i.i.i.mm_counter_file.exit.i_crit_edge ]
  %51 = inttoptr i32 %retval.0.i28.i.i.i to ptr
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %51, align 4
  %54 = and i32 %53, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i.i = icmp eq i32 %54, 0
  %..i.i = select i1 %tobool.not.i.i, i32 0, i32 3
  br label %mm_counter.exit

mm_counter.exit:                                  ; preds = %mm_counter_file.exit.i, %PageAnon.exit.i.mm_counter.exit_crit_edge
  %retval.0.i = phi i32 [ %..i.i, %mm_counter_file.exit.i ], [ 1, %PageAnon.exit.i.mm_counter.exit_crit_edge ]
  %rss_stat.i = getelementptr inbounds %struct.anon, ptr %dst_mm, i32 0, i32 40
  %arrayidx.i = getelementptr [4 x %struct.atomic_t], ptr %rss_stat.i, i32 0, i32 %retval.0.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !39
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1) #7
  %55 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i, ptr %arrayidx.i, i32 1, ptr elementtype(i32) %arrayidx.i) #7, !srcloc !40
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %55, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @mm_trace_rss_stat(ptr noundef %dst_mm, i32 noundef %retval.0.i, i32 noundef %asmresult.i.i.i.i.i.i) #7
  br i1 %newly_allocated, label %if.then45, label %mm_counter.exit.if.end46_crit_edge

mm_counter.exit.if.end46_crit_edge:               ; preds = %mm_counter.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then45:                                        ; preds = %mm_counter.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lru_cache_add_inactive_or_unevictable(ptr noundef %page, ptr noundef %dst_vma) #7
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %mm_counter.exit.if.end46_crit_edge
  tail call void @set_pte_at(ptr noundef %dst_mm, i32 noundef %dst_addr, ptr noundef %add.ptr23, i32 noundef %_dst_pte.0) #7
  br label %do.body

do.body:                                          ; preds = %if.end46, %if.end35.do.body_crit_edge, %if.then25.do.body_crit_edge
  %ret.0 = phi i32 [ -14, %if.then25.do.body_crit_edge ], [ -17, %if.end35.do.body_crit_edge ], [ 0, %if.end46 ]
  tail call void @_raw_spin_unlock(ptr noundef %14) #7
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr23) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !42
  %56 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %and.i.i.i1.i = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %59, i32 0, i32 213
  %60 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %61, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !43
  %62 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %and.i.i.i.i85 = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i.i.i85 to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %65, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vma_is_shmem(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !44
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_off() #7
  %1 = tail call ptr @llvm.returnaddress(i32 0) #7
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #7
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #7
  tail call void @trace_hardirqs_on() #7
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %3 = tail call ptr @llvm.returnaddress(i32 0) #7
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #7
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #7
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !45
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !37

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #7, !srcloc !46
  %6 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_size_seqcount, align 4
  %and29 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool.not30 = icmp eq i32 %and29, 0
  br i1 %tobool.not30, label %seqcount_lockdep_reader_access.exit.while.end_crit_edge, label %seqcount_lockdep_reader_access.exit.do.end_crit_edge

seqcount_lockdep_reader_access.exit.do.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  br label %do.end

seqcount_lockdep_reader_access.exit.while.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !47
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !48
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !49
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !50
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_add_file_rmap(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_add_new_anon_rmap(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_cache_add_inactive_or_unevictable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_pte_at(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mcopy_atomic(ptr noundef %dst_mm, i32 noundef %dst_start, i32 noundef %src_start, i32 noundef %len, ptr noundef %mmap_changing, i64 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  %page.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page.i) #7
  %and.i = and i32 %dst_start, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body9.i, label %do.body3.i, !prof !36

do.body3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 504, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

do.body9.i:                                       ; preds = %entry
  %and10.i = and i32 %len, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %do.body28.i, label %do.body19.i, !prof !36

do.body19.i:                                      ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 505, 0\0A.popsection", ""() #7, !srcloc !52
  unreachable

do.body28.i:                                      ; preds = %do.body9.i
  %add.i = add i32 %len, %src_start
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %src_start)
  %cmp.not.i = icmp ugt i32 %add.i, %src_start
  br i1 %cmp.not.i, label %do.body45.i, label %do.body36.i, !prof !36

do.body36.i:                                      ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 508, 0\0A.popsection", ""() #7, !srcloc !53
  unreachable

do.body45.i:                                      ; preds = %do.body28.i
  %add46.i = add i32 %len, %dst_start
  call void @__sanitizer_cov_trace_cmp4(i32 %add46.i, i32 %dst_start)
  %cmp47.not.i = icmp ugt i32 %add46.i, %dst_start
  br i1 %cmp47.not.i, label %do.end63.i, label %do.body55.i, !prof !36

do.body55.i:                                      ; preds = %do.body45.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 509, 0\0A.popsection", ""() #7, !srcloc !54
  unreachable

do.end63.i:                                       ; preds = %do.body45.i
  %0 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %page.i, align 4
  %mmap_lock.i.i = getelementptr inbounds %struct.anon, ptr %dst_mm, i32 0, i32 15
  %tobool64.not.i = icmp eq ptr %mmap_changing, null
  %and127.i = and i64 %mode, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and127.i)
  %tobool128.i = icmp ne i64 %and127.i, 0
  %pgd1.i.i = getelementptr inbounds %struct.anon, ptr %dst_mm, i32 0, i32 8
  br label %retry.i

retry.loopexit.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %page.i, align 4
  call fastcc void @kunmap(ptr noundef %2) #7
  br label %retry.i

retry.i:                                          ; preds = %retry.loopexit.i, %do.end63.i
  %src_addr.0.i = phi i32 [ %src_start, %do.end63.i ], [ %src_addr.1591.i, %retry.loopexit.i ]
  %dst_addr.0.i = phi i32 [ %dst_start, %do.end63.i ], [ %dst_addr.1592.i, %retry.loopexit.i ]
  %copied.0.i = phi i32 [ 0, %do.end63.i ], [ %copied.1593.i, %retry.loopexit.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@mcopy_atomic, %if.then.i.i503.i)) #7
          to label %__mmap_lock_trace_start_locking.exit.i.i [label %if.then.i.i503.i], !srcloc !55

if.then.i.i503.i:                                 ; preds = %retry.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %dst_mm, i1 noundef zeroext false) #7
  br label %__mmap_lock_trace_start_locking.exit.i.i

__mmap_lock_trace_start_locking.exit.i.i:         ; preds = %if.then.i.i503.i, %retry.i
  call void @down_read(ptr noundef %mmap_lock.i.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@mcopy_atomic, %if.then.i3.i.i)) #7
          to label %mmap_read_lock.exit.i [label %if.then.i3.i.i], !srcloc !55

if.then.i3.i.i:                                   ; preds = %__mmap_lock_trace_start_locking.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %dst_mm, i1 noundef zeroext false, i1 noundef zeroext true) #7
  br label %mmap_read_lock.exit.i

mmap_read_lock.exit.i:                            ; preds = %if.then.i3.i.i, %__mmap_lock_trace_start_locking.exit.i.i
  br i1 %tobool64.not.i, label %mmap_read_lock.exit.i.if.end67.i_crit_edge, label %land.lhs.true.i

mmap_read_lock.exit.i.if.end67.i_crit_edge:       ; preds = %mmap_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67.i

land.lhs.true.i:                                  ; preds = %mmap_read_lock.exit.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %mmap_changing, i32 noundef 4) #7
  %3 = ptrtoint ptr %mmap_changing to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %mmap_changing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool65.not.i = icmp eq i32 %4, 0
  br i1 %tobool65.not.i, label %land.lhs.true.i.if.end67.i_crit_edge, label %land.lhs.true.i.out_unlock.i_crit_edge

land.lhs.true.i.out_unlock.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i

land.lhs.true.i.if.end67.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67.i

if.end67.i:                                       ; preds = %land.lhs.true.i.if.end67.i_crit_edge, %mmap_read_lock.exit.i.if.end67.i_crit_edge
  %call.i.i = call ptr @find_vma(ptr noundef %dst_mm, i32 noundef %dst_start) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end67.i.out_unlock.i_crit_edge, label %if.end.i.i

if.end67.i.out_unlock.i_crit_edge:                ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i

if.end.i.i:                                       ; preds = %if.end67.i
  %5 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %dst_start)
  %cmp.i.i = icmp ugt i32 %6, %dst_start
  br i1 %cmp.i.i, label %if.end.i.i.out_unlock.i_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.out_unlock.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %vm_end.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %call.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %vm_end.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vm_end.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add46.i, i32 %8)
  %cmp1.i.i = icmp ugt i32 %add46.i, %8
  br i1 %cmp1.i.i, label %lor.lhs.false.i.i.out_unlock.i_crit_edge, label %if.end3.i.i

lor.lhs.false.i.i.out_unlock.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i

if.end3.i.i:                                      ; preds = %lor.lhs.false.i.i
  %vm_userfaultfd_ctx.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %call.i.i, i32 0, i32 17
  %9 = ptrtoint ptr %vm_userfaultfd_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vm_userfaultfd_ctx.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %10, null
  br i1 %tobool4.not.i.i, label %if.end3.i.i.out_unlock.i_crit_edge, label %if.end71.i

if.end3.i.i.out_unlock.i_crit_edge:               ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i

if.end71.i:                                       ; preds = %if.end3.i.i
  %vm_ops.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %call.i.i, i32 0, i32 12
  %11 = ptrtoint ptr %vm_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vm_ops.i.i, align 4
  %tobool.not.i504.i = icmp eq ptr %12, null
  br i1 %tobool.not.i504.i, label %land.rhs.i, label %if.end71.i.if.end126.critedge.i_crit_edge

if.end71.i.if.end126.critedge.i_crit_edge:        ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end126.critedge.i

land.rhs.i:                                       ; preds = %if.end71.i
  %vm_flags.i = getelementptr inbounds %struct.vm_area_struct, ptr %call.i.i, i32 0, i32 8
  %13 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vm_flags.i, align 4
  %and73.i = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.i)
  %tobool74.not.i = icmp eq i32 %and73.i, 0
  br i1 %tobool74.not.i, label %land.rhs.i.if.end126.critedge.i_crit_edge, label %land.rhs80.i

land.rhs.i.if.end126.critedge.i_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end126.critedge.i

land.rhs80.i:                                     ; preds = %land.rhs.i
  %.b489.i = load i1, ptr @__mcopy_atomic.__already_done, align 1
  br i1 %.b489.i, label %land.rhs80.i.out_unlock.i_crit_edge, label %if.then91.i, !prof !36

land.rhs80.i.out_unlock.i_crit_edge:              ; preds = %land.rhs80.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i

if.then91.i:                                      ; preds = %land.rhs80.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @__mcopy_atomic.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 542, i32 noundef 9, ptr noundef null) #7
  br label %out_unlock.i

if.end126.critedge.i:                             ; preds = %land.rhs.i.if.end126.critedge.i_crit_edge, %if.end71.i.if.end126.critedge.i_crit_edge
  br i1 %tobool128.i, label %land.lhs.true131.i, label %if.end126.critedge.i.if.end136.i_crit_edge

if.end126.critedge.i.if.end136.i_crit_edge:       ; preds = %if.end126.critedge.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end136.i

land.lhs.true131.i:                               ; preds = %if.end126.critedge.i
  %vm_flags132.i = getelementptr inbounds %struct.vm_area_struct, ptr %call.i.i, i32 0, i32 8
  %15 = ptrtoint ptr %vm_flags132.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vm_flags132.i, align 4
  %and133.i = and i32 %16, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133.i)
  %tobool134.not.i = icmp eq i32 %and133.i, 0
  br i1 %tobool134.not.i, label %land.lhs.true131.i.out_unlock.i_crit_edge, label %land.lhs.true131.i.if.end136.i_crit_edge

land.lhs.true131.i.if.end136.i_crit_edge:         ; preds = %land.lhs.true131.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end136.i

land.lhs.true131.i.out_unlock.i_crit_edge:        ; preds = %land.lhs.true131.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i

if.end136.i:                                      ; preds = %land.lhs.true131.i.if.end136.i_crit_edge, %if.end126.critedge.i.if.end136.i_crit_edge
  br i1 %tobool.not.i504.i, label %if.end136.i.if.end145.i_crit_edge, label %land.lhs.true142.i

if.end136.i.if.end145.i_crit_edge:                ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end145.i

land.lhs.true142.i:                               ; preds = %if.end136.i
  %call143.i = call zeroext i1 @vma_is_shmem(ptr noundef nonnull %call.i.i) #7
  br i1 %call143.i, label %land.lhs.true142.i.if.end145.i_crit_edge, label %land.lhs.true142.i.out_unlock.i_crit_edge

land.lhs.true142.i.out_unlock.i_crit_edge:        ; preds = %land.lhs.true142.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i

land.lhs.true142.i.if.end145.i_crit_edge:         ; preds = %land.lhs.true142.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end145.i

if.end145.i:                                      ; preds = %land.lhs.true142.i.if.end145.i_crit_edge, %if.end136.i.if.end145.i_crit_edge
  %call146.i = call zeroext i1 @vma_is_shmem(ptr noundef nonnull %call.i.i) #7
  %vm_flags151.i = getelementptr inbounds %struct.vm_area_struct, ptr %call.i.i, i32 0, i32 8
  %17 = ptrtoint ptr %vm_flags151.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vm_flags151.i, align 4
  %and152.i = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152.i)
  %tobool153.not.i = icmp eq i32 %and152.i, 0
  br i1 %tobool153.not.i, label %land.lhs.true154.i, label %if.end145.i.if.end164.i_crit_edge

if.end145.i.if.end164.i_crit_edge:                ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end164.i

land.lhs.true154.i:                               ; preds = %if.end145.i
  %anon_vma.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %call.i.i, i32 0, i32 11
  %19 = ptrtoint ptr %anon_vma.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %anon_vma.i.i, align 4
  %tobool.not.i507.i = icmp eq ptr %20, null
  br i1 %tobool.not.i507.i, label %anon_vma_prepare.exit.i, label %land.lhs.true154.i.if.end164.i_crit_edge, !prof !37

land.lhs.true154.i.if.end164.i_crit_edge:         ; preds = %land.lhs.true154.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end164.i

anon_vma_prepare.exit.i:                          ; preds = %land.lhs.true154.i
  %call.i508.i = call i32 @__anon_vma_prepare(ptr noundef nonnull %call.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i508.i)
  %tobool156.not.i = icmp eq i32 %call.i508.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %src_addr.0.i, i32 %add.i)
  %cmp166590.i = icmp ult i32 %src_addr.0.i, %add.i
  %or.cond612.i = select i1 %tobool156.not.i, i1 %cmp166590.i, i1 false
  br i1 %or.cond612.i, label %anon_vma_prepare.exit.i.while.body.i.preheader_crit_edge, label %anon_vma_prepare.exit.i.out_unlock.i_crit_edge, !prof !56

anon_vma_prepare.exit.i.out_unlock.i_crit_edge:   ; preds = %anon_vma_prepare.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i

anon_vma_prepare.exit.i.while.body.i.preheader_crit_edge: ; preds = %anon_vma_prepare.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.preheader

if.end164.i:                                      ; preds = %land.lhs.true154.i.if.end164.i_crit_edge, %if.end145.i.if.end164.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %src_addr.0.i, i32 %add.i)
  %cmp166590.old.i = icmp ult i32 %src_addr.0.i, %add.i
  br i1 %cmp166590.old.i, label %if.end164.i.while.body.i.preheader_crit_edge, label %if.end164.i.out_unlock.i_crit_edge

if.end164.i.out_unlock.i_crit_edge:               ; preds = %if.end164.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i

if.end164.i.while.body.i.preheader_crit_edge:     ; preds = %if.end164.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %if.end164.i.while.body.i.preheader_crit_edge, %anon_vma_prepare.exit.i.while.body.i.preheader_crit_edge
  br label %while.body.i

while.cond.i:                                     ; preds = %fatal_signal_pending.exit.i.while.cond.i_crit_edge, %if.then341.i.while.cond.i_crit_edge
  %cmp166.i = icmp ult i32 %add343.i, %add.i
  br i1 %cmp166.i, label %while.cond.i.while.body.i_crit_edge, label %while.cond.i.out_unlock.i_crit_edge

while.cond.i.out_unlock.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %while.body.i.preheader
  %copied.1593.i = phi i32 [ %add344.i, %while.cond.i.while.body.i_crit_edge ], [ %copied.0.i, %while.body.i.preheader ]
  %dst_addr.1592.i = phi i32 [ %add342.i, %while.cond.i.while.body.i_crit_edge ], [ %dst_addr.0.i, %while.body.i.preheader ]
  %src_addr.1591.i = phi i32 [ %add343.i, %while.cond.i.while.body.i_crit_edge ], [ %src_addr.0.i, %while.body.i.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %dst_addr.1592.i, i32 %add46.i)
  %cmp169.not.i = icmp ult i32 %dst_addr.1592.i, %add46.i
  br i1 %cmp169.not.i, label %do.end185.i, label %do.body177.i, !prof !36

do.body177.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 578, 0\0A.popsection", ""() #7, !srcloc !57
  unreachable

do.end185.i:                                      ; preds = %while.body.i
  %21 = ptrtoint ptr %pgd1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pgd1.i.i, align 4
  %shr.i.i.i = lshr i32 %dst_addr.1592.i, 21
  %add.ptr.i.i511.i = getelementptr [2 x i32], ptr %22, i32 %shr.i.i.i
  %tobool187.not.i = icmp eq ptr %add.ptr.i.i511.i, null
  br i1 %tobool187.not.i, label %do.end185.i.out_unlock.i_crit_edge, label %if.end197.i, !prof !37

do.end185.i.out_unlock.i_crit_edge:               ; preds = %do.end185.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i

if.end197.i:                                      ; preds = %do.end185.i
  %23 = ptrtoint ptr %add.ptr.i.i511.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i.i511.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool209.not.i = icmp eq i32 %24, 0
  br i1 %tobool209.not.i, label %land.lhs.true218.i, label %if.end197.i.do.body259.i_crit_edge, !prof !37

if.end197.i.do.body259.i_crit_edge:               ; preds = %if.end197.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body259.i

land.lhs.true218.i:                               ; preds = %if.end197.i
  %call219.i = call i32 @__pte_alloc(ptr noundef %dst_mm, ptr noundef nonnull %add.ptr.i.i511.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call219.i)
  %tobool220.not.i = icmp eq i32 %call219.i, 0
  br i1 %tobool220.not.i, label %if.end228.i, label %land.lhs.true218.i.out_unlock.i_crit_edge, !prof !36

land.lhs.true218.i.out_unlock.i_crit_edge:        ; preds = %land.lhs.true218.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i

if.end228.i:                                      ; preds = %land.lhs.true218.i
  %25 = ptrtoint ptr %add.ptr.i.i511.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr.i = load i32, ptr %add.ptr.i.i511.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool240.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool240.not.i, label %do.body250.i, label %if.end228.i.do.body259.i_crit_edge, !prof !37

if.end228.i.do.body259.i_crit_edge:               ; preds = %if.end228.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body259.i

do.body250.i:                                     ; preds = %if.end228.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 606, 0\0A.popsection", ""() #7, !srcloc !58
  unreachable

do.body259.i:                                     ; preds = %if.end228.i.do.body259.i_crit_edge, %if.end197.i.do.body259.i_crit_edge
  %26 = ptrtoint ptr %vm_flags151.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vm_flags151.i, align 4
  %and.i.i = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %if.then2.i.i, label %if.else9.i.i

if.then2.i.i:                                     ; preds = %do.body259.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i.i = call fastcc i32 @mcopy_atomic_pte(ptr noundef %dst_mm, ptr noundef nonnull %add.ptr.i.i511.i, ptr noundef nonnull %call.i.i, i32 noundef %dst_addr.1592.i, i32 noundef %src_addr.1591.i, ptr noundef nonnull %page.i, i1 noundef zeroext %tobool128.i) #7
  br label %mfill_atomic_pte.exit.i

if.else9.i.i:                                     ; preds = %do.body259.i
  br i1 %tobool128.i, label %land.rhs.i.i, label %if.else9.i.i.if.end41.i.i_crit_edge

if.else9.i.i.if.end41.i.i_crit_edge:              ; preds = %if.else9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.i.i

land.rhs.i.i:                                     ; preds = %if.else9.i.i
  %.b73.i.i = load i1, ptr @mfill_atomic_pte.__already_done, align 1
  br i1 %.b73.i.i, label %land.rhs.i.i.if.end41.i.i_crit_edge, label %if.then19.i.i, !prof !36

land.rhs.i.i.if.end41.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.i.i

if.then19.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @mfill_atomic_pte.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 475, i32 noundef 9, ptr noundef null) #7
  br label %if.end41.i.i

if.end41.i.i:                                     ; preds = %if.then19.i.i, %land.rhs.i.i.if.end41.i.i_crit_edge, %if.else9.i.i.if.end41.i.i_crit_edge
  %call50.i.i = call i32 @shmem_mfill_atomic_pte(ptr noundef %dst_mm, ptr noundef nonnull %add.ptr.i.i511.i, ptr noundef nonnull %call.i.i, i32 noundef %dst_addr.1592.i, i32 noundef %src_addr.1591.i, i1 noundef zeroext false, ptr noundef nonnull %page.i) #7
  br label %mfill_atomic_pte.exit.i

mfill_atomic_pte.exit.i:                          ; preds = %if.end41.i.i, %if.then2.i.i
  %retval.0.i497.i = phi i32 [ %call50.i.i, %if.end41.i.i ], [ %call6.i.i, %if.then2.i.i ]
  call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 611, i32 noundef 0) #7
  %call.i512.i = call i32 @__cond_resched() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %retval.0.i497.i)
  %cmp282.i = icmp eq i32 %retval.0.i497.i, -2
  br i1 %cmp282.i, label %if.then289.i, label %do.body321.i, !prof !37

if.then289.i:                                     ; preds = %mfill_atomic_pte.exit.i
  call fastcc void @mmap_read_unlock(ptr noundef %dst_mm) #7
  %28 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %page.i, align 4
  %tobool291.not.i = icmp eq ptr %29, null
  br i1 %tobool291.not.i, label %do.body301.i, label %do.end309.i, !prof !37

do.body301.i:                                     ; preds = %if.then289.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 617, 0\0A.popsection", ""() #7, !srcloc !59
  unreachable

do.end309.i:                                      ; preds = %if.then289.i
  %call310.i = call fastcc ptr @kmap(ptr noundef nonnull %29) #7
  %30 = inttoptr i32 %src_addr.1591.i to ptr
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #7
  %call.i.i498.i = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i498.i, label %do.end309.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

do.end309.i.if.then11.i.i.i_crit_edge:            ; preds = %do.end309.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %do.end309.i
  %31 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %30, i32 4096, i32 -1226833920) #10, !srcloc !60
  %asmresult.i.i.i = extractvalue { i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !36

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %call310.i, i32 noundef 4096) #7
  %32 = call i32 @llvm.read_register.i32(metadata !0) #7
  %and.i.i.i.i.i.i500.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i.i500.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 4
  %34 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #4, !srcloc !61
  %and.i.i.i.i.i = and i32 %34, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #7, !srcloc !62
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef %call310.i, ptr noundef %30, i32 noundef 4096) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %34) #7, !srcloc !62
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %retry.loopexit.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !36

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %do.end309.i.if.then11.i.i.i_crit_edge
  %res.03.i.i.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 4096, %do.end309.i.if.then11.i.i.i_crit_edge ], [ 4096, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 4096, %res.03.i.i.i
  %add.ptr.i.i501.i = getelementptr i8, ptr %call310.i, i32 %sub.i.i.i
  %35 = call ptr @memset(ptr %add.ptr.i.i501.i, i32 0, i32 %res.03.i.i.i)
  %36 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %page.i, align 4
  call fastcc void @kunmap(ptr noundef %37) #7
  br label %out.i

do.body321.i:                                     ; preds = %mfill_atomic_pte.exit.i
  %38 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %page.i, align 4
  %tobool322.not.i = icmp eq ptr %39, null
  br i1 %tobool322.not.i, label %if.end339.i, label %do.body330.i, !prof !36

do.body330.i:                                     ; preds = %do.body321.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 630, 0\0A.popsection", ""() #7, !srcloc !64
  unreachable

if.end339.i:                                      ; preds = %do.body321.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i497.i)
  %tobool340.not.i = icmp eq i32 %retval.0.i497.i, 0
  br i1 %tobool340.not.i, label %if.then341.i, label %if.end339.i.out_unlock.i_crit_edge

if.end339.i.out_unlock.i_crit_edge:               ; preds = %if.end339.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i

if.then341.i:                                     ; preds = %if.end339.i
  %add342.i = add i32 %dst_addr.1592.i, 4096
  %add343.i = add i32 %src_addr.1591.i, 4096
  %add344.i = add i32 %copied.1593.i, 4096
  %40 = call i32 @llvm.read_register.i32(metadata !0) #7
  %and.i513.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i513.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task.i, align 8
  %stack.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %stack.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %stack.i.i.i.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %45, align 4
  %and1.i.i.i.i.i.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i514.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i514.i, label %if.then341.i.while.cond.i_crit_edge, label %fatal_signal_pending.exit.i

if.then341.i.while.cond.i_crit_edge:              ; preds = %if.then341.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

fatal_signal_pending.exit.i:                      ; preds = %if.then341.i
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 116, i32 1
  %48 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %signal.i.i.i, align 4
  %50 = and i32 %49, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool347.not.i = icmp eq i32 %50, 0
  br i1 %tobool347.not.i, label %fatal_signal_pending.exit.i.while.cond.i_crit_edge, label %fatal_signal_pending.exit.i.out_unlock.i_crit_edge

fatal_signal_pending.exit.i.out_unlock.i_crit_edge: ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i

fatal_signal_pending.exit.i.while.cond.i_crit_edge: ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

out_unlock.i:                                     ; preds = %fatal_signal_pending.exit.i.out_unlock.i_crit_edge, %if.end339.i.out_unlock.i_crit_edge, %land.lhs.true218.i.out_unlock.i_crit_edge, %do.end185.i.out_unlock.i_crit_edge, %while.cond.i.out_unlock.i_crit_edge, %if.end164.i.out_unlock.i_crit_edge, %anon_vma_prepare.exit.i.out_unlock.i_crit_edge, %land.lhs.true142.i.out_unlock.i_crit_edge, %land.lhs.true131.i.out_unlock.i_crit_edge, %if.then91.i, %land.rhs80.i.out_unlock.i_crit_edge, %if.end3.i.i.out_unlock.i_crit_edge, %lor.lhs.false.i.i.out_unlock.i_crit_edge, %if.end.i.i.out_unlock.i_crit_edge, %if.end67.i.out_unlock.i_crit_edge, %land.lhs.true.i.out_unlock.i_crit_edge
  %copied.4.i = phi i32 [ %copied.0.i, %if.then91.i ], [ %copied.0.i, %land.rhs80.i.out_unlock.i_crit_edge ], [ %copied.1593.i, %if.end339.i.out_unlock.i_crit_edge ], [ %add344.i, %fatal_signal_pending.exit.i.out_unlock.i_crit_edge ], [ %copied.1593.i, %land.lhs.true218.i.out_unlock.i_crit_edge ], [ %copied.1593.i, %do.end185.i.out_unlock.i_crit_edge ], [ %add344.i, %while.cond.i.out_unlock.i_crit_edge ], [ %copied.0.i, %land.lhs.true.i.out_unlock.i_crit_edge ], [ %copied.0.i, %if.end67.i.out_unlock.i_crit_edge ], [ %copied.0.i, %if.end.i.i.out_unlock.i_crit_edge ], [ %copied.0.i, %lor.lhs.false.i.i.out_unlock.i_crit_edge ], [ %copied.0.i, %if.end3.i.i.out_unlock.i_crit_edge ], [ %copied.0.i, %land.lhs.true131.i.out_unlock.i_crit_edge ], [ %copied.0.i, %land.lhs.true142.i.out_unlock.i_crit_edge ], [ %copied.0.i, %anon_vma_prepare.exit.i.out_unlock.i_crit_edge ], [ %copied.0.i, %if.end164.i.out_unlock.i_crit_edge ]
  %err.4.i = phi i32 [ -22, %if.then91.i ], [ -22, %land.rhs80.i.out_unlock.i_crit_edge ], [ %retval.0.i497.i, %if.end339.i.out_unlock.i_crit_edge ], [ -4, %fatal_signal_pending.exit.i.out_unlock.i_crit_edge ], [ -12, %land.lhs.true218.i.out_unlock.i_crit_edge ], [ -12, %do.end185.i.out_unlock.i_crit_edge ], [ 0, %while.cond.i.out_unlock.i_crit_edge ], [ -12, %if.end164.i.out_unlock.i_crit_edge ], [ -12, %anon_vma_prepare.exit.i.out_unlock.i_crit_edge ], [ -22, %land.lhs.true142.i.out_unlock.i_crit_edge ], [ -22, %land.lhs.true131.i.out_unlock.i_crit_edge ], [ -2, %if.end3.i.i.out_unlock.i_crit_edge ], [ -2, %lor.lhs.false.i.i.out_unlock.i_crit_edge ], [ -2, %if.end.i.i.out_unlock.i_crit_edge ], [ -2, %if.end67.i.out_unlock.i_crit_edge ], [ -11, %land.lhs.true.i.out_unlock.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@mcopy_atomic, %if.then.i.i516.i)) #7
          to label %mmap_read_unlock.exit.i [label %if.then.i.i516.i], !srcloc !55

if.then.i.i516.i:                                 ; preds = %out_unlock.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__mmap_lock_do_trace_released(ptr noundef %dst_mm, i1 noundef zeroext false) #7
  br label %mmap_read_unlock.exit.i

mmap_read_unlock.exit.i:                          ; preds = %if.then.i.i516.i, %out_unlock.i
  call void @up_read(ptr noundef %mmap_lock.i.i) #7
  br label %out.i

out.i:                                            ; preds = %mmap_read_unlock.exit.i, %if.then11.i.i.i
  %copied.5.i = phi i32 [ %copied.4.i, %mmap_read_unlock.exit.i ], [ %copied.1593.i, %if.then11.i.i.i ]
  %err.5.i = phi i32 [ %err.4.i, %mmap_read_unlock.exit.i ], [ -14, %if.then11.i.i.i ]
  %51 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %page.i, align 4
  %tobool355.not.i = icmp eq ptr %52, null
  br i1 %tobool355.not.i, label %out.i.do.body358.i_crit_edge, label %if.then356.i

out.i.do.body358.i_crit_edge:                     ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body358.i

if.then356.i:                                     ; preds = %out.i
  %53 = getelementptr inbounds %struct.page, ptr %52, i32 0, i32 1
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %53, align 4
  %and.i.i.i = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i518.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i518.i, label %if.end.i.i521.i, label %if.then.i.i520.i, !prof !36

if.then.i.i520.i:                                 ; preds = %if.then356.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i519.i = add i32 %55, -1
  br label %_compound_head.exit.i.i

if.end.i.i521.i:                                  ; preds = %if.then356.i
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %52 to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i521.i, %if.then.i.i520.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i519.i, %if.then.i.i520.i ], [ %56, %if.end.i.i521.i ]
  %57 = inttoptr i32 %retval.0.i.i.i to ptr
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %57, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #7
  %58 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp.i.i.i.i.i = icmp eq i32 %59, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !37

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @dump_page(ptr noundef %57, ptr noundef nonnull @.str.9) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !65
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  %call.i.i.i10.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !66
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #7
  %60 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #7, !srcloc !67
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %60, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@mcopy_atomic, %if.then.i.i.i.i.i.i)) #7
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !55

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %57, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #7
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.do.body358.i_crit_edge

folio_put_testzero.exit.i.i.i.do.body358.i_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body358.i

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__put_page(ptr noundef %57) #7
  br label %do.body358.i

do.body358.i:                                     ; preds = %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.do.body358.i_crit_edge, %out.i.do.body358.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.5.i)
  %cmp359.i = icmp slt i32 %copied.5.i, 0
  br i1 %cmp359.i, label %do.body367.i, label %do.body376.i, !prof !37

do.body367.i:                                     ; preds = %do.body358.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 649, 0\0A.popsection", ""() #7, !srcloc !69
  unreachable

do.body376.i:                                     ; preds = %do.body358.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.5.i)
  %cmp377.i = icmp sgt i32 %err.5.i, 0
  br i1 %cmp377.i, label %do.body385.i, label %do.body394.i, !prof !37

do.body385.i:                                     ; preds = %do.body376.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 650, 0\0A.popsection", ""() #7, !srcloc !70
  unreachable

do.body394.i:                                     ; preds = %do.body376.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.5.i)
  %tobool395.not.i = icmp eq i32 %copied.5.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.5.i)
  %tobool397.not.i = icmp eq i32 %err.5.i, 0
  %spec.select493.i = select i1 %tobool395.not.i, i1 %tobool397.not.i, i1 false
  br i1 %spec.select493.i, label %do.body408.i, label %__mcopy_atomic.exit, !prof !37

do.body408.i:                                     ; preds = %do.body394.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 651, 0\0A.popsection", ""() #7, !srcloc !71
  unreachable

__mcopy_atomic.exit:                              ; preds = %do.body394.i
  call void @__sanitizer_cov_trace_pc() #9
  %err.5.copied.5.i = select i1 %tobool395.not.i, i32 %err.5.i, i32 %copied.5.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page.i) #7
  ret i32 %err.5.copied.5.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mfill_zeropage(ptr noundef %dst_mm, i32 noundef %start, i32 noundef %len, ptr noundef %mmap_changing) local_unnamed_addr #0 align 64 {
entry:
  %page.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page.i) #7
  %and.i = and i32 %start, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body9.i, label %do.body3.i, !prof !36

do.body3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 504, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

do.body9.i:                                       ; preds = %entry
  %and10.i = and i32 %len, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %do.body28.i, label %do.body19.i, !prof !36

do.body19.i:                                      ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 505, 0\0A.popsection", ""() #7, !srcloc !52
  unreachable

do.body28.i:                                      ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp.not.i.not = icmp eq i32 %len, 0
  br i1 %cmp.not.i.not, label %do.body36.i, label %do.body45.i, !prof !37

do.body36.i:                                      ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 508, 0\0A.popsection", ""() #7, !srcloc !53
  unreachable

do.body45.i:                                      ; preds = %do.body28.i
  %add46.i = add i32 %len, %start
  call void @__sanitizer_cov_trace_cmp4(i32 %add46.i, i32 %start)
  %cmp47.not.i = icmp ugt i32 %add46.i, %start
  br i1 %cmp47.not.i, label %do.end63.i, label %do.body55.i, !prof !36

do.body55.i:                                      ; preds = %do.body45.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 509, 0\0A.popsection", ""() #7, !srcloc !54
  unreachable

do.end63.i:                                       ; preds = %do.body45.i
  %0 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %page.i, align 4
  %mmap_lock.i.i = getelementptr inbounds %struct.anon, ptr %dst_mm, i32 0, i32 15
  %tobool64.not.i = icmp eq ptr %mmap_changing, null
  %pgd1.i.i = getelementptr inbounds %struct.anon, ptr %dst_mm, i32 0, i32 8
  br label %retry.i

retry.loopexit.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %page.i, align 4
  call fastcc void @kunmap(ptr noundef %2) #7
  br label %retry.i

retry.i:                                          ; preds = %retry.loopexit.i, %do.end63.i
  %src_addr.0.i = phi i32 [ 0, %do.end63.i ], [ %src_addr.1591.i, %retry.loopexit.i ]
  %dst_addr.0.i = phi i32 [ %start, %do.end63.i ], [ %dst_addr.1592.i, %retry.loopexit.i ]
  %copied.0.i = phi i32 [ 0, %do.end63.i ], [ %copied.1593.i, %retry.loopexit.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@mfill_zeropage, %if.then.i.i503.i)) #7
          to label %__mmap_lock_trace_start_locking.exit.i.i [label %if.then.i.i503.i], !srcloc !55

if.then.i.i503.i:                                 ; preds = %retry.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %dst_mm, i1 noundef zeroext false) #7
  br label %__mmap_lock_trace_start_locking.exit.i.i

__mmap_lock_trace_start_locking.exit.i.i:         ; preds = %if.then.i.i503.i, %retry.i
  call void @down_read(ptr noundef %mmap_lock.i.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@mfill_zeropage, %if.then.i3.i.i)) #7
          to label %mmap_read_lock.exit.i [label %if.then.i3.i.i], !srcloc !55

if.then.i3.i.i:                                   ; preds = %__mmap_lock_trace_start_locking.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %dst_mm, i1 noundef zeroext false, i1 noundef zeroext true) #7
  br label %mmap_read_lock.exit.i

mmap_read_lock.exit.i:                            ; preds = %if.then.i3.i.i, %__mmap_lock_trace_start_locking.exit.i.i
  br i1 %tobool64.not.i, label %mmap_read_lock.exit.i.if.end67.i_crit_edge, label %land.lhs.true.i

mmap_read_lock.exit.i.if.end67.i_crit_edge:       ; preds = %mmap_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67.i

land.lhs.true.i:                                  ; preds = %mmap_read_lock.exit.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %mmap_changing, i32 noundef 4) #7
  %3 = ptrtoint ptr %mmap_changing to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %mmap_changing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool65.not.i = icmp eq i32 %4, 0
  br i1 %tobool65.not.i, label %land.lhs.true.i.if.end67.i_crit_edge, label %land.lhs.true.i.out_unlock.i_crit_edge

land.lhs.true.i.out_unlock.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i

land.lhs.true.i.if.end67.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67.i

if.end67.i:                                       ; preds = %land.lhs.true.i.if.end67.i_crit_edge, %mmap_read_lock.exit.i.if.end67.i_crit_edge
  %call.i.i = call ptr @find_vma(ptr noundef %dst_mm, i32 noundef %start) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end67.i.out_unlock.i_crit_edge, label %if.end.i.i

if.end67.i.out_unlock.i_crit_edge:                ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i

if.end.i.i:                                       ; preds = %if.end67.i
  %5 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %start)
  %cmp.i.i = icmp ugt i32 %6, %start
  br i1 %cmp.i.i, label %if.end.i.i.out_unlock.i_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.out_unlock.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %vm_end.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %call.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %vm_end.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vm_end.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add46.i, i32 %8)
  %cmp1.i.i = icmp ugt i32 %add46.i, %8
  br i1 %cmp1.i.i, label %lor.lhs.false.i.i.out_unlock.i_crit_edge, label %if.end3.i.i

lor.lhs.false.i.i.out_unlock.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i

if.end3.i.i:                                      ; preds = %lor.lhs.false.i.i
  %vm_userfaultfd_ctx.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %call.i.i, i32 0, i32 17
  %9 = ptrtoint ptr %vm_userfaultfd_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vm_userfaultfd_ctx.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %10, null
  br i1 %tobool4.not.i.i, label %if.end3.i.i.out_unlock.i_crit_edge, label %if.end71.i

if.end3.i.i.out_unlock.i_crit_edge:               ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i

if.end71.i:                                       ; preds = %if.end3.i.i
  %vm_ops.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %call.i.i, i32 0, i32 12
  %11 = ptrtoint ptr %vm_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vm_ops.i.i, align 4
  %tobool.not.i504.i = icmp eq ptr %12, null
  br i1 %tobool.not.i504.i, label %land.rhs.i, label %land.lhs.true142.i

land.rhs.i:                                       ; preds = %if.end71.i
  %vm_flags.i = getelementptr inbounds %struct.vm_area_struct, ptr %call.i.i, i32 0, i32 8
  %13 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vm_flags.i, align 4
  %and73.i = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.i)
  %tobool74.not.i = icmp eq i32 %and73.i, 0
  br i1 %tobool74.not.i, label %land.rhs.i.if.end145.i_crit_edge, label %land.rhs80.i

land.rhs.i.if.end145.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end145.i

land.rhs80.i:                                     ; preds = %land.rhs.i
  %.b489.i = load i1, ptr @__mcopy_atomic.__already_done, align 1
  br i1 %.b489.i, label %land.rhs80.i.out_unlock.i_crit_edge, label %if.then91.i, !prof !36

land.rhs80.i.out_unlock.i_crit_edge:              ; preds = %land.rhs80.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i

if.then91.i:                                      ; preds = %land.rhs80.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @__mcopy_atomic.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 542, i32 noundef 9, ptr noundef null) #7
  br label %out_unlock.i

land.lhs.true142.i:                               ; preds = %if.end71.i
  %call143.i = call zeroext i1 @vma_is_shmem(ptr noundef nonnull %call.i.i) #7
  br i1 %call143.i, label %land.lhs.true142.i.if.end145.i_crit_edge, label %land.lhs.true142.i.out_unlock.i_crit_edge

land.lhs.true142.i.out_unlock.i_crit_edge:        ; preds = %land.lhs.true142.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i

land.lhs.true142.i.if.end145.i_crit_edge:         ; preds = %land.lhs.true142.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end145.i

if.end145.i:                                      ; preds = %land.lhs.true142.i.if.end145.i_crit_edge, %land.rhs.i.if.end145.i_crit_edge
  %call146.i = call zeroext i1 @vma_is_shmem(ptr noundef nonnull %call.i.i) #7
  %vm_flags151.i = getelementptr inbounds %struct.vm_area_struct, ptr %call.i.i, i32 0, i32 8
  %15 = ptrtoint ptr %vm_flags151.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vm_flags151.i, align 4
  %and152.i = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152.i)
  %tobool153.not.i = icmp eq i32 %and152.i, 0
  br i1 %tobool153.not.i, label %land.lhs.true154.i, label %if.end145.i.if.end164.i_crit_edge

if.end145.i.if.end164.i_crit_edge:                ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end164.i

land.lhs.true154.i:                               ; preds = %if.end145.i
  %anon_vma.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %call.i.i, i32 0, i32 11
  %17 = ptrtoint ptr %anon_vma.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %anon_vma.i.i, align 4
  %tobool.not.i507.i = icmp eq ptr %18, null
  br i1 %tobool.not.i507.i, label %anon_vma_prepare.exit.i, label %land.lhs.true154.i.if.end164.i_crit_edge, !prof !37

land.lhs.true154.i.if.end164.i_crit_edge:         ; preds = %land.lhs.true154.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end164.i

anon_vma_prepare.exit.i:                          ; preds = %land.lhs.true154.i
  %call.i508.i = call i32 @__anon_vma_prepare(ptr noundef nonnull %call.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i508.i)
  %tobool156.not.i = icmp eq i32 %call.i508.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %src_addr.0.i, i32 %len)
  %cmp166590.i = icmp ult i32 %src_addr.0.i, %len
  %or.cond612.i = select i1 %tobool156.not.i, i1 %cmp166590.i, i1 false
  br i1 %or.cond612.i, label %anon_vma_prepare.exit.i.while.body.lr.ph.i_crit_edge, label %anon_vma_prepare.exit.i.out_unlock.i_crit_edge, !prof !56

anon_vma_prepare.exit.i.out_unlock.i_crit_edge:   ; preds = %anon_vma_prepare.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i

anon_vma_prepare.exit.i.while.body.lr.ph.i_crit_edge: ; preds = %anon_vma_prepare.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.lr.ph.i

if.end164.i:                                      ; preds = %land.lhs.true154.i.if.end164.i_crit_edge, %if.end145.i.if.end164.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %src_addr.0.i, i32 %len)
  %cmp166590.old.i = icmp ult i32 %src_addr.0.i, %len
  br i1 %cmp166590.old.i, label %if.end164.i.while.body.lr.ph.i_crit_edge, label %if.end164.i.out_unlock.i_crit_edge

if.end164.i.out_unlock.i_crit_edge:               ; preds = %if.end164.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i

if.end164.i.while.body.lr.ph.i_crit_edge:         ; preds = %if.end164.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %if.end164.i.while.body.lr.ph.i_crit_edge, %anon_vma_prepare.exit.i.while.body.lr.ph.i_crit_edge
  %vm_page_prot.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %call.i.i, i32 0, i32 7
  %vm_file.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %call.i.i, i32 0, i32 14
  %vm_pgoff.i.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %call.i.i, i32 0, i32 13
  br label %while.body.i

while.cond.i:                                     ; preds = %fatal_signal_pending.exit.i.while.cond.i_crit_edge, %if.then341.i.while.cond.i_crit_edge
  %cmp166.i = icmp ult i32 %add343.i, %len
  br i1 %cmp166.i, label %while.cond.i.while.body.i_crit_edge, label %while.cond.i.out_unlock.i_crit_edge

while.cond.i.out_unlock.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %copied.1593.i = phi i32 [ %copied.0.i, %while.body.lr.ph.i ], [ %add344.i, %while.cond.i.while.body.i_crit_edge ]
  %dst_addr.1592.i = phi i32 [ %dst_addr.0.i, %while.body.lr.ph.i ], [ %add342.i, %while.cond.i.while.body.i_crit_edge ]
  %src_addr.1591.i = phi i32 [ %src_addr.0.i, %while.body.lr.ph.i ], [ %add343.i, %while.cond.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %dst_addr.1592.i, i32 %add46.i)
  %cmp169.not.i = icmp ult i32 %dst_addr.1592.i, %add46.i
  br i1 %cmp169.not.i, label %do.end185.i, label %do.body177.i, !prof !36

do.body177.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 578, 0\0A.popsection", ""() #7, !srcloc !57
  unreachable

do.end185.i:                                      ; preds = %while.body.i
  %19 = ptrtoint ptr %pgd1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pgd1.i.i, align 4
  %shr.i.i.i = lshr i32 %dst_addr.1592.i, 21
  %add.ptr.i.i511.i = getelementptr [2 x i32], ptr %20, i32 %shr.i.i.i
  %tobool187.not.i = icmp eq ptr %add.ptr.i.i511.i, null
  br i1 %tobool187.not.i, label %do.end185.i.out_unlock.i_crit_edge, label %if.end197.i, !prof !37

do.end185.i.out_unlock.i_crit_edge:               ; preds = %do.end185.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i

if.end197.i:                                      ; preds = %do.end185.i
  %21 = ptrtoint ptr %add.ptr.i.i511.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i.i511.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool209.not.i = icmp eq i32 %22, 0
  br i1 %tobool209.not.i, label %land.lhs.true218.i, label %if.end197.i.do.body259.i_crit_edge, !prof !37

if.end197.i.do.body259.i_crit_edge:               ; preds = %if.end197.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body259.i

land.lhs.true218.i:                               ; preds = %if.end197.i
  %call219.i = call i32 @__pte_alloc(ptr noundef %dst_mm, ptr noundef nonnull %add.ptr.i.i511.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call219.i)
  %tobool220.not.i = icmp eq i32 %call219.i, 0
  br i1 %tobool220.not.i, label %if.end228.i, label %land.lhs.true218.i.out_unlock.i_crit_edge, !prof !36

land.lhs.true218.i.out_unlock.i_crit_edge:        ; preds = %land.lhs.true218.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i

if.end228.i:                                      ; preds = %land.lhs.true218.i
  %23 = ptrtoint ptr %add.ptr.i.i511.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr.i = load i32, ptr %add.ptr.i.i511.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool240.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool240.not.i, label %do.body250.i, label %if.end228.i.do.body259.i_crit_edge, !prof !37

if.end228.i.do.body259.i_crit_edge:               ; preds = %if.end228.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body259.i

do.body250.i:                                     ; preds = %if.end228.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 606, 0\0A.popsection", ""() #7, !srcloc !58
  unreachable

do.body259.i:                                     ; preds = %if.end228.i.do.body259.i_crit_edge, %if.end197.i.do.body259.i_crit_edge
  %24 = phi i32 [ %.pr.i, %if.end228.i.do.body259.i_crit_edge ], [ %22, %if.end197.i.do.body259.i_crit_edge ]
  %25 = ptrtoint ptr %vm_flags151.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vm_flags151.i, align 4
  %and.i.i = and i32 %26, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %if.then2.i.i, label %if.else9.i.i

if.then2.i.i:                                     ; preds = %do.body259.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @zero_pfn to i32))
  %27 = load i32, ptr @zero_pfn, align 4
  %shl.i.i.i = shl i32 %27, 12
  %28 = ptrtoint ptr %vm_page_prot.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vm_page_prot.i.i.i, align 4
  %or.i.i.i = or i32 %shl.i.i.i, %29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %30 = load ptr, ptr @mem_map, align 4
  %shr.i.i.i.i = lshr i32 %24, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %31 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i.i.i.i = sub i32 %shr.i.i.i.i, %31
  %ptl.i.i.i.i.i = getelementptr %struct.page, ptr %30, i32 %sub.i.i.i.i, i32 1, i32 0, i32 3
  %32 = ptrtoint ptr %ptl.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ptl.i.i.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %30, i32 %sub.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %34 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i.i.i = or i32 %34, 512
  %35 = call i32 @llvm.read_register.i32(metadata !0) #7
  %and.i.i.i.i.i.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %38, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !34
  %39 = call i32 @llvm.read_register.i32(metadata !0) #7
  %and.i.i.i1.i.i.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i1.i.i.i.i.i to ptr
  %task.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %task.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task.i.i.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 213
  %43 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pagefault_disabled.i.i.i.i.i.i.i, align 8
  %inc.i.i.i.i.i.i.i = add i32 %44, 1
  store i32 %inc.i.i.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !35
  %call.i.i.i.i.i = call ptr @__kmap_local_page_prot(ptr noundef %add.ptr.i.i.i, i32 noundef %or.i.i.i.i) #7
  %shr.i38.i.i.i = lshr i32 %dst_addr.1592.i, 12
  %and.i.i.i.i = and i32 %shr.i38.i.i.i, 511
  %add.ptr5.i.i.i = getelementptr i32, ptr %call.i.i.i.i.i, i32 %and.i.i.i.i
  call void @_raw_spin_lock(ptr noundef %33) #7
  %45 = ptrtoint ptr %vm_file.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %vm_file.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %46, null
  br i1 %tobool.not.i.i.i, label %if.then2.i.i.if.end14.i.i.i_crit_edge, label %if.then.i.i.i

if.then2.i.i.if.end14.i.i.i_crit_edge:            ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i.i.i

if.then.i.i.i:                                    ; preds = %if.then2.i.i
  %f_inode.i.i.i = getelementptr inbounds %struct.file, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %f_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %f_inode.i.i.i, align 8
  %49 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %call.i.i, align 4
  %sub.i39.i.i.i = sub i32 %dst_addr.1592.i, %50
  %shr.i40.i.i.i = lshr i32 %sub.i39.i.i.i, 12
  %51 = ptrtoint ptr %vm_pgoff.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %vm_pgoff.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %shr.i40.i.i.i, %52
  %call8.i.i.i = call fastcc i64 @i_size_read(ptr noundef %48) #7
  %sub9.i.i.i = add i64 %call8.i.i.i, 4095
  %div.i.i.i = sdiv i64 %sub9.i.i.i, 4096
  %conv.i.i.i = trunc i64 %div.i.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i, i32 %conv.i.i.i)
  %cmp.not.i.i.i = icmp ult i32 %add.i.i.i.i, %conv.i.i.i
  br i1 %cmp.not.i.i.i, label %if.then.i.i.i.if.end14.i.i.i_crit_edge, label %if.then.i.i.i.mfill_zeropage_pte.exit.i.i_crit_edge, !prof !36

if.then.i.i.i.mfill_zeropage_pte.exit.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mfill_zeropage_pte.exit.i.i

if.then.i.i.i.if.end14.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i.i.i

if.end14.i.i.i:                                   ; preds = %if.then.i.i.i.if.end14.i.i.i_crit_edge, %if.then2.i.i.if.end14.i.i.i_crit_edge
  %53 = ptrtoint ptr %add.ptr5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr5.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool15.not.i.i.i = icmp eq i32 %54, 0
  br i1 %tobool15.not.i.i.i, label %if.end17.i.i.i, label %if.end14.i.i.i.mfill_zeropage_pte.exit.i.i_crit_edge

if.end14.i.i.i.mfill_zeropage_pte.exit.i.i_crit_edge: ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mfill_zeropage_pte.exit.i.i

if.end17.i.i.i:                                   ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @set_pte_at(ptr noundef %dst_mm, i32 noundef %dst_addr.1592.i, ptr noundef %add.ptr5.i.i.i, i32 noundef %or.i.i.i) #7
  br label %mfill_zeropage_pte.exit.i.i

mfill_zeropage_pte.exit.i.i:                      ; preds = %if.end17.i.i.i, %if.end14.i.i.i.mfill_zeropage_pte.exit.i.i_crit_edge, %if.then.i.i.i.mfill_zeropage_pte.exit.i.i_crit_edge
  %ret.0.i.i.i = phi i32 [ -14, %if.then.i.i.i.mfill_zeropage_pte.exit.i.i_crit_edge ], [ -17, %if.end14.i.i.i.mfill_zeropage_pte.exit.i.i_crit_edge ], [ 0, %if.end17.i.i.i ]
  call void @_raw_spin_unlock(ptr noundef %33) #7
  call void @kunmap_local_indexed(ptr noundef %add.ptr5.i.i.i) #7
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !42
  %55 = call i32 @llvm.read_register.i32(metadata !0) #7
  %and.i.i.i1.i.i.i.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i1.i.i.i.i to ptr
  %task.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %task.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %task.i.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %58, i32 0, i32 213
  %59 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  %dec.i.i.i.i.i.i = add i32 %60, -1
  store i32 %dec.i.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !43
  %61 = call i32 @llvm.read_register.i32(metadata !0) #7
  %and.i.i.i.i.i.i.i = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %64, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  br label %mfill_atomic_pte.exit.i

if.else9.i.i:                                     ; preds = %do.body259.i
  call void @__sanitizer_cov_trace_pc() #9
  %call50.i.i = call i32 @shmem_mfill_atomic_pte(ptr noundef %dst_mm, ptr noundef nonnull %add.ptr.i.i511.i, ptr noundef nonnull %call.i.i, i32 noundef %dst_addr.1592.i, i32 noundef %src_addr.1591.i, i1 noundef zeroext true, ptr noundef nonnull %page.i) #7
  br label %mfill_atomic_pte.exit.i

mfill_atomic_pte.exit.i:                          ; preds = %if.else9.i.i, %mfill_zeropage_pte.exit.i.i
  %retval.0.i497.i = phi i32 [ %call50.i.i, %if.else9.i.i ], [ %ret.0.i.i.i, %mfill_zeropage_pte.exit.i.i ]
  call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 611, i32 noundef 0) #7
  %call.i512.i = call i32 @__cond_resched() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %retval.0.i497.i)
  %cmp282.i = icmp eq i32 %retval.0.i497.i, -2
  br i1 %cmp282.i, label %if.then289.i, label %do.body321.i, !prof !37

if.then289.i:                                     ; preds = %mfill_atomic_pte.exit.i
  call fastcc void @mmap_read_unlock(ptr noundef %dst_mm) #7
  %65 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %page.i, align 4
  %tobool291.not.i = icmp eq ptr %66, null
  br i1 %tobool291.not.i, label %do.body301.i, label %do.end309.i, !prof !37

do.body301.i:                                     ; preds = %if.then289.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 617, 0\0A.popsection", ""() #7, !srcloc !59
  unreachable

do.end309.i:                                      ; preds = %if.then289.i
  %call310.i = call fastcc ptr @kmap(ptr noundef nonnull %66) #7
  %67 = inttoptr i32 %src_addr.1591.i to ptr
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #7
  %call.i.i498.i = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i498.i, label %do.end309.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

do.end309.i.if.then11.i.i.i_crit_edge:            ; preds = %do.end309.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %do.end309.i
  %68 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %67, i32 4096, i32 -1226833920) #10, !srcloc !60
  %asmresult.i.i.i = extractvalue { i32, i32 } %68, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !36

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %call310.i, i32 noundef 4096) #7
  %69 = call i32 @llvm.read_register.i32(metadata !0) #7
  %and.i.i.i.i.i.i500.i = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i.i.i.i.i500.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 4
  %71 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #4, !srcloc !61
  %and.i.i.i.i.i = and i32 %71, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #7, !srcloc !62
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef %call310.i, ptr noundef %67, i32 noundef 4096) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %71) #7, !srcloc !62
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %retry.loopexit.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !36

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %do.end309.i.if.then11.i.i.i_crit_edge
  %res.03.i.i.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 4096, %do.end309.i.if.then11.i.i.i_crit_edge ], [ 4096, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 4096, %res.03.i.i.i
  %add.ptr.i.i501.i = getelementptr i8, ptr %call310.i, i32 %sub.i.i.i
  %72 = call ptr @memset(ptr %add.ptr.i.i501.i, i32 0, i32 %res.03.i.i.i)
  %73 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %page.i, align 4
  call fastcc void @kunmap(ptr noundef %74) #7
  br label %out.i

do.body321.i:                                     ; preds = %mfill_atomic_pte.exit.i
  %75 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %page.i, align 4
  %tobool322.not.i = icmp eq ptr %76, null
  br i1 %tobool322.not.i, label %if.end339.i, label %do.body330.i, !prof !36

do.body330.i:                                     ; preds = %do.body321.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 630, 0\0A.popsection", ""() #7, !srcloc !64
  unreachable

if.end339.i:                                      ; preds = %do.body321.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i497.i)
  %tobool340.not.i = icmp eq i32 %retval.0.i497.i, 0
  br i1 %tobool340.not.i, label %if.then341.i, label %if.end339.i.out_unlock.i_crit_edge

if.end339.i.out_unlock.i_crit_edge:               ; preds = %if.end339.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i

if.then341.i:                                     ; preds = %if.end339.i
  %add342.i = add i32 %dst_addr.1592.i, 4096
  %add343.i = add i32 %src_addr.1591.i, 4096
  %add344.i = add i32 %copied.1593.i, 4096
  %77 = call i32 @llvm.read_register.i32(metadata !0) #7
  %and.i513.i = and i32 %77, -16384
  %78 = inttoptr i32 %and.i513.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %task.i, align 8
  %stack.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %stack.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %stack.i.i.i.i, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %82, align 4
  %and1.i.i.i.i.i.i = and i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i514.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i514.i, label %if.then341.i.while.cond.i_crit_edge, label %fatal_signal_pending.exit.i

if.then341.i.while.cond.i_crit_edge:              ; preds = %if.then341.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

fatal_signal_pending.exit.i:                      ; preds = %if.then341.i
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %80, i32 0, i32 116, i32 1
  %85 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %signal.i.i.i, align 4
  %87 = and i32 %86, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool347.not.i = icmp eq i32 %87, 0
  br i1 %tobool347.not.i, label %fatal_signal_pending.exit.i.while.cond.i_crit_edge, label %fatal_signal_pending.exit.i.out_unlock.i_crit_edge

fatal_signal_pending.exit.i.out_unlock.i_crit_edge: ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i

fatal_signal_pending.exit.i.while.cond.i_crit_edge: ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

out_unlock.i:                                     ; preds = %fatal_signal_pending.exit.i.out_unlock.i_crit_edge, %if.end339.i.out_unlock.i_crit_edge, %land.lhs.true218.i.out_unlock.i_crit_edge, %do.end185.i.out_unlock.i_crit_edge, %while.cond.i.out_unlock.i_crit_edge, %if.end164.i.out_unlock.i_crit_edge, %anon_vma_prepare.exit.i.out_unlock.i_crit_edge, %land.lhs.true142.i.out_unlock.i_crit_edge, %if.then91.i, %land.rhs80.i.out_unlock.i_crit_edge, %if.end3.i.i.out_unlock.i_crit_edge, %lor.lhs.false.i.i.out_unlock.i_crit_edge, %if.end.i.i.out_unlock.i_crit_edge, %if.end67.i.out_unlock.i_crit_edge, %land.lhs.true.i.out_unlock.i_crit_edge
  %copied.4.i = phi i32 [ %copied.0.i, %if.then91.i ], [ %copied.0.i, %land.rhs80.i.out_unlock.i_crit_edge ], [ %copied.1593.i, %if.end339.i.out_unlock.i_crit_edge ], [ %add344.i, %fatal_signal_pending.exit.i.out_unlock.i_crit_edge ], [ %copied.1593.i, %land.lhs.true218.i.out_unlock.i_crit_edge ], [ %copied.1593.i, %do.end185.i.out_unlock.i_crit_edge ], [ %add344.i, %while.cond.i.out_unlock.i_crit_edge ], [ %copied.0.i, %land.lhs.true.i.out_unlock.i_crit_edge ], [ %copied.0.i, %if.end67.i.out_unlock.i_crit_edge ], [ %copied.0.i, %if.end.i.i.out_unlock.i_crit_edge ], [ %copied.0.i, %lor.lhs.false.i.i.out_unlock.i_crit_edge ], [ %copied.0.i, %if.end3.i.i.out_unlock.i_crit_edge ], [ %copied.0.i, %land.lhs.true142.i.out_unlock.i_crit_edge ], [ %copied.0.i, %anon_vma_prepare.exit.i.out_unlock.i_crit_edge ], [ %copied.0.i, %if.end164.i.out_unlock.i_crit_edge ]
  %err.4.i = phi i32 [ -22, %if.then91.i ], [ -22, %land.rhs80.i.out_unlock.i_crit_edge ], [ %retval.0.i497.i, %if.end339.i.out_unlock.i_crit_edge ], [ -4, %fatal_signal_pending.exit.i.out_unlock.i_crit_edge ], [ -12, %land.lhs.true218.i.out_unlock.i_crit_edge ], [ -12, %do.end185.i.out_unlock.i_crit_edge ], [ 0, %while.cond.i.out_unlock.i_crit_edge ], [ -12, %if.end164.i.out_unlock.i_crit_edge ], [ -12, %anon_vma_prepare.exit.i.out_unlock.i_crit_edge ], [ -22, %land.lhs.true142.i.out_unlock.i_crit_edge ], [ -2, %if.end3.i.i.out_unlock.i_crit_edge ], [ -2, %lor.lhs.false.i.i.out_unlock.i_crit_edge ], [ -2, %if.end.i.i.out_unlock.i_crit_edge ], [ -2, %if.end67.i.out_unlock.i_crit_edge ], [ -11, %land.lhs.true.i.out_unlock.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@mfill_zeropage, %if.then.i.i516.i)) #7
          to label %mmap_read_unlock.exit.i [label %if.then.i.i516.i], !srcloc !55

if.then.i.i516.i:                                 ; preds = %out_unlock.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__mmap_lock_do_trace_released(ptr noundef %dst_mm, i1 noundef zeroext false) #7
  br label %mmap_read_unlock.exit.i

mmap_read_unlock.exit.i:                          ; preds = %if.then.i.i516.i, %out_unlock.i
  call void @up_read(ptr noundef %mmap_lock.i.i) #7
  br label %out.i

out.i:                                            ; preds = %mmap_read_unlock.exit.i, %if.then11.i.i.i
  %copied.5.i = phi i32 [ %copied.4.i, %mmap_read_unlock.exit.i ], [ %copied.1593.i, %if.then11.i.i.i ]
  %err.5.i = phi i32 [ %err.4.i, %mmap_read_unlock.exit.i ], [ -14, %if.then11.i.i.i ]
  %88 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %page.i, align 4
  %tobool355.not.i = icmp eq ptr %89, null
  br i1 %tobool355.not.i, label %out.i.do.body358.i_crit_edge, label %if.then356.i

out.i.do.body358.i_crit_edge:                     ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body358.i

if.then356.i:                                     ; preds = %out.i
  %90 = getelementptr inbounds %struct.page, ptr %89, i32 0, i32 1
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %90, align 4
  %and.i.i.i = and i32 %92, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i518.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i518.i, label %if.end.i.i521.i, label %if.then.i.i520.i, !prof !36

if.then.i.i520.i:                                 ; preds = %if.then356.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i519.i = add i32 %92, -1
  br label %_compound_head.exit.i.i

if.end.i.i521.i:                                  ; preds = %if.then356.i
  call void @__sanitizer_cov_trace_pc() #9
  %93 = ptrtoint ptr %89 to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i521.i, %if.then.i.i520.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i519.i, %if.then.i.i520.i ], [ %93, %if.end.i.i521.i ]
  %94 = inttoptr i32 %retval.0.i.i.i to ptr
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %94, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #7
  %95 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp.i.i.i.i.i = icmp eq i32 %96, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !37

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @dump_page(ptr noundef %94, ptr noundef nonnull @.str.9) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !65
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  %call.i.i.i10.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !66
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #7
  %97 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #7, !srcloc !67
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %97, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@mfill_zeropage, %if.then.i.i.i.i.i.i)) #7
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !55

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %94, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #7
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.do.body358.i_crit_edge

folio_put_testzero.exit.i.i.i.do.body358.i_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body358.i

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__put_page(ptr noundef %94) #7
  br label %do.body358.i

do.body358.i:                                     ; preds = %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.do.body358.i_crit_edge, %out.i.do.body358.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.5.i)
  %cmp359.i = icmp slt i32 %copied.5.i, 0
  br i1 %cmp359.i, label %do.body367.i, label %do.body376.i, !prof !37

do.body367.i:                                     ; preds = %do.body358.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 649, 0\0A.popsection", ""() #7, !srcloc !69
  unreachable

do.body376.i:                                     ; preds = %do.body358.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.5.i)
  %cmp377.i = icmp sgt i32 %err.5.i, 0
  br i1 %cmp377.i, label %do.body385.i, label %do.body394.i, !prof !37

do.body385.i:                                     ; preds = %do.body376.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 650, 0\0A.popsection", ""() #7, !srcloc !70
  unreachable

do.body394.i:                                     ; preds = %do.body376.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.5.i)
  %tobool395.not.i = icmp eq i32 %copied.5.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.5.i)
  %tobool397.not.i = icmp eq i32 %err.5.i, 0
  %spec.select493.i = select i1 %tobool395.not.i, i1 %tobool397.not.i, i1 false
  br i1 %spec.select493.i, label %do.body408.i, label %__mcopy_atomic.exit, !prof !37

do.body408.i:                                     ; preds = %do.body394.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 651, 0\0A.popsection", ""() #7, !srcloc !71
  unreachable

__mcopy_atomic.exit:                              ; preds = %do.body394.i
  call void @__sanitizer_cov_trace_pc() #9
  %err.5.copied.5.i = select i1 %tobool395.not.i, i32 %err.5.i, i32 %copied.5.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page.i) #7
  ret i32 %err.5.copied.5.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mcopy_continue(ptr noundef %dst_mm, i32 noundef %start, i32 noundef %len, ptr noundef %mmap_changing) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %start, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body9.i, label %do.body3.i, !prof !36

do.body3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 504, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

do.body9.i:                                       ; preds = %entry
  %and10.i = and i32 %len, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %do.body28.i, label %do.body19.i, !prof !36

do.body19.i:                                      ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 505, 0\0A.popsection", ""() #7, !srcloc !52
  unreachable

do.body28.i:                                      ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp.not.i.not = icmp eq i32 %len, 0
  br i1 %cmp.not.i.not, label %do.body36.i, label %do.body45.i, !prof !37

do.body36.i:                                      ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 508, 0\0A.popsection", ""() #7, !srcloc !53
  unreachable

do.body45.i:                                      ; preds = %do.body28.i
  %add46.i = add i32 %len, %start
  call void @__sanitizer_cov_trace_cmp4(i32 %add46.i, i32 %start)
  %cmp47.not.i = icmp ugt i32 %add46.i, %start
  br i1 %cmp47.not.i, label %retry.i, label %do.body55.i, !prof !36

do.body55.i:                                      ; preds = %do.body45.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 509, 0\0A.popsection", ""() #7, !srcloc !54
  unreachable

retry.i:                                          ; preds = %do.body45.i
  %mmap_lock.i.i = getelementptr inbounds %struct.anon, ptr %dst_mm, i32 0, i32 15
  %tobool64.not.i = icmp eq ptr %mmap_changing, null
  %pgd1.i.i = getelementptr inbounds %struct.anon, ptr %dst_mm, i32 0, i32 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@mcopy_continue, %if.then.i.i503.i)) #7
          to label %__mmap_lock_trace_start_locking.exit.i.i [label %if.then.i.i503.i], !srcloc !55

if.then.i.i503.i:                                 ; preds = %retry.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %dst_mm, i1 noundef zeroext false) #7
  br label %__mmap_lock_trace_start_locking.exit.i.i

__mmap_lock_trace_start_locking.exit.i.i:         ; preds = %if.then.i.i503.i, %retry.i
  tail call void @down_read(ptr noundef %mmap_lock.i.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@mcopy_continue, %if.then.i3.i.i)) #7
          to label %mmap_read_lock.exit.i [label %if.then.i3.i.i], !srcloc !55

if.then.i3.i.i:                                   ; preds = %__mmap_lock_trace_start_locking.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %dst_mm, i1 noundef zeroext false, i1 noundef zeroext true) #7
  br label %mmap_read_lock.exit.i

mmap_read_lock.exit.i:                            ; preds = %if.then.i3.i.i, %__mmap_lock_trace_start_locking.exit.i.i
  br i1 %tobool64.not.i, label %mmap_read_lock.exit.i.if.end67.i_crit_edge, label %land.lhs.true.i

mmap_read_lock.exit.i.if.end67.i_crit_edge:       ; preds = %mmap_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67.i

land.lhs.true.i:                                  ; preds = %mmap_read_lock.exit.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %mmap_changing, i32 noundef 4) #7
  %0 = ptrtoint ptr %mmap_changing to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %mmap_changing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool65.not.i = icmp eq i32 %1, 0
  br i1 %tobool65.not.i, label %land.lhs.true.i.if.end67.i_crit_edge, label %land.lhs.true.i.out_unlock.i_crit_edge

land.lhs.true.i.out_unlock.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i

land.lhs.true.i.if.end67.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67.i

if.end67.i:                                       ; preds = %land.lhs.true.i.if.end67.i_crit_edge, %mmap_read_lock.exit.i.if.end67.i_crit_edge
  %call.i.i = tail call ptr @find_vma(ptr noundef %dst_mm, i32 noundef %start) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end67.i.out_unlock.i_crit_edge, label %if.end.i.i

if.end67.i.out_unlock.i_crit_edge:                ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i

if.end.i.i:                                       ; preds = %if.end67.i
  %2 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %start)
  %cmp.i.i = icmp ugt i32 %3, %start
  br i1 %cmp.i.i, label %if.end.i.i.out_unlock.i_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.out_unlock.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %vm_end.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %call.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %vm_end.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_end.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add46.i, i32 %5)
  %cmp1.i.i = icmp ugt i32 %add46.i, %5
  br i1 %cmp1.i.i, label %lor.lhs.false.i.i.out_unlock.i_crit_edge, label %if.end3.i.i

lor.lhs.false.i.i.out_unlock.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i

if.end3.i.i:                                      ; preds = %lor.lhs.false.i.i
  %vm_userfaultfd_ctx.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %call.i.i, i32 0, i32 17
  %6 = ptrtoint ptr %vm_userfaultfd_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vm_userfaultfd_ctx.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %7, null
  br i1 %tobool4.not.i.i, label %if.end3.i.i.out_unlock.i_crit_edge, label %if.end71.i

if.end3.i.i.out_unlock.i_crit_edge:               ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i

if.end71.i:                                       ; preds = %if.end3.i.i
  %vm_ops.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %call.i.i, i32 0, i32 12
  %8 = ptrtoint ptr %vm_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vm_ops.i.i, align 4
  %tobool.not.i504.i = icmp eq ptr %9, null
  br i1 %tobool.not.i504.i, label %land.rhs.i, label %land.lhs.true142.i

land.rhs.i:                                       ; preds = %if.end71.i
  %vm_flags.i = getelementptr inbounds %struct.vm_area_struct, ptr %call.i.i, i32 0, i32 8
  %10 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vm_flags.i, align 4
  %and73.i = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.i)
  %tobool74.not.i = icmp eq i32 %and73.i, 0
  br i1 %tobool74.not.i, label %land.rhs.i.if.end145.i_crit_edge, label %land.rhs80.i

land.rhs.i.if.end145.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end145.i

land.rhs80.i:                                     ; preds = %land.rhs.i
  %.b489.i = load i1, ptr @__mcopy_atomic.__already_done, align 1
  br i1 %.b489.i, label %land.rhs80.i.out_unlock.i_crit_edge, label %if.then91.i, !prof !36

land.rhs80.i.out_unlock.i_crit_edge:              ; preds = %land.rhs80.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i

if.then91.i:                                      ; preds = %land.rhs80.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @__mcopy_atomic.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 542, i32 noundef 9, ptr noundef null) #7
  br label %out_unlock.i

land.lhs.true142.i:                               ; preds = %if.end71.i
  %call143.i = tail call zeroext i1 @vma_is_shmem(ptr noundef nonnull %call.i.i) #7
  br i1 %call143.i, label %land.lhs.true142.i.if.end145.i_crit_edge, label %land.lhs.true142.i.out_unlock.i_crit_edge

land.lhs.true142.i.out_unlock.i_crit_edge:        ; preds = %land.lhs.true142.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i

land.lhs.true142.i.if.end145.i_crit_edge:         ; preds = %land.lhs.true142.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end145.i

if.end145.i:                                      ; preds = %land.lhs.true142.i.if.end145.i_crit_edge, %land.rhs.i.if.end145.i_crit_edge
  %call146.i = tail call zeroext i1 @vma_is_shmem(ptr noundef nonnull %call.i.i) #7
  br i1 %call146.i, label %if.end150.i, label %if.end145.i.out_unlock.i_crit_edge

if.end145.i.out_unlock.i_crit_edge:               ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i

if.end150.i:                                      ; preds = %if.end145.i
  %vm_flags151.i = getelementptr inbounds %struct.vm_area_struct, ptr %call.i.i, i32 0, i32 8
  %12 = ptrtoint ptr %vm_flags151.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vm_flags151.i, align 4
  %and152.i = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152.i)
  %tobool153.not.i = icmp eq i32 %and152.i, 0
  br i1 %tobool153.not.i, label %land.lhs.true154.i, label %if.end150.i.while.body.i.preheader_crit_edge

if.end150.i.while.body.i.preheader_crit_edge:     ; preds = %if.end150.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.preheader

land.lhs.true154.i:                               ; preds = %if.end150.i
  %anon_vma.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %call.i.i, i32 0, i32 11
  %14 = ptrtoint ptr %anon_vma.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %anon_vma.i.i, align 4
  %tobool.not.i507.i = icmp eq ptr %15, null
  br i1 %tobool.not.i507.i, label %anon_vma_prepare.exit.i, label %land.lhs.true154.i.while.body.i.preheader_crit_edge, !prof !37

land.lhs.true154.i.while.body.i.preheader_crit_edge: ; preds = %land.lhs.true154.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.preheader

anon_vma_prepare.exit.i:                          ; preds = %land.lhs.true154.i
  %call.i508.i = tail call i32 @__anon_vma_prepare(ptr noundef nonnull %call.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i508.i)
  %tobool156.not.i = icmp eq i32 %call.i508.i, 0
  br i1 %tobool156.not.i, label %anon_vma_prepare.exit.i.while.body.i.preheader_crit_edge, label %anon_vma_prepare.exit.i.out_unlock.i_crit_edge, !prof !56

anon_vma_prepare.exit.i.out_unlock.i_crit_edge:   ; preds = %anon_vma_prepare.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i

anon_vma_prepare.exit.i.while.body.i.preheader_crit_edge: ; preds = %anon_vma_prepare.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %anon_vma_prepare.exit.i.while.body.i.preheader_crit_edge, %land.lhs.true154.i.while.body.i.preheader_crit_edge, %if.end150.i.while.body.i.preheader_crit_edge
  br label %while.body.i

while.cond.i:                                     ; preds = %fatal_signal_pending.exit.i.while.cond.i_crit_edge, %if.then341.i.while.cond.i_crit_edge
  %cmp166.i = icmp ult i32 %add344.i, %len
  br i1 %cmp166.i, label %while.cond.i.while.body.i_crit_edge, label %while.cond.i.out_unlock.i_crit_edge

while.cond.i.out_unlock.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %while.body.i.preheader
  %copied.1593.i = phi i32 [ %add344.i, %while.cond.i.while.body.i_crit_edge ], [ 0, %while.body.i.preheader ]
  %dst_addr.1592.i = phi i32 [ %add342.i, %while.cond.i.while.body.i_crit_edge ], [ %start, %while.body.i.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %dst_addr.1592.i, i32 %add46.i)
  %cmp169.not.i = icmp ult i32 %dst_addr.1592.i, %add46.i
  br i1 %cmp169.not.i, label %do.end185.i, label %do.body177.i, !prof !36

do.body177.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 578, 0\0A.popsection", ""() #7, !srcloc !57
  unreachable

do.end185.i:                                      ; preds = %while.body.i
  %16 = ptrtoint ptr %pgd1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pgd1.i.i, align 4
  %shr.i.i.i = lshr i32 %dst_addr.1592.i, 21
  %add.ptr.i.i511.i = getelementptr [2 x i32], ptr %17, i32 %shr.i.i.i
  %tobool187.not.i = icmp eq ptr %add.ptr.i.i511.i, null
  br i1 %tobool187.not.i, label %do.end185.i.out_unlock.i_crit_edge, label %if.end197.i, !prof !37

do.end185.i.out_unlock.i_crit_edge:               ; preds = %do.end185.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i

if.end197.i:                                      ; preds = %do.end185.i
  %18 = ptrtoint ptr %add.ptr.i.i511.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i.i511.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool209.not.i = icmp eq i32 %19, 0
  br i1 %tobool209.not.i, label %land.lhs.true218.i, label %if.end197.i.do.body259.i_crit_edge, !prof !37

if.end197.i.do.body259.i_crit_edge:               ; preds = %if.end197.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body259.i

land.lhs.true218.i:                               ; preds = %if.end197.i
  %call219.i = tail call i32 @__pte_alloc(ptr noundef %dst_mm, ptr noundef nonnull %add.ptr.i.i511.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call219.i)
  %tobool220.not.i = icmp eq i32 %call219.i, 0
  br i1 %tobool220.not.i, label %if.end228.i, label %land.lhs.true218.i.out_unlock.i_crit_edge, !prof !36

land.lhs.true218.i.out_unlock.i_crit_edge:        ; preds = %land.lhs.true218.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i

if.end228.i:                                      ; preds = %land.lhs.true218.i
  %20 = ptrtoint ptr %add.ptr.i.i511.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr.i = load i32, ptr %add.ptr.i.i511.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool240.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool240.not.i, label %do.body250.i, label %if.end228.i.do.body259.i_crit_edge, !prof !37

if.end228.i.do.body259.i_crit_edge:               ; preds = %if.end228.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body259.i

do.body250.i:                                     ; preds = %if.end228.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 606, 0\0A.popsection", ""() #7, !srcloc !58
  unreachable

do.body259.i:                                     ; preds = %if.end228.i.do.body259.i_crit_edge, %if.end197.i.do.body259.i_crit_edge
  %call.i495.i = tail call fastcc i32 @mcontinue_atomic_pte(ptr noundef %dst_mm, ptr noundef nonnull %add.ptr.i.i511.i, ptr noundef nonnull %call.i.i, i32 noundef %dst_addr.1592.i, i1 noundef zeroext false) #7
  tail call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 611, i32 noundef 0) #7
  %call.i512.i = tail call i32 @__cond_resched() #7
  %21 = zext i32 %call.i495.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i495.i, label %do.body259.i.out_unlock.i_crit_edge [
    i32 -2, label %do.body301.i
    i32 0, label %if.then341.i
  ], !prof !72

do.body259.i.out_unlock.i_crit_edge:              ; preds = %do.body259.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i

do.body301.i:                                     ; preds = %do.body259.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @mmap_read_unlock(ptr noundef %dst_mm) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 617, 0\0A.popsection", ""() #7, !srcloc !59
  unreachable

if.then341.i:                                     ; preds = %do.body259.i
  %add342.i = add i32 %dst_addr.1592.i, 4096
  %add344.i = add i32 %copied.1593.i, 4096
  %22 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %and.i513.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i513.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task.i, align 8
  %stack.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %stack.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %stack.i.i.i.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %27, align 4
  %and1.i.i.i.i.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i514.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i514.i, label %if.then341.i.while.cond.i_crit_edge, label %fatal_signal_pending.exit.i

if.then341.i.while.cond.i_crit_edge:              ; preds = %if.then341.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

fatal_signal_pending.exit.i:                      ; preds = %if.then341.i
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 116, i32 1
  %30 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %signal.i.i.i, align 4
  %32 = and i32 %31, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool347.not.i = icmp eq i32 %32, 0
  br i1 %tobool347.not.i, label %fatal_signal_pending.exit.i.while.cond.i_crit_edge, label %fatal_signal_pending.exit.i.out_unlock.i_crit_edge

fatal_signal_pending.exit.i.out_unlock.i_crit_edge: ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i

fatal_signal_pending.exit.i.while.cond.i_crit_edge: ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

out_unlock.i:                                     ; preds = %fatal_signal_pending.exit.i.out_unlock.i_crit_edge, %do.body259.i.out_unlock.i_crit_edge, %land.lhs.true218.i.out_unlock.i_crit_edge, %do.end185.i.out_unlock.i_crit_edge, %while.cond.i.out_unlock.i_crit_edge, %anon_vma_prepare.exit.i.out_unlock.i_crit_edge, %if.end145.i.out_unlock.i_crit_edge, %land.lhs.true142.i.out_unlock.i_crit_edge, %if.then91.i, %land.rhs80.i.out_unlock.i_crit_edge, %if.end3.i.i.out_unlock.i_crit_edge, %lor.lhs.false.i.i.out_unlock.i_crit_edge, %if.end.i.i.out_unlock.i_crit_edge, %if.end67.i.out_unlock.i_crit_edge, %land.lhs.true.i.out_unlock.i_crit_edge
  %copied.4.i = phi i32 [ 0, %if.then91.i ], [ 0, %land.rhs80.i.out_unlock.i_crit_edge ], [ 0, %land.lhs.true.i.out_unlock.i_crit_edge ], [ 0, %land.lhs.true142.i.out_unlock.i_crit_edge ], [ 0, %anon_vma_prepare.exit.i.out_unlock.i_crit_edge ], [ 0, %if.end145.i.out_unlock.i_crit_edge ], [ 0, %if.end67.i.out_unlock.i_crit_edge ], [ 0, %lor.lhs.false.i.i.out_unlock.i_crit_edge ], [ 0, %if.end.i.i.out_unlock.i_crit_edge ], [ 0, %if.end3.i.i.out_unlock.i_crit_edge ], [ %copied.1593.i, %do.body259.i.out_unlock.i_crit_edge ], [ %add344.i, %fatal_signal_pending.exit.i.out_unlock.i_crit_edge ], [ %copied.1593.i, %land.lhs.true218.i.out_unlock.i_crit_edge ], [ %copied.1593.i, %do.end185.i.out_unlock.i_crit_edge ], [ %add344.i, %while.cond.i.out_unlock.i_crit_edge ]
  %err.4.i = phi i32 [ -22, %if.then91.i ], [ -22, %land.rhs80.i.out_unlock.i_crit_edge ], [ -11, %land.lhs.true.i.out_unlock.i_crit_edge ], [ -22, %land.lhs.true142.i.out_unlock.i_crit_edge ], [ -12, %anon_vma_prepare.exit.i.out_unlock.i_crit_edge ], [ -22, %if.end145.i.out_unlock.i_crit_edge ], [ -2, %if.end67.i.out_unlock.i_crit_edge ], [ -2, %lor.lhs.false.i.i.out_unlock.i_crit_edge ], [ -2, %if.end.i.i.out_unlock.i_crit_edge ], [ -2, %if.end3.i.i.out_unlock.i_crit_edge ], [ %call.i495.i, %do.body259.i.out_unlock.i_crit_edge ], [ -4, %fatal_signal_pending.exit.i.out_unlock.i_crit_edge ], [ -12, %land.lhs.true218.i.out_unlock.i_crit_edge ], [ -12, %do.end185.i.out_unlock.i_crit_edge ], [ 0, %while.cond.i.out_unlock.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@mcopy_continue, %if.then.i.i516.i)) #7
          to label %do.body358.i [label %if.then.i.i516.i], !srcloc !55

if.then.i.i516.i:                                 ; preds = %out_unlock.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_released(ptr noundef %dst_mm, i1 noundef zeroext false) #7
  br label %do.body358.i

do.body358.i:                                     ; preds = %if.then.i.i516.i, %out_unlock.i
  tail call void @up_read(ptr noundef %mmap_lock.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.4.i)
  %cmp359.i = icmp slt i32 %copied.4.i, 0
  br i1 %cmp359.i, label %do.body367.i, label %do.body376.i, !prof !37

do.body367.i:                                     ; preds = %do.body358.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 649, 0\0A.popsection", ""() #7, !srcloc !69
  unreachable

do.body376.i:                                     ; preds = %do.body358.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.4.i)
  %cmp377.i = icmp sgt i32 %err.4.i, 0
  br i1 %cmp377.i, label %do.body385.i, label %do.body394.i, !prof !37

do.body385.i:                                     ; preds = %do.body376.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 650, 0\0A.popsection", ""() #7, !srcloc !70
  unreachable

do.body394.i:                                     ; preds = %do.body376.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.4.i)
  %tobool395.not.i = icmp eq i32 %copied.4.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.4.i)
  %tobool397.not.i = icmp eq i32 %err.4.i, 0
  %spec.select493.i = select i1 %tobool395.not.i, i1 %tobool397.not.i, i1 false
  br i1 %spec.select493.i, label %do.body408.i, label %__mcopy_atomic.exit, !prof !37

do.body408.i:                                     ; preds = %do.body394.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 651, 0\0A.popsection", ""() #7, !srcloc !71
  unreachable

__mcopy_atomic.exit:                              ; preds = %do.body394.i
  call void @__sanitizer_cov_trace_pc() #9
  %err.5.copied.5.i = select i1 %tobool395.not.i, i32 %err.4.i, i32 %copied.4.i
  ret i32 %err.5.copied.5.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mwriteprotect_range(ptr noundef %dst_mm, i32 noundef %start, i32 noundef %len, i1 noundef zeroext %enable_wp, ptr noundef %mmap_changing) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %start, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body9, label %do.body3, !prof !36

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 688, 0\0A.popsection", ""() #7, !srcloc !73
  unreachable

do.body9:                                         ; preds = %entry
  %and10 = and i32 %len, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %do.body28, label %do.body19, !prof !36

do.body19:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 689, 0\0A.popsection", ""() #7, !srcloc !74
  unreachable

do.body28:                                        ; preds = %do.body9
  %add = add i32 %len, %start
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %start)
  %cmp.not = icmp ugt i32 %add, %start
  br i1 %cmp.not, label %do.end44, label %do.body36, !prof !36

do.body36:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 692, 0\0A.popsection", ""() #7, !srcloc !75
  unreachable

do.end44:                                         ; preds = %do.body28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@mwriteprotect_range, %if.then.i.i)) #7
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !55

if.then.i.i:                                      ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %dst_mm, i1 noundef zeroext false) #7
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %do.end44
  %mmap_lock.i = getelementptr inbounds %struct.anon, ptr %dst_mm, i32 0, i32 15
  tail call void @down_read(ptr noundef %mmap_lock.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@mwriteprotect_range, %if.then.i3.i)) #7
          to label %mmap_read_lock.exit [label %if.then.i3.i], !srcloc !55

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %dst_mm, i1 noundef zeroext false, i1 noundef zeroext true) #7
  br label %mmap_read_lock.exit

mmap_read_lock.exit:                              ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  %tobool45.not = icmp eq ptr %mmap_changing, null
  br i1 %tobool45.not, label %mmap_read_lock.exit.if.end48_crit_edge, label %land.lhs.true

mmap_read_lock.exit.if.end48_crit_edge:           ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

land.lhs.true:                                    ; preds = %mmap_read_lock.exit
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %mmap_changing, i32 noundef 4) #7
  %0 = ptrtoint ptr %mmap_changing to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %mmap_changing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool46.not = icmp eq i32 %1, 0
  br i1 %tobool46.not, label %land.lhs.true.if.end48_crit_edge, label %land.lhs.true.out_unlock_crit_edge

land.lhs.true.out_unlock_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.end48:                                         ; preds = %land.lhs.true.if.end48_crit_edge, %mmap_read_lock.exit.if.end48_crit_edge
  %call.i = tail call ptr @find_vma(ptr noundef %dst_mm, i32 noundef %start) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end48.out_unlock_crit_edge, label %if.end.i

if.end48.out_unlock_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end.i:                                         ; preds = %if.end48
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %start)
  %cmp.i = icmp ugt i32 %3, %start
  br i1 %cmp.i, label %if.end.i.out_unlock_crit_edge, label %lor.lhs.false.i

if.end.i.out_unlock_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

lor.lhs.false.i:                                  ; preds = %if.end.i
  %vm_end.i = getelementptr inbounds %struct.vm_area_struct, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_end.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %5)
  %cmp1.i = icmp ugt i32 %add, %5
  br i1 %cmp1.i, label %lor.lhs.false.i.out_unlock_crit_edge, label %if.end3.i

lor.lhs.false.i.out_unlock_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end3.i:                                        ; preds = %lor.lhs.false.i
  %vm_userfaultfd_ctx.i = getelementptr inbounds %struct.vm_area_struct, ptr %call.i, i32 0, i32 17
  %6 = ptrtoint ptr %vm_userfaultfd_ctx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vm_userfaultfd_ctx.i, align 4
  %tobool4.not.i = icmp eq ptr %7, null
  br i1 %tobool4.not.i, label %if.end3.i.out_unlock_crit_edge, label %lor.lhs.false

if.end3.i.out_unlock_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

lor.lhs.false:                                    ; preds = %if.end3.i
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %call.i, i32 0, i32 8
  %8 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vm_flags, align 4
  %10 = and i32 %9, 4104
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %10)
  %11 = icmp eq i32 %10, 4096
  br i1 %11, label %if.end57, label %lor.lhs.false.out_unlock_crit_edge

lor.lhs.false.out_unlock_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end57:                                         ; preds = %lor.lhs.false
  %vm_ops.i = getelementptr inbounds %struct.vm_area_struct, ptr %call.i, i32 0, i32 12
  %12 = ptrtoint ptr %vm_ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vm_ops.i, align 4
  %tobool.not.i90 = icmp eq ptr %13, null
  br i1 %tobool.not.i90, label %if.end60, label %if.end57.out_unlock_crit_edge

if.end57.out_unlock_crit_edge:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end60:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  %and64 = and i32 %9, -3
  %.sink = select i1 %enable_wp, i32 %and64, i32 %9
  %cond = select i1 %enable_wp, i32 4, i32 8
  %call67 = tail call i32 @vm_get_page_prot(i32 noundef %.sink) #7
  %call71 = tail call i32 @change_protection(ptr noundef nonnull %call.i, i32 noundef %start, i32 noundef %add, i32 noundef %call67, i32 noundef %cond) #7
  br label %out_unlock

out_unlock:                                       ; preds = %if.end60, %if.end57.out_unlock_crit_edge, %lor.lhs.false.out_unlock_crit_edge, %if.end3.i.out_unlock_crit_edge, %lor.lhs.false.i.out_unlock_crit_edge, %if.end.i.out_unlock_crit_edge, %if.end48.out_unlock_crit_edge, %land.lhs.true.out_unlock_crit_edge
  %err.0 = phi i32 [ -11, %land.lhs.true.out_unlock_crit_edge ], [ -2, %lor.lhs.false.out_unlock_crit_edge ], [ 0, %if.end60 ], [ -2, %if.end57.out_unlock_crit_edge ], [ -2, %if.end48.out_unlock_crit_edge ], [ -2, %lor.lhs.false.i.out_unlock_crit_edge ], [ -2, %if.end.i.out_unlock_crit_edge ], [ -2, %if.end3.i.out_unlock_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@mwriteprotect_range, %if.then.i.i91)) #7
          to label %mmap_read_unlock.exit [label %if.then.i.i91], !srcloc !55

if.then.i.i91:                                    ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_released(ptr noundef %dst_mm, i1 noundef zeroext false) #7
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i91, %out_unlock
  tail call void @up_read(ptr noundef %mmap_lock.i) #7
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_get_page_prot(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @change_protection(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmap_read_unlock(ptr noundef %mm) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@mmap_read_unlock, %if.then.i)) #7
          to label %__mmap_lock_trace_released.exit [label %if.then.i], !srcloc !55

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_released(ptr noundef %mm, i1 noundef zeroext false) #7
  br label %__mmap_lock_trace_released.exit

__mmap_lock_trace_released.exit:                  ; preds = %if.then.i, %entry
  %mmap_lock = getelementptr inbounds %struct.anon, ptr %mm, i32 0, i32 15
  tail call void @up_read(ptr noundef %mmap_lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mm_trace_rss_stat(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pte_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @kmap(ptr noundef %page) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 44) #7
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page, align 4
  %shr.i = lshr i32 %1, 30
  %2 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %shr.i, label %entry.if.then_crit_edge [
    i32 2, label %entry.if.else_crit_edge
    i32 3, label %is_highmem_idx.exit
  ]

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

is_highmem_idx.exit:                              ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %3 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.i.not = icmp eq i32 %3, 2
  br i1 %cmp2.i.not, label %is_highmem_idx.exit.if.else_crit_edge, label %is_highmem_idx.exit.if.then_crit_edge

is_highmem_idx.exit.if.then_crit_edge:            ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

is_highmem_idx.exit.if.else_crit_edge:            ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then:                                          ; preds = %is_highmem_idx.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %call5 = tail call ptr @page_address(ptr noundef %page) #7
  br label %if.end

if.else:                                          ; preds = %is_highmem_idx.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %call6 = tail call ptr @kmap_high(ptr noundef %page) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %addr.0 = phi ptr [ %call6, %if.else ], [ %call5, %if.then ]
  ret ptr %addr.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kunmap(ptr noundef %page) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 55) #7
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page, align 4
  %shr.i = lshr i32 %1, 30
  %2 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %shr.i, label %entry.return_crit_edge [
    i32 2, label %entry.if.end_crit_edge
    i32 3, label %is_highmem_idx.exit
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

is_highmem_idx.exit:                              ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %3 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.i.not = icmp eq i32 %3, 2
  br i1 %cmp2.i.not, label %is_highmem_idx.exit.if.end_crit_edge, label %is_highmem_idx.exit.return_crit_edge

is_highmem_idx.exit.return_crit_edge:             ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

is_highmem_idx.exit.if.end_crit_edge:             ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %is_highmem_idx.exit.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @kunmap_high(ptr noundef %page) #7
  br label %return

return:                                           ; preds = %if.end, %is_highmem_idx.exit.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__anon_vma_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mcontinue_atomic_pte(ptr noundef %dst_mm, ptr nocapture noundef readonly %dst_pmd, ptr noundef %dst_vma, i32 noundef %dst_addr, i1 noundef zeroext %wp_copy) unnamed_addr #0 align 64 {
entry:
  %page = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %dst_vma, i32 0, i32 14
  %0 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %4 = ptrtoint ptr %dst_vma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dst_vma, align 4
  %sub.i = sub i32 %dst_addr, %5
  %shr.i = lshr i32 %sub.i, 12
  %vm_pgoff.i = getelementptr inbounds %struct.vm_area_struct, ptr %dst_vma, i32 0, i32 13
  %6 = ptrtoint ptr %vm_pgoff.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vm_pgoff.i, align 4
  %add.i = add i32 %shr.i, %7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page) #7
  %8 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %page, align 4, !annotation !76
  %call2 = call i32 @shmem_getpage(ptr noundef %3, i32 noundef %add.i, ptr noundef nonnull %page, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %page, align 4
  %tobool3.not = icmp eq ptr %10, null
  br i1 %tobool3.not, label %if.end.out_crit_edge, label %if.end5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end5:                                          ; preds = %if.end
  %call11 = call i32 @mfill_atomic_install_pte(ptr noundef %dst_mm, ptr noundef %dst_pmd, ptr noundef %dst_vma, i32 noundef %dst_addr, ptr noundef nonnull %10, i1 noundef zeroext false, i1 noundef zeroext %wp_copy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  %11 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %page, align 4
  call void @unlock_page(ptr noundef %12) #7
  br i1 %tobool12.not, label %if.end5.out_crit_edge, label %out_release

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

out:                                              ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.out_crit_edge, %if.end5.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call2, %entry.out_crit_edge ], [ -14, %if.end.out_crit_edge ], [ %call11, %folio_put_testzero.exit.i.i.out_crit_edge ], [ %call11, %if.then.i4.i ], [ 0, %if.end5.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #7
  ret i32 %ret.0

out_release:                                      ; preds = %if.end5
  %13 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %page, align 4
  %15 = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  %and.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !36

if.then.i.i:                                      ; preds = %out_release
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %17, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %out_release
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %14 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %18, %if.end.i.i ]
  %19 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %19, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  %20 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i.i.i.i = icmp eq i32 %21, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !37

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @dump_page(ptr noundef %19, ptr noundef nonnull @.str.9) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !65
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !66
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #7
  %22 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #7, !srcloc !67
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %22, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@mcontinue_atomic_pte, %if.then.i.i.i.i.i)) #7
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !55

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %19, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #7
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.out_crit_edge

folio_put_testzero.exit.i.i.out_crit_edge:        ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__put_page(ptr noundef %19) #7
  br label %out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mcopy_atomic_pte(ptr noundef %dst_mm, ptr nocapture noundef readonly %dst_pmd, ptr noundef %dst_vma, i32 noundef %dst_addr, i32 noundef %src_addr, ptr nocapture noundef %pagep, i1 noundef zeroext %wp_copy) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pagep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pagep, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 17829066, i32 noundef 0, i32 noundef 0, ptr noundef null) #7
  %tobool1.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool1.not, label %if.then.out_crit_edge, label %if.end

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %2 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %2, 512
  %3 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !34
  %7 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %and.i.i.i1.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 213
  %11 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %12, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !35
  %call.i.i38 = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %call38.i.i.i, i32 noundef %or.i) #7
  %13 = inttoptr i32 %src_addr to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.end.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end.if.then11.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end
  %14 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %13, i32 4096, i32 -1226833920) #10, !srcloc !60
  %asmresult.i.i = extractvalue { i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !36

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %call.i.i38, i32 noundef 4096) #7
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %and.i.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !61
  %and.i.i.i.i = and i32 %17, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %call.i.i38, ptr noundef %13, i32 noundef 4096) #7
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #7, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.copy_from_user.exit_crit_edge, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !36

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.end.i.i.copy_from_user.exit_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_from_user.exit

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 4096, %if.end.if.then11.i.i_crit_edge ], [ 4096, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 4096, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i38, i32 %sub.i.i
  %18 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %copy_from_user.exit

copy_from_user.exit:                              ; preds = %if.then11.i.i, %if.end.i.i.copy_from_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %res.03.i.i, %if.then11.i.i ], [ 0, %if.end.i.i.copy_from_user.exit_crit_edge ]
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i38) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !42
  %19 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %and.i.i.i1.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 213
  %23 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %24, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !43
  %25 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %and.i.i.i.i39 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i39 to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i40 = add i32 %28, -1
  store volatile i32 %sub.i.i40, ptr %preempt_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool8.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool8.not, label %copy_from_user.exit.if.end13_crit_edge, label %if.then11, !prof !36

copy_from_user.exit.if.end13_crit_edge:           ; preds = %copy_from_user.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then11:                                        ; preds = %copy_from_user.exit
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %pagep to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call38.i.i.i, ptr %pagep, align 4
  br label %out

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %pagep to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %pagep, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.else, %copy_from_user.exit.if.end13_crit_edge
  %page.0 = phi ptr [ %1, %if.else ], [ %call38.i.i.i, %copy_from_user.exit.if.end13_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !77
  %31 = getelementptr inbounds %struct.page, ptr %page.0, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  %and.i.i.i.i37 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i37)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i37, 0
  br i1 %tobool.not.i.i.i, label %__SetPageUptodate.exit, label %if.then.i.i.i, !prof !36

if.then.i.i.i:                                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef nonnull %page.0, ptr noundef nonnull @.str.3) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #7, !srcloc !78
  unreachable

__SetPageUptodate.exit:                           ; preds = %if.end13
  %34 = ptrtoint ptr %page.0 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %page.0, align 4
  %or.i.i.i = or i32 %35, 4
  store i32 %or.i.i.i, ptr %page.0, align 4
  %36 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %31, align 4
  %and.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i41, !prof !36

if.then.i41:                                      ; preds = %__SetPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add i32 %37, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %__SetPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %page.0 to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i41
  %retval.0.i = phi i32 [ %sub.i, %if.then.i41 ], [ %38, %if.end.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@mcopy_atomic_pte, %if.end18)) #7
          to label %mem_cgroup_charge.exit [label %if.end18], !srcloc !55

mem_cgroup_charge.exit:                           ; preds = %_compound_head.exit
  %39 = inttoptr i32 %retval.0.i to ptr
  %call1.i = tail call i32 @__mem_cgroup_charge(ptr noundef %39, ptr noundef %dst_mm, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %phi.cmp = icmp eq i32 %call1.i, 0
  br i1 %phi.cmp, label %mem_cgroup_charge.exit.if.end18_crit_edge, label %mem_cgroup_charge.exit.out_release_crit_edge

mem_cgroup_charge.exit.out_release_crit_edge:     ; preds = %mem_cgroup_charge.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_release

mem_cgroup_charge.exit.if.end18_crit_edge:        ; preds = %mem_cgroup_charge.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.end18:                                         ; preds = %mem_cgroup_charge.exit.if.end18_crit_edge, %_compound_head.exit
  %call20 = tail call i32 @mfill_atomic_install_pte(ptr noundef %dst_mm, ptr noundef %dst_pmd, ptr noundef %dst_vma, i32 noundef %dst_addr, ptr noundef nonnull %page.0, i1 noundef zeroext true, i1 noundef zeroext %wp_copy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end18.out_crit_edge, label %if.end18.out_release_crit_edge

if.end18.out_release_crit_edge:                   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_release

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

out:                                              ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.out_crit_edge, %if.end18.out_crit_edge, %if.then11, %if.then.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end18.out_crit_edge ], [ -2, %if.then11 ], [ -12, %if.then.out_crit_edge ], [ %ret.1, %folio_put_testzero.exit.i.i.out_crit_edge ], [ %ret.1, %if.then.i4.i ]
  ret i32 %ret.0

out_release:                                      ; preds = %if.end18.out_release_crit_edge, %mem_cgroup_charge.exit.out_release_crit_edge
  %ret.1 = phi i32 [ -12, %mem_cgroup_charge.exit.out_release_crit_edge ], [ %call20, %if.end18.out_release_crit_edge ]
  %40 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %31, align 4
  %and.i.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i45, label %if.then.i.i, !prof !36

if.then.i.i:                                      ; preds = %out_release
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i44 = add i32 %41, -1
  br label %_compound_head.exit.i

if.end.i.i45:                                     ; preds = %out_release
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %page.0 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i45, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i44, %if.then.i.i ], [ %42, %if.end.i.i45 ]
  %43 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %43, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  %44 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.i.i.i.i = icmp eq i32 %45, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !37

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %43, ptr noundef nonnull @.str.9) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !65
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !66
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #7
  %46 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #7, !srcloc !67
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %46, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@mcopy_atomic_pte, %if.then.i.i.i.i.i)) #7
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !55

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %43, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #7
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.out_crit_edge

folio_put_testzero.exit.i.i.out_crit_edge:        ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__put_page(ptr noundef %43) #7
  br label %out
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shmem_mfill_atomic_pte(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shmem_getpage(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mem_cgroup_charge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }

!llvm.named.register.sp = !{!0}
!llvm.asan.globals = !{!1, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !21, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{!"sp"}
!1 = !{ptr @.str, !2, !"<string literal>", i1 false, i1 false}
!2 = !{!"../include/linux/page-flags.h", i32 443, i32 1}
!3 = distinct !{null, !4, !"__already_done", i1 false, i1 false}
!4 = !{!"../mm/userfaultfd.c", i32 541, i32 6}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../mm/userfaultfd.c", i32 475, i32 3}
!8 = distinct !{null, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!12 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!18 = distinct !{null, !17, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../include/linux/mm.h", i32 717, i32 2}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{i64 2153690082}
!35 = !{i64 2152744417}
!36 = !{!"branch_weights", i32 2000, i32 1}
!37 = !{!"branch_weights", i32 1, i32 2000}
!38 = !{i64 2150663882, i64 2150664373, i64 2150663919, i64 2150663975, i64 2150664009, i64 2150664033, i64 2150664074, i64 2150664095, i64 2150664123, i64 2150664157}
!39 = !{i64 2148766805}
!40 = !{i64 2148682090, i64 2148682122, i64 2148682151, i64 2148682185, i64 2148682216, i64 2148682239}
!41 = !{i64 2148767034}
!42 = !{i64 2152744624}
!43 = !{i64 2153692853}
!44 = !{i64 1086050, i64 1086111}
!45 = !{i64 1088782}
!46 = !{i64 1089067}
!47 = !{i64 2153071952}
!48 = !{i64 2153071794}
!49 = !{i64 2153072122}
!50 = !{i64 2149859231}
!51 = !{i64 2155128428, i64 2155128909, i64 2155128465, i64 2155128521, i64 2155128555, i64 2155128579, i64 2155128620, i64 2155128641, i64 2155128669, i64 2155128703}
!52 = !{i64 2155130059, i64 2155130540, i64 2155130096, i64 2155130152, i64 2155130186, i64 2155130210, i64 2155130251, i64 2155130272, i64 2155130300, i64 2155130334}
!53 = !{i64 2155131662, i64 2155132143, i64 2155131699, i64 2155131755, i64 2155131789, i64 2155131813, i64 2155131854, i64 2155131875, i64 2155131903, i64 2155131937}
!54 = !{i64 2155133265, i64 2155133746, i64 2155133302, i64 2155133358, i64 2155133392, i64 2155133416, i64 2155133457, i64 2155133478, i64 2155133506, i64 2155133540}
!55 = !{i64 2148282047, i64 2148282052, i64 2148282065, i64 2148282109, i64 2148282143, i64 2148282164}
!56 = !{!"branch_weights", i32 2000, i32 2002}
!57 = !{i64 2155136082, i64 2155136563, i64 2155136119, i64 2155136175, i64 2155136209, i64 2155136233, i64 2155136274, i64 2155136295, i64 2155136323, i64 2155136357}
!58 = !{i64 2155138000, i64 2155138481, i64 2155138037, i64 2155138093, i64 2155138127, i64 2155138151, i64 2155138192, i64 2155138213, i64 2155138241, i64 2155138275}
!59 = !{i64 2155141290, i64 2155141771, i64 2155141327, i64 2155141383, i64 2155141417, i64 2155141441, i64 2155141482, i64 2155141503, i64 2155141531, i64 2155141565}
!60 = !{i64 2152741600, i64 2152741625}
!61 = !{i64 5237155}
!62 = !{i64 5237352}
!63 = !{i64 2152722585}
!64 = !{i64 2155142939, i64 2155143420, i64 2155142976, i64 2155143032, i64 2155143066, i64 2155143090, i64 2155143131, i64 2155143152, i64 2155143180, i64 2155143214}
!65 = !{i64 2153127366, i64 2153127849, i64 2153127403, i64 2153127459, i64 2153127493, i64 2153127517, i64 2153127558, i64 2153127579, i64 2153127607, i64 2153127641}
!66 = !{i64 2148769846}
!67 = !{i64 2148684555, i64 2148684587, i64 2148684616, i64 2148684650, i64 2148684681, i64 2148684704}
!68 = !{i64 2148770075}
!69 = !{i64 2155144732, i64 2155145213, i64 2155144769, i64 2155144825, i64 2155144859, i64 2155144883, i64 2155144924, i64 2155144945, i64 2155144973, i64 2155145007}
!70 = !{i64 2155146293, i64 2155146774, i64 2155146330, i64 2155146386, i64 2155146420, i64 2155146444, i64 2155146485, i64 2155146506, i64 2155146534, i64 2155146568}
!71 = !{i64 2155147870, i64 2155148351, i64 2155147907, i64 2155147963, i64 2155147997, i64 2155148021, i64 2155148062, i64 2155148083, i64 2155148111, i64 2155148145}
!72 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!73 = !{i64 2155149505, i64 2155149986, i64 2155149542, i64 2155149598, i64 2155149632, i64 2155149656, i64 2155149697, i64 2155149718, i64 2155149746, i64 2155149780}
!74 = !{i64 2155151136, i64 2155151617, i64 2155151173, i64 2155151229, i64 2155151263, i64 2155151287, i64 2155151328, i64 2155151349, i64 2155151377, i64 2155151411}
!75 = !{i64 2155152723, i64 2155153204, i64 2155152760, i64 2155152816, i64 2155152850, i64 2155152874, i64 2155152915, i64 2155152936, i64 2155152964, i64 2155152998}
!76 = !{!"auto-init"}
!77 = !{i64 2150986949}
!78 = !{i64 2150236368, i64 2150236859, i64 2150236405, i64 2150236461, i64 2150236495, i64 2150236519, i64 2150236560, i64 2150236581, i64 2150236609, i64 2150236643}
