; ModuleID = '/llk/IR_all_yes/fs/ntfs3/attrib.c_pt.bc'
source_filename = "../fs/ntfs3/attrib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.66 }
%struct.atomic_t = type { i32 }
%union.anon.66 = type { i32 }
%struct.ATTRIB = type { i32, i32, i8, i8, i16, i16, i16, %union.anon }
%union.anon = type { %struct.ATTR_NONRESIDENT }
%struct.ATTR_NONRESIDENT = type { i64, i64, i16, i8, [5 x i8], i64, i64, i64, i64 }
%struct.mft_inode = type { %struct.rb_node, ptr, ptr, %struct.ntfs_buffers, i32, i8 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ntfs_buffers = type { [8 x ptr], i32, i32, i32 }
%struct.ntfs_sb_info = type { ptr, i32, i64, i32, i32, i64, i32, i32, i32, i32, i8, i8, i64, i64, i32, i32, i16, i16, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.anon.78, %struct.anon.79, %struct.anon.80, %struct.anon.81, %struct.anon.82, %struct.anon.83, %struct.anon.84, ptr, %struct.ratelimit_state }
%struct.anon.78 = type { i64, i64, ptr, %struct.wnd_bitmap, i32, i32, i32, i32, i8, i8 }
%struct.wnd_bitmap = type { ptr, %struct.rw_semaphore, %struct.runs_tree, i32, i32, ptr, i32, i32, %struct.rb_root, %struct.rb_root, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.runs_tree = type { ptr, i32, i32 }
%struct.rb_root = type { ptr }
%struct.anon.79 = type { %struct.wnd_bitmap, i32 }
%struct.anon.80 = type { i64, i64, i64, ptr, i16, i8, i8, [65 x i8], i8 }
%struct.anon.81 = type { %struct.ntfs_index, %struct.ntfs_index, ptr, i32, i64, i32 }
%struct.ntfs_index = type { %struct.runs_tree, %struct.runs_tree, %struct.rw_semaphore, ptr, i8, i8, i8, i8 }
%struct.anon.82 = type { %struct.ntfs_index, ptr, i64 }
%struct.anon.83 = type { %struct.ntfs_index, ptr }
%struct.anon.84 = type { %struct.mutex, ptr, %struct.mutex, ptr, %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.MFT_REC = type { %struct.NTFS_RECORD_HEADER, i16, i16, i16, i16, i32, i32, %struct.MFT_REF, i16, i16, i32, [0 x i16] }
%struct.NTFS_RECORD_HEADER = type { i32, i16, i16, i64 }
%struct.MFT_REF = type { i32, i16, i16 }
%struct.ATTR_RESIDENT = type { i32, i16, i8, i8 }
%struct.ntfs_inode = type { %struct.mft_inode, i64, %struct.timespec64, %struct.mutex, i32, i32, %struct.rb_root, i8, %union.anon.85, %struct.anon.87, i32, %struct.inode }
%struct.timespec64 = type { i64, i32 }
%union.anon.85 = type { %struct.ntfs_index }
%struct.anon.87 = type { %struct.runs_tree, ptr, i32, i8 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.69, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.70, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.71, ptr, %struct.address_space, %struct.list_head, %union.anon.72, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.69 = type { i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.70 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.71 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.72 = type { ptr }
%struct.page = type { i32, %union.anon.6, %union.anon.58, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.58 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.52, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.21 }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.52 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ntfs_mount_options = type { ptr, ptr, %struct.kuid_t, %struct.kgid_t, i16, i16, i16 }
%struct.ATTR_LIST_ENTRY = type { i32, i16, i8, i8, i64, %struct.MFT_REF, i16, [3 x i16] }

@I30_NAME = external dso_local constant [4 x i16], align 2
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\013is corrupted\00", [17 x i8] zeroinitializer }, align 32
@WOF_NAME = external dso_local constant [17 x i16], align 2
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.7 = private constant [21 x i8] c"../fs/ntfs3/attrib.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 1232, i32 4 }
@___asan_gen_.10 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 260, i32 2 }
@___asan_gen_.13 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 717, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 788, i32 2 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.5], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @attr_load_runs(ptr noundef %attr, ptr nocapture noundef readonly %ni, ptr noundef %run, ptr noundef readonly %vcn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 7
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %0, align 8
  %3 = tail call i64 @llvm.bswap.i64(i64 %2)
  %conv = trunc i64 %3 to i32
  %evcn2 = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 7, i32 0, i32 1
  %4 = ptrtoint ptr %evcn2 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %evcn2, align 8
  %6 = tail call i64 @llvm.bswap.i64(i64 %5)
  %conv3 = trunc i64 %6 to i32
  %add = add i32 %conv3, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp.not = icmp ugt i32 %add, %conv
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call = tail call zeroext i1 @run_is_mapped_full(ptr noundef %run, i32 noundef %conv, i32 noundef %conv3) #8
  br i1 %call, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %tobool.not = icmp eq ptr %vcn, null
  br i1 %tobool.not, label %if.end.if.end12_crit_edge, label %land.lhs.true

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %7 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vcn, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv3)
  %cmp6 = icmp ugt i32 %8, %conv3
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv)
  %cmp9 = icmp ult i32 %8, %conv
  %or.cond = select i1 %cmp6, i1 true, i1 %cmp9
  br i1 %or.cond, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %size = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 1
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %run_off13 = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 7, i32 0, i32 2
  %12 = ptrtoint ptr %run_off13 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %run_off13, align 8
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %sbi = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %15 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sbi, align 4
  %rno = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 4
  %17 = ptrtoint ptr %rno to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rno, align 8
  br i1 %tobool.not, label %if.end12.cond.end_crit_edge, label %cond.true

if.end12.cond.end_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vcn, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end12.cond.end_crit_edge
  %cond = phi i32 [ %20, %cond.true ], [ %conv, %if.end12.cond.end_crit_edge ]
  %conv16 = zext i16 %14 to i32
  %add.ptr = getelementptr i8, ptr %attr, i32 %conv16
  %sub = sub i32 %11, %conv16
  %call18 = tail call i32 @run_unpack_ex(ptr noundef %run, ptr noundef %16, i32 noundef %18, i32 noundef %conv, i32 noundef %conv3, i32 noundef %cond, ptr noundef %add.ptr, i32 noundef %sub) #8
  %21 = tail call i32 @llvm.smin.i32(i32 %call18, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ %21, %cond.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @run_is_mapped_full(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @run_unpack_ex(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @attr_allocate_clusters(ptr noundef %sbi, ptr noundef %run, i32 noundef %vcn, i32 noundef %lcn, i32 noundef %len, ptr noundef %pre_alloc, i32 noundef %opt, ptr nocapture noundef writeonly %alen, i32 noundef %fr, ptr noundef writeonly %new_lcn) local_unnamed_addr #0 align 64 {
entry:
  %lcn.addr = alloca i32, align 4
  %flen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lcn.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %lcn, ptr %lcn.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flen) #8
  %1 = ptrtoint ptr %flen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %flen, align 4, !annotation !22
  %tobool.not = icmp eq ptr %pre_alloc, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %pre_alloc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pre_alloc, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %3, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %used = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 28
  %count = getelementptr inbounds %struct.runs_tree, ptr %run, i32 0, i32 1
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 4
  %tobool8.not = icmp ne ptr %new_lcn, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %opt)
  %cmp13 = icmp eq i32 %opt, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fr)
  %tobool23.not = icmp eq i32 %fr, 0
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %if.end29, %cond.end
  %len.addr.0.ph = phi i32 [ %sub30, %if.end29 ], [ %len, %cond.end ]
  %vcn.addr.0.ph = phi i32 [ %add19, %if.end29 ], [ %vcn, %cond.end ]
  %pre.0.ph = phi i32 [ %pre.0.lcssa, %if.end29 ], [ %cond, %cond.end ]
  %6 = ptrtoint ptr %lcn.addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lcn.addr, align 4
  %add79 = add i32 %pre.0.ph, %len.addr.0.ph
  %call80 = call i32 @ntfs_look_for_free_space(ptr noundef %sbi, i32 noundef %7, i32 noundef %add79, ptr noundef nonnull %lcn.addr, ptr noundef nonnull %flen, i32 noundef %opt) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call80)
  %cmp81 = icmp ne i32 %call80, -28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pre.0.ph)
  %tobool1.not82 = icmp eq i32 %pre.0.ph, 0
  %or.cond83 = select i1 %cmp81, i1 true, i1 %tobool1.not82
  br i1 %or.cond83, label %for.cond.outer.if.end4_crit_edge, label %if.then

for.cond.outer.if.end4_crit_edge:                 ; preds = %for.cond.outer
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then:                                          ; preds = %for.cond.outer
  %8 = ptrtoint ptr %pre_alloc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pre_alloc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not = icmp eq i32 %9, 0
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %pre_alloc to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %pre_alloc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %11 = ptrtoint ptr %lcn.addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lcn.addr, align 4
  %call = call i32 @ntfs_look_for_free_space(ptr noundef %sbi, i32 noundef %12, i32 noundef %len.addr.0.ph, ptr noundef nonnull %lcn.addr, ptr noundef nonnull %flen, i32 noundef %opt) #8
  br label %if.end4

if.end4:                                          ; preds = %if.end, %for.cond.outer.if.end4_crit_edge
  %pre.0.lcssa = phi i32 [ 0, %if.end ], [ %pre.0.ph, %for.cond.outer.if.end4_crit_edge ]
  %call.lcssa = phi i32 [ %call, %if.end ], [ %call80, %for.cond.outer.if.end4_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.lcssa)
  %tobool5.not = icmp eq i32 %call.lcssa, 0
  br i1 %tobool5.not, label %if.end7, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_cmp4(i32 %vcn.addr.0.ph, i32 %vcn)
  %cmp10 = icmp eq i32 %vcn.addr.0.ph, %vcn
  %or.cond73 = select i1 %tobool8.not, i1 %cmp10, i1 false
  br i1 %or.cond73, label %if.then11, label %if.end7.if.end12_crit_edge

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %lcn.addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lcn.addr, align 4
  %15 = ptrtoint ptr %new_lcn to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %new_lcn, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end7.if.end12_crit_edge
  %16 = ptrtoint ptr %lcn.addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %lcn.addr, align 4
  %18 = ptrtoint ptr %flen to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flen, align 4
  %call14 = call zeroext i1 @run_add_entry(ptr noundef %run, i32 noundef %vcn.addr.0.ph, i32 noundef %17, i32 noundef %19, i1 noundef zeroext %cmp13) #8
  br i1 %call14, label %if.end18, label %if.then15

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %rw_lock = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 28, i32 0, i32 1
  call void @down_write_nested(ptr noundef %rw_lock, i32 noundef 0) #8
  %20 = ptrtoint ptr %lcn.addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lcn.addr, align 4
  %22 = ptrtoint ptr %flen to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flen, align 4
  %call16 = call i32 @wnd_set_free(ptr noundef %used, i32 noundef %21, i32 noundef %23) #8
  call void @up_write(ptr noundef %rw_lock) #8
  br label %out

if.end18:                                         ; preds = %if.end12
  %24 = ptrtoint ptr %flen to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flen, align 4
  %add19 = add i32 %25, %vcn.addr.0.ph
  call void @__sanitizer_cov_trace_cmp4(i32 %len.addr.0.ph, i32 %25)
  %cmp20.not = icmp ule i32 %len.addr.0.ph, %25
  %brmerge = or i1 %cmp13, %cmp20.not
  br i1 %brmerge, label %if.end18.if.then27_crit_edge, label %lor.lhs.false22

if.end18.if.then27_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then27

lor.lhs.false22:                                  ; preds = %if.end18
  br i1 %tobool23.not, label %lor.lhs.false22.if.end29_crit_edge, label %land.lhs.true24

lor.lhs.false22.if.end29_crit_edge:               ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

land.lhs.true24:                                  ; preds = %lor.lhs.false22
  %26 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count, align 4
  %sub = sub i32 %27, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %fr)
  %cmp26.not = icmp ult i32 %sub, %fr
  br i1 %cmp26.not, label %land.lhs.true24.if.end29_crit_edge, label %land.lhs.true24.if.then27_crit_edge

land.lhs.true24.if.then27_crit_edge:              ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then27

land.lhs.true24.if.end29_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then27:                                        ; preds = %land.lhs.true24.if.then27_crit_edge, %if.end18.if.then27_crit_edge
  %sub28 = sub i32 %add19, %vcn
  %28 = ptrtoint ptr %alen to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub28, ptr %alen, align 4
  br label %cleanup

if.end29:                                         ; preds = %land.lhs.true24.if.end29_crit_edge, %lor.lhs.false22.if.end29_crit_edge
  %sub30 = sub i32 %len.addr.0.ph, %25
  br label %for.cond.outer

out:                                              ; preds = %if.then15, %if.end4.out_crit_edge
  %err.0 = phi i32 [ -12, %if.then15 ], [ %call.lcssa, %if.end4.out_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %vcn.addr.0.ph, i32 %vcn)
  %tobool32.not = icmp eq i32 %vcn.addr.0.ph, %vcn
  br i1 %tobool32.not, label %out.cleanup_crit_edge, label %if.then33

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then33:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %sub31 = sub i32 %vcn.addr.0.ph, %vcn
  %call35 = call fastcc i32 @run_deallocate_ex(ptr noundef %sbi, ptr noundef %run, i32 noundef %vcn, i32 noundef %sub31, ptr noundef null, i1 noundef zeroext false)
  call void @run_truncate(ptr noundef %run, i32 noundef %vcn) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %out.cleanup_crit_edge, %if.then27
  %retval.0 = phi i32 [ 0, %if.then27 ], [ %err.0, %if.then33 ], [ %err.0, %out.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flen) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_look_for_free_space(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @run_add_entry(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wnd_set_free(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @run_deallocate_ex(ptr noundef %sbi, ptr noundef %run, i32 noundef %vcn, i32 noundef %len, ptr noundef %done, i1 noundef zeroext %trim) unnamed_addr #0 align 64 {
entry:
  %vcn.addr = alloca i32, align 4
  %lcn = alloca i32, align 4
  %clen = alloca i32, align 4
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vcn.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %vcn, ptr %vcn.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lcn) #8
  %1 = ptrtoint ptr %lcn to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %lcn, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clen) #8
  %2 = ptrtoint ptr %clen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %clen, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #8
  %3 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %idx, align 4, !annotation !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp eq i32 %len, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %call = call zeroext i1 @run_lookup_entry(ptr noundef %run, i32 noundef %vcn, ptr noundef nonnull %lcn, ptr noundef nonnull %clen, ptr noundef nonnull %idx) #8
  br i1 %call, label %if.end.for.cond_crit_edge, label %if.end.failed_crit_edge

if.end.failed_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed

if.end.for.cond_crit_edge:                        ; preds = %if.end
  br label %for.cond

failed:                                           ; preds = %lor.lhs.false.failed_crit_edge, %if.end14.failed_crit_edge, %if.end.failed_crit_edge
  %dn.0 = phi i32 [ 0, %if.end.failed_crit_edge ], [ %dn.2, %lor.lhs.false.failed_crit_edge ], [ %dn.2, %if.end14.failed_crit_edge ]
  call void @run_truncate(ptr noundef %run, i32 noundef %vcn) #8
  br label %out

for.cond:                                         ; preds = %lor.lhs.false.for.cond_crit_edge, %if.end.for.cond_crit_edge
  %len.addr.0 = phi i32 [ %sub, %lor.lhs.false.for.cond_crit_edge ], [ %len, %if.end.for.cond_crit_edge ]
  %dn.1 = phi i32 [ %dn.2, %lor.lhs.false.for.cond_crit_edge ], [ 0, %if.end.for.cond_crit_edge ]
  %4 = ptrtoint ptr %clen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %len.addr.0)
  %cmp = icmp ugt i32 %5, %len.addr.0
  br i1 %cmp, label %if.end4.thread, label %if.end4

if.end4.thread:                                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %clen to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %len.addr.0, ptr %clen, align 4
  br label %if.end7

if.end4:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not = icmp eq i32 %5, 0
  br i1 %tobool5.not, label %if.end4.out_crit_edge, label %if.end4.if.end7_crit_edge

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end7:                                          ; preds = %if.end4.if.end7_crit_edge, %if.end4.thread
  %7 = phi i32 [ %len.addr.0, %if.end4.thread ], [ %5, %if.end4.if.end7_crit_edge ]
  %8 = ptrtoint ptr %lcn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lcn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp8.not = icmp eq i32 %9, -1
  br i1 %cmp8.not, label %if.end7.if.end11_crit_edge, label %if.then9

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  call void @mark_as_free_ex(ptr noundef %sbi, i32 noundef %9, i32 noundef %7, i1 noundef zeroext %trim) #8
  %10 = ptrtoint ptr %clen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %clen, align 4
  %add = add i32 %11, %dn.1
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7.if.end11_crit_edge
  %dn.2 = phi i32 [ %add, %if.then9 ], [ %dn.1, %if.end7.if.end11_crit_edge ]
  %12 = ptrtoint ptr %clen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %clen, align 4
  %sub = sub i32 %len.addr.0, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool12.not = icmp eq i32 %sub, 0
  br i1 %tobool12.not, label %if.end11.out_crit_edge, label %if.end14

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end14:                                         ; preds = %if.end11
  %14 = ptrtoint ptr %vcn.addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vcn.addr, align 4
  %16 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %idx, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %idx, align 4
  %call16 = call zeroext i1 @run_get_entry(ptr noundef %run, i32 noundef %inc, ptr noundef nonnull %vcn.addr, ptr noundef nonnull %lcn, ptr noundef nonnull %clen) #8
  br i1 %call16, label %lor.lhs.false, label %if.end14.failed_crit_edge

if.end14.failed_crit_edge:                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed

lor.lhs.false:                                    ; preds = %if.end14
  %add15 = add i32 %15, %13
  %18 = ptrtoint ptr %vcn.addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vcn.addr, align 4
  %cmp17.not = icmp eq i32 %19, %add15
  br i1 %cmp17.not, label %lor.lhs.false.for.cond_crit_edge, label %lor.lhs.false.failed_crit_edge

lor.lhs.false.failed_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed

lor.lhs.false.for.cond_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

out:                                              ; preds = %if.end11.out_crit_edge, %if.end4.out_crit_edge, %failed, %entry.out_crit_edge
  %err.0 = phi i32 [ -22, %failed ], [ 0, %entry.out_crit_edge ], [ -22, %if.end4.out_crit_edge ], [ 0, %if.end11.out_crit_edge ]
  %dn.3 = phi i32 [ %dn.0, %failed ], [ 0, %entry.out_crit_edge ], [ %dn.1, %if.end4.out_crit_edge ], [ %dn.2, %if.end11.out_crit_edge ]
  %tobool20.not = icmp eq ptr %done, null
  br i1 %tobool20.not, label %out.if.end23_crit_edge, label %if.then21

out.if.end23_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then21:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %done, align 4
  %add22 = add i32 %21, %dn.3
  store i32 %add22, ptr %done, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %out.if.end23_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clen) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lcn) #8
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @run_truncate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @attr_make_nonresident(ptr noundef %ni, ptr noundef %attr, ptr noundef %le, ptr nocapture noundef %mi, i64 %new_size, ptr noundef %run, ptr nocapture noundef writeonly %ins_attr, ptr noundef readnone %page) local_unnamed_addr #0 align 64 {
entry:
  %attr.addr = alloca ptr, align 4
  %alen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attr.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %attr, ptr %attr.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alen) #8
  %1 = ptrtoint ptr %alen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %alen, align 4, !annotation !22
  %non_res = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %non_res to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %non_res, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %ins_attr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %attr, ptr %ins_attr, align 4
  br label %cleanup75

if.end:                                           ; preds = %entry
  %sbi1 = getelementptr inbounds %struct.mft_inode, ptr %mi, i32 0, i32 1
  %5 = ptrtoint ptr %sbi1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sbi1, align 4
  %mrec = getelementptr inbounds %struct.mft_inode, ptr %mi, i32 0, i32 2
  %7 = ptrtoint ptr %mrec to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mrec, align 4
  %used2 = getelementptr inbounds %struct.MFT_REC, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %used2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %used2, align 8
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %size = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 1
  %12 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %add.ptr = getelementptr i8, ptr %attr, i32 %14
  %15 = ptrtoint ptr %attr to i32
  %16 = ptrtoint ptr %8 to i32
  %sub = sub i32 %15, %16
  %17 = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 7
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %21 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %attr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %22)
  %cmp = icmp eq i32 %22, -2147483648
  br i1 %cmp, label %land.rhs, label %if.end.land.end_crit_edge

if.end.land.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %name_len = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 3
  %23 = ptrtoint ptr %name_len to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %name_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool3.not = icmp eq i8 %24, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.land.end_crit_edge
  %25 = phi i1 [ false, %if.end.land.end_crit_edge ], [ %tobool3.not, %land.rhs ]
  %cluster_size = getelementptr inbounds %struct.ntfs_sb_info, ptr %6, i32 0, i32 3
  %26 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cluster_size, align 8
  %flags.i = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 5
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %flags.i, align 4
  %30 = and i16 %29, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool.i.not = icmp eq i16 %30, 0
  %shl = shl i32 %27, 4
  %spec.select = select i1 %tobool.i.not, i32 %27, i32 %shl
  %add = add i32 %20, -1
  %sub6 = add i32 %add, %spec.select
  %cluster_bits = getelementptr inbounds %struct.ntfs_sb_info, ptr %6, i32 0, i32 10
  %31 = ptrtoint ptr %cluster_bits to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %cluster_bits, align 8
  %conv = zext i8 %32 to i32
  %shr = lshr i32 %sub6, %conv
  %33 = ptrtoint ptr %run to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %run, align 4
  %count.i = getelementptr inbounds %struct.runs_tree, ptr %run, i32 0, i32 1
  %34 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %count.i, align 4
  %allocated.i = getelementptr inbounds %struct.runs_tree, ptr %run, i32 0, i32 2
  %35 = ptrtoint ptr %allocated.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %allocated.i, align 4
  %call7 = tail call ptr @kmemdup(ptr noundef %attr, i32 noundef %14, i32 noundef 3136) #8
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %land.end.cleanup75_crit_edge, label %if.end10

land.end.cleanup75_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup75

if.end10:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %tobool11.not = icmp eq i32 %shr, 0
  br i1 %tobool11.not, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %alen to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %alen, align 4
  br label %if.end47

if.else:                                          ; preds = %if.end10
  %37 = ptrtoint ptr %attr.addr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %attr.addr, align 4
  %39 = getelementptr inbounds %struct.ATTRIB, ptr %38, i32 0, i32 7
  %data_off.i = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %data_off.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %data_off.i, align 4
  %42 = tail call i16 @llvm.bswap.i16(i16 %41) #8
  %conv.i = zext i16 %42 to i32
  %add.ptr.i = getelementptr i8, ptr %38, i32 %conv.i
  %call14 = call i32 @attr_allocate_clusters(ptr noundef %6, ptr noundef %run, i32 noundef 0, i32 noundef 0, i32 noundef %shr, ptr noundef null, i32 noundef 0, ptr noundef nonnull %alen, i32 noundef 0, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.else.out1_crit_edge

if.else.out1_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %out1

if.end17:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool18.not = icmp eq i32 %19, 0
  br i1 %tobool18.not, label %if.end17.if.end47_crit_edge, label %if.else20

if.end17.if.end47_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.else20:                                        ; preds = %if.end17
  br i1 %25, label %if.else27, label %if.then22

if.then22:                                        ; preds = %if.else20
  %call23 = tail call i32 @ntfs_sb_write_run(ptr noundef %6, ptr noundef %run, i64 noundef 0, ptr noundef %add.ptr.i, i32 noundef %20, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then22.if.end47_crit_edge, label %if.then22.out2_crit_edge

if.then22.out2_crit_edge:                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %out2

if.then22.if.end47_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.else27:                                        ; preds = %if.else20
  %tobool28.not = icmp eq ptr %page, null
  br i1 %tobool28.not, label %if.then29, label %if.else27.if.end47_crit_edge

if.else27.if.end47_crit_edge:                     ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then29:                                        ; preds = %if.else27
  %i_mapping = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 11, i32 9
  %43 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i_mapping, align 8
  %gfp_mask.i.i = getelementptr inbounds %struct.address_space, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %gfp_mask.i.i, align 4
  %call.i.i = tail call ptr @pagecache_get_page(ptr noundef %44, i32 noundef 0, i32 noundef 7, i32 noundef %46) #8
  %tobool31.not = icmp eq ptr %call.i.i, null
  br i1 %tobool31.not, label %if.then29.out2_crit_edge, label %if.end33

if.then29.out2_crit_edge:                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %out2

if.end33:                                         ; preds = %if.then29
  %call34 = tail call fastcc ptr @kmap_atomic(ptr noundef nonnull %call.i.i)
  %47 = call ptr @memcpy(ptr %call34, ptr %add.ptr.i, i32 %20)
  %add.ptr35 = getelementptr i8, ptr %call34, i32 %20
  %sub36 = sub i32 4096, %20
  %48 = call ptr @memset(ptr %add.ptr35, i32 0, i32 %sub36)
  tail call fastcc void @__kunmap_atomic(ptr noundef %call34)
  tail call void @flush_dcache_page(ptr noundef nonnull %call.i.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !23
  %49 = getelementptr inbounds %struct.page, ptr %call.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %49, align 4
  %and.i.i.i.i = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %cleanup, label %if.then.i.i.i, !prof !24

if.then.i.i.i:                                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.1) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !25
  unreachable

cleanup:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 2, ptr noundef nonnull %call.i.i) #8
  %call40 = tail call zeroext i1 @set_page_dirty(ptr noundef nonnull %call.i.i) #8
  tail call void @unlock_page(ptr noundef nonnull %call.i.i) #8
  tail call fastcc void @put_page(ptr noundef nonnull %call.i.i)
  br label %if.end47

if.end47:                                         ; preds = %cleanup, %if.else27.if.end47_crit_edge, %if.then22.if.end47_crit_edge, %if.end17.if.end47_crit_edge, %if.then12
  %sub48 = sub i32 %11, %14
  %52 = ptrtoint ptr %attr.addr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %attr.addr, align 4
  %add.ptr49 = getelementptr i8, ptr %53, i32 %14
  %sub50 = sub i32 %sub48, %sub
  %54 = call ptr @memmove(ptr %53, ptr %add.ptr49, i32 %sub50)
  %55 = tail call i32 @llvm.bswap.i32(i32 %sub48)
  %56 = ptrtoint ptr %used2 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %used2, align 8
  %dirty = getelementptr inbounds %struct.mft_inode, ptr %mi, i32 0, i32 5
  %57 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %dirty, align 4
  %tobool52.not = icmp eq ptr %le, null
  br i1 %tobool52.not, label %if.end47.if.end55_crit_edge, label %if.then53

if.end47.if.end55_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then53:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %call54 = tail call zeroext i1 @al_remove_le(ptr noundef %ni, ptr noundef nonnull %le) #8
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.end47.if.end55_crit_edge
  %58 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %call7, align 8
  %name_off.i = getelementptr inbounds %struct.ATTRIB, ptr %call7, i32 0, i32 4
  %60 = ptrtoint ptr %name_off.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %name_off.i, align 2
  %62 = tail call i16 @llvm.bswap.i16(i16 %61) #8
  %conv.i150 = zext i16 %62 to i32
  %add.ptr.i151 = getelementptr i8, ptr %call7, i32 %conv.i150
  %name_len58 = getelementptr inbounds %struct.ATTRIB, ptr %call7, i32 0, i32 3
  %63 = ptrtoint ptr %name_len58 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %name_len58, align 1
  %65 = ptrtoint ptr %alen to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %alen, align 4
  %flags = getelementptr inbounds %struct.ATTRIB, ptr %call7, i32 0, i32 5
  %67 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %flags, align 4
  %call59 = call i32 @ni_insert_nonresident(ptr noundef %ni, i32 noundef %59, ptr noundef %add.ptr.i151, i8 noundef zeroext %64, ptr noundef %run, i32 noundef 0, i32 noundef %66, i16 noundef zeroext %68, ptr noundef nonnull %attr.addr, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %out3

if.end62:                                         ; preds = %if.end55
  call void @kfree(ptr noundef nonnull %call7) #8
  %conv63 = zext i32 %20 to i64
  %69 = call i64 @llvm.bswap.i64(i64 %conv63)
  %70 = ptrtoint ptr %attr.addr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %attr.addr, align 4
  %data_size64 = getelementptr inbounds %struct.ATTRIB, ptr %71, i32 0, i32 7, i32 0, i32 6
  %72 = ptrtoint ptr %data_size64 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %69, ptr %data_size64, align 8
  %valid_size = getelementptr inbounds %struct.ATTRIB, ptr %71, i32 0, i32 7, i32 0, i32 7
  %73 = ptrtoint ptr %valid_size to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %69, ptr %valid_size, align 8
  %74 = ptrtoint ptr %ins_attr to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %71, ptr %ins_attr, align 4
  br i1 %25, label %if.then67, label %if.end62.cleanup75_crit_edge

if.end62.cleanup75_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup75

if.then67:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  %ni_flags = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 10
  %75 = ptrtoint ptr %ni_flags to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ni_flags, align 4
  %and = and i32 %76, -129
  store i32 %and, ptr %ni_flags, align 4
  br label %cleanup75

out3:                                             ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr69 = getelementptr i8, ptr %8, i32 %sub
  %77 = ptrtoint ptr %attr.addr to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %add.ptr69, ptr %attr.addr, align 4
  %78 = call ptr @memmove(ptr %add.ptr, ptr %add.ptr69, i32 %sub50)
  %79 = call ptr @memcpy(ptr %add.ptr69, ptr %call7, i32 %14)
  %80 = ptrtoint ptr %used2 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %10, ptr %used2, align 8
  %81 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %dirty, align 4
  br label %out2

out2:                                             ; preds = %out3, %if.then29.out2_crit_edge, %if.then22.out2_crit_edge
  %err.3 = phi i32 [ %call59, %out3 ], [ %call23, %if.then22.out2_crit_edge ], [ -12, %if.then29.out2_crit_edge ]
  %call74 = call i32 @run_deallocate(ptr noundef %6, ptr noundef %run, i1 noundef zeroext false) #8
  %82 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %run, align 4
  call void @kvfree(ptr noundef %83) #8
  %84 = call ptr @memset(ptr %run, i32 0, i32 12)
  br label %out1

out1:                                             ; preds = %out2, %if.else.out1_crit_edge
  %err.4 = phi i32 [ %err.3, %out2 ], [ %call14, %if.else.out1_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7) #8
  br label %cleanup75

cleanup75:                                        ; preds = %out1, %if.then67, %if.end62.cleanup75_crit_edge, %land.end.cleanup75_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then67 ], [ 0, %if.end62.cleanup75_crit_edge ], [ %err.4, %out1 ], [ -12, %land.end.cleanup75_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alen) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_sb_write_run(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @kmap_atomic(ptr noundef %page) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %0 = load i32, ptr @pgprot_kernel, align 4
  %or = or i32 %0, 512
  %1 = tail call i32 @llvm.read_register.i32(metadata !12) #8
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !26
  %5 = tail call i32 @llvm.read_register.i32(metadata !12) #8
  %and.i.i.i1.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 213
  %9 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %inc.i.i.i = add i32 %10, 1
  store i32 %inc.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !27
  %call.i = tail call ptr @__kmap_local_page_prot(ptr noundef %page, i32 noundef %or) #8
  ret ptr %call.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__kunmap_atomic(ptr noundef %addr) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kunmap_local_indexed(ptr noundef %addr) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !28
  %0 = tail call i32 @llvm.read_register.i32(metadata !12) #8
  %and.i.i.i1 = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i1 to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i.i, align 8
  %pagefault_disabled.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 213
  %4 = ptrtoint ptr %pagefault_disabled.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pagefault_disabled.i.i, align 8
  %dec.i.i = add i32 %5, -1
  store i32 %dec.i.i, ptr %pagefault_disabled.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !29
  %6 = tail call i32 @llvm.read_register.i32(metadata !12) #8
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %9, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_page(ptr noundef %page) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !24

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #8
  %5 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.i.i = icmp eq i32 %6, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.end5.i.i.i, !prof !30

if.then.i.i.i:                                    ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.3) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !31
  unreachable

do.end5.i.i.i:                                    ; preds = %_compound_head.exit
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !32
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #8
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #8, !srcloc !33
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@put_page, %if.then.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i], !srcloc !35

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %4, i32 noundef -1, i32 noundef %conv.i.i.i.i) #8
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i4, label %folio_put_testzero.exit.i.folio_put.exit_crit_edge

folio_put_testzero.exit.i.folio_put.exit_crit_edge: ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %folio_put.exit

if.then.i4:                                       ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %4) #8
  br label %folio_put.exit

