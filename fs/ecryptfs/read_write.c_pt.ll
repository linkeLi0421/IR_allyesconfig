; ModuleID = '/llk/IR_all_yes/fs/ecryptfs/read_write.c_pt.bc'
source_filename = "../fs/ecryptfs/read_write.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.ecryptfs_inode_info = type { %struct.inode, ptr, %struct.mutex, %struct.atomic_t, ptr, %struct.ecryptfs_crypt_stat }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.79 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ecryptfs_crypt_stat = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, [32 x i8], [64 x i8], [16 x i8], %struct.list_head, %struct.mutex, %struct.mutex, %struct.mutex }
%struct.page = type { i32, %union.anon.6, %union.anon.70, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.70 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.64, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.38 }
%struct.llist_node = type { ptr }
%union.anon.38 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.40 }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.64 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@ecryptfs_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\013%s: Error getting page at index [%ld] from eCryptfs inode mapping; rc = [%d]\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ecryptfs_write\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fs/ecryptfs/read_write.c\00", [39 x i8] zeroinitializer }, align 32
@ecryptfs_write._entry_ptr = internal global ptr @ecryptfs_write._entry, section ".printk_index", align 4
@ecryptfs_write._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: Error encrypting page; rc = [%d]\0A\00", [56 x i8] zeroinitializer }, align 32
@ecryptfs_write._entry_ptr.5 = internal global ptr @ecryptfs_write._entry.3, section ".printk_index", align 4
@ecryptfs_write._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013Problem with ecryptfs_write_inode_size_to_metadata; rc = [%d]\0A\00", [63 x i8] zeroinitializer }, align 32
@ecryptfs_write._entry_ptr.8 = internal global ptr @ecryptfs_write._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 137, i32 4 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 179, i32 4 }
@___asan_gen_.35 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.39 = private constant [28 x i8] c"../fs/ecryptfs/read_write.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 193, i32 5 }
@___asan_gen_.42 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 44, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 260, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 717, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 271, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @ecryptfs_write._entry, ptr @ecryptfs_write._entry.3, ptr @ecryptfs_write._entry.6, ptr @ecryptfs_write._entry_ptr, ptr @ecryptfs_write._entry_ptr.5, ptr @ecryptfs_write._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_write._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_write._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecryptfs_write_lower(ptr noundef %ecryptfs_inode, ptr noundef %data, i64 noundef %offset, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %offset.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %offset.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %offset, ptr %offset.addr, align 8
  %lower_file1 = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %ecryptfs_inode, i32 0, i32 4
  %1 = ptrtoint ptr %lower_file1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lower_file1, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = call i32 @kernel_write(ptr noundef nonnull %2, ptr noundef %data, i32 noundef %size, ptr noundef nonnull %offset.addr) #8
  call void @__mark_inode_dirty(ptr noundef %ecryptfs_inode, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecryptfs_write_lower_page_segment(ptr noundef %ecryptfs_inode, ptr noundef %page_for_lower, i32 noundef %offset_in_page, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %offset.addr.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.page, ptr %page_for_lower, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %conv = zext i32 %1 to i64
  %shl = shl nuw nsw i64 %conv, 12
  %conv1 = zext i32 %offset_in_page to i64
  %add = add nuw nsw i64 %shl, %conv1
  tail call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 44) #8
  %2 = ptrtoint ptr %page_for_lower to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %page_for_lower, align 4
  %shr.i.i = lshr i32 %3, 30
  %4 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i, label %entry.if.then.i_crit_edge [
    i32 2, label %entry.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %5 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp2.i.not.i = icmp eq i32 %5, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %page_for_lower) #8
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %page_for_lower) #8
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %offset.addr.i)
  %6 = ptrtoint ptr %offset.addr.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %add, ptr %offset.addr.i, align 8
  %lower_file1.i = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %ecryptfs_inode, i32 0, i32 4
  %7 = ptrtoint ptr %lower_file1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lower_file1.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %kmap.exit.ecryptfs_write_lower.exit_crit_edge, label %if.end.i

kmap.exit.ecryptfs_write_lower.exit_crit_edge:    ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ecryptfs_write_lower.exit

if.end.i:                                         ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @kernel_write(ptr noundef nonnull %8, ptr noundef %addr.0.i, i32 noundef %size, ptr noundef nonnull %offset.addr.i) #8
  call void @__mark_inode_dirty(ptr noundef %ecryptfs_inode, i32 noundef 1) #8
  br label %ecryptfs_write_lower.exit

ecryptfs_write_lower.exit:                        ; preds = %if.end.i, %kmap.exit.ecryptfs_write_lower.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.end.i ], [ -5, %kmap.exit.ecryptfs_write_lower.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %offset.addr.i)
  call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 55) #8
  %9 = ptrtoint ptr %page_for_lower to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %page_for_lower, align 4
  %shr.i.i7 = lshr i32 %10, 30
  %11 = zext i32 %shr.i.i7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %shr.i.i7, label %ecryptfs_write_lower.exit.kunmap.exit_crit_edge [
    i32 2, label %ecryptfs_write_lower.exit.if.end.i10_crit_edge
    i32 3, label %is_highmem_idx.exit.i9
  ]

ecryptfs_write_lower.exit.if.end.i10_crit_edge:   ; preds = %ecryptfs_write_lower.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i10

ecryptfs_write_lower.exit.kunmap.exit_crit_edge:  ; preds = %ecryptfs_write_lower.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit

is_highmem_idx.exit.i9:                           ; preds = %ecryptfs_write_lower.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %12 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp2.i.not.i8 = icmp eq i32 %12, 2
  br i1 %cmp2.i.not.i8, label %is_highmem_idx.exit.i9.if.end.i10_crit_edge, label %is_highmem_idx.exit.i9.kunmap.exit_crit_edge

is_highmem_idx.exit.i9.kunmap.exit_crit_edge:     ; preds = %is_highmem_idx.exit.i9
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit

is_highmem_idx.exit.i9.if.end.i10_crit_edge:      ; preds = %is_highmem_idx.exit.i9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i10

if.end.i10:                                       ; preds = %is_highmem_idx.exit.i9.if.end.i10_crit_edge, %ecryptfs_write_lower.exit.if.end.i10_crit_edge
  call void @kunmap_high(ptr noundef %page_for_lower) #8
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i10, %is_highmem_idx.exit.i9.kunmap.exit_crit_edge, %ecryptfs_write_lower.exit.kunmap.exit_crit_edge
  %13 = call i32 @llvm.smin.i32(i32 %retval.0.i, i32 0)
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecryptfs_write(ptr noundef %ecryptfs_inode, ptr nocapture noundef readonly %data, i64 noundef %offset, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %ecryptfs_inode, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %ecryptfs_inode, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %ecryptfs_inode, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !35
  %and.i.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #8
  %1 = tail call ptr @llvm.returnaddress(i32 0) #8
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #8
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %2) #8
  tail call void @trace_hardirqs_on() #8
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %3 = tail call ptr @llvm.returnaddress(i32 0) #8
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #8
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %4) #8
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !36
  %and.i.i.i.i170 = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i170)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i170, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !37

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #8, !srcloc !38
  %6 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !39
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !40
  %8 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %9, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %9, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !41
  %10 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !42
  %12 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %13, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  %crypt_stat2 = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %ecryptfs_inode, i32 0, i32 5
  %14 = tail call i64 @llvm.smin.i64(i64 %11, i64 %offset)
  %conv = zext i32 %size to i64
  %add = add i64 %conv, %offset
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %14)
  %cmp3216 = icmp sgt i64 %add, %14
  br i1 %cmp3216, label %i_size_read.exit.while.body_crit_edge, label %i_size_read.exit.cleanup104_crit_edge

i_size_read.exit.cleanup104_crit_edge:            ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup104

i_size_read.exit.while.body_crit_edge:            ; preds = %i_size_read.exit
  br label %while.body