folio_put.exit:                                   ; preds = %if.then.i4, %folio_put_testzero.exit.i.folio_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @al_remove_le(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_insert_nonresident(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @run_deallocate(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @attr_set_size(ptr noundef %ni, i32 noundef %type, ptr noundef %name, i8 noundef zeroext %name_len, ptr noundef %run, i64 noundef %new_size, ptr noundef readonly %new_valid, i1 noundef zeroext %keep_prealloc, ptr noundef writeonly %ret) local_unnamed_addr #0 align 64 {
entry:
  %attr = alloca ptr, align 4
  %attr_b = alloca ptr, align 4
  %le = alloca ptr, align 4
  %le_b = alloca ptr, align 4
  %mi6 = alloca ptr, align 4
  %mi_b = alloca ptr, align 4
  %alen = alloca i32, align 4
  %vcn = alloca i32, align 4
  %lcn = alloca i32, align 4
  %pre_alloc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sbi1 = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %0 = ptrtoint ptr %sbi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sbi1, align 4
  %cluster_bits2 = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %cluster_bits2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cluster_bits2, align 8
  %rno = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 4
  %4 = ptrtoint ptr %rno to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rno, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %type)
  %cmp4 = icmp eq i32 %type, -2147483648
  %or.cond = and i1 %cmp4, %cmp
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %name_len)
  %tobool.not = icmp eq i8 %name_len, 0
  %spec.select = and i1 %tobool.not, %or.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %attr) #8
  %6 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %attr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %attr_b) #8
  %7 = ptrtoint ptr %attr_b to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %attr_b, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le) #8
  %8 = ptrtoint ptr %le to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %le, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le_b) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mi6) #8
  %9 = ptrtoint ptr %mi6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %mi6, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mi_b) #8
  %10 = ptrtoint ptr %mi_b to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %mi_b, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alen) #8
  %11 = ptrtoint ptr %alen to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %alen, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vcn) #8
  %12 = ptrtoint ptr %vcn to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %vcn, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lcn) #8
  %13 = ptrtoint ptr %lcn to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %lcn, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pre_alloc) #8
  %14 = ptrtoint ptr %pre_alloc to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %pre_alloc, align 4
  %add.i = add i64 %new_size, 7
  %and.i = and i64 %add.i, -8
  %.pre.i = trunc i64 %new_size to i32
  %cluster_size = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 3
  %sh_prom = zext i8 %3 to i64
  %add = add i64 %new_size, -1
  %15 = call i64 @llvm.bswap.i64(i64 %new_size)
  %conv365 = zext i8 %name_len to i32
  %mul371 = shl nuw nsw i32 %conv365, 1
  %or.cond654 = and i1 %cmp4, %tobool.not
  %options = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 34
  call void @__sanitizer_cov_trace_const_cmp8(i64 16777217, i64 %new_size)
  %cmp.i669 = icmp ult i64 %new_size, 16777217
  call void @__sanitizer_cov_trace_const_cmp8(i64 17179869183, i64 %new_size)
  %cmp1.i = icmp ugt i64 %new_size, 17179869183
  %shr.i = lshr i64 %new_size, 24
  %conv.i671 = trunc i64 %shr.i to i32
  %16 = call i32 @llvm.cttz.i32(i32 %conv.i671, i1 false) #8, !range !36
  %conv4.i = add nuw nsw i32 %16, 15
  %shl.i = shl i32 32768, %16
  %cluster_mask.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 4
  %total_zeroes.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 28, i32 0, i32 4
  %record_size = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %type)
  %cmp209 = icmp eq i32 %type, 536870912
  %size = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9, i32 2
  %17 = call i32 @llvm.bswap.i32(i32 %.pre.i) #8
  %18 = zext i32 %shl.i to i64
  %19 = select i1 %cmp1.i, i64 67108864, i64 %18
  %conv7.i = select i1 %cmp.i669, i64 65536, i64 %19
  %sub.i672 = add i64 %add, %conv7.i
  %20 = zext i32 %conv4.i to i64
  %.op789 = shl nsw i64 -1, %20
  %.op = select i1 %cmp1.i, i64 -67108864, i64 %.op789
  %21 = select i1 %cmp.i669, i64 -65536, i64 %.op
  %shl13.i = and i64 %21, %sub.i672
  br label %again.outer

again.loopexit:                                   ; preds = %if.end227.again.loopexit_crit_edge, %if.end215.again.loopexit_crit_edge
  %22 = ptrtoint ptr %attr_b to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %74, ptr %attr_b, align 4
  br label %again.outer

again.outer:                                      ; preds = %again.loopexit, %entry
  %done.0.ph = phi i32 [ %add146, %again.loopexit ], [ 0, %entry ]
  br label %again

again:                                            ; preds = %lor.lhs.false.again_crit_edge, %again.outer
  %23 = ptrtoint ptr %le_b to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %le_b, align 4
  %call = call ptr @ni_find_attr(ptr noundef %ni, ptr noundef null, ptr noundef nonnull %le_b, i32 noundef %type, ptr noundef %name, i8 noundef zeroext %name_len, ptr noundef null, ptr noundef nonnull %mi_b) #8
  %24 = ptrtoint ptr %attr_b to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call, ptr %attr_b, align 4
  %tobool7.not = icmp eq ptr %call, null
  br i1 %tobool7.not, label %again.cleanup450_crit_edge, label %if.end

again.cleanup450_crit_edge:                       ; preds = %again
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup450

if.end:                                           ; preds = %again
  %non_res = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 2
  %25 = ptrtoint ptr %non_res to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %non_res, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool8.not = icmp eq i8 %26, 0
  br i1 %tobool8.not, label %if.then9, label %if.end16

if.then9:                                         ; preds = %if.end
  %27 = ptrtoint ptr %le_b to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %le_b, align 4
  %29 = ptrtoint ptr %mi_b to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mi_b, align 4
  %sbi1.i = getelementptr inbounds %struct.mft_inode, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %sbi1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sbi1.i, align 4
  %mrec.i = getelementptr inbounds %struct.mft_inode, ptr %30, i32 0, i32 2
  %33 = ptrtoint ptr %mrec.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mrec.i, align 4
  %used2.i = getelementptr inbounds %struct.MFT_REC, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %used2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %used2.i, align 8
  %37 = call i32 @llvm.bswap.i32(i32 %36) #8
  %size.i = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 1
  %38 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %size.i, align 4
  %40 = call i32 @llvm.bswap.i32(i32 %39) #8
  %41 = ptrtoint ptr %call to i32
  %42 = ptrtoint ptr %34 to i32
  %43 = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 7
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 8
  %46 = call i32 @llvm.bswap.i32(i32 %45) #8
  %47 = add i32 %37, %42
  %48 = add i32 %40, %41
  %sub4.i = sub i32 %47, %48
  %add.ptr.i = getelementptr i8, ptr %call, i32 %40
  %add5.i = add i32 %46, 7
  %and6.i = and i32 %add5.i, -8
  %conv.i = zext i32 %and6.i to i64
  %sub7.i = sub i64 %and.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub7.i)
  %cmp.i = icmp slt i64 %sub7.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %idx.ext.i = trunc i64 %sub7.i to i32
  %add.ptr9.i = getelementptr i8, ptr %add.ptr.i, i32 %idx.ext.i
  %49 = call ptr @memmove(ptr %add.ptr9.i, ptr %add.ptr.i, i32 %sub4.i)
  br label %if.end23.i

if.else.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i, i64 %conv.i)
  %cmp10.not.i = icmp eq i64 %and.i, %conv.i
  br i1 %cmp10.not.i, label %if.else.i.if.end23.i_crit_edge, label %if.then12.i

if.else.i.if.end23.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then12.i:                                      ; preds = %if.else.i
  %conv13.i = zext i32 %37 to i64
  %add14.i = add nuw i64 %sub7.i, %conv13.i
  %max_bytes_per_attr.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %32, i32 0, i32 16
  %50 = ptrtoint ptr %max_bytes_per_attr.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %max_bytes_per_attr.i, align 8
  %conv15.i = zext i16 %51 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add14.i, i64 %conv15.i)
  %cmp16.i = icmp sgt i64 %add14.i, %conv15.i
  br i1 %cmp16.i, label %attr_set_size_res.exit, label %if.end.i

if.end.i:                                         ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  %idx.ext19.i = trunc i64 %sub7.i to i32
  %add.ptr20.i = getelementptr i8, ptr %add.ptr.i, i32 %idx.ext19.i
  %52 = call ptr @memmove(ptr %add.ptr20.i, ptr %add.ptr.i, i32 %sub4.i)
  %53 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %idx.ext19.i)
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.end.i, %if.else.i.if.end23.i_crit_edge, %if.then.i
  %conv24.i = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv24.i, i64 %new_size)
  %cmp25.i = icmp ult i64 %conv24.i, %new_size
  br i1 %cmp25.i, label %if.then27.i, label %if.end23.i.attr_set_size_res.exit.thread_crit_edge

if.end23.i.attr_set_size_res.exit.thread_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %attr_set_size_res.exit.thread

if.then27.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  %data_off.i.i = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %43, i32 0, i32 1
  %54 = ptrtoint ptr %data_off.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %data_off.i.i, align 4
  %56 = call i16 @llvm.bswap.i16(i16 %55) #8
  %conv.i.i = zext i16 %56 to i32
  %add.ptr.i.i = getelementptr i8, ptr %call, i32 %conv.i.i
  %add.ptr29.i = getelementptr i8, ptr %add.ptr.i.i, i32 %46
  %conv32.i = sub i32 %.pre.i, %46
  %57 = call ptr @memset(ptr %add.ptr29.i, i32 0, i32 %conv32.i)
  br label %attr_set_size_res.exit.thread

attr_set_size_res.exit.thread:                    ; preds = %if.then27.i, %if.end23.i.attr_set_size_res.exit.thread_crit_edge
  %58 = trunc i64 %sub7.i to i32
  %conv36.i = add i32 %37, %58
  %59 = call i32 @llvm.bswap.i32(i32 %conv36.i) #8
  %60 = ptrtoint ptr %used2.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %used2.i, align 8
  %conv40.i = add i32 %40, %58
  %61 = call i32 @llvm.bswap.i32(i32 %conv40.i) #8
  %62 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %size.i, align 4
  %63 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %17, ptr %43, align 8
  %dirty.i = getelementptr inbounds %struct.mft_inode, ptr %30, i32 0, i32 5
  %64 = ptrtoint ptr %dirty.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %dirty.i, align 4
  %65 = ptrtoint ptr %attr_b to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call, ptr %attr_b, align 4
  br label %lor.lhs.false

attr_set_size_res.exit:                           ; preds = %if.then12.i
  %call.i = call i32 @attr_make_nonresident(ptr noundef %ni, ptr noundef nonnull %call, ptr noundef %28, ptr noundef %30, i64 undef, ptr noundef %run, ptr noundef nonnull %attr_b, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  br i1 %tobool11.not, label %attr_set_size_res.exit.lor.lhs.false_crit_edge, label %attr_set_size_res.exit.cleanup450_crit_edge

attr_set_size_res.exit.cleanup450_crit_edge:      ; preds = %attr_set_size_res.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup450

attr_set_size_res.exit.lor.lhs.false_crit_edge:   ; preds = %attr_set_size_res.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %attr_set_size_res.exit.lor.lhs.false_crit_edge, %attr_set_size_res.exit.thread
  %66 = ptrtoint ptr %attr_b to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %attr_b, align 4
  %non_res12 = getelementptr inbounds %struct.ATTRIB, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %non_res12 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %non_res12, align 8
  %tobool13.not = icmp eq i8 %69, 0
  br i1 %tobool13.not, label %lor.lhs.false.land.lhs.true404_crit_edge, label %lor.lhs.false.again_crit_edge

lor.lhs.false.again_crit_edge:                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %again

lor.lhs.false.land.lhs.true404_crit_edge:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true404

if.end16:                                         ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 5
  %70 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %flags.i, align 4
  %72 = and i16 %71, 384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %tobool.i.not = icmp eq i16 %72, 0
  %73 = ptrtoint ptr %attr_b to i32
  call void @__asan_load4_noabort(i32 %73)
  %attr_b.promoted = load ptr, ptr %attr_b, align 4
  br label %again_1

again_1:                                          ; preds = %cleanup, %if.end16
  %74 = phi ptr [ %attr_b.promoted, %if.end16 ], [ %call245, %cleanup ]
  %done.1 = phi i32 [ %done.0.ph, %if.end16 ], [ %add146, %cleanup ]
  %75 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %cluster_size, align 8
  br i1 %tobool.i.not, label %again_1.if.end21_crit_edge, label %if.then20

again_1.if.end21_crit_edge:                       ; preds = %again_1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then20:                                        ; preds = %again_1
  call void @__sanitizer_cov_trace_pc() #10
  %c_unit = getelementptr inbounds %struct.ATTRIB, ptr %74, i32 0, i32 7, i32 0, i32 3
  %77 = ptrtoint ptr %c_unit to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %c_unit, align 2
  %conv = zext i8 %78 to i32
  %shl = shl i32 %76, %conv
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %again_1.if.end21_crit_edge
  %align.0 = phi i32 [ %shl, %if.then20 ], [ %76, %again_1.if.end21_crit_edge ]
  %valid_size = getelementptr inbounds %struct.ATTRIB, ptr %74, i32 0, i32 7, i32 0, i32 7
  %79 = ptrtoint ptr %valid_size to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %valid_size, align 8
  %81 = call i64 @llvm.bswap.i64(i64 %80)
  %data_size = getelementptr inbounds %struct.ATTRIB, ptr %74, i32 0, i32 7, i32 0, i32 6
  %82 = ptrtoint ptr %data_size to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %data_size, align 8
  %84 = call i64 @llvm.bswap.i64(i64 %83)
  %alloc_size = getelementptr inbounds %struct.ATTRIB, ptr %74, i32 0, i32 7, i32 0, i32 5
  %85 = ptrtoint ptr %alloc_size to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %alloc_size, align 8
  %87 = call i64 @llvm.bswap.i64(i64 %86)
  %shr = lshr i64 %87, %sh_prom
  %conv23 = trunc i64 %shr to i32
  %conv24 = zext i32 %align.0 to i64
  %sub = add i64 %add, %conv24
  %sub25 = add i32 %align.0, -1
  %conv26 = zext i32 %sub25 to i64
  %neg = xor i64 %conv26, -1
  %and = and i64 %sub, %neg
  %shr29 = lshr i64 %and, %sh_prom
  %conv30 = trunc i64 %shr29 to i32
  call void @__sanitizer_cov_trace_cmp8(i64 %84, i64 %new_size)
  %cmp34 = icmp ugt i64 %84, %new_size
  %or.cond652 = select i1 %keep_prealloc, i1 %cmp34, i1 false
  br i1 %or.cond652, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %88 = ptrtoint ptr %attr_b to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %74, ptr %attr_b, align 4
  %89 = ptrtoint ptr %data_size to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %15, ptr %data_size, align 8
  %90 = ptrtoint ptr %mi_b to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mi_b, align 4
  %dirty = getelementptr inbounds %struct.mft_inode, ptr %91, i32 0, i32 5
  %92 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 1, ptr %dirty, align 4
  br label %ok

if.end38:                                         ; preds = %if.end21
  %sub39 = add i32 %conv23, -1
  %93 = ptrtoint ptr %vcn to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %sub39, ptr %vcn, align 4
  %94 = getelementptr inbounds %struct.ATTRIB, ptr %74, i32 0, i32 7
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %94, align 8
  %97 = call i64 @llvm.bswap.i64(i64 %96)
  %conv41 = trunc i64 %97 to i32
  %evcn42 = getelementptr inbounds %struct.ATTRIB, ptr %74, i32 0, i32 7, i32 0, i32 1
  %98 = ptrtoint ptr %evcn42 to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %evcn42, align 8
  %100 = call i64 @llvm.bswap.i64(i64 %99)
  %conv43 = trunc i64 %100 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub39, i32 %conv41)
  %cmp44.not = icmp ult i32 %sub39, %conv41
  call void @__sanitizer_cov_trace_cmp4(i32 %sub39, i32 %conv43)
  %cmp47.not = icmp ugt i32 %sub39, %conv43
  %or.cond653 = select i1 %cmp44.not, i1 true, i1 %cmp47.not
  br i1 %or.cond653, label %if.else, label %if.then49

if.then49:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %101 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %74, ptr %attr, align 4
  %102 = ptrtoint ptr %le_b to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %le_b, align 4
  %104 = ptrtoint ptr %le to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %103, ptr %le, align 4
  %105 = ptrtoint ptr %mi_b to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %mi_b, align 4
  %107 = ptrtoint ptr %mi6 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %106, ptr %mi6, align 4
  br label %if.end62

if.else:                                          ; preds = %if.end38
  %108 = ptrtoint ptr %le_b to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %le_b, align 4
  %tobool50.not = icmp eq ptr %109, null
  br i1 %tobool50.not, label %if.else.cleanup450_crit_edge, label %if.else52

if.else.cleanup450_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup450

if.else52:                                        ; preds = %if.else
  %110 = ptrtoint ptr %le to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %109, ptr %le, align 4
  %call53 = call ptr @ni_find_attr(ptr noundef %ni, ptr noundef %74, ptr noundef nonnull %le, i32 noundef %type, ptr noundef %name, i8 noundef zeroext %name_len, ptr noundef nonnull %vcn, ptr noundef nonnull %mi6) #8
  %111 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %call53, ptr %attr, align 4
  %tobool54.not = icmp eq ptr %call53, null
  br i1 %tobool54.not, label %if.else52.cleanup450_crit_edge, label %if.else52.next_le_1_crit_edge

if.else52.next_le_1_crit_edge:                    ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #10
  br label %next_le_1

if.else52.cleanup450_crit_edge:                   ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup450

next_le_1:                                        ; preds = %if.end379.next_le_1_crit_edge, %if.else52.next_le_1_crit_edge
  %old_size.0 = phi i64 [ %shl278, %if.end379.next_le_1_crit_edge ], [ %84, %if.else52.next_le_1_crit_edge ]
  %112 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %attr, align 4
  %114 = getelementptr inbounds %struct.ATTRIB, ptr %113, i32 0, i32 7
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %114, align 8
  %117 = call i64 @llvm.bswap.i64(i64 %116)
  %conv58 = trunc i64 %117 to i32
  %evcn59 = getelementptr inbounds %struct.ATTRIB, ptr %113, i32 0, i32 7, i32 0, i32 1
  %118 = ptrtoint ptr %evcn59 to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %evcn59, align 8
  %120 = call i64 @llvm.bswap.i64(i64 %119)
  %conv60 = trunc i64 %120 to i32
  br label %if.end62

if.end62:                                         ; preds = %next_le_1, %if.then49
  %old_size.1 = phi i64 [ %84, %if.then49 ], [ %old_size.0, %next_le_1 ]
  %svcn.0 = phi i32 [ %conv41, %if.then49 ], [ %conv58, %next_le_1 ]
  %evcn.0 = phi i32 [ %conv43, %if.then49 ], [ %conv60, %next_le_1 ]
  call void @__sanitizer_cov_trace_cmp8(i64 %and, i64 %87)
  %cmp264.not = icmp eq i64 %and, %87
  %brmerge = or i1 %cmp264.not, %keep_prealloc
  call void @__sanitizer_cov_trace_cmp8(i64 %81, i64 %new_size)
  %cmp319 = icmp ugt i64 %81, %new_size
  %total_size = getelementptr inbounds %struct.ATTRIB, ptr %74, i32 0, i32 7, i32 0, i32 8
  br label %next_le

next_le:                                          ; preds = %if.then356, %if.end62
  %old_size.2 = phi i64 [ %old_size.1, %if.end62 ], [ %shl278, %if.then356 ]
  %svcn.1 = phi i32 [ %svcn.0, %if.end62 ], [ 0, %if.then356 ]
  %evcn.1 = phi i32 [ %evcn.0, %if.end62 ], [ %sub353, %if.then356 ]
  %121 = ptrtoint ptr %mi6 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %mi6, align 4
  %mrec = getelementptr inbounds %struct.mft_inode, ptr %122, i32 0, i32 2
  %123 = ptrtoint ptr %mrec to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %mrec, align 4
  %125 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %attr, align 4
  %127 = getelementptr inbounds %struct.ATTRIB, ptr %126, i32 0, i32 7
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %127, align 8
  %130 = call i64 @llvm.bswap.i64(i64 %129) #8
  %conv.i662 = trunc i64 %130 to i32
  %evcn2.i = getelementptr inbounds %struct.ATTRIB, ptr %126, i32 0, i32 7, i32 0, i32 1
  %131 = ptrtoint ptr %evcn2.i to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %evcn2.i, align 8
  %133 = call i64 @llvm.bswap.i64(i64 %132) #8
  %conv3.i = trunc i64 %133 to i32
  %add.i663 = add i32 %conv3.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i663, i32 %conv.i662)
  %cmp.not.i = icmp ugt i32 %add.i663, %conv.i662
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %next_le.if.end66_crit_edge

next_le.if.end66_crit_edge:                       ; preds = %next_le
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

lor.lhs.false.i:                                  ; preds = %next_le
  %call.i664 = call zeroext i1 @run_is_mapped_full(ptr noundef %run, i32 noundef %conv.i662, i32 noundef %conv3.i) #8
  br i1 %call.i664, label %lor.lhs.false.i.if.end66_crit_edge, label %attr_load_runs.exit

lor.lhs.false.i.if.end66_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

attr_load_runs.exit:                              ; preds = %lor.lhs.false.i
  %size.i666 = getelementptr inbounds %struct.ATTRIB, ptr %126, i32 0, i32 1
  %134 = ptrtoint ptr %size.i666 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %size.i666, align 4
  %136 = call i32 @llvm.bswap.i32(i32 %135) #8
  %run_off13.i = getelementptr inbounds %struct.ATTRIB, ptr %126, i32 0, i32 7, i32 0, i32 2
  %137 = ptrtoint ptr %run_off13.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %run_off13.i, align 8
  %139 = call i16 @llvm.bswap.i16(i16 %138) #8
  %140 = ptrtoint ptr %sbi1 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %sbi1, align 4
  %142 = ptrtoint ptr %rno to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %rno, align 8
  %conv16.i = zext i16 %139 to i32
  %add.ptr.i667 = getelementptr i8, ptr %126, i32 %conv16.i
  %sub.i = sub i32 %136, %conv16.i
  %call18.i = call i32 @run_unpack_ex(ptr noundef %run, ptr noundef %141, i32 noundef %143, i32 noundef %conv.i662, i32 noundef %conv3.i, i32 noundef %conv.i662, ptr noundef %add.ptr.i667, i32 noundef %sub.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call18.i)
  %tobool64.not = icmp sgt i32 %call18.i, -1
  br i1 %tobool64.not, label %attr_load_runs.exit.if.end66_crit_edge, label %attr_load_runs.exit.cleanup450_crit_edge

attr_load_runs.exit.cleanup450_crit_edge:         ; preds = %attr_load_runs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup450

attr_load_runs.exit.if.end66_crit_edge:           ; preds = %attr_load_runs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.end66:                                         ; preds = %attr_load_runs.exit.if.end66_crit_edge, %lor.lhs.false.i.if.end66_crit_edge, %next_le.if.end66_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %old_size.2, i64 %new_size)
  %cmp67 = icmp ult i64 %old_size.2, %new_size
  br i1 %cmp67, label %if.then69, label %if.end260

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_cmp8(i64 %and, i64 %87)
  %cmp70.not = icmp ugt i64 %and, %87
  br i1 %cmp70.not, label %if.end75, label %if.then72

if.then72:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #10
  %144 = ptrtoint ptr %attr_b to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %74, ptr %attr_b, align 4
  %145 = ptrtoint ptr %data_size to i32
  call void @__asan_store8_noabort(i32 %145)
  store i64 %15, ptr %data_size, align 8
  %146 = ptrtoint ptr %mi_b to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %mi_b, align 4
  %dirty74 = getelementptr inbounds %struct.mft_inode, ptr %147, i32 0, i32 5
  %148 = ptrtoint ptr %dirty74 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 1, ptr %dirty74, align 4
  br label %ok

if.end75:                                         ; preds = %if.then69
  %sub76 = sub i32 %conv30, %conv23
  %used136 = getelementptr inbounds %struct.MFT_REC, ptr %124, i32 0, i32 5
  br label %add_alloc_in_same_attr_seg

add_alloc_in_same_attr_seg.loopexit:              ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #10
  %149 = trunc i64 %202 to i32
  br label %add_alloc_in_same_attr_seg

add_alloc_in_same_attr_seg:                       ; preds = %add_alloc_in_same_attr_seg.loopexit, %if.end75
  %old_alen.0 = phi i32 [ %conv23, %if.end75 ], [ %conv161, %add_alloc_in_same_attr_seg.loopexit ]
  %evcn.2 = phi i32 [ %evcn.1, %if.end75 ], [ %149, %add_alloc_in_same_attr_seg.loopexit ]
  %done.2 = phi i32 [ %done.1, %if.end75 ], [ %add146, %add_alloc_in_same_attr_seg.loopexit ]
  %to_allocate.0 = phi i32 [ %sub76, %if.end75 ], [ %191, %add_alloc_in_same_attr_seg.loopexit ]
  %150 = ptrtoint ptr %lcn to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 0, ptr %lcn, align 4
  br i1 %spec.select, label %if.end125, label %if.else79

if.else79:                                        ; preds = %add_alloc_in_same_attr_seg
  br i1 %tobool.i.not, label %if.else82, label %if.then81

if.then81:                                        ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #10
  %151 = ptrtoint ptr %pre_alloc to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 0, ptr %pre_alloc, align 4
  %152 = ptrtoint ptr %vcn to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %old_alen.0, ptr %vcn, align 4
  br label %if.then127

if.else82:                                        ; preds = %if.else79
  %153 = ptrtoint ptr %pre_alloc to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %pre_alloc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %154)
  %cmp83 = icmp eq i32 %154, -1
  br i1 %cmp83, label %if.then85, label %if.else82.cond.false_crit_edge

if.else82.cond.false_crit_edge:                   ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

if.then85:                                        ; preds = %if.else82
  %155 = ptrtoint ptr %pre_alloc to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 0, ptr %pre_alloc, align 4
  br i1 %or.cond654, label %land.lhs.true90, label %if.then85.if.end96_crit_edge

if.then85.if.end96_crit_edge:                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

land.lhs.true90:                                  ; preds = %if.then85
  %156 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %options, align 4
  %prealloc = getelementptr inbounds %struct.ntfs_mount_options, ptr %157, i32 0, i32 6
  %158 = ptrtoint ptr %prealloc to i32
  call void @__asan_load2_noabort(i32 %158)
  %bf.load = load i16, ptr %prealloc, align 4
  %159 = and i16 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %159)
  %tobool91.not = icmp eq i16 %159, 0
  br i1 %tobool91.not, label %land.lhs.true90.if.end96_crit_edge, label %if.then92

land.lhs.true90.if.end96_crit_edge:               ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

if.then92:                                        ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #10
  %160 = ptrtoint ptr %cluster_mask.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %cluster_mask.i, align 4
  %conv.i673 = zext i32 %161 to i64
  %add.i674 = add i64 %shl13.i, %conv.i673
  %162 = ptrtoint ptr %cluster_bits2 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %cluster_bits2, align 8
  %sh_prom.i675 = zext i8 %163 to i64
  %shr.i676 = lshr i64 %add.i674, %sh_prom.i675
  %conv2.i = trunc i64 %shr.i676 to i32
  %sub95 = sub i32 %conv2.i, %conv30
  %164 = ptrtoint ptr %pre_alloc to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %sub95, ptr %pre_alloc, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.then92, %land.lhs.true90.if.end96_crit_edge, %if.then85.if.end96_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %old_alen.0)
  %tobool97.not = icmp eq i32 %old_alen.0, 0
  br i1 %tobool97.not, label %if.end96.if.end101_crit_edge, label %land.lhs.true98

if.end96.if.end101_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

land.lhs.true98:                                  ; preds = %if.end96
  %165 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %vcn, align 4
  %call99 = call zeroext i1 @run_lookup_entry(ptr noundef %run, i32 noundef %166, ptr noundef nonnull %lcn, ptr noundef null, ptr noundef null) #8
  br i1 %call99, label %land.lhs.true98.if.end101_crit_edge, label %land.lhs.true98.if.then104_crit_edge

land.lhs.true98.if.then104_crit_edge:             ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then104

land.lhs.true98.if.end101_crit_edge:              ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

if.end101:                                        ; preds = %land.lhs.true98.if.end101_crit_edge, %if.end96.if.end101_crit_edge
  %167 = ptrtoint ptr %lcn to i32
  call void @__asan_load4_noabort(i32 %167)
  %.pr = load i32, ptr %lcn, align 4
  %168 = zext i32 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %168, ptr @__sancov_gen_cov_switch_values)
  switch i32 %.pr, label %if.then107 [
    i32 -1, label %if.end101.if.then104_crit_edge
    i32 0, label %if.end101.if.end110_crit_edge
  ]

if.end101.if.end110_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

if.end101.if.then104_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then104

if.then104:                                       ; preds = %if.end101.if.then104_crit_edge, %land.lhs.true98.if.then104_crit_edge
  %169 = ptrtoint ptr %lcn to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 0, ptr %lcn, align 4
  br label %if.end110

if.then107:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  %add108 = add nuw i32 %.pr, 1
  %170 = ptrtoint ptr %lcn to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %add108, ptr %lcn, align 4
  br label %if.end110

if.end110:                                        ; preds = %if.then107, %if.then104, %if.end101.if.end110_crit_edge
  %171 = ptrtoint ptr %total_zeroes.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %total_zeroes.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %to_allocate.0, i32 %172)
  %cmp112 = icmp ugt i32 %to_allocate.0, %172
  br i1 %cmp112, label %if.end110.cleanup450_crit_edge, label %if.end115

if.end110.cleanup450_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup450

if.end115:                                        ; preds = %if.end110
  %173 = ptrtoint ptr %pre_alloc to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %pre_alloc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %tobool116.not = icmp ne i32 %174, 0
  %add118 = add i32 %174, %to_allocate.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add118, i32 %172)
  %cmp119 = icmp ugt i32 %add118, %172
  %or.cond655 = select i1 %tobool116.not, i1 %cmp119, i1 false
  br i1 %or.cond655, label %if.then121, label %if.end115.cond.false_crit_edge

if.end115.cond.false_crit_edge:                   ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

if.then121:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  %175 = ptrtoint ptr %pre_alloc to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 0, ptr %pre_alloc, align 4
  br label %cond.false

if.end125:                                        ; preds = %add_alloc_in_same_attr_seg
  %176 = ptrtoint ptr %pre_alloc to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 0, ptr %pre_alloc, align 4
  %177 = ptrtoint ptr %vcn to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %old_alen.0, ptr %vcn, align 4
  br i1 %tobool.i.not, label %if.end125.cond.end_crit_edge, label %if.end125.if.then127_crit_edge

if.end125.if.then127_crit_edge:                   ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then127

if.end125.cond.end_crit_edge:                     ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

if.then127:                                       ; preds = %if.end125.if.then127_crit_edge, %if.then81
  %call128 = call zeroext i1 @run_add_entry(ptr noundef %run, i32 noundef %old_alen.0, i32 noundef -1, i32 noundef %to_allocate.0, i1 noundef zeroext false) #8
  br i1 %call128, label %if.end130, label %if.then127.cleanup450_crit_edge

if.then127.cleanup450_crit_edge:                  ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup450

if.end130:                                        ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #10
  %178 = ptrtoint ptr %alen to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %to_allocate.0, ptr %alen, align 4
  br label %if.end145

cond.false:                                       ; preds = %if.then121, %if.end115.cond.false_crit_edge, %if.else82.cond.false_crit_edge
  %179 = ptrtoint ptr %vcn to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %old_alen.0, ptr %vcn, align 4
  %180 = ptrtoint ptr %record_size to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %record_size, align 8
  %182 = ptrtoint ptr %used136 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %used136, align 8
  %184 = call i32 @llvm.bswap.i32(i32 %183)
  %sub137 = add i32 %181, 8
  %add138 = sub i32 %sub137, %184
  %div = udiv i32 %add138, 3
  %add139 = add nuw nsw i32 %div, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end125.cond.end_crit_edge
  %cond685 = phi i32 [ 0, %cond.false ], [ 1, %if.end125.cond.end_crit_edge ]
  %cond140 = phi i32 [ %add139, %cond.false ], [ 0, %if.end125.cond.end_crit_edge ]
  %185 = ptrtoint ptr %lcn to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %lcn, align 4
  %call141 = call i32 @attr_allocate_clusters(ptr noundef %1, ptr noundef %run, i32 noundef %old_alen.0, i32 noundef %186, i32 noundef %to_allocate.0, ptr noundef nonnull %pre_alloc, i32 noundef %cond685, ptr noundef nonnull %alen, i32 noundef %cond140, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %cond.end.if.end145_crit_edge, label %cond.end.cleanup450_crit_edge

cond.end.cleanup450_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup450

cond.end.if.end145_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end145

if.end145:                                        ; preds = %cond.end.if.end145_crit_edge, %if.end130
  %187 = ptrtoint ptr %alen to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %alen, align 4
  %add146 = add i32 %188, %done.2
  %189 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %vcn, align 4
  %add147 = add i32 %190, %188
  store i32 %add147, ptr %vcn, align 4
  %191 = call i32 @llvm.usub.sat.i32(i32 %to_allocate.0, i32 %188)
  call void @__sanitizer_cov_trace_cmp4(i32 %to_allocate.0, i32 %188)
  %tobool171.not = icmp ule i32 %to_allocate.0, %188
  %conv181 = zext i32 %add146 to i64
  br label %pack_runs

pack_runs:                                        ; preds = %if.end215.pack_runs_crit_edge, %if.end145
  %192 = ptrtoint ptr %mi6 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %mi6, align 4
  %194 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %attr, align 4
  %196 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %vcn, align 4
  %sub154 = sub i32 %197, %svcn.1
  %call155 = call i32 @mi_pack_runs(ptr noundef %193, ptr noundef %195, ptr noundef %run, i32 noundef %sub154) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %if.end158, label %pack_runs.cleanup450_crit_edge

pack_runs.cleanup450_crit_edge:                   ; preds = %pack_runs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup450

if.end158:                                        ; preds = %pack_runs
  %198 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %attr, align 4
  %evcn159 = getelementptr inbounds %struct.ATTRIB, ptr %199, i32 0, i32 7, i32 0, i32 1
  %200 = ptrtoint ptr %evcn159 to i32
  call void @__asan_load8_noabort(i32 %200)
  %201 = load i64, ptr %evcn159, align 8
  %202 = call i64 @llvm.bswap.i64(i64 %201)
  %203 = trunc i64 %202 to i32
  %conv161 = add i32 %203, 1
  %conv162 = zext i32 %conv161 to i64
  %shl165 = shl i64 %conv162, %sh_prom
  %204 = call i64 @llvm.bswap.i64(i64 %shl165)
  %205 = ptrtoint ptr %alloc_size to i32
  call void @__asan_store8_noabort(i32 %205)
  store i64 %204, ptr %alloc_size, align 8
  %206 = ptrtoint ptr %mi_b to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %mi_b, align 4
  %dirty167 = getelementptr inbounds %struct.mft_inode, ptr %207, i32 0, i32 5
  %208 = ptrtoint ptr %dirty167 to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 1, ptr %dirty167, align 4
  %209 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %vcn, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv161, i32 %210)
  %cmp168.not = icmp uge i32 %conv161, %210
  %or.cond656 = select i1 %cmp168.not, i1 %tobool171.not, i1 false
  br i1 %or.cond656, label %if.then172, label %if.end174

if.then172:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #10
  %211 = ptrtoint ptr %attr_b to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr %74, ptr %attr_b, align 4
  %212 = ptrtoint ptr %data_size to i32
  call void @__asan_store8_noabort(i32 %212)
  store i64 %15, ptr %data_size, align 8
  br label %ok

if.end174:                                        ; preds = %if.end158
  call void @__sanitizer_cov_trace_cmp4(i32 %conv161, i32 %210)
  %cmp178 = icmp eq i32 %conv161, %210
  %or.cond704 = select i1 %spec.select, i1 %cmp178, i1 false
  br i1 %or.cond704, label %land.lhs.true180, label %if.end174.if.end193_crit_edge

if.end174.if.end193_crit_edge:                    ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end193

land.lhs.true180:                                 ; preds = %if.end174
  %213 = ptrtoint ptr %cluster_bits2 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %cluster_bits2, align 8
  %sh_prom184 = zext i8 %214 to i64
  %shl185 = shl i64 %conv181, %sh_prom184
  %215 = ptrtoint ptr %record_size to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %record_size, align 8
  %mul = shl i32 %216, 1
  %conv187 = zext i32 %mul to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shl185, i64 %conv187)
  %cmp188.not = icmp ult i64 %shl185, %conv187
  br i1 %cmp188.not, label %land.lhs.true180.if.end193_crit_edge, label %if.then190

land.lhs.true180.if.end193_crit_edge:             ; preds = %land.lhs.true180
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end193

if.then190:                                       ; preds = %land.lhs.true180
  call void @__sanitizer_cov_trace_pc() #10
  %217 = ptrtoint ptr %attr_b to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %74, ptr %attr_b, align 4
  %218 = ptrtoint ptr %alloc_size to i32
  call void @__asan_load8_noabort(i32 %218)
  %219 = load i64, ptr %alloc_size, align 8
  %220 = ptrtoint ptr %data_size to i32
  call void @__asan_store8_noabort(i32 %220)
  store i64 %219, ptr %data_size, align 8
  br label %ok

if.end193:                                        ; preds = %land.lhs.true180.if.end193_crit_edge, %if.end174.if.end193_crit_edge
  %221 = ptrtoint ptr %used136 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %used136, align 8
  %223 = call i32 @llvm.bswap.i32(i32 %222)
  %224 = ptrtoint ptr %record_size to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %record_size, align 8
  %cmp196 = icmp ult i32 %223, %225
  br i1 %cmp196, label %add_alloc_in_same_attr_seg.loopexit, label %if.end200

if.end200:                                        ; preds = %if.end193
  %226 = ptrtoint ptr %alloc_size to i32
  call void @__asan_load8_noabort(i32 %226)
  %227 = load i64, ptr %alloc_size, align 8
  %228 = ptrtoint ptr %data_size to i32
  call void @__asan_store8_noabort(i32 %228)
  store i64 %227, ptr %data_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %shl165, i64 %81)
  %cmp203 = icmp ult i64 %shl165, %81
  br i1 %cmp203, label %if.then205, label %if.end200.if.end208_crit_edge

if.end200.if.end208_crit_edge:                    ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end208

if.then205:                                       ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #10
  %229 = ptrtoint ptr %valid_size to i32
  call void @__asan_store8_noabort(i32 %229)
  store i64 %227, ptr %valid_size, align 8
  br label %if.end208

if.end208:                                        ; preds = %if.then205, %if.end200.if.end208_crit_edge
  br i1 %cmp209, label %if.then211, label %if.end220

if.then211:                                       ; preds = %if.end208
  %call212 = call i32 @ni_expand_list(ptr noundef %ni) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call212)
  %tobool213.not = icmp eq i32 %call212, 0
  br i1 %tobool213.not, label %if.end215, label %if.then211.cleanup450_crit_edge

if.then211.cleanup450_crit_edge:                  ; preds = %if.then211
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup450

if.end215:                                        ; preds = %if.then211
  %230 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %vcn, align 4
  %cmp216 = icmp ult i32 %conv161, %231
  br i1 %cmp216, label %if.end215.pack_runs_crit_edge, label %if.end215.again.loopexit_crit_edge

if.end215.again.loopexit_crit_edge:               ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #10
  br label %again.loopexit

if.end215.pack_runs_crit_edge:                    ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #10
  br label %pack_runs

if.end220:                                        ; preds = %if.end208
  %232 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %233)
  %tobool221.not = icmp eq i32 %233, 0
  br i1 %tobool221.not, label %if.then222, label %if.end220.if.end227_crit_edge

if.end220.if.end227_crit_edge:                    ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end227

if.then222:                                       ; preds = %if.end220
  %call223 = call i32 @ni_create_attr_list(ptr noundef %ni) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call223)
  %tobool224.not = icmp eq i32 %call223, 0
  br i1 %tobool224.not, label %if.then222.if.end227_crit_edge, label %if.then222.cleanup450_crit_edge

if.then222.cleanup450_crit_edge:                  ; preds = %if.then222
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup450

if.then222.if.end227_crit_edge:                   ; preds = %if.then222
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end227

if.end227:                                        ; preds = %if.then222.if.end227_crit_edge, %if.end220.if.end227_crit_edge
  %234 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %vcn, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %235, i32 %conv161)
  %cmp228.not = icmp ugt i32 %235, %conv161
  br i1 %cmp228.not, label %if.end231, label %if.end227.again.loopexit_crit_edge

if.end227.again.loopexit_crit_edge:               ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #10
  br label %again.loopexit

if.end231:                                        ; preds = %if.end227
  %sub232 = sub i32 %235, %conv161
  %flags = getelementptr inbounds %struct.ATTRIB, ptr %74, i32 0, i32 5
  %236 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %flags, align 4
  %call233 = call i32 @ni_insert_nonresident(ptr noundef %ni, i32 noundef %type, ptr noundef %name, i8 noundef zeroext %name_len, ptr noundef %run, i32 noundef %conv161, i32 noundef %sub232, i16 noundef zeroext %237, ptr noundef nonnull %attr, ptr noundef nonnull %mi6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call233)
  %tobool234.not = icmp eq i32 %call233, 0
  br i1 %tobool234.not, label %if.end236, label %if.end231.cleanup450_crit_edge

if.end231.cleanup450_crit_edge:                   ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup450

if.end236:                                        ; preds = %if.end231
  br i1 %spec.select, label %if.end236.if.end240_crit_edge, label %if.then238

if.end236.if.end240_crit_edge:                    ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end240

if.then238:                                       ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #10
  %add239 = add i32 %evcn.2, 1
  call void @run_truncate_head(ptr noundef %run, i32 noundef %add239) #8
  br label %if.end240

if.end240:                                        ; preds = %if.then238, %if.end236.if.end240_crit_edge
  %238 = ptrtoint ptr %le_b to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr null, ptr %le_b, align 4
  %call245 = call ptr @ni_find_attr(ptr noundef %ni, ptr noundef null, ptr noundef nonnull %le_b, i32 noundef %type, ptr noundef %name, i8 noundef zeroext %name_len, ptr noundef null, ptr noundef nonnull %mi_b) #8
  %tobool246.not = icmp eq ptr %call245, null
  br i1 %tobool246.not, label %if.end240.cleanup450_crit_edge, label %cleanup

if.end240.cleanup450_crit_edge:                   ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup450

cleanup:                                          ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #10
  %239 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %vcn, align 4
  %conv249 = zext i32 %240 to i64
  %shl252 = shl i64 %conv249, %sh_prom
  %241 = call i64 @llvm.bswap.i64(i64 %shl252)
  %alloc_size253 = getelementptr inbounds %struct.ATTRIB, ptr %call245, i32 0, i32 7, i32 0, i32 5
  %242 = ptrtoint ptr %alloc_size253 to i32
  call void @__asan_store8_noabort(i32 %242)
  store i64 %241, ptr %alloc_size253, align 8
  %data_size255 = getelementptr inbounds %struct.ATTRIB, ptr %call245, i32 0, i32 7, i32 0, i32 6
  %243 = ptrtoint ptr %data_size255 to i32
  call void @__asan_store8_noabort(i32 %243)
  store i64 %241, ptr %data_size255, align 8
  %valid_size257 = getelementptr inbounds %struct.ATTRIB, ptr %call245, i32 0, i32 7, i32 0, i32 7
  %244 = ptrtoint ptr %valid_size257 to i32
  call void @__asan_store8_noabort(i32 %244)
  store i64 %241, ptr %valid_size257, align 8
  %245 = ptrtoint ptr %mi_b to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %mi_b, align 4
  %dirty258 = getelementptr inbounds %struct.mft_inode, ptr %246, i32 0, i32 5
  %247 = ptrtoint ptr %dirty258 to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 1, ptr %dirty258, align 4
  br label %again_1

if.end260:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_cmp8(i64 %old_size.2, i64 %new_size)
  %cmp261.not = icmp eq i64 %old_size.2, %new_size
  %or.cond661 = select i1 %cmp261.not, i1 %brmerge, i1 false
  br i1 %or.cond661, label %if.end260.ok.loopexit_crit_edge, label %if.then268

if.end260.ok.loopexit_crit_edge:                  ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #10
  br label %ok.loopexit

if.then268:                                       ; preds = %if.end260
  %248 = call i32 @llvm.umax.i32(i32 %svcn.1, i32 %conv30)
  %249 = ptrtoint ptr %vcn to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %248, ptr %vcn, align 4
  %conv275 = zext i32 %248 to i64
  %shl278 = shl i64 %conv275, %sh_prom
  %250 = ptrtoint ptr %alen to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 0, ptr %alen, align 4
  %sub279 = sub i32 1, %248
  %add280 = add i32 %sub279, %evcn.1
  %call281 = call fastcc i32 @run_deallocate_ex(ptr noundef %1, ptr noundef %run, i32 noundef %248, i32 noundef %add280, ptr noundef nonnull %alen, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call281)
  %tobool282.not = icmp eq i32 %call281, 0
  br i1 %tobool282.not, label %if.end284, label %if.then268.cleanup450_crit_edge

if.then268.cleanup450_crit_edge:                  ; preds = %if.then268
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup450

if.end284:                                        ; preds = %if.then268
  %251 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %vcn, align 4
  call void @run_truncate(ptr noundef %run, i32 noundef %252) #8
  %253 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %vcn, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %254, i32 %svcn.1)
  %cmp285 = icmp ugt i32 %254, %svcn.1
  br i1 %cmp285, label %if.then287, label %if.else293

if.then287:                                       ; preds = %if.end284
  %255 = ptrtoint ptr %mi6 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %mi6, align 4
  %257 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %attr, align 4
  %sub288 = sub i32 %254, %svcn.1
  %call289 = call i32 @mi_pack_runs(ptr noundef %256, ptr noundef %258, ptr noundef %run, i32 noundef %sub288) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call289)
  %tobool290.not = icmp eq i32 %call289, 0
  br i1 %tobool290.not, label %if.then287.if.end313_crit_edge, label %if.then287.cleanup450_crit_edge

if.then287.cleanup450_crit_edge:                  ; preds = %if.then287
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup450

if.then287.if.end313_crit_edge:                   ; preds = %if.then287
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end313

if.else293:                                       ; preds = %if.end284
  %259 = ptrtoint ptr %le to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %le, align 4
  %tobool294.not = icmp eq ptr %260, null
  br i1 %tobool294.not, label %if.else293.if.else307_crit_edge, label %land.lhs.true295

if.else293.if.else307_crit_edge:                  ; preds = %if.else293
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else307

land.lhs.true295:                                 ; preds = %if.else293
  %vcn296 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %260, i32 0, i32 4
  %261 = ptrtoint ptr %vcn296 to i32
  call void @__asan_load8_noabort(i32 %261)
  %262 = load i64, ptr %vcn296, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %262)
  %tobool297.not = icmp eq i64 %262, 0
  br i1 %tobool297.not, label %land.lhs.true295.if.else307_crit_edge, label %if.then298

land.lhs.true295.if.else307_crit_edge:            ; preds = %land.lhs.true295
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else307

if.then298:                                       ; preds = %land.lhs.true295
  %size299 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %260, i32 0, i32 1
  %263 = ptrtoint ptr %size299 to i32
  call void @__asan_load2_noabort(i32 %263)
  %264 = load i16, ptr %size299, align 4
  %265 = ptrtoint ptr %mi6 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %mi6, align 4
  %267 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %attr, align 4
  %call300 = call zeroext i1 @mi_remove_attr(ptr noundef null, ptr noundef %266, ptr noundef %268) #8
  %269 = ptrtoint ptr %le to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %le, align 4
  %call301 = call zeroext i1 @al_remove_le(ptr noundef %ni, ptr noundef %270) #8
  br i1 %call301, label %cleanup305.thread, label %if.then298.cleanup450_crit_edge

if.then298.cleanup450_crit_edge:                  ; preds = %if.then298
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup450

cleanup305.thread:                                ; preds = %if.then298
  call void @__sanitizer_cov_trace_pc() #10
  %271 = call i16 @llvm.bswap.i16(i16 %264)
  %272 = ptrtoint ptr %le to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %le, align 4
  %conv304 = zext i16 %271 to i32
  %idx.neg = sub nsw i32 0, %conv304
  %add.ptr = getelementptr i8, ptr %273, i32 %idx.neg
  store ptr %add.ptr, ptr %le, align 4
  br label %if.end313

if.else307:                                       ; preds = %land.lhs.true295.if.else307_crit_edge, %if.else293.if.else307_crit_edge
  %conv308 = zext i32 %254 to i64
  %sub309 = add nsw i64 %conv308, -1
  %274 = call i64 @llvm.bswap.i64(i64 %sub309)
  %275 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %attr, align 4
  %evcn310 = getelementptr inbounds %struct.ATTRIB, ptr %276, i32 0, i32 7, i32 0, i32 1
  %277 = ptrtoint ptr %evcn310 to i32
  call void @__asan_store8_noabort(i32 %277)
  store i64 %274, ptr %evcn310, align 8
  %278 = ptrtoint ptr %mi6 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %mi6, align 4
  %dirty311 = getelementptr inbounds %struct.mft_inode, ptr %279, i32 0, i32 5
  %280 = ptrtoint ptr %dirty311 to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 1, ptr %dirty311, align 4
  br label %if.end313

if.end313:                                        ; preds = %if.else307, %cleanup305.thread, %if.then287.if.end313_crit_edge
  %281 = call i64 @llvm.bswap.i64(i64 %shl278)
  %282 = ptrtoint ptr %alloc_size to i32
  call void @__asan_store8_noabort(i32 %282)
  store i64 %281, ptr %alloc_size, align 8
  %283 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %vcn, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %284, i32 %conv30)
  %cmp315 = icmp eq i32 %284, %conv30
  br i1 %cmp315, label %if.then317, label %if.else325

if.then317:                                       ; preds = %if.end313
  %285 = ptrtoint ptr %data_size to i32
  call void @__asan_store8_noabort(i32 %285)
  store i64 %15, ptr %data_size, align 8
  br i1 %cmp319, label %if.then317.if.end340.sink.split_crit_edge, label %if.then317.if.end340_crit_edge

if.then317.if.end340_crit_edge:                   ; preds = %if.then317
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end340

if.then317.if.end340.sink.split_crit_edge:        ; preds = %if.then317
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end340.sink.split

if.else325:                                       ; preds = %if.end313
  %286 = ptrtoint ptr %data_size to i32
  call void @__asan_load8_noabort(i32 %286)
  %287 = load i64, ptr %data_size, align 8
  %288 = call i64 @llvm.bswap.i64(i64 %287)
  call void @__sanitizer_cov_trace_cmp8(i64 %shl278, i64 %288)
  %cmp327.not = icmp ugt i64 %shl278, %288
  br i1 %cmp327.not, label %if.else325.if.end332_crit_edge, label %if.then329

if.else325.if.end332_crit_edge:                   ; preds = %if.else325
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end332

if.then329:                                       ; preds = %if.else325
  call void @__sanitizer_cov_trace_pc() #10
  %289 = ptrtoint ptr %data_size to i32
  call void @__asan_store8_noabort(i32 %289)
  store i64 %281, ptr %data_size, align 8
  br label %if.end332

if.end332:                                        ; preds = %if.then329, %if.else325.if.end332_crit_edge
  %290 = ptrtoint ptr %valid_size to i32
  call void @__asan_load8_noabort(i32 %290)
  %291 = load i64, ptr %valid_size, align 8
  %292 = call i64 @llvm.bswap.i64(i64 %291)
  call void @__sanitizer_cov_trace_cmp8(i64 %shl278, i64 %292)
  %cmp334 = icmp ult i64 %shl278, %292
  br i1 %cmp334, label %if.then336, label %if.end332.if.end340_crit_edge

if.end332.if.end340_crit_edge:                    ; preds = %if.end332
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end340

if.then336:                                       ; preds = %if.end332
  call void @__sanitizer_cov_trace_pc() #10
  %293 = ptrtoint ptr %alloc_size to i32
  call void @__asan_load8_noabort(i32 %293)
  %294 = load i64, ptr %alloc_size, align 8
  br label %if.end340.sink.split

if.end340.sink.split:                             ; preds = %if.then336, %if.then317.if.end340.sink.split_crit_edge
  %.sink = phi i64 [ %294, %if.then336 ], [ %15, %if.then317.if.end340.sink.split_crit_edge ]
  %295 = ptrtoint ptr %valid_size to i32
  call void @__asan_store8_noabort(i32 %295)
  store i64 %.sink, ptr %valid_size, align 8
  br label %if.end340

if.end340:                                        ; preds = %if.end340.sink.split, %if.end332.if.end340_crit_edge, %if.then317.if.end340_crit_edge
  br i1 %tobool.i.not, label %if.end340.if.end347_crit_edge, label %if.then342

if.end340.if.end347_crit_edge:                    ; preds = %if.end340
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end347

if.then342:                                       ; preds = %if.end340
  call void @__sanitizer_cov_trace_pc() #10
  %296 = ptrtoint ptr %alen to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %alen, align 4
  %conv343 = zext i32 %297 to i64
  %shl346 = shl i64 %conv343, %sh_prom
  %298 = ptrtoint ptr %total_size to i32
  call void @__asan_load8_noabort(i32 %298)
  %299 = load i64, ptr %total_size, align 8
  %300 = call i64 @llvm.bswap.i64(i64 %299) #8
  %sub.i677 = sub i64 %300, %shl346
  %301 = call i64 @llvm.bswap.i64(i64 %sub.i677) #8
  %302 = ptrtoint ptr %total_size to i32
  call void @__asan_store8_noabort(i32 %302)
  store i64 %301, ptr %total_size, align 8
  br label %if.end347

if.end347:                                        ; preds = %if.then342, %if.end340.if.end347_crit_edge
  %303 = ptrtoint ptr %mi_b to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %mi_b, align 4
  %dirty348 = getelementptr inbounds %struct.mft_inode, ptr %304, i32 0, i32 5
  %305 = ptrtoint ptr %dirty348 to i32
  call void @__asan_store1_noabort(i32 %305)
  store i8 1, ptr %dirty348, align 4
  call void @__sanitizer_cov_trace_cmp8(i64 %shl278, i64 %and)
  %cmp349.not = icmp ugt i64 %shl278, %and
  br i1 %cmp349.not, label %if.end352, label %if.end347.ok.loopexit_crit_edge

if.end347.ok.loopexit_crit_edge:                  ; preds = %if.end347
  call void @__sanitizer_cov_trace_pc() #10
  br label %ok.loopexit

if.end352:                                        ; preds = %if.end347
  %sub353 = add i32 %svcn.1, -1
  %306 = ptrtoint ptr %vcn to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 %sub353, ptr %vcn, align 4
  %307 = ptrtoint ptr %le to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %le, align 4
  %309 = ptrtoint ptr %le_b to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %le_b, align 4
  %cmp354 = icmp eq ptr %308, %310
  br i1 %cmp354, label %if.then356, label %if.end358

if.then356:                                       ; preds = %if.end352
  call void @__sanitizer_cov_trace_pc() #10
  %311 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %311)
  store ptr %74, ptr %attr, align 4
  %312 = ptrtoint ptr %mi6 to i32
  call void @__asan_store4_noabort(i32 %312)
  store ptr %304, ptr %mi6, align 4
  br label %next_le

if.end358:                                        ; preds = %if.end352
  %313 = ptrtoint ptr %308 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %308, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %314, i32 %type)
  %cmp360.not = icmp eq i32 %314, %type
  br i1 %cmp360.not, label %lor.lhs.false362, label %if.end358.cleanup450_crit_edge

if.end358.cleanup450_crit_edge:                   ; preds = %if.end358
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup450

lor.lhs.false362:                                 ; preds = %if.end358
  %name_len363 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %308, i32 0, i32 2
  %315 = ptrtoint ptr %name_len363 to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %name_len363, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %316, i8 %name_len)
  %cmp366.not = icmp eq i8 %316, %name_len
  br i1 %cmp366.not, label %lor.lhs.false368, label %lor.lhs.false362.cleanup450_crit_edge

lor.lhs.false362.cleanup450_crit_edge:            ; preds = %lor.lhs.false362
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup450

lor.lhs.false368:                                 ; preds = %lor.lhs.false362
  %name_off.i = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %308, i32 0, i32 3
  %317 = ptrtoint ptr %name_off.i to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %name_off.i, align 1
  %conv.i678 = zext i8 %318 to i32
  %add.ptr.i679 = getelementptr i8, ptr %308, i32 %conv.i678
  %bcmp = call i32 @bcmp(ptr %add.ptr.i679, ptr %name, i32 %mul371) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool373.not = icmp eq i32 %bcmp, 0
  br i1 %tobool373.not, label %if.end375, label %lor.lhs.false368.cleanup450_crit_edge

lor.lhs.false368.cleanup450_crit_edge:            ; preds = %lor.lhs.false368
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup450

if.end375:                                        ; preds = %lor.lhs.false368
  %call376 = call i32 @ni_load_mi(ptr noundef %ni, ptr noundef %308, ptr noundef nonnull %mi6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call376)
  %tobool377.not = icmp eq i32 %call376, 0
  br i1 %tobool377.not, label %if.end379, label %if.end375.cleanup450_crit_edge

if.end375.cleanup450_crit_edge:                   ; preds = %if.end375
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup450

if.end379:                                        ; preds = %if.end375
  %319 = ptrtoint ptr %mi6 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %mi6, align 4
  %321 = ptrtoint ptr %le to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %le, align 4
  %id = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %322, i32 0, i32 6
  %call381 = call ptr @mi_find_attr(ptr noundef %320, ptr noundef null, i32 noundef %type, ptr noundef %name, i32 noundef %conv365, ptr noundef %id) #8
  %323 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %323)
  store ptr %call381, ptr %attr, align 4
  %tobool382.not = icmp eq ptr %call381, null
  br i1 %tobool382.not, label %if.end379.cleanup450_crit_edge, label %if.end379.next_le_1_crit_edge

if.end379.next_le_1_crit_edge:                    ; preds = %if.end379
  call void @__sanitizer_cov_trace_pc() #10
  br label %next_le_1

if.end379.cleanup450_crit_edge:                   ; preds = %if.end379
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup450

ok.loopexit:                                      ; preds = %if.end347.ok.loopexit_crit_edge, %if.end260.ok.loopexit_crit_edge
  %324 = ptrtoint ptr %attr_b to i32
  call void @__asan_store4_noabort(i32 %324)
  store ptr %74, ptr %attr_b, align 4
  br label %ok

ok:                                               ; preds = %ok.loopexit, %if.then190, %if.then172, %if.then72, %if.then36
  %new_size.addr.3 = phi i64 [ %new_size, %if.then36 ], [ %new_size, %if.then172 ], [ %shl165, %if.then190 ], [ %new_size, %if.then72 ], [ %new_size, %ok.loopexit ]
  %tobool386.not = icmp eq ptr %new_valid, null
  br i1 %tobool386.not, label %ok.land.lhs.true404thread-pre-split_crit_edge, label %if.then387

ok.land.lhs.true404thread-pre-split_crit_edge:    ; preds = %ok
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true404thread-pre-split

if.then387:                                       ; preds = %ok
  %325 = ptrtoint ptr %new_valid to i32
  call void @__asan_load8_noabort(i32 %325)
  %326 = load i64, ptr %new_valid, align 8
  %327 = call i64 @llvm.umin.i64(i64 %326, i64 %new_size.addr.3)
  %328 = call i64 @llvm.bswap.i64(i64 %327)
  %329 = ptrtoint ptr %attr_b to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %attr_b, align 4
  %valid_size395 = getelementptr inbounds %struct.ATTRIB, ptr %330, i32 0, i32 7, i32 0, i32 7
  %331 = ptrtoint ptr %valid_size395 to i32
  call void @__asan_load8_noabort(i32 %331)
  %332 = load i64, ptr %valid_size395, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %332, i64 %328)
  %cmp396.not = icmp eq i64 %332, %328
  br i1 %cmp396.not, label %if.then387.land.lhs.true404_crit_edge, label %if.then398

if.then387.land.lhs.true404_crit_edge:            ; preds = %if.then387
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true404

if.then398:                                       ; preds = %if.then387
  call void @__sanitizer_cov_trace_pc() #10
  %333 = ptrtoint ptr %valid_size395 to i32
  call void @__asan_store8_noabort(i32 %333)
  store i64 %328, ptr %valid_size395, align 8
  %334 = ptrtoint ptr %mi_b to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %mi_b, align 4
  %dirty400 = getelementptr inbounds %struct.mft_inode, ptr %335, i32 0, i32 5
  %336 = ptrtoint ptr %dirty400 to i32
  call void @__asan_store1_noabort(i32 %336)
  store i8 1, ptr %dirty400, align 4
  br label %land.lhs.true404thread-pre-split

land.lhs.true404thread-pre-split:                 ; preds = %if.then398, %ok.land.lhs.true404thread-pre-split_crit_edge
  %337 = ptrtoint ptr %attr_b to i32
  call void @__asan_load4_noabort(i32 %337)
  %.pr703 = load ptr, ptr %attr_b, align 4
  br label %land.lhs.true404

land.lhs.true404:                                 ; preds = %land.lhs.true404thread-pre-split, %if.then387.land.lhs.true404_crit_edge, %lor.lhs.false.land.lhs.true404_crit_edge
  %338 = phi ptr [ %.pr703, %land.lhs.true404thread-pre-split ], [ %330, %if.then387.land.lhs.true404_crit_edge ], [ %67, %lor.lhs.false.land.lhs.true404_crit_edge ]
  %new_size.addr.4 = phi i64 [ %new_size.addr.3, %land.lhs.true404thread-pre-split ], [ %new_size.addr.3, %if.then387.land.lhs.true404_crit_edge ], [ %new_size, %lor.lhs.false.land.lhs.true404_crit_edge ]
  %tobool405.not = icmp eq ptr %338, null
  %tobool407.not = icmp eq ptr %ret, null
  %or.cond657 = or i1 %tobool407.not, %tobool405.not
  br i1 %or.cond657, label %land.lhs.true404.land.lhs.true411_crit_edge, label %if.then408

land.lhs.true404.land.lhs.true411_crit_edge:      ; preds = %land.lhs.true404
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true411

if.then408:                                       ; preds = %land.lhs.true404
  call void @__sanitizer_cov_trace_pc() #10
  %339 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %339)
  store ptr %338, ptr %ret, align 4
  br label %land.lhs.true411

land.lhs.true411:                                 ; preds = %if.then408, %land.lhs.true404.land.lhs.true411_crit_edge
  br i1 %or.cond654, label %land.lhs.true411.if.then422_crit_edge, label %lor.lhs.false416

land.lhs.true411.if.then422_crit_edge:            ; preds = %land.lhs.true411
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then422

lor.lhs.false416:                                 ; preds = %land.lhs.true411
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1610612736, i32 %type)
  %cmp417 = icmp eq i32 %type, -1610612736
  %cmp420 = icmp eq ptr %name, @I30_NAME
  %or.cond660 = and i1 %cmp417, %cmp420
  br i1 %or.cond660, label %lor.lhs.false416.if.then422_crit_edge, label %lor.lhs.false416.cleanup450_crit_edge

lor.lhs.false416.cleanup450_crit_edge:            ; preds = %lor.lhs.false416
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup450

lor.lhs.false416.if.then422_crit_edge:            ; preds = %lor.lhs.false416
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then422

if.then422:                                       ; preds = %lor.lhs.false416.if.then422_crit_edge, %land.lhs.true411.if.then422_crit_edge
  %vfs_inode = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 11
  %i_size = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 11, i32 14
  %340 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %340)
  %341 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %341, i64 %new_size.addr.4)
  %cmp424.not = icmp eq i64 %341, %new_size.addr.4
  br i1 %cmp424.not, label %if.then422.if.end429_crit_edge, label %if.then426

if.then422.if.end429_crit_edge:                   ; preds = %if.then422
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end429

if.then426:                                       ; preds = %if.then422
  call void @__sanitizer_cov_trace_pc() #10
  %342 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %342)
  store i64 %new_size.addr.4, ptr %i_size, align 8
  br label %if.end429

if.end429:                                        ; preds = %if.then426, %if.then422.if.end429_crit_edge
  br i1 %tobool405.not, label %if.end429.if.end444_crit_edge, label %land.lhs.true431

if.end429.if.end444_crit_edge:                    ; preds = %if.end429
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end444

land.lhs.true431:                                 ; preds = %if.end429
  %non_res432 = getelementptr inbounds %struct.ATTRIB, ptr %338, i32 0, i32 2
  %343 = ptrtoint ptr %non_res432 to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %non_res432, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %344)
  %tobool434.not = icmp eq i8 %344, 0
  br i1 %tobool434.not, label %land.lhs.true431.if.end444_crit_edge, label %if.then435

land.lhs.true431.if.end444_crit_edge:             ; preds = %land.lhs.true431
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end444

if.then435:                                       ; preds = %land.lhs.true431
  %alloc_size436 = getelementptr inbounds %struct.ATTRIB, ptr %338, i32 0, i32 7, i32 0, i32 5
  %345 = ptrtoint ptr %alloc_size436 to i32
  call void @__asan_load8_noabort(i32 %345)
  %346 = load i64, ptr %alloc_size436, align 8
  %347 = call i64 @llvm.bswap.i64(i64 %346)
  %call438 = call i64 @inode_get_bytes(ptr noundef %vfs_inode) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call438, i64 %347)
  %cmp439.not = icmp eq i64 %call438, %347
  br i1 %cmp439.not, label %if.then435.if.end444_crit_edge, label %if.then441

if.then435.if.end444_crit_edge:                   ; preds = %if.then435
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end444

if.then441:                                       ; preds = %if.then435
  call void @__sanitizer_cov_trace_pc() #10
  call void @inode_set_bytes(ptr noundef %vfs_inode, i64 noundef %347) #8
  br label %if.then446

if.end444:                                        ; preds = %if.then435.if.end444_crit_edge, %land.lhs.true431.if.end444_crit_edge, %if.end429.if.end444_crit_edge
  br i1 %cmp424.not, label %if.end444.cleanup450_crit_edge, label %if.end444.if.then446_crit_edge

if.end444.if.then446_crit_edge:                   ; preds = %if.end444
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then446

if.end444.cleanup450_crit_edge:                   ; preds = %if.end444
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup450

if.then446:                                       ; preds = %if.end444.if.then446_crit_edge, %if.then441
  %ni_flags = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 10
  %348 = ptrtoint ptr %ni_flags to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %ni_flags, align 4
  %or = or i32 %349, 256
  store i32 %or, ptr %ni_flags, align 4
  call void @__mark_inode_dirty(ptr noundef %vfs_inode, i32 noundef 7) #8
  br label %cleanup450

cleanup450:                                       ; preds = %if.then446, %if.end444.cleanup450_crit_edge, %lor.lhs.false416.cleanup450_crit_edge, %if.end379.cleanup450_crit_edge, %if.end375.cleanup450_crit_edge, %lor.lhs.false368.cleanup450_crit_edge, %lor.lhs.false362.cleanup450_crit_edge, %if.end358.cleanup450_crit_edge, %if.then298.cleanup450_crit_edge, %if.then287.cleanup450_crit_edge, %if.then268.cleanup450_crit_edge, %if.end240.cleanup450_crit_edge, %if.end231.cleanup450_crit_edge, %if.then222.cleanup450_crit_edge, %if.then211.cleanup450_crit_edge, %pack_runs.cleanup450_crit_edge, %cond.end.cleanup450_crit_edge, %if.then127.cleanup450_crit_edge, %if.end110.cleanup450_crit_edge, %attr_load_runs.exit.cleanup450_crit_edge, %if.else52.cleanup450_crit_edge, %if.else.cleanup450_crit_edge, %attr_set_size_res.exit.cleanup450_crit_edge, %again.cleanup450_crit_edge
  %retval.0 = phi i32 [ 0, %if.end444.cleanup450_crit_edge ], [ 0, %if.then446 ], [ 0, %lor.lhs.false416.cleanup450_crit_edge ], [ %call155, %pack_runs.cleanup450_crit_edge ], [ %call212, %if.then211.cleanup450_crit_edge ], [ -28, %if.end110.cleanup450_crit_edge ], [ -12, %if.then127.cleanup450_crit_edge ], [ %call141, %cond.end.cleanup450_crit_edge ], [ %call18.i, %attr_load_runs.exit.cleanup450_crit_edge ], [ %call281, %if.then268.cleanup450_crit_edge ], [ %call289, %if.then287.cleanup450_crit_edge ], [ -22, %if.then298.cleanup450_crit_edge ], [ %call223, %if.then222.cleanup450_crit_edge ], [ %call233, %if.end231.cleanup450_crit_edge ], [ -2, %if.end240.cleanup450_crit_edge ], [ %call376, %if.end375.cleanup450_crit_edge ], [ -22, %if.else.cleanup450_crit_edge ], [ -22, %if.else52.cleanup450_crit_edge ], [ -22, %lor.lhs.false368.cleanup450_crit_edge ], [ -22, %lor.lhs.false362.cleanup450_crit_edge ], [ -22, %if.end358.cleanup450_crit_edge ], [ -22, %if.end379.cleanup450_crit_edge ], [ %call.i, %attr_set_size_res.exit.cleanup450_crit_edge ], [ -2, %again.cleanup450_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pre_alloc) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lcn) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vcn) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alen) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mi_b) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mi6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le_b) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %attr_b) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %attr) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ni_find_attr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @run_lookup_entry(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mi_pack_runs(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_expand_list(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_create_attr_list(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @run_truncate_head(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mi_remove_attr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_load_mi(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mi_find_attr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @inode_get_bytes(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_set_bytes(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @attr_data_get_block(ptr noundef %ni, i32 noundef %vcn, i32 noundef %clen, ptr noundef %lcn, ptr noundef %len, ptr noundef writeonly %new) local_unnamed_addr #0 align 64 {
entry:
  %vcn.addr = alloca i32, align 4
  %attr = alloca ptr, align 4
  %le = alloca ptr, align 4
  %le_b = alloca ptr, align 4
  %mi = alloca ptr, align 4
  %mi_b = alloca ptr, align 4
  %hint = alloca i32, align 4
  %svcn = alloca i32, align 4
  %end = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vcn.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %vcn, ptr %vcn.addr, align 4
  %1 = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 8
  %run1 = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 8, i32 0, i32 2, i32 6, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %attr) #8
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %attr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le) #8
  %3 = ptrtoint ptr %le to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %le, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le_b) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mi) #8
  %4 = ptrtoint ptr %mi to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %mi, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mi_b) #8
  %5 = ptrtoint ptr %mi_b to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %mi_b, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hint) #8
  %6 = ptrtoint ptr %hint to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %hint, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %svcn) #8
  %7 = ptrtoint ptr %svcn to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %svcn, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end) #8
  %8 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %end, align 4, !annotation !22
  %tobool.not = icmp eq ptr %new, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %new to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %new, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @down_read(ptr noundef %1) #8
  %10 = ptrtoint ptr %vcn.addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vcn.addr, align 4
  %call = tail call zeroext i1 @run_lookup_entry(ptr noundef %run1, i32 noundef %11, ptr noundef %lcn, ptr noundef %len, ptr noundef null) #8
  tail call void @up_read(ptr noundef %1) #8
  br i1 %call, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %12 = ptrtoint ptr %lcn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lcn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp.not = icmp ne i32 %13, -1
  %brmerge = or i1 %tobool.not, %cmp.not
  br i1 %brmerge, label %land.lhs.true.cleanup233_crit_edge, label %land.lhs.true11