while.cond:                                       ; preds = %put_page.exit
  %conv75 = zext i32 %num_bytes.2 to i64
  %add76 = add i64 %pos.1218, %conv75
  %cmp3 = icmp sgt i64 %add, %add76
  br i1 %cmp3, label %while.cond.while.body_crit_edge, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %i_size_read.exit.while.body_crit_edge
  %pos.1218 = phi i64 [ %add76, %while.cond.while.body_crit_edge ], [ %14, %i_size_read.exit.while.body_crit_edge ]
  %data_offset.0217 = phi i64 [ %data_offset.1, %while.cond.while.body_crit_edge ], [ 0, %i_size_read.exit.while.body_crit_edge ]
  %15 = lshr i64 %pos.1218, 12
  %16 = trunc i64 %pos.1218 to i32
  %conv6 = and i32 %16, 4095
  %sub = sub nuw nsw i32 4096, %conv6
  %sub9 = sub i64 %add, %pos.1218
  %17 = tail call i32 @llvm.read_register.i32(metadata !25) #8
  %and.i171 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i171 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stack.i.i.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  %and1.i.i.i.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not.i172 = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not.i172, label %while.body.if.end13_crit_edge, label %fatal_signal_pending.exit

while.body.if.end13_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

fatal_signal_pending.exit:                        ; preds = %while.body
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 116, i32 1
  %25 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %signal.i.i, align 4
  %27 = and i32 %26, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not = icmp eq i32 %27, 0
  br i1 %tobool.not, label %fatal_signal_pending.exit.if.end13_crit_edge, label %fatal_signal_pending.exit.while.end_crit_edge

fatal_signal_pending.exit.while.end_crit_edge:    ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

fatal_signal_pending.exit.if.end13_crit_edge:     ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.end13:                                         ; preds = %fatal_signal_pending.exit.if.end13_crit_edge, %while.body.if.end13_crit_edge
  %conv14 = zext i32 %sub to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub9, i64 %conv14)
  %cmp15 = icmp slt i64 %sub9, %conv14
  %conv18 = trunc i64 %sub9 to i32
  %spec.select = select i1 %cmp15, i32 %conv18, i32 %sub
  call void @__sanitizer_cov_trace_cmp8(i64 %pos.1218, i64 %offset)
  %cmp20 = icmp slt i64 %pos.1218, %offset
  br i1 %cmp20, label %if.then22, label %if.end13.if.end30_crit_edge

if.end13.if.end30_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then22:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %sub23 = sub i64 %offset, %pos.1218
  %conv24 = zext i32 %spec.select to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub23, i64 %conv24)
  %cmp25 = icmp slt i64 %sub23, %conv24
  %conv28 = trunc i64 %sub23 to i32
  %spec.select168 = select i1 %cmp25, i32 %conv28, i32 %spec.select
  br label %if.end30

if.end30:                                         ; preds = %if.then22, %if.end13.if.end30_crit_edge
  %num_bytes.2 = phi i32 [ %spec.select168, %if.then22 ], [ %spec.select, %if.end13.if.end30_crit_edge ]
  %conv31 = and i64 %15, 4294967295
  %call32 = tail call ptr @ecryptfs_get_locked_page(ptr noundef %ecryptfs_inode, i64 noundef %conv31) #8
  %cmp.i = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then34, label %if.end37

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %conv5.le = trunc i64 %15 to i32
  %28 = ptrtoint ptr %call32 to i32
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv5.le, i32 noundef %28) #11
  br label %cleanup104

if.end37:                                         ; preds = %if.end30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %29 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %29, 512
  %30 = tail call i32 @llvm.read_register.i32(metadata !25) #8
  %and.i.i.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %33, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !43
  %34 = tail call i32 @llvm.read_register.i32(metadata !25) #8
  %and.i.i.i1.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 213
  %38 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %39, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !44
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %call32, i32 noundef %or.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv6)
  %tobool41.not = icmp eq i32 %conv6, 0
  %or.cond = select i1 %cmp20, i1 true, i1 %tobool41.not
  br i1 %or.cond, label %if.then42, label %if.end37.if.end44_crit_edge

if.end37.if.end44_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then42:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %call.i.i, i32 %conv6
  %40 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub)
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end37.if.end44_crit_edge
  br i1 %cmp20, label %if.end44.do.end56_crit_edge, label %if.then47