land.lhs.true.cleanup233_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup233

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clen)
  %tobool7.not = icmp eq i32 %clen, 0
  %spec.store.select = select i1 %tobool7.not, i32 1, i32 %clen
  br label %if.end14

land.lhs.true11:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clen)
  %tobool7.not381 = icmp eq i32 %clen, 0
  %spec.store.select382 = select i1 %tobool7.not381, i32 1, i32 %clen
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  %16 = tail call i32 @llvm.umin.i32(i32 %spec.store.select382, i32 %15)
  br label %if.end14

if.end14:                                         ; preds = %land.lhs.true11, %if.end6
  %clen.addr.0 = phi i32 [ %spec.store.select, %if.end6 ], [ %16, %land.lhs.true11 ]
  %sbi16 = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %17 = ptrtoint ptr %sbi16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sbi16, align 4
  %cluster_bits17 = getelementptr inbounds %struct.ntfs_sb_info, ptr %18, i32 0, i32 10
  %19 = ptrtoint ptr %cluster_bits17 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %cluster_bits17, align 8
  %ni_lock.i = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %ni_lock.i, i32 noundef 4) #8
  tail call void @down_write(ptr noundef %1) #8
  %21 = ptrtoint ptr %le_b to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %le_b, align 4
  %call19 = call ptr @ni_find_attr(ptr noundef %ni, ptr noundef null, ptr noundef nonnull %le_b, i32 noundef -2147483648, ptr noundef null, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull %mi_b) #8
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.end14.out_crit_edge, label %if.end22

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end22:                                         ; preds = %if.end14
  %non_res = getelementptr inbounds %struct.ATTRIB, ptr %call19, i32 0, i32 2
  %22 = ptrtoint ptr %non_res to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %non_res, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool23.not = icmp eq i8 %23, 0
  br i1 %tobool23.not, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %lcn to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -2, ptr %lcn, align 4
  %25 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %len, align 4
  br label %out

if.end25:                                         ; preds = %if.end22
  %alloc_size = getelementptr inbounds %struct.ATTRIB, ptr %call19, i32 0, i32 7, i32 0, i32 5
  %26 = ptrtoint ptr %alloc_size to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %alloc_size, align 8
  %28 = call i64 @llvm.bswap.i64(i64 %27)
  %29 = ptrtoint ptr %cluster_bits17 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %cluster_bits17, align 8
  %sh_prom = zext i8 %30 to i64
  %shr = lshr i64 %28, %sh_prom
  %conv27 = trunc i64 %shr to i32
  %31 = ptrtoint ptr %vcn.addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vcn.addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %conv27)
  %cmp28.not = icmp ult i32 %32, %conv27
  br i1 %cmp28.not, label %if.end31, label %if.end25.out_crit_edge

if.end25.out_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end31:                                         ; preds = %if.end25
  %33 = getelementptr inbounds %struct.ATTRIB, ptr %call19, i32 0, i32 7
  %c_unit = getelementptr inbounds %struct.ATTRIB, ptr %call19, i32 0, i32 7, i32 0, i32 3
  %34 = ptrtoint ptr %c_unit to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %c_unit, align 2
  %conv32 = zext i8 %35 to i32
  %shl = shl nuw i32 1, %conv32
  %add = add i32 %shl, -1
  %sub = add i32 %add, %clen.addr.0
  %neg = sub i32 0, %shl
  %and = and i32 %sub, %neg
  %add34 = add i32 %and, %32
  call void @__sanitizer_cov_trace_cmp4(i32 %add34, i32 %conv27)
  %cmp35 = icmp ugt i32 %add34, %conv27
  %sub38 = sub i32 %conv27, %32
  %spec.select376 = select i1 %cmp35, i32 %sub38, i32 %and
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %33, align 8
  %38 = call i64 @llvm.bswap.i64(i64 %37)
  %conv41 = trunc i64 %38 to i32
  %39 = ptrtoint ptr %svcn to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv41, ptr %svcn, align 4
  %evcn = getelementptr inbounds %struct.ATTRIB, ptr %call19, i32 0, i32 7, i32 0, i32 1
  %40 = ptrtoint ptr %evcn to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %evcn, align 8
  %42 = call i64 @llvm.bswap.i64(i64 %41)
  %43 = trunc i64 %42 to i32
  %conv43 = add i32 %43, 1
  %44 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call19, ptr %attr, align 4
  %45 = ptrtoint ptr %le_b to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %le_b, align 4
  %47 = ptrtoint ptr %le to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %le, align 4
  %48 = ptrtoint ptr %mi_b to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mi_b, align 4
  %50 = ptrtoint ptr %mi to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %mi, align 4
  %tobool44.not = icmp eq ptr %46, null
  br i1 %tobool44.not, label %if.end31.if.end61_crit_edge, label %land.lhs.true45

if.end31.if.end61_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

land.lhs.true45:                                  ; preds = %if.end31
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %conv41)
  %cmp46 = icmp uge i32 %32, %conv41
  call void @__sanitizer_cov_trace_cmp4(i32 %conv43, i32 %32)
  %cmp49.not = icmp ugt i32 %conv43, %32
  %or.cond = select i1 %cmp46, i1 %cmp49.not, i1 false
  br i1 %or.cond, label %land.lhs.true45.if.end61_crit_edge, label %if.then51

land.lhs.true45.if.end61_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.then51:                                        ; preds = %land.lhs.true45
  %call52 = call ptr @ni_find_attr(ptr noundef %ni, ptr noundef nonnull %call19, ptr noundef nonnull %le, i32 noundef -2147483648, ptr noundef null, i8 noundef zeroext 0, ptr noundef nonnull %vcn.addr, ptr noundef nonnull %mi) #8
  %51 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call52, ptr %attr, align 4
  %tobool53.not = icmp eq ptr %call52, null
  br i1 %tobool53.not, label %if.then51.out_crit_edge, label %if.end55

if.then51.out_crit_edge:                          ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end55:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  %52 = getelementptr inbounds %struct.ATTRIB, ptr %call52, i32 0, i32 7
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %52, align 8
  %55 = call i64 @llvm.bswap.i64(i64 %54)
  %conv57 = trunc i64 %55 to i32
  %56 = ptrtoint ptr %svcn to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %conv57, ptr %svcn, align 4
  %evcn58 = getelementptr inbounds %struct.ATTRIB, ptr %call52, i32 0, i32 7, i32 0, i32 1
  %57 = ptrtoint ptr %evcn58 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %evcn58, align 8
  %59 = call i64 @llvm.bswap.i64(i64 %58)
  %60 = trunc i64 %59 to i32
  %conv60 = add i32 %60, 1
  br label %if.end61

if.end61:                                         ; preds = %if.end55, %land.lhs.true45.if.end61_crit_edge, %if.end31.if.end61_crit_edge
  %evcn1.0 = phi i32 [ %conv60, %if.end55 ], [ %conv43, %if.end31.if.end61_crit_edge ], [ %conv43, %land.lhs.true45.if.end61_crit_edge ]
  %61 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %attr, align 4
  %63 = getelementptr inbounds %struct.ATTRIB, ptr %62, i32 0, i32 7
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %63, align 8
  %66 = call i64 @llvm.bswap.i64(i64 %65) #8
  %conv.i = trunc i64 %66 to i32
  %evcn2.i = getelementptr inbounds %struct.ATTRIB, ptr %62, i32 0, i32 7, i32 0, i32 1
  %67 = ptrtoint ptr %evcn2.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %evcn2.i, align 8
  %69 = call i64 @llvm.bswap.i64(i64 %68) #8
  %conv3.i = trunc i64 %69 to i32
  %add.i = add i32 %conv3.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i)
  %cmp.not.i = icmp ugt i32 %add.i, %conv.i
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end61.if.end65_crit_edge

if.end61.if.end65_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

lor.lhs.false.i:                                  ; preds = %if.end61
  %call.i = call zeroext i1 @run_is_mapped_full(ptr noundef %run1, i32 noundef %conv.i, i32 noundef %conv3.i) #8
  br i1 %call.i, label %lor.lhs.false.i.if.end65_crit_edge, label %attr_load_runs.exit

lor.lhs.false.i.if.end65_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

attr_load_runs.exit:                              ; preds = %lor.lhs.false.i
  %size.i = getelementptr inbounds %struct.ATTRIB, ptr %62, i32 0, i32 1
  %70 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %size.i, align 4
  %72 = call i32 @llvm.bswap.i32(i32 %71) #8
  %run_off13.i = getelementptr inbounds %struct.ATTRIB, ptr %62, i32 0, i32 7, i32 0, i32 2
  %73 = ptrtoint ptr %run_off13.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %run_off13.i, align 8
  %75 = call i16 @llvm.bswap.i16(i16 %74) #8
  %76 = ptrtoint ptr %sbi16 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %sbi16, align 4
  %rno.i = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 4
  %78 = ptrtoint ptr %rno.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rno.i, align 8
  %conv16.i = zext i16 %75 to i32
  %add.ptr.i = getelementptr i8, ptr %62, i32 %conv16.i
  %sub.i = sub i32 %72, %conv16.i
  %call18.i = call i32 @run_unpack_ex(ptr noundef %run1, ptr noundef %77, i32 noundef %79, i32 noundef %conv.i, i32 noundef %conv3.i, i32 noundef %conv.i, ptr noundef %add.ptr.i, i32 noundef %sub.i) #8
  %80 = call i32 @llvm.smin.i32(i32 %call18.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call18.i)
  %tobool63.not = icmp sgt i32 %call18.i, -1
  br i1 %tobool63.not, label %attr_load_runs.exit.if.end65_crit_edge, label %attr_load_runs.exit.out_crit_edge

attr_load_runs.exit.out_crit_edge:                ; preds = %attr_load_runs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

attr_load_runs.exit.if.end65_crit_edge:           ; preds = %attr_load_runs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.end65:                                         ; preds = %attr_load_runs.exit.if.end65_crit_edge, %lor.lhs.false.i.if.end65_crit_edge, %if.end61.if.end65_crit_edge
  br i1 %call, label %if.end65.if.end96_crit_edge, label %if.then67

if.end65.if.end96_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

if.then67:                                        ; preds = %if.end65
  %81 = ptrtoint ptr %vcn.addr to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %vcn.addr, align 4
  %call68 = call zeroext i1 @run_lookup_entry(ptr noundef %run1, i32 noundef %82, ptr noundef %lcn, ptr noundef %len, ptr noundef null) #8
  br i1 %call68, label %land.lhs.true72, label %land.lhs.true80.critedge

land.lhs.true72:                                  ; preds = %if.then67
  %83 = ptrtoint ptr %lcn to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %lcn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %84)
  %cmp73.not = icmp ne i32 %84, -1
  %brmerge377 = or i1 %tobool.not, %cmp73.not
  br i1 %brmerge377, label %land.lhs.true72.ok231_crit_edge, label %land.lhs.true86.critedge

land.lhs.true72.ok231_crit_edge:                  ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #10
  br label %ok231

land.lhs.true80.critedge:                         ; preds = %if.then67
  br i1 %tobool.not, label %if.then82, label %land.lhs.true80.critedge.if.end96_crit_edge

land.lhs.true80.critedge.if.end96_crit_edge:      ; preds = %land.lhs.true80.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

if.then82:                                        ; preds = %land.lhs.true80.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %85 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %len, align 4
  br label %ok231

land.lhs.true86.critedge:                         ; preds = %land.lhs.true72
  %86 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %clen.addr.0, i32 %87)
  %cmp87 = icmp ugt i32 %clen.addr.0, %87
  br i1 %cmp87, label %if.then89, label %land.lhs.true86.critedge.if.end96_crit_edge

land.lhs.true86.critedge.if.end96_crit_edge:      ; preds = %land.lhs.true86.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

if.then89:                                        ; preds = %land.lhs.true86.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %sub91 = add i32 %add, %87
  %and94 = and i32 %sub91, %neg
  br label %if.end96

if.end96:                                         ; preds = %if.then89, %land.lhs.true86.critedge.if.end96_crit_edge, %land.lhs.true80.critedge.if.end96_crit_edge, %if.end65.if.end96_crit_edge
  %to_alloc.1 = phi i32 [ %spec.select376, %if.end65.if.end96_crit_edge ], [ %and94, %if.then89 ], [ %spec.select376, %land.lhs.true86.critedge.if.end96_crit_edge ], [ %spec.select376, %land.lhs.true80.critedge.if.end96_crit_edge ]
  %flags.i = getelementptr inbounds %struct.ATTRIB, ptr %call19, i32 0, i32 5
  %88 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %flags.i, align 4
  %90 = and i16 %89, 384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %tobool.i.not = icmp eq i16 %90, 0
  br i1 %tobool.i.not, label %if.end96.out_crit_edge, label %if.end99

if.end96.out_crit_edge:                           ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end99:                                         ; preds = %if.end96
  %91 = ptrtoint ptr %hint to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %hint, align 4
  %92 = ptrtoint ptr %vcn.addr to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %vcn.addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %evcn1.0)
  %cmp100 = icmp ugt i32 %93, %evcn1.0
  br i1 %cmp100, label %if.then102, label %if.else

if.then102:                                       ; preds = %if.end99
  %sub103 = sub i32 %93, %evcn1.0
  %call104 = call zeroext i1 @run_add_entry(ptr noundef %run1, i32 noundef %evcn1.0, i32 noundef -1, i32 noundef %sub103, i1 noundef zeroext false) #8
  br i1 %call104, label %if.then102.if.end113_crit_edge, label %if.then102.out_crit_edge

if.then102.out_crit_edge:                         ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then102.if.end113_crit_edge:                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

if.else:                                          ; preds = %if.end99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool107.not = icmp eq i32 %93, 0
  br i1 %tobool107.not, label %if.else.if.end113_crit_edge, label %land.lhs.true108

if.else.if.end113_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

land.lhs.true108:                                 ; preds = %if.else
  %sub109 = add i32 %93, -1
  %call110 = call zeroext i1 @run_lookup_entry(ptr noundef %run1, i32 noundef %sub109, ptr noundef nonnull %hint, ptr noundef null, ptr noundef null) #8
  br i1 %call110, label %land.lhs.true108.if.end113_crit_edge, label %if.then111

land.lhs.true108.if.end113_crit_edge:             ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

if.then111:                                       ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #10
  %94 = ptrtoint ptr %hint to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 -1, ptr %hint, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.then111, %land.lhs.true108.if.end113_crit_edge, %if.else.if.end113_crit_edge, %if.then102.if.end113_crit_edge
  %95 = ptrtoint ptr %vcn.addr to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %vcn.addr, align 4
  %97 = ptrtoint ptr %hint to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %hint, align 4
  %add114 = add i32 %98, 1
  %record_size = getelementptr inbounds %struct.ntfs_sb_info, ptr %18, i32 0, i32 8
  %99 = ptrtoint ptr %record_size to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %record_size, align 8
  %101 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %mi, align 4
  %mrec = getelementptr inbounds %struct.mft_inode, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %mrec to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %mrec, align 4
  %used = getelementptr inbounds %struct.MFT_REC, ptr %104, i32 0, i32 5
  %105 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %used, align 8
  %107 = call i32 @llvm.bswap.i32(i32 %106)
  %sub115 = add i32 %100, 8
  %add116 = sub i32 %sub115, %107
  %div = udiv i32 %add116, 3
  %add117 = add nuw nsw i32 %div, 1
  %call118 = call i32 @attr_allocate_clusters(ptr noundef %18, ptr noundef %run1, i32 noundef %96, i32 noundef %add114, i32 noundef %to_alloc.1, ptr noundef null, i32 noundef 0, ptr noundef %len, i32 noundef %add117, ptr noundef %lcn)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.end121, label %if.end113.out_crit_edge

if.end113.out_crit_edge:                          ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end121:                                        ; preds = %if.end113
  %108 = ptrtoint ptr %new to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 1, ptr %new, align 1
  %109 = ptrtoint ptr %vcn.addr to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %vcn.addr, align 4
  %111 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %len, align 4
  %add122 = add i32 %112, %110
  %113 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %add122, ptr %end, align 4
  %total_size123 = getelementptr inbounds %struct.ATTRIB, ptr %call19, i32 0, i32 7, i32 0, i32 8
  %114 = ptrtoint ptr %total_size123 to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %total_size123, align 8
  %116 = call i64 @llvm.bswap.i64(i64 %115)
  %conv124 = zext i32 %112 to i64
  %sh_prom126 = zext i8 %20 to i64
  %shl127 = shl i64 %conv124, %sh_prom126
  %add128 = add i64 %116, %shl127
  %117 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %mi, align 4
  %119 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %attr, align 4
  %121 = call i32 @llvm.umax.i32(i32 %add122, i32 %evcn1.0)
  %122 = ptrtoint ptr %svcn to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %svcn, align 4
  %sub131404 = sub i32 %121, %123
  %call132405 = call i32 @mi_pack_runs(ptr noundef %118, ptr noundef %120, ptr noundef %run1, i32 noundef %sub131404) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132405)
  %tobool133.not406 = icmp eq i32 %call132405, 0
  br i1 %tobool133.not406, label %if.end135.lr.ph, label %if.end121.out_crit_edge

if.end121.out_crit_edge:                          ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end135.lr.ph:                                  ; preds = %if.end121
  %124 = call i64 @llvm.bswap.i64(i64 %add128)
  %vfs_inode = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 11
  %ni_flags = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 10
  %size = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9, i32 2
  br label %if.end135

if.end135:                                        ; preds = %if.end157.if.end135_crit_edge, %if.end135.lr.ph
  %attr_b.0407 = phi ptr [ %call19, %if.end135.lr.ph ], [ %call154, %if.end157.if.end135_crit_edge ]
  %total_size136 = getelementptr inbounds %struct.ATTRIB, ptr %attr_b.0407, i32 0, i32 7, i32 0, i32 8
  %125 = ptrtoint ptr %total_size136 to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 %124, ptr %total_size136, align 8
  call void @inode_set_bytes(ptr noundef %vfs_inode, i64 noundef %add128) #8
  %126 = ptrtoint ptr %ni_flags to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %ni_flags, align 4
  %or = or i32 %127, 256
  store i32 %or, ptr %ni_flags, align 4
  %128 = ptrtoint ptr %mi_b to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %mi_b, align 4
  %dirty = getelementptr inbounds %struct.mft_inode, ptr %129, i32 0, i32 5
  %130 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 1, ptr %dirty, align 4
  call void @__mark_inode_dirty(ptr noundef %vfs_inode, i32 noundef 7) #8
  %131 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %attr, align 4
  %evcn138 = getelementptr inbounds %struct.ATTRIB, ptr %132, i32 0, i32 7, i32 0, i32 1
  %133 = ptrtoint ptr %evcn138 to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %evcn138, align 8
  %135 = call i64 @llvm.bswap.i64(i64 %134)
  %136 = trunc i64 %135 to i32
  %conv140 = add i32 %136, 1
  %137 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %138, i32 %evcn1.0)
  %cmp141.not = icmp ugt i32 %138, %evcn1.0
  br i1 %cmp141.not, label %if.end135.if.end159_crit_edge, label %if.then143

if.end135.if.end159_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end159

if.then143:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_cmp4(i32 %conv140, i32 %evcn1.0)
  %cmp144 = icmp eq i32 %conv140, %evcn1.0
  br i1 %cmp144, label %if.then143.ok231_crit_edge, label %if.end147

if.then143.ok231_crit_edge:                       ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #10
  br label %ok231

if.end147:                                        ; preds = %if.then143
  %139 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool148.not = icmp eq i32 %140, 0
  br i1 %tobool148.not, label %if.then149, label %if.end147.if.end159_crit_edge

if.end147.if.end159_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end159

if.then149:                                       ; preds = %if.end147
  %call150 = call i32 @ni_create_attr_list(ptr noundef %ni) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %if.end153, label %if.then149.out_crit_edge

if.then149.out_crit_edge:                         ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end153:                                        ; preds = %if.then149
  %141 = ptrtoint ptr %le_b to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr null, ptr %le_b, align 4
  %call154 = call ptr @ni_find_attr(ptr noundef %ni, ptr noundef null, ptr noundef nonnull %le_b, i32 noundef -2147483648, ptr noundef null, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull %mi_b) #8
  %tobool155.not = icmp eq ptr %call154, null
  br i1 %tobool155.not, label %if.end153.out_crit_edge, label %if.end157

if.end153.out_crit_edge:                          ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end157:                                        ; preds = %if.end153
  %142 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %call154, ptr %attr, align 4
  %143 = ptrtoint ptr %le_b to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %le_b, align 4
  %145 = ptrtoint ptr %le to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %144, ptr %le, align 4
  %146 = ptrtoint ptr %mi_b to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %mi_b, align 4
  %148 = ptrtoint ptr %mi to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %147, ptr %mi, align 4
  %149 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %end, align 4
  %151 = call i32 @llvm.umax.i32(i32 %150, i32 %evcn1.0)
  %152 = ptrtoint ptr %svcn to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %svcn, align 4
  %sub131 = sub i32 %151, %153
  %call132 = call i32 @mi_pack_runs(ptr noundef %147, ptr noundef nonnull %call154, ptr noundef %run1, i32 noundef %sub131) #8
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %if.end157.if.end135_crit_edge, label %if.end157.out_crit_edge

if.end157.out_crit_edge:                          ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end157.if.end135_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end135

if.end159:                                        ; preds = %if.end147.if.end159_crit_edge, %if.end135.if.end159_crit_edge
  %154 = ptrtoint ptr %svcn to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %evcn1.0, ptr %svcn, align 4
  %call160 = call ptr @ni_find_attr(ptr noundef %ni, ptr noundef %132, ptr noundef nonnull %le, i32 noundef -2147483648, ptr noundef null, i8 noundef zeroext 0, ptr noundef nonnull %svcn, ptr noundef nonnull %mi) #8
  %155 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %call160, ptr %attr, align 4
  %tobool161.not = icmp eq ptr %call160, null
  br i1 %tobool161.not, label %if.end159.ins_ext_crit_edge, label %if.then162

if.end159.ins_ext_crit_edge:                      ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #10
  br label %ins_ext

if.then162:                                       ; preds = %if.end159
  %alloc_size163 = getelementptr inbounds %struct.ATTRIB, ptr %attr_b.0407, i32 0, i32 7, i32 0, i32 5
  %156 = ptrtoint ptr %alloc_size163 to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %alloc_size163, align 8
  %158 = call i64 @llvm.bswap.i64(i64 %157)
  %cluster_mask.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %18, i32 0, i32 4
  %159 = ptrtoint ptr %cluster_mask.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %cluster_mask.i, align 4
  %conv.i378 = zext i32 %160 to i64
  %add.i379 = add i64 %158, %conv.i378
  %161 = ptrtoint ptr %cluster_bits17 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %cluster_bits17, align 8
  %sh_prom.i = zext i8 %162 to i64
  %shr.i = lshr i64 %add.i379, %sh_prom.i
  %conv2.i = trunc i64 %shr.i to i32
  %evcn166 = getelementptr inbounds %struct.ATTRIB, ptr %call160, i32 0, i32 7, i32 0, i32 1
  %163 = ptrtoint ptr %evcn166 to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %evcn166, align 8
  %165 = call i64 @llvm.bswap.i64(i64 %164)
  %conv167 = trunc i64 %165 to i32
  %166 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %167, i32 %conv140)
  %cmp168 = icmp ult i32 %167, %conv140
  br i1 %cmp168, label %if.then170, label %if.then162.if.end171_crit_edge

if.then162.if.end171_crit_edge:                   ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end171

if.then170:                                       ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #10
  %168 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %conv140, ptr %end, align 4
  br label %if.end171

if.end171:                                        ; preds = %if.then170, %if.then162.if.end171_crit_edge
  %169 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %170, i32 %conv167)
  %cmp172410 = icmp ugt i32 %170, %conv167
  br i1 %cmp172410, label %if.end171.while.body_crit_edge, label %if.end171.while.end_crit_edge

if.end171.while.end_crit_edge:                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end171.while.body_crit_edge:                   ; preds = %if.end171
  br label %while.body

while.body:                                       ; preds = %if.end191.while.body_crit_edge, %if.end171.while.body_crit_edge
  %evcn165.0411 = phi i32 [ %conv195, %if.end191.while.body_crit_edge ], [ %conv167, %if.end171.while.body_crit_edge ]
  %171 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %mi, align 4
  %173 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %attr, align 4
  %call174 = call zeroext i1 @mi_remove_attr(ptr noundef null, ptr noundef %172, ptr noundef %174) #8
  %175 = ptrtoint ptr %le to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %le, align 4
  %call175 = call zeroext i1 @al_remove_le(ptr noundef %ni, ptr noundef %176) #8
  br i1 %call175, label %if.end177, label %while.body.out_crit_edge

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end177:                                        ; preds = %while.body
  %add178 = add nuw i32 %evcn165.0411, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add178, i32 %conv2.i)
  %cmp179.not = icmp ult i32 %add178, %conv2.i
  br i1 %cmp179.not, label %if.end183, label %if.end177.ins_ext_crit_edge

if.end177.ins_ext_crit_edge:                      ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #10
  br label %ins_ext

if.end183:                                        ; preds = %if.end177
  %177 = ptrtoint ptr %le to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %le, align 4
  %call184 = call i32 @ni_load_mi(ptr noundef %ni, ptr noundef %178, ptr noundef nonnull %mi) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184)
  %tobool185.not = icmp eq i32 %call184, 0
  br i1 %tobool185.not, label %if.end187, label %if.then186

if.then186:                                       ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #10
  %179 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr null, ptr %attr, align 4
  br label %out

if.end187:                                        ; preds = %if.end183
  %180 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %mi, align 4
  %182 = ptrtoint ptr %le to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %le, align 4
  %id = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %183, i32 0, i32 6
  %call188 = call ptr @mi_find_attr(ptr noundef %181, ptr noundef null, i32 noundef -2147483648, ptr noundef null, i32 noundef 0, ptr noundef %id) #8
  %184 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %call188, ptr %attr, align 4
  %tobool189.not = icmp eq ptr %call188, null
  br i1 %tobool189.not, label %if.end187.out_crit_edge, label %if.end191

if.end187.out_crit_edge:                          ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end191:                                        ; preds = %if.end187
  %185 = getelementptr inbounds %struct.ATTRIB, ptr %call188, i32 0, i32 7
  %186 = ptrtoint ptr %185 to i32
  call void @__asan_load8_noabort(i32 %186)
  %187 = load i64, ptr %185, align 8
  %188 = call i64 @llvm.bswap.i64(i64 %187)
  %conv193 = trunc i64 %188 to i32
  %189 = ptrtoint ptr %svcn to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %conv193, ptr %svcn, align 4
  %evcn194 = getelementptr inbounds %struct.ATTRIB, ptr %call188, i32 0, i32 7, i32 0, i32 1
  %190 = ptrtoint ptr %evcn194 to i32
  call void @__asan_load8_noabort(i32 %190)
  %191 = load i64, ptr %evcn194, align 8
  %192 = call i64 @llvm.bswap.i64(i64 %191)
  %conv195 = trunc i64 %192 to i32
  %193 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %end, align 4
  %cmp172 = icmp ugt i32 %194, %conv195
  br i1 %cmp172, label %if.end191.while.body_crit_edge, label %while.end.loopexit

if.end191.while.body_crit_edge:                   ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end.loopexit:                               ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #10
  %conv195.le = trunc i64 %192 to i32
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.end171.while.end_crit_edge
  %evcn165.0.lcssa = phi i32 [ %conv167, %if.end171.while.end_crit_edge ], [ %conv195.le, %while.end.loopexit ]
  %.lcssa = phi i32 [ %170, %if.end171.while.end_crit_edge ], [ %194, %while.end.loopexit ]
  %195 = ptrtoint ptr %svcn to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %svcn, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.lcssa, i32 %196)
  %cmp196 = icmp ult i32 %.lcssa, %196
  br i1 %cmp196, label %if.then198, label %while.end.if.end199_crit_edge

while.end.if.end199_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end199

if.then198:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %197 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %196, ptr %end, align 4
  br label %if.end199

if.end199:                                        ; preds = %if.then198, %while.end.if.end199_crit_edge
  %198 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %attr, align 4
  %call200 = call i32 @attr_load_runs(ptr noundef %199, ptr noundef %ni, ptr noundef %run1, ptr noundef nonnull %end)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call200)
  %tobool201.not = icmp eq i32 %call200, 0
  br i1 %tobool201.not, label %if.end203, label %if.end199.out_crit_edge

if.end199.out_crit_edge:                          ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end203:                                        ; preds = %if.end199
  %add204 = add i32 %evcn165.0.lcssa, 1
  %conv205 = zext i32 %conv140 to i64
  %200 = call i64 @llvm.bswap.i64(i64 %conv205)
  %201 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %attr, align 4
  %203 = getelementptr inbounds %struct.ATTRIB, ptr %202, i32 0, i32 7
  %204 = ptrtoint ptr %203 to i32
  call void @__asan_store8_noabort(i32 %204)
  store i64 %200, ptr %203, align 8
  %205 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %mi, align 4
  %sub207 = sub i32 %add204, %conv140
  %call208 = call i32 @mi_pack_runs(ptr noundef %206, ptr noundef %202, ptr noundef %run1, i32 noundef %sub207) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call208)
  %tobool209.not = icmp eq i32 %call208, 0
  br i1 %tobool209.not, label %if.end211, label %if.end203.out_crit_edge

if.end203.out_crit_edge:                          ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end211:                                        ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #10
  %207 = ptrtoint ptr %le to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %le, align 4
  %vcn213 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %208, i32 0, i32 4
  %209 = ptrtoint ptr %vcn213 to i32
  call void @__asan_store8_noabort(i32 %209)
  store i64 %200, ptr %vcn213, align 8
  %dirty215 = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9, i32 3
  %210 = ptrtoint ptr %dirty215 to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 1, ptr %dirty215, align 4
  %211 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %mi, align 4
  %dirty216 = getelementptr inbounds %struct.mft_inode, ptr %212, i32 0, i32 5
  %213 = ptrtoint ptr %dirty216 to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 1, ptr %dirty216, align 4
  %214 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %attr, align 4
  %evcn217 = getelementptr inbounds %struct.ATTRIB, ptr %215, i32 0, i32 7, i32 0, i32 1
  %216 = ptrtoint ptr %evcn217 to i32
  call void @__asan_load8_noabort(i32 %216)
  %217 = load i64, ptr %evcn217, align 8
  %218 = call i64 @llvm.bswap.i64(i64 %217)
  %219 = trunc i64 %218 to i32
  %conv219 = add i32 %219, 1
  br label %ins_ext

ins_ext:                                          ; preds = %if.end211, %if.end177.ins_ext_crit_edge, %if.end159.ins_ext_crit_edge
  %evcn1.2 = phi i32 [ %evcn1.0, %if.end159.ins_ext_crit_edge ], [ %add204, %if.end211 ], [ %add178, %if.end177.ins_ext_crit_edge ]
  %next_svcn.1 = phi i32 [ %conv140, %if.end159.ins_ext_crit_edge ], [ %conv219, %if.end211 ], [ %conv140, %if.end177.ins_ext_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %evcn1.2, i32 %next_svcn.1)
  %cmp222 = icmp ugt i32 %evcn1.2, %next_svcn.1
  br i1 %cmp222, label %if.then224, label %ins_ext.ok231_crit_edge

ins_ext.ok231_crit_edge:                          ; preds = %ins_ext
  call void @__sanitizer_cov_trace_pc() #10
  br label %ok231

if.then224:                                       ; preds = %ins_ext
  %sub225 = sub i32 %evcn1.2, %next_svcn.1
  %flags = getelementptr inbounds %struct.ATTRIB, ptr %attr_b.0407, i32 0, i32 5
  %220 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %flags, align 4
  %call226 = call i32 @ni_insert_nonresident(ptr noundef %ni, i32 noundef -2147483648, ptr noundef null, i8 noundef zeroext 0, ptr noundef %run1, i32 noundef %next_svcn.1, i32 noundef %sub225, i16 noundef zeroext %221, ptr noundef nonnull %attr, ptr noundef nonnull %mi) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call226)
  %tobool227.not = icmp eq i32 %call226, 0
  br i1 %tobool227.not, label %if.then224.ok231_crit_edge, label %if.then224.out_crit_edge

if.then224.out_crit_edge:                         ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then224.ok231_crit_edge:                       ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #10
  br label %ok231

ok231:                                            ; preds = %if.then224.ok231_crit_edge, %ins_ext.ok231_crit_edge, %if.then143.ok231_crit_edge, %if.then82, %land.lhs.true72.ok231_crit_edge
  %222 = ptrtoint ptr %vcn.addr to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %vcn.addr, align 4
  call void @run_truncate_around(ptr noundef %run1, i32 noundef %223) #8
  br label %out

out:                                              ; preds = %ok231, %if.then224.out_crit_edge, %if.end203.out_crit_edge, %if.end199.out_crit_edge, %if.end187.out_crit_edge, %if.then186, %while.body.out_crit_edge, %if.end157.out_crit_edge, %if.end153.out_crit_edge, %if.then149.out_crit_edge, %if.end121.out_crit_edge, %if.end113.out_crit_edge, %if.then102.out_crit_edge, %if.end96.out_crit_edge, %attr_load_runs.exit.out_crit_edge, %if.then51.out_crit_edge, %if.end25.out_crit_edge, %if.then24, %if.end14.out_crit_edge
  %err.3 = phi i32 [ %80, %attr_load_runs.exit.out_crit_edge ], [ %call118, %if.end113.out_crit_edge ], [ 0, %ok231 ], [ %call226, %if.then224.out_crit_edge ], [ 0, %if.then24 ], [ -2, %if.end14.out_crit_edge ], [ -22, %if.end25.out_crit_edge ], [ -22, %if.then51.out_crit_edge ], [ -22, %if.end96.out_crit_edge ], [ -12, %if.then102.out_crit_edge ], [ %call208, %if.end203.out_crit_edge ], [ %call200, %if.end199.out_crit_edge ], [ 0, %if.then186 ], [ %call132405, %if.end121.out_crit_edge ], [ -22, %while.body.out_crit_edge ], [ -22, %if.end187.out_crit_edge ], [ %call132, %if.end157.out_crit_edge ], [ %call150, %if.then149.out_crit_edge ], [ -2, %if.end153.out_crit_edge ]
  call void @up_write(ptr noundef %1) #8
  call void @mutex_unlock(ptr noundef %ni_lock.i) #8
  br label %cleanup233

cleanup233:                                       ; preds = %out, %land.lhs.true.cleanup233_crit_edge
  %retval.0 = phi i32 [ %err.3, %out ], [ 0, %land.lhs.true.cleanup233_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %svcn) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hint) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mi_b) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mi) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le_b) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %attr) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @run_truncate_around(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @attr_data_read_resident(ptr noundef %ni, ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ni_find_attr(ptr noundef %ni, ptr noundef null, ptr noundef null, i32 noundef -2147483648, ptr noundef null, i8 noundef zeroext 0, ptr noundef null, ptr noundef null) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %non_res = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %non_res to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %non_res, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %shl = shl i32 %3, 12
  %4 = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 7
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %shl)
  %cmp = icmp ugt i32 %7, %shl
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end3
  %data_off.i = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %4, i32 0, i32 1
  %8 = ptrtoint ptr %data_off.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %data_off.i, align 4
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #8
  %conv.i = zext i16 %10 to i32
  %add.ptr.i = getelementptr i8, ptr %call, i32 %conv.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %11 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %11, 512
  %12 = tail call i32 @llvm.read_register.i32(metadata !12) #8
  %and.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %15, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !26
  %16 = tail call i32 @llvm.read_register.i32(metadata !12) #8
  %and.i.i.i1.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 213
  %20 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %21, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !27
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %page, i32 noundef %or.i) #8
  %sub = sub i32 %7, %shl
  %22 = tail call i32 @llvm.umin.i32(i32 %sub, i32 4096)
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %shl
  %23 = call ptr @memcpy(ptr %call.i.i, ptr %add.ptr, i32 %22)
  %add.ptr16 = getelementptr i8, ptr %call.i.i, i32 %22
  %sub17 = sub nuw nsw i32 4096, %22
  %24 = call ptr @memset(ptr %add.ptr16, i32 0, i32 %sub17)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !28
  %25 = tail call i32 @llvm.read_register.i32(metadata !12) #8
  %and.i.i.i1.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 213
  %29 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %30, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !29
  %31 = tail call i32 @llvm.read_register.i32(metadata !12) #8
  %and.i.i.i.i49 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i49 to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @flush_dcache_page(ptr noundef %page) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !23
  %35 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %35, align 4
  %and.i.i.i.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !24

if.then.i.i.i:                                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.1) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !25
  unreachable

SetPageUptodate.exit:                             ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %page) #8
  br label %cleanup

if.else:                                          ; preds = %if.end3
  %38 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %38, align 4
  %and.i.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !24

if.then.i.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i50 = add i32 %40, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i50, %if.then.i.i ], [ %41, %if.end.i.i ]
  %42 = inttoptr i32 %retval.0.i.i to ptr
  %43 = getelementptr inbounds %struct.page, ptr %42, i32 0, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %43, align 4
  %and.i.i.i.i51 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i51)
  %tobool.not.i.i.i52 = icmp eq i32 %and.i.i.i.i51, 0
  br i1 %tobool.not.i.i.i52, label %folio_flags.exit.i.i, label %if.then.i.i.i53, !prof !24

if.then.i.i.i53:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %42, ptr noundef nonnull @.str.1) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !25
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %42, align 4
  %48 = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.i.not.i = icmp eq i32 %48, 0
  br i1 %tobool.i.not.i, label %if.then23, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !37
  br label %cleanup

if.then23:                                        ; preds = %folio_flags.exit.i.i
  tail call void @zero_user_segments(ptr noundef %page, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !23
  %49 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %38, align 4
  %and.i.i.i.i45 = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i45)
  %tobool.not.i.i.i46 = icmp eq i32 %and.i.i.i.i45, 0
  br i1 %tobool.not.i.i.i46, label %SetPageUptodate.exit48, label %if.then.i.i.i47, !prof !24

if.then.i.i.i47:                                  ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.1) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !25
  unreachable

SetPageUptodate.exit48:                           ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %page) #8
  br label %cleanup

cleanup:                                          ; preds = %SetPageUptodate.exit48, %PageUptodate.exit, %SetPageUptodate.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 556, %if.end.cleanup_crit_edge ], [ 0, %PageUptodate.exit ], [ 0, %SetPageUptodate.exit48 ], [ 0, %SetPageUptodate.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @attr_data_write_resident(ptr noundef %ni, ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  %mi = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mi) #8
  %0 = ptrtoint ptr %mi to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %mi, align 4, !annotation !22
  %call = call ptr @ni_find_attr(ptr noundef %ni, ptr noundef null, ptr noundef null, i32 noundef -2147483648, ptr noundef null, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull %mi) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %non_res = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 2
  %1 = ptrtoint ptr %non_res to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %non_res, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index, align 4
  %shl = shl i32 %4, 12
  %5 = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 7
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %8 = call i32 @llvm.bswap.i32(i32 %7)
  %conv5 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %shl)
  %cmp = icmp ugt i32 %8, %shl
  br i1 %cmp, label %if.then7, label %if.end3.if.end19_crit_edge

if.end3.if.end19_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %data_off.i = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %data_off.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %data_off.i, align 4
  %11 = call i16 @llvm.bswap.i16(i16 %10) #8
  %conv.i = zext i16 %11 to i32
  %add.ptr.i = getelementptr i8, ptr %call, i32 %conv.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %12 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %12, 512
  %13 = call i32 @llvm.read_register.i32(metadata !12) #8
  %and.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %16, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !26
  %17 = call i32 @llvm.read_register.i32(metadata !12) #8
  %and.i.i.i1.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 213
  %21 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %22, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !27
  %call.i.i = call ptr @__kmap_local_page_prot(ptr noundef %page, i32 noundef %or.i) #8
  %sub = sub i32 %8, %shl
  %23 = call i32 @llvm.umin.i32(i32 %sub, i32 4096)
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %shl
  %24 = call ptr @memcpy(ptr %add.ptr, ptr %call.i.i, i32 %23)
  call void @kunmap_local_indexed(ptr noundef %call.i.i) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !28
  %25 = call i32 @llvm.read_register.i32(metadata !12) #8
  %and.i.i.i1.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 213
  %29 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %30, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !29
  %31 = call i32 @llvm.read_register.i32(metadata !12) #8
  %and.i.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %35 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mi, align 4
  %dirty = getelementptr inbounds %struct.mft_inode, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %dirty, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then7, %if.end3.if.end19_crit_edge
  %i_valid = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 1
  %38 = ptrtoint ptr %i_valid to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %conv5, ptr %i_valid, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ -22, %entry.cleanup_crit_edge ], [ 556, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mi) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @attr_load_runs_vcn(ptr noundef %ni, i32 noundef %type, ptr noundef %name, i8 noundef zeroext %name_len, ptr noundef %run, i32 noundef %vcn) local_unnamed_addr #0 align 64 {
entry:
  %vcn.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vcn.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %vcn, ptr %vcn.addr, align 4
  %call = call ptr @ni_find_attr(ptr noundef %ni, ptr noundef null, ptr noundef null, i32 noundef %type, ptr noundef %name, i8 noundef zeroext %name_len, ptr noundef nonnull %vcn.addr, ptr noundef null) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %1, align 8
  %4 = call i64 @llvm.bswap.i64(i64 %3)
  %conv = trunc i64 %4 to i32
  %evcn2 = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 7, i32 0, i32 1
  %5 = ptrtoint ptr %evcn2 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %evcn2, align 8
  %7 = call i64 @llvm.bswap.i64(i64 %6)
  %conv3 = trunc i64 %7 to i32
  %8 = ptrtoint ptr %vcn.addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vcn.addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv3)
  %cmp = icmp ugt i32 %9, %conv3
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv)
  %cmp5 = icmp ult i32 %9, %conv
  %or.cond = select i1 %cmp, i1 true, i1 %cmp5
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %run_off = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 7, i32 0, i32 2
  %10 = ptrtoint ptr %run_off to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %run_off, align 8
  %12 = call i16 @llvm.bswap.i16(i16 %11)
  %sbi = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %13 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sbi, align 4
  %rno = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 4
  %15 = ptrtoint ptr %rno to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rno, align 8
  %conv10 = zext i16 %12 to i32
  %add.ptr = getelementptr i8, ptr %call, i32 %conv10
  %size = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 1
  %17 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size, align 4
  %19 = call i32 @llvm.bswap.i32(i32 %18)
  %sub = sub i32 %19, %conv10
  %call12 = call i32 @run_unpack_ex(ptr noundef %run, ptr noundef %14, i32 noundef %16, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv, ptr noundef %add.ptr, i32 noundef %sub) #8
  %20 = call i32 @llvm.smin.i32(i32 %call12, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %20, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @attr_load_runs_range(ptr noundef %ni, i32 noundef %type, ptr noundef %name, i8 noundef zeroext %name_len, ptr noundef %run, i64 noundef %from, i64 noundef %to) local_unnamed_addr #0 align 64 {
entry:
  %vcn.addr.i = alloca i32, align 4
  %lcn = alloca i32, align 4
  %clen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sbi1 = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %0 = ptrtoint ptr %sbi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sbi1, align 4
  %cluster_bits2 = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %cluster_bits2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cluster_bits2, align 8
  %sh_prom = zext i8 %3 to i64
  %shr = lshr i64 %from, %sh_prom
  %sub = add i64 %to, -1
  %shr6 = lshr i64 %sub, %sh_prom
  %conv7 = trunc i64 %shr6 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lcn) #8
  %4 = ptrtoint ptr %lcn to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %lcn, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clen) #8
  %5 = ptrtoint ptr %clen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %clen, align 4, !annotation !22
  %conv11 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11, i32 %conv7)
  %cmp.not35 = icmp ugt i32 %conv11, %conv7
  br i1 %cmp.not35, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %rno.i = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %vcn.036 = phi i32 [ %conv11, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %call = call zeroext i1 @run_lookup_entry(ptr noundef %run, i32 noundef %vcn.036, ptr noundef nonnull %lcn, ptr noundef nonnull %clen, ptr noundef null) #8
  br i1 %call, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vcn.addr.i)
  %6 = ptrtoint ptr %vcn.addr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %vcn.036, ptr %vcn.addr.i, align 4
  %call.i = call ptr @ni_find_attr(ptr noundef %ni, ptr noundef null, ptr noundef null, i32 noundef %type, ptr noundef %name, i8 noundef zeroext %name_len, ptr noundef nonnull %vcn.addr.i, ptr noundef null) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.attr_load_runs_vcn.exit.thread_crit_edge, label %if.end.i

if.then.attr_load_runs_vcn.exit.thread_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %attr_load_runs_vcn.exit.thread

if.end.i:                                         ; preds = %if.then
  %7 = getelementptr inbounds %struct.ATTRIB, ptr %call.i, i32 0, i32 7
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %7, align 8
  %10 = call i64 @llvm.bswap.i64(i64 %9) #8
  %conv.i = trunc i64 %10 to i32
  %evcn2.i = getelementptr inbounds %struct.ATTRIB, ptr %call.i, i32 0, i32 7, i32 0, i32 1
  %11 = ptrtoint ptr %evcn2.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %evcn2.i, align 8
  %13 = call i64 @llvm.bswap.i64(i64 %12) #8
  %conv3.i = trunc i64 %13 to i32
  %14 = ptrtoint ptr %vcn.addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vcn.addr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv3.i)
  %cmp.i = icmp ugt i32 %15, %conv3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv.i)
  %cmp5.i = icmp ult i32 %15, %conv.i
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp5.i
  br i1 %or.cond.i, label %if.end.i.attr_load_runs_vcn.exit.thread_crit_edge, label %attr_load_runs_vcn.exit

if.end.i.attr_load_runs_vcn.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %attr_load_runs_vcn.exit.thread

attr_load_runs_vcn.exit.thread:                   ; preds = %if.end.i.attr_load_runs_vcn.exit.thread_crit_edge, %if.then.attr_load_runs_vcn.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end.i.attr_load_runs_vcn.exit.thread_crit_edge ], [ -2, %if.then.attr_load_runs_vcn.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vcn.addr.i)
  br label %cleanup

attr_load_runs_vcn.exit:                          ; preds = %if.end.i
  %run_off.i = getelementptr inbounds %struct.ATTRIB, ptr %call.i, i32 0, i32 7, i32 0, i32 2
  %16 = ptrtoint ptr %run_off.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %run_off.i, align 8
  %18 = call i16 @llvm.bswap.i16(i16 %17) #8
  %19 = ptrtoint ptr %sbi1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sbi1, align 4
  %21 = ptrtoint ptr %rno.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rno.i, align 8
  %conv10.i = zext i16 %18 to i32
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %conv10.i
  %size.i = getelementptr inbounds %struct.ATTRIB, ptr %call.i, i32 0, i32 1
  %23 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size.i, align 4
  %25 = call i32 @llvm.bswap.i32(i32 %24) #8
  %sub.i = sub i32 %25, %conv10.i
  %call12.i = call i32 @run_unpack_ex(ptr noundef %run, ptr noundef %20, i32 noundef %22, i32 noundef %conv.i, i32 noundef %conv3.i, i32 noundef %conv.i, ptr noundef %add.ptr.i, i32 noundef %sub.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vcn.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call12.i)
  %tobool.not = icmp sgt i32 %call12.i, -1
  br i1 %tobool.not, label %if.end, label %attr_load_runs_vcn.exit.cleanup_crit_edge

attr_load_runs_vcn.exit.cleanup_crit_edge:        ; preds = %attr_load_runs_vcn.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %attr_load_runs_vcn.exit
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %clen to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %clen, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %27 = ptrtoint ptr %clen to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %clen, align 4
  %add = add i32 %28, %vcn.036
  %cmp.not = icmp ugt i32 %add, %conv7
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %attr_load_runs_vcn.exit.cleanup_crit_edge, %attr_load_runs_vcn.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %attr_load_runs_vcn.exit.thread ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ %call12.i, %attr_load_runs_vcn.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clen) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lcn) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @attr_wof_frame_info(ptr noundef %ni, ptr nocapture noundef readonly %attr, ptr noundef %run, i64 noundef %frame, i64 noundef %frames, i8 noundef zeroext %frame_bits, ptr nocapture noundef writeonly %ondisk_size, ptr nocapture noundef %vbo_data) local_unnamed_addr #0 align 64 {
entry:
  %vbo = alloca [2 x i64], align 8
  %page = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sbi1 = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %0 = ptrtoint ptr %sbi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sbi1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vbo) #8
  %2 = getelementptr inbounds [2 x i64], ptr %vbo, i32 0, i32 1
  %3 = call ptr @memset(ptr %vbo, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page) #8
  %vfs_inode = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 11
  %i_size = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 11, i32 14
  %4 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %5)
  %cmp = icmp ult i64 %5, 4294967296
  %. = select i1 %cmp, i64 2, i64 3
  %.280 = select i1 %cmp, i8 4, i8 8
  %shl3 = shl i64 %frame, %.
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %shl3, ptr %2, align 8
  %shl5 = shl i64 %frames, %.
  %7 = ptrtoint ptr %vbo_data to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %shl5, ptr %vbo_data, align 8
  %non_res = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 2
  %8 = ptrtoint ptr %non_res to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %non_res, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.then6, label %if.end47

if.then6:                                         ; preds = %entry
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %2, align 8
  %conv = zext i8 %.280 to i64
  %add = add i64 %11, %conv
  %12 = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 7
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %conv8 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv8)
  %cmp9 = icmp ugt i64 %add, %conv8
  br i1 %cmp9, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ntfs_inode_printk(ptr noundef %vfs_inode, ptr noundef nonnull @.str) #8
  br label %cleanup161

if.end13:                                         ; preds = %if.then6
  %data_off.i = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %12, i32 0, i32 1
  %16 = ptrtoint ptr %data_off.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %data_off.i, align 4
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #8
  %conv.i = zext i16 %18 to i32
  %add.ptr.i = getelementptr i8, ptr %attr, i32 %conv.i
  %idx.ext = trunc i64 %11 to i32
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %idx.ext
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool20.not = icmp eq i64 %11, 0
  br i1 %cmp, label %if.then17, label %if.else27

if.then17:                                        ; preds = %if.end13
  br i1 %tobool20.not, label %if.then17.cond.end_crit_edge, label %cond.true

if.then17.cond.end_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx21 = getelementptr i32, ptr %add.ptr, i32 -1
  %19 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx21, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then17.cond.end_crit_edge
  %cond = phi i32 [ %21, %cond.true ], [ 0, %if.then17.cond.end_crit_edge ]
  %conv22 = zext i32 %cond to i64
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %conv25 = zext i32 %24 to i64
  br label %if.end41

if.else27:                                        ; preds = %if.end13
  br i1 %tobool20.not, label %if.else27.cond.end36_crit_edge, label %cond.true33

if.else27.cond.end36_crit_edge:                   ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end36

cond.true33:                                      ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx34 = getelementptr i64, ptr %add.ptr, i32 -1
  %25 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx34, align 8
  %27 = tail call i64 @llvm.bswap.i64(i64 %26)
  br label %cond.end36

cond.end36:                                       ; preds = %cond.true33, %if.else27.cond.end36_crit_edge
  %cond37 = phi i64 [ %27, %cond.true33 ], [ 0, %if.else27.cond.end36_crit_edge ]
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %add.ptr, align 8
  %30 = tail call i64 @llvm.bswap.i64(i64 %29)
  br label %if.end41

if.end41:                                         ; preds = %cond.end36, %cond.end
  %off.sroa.14.0 = phi i64 [ %conv25, %cond.end ], [ %30, %cond.end36 ]
  %off.sroa.0.0 = phi i64 [ %conv22, %cond.end ], [ %cond37, %cond.end36 ]
  %add43 = add i64 %off.sroa.0.0, %shl5
  %31 = ptrtoint ptr %vbo_data to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %add43, ptr %vbo_data, align 8
  %sub = sub i64 %off.sroa.14.0, %off.sroa.0.0
  %conv46 = trunc i64 %sub to i32
  %32 = ptrtoint ptr %ondisk_size to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv46, ptr %ondisk_size, align 4
  br label %cleanup161

if.end47:                                         ; preds = %entry
  %data_size48 = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 7, i32 0, i32 6
  %33 = ptrtoint ptr %data_size48 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %data_size48, align 8
  %35 = tail call i64 @llvm.bswap.i64(i64 %34)
  %36 = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 8
  tail call void @down_write(ptr noundef %36) #8
  %offs_page = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 8, i32 0, i32 2, i32 6, i32 3
  %37 = ptrtoint ptr %offs_page to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %offs_page, align 4
  %39 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %page, align 4
  %tobool49.not = icmp eq ptr %38, null
  br i1 %tobool49.not, label %if.then50, label %if.end47.if.end56_crit_edge

if.end47.if.end56_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then50:                                        ; preds = %if.end47
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #8
  %40 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call38.i.i.i, ptr %page, align 4
  %tobool52.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool52.not, label %if.then50.out_crit_edge, label %if.end54

if.then50.out_crit_edge:                          ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end54:                                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  %index = getelementptr inbounds %struct.page, ptr %call38.i.i.i, i32 0, i32 1, i32 0, i32 2
  %41 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %index, align 4
  %42 = ptrtoint ptr %offs_page to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call38.i.i.i, ptr %offs_page, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.end54, %if.end47.if.end56_crit_edge
  %43 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %page, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 788) #8
  %45 = getelementptr inbounds %struct.page, ptr %44, i32 0, i32 1
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %45, align 4
  %and.i.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !24

if.then.i.i:                                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %47, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %44 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %48, %if.end.i.i ]
  %49 = inttoptr i32 %retval.0.i.i to ptr
  %50 = getelementptr inbounds %struct.page, ptr %49, i32 0, i32 1
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %50, align 4
  %and.i.i.i.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !24

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %49, ptr noundef nonnull @.str.1) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !25
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %49, i32 noundef 4) #8
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %49, align 4
  %and.i.i4.i.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i_crit_edge

folio_flags.exit.i.i.if.then.i_crit_edge:         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %49, i32 1, i32 3, i32 1) #8
  %55 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %49, ptr %49, i32 1, ptr elementtype(i32) %49) #8, !srcloc !38
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %55, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !39
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i_crit_edge

folio_trylock.exit.i.if.then.i_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lock_page.exit

if.then.i:                                        ; preds = %folio_trylock.exit.i.if.then.i_crit_edge, %folio_flags.exit.i.i.if.then.i_crit_edge
  tail call void @__folio_lock(ptr noundef %49) #8
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %56 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %page, align 4
  %call57 = tail call ptr @page_address(ptr noundef %57) #8
  %58 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %59)
  %tobool59.not = icmp eq i64 %59, 0
  br i1 %tobool59.not, label %lock_page.exit.if.end70_crit_edge, label %if.then60

lock_page.exit.if.end70_crit_edge:                ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then60:                                        ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  %60 = trunc i64 %59 to i32
  %conv62 = and i32 %60, 4095
  %conv64 = zext i8 %.280 to i64
  %sub65 = sub i64 %59, %conv64
  br label %if.end70

if.end70:                                         ; preds = %if.then60, %lock_page.exit.if.end70_crit_edge
  %storemerge235 = phi i64 [ %sub65, %if.then60 ], [ 0, %lock_page.exit.if.end70_crit_edge ]
  %off.sroa.0.1 = phi i64 [ -1, %if.then60 ], [ 0, %lock_page.exit.if.end70_crit_edge ]
  %voff.0 = phi i32 [ %conv62, %if.then60 ], [ 0, %lock_page.exit.if.end70_crit_edge ]
  %i.0 = phi i32 [ 0, %if.then60 ], [ 1, %lock_page.exit.if.end70_crit_edge ]
  %61 = ptrtoint ptr %vbo to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %storemerge235, ptr %vbo, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %voff.0)
  %tobool115.not = icmp eq i32 %voff.0, 0
  %add.ptr125 = getelementptr i8, ptr %call57, i32 4088
  %add.ptr121 = getelementptr i8, ptr %call57, i32 4092
  br label %do.body

do.body:                                          ; preds = %do.body.backedge, %if.end70
  %off.sroa.0.2 = phi i64 [ %off.sroa.0.1, %if.end70 ], [ %off.sroa.0.2.be, %do.body.backedge ]
  %i.1 = phi i32 [ %i.0, %if.end70 ], [ 1, %do.body.backedge ]
  %err.0 = phi i32 [ -1, %if.end70 ], [ %err.2, %do.body.backedge ]
  %arrayidx72 = getelementptr [2 x i64], ptr %vbo, i32 0, i32 %i.1
  %62 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %arrayidx72, align 8
  %shr = lshr i64 %63, 12
  %conv73 = trunc i64 %shr to i32
  %64 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %page, align 4
  %index74 = getelementptr inbounds %struct.page, ptr %65, i32 0, i32 1, i32 0, i32 2
  %66 = ptrtoint ptr %index74 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %index74, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %conv73)
  %cmp75.not = icmp eq i32 %67, %conv73
  br i1 %cmp75.not, label %do.body.if.end100_crit_edge, label %if.then77

do.body.if.end100_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

if.then77:                                        ; preds = %do.body
  %and79 = and i64 %63, -4096
  %add80 = add i64 %and79, 4096
  %68 = call i64 @llvm.umin.i64(i64 %add80, i64 %35)
  %call87 = call i32 @attr_load_runs_range(ptr noundef %ni, i32 noundef -2147483648, ptr noundef nonnull @WOF_NAME, i8 noundef zeroext 17, ptr noundef %run, i64 noundef %and79, i64 noundef %68)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end90, label %if.then77.out1_crit_edge

if.then77.out1_crit_edge:                         ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  br label %out1

if.end90:                                         ; preds = %if.then77
  %sub91 = sub i64 %68, %and79
  %conv92 = trunc i64 %sub91 to i32
  %call93 = call i32 @ntfs_bio_pages(ptr noundef %1, ptr noundef %run, ptr noundef nonnull %page, i32 noundef 1, i64 noundef %and79, i32 noundef %conv92, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  %69 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %page, align 4
  %index98 = getelementptr inbounds %struct.page, ptr %70, i32 0, i32 1, i32 0, i32 2
  br i1 %tobool94.not, label %cleanup, label %if.then95

if.then95:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %index98 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -1, ptr %index98, align 4
  br label %out1

cleanup:                                          ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %index98 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %conv73, ptr %index98, align 4
  br label %if.end100

if.end100:                                        ; preds = %cleanup, %do.body.if.end100_crit_edge
  %err.2 = phi i32 [ 0, %cleanup ], [ %err.0, %do.body.if.end100_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1)
  %tobool101.not = icmp eq i32 %i.1, 0
  br i1 %tobool101.not, label %if.else114, label %if.then102

if.then102:                                       ; preds = %if.end100
  %add.ptr107 = getelementptr i8, ptr %call57, i32 %voff.0
  br i1 %cmp, label %if.then106, label %if.else110

if.then106:                                       ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %add.ptr107 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %add.ptr107, align 4
  %75 = call i32 @llvm.bswap.i32(i32 %74)
  %conv108 = zext i32 %75 to i64
  br label %do.end

if.else110:                                       ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %add.ptr107 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %add.ptr107, align 8
  %78 = call i64 @llvm.bswap.i64(i64 %77)
  br label %do.end

if.else114:                                       ; preds = %if.end100
  br i1 %tobool115.not, label %if.then116, label %if.else128

if.then116:                                       ; preds = %if.else114
  br i1 %cmp, label %if.then120, label %if.else124

if.then120:                                       ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #10
  %79 = ptrtoint ptr %add.ptr121 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %add.ptr121, align 4
  %81 = call i32 @llvm.bswap.i32(i32 %80)
  %conv122 = zext i32 %81 to i64
  br label %do.body.backedge

if.else124:                                       ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #10
  %82 = ptrtoint ptr %add.ptr125 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %add.ptr125, align 8
  %84 = call i64 @llvm.bswap.i64(i64 %83)
  br label %do.body.backedge

do.body.backedge:                                 ; preds = %if.else124, %if.then120
  %off.sroa.0.2.be = phi i64 [ %84, %if.else124 ], [ %conv122, %if.then120 ]
  br label %do.body

if.else128:                                       ; preds = %if.else114
  %add.ptr133 = getelementptr i8, ptr %call57, i32 %voff.0
  br i1 %cmp, label %if.then132, label %if.else140

if.then132:                                       ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx134 = getelementptr i32, ptr %add.ptr133, i32 -1
  %85 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx134, align 4
  %87 = call i32 @llvm.bswap.i32(i32 %86)
  %conv135 = zext i32 %87 to i64
  %88 = ptrtoint ptr %add.ptr133 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %add.ptr133, align 4
  %90 = call i32 @llvm.bswap.i32(i32 %89)
  %conv138 = zext i32 %90 to i64
  br label %do.end

if.else140:                                       ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx142 = getelementptr i64, ptr %add.ptr133, i32 -1
  %91 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %arrayidx142, align 8
  %93 = call i64 @llvm.bswap.i64(i64 %92)
  %94 = ptrtoint ptr %add.ptr133 to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %add.ptr133, align 8
  %96 = call i64 @llvm.bswap.i64(i64 %95)
  br label %do.end

do.end:                                           ; preds = %if.else140, %if.then132, %if.else110, %if.then106
  %off.sroa.0.5245 = phi i64 [ %93, %if.else140 ], [ %conv135, %if.then132 ], [ %off.sroa.0.2, %if.then106 ], [ %off.sroa.0.2, %if.else110 ]
  %off.sroa.14.4243 = phi i64 [ %96, %if.else140 ], [ %conv138, %if.then132 ], [ %conv108, %if.then106 ], [ %78, %if.else110 ]
  %97 = ptrtoint ptr %vbo_data to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %vbo_data, align 8
  %add155 = add i64 %98, %off.sroa.0.5245
  store i64 %add155, ptr %vbo_data, align 8
  %sub158 = sub i64 %off.sroa.14.4243, %off.sroa.0.5245
  %conv159 = trunc i64 %sub158 to i32
  %99 = ptrtoint ptr %ondisk_size to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %conv159, ptr %ondisk_size, align 4
  br label %out1

out1:                                             ; preds = %do.end, %if.then95, %if.then77.out1_crit_edge
  %err.3247 = phi i32 [ %err.2, %do.end ], [ %call93, %if.then95 ], [ %call87, %if.then77.out1_crit_edge ]
  %100 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %page, align 4
  call void @unlock_page(ptr noundef %101) #8
  br label %out

out:                                              ; preds = %out1, %if.then50.out_crit_edge
  %err.4 = phi i32 [ %err.3247, %out1 ], [ -12, %if.then50.out_crit_edge ]
  call void @up_write(ptr noundef %36) #8
  br label %cleanup161

cleanup161:                                       ; preds = %out, %if.end41, %if.then11
  %retval.0 = phi i32 [ %err.4, %out ], [ -22, %if.then11 ], [ 0, %if.end41 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vbo) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntfs_inode_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_bio_pages(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @attr_is_frame_compressed(ptr noundef %ni, ptr noundef %attr, i32 noundef %frame, ptr nocapture noundef %clst_data) local_unnamed_addr #0 align 64 {
entry:
  %vcn.addr.i107 = alloca i32, align 4
  %vcn.addr.i = alloca i32, align 4
  %clen = alloca i32, align 4
  %lcn = alloca i32, align 4
  %vcn = alloca i32, align 4
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clen) #8
  %0 = ptrtoint ptr %clen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %clen, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lcn) #8
  %1 = ptrtoint ptr %lcn to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %lcn, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vcn) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #8
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %idx, align 4, !annotation !22
  %3 = ptrtoint ptr %clst_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %clst_data, align 4
  %flags.i = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 5
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags.i, align 4
  %6 = and i16 %5, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.i.not = icmp eq i16 %6, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %non_res = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 2
  %7 = ptrtoint ptr %non_res to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %non_res, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %c_unit = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 7, i32 0, i32 3
  %9 = ptrtoint ptr %c_unit to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %c_unit, align 2
  %conv = zext i8 %10 to i32
  %shl = shl nuw i32 1, %conv
  %mul = shl i32 %frame, %conv
  %11 = ptrtoint ptr %vcn to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mul, ptr %vcn, align 4
  %run3 = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 8, i32 0, i32 2, i32 6, i32 1
  %call4 = call zeroext i1 @run_lookup_entry(ptr noundef %run3, i32 noundef %mul, ptr noundef nonnull %lcn, ptr noundef nonnull %clen, ptr noundef nonnull %idx) #8
  br i1 %call4, label %if.end2.if.end14_crit_edge, label %if.then5

if.end2.if.end14_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then5:                                         ; preds = %if.end2
  %12 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %attr, align 8
  %name_off.i = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 4
  %14 = ptrtoint ptr %name_off.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %name_off.i, align 2
  %16 = call i16 @llvm.bswap.i16(i16 %15) #8
  %conv.i = zext i16 %16 to i32
  %add.ptr.i = getelementptr i8, ptr %attr, i32 %conv.i
  %name_len = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 3
  %17 = ptrtoint ptr %name_len to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %name_len, align 1
  %19 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vcn, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vcn.addr.i)
  %21 = ptrtoint ptr %vcn.addr.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %vcn.addr.i, align 4
  %call.i = call ptr @ni_find_attr(ptr noundef %ni, ptr noundef null, ptr noundef null, i32 noundef %13, ptr noundef %add.ptr.i, i8 noundef zeroext %18, ptr noundef nonnull %vcn.addr.i, ptr noundef null) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then5.attr_load_runs_vcn.exit.thread_crit_edge, label %if.end.i

if.then5.attr_load_runs_vcn.exit.thread_crit_edge: ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %attr_load_runs_vcn.exit.thread

if.end.i:                                         ; preds = %if.then5
  %22 = getelementptr inbounds %struct.ATTRIB, ptr %call.i, i32 0, i32 7
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %22, align 8
  %25 = call i64 @llvm.bswap.i64(i64 %24) #8
  %conv.i101 = trunc i64 %25 to i32
  %evcn2.i = getelementptr inbounds %struct.ATTRIB, ptr %call.i, i32 0, i32 7, i32 0, i32 1
  %26 = ptrtoint ptr %evcn2.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %evcn2.i, align 8
  %28 = call i64 @llvm.bswap.i64(i64 %27) #8
  %conv3.i = trunc i64 %28 to i32
  %29 = ptrtoint ptr %vcn.addr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vcn.addr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %conv3.i)
  %cmp.i = icmp ugt i32 %30, %conv3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %conv.i101)
  %cmp5.i = icmp ult i32 %30, %conv.i101
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp5.i
  br i1 %or.cond.i, label %if.end.i.attr_load_runs_vcn.exit.thread_crit_edge, label %attr_load_runs_vcn.exit

if.end.i.attr_load_runs_vcn.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %attr_load_runs_vcn.exit.thread

attr_load_runs_vcn.exit.thread:                   ; preds = %if.end.i.attr_load_runs_vcn.exit.thread_crit_edge, %if.then5.attr_load_runs_vcn.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end.i.attr_load_runs_vcn.exit.thread_crit_edge ], [ -2, %if.then5.attr_load_runs_vcn.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vcn.addr.i)
  br label %cleanup