if.end44.do.end56_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end56

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr48 = getelementptr i8, ptr %call.i.i, i32 %conv6
  %idx.ext = trunc i64 %data_offset.0217 to i32
  %add.ptr49 = getelementptr i8, ptr %data, i32 %idx.ext
  %41 = call ptr @memcpy(ptr %add.ptr48, ptr %add.ptr49, i32 %num_bytes.2)
  %conv50 = zext i32 %num_bytes.2 to i64
  %add51 = add i64 %data_offset.0217, %conv50
  br label %do.end56

do.end56:                                         ; preds = %if.then47, %if.end44.do.end56_crit_edge
  %data_offset.1 = phi i64 [ %add51, %if.then47 ], [ %data_offset.0217, %if.end44.do.end56_crit_edge ]
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !45
  %42 = tail call i32 @llvm.read_register.i32(metadata !25) #8
  %and.i.i.i1.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 213
  %46 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %47, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !46
  %48 = tail call i32 @llvm.read_register.i32(metadata !25) #8
  %and.i.i.i.i173 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i.i173 to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %51, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @flush_dcache_page(ptr noundef %call32) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !47
  %52 = getelementptr inbounds %struct.page, ptr %call32, i32 0, i32 1
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %52, align 4
  %and.i.i.i.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !48

if.then.i.i.i:                                    ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %call32, ptr noundef nonnull @.str.10) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !49
  unreachable

SetPageUptodate.exit:                             ; preds = %do.end56
  tail call void @_set_bit(i32 noundef 2, ptr noundef %call32) #8
  tail call void @unlock_page(ptr noundef %call32) #8
  %55 = ptrtoint ptr %crypt_stat2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %crypt_stat2, align 4
  %and59 = and i32 %56, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.else63, label %if.then61

if.then61:                                        ; preds = %SetPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call62 = tail call i32 @ecryptfs_encrypt_page(ptr noundef %call32) #8
  br label %if.end66

if.else63:                                        ; preds = %SetPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv64 = trunc i64 %data_offset.1 to i32
  %call65 = tail call i32 @ecryptfs_write_lower_page_segment(ptr noundef %ecryptfs_inode, ptr noundef %call32, i32 noundef %conv6, i32 noundef %conv64)
  br label %if.end66

if.end66:                                         ; preds = %if.else63, %if.then61
  %rc.1 = phi i32 [ %call62, %if.then61 ], [ %call65, %if.else63 ]
  %57 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %52, align 4
  %and.i.i = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i174 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i174, label %if.end.i.i, label %if.then.i.i176, !prof !48

if.then.i.i176:                                   ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i175 = add i32 %58, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %call32 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i176
  %retval.0.i.i = phi i32 [ %sub.i.i175, %if.then.i.i176 ], [ %59, %if.end.i.i ]
  %60 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %60, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %61 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp.i.i.i.i = icmp eq i32 %62, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !37

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %63 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %63, ptr noundef nonnull @.str.12) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !50
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !51
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %64 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !52
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %64, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ecryptfs_write, %if.then.i.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !54

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %60, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #8
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %60) #8
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1)
  %tobool67.not = icmp eq i32 %rc.1, 0
  br i1 %tobool67.not, label %while.cond, label %do.end71

do.end71:                                         ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %rc.1) #11
  br label %cleanup104

while.end:                                        ; preds = %fatal_signal_pending.exit.while.end_crit_edge, %while.cond.while.end_crit_edge
  %pos.1.lcssa = phi i64 [ %add76, %while.cond.while.end_crit_edge ], [ %pos.1218, %fatal_signal_pending.exit.while.end_crit_edge ]
  %cmp3.lcssa = phi i1 [ false, %while.cond.while.end_crit_edge ], [ true, %fatal_signal_pending.exit.while.end_crit_edge ]
  %rc.3 = phi i32 [ 0, %while.cond.while.end_crit_edge ], [ -4, %fatal_signal_pending.exit.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %pos.1.lcssa, i64 %11)
  %cmp80 = icmp sgt i64 %pos.1.lcssa, %11
  br i1 %cmp80, label %if.then82, label %while.end.cleanup104_crit_edge

while.end.cleanup104_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup104

if.then82:                                        ; preds = %while.end
  %65 = tail call i32 @llvm.read_register.i32(metadata !25) #8
  %and.i.i.i.i177 = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i.i177 to ptr
  %preempt_count.i.i.i178 = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %preempt_count.i.i.i178 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %preempt_count.i.i.i178, align 4
  %add.i.i = add i32 %68, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i178, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %69 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not.i.i179 = icmp eq i32 %69, 0
  br i1 %tobool.not.i.i179, label %if.then82.i_size_write.exit_crit_edge, label %land.lhs.true.i.i

if.then82.i_size_write.exit_crit_edge:            ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #10
  br label %i_size_write.exit

land.lhs.true.i.i:                                ; preds = %if.then82
  %70 = tail call i32 @llvm.read_register.i32(metadata !25) #8
  %and.i.i.i.i.i180 = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i.i.i.i180 to ptr
  %preempt_count.i.i.i.i181 = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %preempt_count.i.i.i.i181 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %preempt_count.i.i.i.i181, align 4
  %add.i.i.i182 = add i32 %73, 1
  store volatile i32 %add.i.i.i182, ptr %preempt_count.i.i.i.i181, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !56
  %74 = tail call i32 @llvm.read_register.i32(metadata !25) #8
  %and.i.i.i183 = and i32 %74, -16384
  %75 = inttoptr i32 %and.i.i.i183 to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %77
  %78 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx.i.i, align 4
  %add.i28.i = add i32 %79, ptrtoint (ptr @lockdep_recursion to i32)
  %80 = inttoptr i32 %add.i28.i to ptr
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %80, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !57
  %83 = tail call i32 @llvm.read_register.i32(metadata !25) #8
  %and.i.i.i7.i.i = and i32 %83, -16384
  %84 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %86, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool20.not.i.i = icmp eq i32 %82, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.i_size_write.exit_crit_edge

land.lhs.true.i.i.i_size_write.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i_size_write.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %87 = tail call i32 @llvm.read_register.i32(metadata !25) #8
  %and.i.i.i29.i = and i32 %87, -16384
  %88 = inttoptr i32 %and.i.i.i29.i to ptr
  %preempt_count.i.i30.i = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %preempt_count.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %preempt_count.i.i30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp.i.i = icmp eq i32 %90, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.i_size_write.exit_crit_edge

land.rhs.i.i.i_size_write.exit_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i_size_write.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %91 = tail call i32 @llvm.read_register.i32(metadata !25) #8
  %and.i.i.i9.i.i = and i32 %91, -16384
  %92 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %94, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !58
  %95 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %96
  %97 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %98, ptrtoint (ptr @hardirqs_enabled to i32)
  %99 = inttoptr i32 %add47.i.i to ptr
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %99, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !59
  %102 = tail call i32 @llvm.read_register.i32(metadata !25) #8
  %and.i.i.i12.i.i = and i32 %102, -16384
  %103 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %105, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool54.not.i.i = icmp eq i32 %101, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.i_size_write.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i_size_write.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.i_size_write.exit_crit_edge, label %if.then.i.i184, !prof !48

land.rhs58.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i_size_write.exit

if.then.i.i184:                                   ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 271, i32 noundef 9, ptr noundef null) #8
  br label %i_size_write.exit

i_size_write.exit:                                ; preds = %if.then.i.i184, %land.rhs58.i.i.i_size_write.exit_crit_edge, %land.rhs22.i.i.i_size_write.exit_crit_edge, %land.rhs.i.i.i_size_write.exit_crit_edge, %land.lhs.true.i.i.i_size_write.exit_crit_edge, %if.then82.i_size_write.exit_crit_edge
  %106 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i.i186 = add i32 %107, 1
  store i32 %inc.i.i.i.i186, ptr %i_size_seqcount.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !60
  %108 = tail call ptr @llvm.returnaddress(i32 0) #8
  %109 = ptrtoint ptr %108 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %109) #8
  %110 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %pos.1.lcssa, ptr %i_size18.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %109) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !61
  %111 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i = add i32 %112, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !62
  %113 = tail call i32 @llvm.read_register.i32(metadata !25) #8
  %and.i.i.i26.i = and i32 %113, -16384
  %114 = inttoptr i32 %and.i.i.i26.i to ptr
  %preempt_count.i.i27.i = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %preempt_count.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %preempt_count.i.i27.i, align 4
  %sub.i.i187 = add i32 %116, -1
  store volatile i32 %sub.i.i187, ptr %preempt_count.i.i27.i, align 4
  %117 = ptrtoint ptr %crypt_stat2 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %crypt_stat2, align 4
  %and84 = and i32 %118, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %i_size_write.exit.cleanup104_crit_edge, label %if.then86