attr_load_runs_vcn.exit:                          ; preds = %if.end.i
  %run_off.i = getelementptr inbounds %struct.ATTRIB, ptr %call.i, i32 0, i32 7, i32 0, i32 2
  %31 = ptrtoint ptr %run_off.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %run_off.i, align 8
  %33 = call i16 @llvm.bswap.i16(i16 %32) #8
  %sbi.i = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %34 = ptrtoint ptr %sbi.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sbi.i, align 4
  %rno.i = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 4
  %36 = ptrtoint ptr %rno.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rno.i, align 8
  %conv10.i = zext i16 %33 to i32
  %add.ptr.i102 = getelementptr i8, ptr %call.i, i32 %conv10.i
  %size.i = getelementptr inbounds %struct.ATTRIB, ptr %call.i, i32 0, i32 1
  %38 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %size.i, align 4
  %40 = call i32 @llvm.bswap.i32(i32 %39) #8
  %sub.i = sub i32 %40, %conv10.i
  %call12.i = call i32 @run_unpack_ex(ptr noundef %run3, ptr noundef %35, i32 noundef %37, i32 noundef %conv.i101, i32 noundef %conv3.i, i32 noundef %conv.i101, ptr noundef %add.ptr.i102, i32 noundef %sub.i) #8
  %41 = call i32 @llvm.smin.i32(i32 %call12.i, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vcn.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call12.i)
  %tobool8.not = icmp sgt i32 %call12.i, -1
  br i1 %tobool8.not, label %if.end10, label %attr_load_runs_vcn.exit.cleanup_crit_edge

attr_load_runs_vcn.exit.cleanup_crit_edge:        ; preds = %attr_load_runs_vcn.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %attr_load_runs_vcn.exit
  %42 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %vcn, align 4
  %call11 = call zeroext i1 @run_lookup_entry(ptr noundef %run3, i32 noundef %43, ptr noundef nonnull %lcn, ptr noundef nonnull %clen, ptr noundef nonnull %idx) #8
  br i1 %call11, label %if.end10.if.end14_crit_edge, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.end14:                                         ; preds = %if.end10.if.end14_crit_edge, %if.end2.if.end14_crit_edge
  %44 = ptrtoint ptr %lcn to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %lcn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %cmp = icmp eq i32 %45, -1
  br i1 %cmp, label %if.end14.cleanup_crit_edge, label %if.end17

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %if.end14
  %46 = ptrtoint ptr %clen to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %clen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %shl)
  %cmp18.not = icmp ult i32 %47, %shl
  br i1 %cmp18.not, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %clst_data to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %shl, ptr %clst_data, align 4
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %sbi = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %49 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sbi, align 4
  %alloc_size = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 7, i32 0, i32 5
  %51 = ptrtoint ptr %alloc_size to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %alloc_size, align 8
  %53 = call i64 @llvm.bswap.i64(i64 %52)
  %cluster_mask.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %50, i32 0, i32 4
  %54 = ptrtoint ptr %cluster_mask.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cluster_mask.i, align 4
  %conv.i103 = zext i32 %55 to i64
  %add.i = add i64 %53, %conv.i103
  %cluster_bits.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %50, i32 0, i32 10
  %56 = ptrtoint ptr %cluster_bits.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %cluster_bits.i, align 8
  %sh_prom.i = zext i8 %57 to i64
  %shr.i = lshr i64 %add.i, %sh_prom.i
  %conv2.i = trunc i64 %shr.i to i32
  %58 = ptrtoint ptr %clst_data to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %47, ptr %clst_data, align 4
  %59 = ptrtoint ptr %clen to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %clen, align 4
  %61 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %vcn, align 4
  %add144 = add i32 %62, %60
  store i32 %add144, ptr %vcn, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add144, i32 %conv2.i)
  %cmp23145 = icmp ult i32 %add144, %conv2.i
  br i1 %cmp23145, label %while.body.lr.ph, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end21
  %name_off.i104 = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 4
  %name_len31 = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 3
  %rno.i119 = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %add147 = phi i32 [ %add144, %while.body.lr.ph ], [ %add, %while.cond.backedge.while.body_crit_edge ]
  %slen.0146 = phi i32 [ 0, %while.body.lr.ph ], [ %slen.0.be, %while.cond.backedge.while.body_crit_edge ]
  %63 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %idx, align 4
  %inc = add i32 %64, 1
  store i32 %inc, ptr %idx, align 4
  %call25 = call zeroext i1 @run_get_entry(ptr noundef %run3, i32 noundef %inc, ptr noundef nonnull %vcn, ptr noundef nonnull %lcn, ptr noundef nonnull %clen) #8
  br i1 %call25, label %lor.lhs.false, label %while.body.if.then28_crit_edge

while.body.if.then28_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

lor.lhs.false:                                    ; preds = %while.body
  %65 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %vcn, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add147, i32 %66)
  %cmp26.not = icmp eq i32 %add147, %66
  br i1 %cmp26.not, label %lor.lhs.false.if.end39_crit_edge, label %lor.lhs.false.if.then28_crit_edge

lor.lhs.false.if.then28_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

lor.lhs.false.if.end39_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then28:                                        ; preds = %lor.lhs.false.if.then28_crit_edge, %while.body.if.then28_crit_edge
  %67 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %attr, align 8
  %69 = ptrtoint ptr %name_off.i104 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %name_off.i104, align 2
  %71 = call i16 @llvm.bswap.i16(i16 %70) #8
  %conv.i105 = zext i16 %71 to i32
  %add.ptr.i106 = getelementptr i8, ptr %attr, i32 %conv.i105
  %72 = ptrtoint ptr %name_len31 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %name_len31, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vcn.addr.i107)
  %74 = ptrtoint ptr %vcn.addr.i107 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %add147, ptr %vcn.addr.i107, align 4
  %call.i108 = call ptr @ni_find_attr(ptr noundef %ni, ptr noundef null, ptr noundef null, i32 noundef %68, ptr noundef %add.ptr.i106, i8 noundef zeroext %73, ptr noundef nonnull %vcn.addr.i107, ptr noundef null) #8
  %tobool.not.i109 = icmp eq ptr %call.i108, null
  br i1 %tobool.not.i109, label %if.then28.attr_load_runs_vcn.exit127.thread_crit_edge, label %if.end.i116

if.then28.attr_load_runs_vcn.exit127.thread_crit_edge: ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %attr_load_runs_vcn.exit127.thread

if.end.i116:                                      ; preds = %if.then28
  %75 = getelementptr inbounds %struct.ATTRIB, ptr %call.i108, i32 0, i32 7
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %75, align 8
  %78 = call i64 @llvm.bswap.i64(i64 %77) #8
  %conv.i110 = trunc i64 %78 to i32
  %evcn2.i111 = getelementptr inbounds %struct.ATTRIB, ptr %call.i108, i32 0, i32 7, i32 0, i32 1
  %79 = ptrtoint ptr %evcn2.i111 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %evcn2.i111, align 8
  %81 = call i64 @llvm.bswap.i64(i64 %80) #8
  %conv3.i112 = trunc i64 %81 to i32
  %82 = ptrtoint ptr %vcn.addr.i107 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %vcn.addr.i107, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %conv3.i112)
  %cmp.i113 = icmp ugt i32 %83, %conv3.i112
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %conv.i110)
  %cmp5.i114 = icmp ult i32 %83, %conv.i110
  %or.cond.i115 = select i1 %cmp.i113, i1 true, i1 %cmp5.i114
  br i1 %or.cond.i115, label %if.end.i116.attr_load_runs_vcn.exit127.thread_crit_edge, label %attr_load_runs_vcn.exit127

if.end.i116.attr_load_runs_vcn.exit127.thread_crit_edge: ; preds = %if.end.i116
  call void @__sanitizer_cov_trace_pc() #10
  br label %attr_load_runs_vcn.exit127.thread

attr_load_runs_vcn.exit127.thread:                ; preds = %if.end.i116.attr_load_runs_vcn.exit127.thread_crit_edge, %if.then28.attr_load_runs_vcn.exit127.thread_crit_edge
  %retval.0.i126.ph = phi i32 [ -22, %if.end.i116.attr_load_runs_vcn.exit127.thread_crit_edge ], [ -2, %if.then28.attr_load_runs_vcn.exit127.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vcn.addr.i107)
  br label %cleanup

attr_load_runs_vcn.exit127:                       ; preds = %if.end.i116
  %run_off.i117 = getelementptr inbounds %struct.ATTRIB, ptr %call.i108, i32 0, i32 7, i32 0, i32 2
  %84 = ptrtoint ptr %run_off.i117 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %run_off.i117, align 8
  %86 = call i16 @llvm.bswap.i16(i16 %85) #8
  %87 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %sbi, align 4
  %89 = ptrtoint ptr %rno.i119 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %rno.i119, align 8
  %conv10.i120 = zext i16 %86 to i32
  %add.ptr.i121 = getelementptr i8, ptr %call.i108, i32 %conv10.i120
  %size.i122 = getelementptr inbounds %struct.ATTRIB, ptr %call.i108, i32 0, i32 1
  %91 = ptrtoint ptr %size.i122 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %size.i122, align 4
  %93 = call i32 @llvm.bswap.i32(i32 %92) #8
  %sub.i123 = sub i32 %93, %conv10.i120
  %call12.i124 = call i32 @run_unpack_ex(ptr noundef %run3, ptr noundef %88, i32 noundef %90, i32 noundef %conv.i110, i32 noundef %conv3.i112, i32 noundef %conv.i110, ptr noundef %add.ptr.i121, i32 noundef %sub.i123) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vcn.addr.i107)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call12.i124)
  %tobool33.not = icmp sgt i32 %call12.i124, -1
  br i1 %tobool33.not, label %if.end35, label %attr_load_runs_vcn.exit127.cleanup_crit_edge

attr_load_runs_vcn.exit127.cleanup_crit_edge:     ; preds = %attr_load_runs_vcn.exit127
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end35:                                         ; preds = %attr_load_runs_vcn.exit127
  %94 = ptrtoint ptr %vcn to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %add147, ptr %vcn, align 4
  %call36 = call zeroext i1 @run_lookup_entry(ptr noundef %run3, i32 noundef %add147, ptr noundef nonnull %lcn, ptr noundef nonnull %clen, ptr noundef nonnull %idx) #8
  br i1 %call36, label %if.end35.if.end39_crit_edge, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end35.if.end39_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.end39:                                         ; preds = %if.end35.if.end39_crit_edge, %lor.lhs.false.if.end39_crit_edge
  %95 = ptrtoint ptr %lcn to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %lcn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %96)
  %cmp40 = icmp eq i32 %96, -1
  br i1 %cmp40, label %if.end48, label %if.else

if.else:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slen.0146)
  %tobool44.not = icmp eq i32 %slen.0146, 0
  br i1 %tobool44.not, label %if.end48.thread, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end48:                                         ; preds = %if.end39
  %97 = ptrtoint ptr %clen to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %clen, align 4
  %add43 = add i32 %98, %slen.0146
  %99 = ptrtoint ptr %clst_data to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %clst_data, align 4
  %add49 = add i32 %100, %add43
  call void @__sanitizer_cov_trace_cmp4(i32 %add49, i32 %shl)
  %cmp50.not = icmp ult i32 %add49, %shl
  br i1 %cmp50.not, label %if.end48.while.cond.backedge_crit_edge, label %if.then52

if.end48.while.cond.backedge_crit_edge:           ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end48.thread.while.cond.backedge_crit_edge, %if.end48.while.cond.backedge_crit_edge
  %slen.0.be = phi i32 [ %add43, %if.end48.while.cond.backedge_crit_edge ], [ 0, %if.end48.thread.while.cond.backedge_crit_edge ]
  %101 = ptrtoint ptr %clen to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %clen, align 4
  %103 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %vcn, align 4
  %add = add i32 %104, %102
  store i32 %add, ptr %vcn, align 4
  %cmp23 = icmp ult i32 %add, %conv2.i
  br i1 %cmp23, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.cleanup_crit_edge

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end48.thread:                                  ; preds = %if.else
  %105 = ptrtoint ptr %clen to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %clen, align 4
  %107 = ptrtoint ptr %clst_data to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %clst_data, align 4
  %add47 = add i32 %108, %106
  store i32 %add47, ptr %clst_data, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add47, i32 %shl)
  %cmp50.not134 = icmp ult i32 %add47, %shl
  br i1 %cmp50.not134, label %if.end48.thread.while.cond.backedge_crit_edge, label %if.end48.thread.if.then54_crit_edge

if.end48.thread.if.then54_crit_edge:              ; preds = %if.end48.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then54

if.end48.thread.while.cond.backedge_crit_edge:    ; preds = %if.end48.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

if.then52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add43)
  %tobool53.not = icmp eq i32 %add43, 0
  br i1 %tobool53.not, label %if.then52.if.then54_crit_edge, label %if.then52.cleanup_crit_edge

if.then52.cleanup_crit_edge:                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then52.if.then54_crit_edge:                    ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then54

if.then54:                                        ; preds = %if.then52.if.then54_crit_edge, %if.end48.thread.if.then54_crit_edge
  %109 = ptrtoint ptr %clst_data to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %shl, ptr %clst_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then54, %if.then52.cleanup_crit_edge, %while.cond.backedge.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %attr_load_runs_vcn.exit127.cleanup_crit_edge, %attr_load_runs_vcn.exit127.thread, %if.end21.cleanup_crit_edge, %if.then20, %if.end14.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %attr_load_runs_vcn.exit.cleanup_crit_edge, %attr_load_runs_vcn.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then20 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %41, %attr_load_runs_vcn.exit.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ 0, %if.then54 ], [ 0, %if.then52.cleanup_crit_edge ], [ %retval.0.i.ph, %attr_load_runs_vcn.exit.thread ], [ %retval.0.i126.ph, %attr_load_runs_vcn.exit127.thread ], [ 0, %if.end21.cleanup_crit_edge ], [ -22, %if.end35.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ 0, %while.cond.backedge.cleanup_crit_edge ], [ %call12.i124, %attr_load_runs_vcn.exit127.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vcn) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lcn) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clen) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @run_get_entry(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @attr_allocate_frame(ptr noundef %ni, i32 noundef %frame, i32 noundef %compr_size, i64 noundef %new_valid) local_unnamed_addr #0 align 64 {
entry:
  %attr = alloca ptr, align 4
  %le = alloca ptr, align 4
  %le_b = alloca ptr, align 4
  %mi3 = alloca ptr, align 4
  %mi_b = alloca ptr, align 4
  %svcn = alloca i32, align 4
  %lcn = alloca i32, align 4
  %vcn = alloca i32, align 4
  %end = alloca i32, align 4
  %clst_data = alloca i32, align 4
  %alen = alloca i32, align 4
  %hint = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %run1 = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 8, i32 0, i32 2, i32 6, i32 1
  %sbi2 = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %0 = ptrtoint ptr %sbi2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sbi2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %attr) #8
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %attr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le_b) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mi3) #8
  %3 = ptrtoint ptr %mi3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %mi3, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mi_b) #8
  %4 = ptrtoint ptr %mi_b to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %mi_b, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %svcn) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lcn) #8
  %5 = ptrtoint ptr %lcn to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %lcn, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vcn) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clst_data) #8
  %6 = ptrtoint ptr %clst_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %clst_data, align 4, !annotation !22
  %7 = ptrtoint ptr %le_b to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %le_b, align 4
  %call = call ptr @ni_find_attr(ptr noundef %ni, ptr noundef null, ptr noundef nonnull %le_b, i32 noundef -2147483648, ptr noundef null, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull %mi_b) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup201_crit_edge, label %if.end

entry.cleanup201_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup201

if.end:                                           ; preds = %entry
  %flags.i = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 5
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags.i, align 4
  %10 = and i16 %9, 384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.i.not = icmp eq i16 %10, 0
  br i1 %tobool.i.not, label %if.end.cleanup201_crit_edge, label %if.end6

if.end.cleanup201_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup201

if.end6:                                          ; preds = %if.end
  %shl = shl i32 %frame, 4
  %11 = ptrtoint ptr %vcn to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shl, ptr %vcn, align 4
  %12 = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 7
  %total_size7 = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 7, i32 0, i32 8
  %13 = ptrtoint ptr %total_size7 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %total_size7, align 8
  %15 = call i64 @llvm.bswap.i64(i64 %14)
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %12, align 8
  %18 = call i64 @llvm.bswap.i64(i64 %17)
  %conv = trunc i64 %18 to i32
  %19 = ptrtoint ptr %svcn to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv, ptr %svcn, align 4
  %evcn = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 7, i32 0, i32 1
  %20 = ptrtoint ptr %evcn to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %evcn, align 8
  %22 = call i64 @llvm.bswap.i64(i64 %21)
  %23 = trunc i64 %22 to i32
  %conv9 = add i32 %23, 1
  %data_size10 = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 7, i32 0, i32 6
  %24 = ptrtoint ptr %data_size10 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %data_size10, align 8
  %26 = call i64 @llvm.bswap.i64(i64 %25)
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %conv)
  %cmp.not = icmp uge i32 %shl, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %conv9)
  %cmp12 = icmp ult i32 %shl, %conv9
  %or.cond = select i1 %cmp.not, i1 %cmp12, i1 false
  br i1 %or.cond, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call, ptr %attr, align 4
  %28 = ptrtoint ptr %le_b to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %le_b, align 4
  %30 = ptrtoint ptr %le to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %le, align 4
  %31 = ptrtoint ptr %mi_b to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mi_b, align 4
  %33 = ptrtoint ptr %mi3 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %mi3, align 4
  br label %if.end28

if.else:                                          ; preds = %if.end6
  %34 = ptrtoint ptr %le_b to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %le_b, align 4
  %tobool15.not = icmp eq ptr %35, null
  br i1 %tobool15.not, label %if.else.out_crit_edge, label %if.else17

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.else17:                                        ; preds = %if.else
  %36 = ptrtoint ptr %le to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %le, align 4
  %call18 = call ptr @ni_find_attr(ptr noundef %ni, ptr noundef nonnull %call, ptr noundef nonnull %le, i32 noundef -2147483648, ptr noundef null, i8 noundef zeroext 0, ptr noundef nonnull %vcn, ptr noundef nonnull %mi3) #8
  %37 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call18, ptr %attr, align 4
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.else17.out_crit_edge, label %if.end21

if.else17.out_crit_edge:                          ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end21:                                         ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #10
  %38 = getelementptr inbounds %struct.ATTRIB, ptr %call18, i32 0, i32 7
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %38, align 8
  %41 = call i64 @llvm.bswap.i64(i64 %40)
  %conv23 = trunc i64 %41 to i32
  %42 = ptrtoint ptr %svcn to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv23, ptr %svcn, align 4
  %evcn24 = getelementptr inbounds %struct.ATTRIB, ptr %call18, i32 0, i32 7, i32 0, i32 1
  %43 = ptrtoint ptr %evcn24 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %evcn24, align 8
  %45 = call i64 @llvm.bswap.i64(i64 %44)
  %46 = trunc i64 %45 to i32
  %conv26 = add i32 %46, 1
  br label %if.end28

if.end28:                                         ; preds = %if.end21, %if.then14
  %evcn1.0 = phi i32 [ %conv9, %if.then14 ], [ %conv26, %if.end21 ]
  %47 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %attr, align 4
  %49 = getelementptr inbounds %struct.ATTRIB, ptr %48, i32 0, i32 7
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %49, align 8
  %52 = call i64 @llvm.bswap.i64(i64 %51) #8
  %conv.i = trunc i64 %52 to i32
  %evcn2.i = getelementptr inbounds %struct.ATTRIB, ptr %48, i32 0, i32 7, i32 0, i32 1
  %53 = ptrtoint ptr %evcn2.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %evcn2.i, align 8
  %55 = call i64 @llvm.bswap.i64(i64 %54) #8
  %conv3.i = trunc i64 %55 to i32
  %add.i = add i32 %conv3.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i)
  %cmp.not.i = icmp ugt i32 %add.i, %conv.i
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end28.if.end32_crit_edge

if.end28.if.end32_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

lor.lhs.false.i:                                  ; preds = %if.end28
  %call.i = call zeroext i1 @run_is_mapped_full(ptr noundef %run1, i32 noundef %conv.i, i32 noundef %conv3.i) #8
  br i1 %call.i, label %lor.lhs.false.i.if.end32_crit_edge, label %attr_load_runs.exit

lor.lhs.false.i.if.end32_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

attr_load_runs.exit:                              ; preds = %lor.lhs.false.i
  %size.i = getelementptr inbounds %struct.ATTRIB, ptr %48, i32 0, i32 1
  %56 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %size.i, align 4
  %58 = call i32 @llvm.bswap.i32(i32 %57) #8
  %run_off13.i = getelementptr inbounds %struct.ATTRIB, ptr %48, i32 0, i32 7, i32 0, i32 2
  %59 = ptrtoint ptr %run_off13.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %run_off13.i, align 8
  %61 = call i16 @llvm.bswap.i16(i16 %60) #8
  %62 = ptrtoint ptr %sbi2 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sbi2, align 4
  %rno.i = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 4
  %64 = ptrtoint ptr %rno.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rno.i, align 8
  %conv16.i = zext i16 %61 to i32
  %add.ptr.i = getelementptr i8, ptr %48, i32 %conv16.i
  %sub.i = sub i32 %58, %conv16.i
  %call18.i = call i32 @run_unpack_ex(ptr noundef %run1, ptr noundef %63, i32 noundef %65, i32 noundef %conv.i, i32 noundef %conv3.i, i32 noundef %conv.i, ptr noundef %add.ptr.i, i32 noundef %sub.i) #8
  %66 = call i32 @llvm.smin.i32(i32 %call18.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call18.i)
  %tobool30.not = icmp sgt i32 %call18.i, -1
  br i1 %tobool30.not, label %attr_load_runs.exit.if.end32_crit_edge, label %attr_load_runs.exit.out_crit_edge

attr_load_runs.exit.out_crit_edge:                ; preds = %attr_load_runs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

attr_load_runs.exit.if.end32_crit_edge:           ; preds = %attr_load_runs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.end32:                                         ; preds = %attr_load_runs.exit.if.end32_crit_edge, %lor.lhs.false.i.if.end32_crit_edge, %if.end28.if.end32_crit_edge
  %call33 = call i32 @attr_is_frame_compressed(ptr noundef %ni, ptr noundef nonnull %call, i32 noundef %frame, ptr noundef nonnull %clst_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end32.out_crit_edge

if.end32.out_crit_edge:                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end36:                                         ; preds = %if.end32
  %67 = ptrtoint ptr %clst_data to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %clst_data, align 4
  %conv37 = zext i32 %68 to i64
  %cluster_bits = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 10
  %69 = ptrtoint ptr %cluster_bits to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %cluster_bits, align 8
  %sh_prom = zext i8 %70 to i64
  %shl39 = shl i64 %conv37, %sh_prom
  %sub = sub i64 %15, %shl39
  %conv40 = zext i32 %compr_size to i64
  %cluster_mask.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 4
  %71 = ptrtoint ptr %cluster_mask.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cluster_mask.i, align 4
  %conv.i318 = zext i32 %72 to i64
  %add.i319 = add nuw nsw i64 %conv.i318, %conv40
  %shr.i = lshr i64 %add.i319, %sh_prom
  %conv2.i = trunc i64 %shr.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %conv2.i)
  %cmp42 = icmp eq i32 %68, %conv2.i
  br i1 %cmp42, label %if.end36.out_crit_edge, label %if.end45

if.end36.out_crit_edge:                           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end45:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %conv2.i)
  %cmp46 = icmp ugt i32 %68, %conv2.i
  br i1 %cmp46, label %if.then48, label %if.else61

if.then48:                                        ; preds = %if.end45
  %73 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %vcn, align 4
  %add49 = add i32 %74, %conv2.i
  %sub50 = sub i32 %68, %conv2.i
  %call51 = call fastcc i32 @run_deallocate_ex(ptr noundef %1, ptr noundef %run1, i32 noundef %add49, i32 noundef %sub50, ptr noundef null, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.then48.out_crit_edge

if.then48.out_crit_edge:                          ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end54:                                         ; preds = %if.then48
  %75 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %vcn, align 4
  %add55 = add i32 %76, %conv2.i
  %call57 = call zeroext i1 @run_add_entry(ptr noundef %run1, i32 noundef %add55, i32 noundef -1, i32 noundef %sub50, i1 noundef zeroext false) #8
  br i1 %call57, label %if.end59, label %if.end54.out_crit_edge

if.end54.out_crit_edge:                           ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end59:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %vcn, align 4
  %add60 = add i32 %78, %68
  %79 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %add60, ptr %end, align 4
  br label %if.end79

if.else61:                                        ; preds = %if.end45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alen) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hint) #8
  %80 = ptrtoint ptr %hint to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %hint, align 4
  %81 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %vcn, align 4
  %add62 = add i32 %82, %68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add62)
  %tobool63.not = icmp eq i32 %add62, 0
  br i1 %tobool63.not, label %if.else61.if.end69_crit_edge, label %land.lhs.true64

if.else61.if.end69_crit_edge:                     ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

land.lhs.true64:                                  ; preds = %if.else61
  %sub66 = add i32 %add62, -1
  %call67 = call zeroext i1 @run_lookup_entry(ptr noundef %run1, i32 noundef %sub66, ptr noundef nonnull %hint, ptr noundef null, ptr noundef null) #8
  br i1 %call67, label %land.lhs.true64.if.end69_crit_edge, label %if.then68

land.lhs.true64.if.end69_crit_edge:               ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then68:                                        ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %hint to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 -1, ptr %hint, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %land.lhs.true64.if.end69_crit_edge, %if.else61.if.end69_crit_edge
  %84 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %vcn, align 4
  %add70 = add i32 %85, %68
  %86 = ptrtoint ptr %hint to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %hint, align 4
  %add71 = add i32 %87, 1
  %sub72 = sub i32 %conv2.i, %68
  %call73 = call i32 @attr_allocate_clusters(ptr noundef %1, ptr noundef %run1, i32 noundef %add70, i32 noundef %add71, i32 noundef %sub72, ptr noundef null, i32 noundef 0, ptr noundef nonnull %alen, i32 noundef 0, ptr noundef nonnull %lcn)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  %88 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %vcn, align 4
  %add77 = add i32 %89, %conv2.i
  %90 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %add77, ptr %end, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hint) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alen) #8
  br label %if.end79

cleanup:                                          ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hint) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alen) #8
  br label %out

if.end79:                                         ; preds = %cleanup.thread, %if.end59
  %conv80 = and i64 %shr.i, 4294967295
  %91 = ptrtoint ptr %cluster_bits to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %cluster_bits, align 8
  %sh_prom83 = zext i8 %92 to i64
  %shl84 = shl i64 %conv80, %sh_prom83
  %add85 = add i64 %shl84, %sub
  %93 = ptrtoint ptr %mi3 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mi3, align 4
  %95 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %attr, align 4
  %97 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %end, align 4
  %99 = call i32 @llvm.umax.i32(i32 %98, i32 %evcn1.0)
  %100 = ptrtoint ptr %svcn to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %svcn, align 4
  %sub88350 = sub i32 %99, %101
  %call89351 = call i32 @mi_pack_runs(ptr noundef %94, ptr noundef %96, ptr noundef %run1, i32 noundef %sub88350) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89351)
  %tobool90.not352 = icmp eq i32 %call89351, 0
  br i1 %tobool90.not352, label %if.end92.lr.ph, label %if.end79.out_crit_edge

if.end79.out_crit_edge:                           ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end92.lr.ph:                                   ; preds = %if.end79
  %102 = call i64 @llvm.bswap.i64(i64 %add85)
  %vfs_inode = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 11
  %size = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9, i32 2
  br label %if.end92

if.end92:                                         ; preds = %if.end114.if.end92_crit_edge, %if.end92.lr.ph
  %attr_b.0353 = phi ptr [ %call, %if.end92.lr.ph ], [ %call111, %if.end114.if.end92_crit_edge ]
  %total_size93 = getelementptr inbounds %struct.ATTRIB, ptr %attr_b.0353, i32 0, i32 7, i32 0, i32 8
  %103 = ptrtoint ptr %total_size93 to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 %102, ptr %total_size93, align 8
  call void @inode_set_bytes(ptr noundef %vfs_inode, i64 noundef %add85) #8
  %104 = ptrtoint ptr %mi_b to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mi_b, align 4
  %dirty = getelementptr inbounds %struct.mft_inode, ptr %105, i32 0, i32 5
  %106 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 1, ptr %dirty, align 4
  call void @__mark_inode_dirty(ptr noundef %vfs_inode, i32 noundef 7) #8
  %107 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %attr, align 4
  %evcn95 = getelementptr inbounds %struct.ATTRIB, ptr %108, i32 0, i32 7, i32 0, i32 1
  %109 = ptrtoint ptr %evcn95 to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %evcn95, align 8
  %111 = call i64 @llvm.bswap.i64(i64 %110)
  %112 = trunc i64 %111 to i32
  %conv97 = add i32 %112, 1
  %113 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %114, i32 %evcn1.0)
  %cmp98.not = icmp ugt i32 %114, %evcn1.0
  br i1 %cmp98.not, label %if.end92.if.end116_crit_edge, label %if.then100

if.end92.if.end116_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116

if.then100:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_cmp4(i32 %conv97, i32 %evcn1.0)
  %cmp101 = icmp eq i32 %conv97, %evcn1.0
  br i1 %cmp101, label %if.then100.ok_crit_edge, label %if.end104

if.then100.ok_crit_edge:                          ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #10
  br label %ok

if.end104:                                        ; preds = %if.then100
  %115 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool105.not = icmp eq i32 %116, 0
  br i1 %tobool105.not, label %if.then106, label %if.end104.if.end116_crit_edge

if.end104.if.end116_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116

if.then106:                                       ; preds = %if.end104
  %call107 = call i32 @ni_create_attr_list(ptr noundef %ni) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.end110, label %if.then106.out_crit_edge

if.then106.out_crit_edge:                         ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end110:                                        ; preds = %if.then106
  %117 = ptrtoint ptr %le_b to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr null, ptr %le_b, align 4
  %call111 = call ptr @ni_find_attr(ptr noundef %ni, ptr noundef null, ptr noundef nonnull %le_b, i32 noundef -2147483648, ptr noundef null, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull %mi_b) #8
  %tobool112.not = icmp eq ptr %call111, null
  br i1 %tobool112.not, label %if.end110.out_crit_edge, label %if.end114

if.end110.out_crit_edge:                          ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end114:                                        ; preds = %if.end110
  %118 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call111, ptr %attr, align 4
  %119 = ptrtoint ptr %le_b to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %le_b, align 4
  %121 = ptrtoint ptr %le to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %120, ptr %le, align 4
  %122 = ptrtoint ptr %mi_b to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %mi_b, align 4
  %124 = ptrtoint ptr %mi3 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %123, ptr %mi3, align 4
  %125 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %end, align 4
  %127 = call i32 @llvm.umax.i32(i32 %126, i32 %evcn1.0)
  %128 = ptrtoint ptr %svcn to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %svcn, align 4
  %sub88 = sub i32 %127, %129
  %call89 = call i32 @mi_pack_runs(ptr noundef %123, ptr noundef nonnull %call111, ptr noundef %run1, i32 noundef %sub88) #8
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end114.if.end92_crit_edge, label %if.end114.out_crit_edge

if.end114.out_crit_edge:                          ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end114.if.end92_crit_edge:                     ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.end116:                                        ; preds = %if.end104.if.end116_crit_edge, %if.end92.if.end116_crit_edge
  %130 = ptrtoint ptr %svcn to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %evcn1.0, ptr %svcn, align 4
  %call117 = call ptr @ni_find_attr(ptr noundef %ni, ptr noundef %108, ptr noundef nonnull %le, i32 noundef -2147483648, ptr noundef null, i8 noundef zeroext 0, ptr noundef nonnull %svcn, ptr noundef nonnull %mi3) #8
  %131 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %call117, ptr %attr, align 4
  %tobool118.not = icmp eq ptr %call117, null
  br i1 %tobool118.not, label %if.end116.ins_ext_crit_edge, label %if.then119

if.end116.ins_ext_crit_edge:                      ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #10
  br label %ins_ext

if.then119:                                       ; preds = %if.end116
  %alloc_size = getelementptr inbounds %struct.ATTRIB, ptr %attr_b.0353, i32 0, i32 7, i32 0, i32 5
  %132 = ptrtoint ptr %alloc_size to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %alloc_size, align 8
  %134 = call i64 @llvm.bswap.i64(i64 %133)
  %135 = ptrtoint ptr %cluster_mask.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %cluster_mask.i, align 4
  %conv.i321 = zext i32 %136 to i64
  %add.i322 = add i64 %134, %conv.i321
  %137 = ptrtoint ptr %cluster_bits to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %cluster_bits, align 8
  %sh_prom.i324 = zext i8 %138 to i64
  %shr.i325 = lshr i64 %add.i322, %sh_prom.i324
  %conv2.i326 = trunc i64 %shr.i325 to i32
  %evcn122 = getelementptr inbounds %struct.ATTRIB, ptr %call117, i32 0, i32 7, i32 0, i32 1
  %139 = ptrtoint ptr %evcn122 to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %evcn122, align 8
  %141 = call i64 @llvm.bswap.i64(i64 %140)
  %conv123 = trunc i64 %141 to i32
  %142 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %143, i32 %conv97)
  %cmp124 = icmp ult i32 %143, %conv97
  br i1 %cmp124, label %if.then126, label %if.then119.if.end127_crit_edge

if.then119.if.end127_crit_edge:                   ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end127

if.then126:                                       ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #10
  %144 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %conv97, ptr %end, align 4
  br label %if.end127

if.end127:                                        ; preds = %if.then126, %if.then119.if.end127_crit_edge
  %145 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %146, i32 %conv123)
  %cmp128359 = icmp ugt i32 %146, %conv123
  br i1 %cmp128359, label %if.end127.while.body_crit_edge, label %if.end127.while.end_crit_edge

if.end127.while.end_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end127.while.body_crit_edge:                   ; preds = %if.end127
  br label %while.body

while.body:                                       ; preds = %if.end147.while.body_crit_edge, %if.end127.while.body_crit_edge
  %evcn121.0360 = phi i32 [ %conv151, %if.end147.while.body_crit_edge ], [ %conv123, %if.end127.while.body_crit_edge ]
  %147 = ptrtoint ptr %mi3 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %mi3, align 4
  %149 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %attr, align 4
  %call130 = call zeroext i1 @mi_remove_attr(ptr noundef null, ptr noundef %148, ptr noundef %150) #8
  %151 = ptrtoint ptr %le to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %le, align 4
  %call131 = call zeroext i1 @al_remove_le(ptr noundef %ni, ptr noundef %152) #8
  br i1 %call131, label %if.end133, label %while.body.out_crit_edge

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end133:                                        ; preds = %while.body
  %add134 = add nuw i32 %evcn121.0360, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add134, i32 %conv2.i326)
  %cmp135.not = icmp ult i32 %add134, %conv2.i326
  br i1 %cmp135.not, label %if.end139, label %if.end133.ins_ext_crit_edge