i_size_write.exit.cleanup104_crit_edge:           ; preds = %i_size_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup104

if.then86:                                        ; preds = %i_size_write.exit
  %call87 = tail call i32 @ecryptfs_write_inode_size_to_metadata(ptr noundef %ecryptfs_inode) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.then86.cleanup104_crit_edge, label %do.end92

if.then86.cleanup104_crit_edge:                   ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup104

do.end92:                                         ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #10
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %call87) #11
  %spec.select169 = select i1 %cmp3.lcssa, i32 %rc.3, i32 %call87
  br label %cleanup104

cleanup104:                                       ; preds = %do.end92, %if.then86.cleanup104_crit_edge, %i_size_write.exit.cleanup104_crit_edge, %while.end.cleanup104_crit_edge, %do.end71, %if.then34, %i_size_read.exit.cleanup104_crit_edge
  %retval.0 = phi i32 [ %rc.3, %i_size_write.exit.cleanup104_crit_edge ], [ %rc.3, %while.end.cleanup104_crit_edge ], [ %spec.select169, %do.end92 ], [ %rc.3, %if.then86.cleanup104_crit_edge ], [ %rc.1, %do.end71 ], [ %28, %if.then34 ], [ 0, %i_size_read.exit.cleanup104_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ecryptfs_get_locked_page(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_encrypt_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_write_inode_size_to_metadata(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecryptfs_read_lower(ptr noundef %data, i64 noundef %offset, i32 noundef %size, ptr nocapture noundef readonly %ecryptfs_inode) local_unnamed_addr #0 align 64 {
entry:
  %offset.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %offset.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %offset, ptr %offset.addr, align 8
  %lower_file1 = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %ecryptfs_inode, i32 0, i32 4
  %1 = ptrtoint ptr %lower_file1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lower_file1, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = call i32 @kernel_read(ptr noundef nonnull %2, ptr noundef %data, i32 noundef %size, ptr noundef nonnull %offset.addr) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecryptfs_read_lower_page_segment(ptr noundef %page_for_ecryptfs, i32 noundef %page_index, i32 noundef %offset_in_page, i32 noundef %size, ptr nocapture noundef readonly %ecryptfs_inode) local_unnamed_addr #0 align 64 {
entry:
  %offset.addr.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %page_index to i64
  %shl = shl nuw nsw i64 %conv, 12
  %conv1 = zext i32 %offset_in_page to i64
  %add = add nuw nsw i64 %shl, %conv1
  tail call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 44) #8
  %0 = ptrtoint ptr %page_for_ecryptfs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page_for_ecryptfs, align 4
  %shr.i.i = lshr i32 %1, 30
  %2 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %shr.i.i, label %entry.if.then.i_crit_edge [
    i32 2, label %entry.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %3 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.i.not.i = icmp eq i32 %3, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %page_for_ecryptfs) #8
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %page_for_ecryptfs) #8
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %offset.addr.i)
  %4 = ptrtoint ptr %offset.addr.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %add, ptr %offset.addr.i, align 8
  %lower_file1.i = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %ecryptfs_inode, i32 0, i32 4
  %5 = ptrtoint ptr %lower_file1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lower_file1.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %kmap.exit.ecryptfs_read_lower.exit_crit_edge, label %if.end.i

kmap.exit.ecryptfs_read_lower.exit_crit_edge:     ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ecryptfs_read_lower.exit

if.end.i:                                         ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @kernel_read(ptr noundef nonnull %6, ptr noundef %addr.0.i, i32 noundef %size, ptr noundef nonnull %offset.addr.i) #8
  br label %ecryptfs_read_lower.exit

ecryptfs_read_lower.exit:                         ; preds = %if.end.i, %kmap.exit.ecryptfs_read_lower.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.end.i ], [ -5, %kmap.exit.ecryptfs_read_lower.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %offset.addr.i)
  call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 55) #8
  %7 = ptrtoint ptr %page_for_ecryptfs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %page_for_ecryptfs, align 4
  %shr.i.i7 = lshr i32 %8, 30
  %9 = zext i32 %shr.i.i7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %shr.i.i7, label %ecryptfs_read_lower.exit.kunmap.exit_crit_edge [
    i32 2, label %ecryptfs_read_lower.exit.if.end.i10_crit_edge
    i32 3, label %is_highmem_idx.exit.i9
  ]

ecryptfs_read_lower.exit.if.end.i10_crit_edge:    ; preds = %ecryptfs_read_lower.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i10

ecryptfs_read_lower.exit.kunmap.exit_crit_edge:   ; preds = %ecryptfs_read_lower.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit

is_highmem_idx.exit.i9:                           ; preds = %ecryptfs_read_lower.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %10 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp2.i.not.i8 = icmp eq i32 %10, 2
  br i1 %cmp2.i.not.i8, label %is_highmem_idx.exit.i9.if.end.i10_crit_edge, label %is_highmem_idx.exit.i9.kunmap.exit_crit_edge

is_highmem_idx.exit.i9.kunmap.exit_crit_edge:     ; preds = %is_highmem_idx.exit.i9
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit

is_highmem_idx.exit.i9.if.end.i10_crit_edge:      ; preds = %is_highmem_idx.exit.i9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i10

if.end.i10:                                       ; preds = %is_highmem_idx.exit.i9.if.end.i10_crit_edge, %ecryptfs_read_lower.exit.if.end.i10_crit_edge
  call void @kunmap_high(ptr noundef %page_for_ecryptfs) #8
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i10, %is_highmem_idx.exit.i9.kunmap.exit_crit_edge, %ecryptfs_read_lower.exit.kunmap.exit_crit_edge
  %11 = call i32 @llvm.smin.i32(i32 %retval.0.i, i32 0)
  call void @flush_dcache_page(ptr noundef %page_for_ecryptfs) #8
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !18, !20, !22, !24}
!llvm.named.register.sp = !{!25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ecryptfs/read_write.c", i32 137, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ecryptfs_write._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ecryptfs_write._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ecryptfs/read_write.c", i32 179, i32 4}
!8 = !{ptr @ecryptfs_write._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @ecryptfs_write._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ecryptfs/read_write.c", i32 193, i32 5}
!12 = !{ptr @ecryptfs_write._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @ecryptfs_write._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!18 = distinct !{null, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../include/linux/mm.h", i32 717, i32 2}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{!"sp"}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i64 1063068, i64 1063129}
!36 = !{i64 1065800}
!37 = !{!"branch_weights", i32 1, i32 2000}
!38 = !{i64 1066085}
!39 = !{i64 2152501219}
!40 = !{i64 2152501061}
!41 = !{i64 2152501389}
!42 = !{i64 2150087203}
!43 = !{i64 2153680140}
!44 = !{i64 2152173684}
!45 = !{i64 2152173891}
!46 = !{i64 2153682911}
!47 = !{i64 2151318096}
!48 = !{!"branch_weights", i32 2000, i32 1}
!49 = !{i64 2150567133, i64 2150567624, i64 2150567170, i64 2150567226, i64 2150567260, i64 2150567284, i64 2150567325, i64 2150567346, i64 2150567374, i64 2150567408}
!50 = !{i64 2153156204, i64 2153156687, i64 2153156241, i64 2153156297, i64 2153156331, i64 2153156355, i64 2153156396, i64 2153156417, i64 2153156445, i64 2153156479}
!51 = !{i64 2148746864}
!52 = !{i64 2148661573, i64 2148661605, i64 2148661634, i64 2148661668, i64 2148661699, i64 2148661722}
!53 = !{i64 2148747093}
!54 = !{i64 2148482986, i64 2148482991, i64 2148483004, i64 2148483048, i64 2148483082, i64 2148483103}
!55 = !{i64 2152503150}
!56 = !{i64 2149979455}
!57 = !{i64 2149984389}
!58 = !{i64 2150006107}
!59 = !{i64 2150011001}
!60 = !{i64 2150087528}
!61 = !{i64 2150087853}
!62 = !{i64 2152515012}