if.end133.ins_ext_crit_edge:                      ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #10
  br label %ins_ext

if.end139:                                        ; preds = %if.end133
  %153 = ptrtoint ptr %le to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %le, align 4
  %call140 = call i32 @ni_load_mi(ptr noundef %ni, ptr noundef %154, ptr noundef nonnull %mi3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %if.end143, label %if.then142

if.then142:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #10
  %155 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr null, ptr %attr, align 4
  br label %out

if.end143:                                        ; preds = %if.end139
  %156 = ptrtoint ptr %mi3 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %mi3, align 4
  %158 = ptrtoint ptr %le to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %le, align 4
  %id = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %159, i32 0, i32 6
  %call144 = call ptr @mi_find_attr(ptr noundef %157, ptr noundef null, i32 noundef -2147483648, ptr noundef null, i32 noundef 0, ptr noundef %id) #8
  %160 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %call144, ptr %attr, align 4
  %tobool145.not = icmp eq ptr %call144, null
  br i1 %tobool145.not, label %if.end143.out_crit_edge, label %if.end147

if.end143.out_crit_edge:                          ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end147:                                        ; preds = %if.end143
  %161 = getelementptr inbounds %struct.ATTRIB, ptr %call144, i32 0, i32 7
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load8_noabort(i32 %162)
  %163 = load i64, ptr %161, align 8
  %164 = call i64 @llvm.bswap.i64(i64 %163)
  %conv149 = trunc i64 %164 to i32
  %165 = ptrtoint ptr %svcn to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %conv149, ptr %svcn, align 4
  %evcn150 = getelementptr inbounds %struct.ATTRIB, ptr %call144, i32 0, i32 7, i32 0, i32 1
  %166 = ptrtoint ptr %evcn150 to i32
  call void @__asan_load8_noabort(i32 %166)
  %167 = load i64, ptr %evcn150, align 8
  %168 = call i64 @llvm.bswap.i64(i64 %167)
  %conv151 = trunc i64 %168 to i32
  %169 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %end, align 4
  %cmp128 = icmp ugt i32 %170, %conv151
  br i1 %cmp128, label %if.end147.while.body_crit_edge, label %while.end.loopexit

if.end147.while.body_crit_edge:                   ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end.loopexit:                               ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #10
  %conv151.le = trunc i64 %168 to i32
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.end127.while.end_crit_edge
  %evcn121.0.lcssa = phi i32 [ %conv123, %if.end127.while.end_crit_edge ], [ %conv151.le, %while.end.loopexit ]
  %.lcssa = phi i32 [ %146, %if.end127.while.end_crit_edge ], [ %170, %while.end.loopexit ]
  %171 = ptrtoint ptr %svcn to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %svcn, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.lcssa, i32 %172)
  %cmp152 = icmp ult i32 %.lcssa, %172
  br i1 %cmp152, label %if.then154, label %while.end.if.end155_crit_edge

while.end.if.end155_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end155

if.then154:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %173 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %172, ptr %end, align 4
  br label %if.end155

if.end155:                                        ; preds = %if.then154, %while.end.if.end155_crit_edge
  %174 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %attr, align 4
  %call156 = call i32 @attr_load_runs(ptr noundef %175, ptr noundef %ni, ptr noundef %run1, ptr noundef nonnull %end)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %if.end159, label %if.end155.out_crit_edge

if.end155.out_crit_edge:                          ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end159:                                        ; preds = %if.end155
  %add160 = add i32 %evcn121.0.lcssa, 1
  %conv161 = zext i32 %conv97 to i64
  %176 = call i64 @llvm.bswap.i64(i64 %conv161)
  %177 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %attr, align 4
  %179 = getelementptr inbounds %struct.ATTRIB, ptr %178, i32 0, i32 7
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_store8_noabort(i32 %180)
  store i64 %176, ptr %179, align 8
  %181 = ptrtoint ptr %mi3 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %mi3, align 4
  %sub163 = sub i32 %add160, %conv97
  %call164 = call i32 @mi_pack_runs(ptr noundef %182, ptr noundef %178, ptr noundef %run1, i32 noundef %sub163) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %if.end167, label %if.end159.out_crit_edge

if.end159.out_crit_edge:                          ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end167:                                        ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #10
  %183 = ptrtoint ptr %le to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %le, align 4
  %vcn169 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %184, i32 0, i32 4
  %185 = ptrtoint ptr %vcn169 to i32
  call void @__asan_store8_noabort(i32 %185)
  store i64 %176, ptr %vcn169, align 8
  %dirty171 = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9, i32 3
  %186 = ptrtoint ptr %dirty171 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 1, ptr %dirty171, align 4
  %187 = ptrtoint ptr %mi3 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %mi3, align 4
  %dirty172 = getelementptr inbounds %struct.mft_inode, ptr %188, i32 0, i32 5
  %189 = ptrtoint ptr %dirty172 to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 1, ptr %dirty172, align 4
  %190 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %attr, align 4
  %evcn173 = getelementptr inbounds %struct.ATTRIB, ptr %191, i32 0, i32 7, i32 0, i32 1
  %192 = ptrtoint ptr %evcn173 to i32
  call void @__asan_load8_noabort(i32 %192)
  %193 = load i64, ptr %evcn173, align 8
  %194 = call i64 @llvm.bswap.i64(i64 %193)
  %195 = trunc i64 %194 to i32
  %conv175 = add i32 %195, 1
  br label %ins_ext

ins_ext:                                          ; preds = %if.end167, %if.end133.ins_ext_crit_edge, %if.end116.ins_ext_crit_edge
  %evcn1.2 = phi i32 [ %evcn1.0, %if.end116.ins_ext_crit_edge ], [ %add160, %if.end167 ], [ %add134, %if.end133.ins_ext_crit_edge ]
  %next_svcn.1 = phi i32 [ %conv97, %if.end116.ins_ext_crit_edge ], [ %conv175, %if.end167 ], [ %conv97, %if.end133.ins_ext_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %evcn1.2, i32 %next_svcn.1)
  %cmp181 = icmp ugt i32 %evcn1.2, %next_svcn.1
  br i1 %cmp181, label %if.then183, label %ins_ext.ok_crit_edge

ins_ext.ok_crit_edge:                             ; preds = %ins_ext
  call void @__sanitizer_cov_trace_pc() #10
  br label %ok

if.then183:                                       ; preds = %ins_ext
  %sub184 = sub i32 %evcn1.2, %next_svcn.1
  %flags = getelementptr inbounds %struct.ATTRIB, ptr %attr_b.0353, i32 0, i32 5
  %196 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %flags, align 4
  %call185 = call i32 @ni_insert_nonresident(ptr noundef %ni, i32 noundef -2147483648, ptr noundef null, i8 noundef zeroext 0, ptr noundef %run1, i32 noundef %next_svcn.1, i32 noundef %sub184, i16 noundef zeroext %197, ptr noundef nonnull %attr, ptr noundef nonnull %mi3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call185)
  %tobool186.not = icmp eq i32 %call185, 0
  br i1 %tobool186.not, label %if.then183.ok_crit_edge, label %if.then183.out_crit_edge

if.then183.out_crit_edge:                         ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then183.ok_crit_edge:                          ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #10
  br label %ok

ok:                                               ; preds = %if.then183.ok_crit_edge, %ins_ext.ok_crit_edge, %if.then100.ok_crit_edge
  %198 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %vcn, align 4
  call void @run_truncate_around(ptr noundef %run1, i32 noundef %199) #8
  br label %out

out:                                              ; preds = %ok, %if.then183.out_crit_edge, %if.end159.out_crit_edge, %if.end155.out_crit_edge, %if.end143.out_crit_edge, %if.then142, %while.body.out_crit_edge, %if.end114.out_crit_edge, %if.end110.out_crit_edge, %if.then106.out_crit_edge, %if.end79.out_crit_edge, %cleanup, %if.end54.out_crit_edge, %if.then48.out_crit_edge, %if.end36.out_crit_edge, %if.end32.out_crit_edge, %attr_load_runs.exit.out_crit_edge, %if.else17.out_crit_edge, %if.else.out_crit_edge
  %err.3 = phi i32 [ %66, %attr_load_runs.exit.out_crit_edge ], [ %call33, %if.end32.out_crit_edge ], [ 0, %if.end36.out_crit_edge ], [ %call51, %if.then48.out_crit_edge ], [ 0, %ok ], [ %call185, %if.then183.out_crit_edge ], [ %call73, %cleanup ], [ -22, %if.else.out_crit_edge ], [ -22, %if.else17.out_crit_edge ], [ -12, %if.end54.out_crit_edge ], [ %call164, %if.end159.out_crit_edge ], [ %call156, %if.end155.out_crit_edge ], [ 0, %if.then142 ], [ %call89351, %if.end79.out_crit_edge ], [ -22, %while.body.out_crit_edge ], [ -22, %if.end143.out_crit_edge ], [ %call89, %if.end114.out_crit_edge ], [ %call107, %if.then106.out_crit_edge ], [ -2, %if.end110.out_crit_edge ]
  %attr_b.1 = phi ptr [ %call, %attr_load_runs.exit.out_crit_edge ], [ %call, %if.end32.out_crit_edge ], [ %call, %if.end36.out_crit_edge ], [ %call, %if.then48.out_crit_edge ], [ %attr_b.0353, %ok ], [ %attr_b.0353, %if.then183.out_crit_edge ], [ %call, %cleanup ], [ %call, %if.else.out_crit_edge ], [ %call, %if.else17.out_crit_edge ], [ %call, %if.end54.out_crit_edge ], [ %attr_b.0353, %if.end159.out_crit_edge ], [ %attr_b.0353, %if.end155.out_crit_edge ], [ %attr_b.0353, %if.then142 ], [ %call, %if.end79.out_crit_edge ], [ %attr_b.0353, %while.body.out_crit_edge ], [ %attr_b.0353, %if.end143.out_crit_edge ], [ %call111, %if.end114.out_crit_edge ], [ %attr_b.0353, %if.then106.out_crit_edge ], [ null, %if.end110.out_crit_edge ]
  %200 = call i64 @llvm.umin.i64(i64 %26, i64 %new_valid)
  %valid_size194 = getelementptr inbounds %struct.ATTRIB, ptr %attr_b.1, i32 0, i32 7, i32 0, i32 7
  %201 = ptrtoint ptr %valid_size194 to i32
  call void @__asan_load8_noabort(i32 %201)
  %202 = load i64, ptr %valid_size194, align 8
  %203 = call i64 @llvm.bswap.i64(i64 %202)
  call void @__sanitizer_cov_trace_cmp8(i64 %200, i64 %203)
  %cmp195.not = icmp eq i64 %200, %203
  br i1 %cmp195.not, label %out.cleanup201_crit_edge, label %if.then197

out.cleanup201_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup201

if.then197:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %204 = ptrtoint ptr %mi_b to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %mi_b, align 4
  %dirty199 = getelementptr inbounds %struct.mft_inode, ptr %205, i32 0, i32 5
  %206 = ptrtoint ptr %dirty199 to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 1, ptr %dirty199, align 4
  br label %cleanup201

cleanup201:                                       ; preds = %if.then197, %out.cleanup201_crit_edge, %if.end.cleanup201_crit_edge, %entry.cleanup201_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup201_crit_edge ], [ -22, %if.end.cleanup201_crit_edge ], [ %err.3, %if.then197 ], [ %err.3, %out.cleanup201_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clst_data) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vcn) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lcn) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %svcn) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mi_b) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mi3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le_b) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %attr) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @attr_collapse_range(ptr noundef %ni, i64 noundef %vbo, i64 noundef %bytes) local_unnamed_addr #0 align 64 {
entry:
  %attr = alloca ptr, align 4
  %le = alloca ptr, align 4
  %le_b = alloca ptr, align 4
  %mi3 = alloca ptr, align 4
  %mi_b = alloca ptr, align 4
  %dealloc = alloca i32, align 4
  %vcn = alloca i32, align 4
  %new_valid = alloca i64, align 8
  %next_svcn = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 8
  %run1 = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 8, i32 0, i32 2, i32 6, i32 1
  %sbi2 = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %1 = ptrtoint ptr %sbi2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sbi2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %attr) #8
  %3 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %attr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le) #8
  %4 = ptrtoint ptr %le to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %le, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le_b) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mi3) #8
  %5 = ptrtoint ptr %mi3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %mi3, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mi_b) #8
  %6 = ptrtoint ptr %mi_b to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %mi_b, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dealloc) #8
  %7 = ptrtoint ptr %dealloc to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %dealloc, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vcn) #8
  %8 = ptrtoint ptr %vcn to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %vcn, align 4, !annotation !22
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %bytes)
  %tobool.not = icmp eq i64 %bytes, 0
  br i1 %tobool.not, label %entry.cleanup270_crit_edge, label %if.end

entry.cleanup270_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup270

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %le_b to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %le_b, align 4
  %call = call ptr @ni_find_attr(ptr noundef %ni, ptr noundef null, ptr noundef nonnull %le_b, i32 noundef -2147483648, ptr noundef null, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull %mi_b) #8
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.end.cleanup270_crit_edge, label %if.end6

if.end.cleanup270_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup270

if.end6:                                          ; preds = %if.end
  %non_res = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 2
  %10 = ptrtoint ptr %non_res to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %non_res, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool7.not = icmp eq i8 %11, 0
  br i1 %tobool7.not, label %if.end6.cleanup270_crit_edge, label %if.end9

if.end6.cleanup270_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup270

if.end9:                                          ; preds = %if.end6
  %12 = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 7
  %data_size10 = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 7, i32 0, i32 6
  %13 = ptrtoint ptr %data_size10 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %data_size10, align 8
  %15 = call i64 @llvm.bswap.i64(i64 %14)
  %alloc_size11 = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 7, i32 0, i32 5
  %16 = ptrtoint ptr %alloc_size11 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %alloc_size11, align 8
  %18 = call i64 @llvm.bswap.i64(i64 %17)
  %flags = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 5
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %flags, align 4
  %21 = and i16 %20, 384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.i.not = icmp eq i16 %21, 0
  br i1 %tobool.i.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %total_size14 = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 7, i32 0, i32 8
  %22 = ptrtoint ptr %total_size14 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %total_size14, align 8
  %24 = call i64 @llvm.bswap.i64(i64 %23)
  %cluster_size = getelementptr inbounds %struct.ntfs_sb_info, ptr %2, i32 0, i32 3
  %25 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cluster_size, align 8
  %c_unit = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 7, i32 0, i32 3
  %27 = ptrtoint ptr %c_unit to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %c_unit, align 2
  %conv = zext i8 %28 to i32
  %shl = shl i32 %26, %conv
  %sub = add i32 %shl, -1
  br label %if.end15

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %cluster_mask = getelementptr inbounds %struct.ntfs_sb_info, ptr %2, i32 0, i32 4
  %29 = ptrtoint ptr %cluster_mask to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cluster_mask, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then13
  %total_size.0 = phi i64 [ %24, %if.then13 ], [ %18, %if.else ]
  %mask.0 = phi i32 [ %sub, %if.then13 ], [ %30, %if.else ]
  %conv16 = zext i32 %mask.0 to i64
  %31 = or i64 %bytes, %vbo
  %32 = and i64 %31, %conv16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %32)
  %33 = icmp ne i64 %32, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %vbo)
  %cmp = icmp ult i64 %15, %vbo
  %or.cond435 = select i1 %33, i1 true, i1 %cmp
  br i1 %or.cond435, label %if.end15.cleanup270_crit_edge, label %if.end25

if.end15.cleanup270_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup270

if.end25:                                         ; preds = %if.end15
  call void @down_write(ptr noundef %0) #8
  %add = add i64 %bytes, %vbo
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %15)
  %cmp26.not = icmp ult i64 %add, %15
  br i1 %cmp26.not, label %if.end40, label %if.then28

if.then28:                                        ; preds = %if.end25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %new_valid) #8
  %i_valid = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 1
  %34 = ptrtoint ptr %i_valid to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %i_valid, align 8
  %36 = call i64 @llvm.umin.i64(i64 %35, i64 %vbo)
  %37 = ptrtoint ptr %new_valid to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %new_valid, align 8
  %vfs_inode = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 11
  call void @truncate_setsize(ptr noundef %vfs_inode, i64 noundef %vbo) #8
  %call32 = call i32 @attr_set_size(ptr noundef %ni, i32 noundef -2147483648, ptr noundef null, i8 noundef zeroext 0, ptr noundef %run1, i64 noundef %vbo, ptr noundef nonnull %new_valid, i1 noundef zeroext true, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %land.lhs.true, label %out

land.lhs.true:                                    ; preds = %if.then28
  %38 = ptrtoint ptr %new_valid to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %new_valid, align 8
  %40 = ptrtoint ptr %i_valid to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %i_valid, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %39, i64 %41)
  %cmp35 = icmp ult i64 %39, %41
  br i1 %cmp35, label %if.then37, label %land.lhs.true.out.thread487_crit_edge

land.lhs.true.out.thread487_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread487

if.then37:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %i_valid to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %39, ptr %i_valid, align 8
  br label %out.thread487

if.end40:                                         ; preds = %if.end25
  %cluster_bits = getelementptr inbounds %struct.ntfs_sb_info, ptr %2, i32 0, i32 10
  %43 = ptrtoint ptr %cluster_bits to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %cluster_bits, align 8
  %sh_prom = zext i8 %44 to i64
  %shr = lshr i64 %18, %sh_prom
  %conv42 = trunc i64 %shr to i32
  %shr46 = lshr i64 %vbo, %sh_prom
  %conv47 = trunc i64 %shr46 to i32
  %45 = ptrtoint ptr %vcn to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv47, ptr %vcn, align 4
  %shr51 = lshr i64 %bytes, %sh_prom
  %conv52 = trunc i64 %shr51 to i32
  %add53 = add i32 %conv47, %conv52
  %46 = ptrtoint ptr %dealloc to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %dealloc, align 4
  %47 = ptrtoint ptr %12 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %12, align 8
  %49 = call i64 @llvm.bswap.i64(i64 %48)
  %conv55 = trunc i64 %49 to i32
  %evcn = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 7, i32 0, i32 1
  %50 = ptrtoint ptr %evcn to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %evcn, align 8
  %52 = call i64 @llvm.bswap.i64(i64 %51)
  %53 = trunc i64 %52 to i32
  %conv57 = add i32 %53, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %conv47, i32 %conv55)
  %cmp58.not = icmp uge i32 %conv47, %conv55
  call void @__sanitizer_cov_trace_cmp4(i32 %conv57, i32 %conv47)
  %cmp61 = icmp ugt i32 %conv57, %conv47
  %or.cond431 = select i1 %cmp58.not, i1 %cmp61, i1 false
  br i1 %or.cond431, label %if.then63, label %if.else64

if.then63:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call, ptr %attr, align 4
  %55 = ptrtoint ptr %le_b to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %le_b, align 4
  %57 = ptrtoint ptr %le to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %le, align 4
  %58 = ptrtoint ptr %mi_b to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mi_b, align 4
  %60 = ptrtoint ptr %mi3 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %mi3, align 4
  br label %if.end78

if.else64:                                        ; preds = %if.end40
  %61 = ptrtoint ptr %le_b to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %le_b, align 4
  %tobool65.not = icmp eq ptr %62, null
  br i1 %tobool65.not, label %if.else64.if.then267_crit_edge, label %if.else67

if.else64.if.then267_crit_edge:                   ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then267

if.else67:                                        ; preds = %if.else64
  %63 = ptrtoint ptr %le to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %le, align 4
  %call68 = call ptr @ni_find_attr(ptr noundef %ni, ptr noundef nonnull %call, ptr noundef nonnull %le, i32 noundef -2147483648, ptr noundef null, i8 noundef zeroext 0, ptr noundef nonnull %vcn, ptr noundef nonnull %mi3) #8
  %64 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call68, ptr %attr, align 4
  %tobool69.not = icmp eq ptr %call68, null
  br i1 %tobool69.not, label %if.else67.if.then267_crit_edge, label %if.end71

if.else67.if.then267_crit_edge:                   ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then267

if.end71:                                         ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #10
  %65 = getelementptr inbounds %struct.ATTRIB, ptr %call68, i32 0, i32 7
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %65, align 8
  %68 = call i64 @llvm.bswap.i64(i64 %67)
  %conv73 = trunc i64 %68 to i32
  %evcn74 = getelementptr inbounds %struct.ATTRIB, ptr %call68, i32 0, i32 7, i32 0, i32 1
  %69 = ptrtoint ptr %evcn74 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %evcn74, align 8
  %71 = call i64 @llvm.bswap.i64(i64 %70)
  %72 = trunc i64 %71 to i32
  %conv76 = add i32 %72, 1
  br label %if.end78

if.end78:                                         ; preds = %if.end71, %if.then63
  %svcn.0 = phi i32 [ %conv55, %if.then63 ], [ %conv73, %if.end71 ]
  %evcn1.0 = phi i32 [ %conv57, %if.then63 ], [ %conv76, %if.end71 ]
  %73 = xor i32 %conv52, -1
  %dirty = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 9, i32 3
  %rno = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %next_attr, %if.end78
  %svcn.1 = phi i32 [ %svcn.0, %if.end78 ], [ %conv214, %next_attr ]
  %evcn1.1 = phi i32 [ %evcn1.0, %if.end78 ], [ %conv217, %next_attr ]
  %attr_b.0 = phi ptr [ %call, %if.end78 ], [ %attr_b.4, %next_attr ]
  call void @__sanitizer_cov_trace_cmp4(i32 %svcn.1, i32 %add53)
  %cmp79.not = icmp ult i32 %svcn.1, %add53
  br i1 %cmp79.not, label %if.else95, label %if.then81

if.then81:                                        ; preds = %for.cond
  %sub82 = sub i32 %svcn.1, %conv52
  %conv83 = zext i32 %sub82 to i64
  %74 = call i64 @llvm.bswap.i64(i64 %conv83)
  %75 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %attr, align 4
  %77 = getelementptr inbounds %struct.ATTRIB, ptr %76, i32 0, i32 7
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %74, ptr %77, align 8
  %sub86 = add i32 %evcn1.1, %73
  %conv87 = zext i32 %sub86 to i64
  %79 = call i64 @llvm.bswap.i64(i64 %conv87)
  %evcn88 = getelementptr inbounds %struct.ATTRIB, ptr %76, i32 0, i32 7, i32 0, i32 1
  %80 = ptrtoint ptr %evcn88 to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %79, ptr %evcn88, align 8
  %81 = ptrtoint ptr %le to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %le, align 4
  %tobool89.not = icmp eq ptr %82, null
  br i1 %tobool89.not, label %if.then81.if.end93_crit_edge, label %if.then90

if.then81.if.end93_crit_edge:                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

if.then90:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #10
  %vcn92 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %82, i32 0, i32 4
  %83 = ptrtoint ptr %vcn92 to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %74, ptr %vcn92, align 8
  %84 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %dirty, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then90, %if.then81.if.end93_crit_edge
  %85 = ptrtoint ptr %mi3 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mi3, align 4
  %dirty94 = getelementptr inbounds %struct.mft_inode, ptr %86, i32 0, i32 5
  %87 = ptrtoint ptr %dirty94 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %dirty94, align 4
  br label %if.end204

if.else95:                                        ; preds = %for.cond
  %88 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %vcn, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %svcn.1, i32 %89)
  %cmp96 = icmp ult i32 %svcn.1, %89
  call void @__sanitizer_cov_trace_cmp4(i32 %add53, i32 %evcn1.1)
  %cmp99 = icmp ult i32 %add53, %evcn1.1
  %or.cond432 = select i1 %cmp96, i1 true, i1 %cmp99
  br i1 %or.cond432, label %if.then101, label %if.else167

if.then101:                                       ; preds = %if.else95
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %next_svcn) #8
  %90 = ptrtoint ptr %next_svcn to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 -1, ptr %next_svcn, align 4, !annotation !22
  %91 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %attr, align 4
  %93 = getelementptr inbounds %struct.ATTRIB, ptr %92, i32 0, i32 7
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %93, align 8
  %96 = call i64 @llvm.bswap.i64(i64 %95) #8
  %conv.i = trunc i64 %96 to i32
  %evcn2.i = getelementptr inbounds %struct.ATTRIB, ptr %92, i32 0, i32 7, i32 0, i32 1
  %97 = ptrtoint ptr %evcn2.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %evcn2.i, align 8
  %99 = call i64 @llvm.bswap.i64(i64 %98) #8
  %conv3.i = trunc i64 %99 to i32
  %add.i = add i32 %conv3.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i)
  %cmp.not.i = icmp ugt i32 %add.i, %conv.i
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.then101.if.end105_crit_edge

if.then101.if.end105_crit_edge:                   ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105

lor.lhs.false.i:                                  ; preds = %if.then101
  %call.i = call zeroext i1 @run_is_mapped_full(ptr noundef %run1, i32 noundef %conv.i, i32 noundef %conv3.i) #8
  br i1 %call.i, label %lor.lhs.false.i.if.end105_crit_edge, label %if.end.i

lor.lhs.false.i.if.end105_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_cmp4(i32 %svcn.1, i32 %conv3.i)
  %cmp6.i = icmp ugt i32 %svcn.1, %conv3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %svcn.1, i32 %conv.i)
  %cmp9.i = icmp ult i32 %svcn.1, %conv.i
  %or.cond.i = select i1 %cmp6.i, i1 true, i1 %cmp9.i
  br i1 %or.cond.i, label %if.end.i.cleanup.thread_crit_edge, label %attr_load_runs.exit

if.end.i.cleanup.thread_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

attr_load_runs.exit:                              ; preds = %if.end.i
  %size.i = getelementptr inbounds %struct.ATTRIB, ptr %92, i32 0, i32 1
  %100 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %size.i, align 4
  %102 = call i32 @llvm.bswap.i32(i32 %101) #8
  %run_off13.i = getelementptr inbounds %struct.ATTRIB, ptr %92, i32 0, i32 7, i32 0, i32 2
  %103 = ptrtoint ptr %run_off13.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %run_off13.i, align 8
  %105 = call i16 @llvm.bswap.i16(i16 %104) #8
  %106 = ptrtoint ptr %sbi2 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %sbi2, align 4
  %108 = ptrtoint ptr %rno to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %rno, align 8
  %conv16.i = zext i16 %105 to i32
  %add.ptr.i = getelementptr i8, ptr %92, i32 %conv16.i
  %sub.i = sub i32 %102, %conv16.i
  %call18.i = call i32 @run_unpack_ex(ptr noundef %run1, ptr noundef %107, i32 noundef %109, i32 noundef %conv.i, i32 noundef %conv3.i, i32 noundef %svcn.1, ptr noundef %add.ptr.i, i32 noundef %sub.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call18.i)
  %tobool103.not = icmp sgt i32 %call18.i, -1
  br i1 %tobool103.not, label %attr_load_runs.exit.if.end105_crit_edge, label %attr_load_runs.exit.cleanup.thread_crit_edge

attr_load_runs.exit.cleanup.thread_crit_edge:     ; preds = %attr_load_runs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

attr_load_runs.exit.if.end105_crit_edge:          ; preds = %attr_load_runs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105

if.end105:                                        ; preds = %attr_load_runs.exit.if.end105_crit_edge, %lor.lhs.false.i.if.end105_crit_edge, %if.then101.if.end105_crit_edge
  %110 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %vcn, align 4
  %112 = call i32 @llvm.umax.i32(i32 %111, i32 %svcn.1)
  %113 = call i32 @llvm.umin.i32(i32 %add53, i32 %evcn1.1)
  %sub120 = sub i32 %113, %112
  %call121 = call fastcc i32 @run_deallocate_ex(ptr noundef %2, ptr noundef %run1, i32 noundef %112, i32 noundef %sub120, ptr noundef nonnull %dealloc, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.end124, label %if.end105.cleanup.thread_crit_edge

if.end105.cleanup.thread_crit_edge:               ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end124:                                        ; preds = %if.end105
  %call125 = call zeroext i1 @run_collapse_range(ptr noundef %run1, i32 noundef %112, i32 noundef %sub120) #8
  br i1 %call125, label %if.end127, label %if.end124.cleanup.thread_crit_edge

if.end124.cleanup.thread_crit_edge:               ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end127:                                        ; preds = %if.end124
  %114 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %vcn, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %svcn.1, i32 %115)
  %cmp128.not = icmp ult i32 %svcn.1, %115
  br i1 %cmp128.not, label %if.end127.if.end140_crit_edge, label %if.then130

if.end127.if.end140_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end140

if.then130:                                       ; preds = %if.end127
  %conv131 = zext i32 %115 to i64
  %116 = call i64 @llvm.bswap.i64(i64 %conv131)
  %117 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %attr, align 4
  %119 = getelementptr inbounds %struct.ATTRIB, ptr %118, i32 0, i32 7
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 %116, ptr %119, align 8
  %121 = ptrtoint ptr %le to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %le, align 4
  %tobool133.not = icmp eq ptr %122, null
  br i1 %tobool133.not, label %if.then130.if.end140_crit_edge, label %if.then134

if.then130.if.end140_crit_edge:                   ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end140

if.then134:                                       ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #10
  %vcn136 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %122, i32 0, i32 4
  %123 = ptrtoint ptr %vcn136 to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 %116, ptr %vcn136, align 8
  %124 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 1, ptr %dirty, align 4
  br label %if.end140

if.end140:                                        ; preds = %if.then134, %if.then130.if.end140_crit_edge, %if.end127.if.end140_crit_edge
  %125 = ptrtoint ptr %mi3 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %mi3, align 4
  %127 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %attr, align 4
  %129 = add i32 %svcn.1, %sub120
  %sub142 = sub i32 %evcn1.1, %129
  %call143 = call i32 @mi_pack_runs(ptr noundef %126, ptr noundef %128, ptr noundef %run1, i32 noundef %sub142) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %if.end146, label %if.end140.cleanup.thread_crit_edge

if.end140.cleanup.thread_crit_edge:               ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end146:                                        ; preds = %if.end140
  %130 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %attr, align 4
  %evcn147 = getelementptr inbounds %struct.ATTRIB, ptr %131, i32 0, i32 7, i32 0, i32 1
  %132 = ptrtoint ptr %evcn147 to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %evcn147, align 8
  %134 = call i64 @llvm.bswap.i64(i64 %133)
  %135 = trunc i64 %134 to i32
  %conv149 = add i32 %135, 1
  %136 = ptrtoint ptr %next_svcn to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %conv149, ptr %next_svcn, align 4
  %add150 = add i32 %conv149, %sub120
  call void @__sanitizer_cov_trace_cmp4(i32 %evcn1.1, i32 %add150)
  %cmp151 = icmp ugt i32 %evcn1.1, %add150
  br i1 %cmp151, label %if.then153, label %if.end146.cleanup_crit_edge

if.end146.cleanup_crit_edge:                      ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then153:                                       ; preds = %if.end146
  %sub155 = sub i32 %evcn1.1, %add150
  %call156 = call i32 @ni_insert_nonresident(ptr noundef %ni, i32 noundef -2147483648, ptr noundef null, i8 noundef zeroext 0, ptr noundef %run1, i32 noundef %conv149, i32 noundef %sub155, i16 noundef zeroext %20, ptr noundef nonnull %attr, ptr noundef nonnull %mi3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %if.end159, label %if.then153.cleanup.thread_crit_edge

if.then153.cleanup.thread_crit_edge:              ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end159:                                        ; preds = %if.then153
  %call160 = call ptr @al_find_ex(ptr noundef %ni, ptr noundef null, i32 noundef -2147483648, ptr noundef null, i8 noundef zeroext 0, ptr noundef nonnull %next_svcn) #8
  %137 = ptrtoint ptr %le to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %call160, ptr %le, align 4
  %tobool161.not = icmp eq ptr %call160, null
  br i1 %tobool161.not, label %if.end159.cleanup.thread_crit_edge, label %if.end159.cleanup_crit_edge

if.end159.cleanup_crit_edge:                      ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end159.cleanup.thread_crit_edge:               ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end159.cleanup.thread_crit_edge, %if.then153.cleanup.thread_crit_edge, %if.end140.cleanup.thread_crit_edge, %if.end124.cleanup.thread_crit_edge, %if.end105.cleanup.thread_crit_edge, %attr_load_runs.exit.cleanup.thread_crit_edge, %if.end.i.cleanup.thread_crit_edge
  %err.2.ph = phi i32 [ %call18.i, %attr_load_runs.exit.cleanup.thread_crit_edge ], [ -22, %if.end.i.cleanup.thread_crit_edge ], [ -22, %if.end159.cleanup.thread_crit_edge ], [ %call156, %if.then153.cleanup.thread_crit_edge ], [ %call143, %if.end140.cleanup.thread_crit_edge ], [ -12, %if.end124.cleanup.thread_crit_edge ], [ %call121, %if.end105.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %next_svcn) #8
  br label %if.then267

cleanup:                                          ; preds = %if.end159.cleanup_crit_edge, %if.end146.cleanup_crit_edge
  %attr_b.1 = phi ptr [ null, %if.end159.cleanup_crit_edge ], [ %attr_b.0, %if.end146.cleanup_crit_edge ]
  call void @run_truncate(ptr noundef %run1, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %next_svcn) #8
  br label %if.end204

if.else167:                                       ; preds = %if.else95
  %138 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %attr, align 4
  %run_off = getelementptr inbounds %struct.ATTRIB, ptr %139, i32 0, i32 7, i32 0, i32 2
  %140 = ptrtoint ptr %run_off to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %run_off, align 8
  %142 = call i16 @llvm.bswap.i16(i16 %141)
  %143 = ptrtoint ptr %rno to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %rno, align 8
  %sub169 = add i32 %evcn1.1, -1
  %conv170 = zext i16 %142 to i32
  %add.ptr = getelementptr i8, ptr %139, i32 %conv170
  %size = getelementptr inbounds %struct.ATTRIB, ptr %139, i32 0, i32 1
  %145 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %size, align 4
  %147 = call i32 @llvm.bswap.i32(i32 %146)
  %sub172 = sub i32 %147, %conv170
  %call173 = call i32 @run_unpack_ex(ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef %2, i32 noundef %144, i32 noundef %svcn.1, i32 noundef %sub169, i32 noundef %svcn.1, ptr noundef %add.ptr, i32 noundef %sub172) #8
  %148 = ptrtoint ptr %mi3 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %mi3, align 4
  %150 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %attr, align 4
  %call174 = call zeroext i1 @mi_remove_attr(ptr noundef null, ptr noundef %149, ptr noundef %151) #8
  %152 = ptrtoint ptr %le to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %le, align 4
  %tobool175.not = icmp eq ptr %153, null
  br i1 %tobool175.not, label %if.else167.for.end_crit_edge, label %if.end177

if.else167.for.end_crit_edge:                     ; preds = %if.else167
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end177:                                        ; preds = %if.else167
  %size178 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %153, i32 0, i32 1
  %154 = ptrtoint ptr %size178 to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %size178, align 4
  %156 = call i16 @llvm.bswap.i16(i16 %155)
  %call179 = call zeroext i1 @al_remove_le(ptr noundef %ni, ptr noundef nonnull %153) #8
  br i1 %call179, label %if.end181, label %if.end177.if.then267_crit_edge

if.end177.if.then267_crit_edge:                   ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then267

if.end181:                                        ; preds = %if.end177
  call void @__sanitizer_cov_trace_cmp4(i32 %evcn1.1, i32 %conv42)
  %cmp182.not = icmp ult i32 %evcn1.1, %conv42
  br i1 %cmp182.not, label %if.end185, label %if.end181.for.end_crit_edge

if.end181.for.end_crit_edge:                      ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end185:                                        ; preds = %if.end181
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %svcn.1)
  %tobool186.not = icmp eq i32 %svcn.1, 0
  %157 = ptrtoint ptr %le to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %le, align 4
  br i1 %tobool186.not, label %if.then187, label %cleanup199.thread459

if.then187:                                       ; preds = %if.end185
  %call188 = call i32 @ni_load_mi(ptr noundef %ni, ptr noundef %158, ptr noundef nonnull %mi3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call188)
  %tobool189.not = icmp eq i32 %call188, 0
  br i1 %tobool189.not, label %if.end191, label %if.then187.if.then267_crit_edge

if.then187.if.then267_crit_edge:                  ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then267

if.end191:                                        ; preds = %if.then187
  %159 = ptrtoint ptr %mi3 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %mi3, align 4
  %161 = ptrtoint ptr %le to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %le, align 4
  %id = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %162, i32 0, i32 6
  %call192 = call ptr @mi_find_attr(ptr noundef %160, ptr noundef null, i32 noundef -2147483648, ptr noundef null, i32 noundef 0, ptr noundef %id) #8
  %163 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %call192, ptr %attr, align 4
  %tobool193.not = icmp eq ptr %call192, null
  br i1 %tobool193.not, label %if.end191.if.then267_crit_edge, label %if.end191.next_attr_crit_edge

if.end191.next_attr_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #10
  br label %next_attr

if.end191.if.then267_crit_edge:                   ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then267

cleanup199.thread459:                             ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #10
  %conv197 = zext i16 %156 to i32
  %idx.neg = sub nsw i32 0, %conv197
  %add.ptr198 = getelementptr i8, ptr %158, i32 %idx.neg
  %164 = ptrtoint ptr %le to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %add.ptr198, ptr %le, align 4
  br label %if.end204

if.end204:                                        ; preds = %cleanup199.thread459, %cleanup, %if.end93
  %attr_b.3 = phi ptr [ %attr_b.0, %if.end93 ], [ %attr_b.1, %cleanup ], [ %attr_b.0, %cleanup199.thread459 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %evcn1.1, i32 %conv42)
  %cmp205.not = icmp ult i32 %evcn1.1, %conv42
  br i1 %cmp205.not, label %if.end208, label %if.end204.for.end_crit_edge

if.end204.for.end_crit_edge:                      ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end208:                                        ; preds = %if.end204
  %165 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %attr, align 4
  %call209 = call ptr @ni_enum_attr_ex(ptr noundef %ni, ptr noundef %166, ptr noundef nonnull %le, ptr noundef nonnull %mi3) #8
  %167 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %call209, ptr %attr, align 4
  %tobool210.not = icmp eq ptr %call209, null
  br i1 %tobool210.not, label %if.end208.if.then267_crit_edge, label %if.end208.next_attr_crit_edge

if.end208.next_attr_crit_edge:                    ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #10
  br label %next_attr

if.end208.if.then267_crit_edge:                   ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then267

next_attr:                                        ; preds = %if.end208.next_attr_crit_edge, %if.end191.next_attr_crit_edge
  %attr_b.4 = phi ptr [ %attr_b.3, %if.end208.next_attr_crit_edge ], [ %attr_b.0, %if.end191.next_attr_crit_edge ]
  %168 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %attr, align 4
  %170 = getelementptr inbounds %struct.ATTRIB, ptr %169, i32 0, i32 7
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %170, align 8
  %173 = call i64 @llvm.bswap.i64(i64 %172)
  %conv214 = trunc i64 %173 to i32
  %evcn215 = getelementptr inbounds %struct.ATTRIB, ptr %169, i32 0, i32 7, i32 0, i32 1
  %174 = ptrtoint ptr %evcn215 to i32
  call void @__asan_load8_noabort(i32 %174)
  %175 = load i64, ptr %evcn215, align 8
  %176 = call i64 @llvm.bswap.i64(i64 %175)
  %177 = trunc i64 %176 to i32
  %conv217 = add i32 %177, 1
  br label %for.cond

for.end:                                          ; preds = %if.end204.for.end_crit_edge, %if.end181.for.end_crit_edge, %if.else167.for.end_crit_edge
  %attr_b.5 = phi ptr [ %attr_b.3, %if.end204.for.end_crit_edge ], [ %attr_b.0, %if.else167.for.end_crit_edge ], [ %attr_b.0, %if.end181.for.end_crit_edge ]
  %tobool218.not = icmp eq ptr %attr_b.5, null
  br i1 %tobool218.not, label %if.then219, label %for.end.if.end224_crit_edge

for.end.if.end224_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end224

if.then219:                                       ; preds = %for.end
  %178 = ptrtoint ptr %le_b to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr null, ptr %le_b, align 4
  %call220 = call ptr @ni_find_attr(ptr noundef %ni, ptr noundef null, ptr noundef nonnull %le_b, i32 noundef -2147483648, ptr noundef null, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull %mi_b) #8
  %tobool221.not = icmp eq ptr %call220, null
  br i1 %tobool221.not, label %if.then219.if.then267_crit_edge, label %if.then219.if.end224_crit_edge

if.then219.if.end224_crit_edge:                   ; preds = %if.then219
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end224

if.then219.if.then267_crit_edge:                  ; preds = %if.then219
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then267

if.end224:                                        ; preds = %if.then219.if.end224_crit_edge, %for.end.if.end224_crit_edge
  %attr_b.6 = phi ptr [ %attr_b.5, %for.end.if.end224_crit_edge ], [ %call220, %if.then219.if.end224_crit_edge ]
  %sub225 = sub i64 %15, %bytes
  %i_valid226 = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 1
  %179 = ptrtoint ptr %i_valid226 to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %i_valid226, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %180)
  %cmp228.not = icmp ugt i64 %add, %180
  %sub231 = sub i64 %180, %bytes
  %181 = call i64 @llvm.umin.i64(i64 %180, i64 %vbo)
  %valid_size.0 = select i1 %cmp228.not, i64 %181, i64 %sub231
  %sub238 = sub i64 %18, %bytes
  %182 = call i64 @llvm.bswap.i64(i64 %sub238)
  %alloc_size239 = getelementptr inbounds %struct.ATTRIB, ptr %attr_b.6, i32 0, i32 7, i32 0, i32 5
  %183 = ptrtoint ptr %alloc_size239 to i32
  call void @__asan_store8_noabort(i32 %183)
  store i64 %182, ptr %alloc_size239, align 8
  %184 = call i64 @llvm.bswap.i64(i64 %sub225)
  %data_size240 = getelementptr inbounds %struct.ATTRIB, ptr %attr_b.6, i32 0, i32 7, i32 0, i32 6
  %185 = ptrtoint ptr %data_size240 to i32
  call void @__asan_store8_noabort(i32 %185)
  store i64 %184, ptr %data_size240, align 8
  %186 = call i64 @llvm.umin.i64(i64 %valid_size.0, i64 %sub225)
  %187 = call i64 @llvm.bswap.i64(i64 %186)
  %valid_size248 = getelementptr inbounds %struct.ATTRIB, ptr %attr_b.6, i32 0, i32 7, i32 0, i32 7
  %188 = ptrtoint ptr %valid_size248 to i32
  call void @__asan_store8_noabort(i32 %188)
  store i64 %187, ptr %valid_size248, align 8
  %189 = ptrtoint ptr %dealloc to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %dealloc, align 4
  %conv249 = zext i32 %190 to i64
  %191 = ptrtoint ptr %cluster_bits to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %cluster_bits, align 8
  %sh_prom252 = zext i8 %192 to i64
  %shl253 = shl i64 %conv249, %sh_prom252
  %sub254 = sub i64 %total_size.0, %shl253
  %flags.i436 = getelementptr inbounds %struct.ATTRIB, ptr %attr_b.6, i32 0, i32 5
  %193 = ptrtoint ptr %flags.i436 to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %flags.i436, align 4
  %195 = and i16 %194, 384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %195)
  %tobool.i437.not = icmp eq i16 %195, 0
  br i1 %tobool.i437.not, label %if.end224.out.thread481_crit_edge, label %if.then256

if.end224.out.thread481_crit_edge:                ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread481

if.then256:                                       ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #10
  %196 = call i64 @llvm.bswap.i64(i64 %sub254)
  %total_size257 = getelementptr inbounds %struct.ATTRIB, ptr %attr_b.6, i32 0, i32 7, i32 0, i32 8
  %197 = ptrtoint ptr %total_size257 to i32
  call void @__asan_store8_noabort(i32 %197)
  store i64 %196, ptr %total_size257, align 8
  br label %out.thread481

out.thread481:                                    ; preds = %if.then256, %if.end224.out.thread481_crit_edge
  %198 = ptrtoint ptr %mi_b to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %mi_b, align 4
  %dirty259 = getelementptr inbounds %struct.mft_inode, ptr %199, i32 0, i32 5
  %200 = ptrtoint ptr %dirty259 to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 1, ptr %dirty259, align 4
  %201 = ptrtoint ptr %i_valid226 to i32
  call void @__asan_store8_noabort(i32 %201)
  store i64 %valid_size.0, ptr %i_valid226, align 8
  %vfs_inode261 = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 11
  %i_size = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 11, i32 14
  %202 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %202)
  store i64 %sub225, ptr %i_size, align 8
  call void @inode_set_bytes(ptr noundef %vfs_inode261, i64 noundef %sub254) #8
  %ni_flags = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 10
  %203 = ptrtoint ptr %ni_flags to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %ni_flags, align 4
  %or = or i32 %204, 256
  store i32 %or, ptr %ni_flags, align 4
  call void @__mark_inode_dirty(ptr noundef %vfs_inode261, i32 noundef 7) #8
  call void @up_write(ptr noundef %0) #8
  br label %cleanup270

out.thread487:                                    ; preds = %if.then37, %land.lhs.true.out.thread487_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new_valid) #8
  call void @up_write(ptr noundef %0) #8
  br label %cleanup270

out:                                              ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new_valid) #8
  br label %if.then267

if.then267:                                       ; preds = %out, %if.then219.if.then267_crit_edge, %if.end208.if.then267_crit_edge, %if.end191.if.then267_crit_edge, %if.then187.if.then267_crit_edge, %if.end177.if.then267_crit_edge, %cleanup.thread, %if.else67.if.then267_crit_edge, %if.else64.if.then267_crit_edge
  %err.7464 = phi i32 [ %call32, %out ], [ %err.2.ph, %cleanup.thread ], [ -2, %if.then219.if.then267_crit_edge ], [ -22, %if.else67.if.then267_crit_edge ], [ -22, %if.else64.if.then267_crit_edge ], [ -22, %if.end191.if.then267_crit_edge ], [ -22, %if.end208.if.then267_crit_edge ], [ -22, %if.then187.if.then267_crit_edge ], [ -22, %if.end177.if.then267_crit_edge ]
  call void @up_write(ptr noundef %0) #8
  %vfs_inode268 = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 11
  call void @make_bad_inode(ptr noundef %vfs_inode268) #8
  br label %cleanup270

cleanup270:                                       ; preds = %if.then267, %out.thread487, %out.thread481, %if.end15.cleanup270_crit_edge, %if.end6.cleanup270_crit_edge, %if.end.cleanup270_crit_edge, %entry.cleanup270_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup270_crit_edge ], [ -2, %if.end.cleanup270_crit_edge ], [ 0, %if.end6.cleanup270_crit_edge ], [ -22, %if.end15.cleanup270_crit_edge ], [ %err.7464, %if.then267 ], [ 0, %out.thread481 ], [ 0, %out.thread487 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vcn) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dealloc) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mi_b) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mi3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le_b) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %attr) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_setsize(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @run_collapse_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @al_find_ex(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ni_enum_attr_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @make_bad_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @attr_punch_hole(ptr noundef %ni, i64 noundef %vbo, i64 noundef %bytes, ptr noundef writeonly %frame_size) local_unnamed_addr #0 align 64 {
entry:
  %le = alloca ptr, align 4
  %le_b = alloca ptr, align 4
  %mi3 = alloca ptr, align 4
  %mi_b = alloca ptr, align 4
  %vcn = alloca i32, align 4
  %dealloc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 8
  %run1 = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 8, i32 0, i32 2, i32 6, i32 1
  %sbi2 = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %1 = ptrtoint ptr %sbi2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sbi2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le) #8
  %3 = ptrtoint ptr %le to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %le, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le_b) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mi3) #8
  %4 = ptrtoint ptr %mi3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %mi3, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mi_b) #8
  %5 = ptrtoint ptr %mi_b to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %mi_b, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vcn) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dealloc) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %bytes)
  %tobool.not = icmp eq i64 %bytes, 0
  br i1 %tobool.not, label %entry.cleanup154_crit_edge, label %if.end

entry.cleanup154_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup154

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %le_b to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %le_b, align 4
  %call = call ptr @ni_find_attr(ptr noundef %ni, ptr noundef null, ptr noundef nonnull %le_b, i32 noundef -2147483648, ptr noundef null, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull %mi_b) #8
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.end.cleanup154_crit_edge, label %if.end6

if.end.cleanup154_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup154

if.end6:                                          ; preds = %if.end
  %non_res = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 2
  %7 = ptrtoint ptr %non_res to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %non_res, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool7.not = icmp eq i8 %8, 0
  br i1 %tobool7.not, label %if.then8, label %if.end21

if.then8:                                         ; preds = %if.end6
  call void @__asan_load4_noabort(i32 16)
  %9 = load i32, ptr inttoptr (i32 16 to ptr), align 16
  %10 = call i32 @llvm.bswap.i32(i32 %9)
  %conv = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %vbo)
  %cmp = icmp ult i64 %conv, %vbo
  br i1 %cmp, label %if.then8.cleanup154_crit_edge, label %if.end12

if.then8.cleanup154_crit_edge:                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup154

if.end12:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %conv13 = trunc i64 %vbo to i32
  %add = add i64 %bytes, %vbo
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv)
  %cmp15 = icmp ult i64 %add, %conv
  %extract.t = trunc i64 %add to i32
  %cond.off0 = select i1 %cmp15, i32 %extract.t, i32 %10
  %11 = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 7
  %data_off.i = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %data_off.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %data_off.i, align 4
  %14 = call i16 @llvm.bswap.i16(i16 %13) #8
  %conv.i = zext i16 %14 to i32
  %add.ptr.i = getelementptr i8, ptr %call, i32 %conv.i
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %conv13
  %sub = sub i32 %cond.off0, %conv13
  %15 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub)
  br label %cleanup154

if.end21:                                         ; preds = %if.end6
  %flags.i = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 5
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %flags.i, align 4
  %18 = and i16 %17, 384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.i.not = icmp eq i16 %18, 0
  br i1 %tobool.i.not, label %if.end21.cleanup154_crit_edge, label %if.end24

if.end21.cleanup154_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup154

if.end24:                                         ; preds = %if.end21
  %19 = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 7
  %alloc_size25 = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 7, i32 0, i32 5
  %20 = ptrtoint ptr %alloc_size25 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %alloc_size25, align 8
  %22 = call i64 @llvm.bswap.i64(i64 %21)
  %total_size26 = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 7, i32 0, i32 8
  %23 = ptrtoint ptr %total_size26 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %total_size26, align 8
  %25 = call i64 @llvm.bswap.i64(i64 %24)
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %vbo)
  %cmp27.not = icmp ugt i64 %22, %vbo
  br i1 %cmp27.not, label %if.end30, label %if.end24.cleanup154_crit_edge

if.end24.cleanup154_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup154

if.end30:                                         ; preds = %if.end24
  %cluster_size = getelementptr inbounds %struct.ntfs_sb_info, ptr %2, i32 0, i32 3
  %26 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cluster_size, align 8
  %c_unit = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 7, i32 0, i32 3
  %28 = ptrtoint ptr %c_unit to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %c_unit, align 2
  %conv31 = zext i8 %29 to i32
  %shl = shl i32 %27, %conv31
  %sub32 = add i32 %shl, -1
  %add33 = add i64 %bytes, %vbo
  %30 = call i64 @llvm.umin.i64(i64 %add33, i64 %22)
  %sub38 = sub i64 %30, %vbo
  %conv39 = zext i32 %sub32 to i64
  %and = and i64 %conv39, %vbo
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool40.not = icmp eq i64 %and, 0
  %and42 = and i64 %sub38, %conv39
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and42)
  %tobool43.not = icmp eq i64 %and42, 0
  %or.cond = select i1 %tobool40.not, i1 %tobool43.not, i1 false
  br i1 %or.cond, label %if.end50, label %if.then44

if.then44:                                        ; preds = %if.end30
  %cmp45 = icmp eq ptr %frame_size, null
  br i1 %cmp45, label %if.then44.cleanup154_crit_edge, label %if.end48

if.then44.cleanup154_crit_edge:                   ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup154

if.end48:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %frame_size to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %shl, ptr %frame_size, align 4
  br label %cleanup154

if.end50:                                         ; preds = %if.end30
  call void @down_write(ptr noundef %0) #8
  %cluster_bits = getelementptr inbounds %struct.ntfs_sb_info, ptr %2, i32 0, i32 10
  %32 = ptrtoint ptr %cluster_bits to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %cluster_bits, align 8
  %sh_prom = zext i8 %33 to i64
  %shr = lshr i64 %22, %sh_prom
  %conv52 = trunc i64 %shr to i32
  %shr56 = lshr i64 %vbo, %sh_prom
  %conv57 = trunc i64 %shr56 to i32
  %34 = ptrtoint ptr %vcn to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv57, ptr %vcn, align 4
  %shr61 = lshr i64 %sub38, %sh_prom
  %conv62 = trunc i64 %shr61 to i32
  %add63 = add i32 %conv57, %conv62
  %35 = ptrtoint ptr %dealloc to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %dealloc, align 4
  %36 = ptrtoint ptr %19 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %19, align 8
  %38 = call i64 @llvm.bswap.i64(i64 %37)
  %conv65 = trunc i64 %38 to i32
  %evcn = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 7, i32 0, i32 1
  %39 = ptrtoint ptr %evcn to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %evcn, align 8
  %41 = call i64 @llvm.bswap.i64(i64 %40)
  %42 = trunc i64 %41 to i32
  %conv67 = add i32 %42, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %conv57, i32 %conv65)
  %cmp68.not = icmp uge i32 %conv57, %conv65
  call void @__sanitizer_cov_trace_cmp4(i32 %conv67, i32 %conv57)
  %cmp70 = icmp ugt i32 %conv67, %conv57
  %or.cond258 = select i1 %cmp68.not, i1 %cmp70, i1 false
  %43 = ptrtoint ptr %le_b to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %le_b, align 4
  br i1 %or.cond258, label %if.then72, label %if.else

if.then72:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %le to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %le, align 4
  %46 = ptrtoint ptr %mi_b to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mi_b, align 4
  %48 = ptrtoint ptr %mi3 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %mi3, align 4
  br label %if.end86

if.else:                                          ; preds = %if.end50
  %tobool73.not = icmp eq ptr %44, null
  br i1 %tobool73.not, label %if.else.if.then151_crit_edge, label %if.else75

if.else.if.then151_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then151

if.else75:                                        ; preds = %if.else
  %49 = ptrtoint ptr %le to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %44, ptr %le, align 4
  %call76 = call ptr @ni_find_attr(ptr noundef %ni, ptr noundef nonnull %call, ptr noundef nonnull %le, i32 noundef -2147483648, ptr noundef null, i8 noundef zeroext 0, ptr noundef nonnull %vcn, ptr noundef nonnull %mi3) #8
  %tobool77.not = icmp eq ptr %call76, null
  br i1 %tobool77.not, label %if.else75.if.then151_crit_edge, label %if.end79

if.else75.if.then151_crit_edge:                   ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then151

if.end79:                                         ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #10
  %50 = getelementptr inbounds %struct.ATTRIB, ptr %call76, i32 0, i32 7
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %50, align 8
  %53 = call i64 @llvm.bswap.i64(i64 %52)
  %conv81 = trunc i64 %53 to i32
  %evcn82 = getelementptr inbounds %struct.ATTRIB, ptr %call76, i32 0, i32 7, i32 0, i32 1
  %54 = ptrtoint ptr %evcn82 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %evcn82, align 8
  %56 = call i64 @llvm.bswap.i64(i64 %55)
  %57 = trunc i64 %56 to i32
  %conv84 = add i32 %57, 1
  br label %if.end86

if.end86:                                         ; preds = %if.end79, %if.then72
  %svcn.0 = phi i32 [ %conv65, %if.then72 ], [ %conv81, %if.end79 ]
  %attr.0 = phi ptr [ %call, %if.then72 ], [ %call76, %if.end79 ]
  %evcn1.0 = phi i32 [ %conv67, %if.then72 ], [ %conv84, %if.end79 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %svcn.0, i32 %add63)
  %cmp87294 = icmp ult i32 %svcn.0, %add63
  br i1 %cmp87294, label %while.body.lr.ph, label %if.end86.out_crit_edge

if.end86.out_crit_edge:                           ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

while.body.lr.ph:                                 ; preds = %if.end86
  %rno.i = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %cleanup138.while.body_crit_edge, %while.body.lr.ph
  %evcn1.1299 = phi i32 [ %evcn1.0, %while.body.lr.ph ], [ %conv137, %cleanup138.while.body_crit_edge ]
  %attr.1296 = phi ptr [ %attr.0, %while.body.lr.ph ], [ %call129, %cleanup138.while.body_crit_edge ]
  %svcn.1295 = phi i32 [ %svcn.0, %while.body.lr.ph ], [ %conv134, %cleanup138.while.body_crit_edge ]
  %58 = getelementptr inbounds %struct.ATTRIB, ptr %attr.1296, i32 0, i32 7
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %58, align 8
  %61 = call i64 @llvm.bswap.i64(i64 %60) #8
  %conv.i259 = trunc i64 %61 to i32
  %evcn2.i = getelementptr inbounds %struct.ATTRIB, ptr %attr.1296, i32 0, i32 7, i32 0, i32 1
  %62 = ptrtoint ptr %evcn2.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %evcn2.i, align 8
  %64 = call i64 @llvm.bswap.i64(i64 %63) #8
  %conv3.i = trunc i64 %64 to i32
  %add.i = add i32 %conv3.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i259)
  %cmp.not.i = icmp ugt i32 %add.i, %conv.i259
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %while.body.if.end92_crit_edge

while.body.if.end92_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

lor.lhs.false.i:                                  ; preds = %while.body
  %call.i = call zeroext i1 @run_is_mapped_full(ptr noundef %run1, i32 noundef %conv.i259, i32 noundef %conv3.i) #8
  br i1 %call.i, label %lor.lhs.false.i.if.end92_crit_edge, label %if.end.i

lor.lhs.false.i.if.end92_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_cmp4(i32 %svcn.1295, i32 %conv3.i)
  %cmp6.i = icmp ugt i32 %svcn.1295, %conv3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %svcn.1295, i32 %conv.i259)
  %cmp9.i = icmp ult i32 %svcn.1295, %conv.i259
  %or.cond.i = select i1 %cmp6.i, i1 true, i1 %cmp9.i
  br i1 %or.cond.i, label %if.end.i.if.then151_crit_edge, label %attr_load_runs.exit

if.end.i.if.then151_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then151

attr_load_runs.exit:                              ; preds = %if.end.i
  %size.i = getelementptr inbounds %struct.ATTRIB, ptr %attr.1296, i32 0, i32 1
  %65 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %size.i, align 4
  %67 = call i32 @llvm.bswap.i32(i32 %66) #8
  %run_off13.i = getelementptr inbounds %struct.ATTRIB, ptr %attr.1296, i32 0, i32 7, i32 0, i32 2
  %68 = ptrtoint ptr %run_off13.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %run_off13.i, align 8
  %70 = call i16 @llvm.bswap.i16(i16 %69) #8
  %71 = ptrtoint ptr %sbi2 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %sbi2, align 4
  %73 = ptrtoint ptr %rno.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %rno.i, align 8
  %conv16.i = zext i16 %70 to i32
  %add.ptr.i260 = getelementptr i8, ptr %attr.1296, i32 %conv16.i
  %sub.i = sub i32 %67, %conv16.i
  %call18.i = call i32 @run_unpack_ex(ptr noundef %run1, ptr noundef %72, i32 noundef %74, i32 noundef %conv.i259, i32 noundef %conv3.i, i32 noundef %svcn.1295, ptr noundef %add.ptr.i260, i32 noundef %sub.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call18.i)
  %tobool90.not = icmp sgt i32 %call18.i, -1
  br i1 %tobool90.not, label %attr_load_runs.exit.if.end92_crit_edge, label %attr_load_runs.exit.if.then151_crit_edge

attr_load_runs.exit.if.then151_crit_edge:         ; preds = %attr_load_runs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then151

attr_load_runs.exit.if.end92_crit_edge:           ; preds = %attr_load_runs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.end92:                                         ; preds = %attr_load_runs.exit.if.end92_crit_edge, %lor.lhs.false.i.if.end92_crit_edge, %while.body.if.end92_crit_edge
  %75 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %vcn, align 4
  %77 = call i32 @llvm.umax.i32(i32 %76, i32 %svcn.1295)
  %78 = call i32 @llvm.umin.i32(i32 %add63, i32 %evcn1.1299)
  %sub107 = sub i32 %78, %77
  %79 = ptrtoint ptr %dealloc to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %dealloc, align 4
  %call108 = call fastcc i32 @run_deallocate_ex(ptr noundef %2, ptr noundef %run1, i32 noundef %77, i32 noundef %sub107, ptr noundef nonnull %dealloc, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.end111, label %if.end92.if.then151_crit_edge

if.end92.if.then151_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then151

if.end111:                                        ; preds = %if.end92
  %81 = ptrtoint ptr %dealloc to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %dealloc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %82)
  %cmp112 = icmp eq i32 %80, %82
  br i1 %cmp112, label %if.end111.if.end124_crit_edge, label %if.else115

if.end111.if.end124_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end124

if.else115:                                       ; preds = %if.end111
  %call116 = call zeroext i1 @run_add_entry(ptr noundef %run1, i32 noundef %77, i32 noundef -1, i32 noundef %sub107, i1 noundef zeroext false) #8
  br i1 %call116, label %if.end118, label %if.else115.if.then151_crit_edge

if.else115.if.then151_crit_edge:                  ; preds = %if.else115
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then151

if.end118:                                        ; preds = %if.else115
  %83 = ptrtoint ptr %mi3 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mi3, align 4
  %sub119 = sub i32 %evcn1.1299, %svcn.1295
  %call120 = call i32 @mi_pack_runs(ptr noundef %84, ptr noundef nonnull %attr.1296, ptr noundef %run1, i32 noundef %sub119) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.end118.if.end124_crit_edge, label %if.end118.if.then151_crit_edge

if.end118.if.then151_crit_edge:                   ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then151

if.end118.if.end124_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end124

if.end124:                                        ; preds = %if.end118.if.end124_crit_edge, %if.end111.if.end124_crit_edge
  call void @run_truncate(ptr noundef %run1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %evcn1.1299, i32 %conv52)
  %cmp125.not = icmp ult i32 %evcn1.1299, %conv52
  br i1 %cmp125.not, label %if.end128, label %if.end124.out_crit_edge

if.end124.out_crit_edge:                          ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end128:                                        ; preds = %if.end124
  %call129 = call ptr @ni_enum_attr_ex(ptr noundef %ni, ptr noundef nonnull %attr.1296, ptr noundef nonnull %le, ptr noundef nonnull %mi3) #8
  %tobool130.not = icmp eq ptr %call129, null
  br i1 %tobool130.not, label %if.end128.if.then151_crit_edge, label %cleanup138

if.end128.if.then151_crit_edge:                   ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then151

cleanup138:                                       ; preds = %if.end128
  %85 = getelementptr inbounds %struct.ATTRIB, ptr %call129, i32 0, i32 7
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %85, align 8
  %88 = call i64 @llvm.bswap.i64(i64 %87)
  %conv134 = trunc i64 %88 to i32
  %evcn135 = getelementptr inbounds %struct.ATTRIB, ptr %call129, i32 0, i32 7, i32 0, i32 1
  %89 = ptrtoint ptr %evcn135 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %evcn135, align 8
  %91 = call i64 @llvm.bswap.i64(i64 %90)
  %92 = trunc i64 %91 to i32
  %conv137 = add i32 %92, 1
  %cmp87 = icmp ugt i32 %add63, %conv134
  br i1 %cmp87, label %cleanup138.while.body_crit_edge, label %cleanup138.out_crit_edge

cleanup138.out_crit_edge:                         ; preds = %cleanup138
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

cleanup138.while.body_crit_edge:                  ; preds = %cleanup138
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

out:                                              ; preds = %cleanup138.out_crit_edge, %if.end124.out_crit_edge, %if.end86.out_crit_edge
  %93 = ptrtoint ptr %dealloc to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %dealloc, align 4
  %conv141 = zext i32 %94 to i64
  %95 = ptrtoint ptr %cluster_bits to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %cluster_bits, align 8
  %sh_prom144 = zext i8 %96 to i64
  %shl145 = shl i64 %conv141, %sh_prom144
  %sub146 = sub i64 %25, %shl145
  %97 = call i64 @llvm.bswap.i64(i64 %sub146)
  %98 = ptrtoint ptr %total_size26 to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %97, ptr %total_size26, align 8
  %99 = ptrtoint ptr %mi_b to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mi_b, align 4
  %dirty = getelementptr inbounds %struct.mft_inode, ptr %100, i32 0, i32 5
  %101 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 1, ptr %dirty, align 4
  %vfs_inode = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 11
  call void @inode_set_bytes(ptr noundef %vfs_inode, i64 noundef %sub146) #8
  %ni_flags = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 10
  %102 = ptrtoint ptr %ni_flags to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %ni_flags, align 4
  %or = or i32 %103, 256
  store i32 %or, ptr %ni_flags, align 4
  call void @__mark_inode_dirty(ptr noundef %vfs_inode, i32 noundef 7) #8
  call void @up_write(ptr noundef %0) #8
  br label %cleanup154

if.then151:                                       ; preds = %if.end128.if.then151_crit_edge, %if.end118.if.then151_crit_edge, %if.else115.if.then151_crit_edge, %if.end92.if.then151_crit_edge, %attr_load_runs.exit.if.then151_crit_edge, %if.end.i.if.then151_crit_edge, %if.else75.if.then151_crit_edge, %if.else.if.then151_crit_edge
  %err.4.ph = phi i32 [ -22, %if.else75.if.then151_crit_edge ], [ -22, %if.else.if.then151_crit_edge ], [ %call108, %if.end92.if.then151_crit_edge ], [ -12, %if.else115.if.then151_crit_edge ], [ %call120, %if.end118.if.then151_crit_edge ], [ -22, %if.end128.if.then151_crit_edge ], [ -22, %if.end.i.if.then151_crit_edge ], [ %call18.i, %attr_load_runs.exit.if.then151_crit_edge ]
  call void @up_write(ptr noundef %0) #8
  %vfs_inode152 = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 11
  call void @make_bad_inode(ptr noundef %vfs_inode152) #8
  br label %cleanup154

cleanup154:                                       ; preds = %if.then151, %out, %if.end48, %if.then44.cleanup154_crit_edge, %if.end24.cleanup154_crit_edge, %if.end21.cleanup154_crit_edge, %if.end12, %if.then8.cleanup154_crit_edge, %if.end.cleanup154_crit_edge, %entry.cleanup154_crit_edge
  %retval.1 = phi i32 [ 557, %if.end48 ], [ 0, %entry.cleanup154_crit_edge ], [ -2, %if.end.cleanup154_crit_edge ], [ 0, %if.then8.cleanup154_crit_edge ], [ 0, %if.end12 ], [ -95, %if.end21.cleanup154_crit_edge ], [ 0, %if.end24.cleanup154_crit_edge ], [ -22, %if.then44.cleanup154_crit_edge ], [ %err.4.ph, %if.then151 ], [ 0, %out ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dealloc) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vcn) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mi_b) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mi3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le_b) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le) #8
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_as_free_ex(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_user_segments(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.named.register.sp = !{!12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ntfs3/attrib.c", i32 1232, i32 4}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!4 = distinct !{null, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../include/linux/mm.h", i32 717, i32 2}
!8 = distinct !{null, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!12 = !{!"sp"}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{!"auto-init"}
!23 = !{i64 2151355550}
!24 = !{!"branch_weights", i32 2000, i32 1}
!25 = !{i64 2150604587, i64 2150605078, i64 2150604624, i64 2150604680, i64 2150604714, i64 2150604738, i64 2150604779, i64 2150604800, i64 2150604828, i64 2150604862}
!26 = !{i64 2153787661}
!27 = !{i64 2152211138}
!28 = !{i64 2152211345}
!29 = !{i64 2153790432}
!30 = !{!"branch_weights", i32 1, i32 2000}
!31 = !{i64 2153337200, i64 2153337683, i64 2153337237, i64 2153337293, i64 2153337327, i64 2153337351, i64 2153337392, i64 2153337413, i64 2153337441, i64 2153337475}
!32 = !{i64 2148784318}
!33 = !{i64 2148699027, i64 2148699059, i64 2148699088, i64 2148699122, i64 2148699153, i64 2148699176}
!34 = !{i64 2148784547}
!35 = !{i64 2148520440, i64 2148520445, i64 2148520458, i64 2148520502, i64 2148520536, i64 2148520557}
!36 = !{i32 0, i32 33}
!37 = !{i64 2151354479}
!38 = !{i64 2148704700, i64 2148704732, i64 2148704761, i64 2148704795, i64 2148704826, i64 2148704849}
!39 = !{i64 2148793805}
