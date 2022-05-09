; ModuleID = '/llk/IR_all_yes/fs/erofs/namei.c_pt.bc'
source_filename = "../fs/erofs/namei.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.erofs_qstr = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
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
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.63, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.39 }
%struct.llist_node = type { ptr }
%union.anon.39 = type { i32 }
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
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.41 }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.63 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.erofs_dirent = type <{ i64, i16, i8, i8 }>
%struct.page = type { i32, %union.anon.7, %union.anon.69, %struct.atomic_t, i32 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.69 = type { %struct.atomic_t }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.74, %struct.list_head, %struct.list_head, %union.anon.75 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.lockref = type { %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.spinlock, i32 }
%union.anon.74 = type { %struct.list_head }
%union.anon.75 = type { %struct.hlist_node }

@erofs_dir_iops = dso_local local_unnamed_addr constant %struct.inode_operations { ptr @erofs_lookup, ptr null, ptr null, ptr @erofs_get_acl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @erofs_getattr, ptr @erofs_listxattr, ptr @erofs_fiemap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@__func__.find_target_block_classic = private unnamed_addr constant [26 x i8] c"find_target_block_classic\00", align 1
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"corrupted dir block %d @ nid %llu\0A\00", [61 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@erofs_lookup.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"erofs\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"erofs_lookup\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/erofs/namei.c\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s, %pd (nid %llu) found, d_type %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"erofs: %s, %pd (nid %llu) found, d_type %u\0A\00", [52 x i8] zeroinitializer }, align 32
@__tracepoint_erofs_lookup = external dso_local global %struct.tracepoint, align 4
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/erofs.h\00", [35 x i8] zeroinitializer }, align 32
@trace_erofs_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 118, i32 5 }
@___asan_gen_.14 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 717, i32 2 }
@___asan_gen_.29 = private constant [20 x i8] c"../fs/erofs/namei.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 236, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant [32 x i8] c"../include/trace/events/erofs.h\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 29, i32 1 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 108, i32 2 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @erofs_namei(ptr nocapture noundef readonly %dir, ptr nocapture noundef readonly %name, ptr nocapture noundef writeonly %nid, ptr nocapture noundef writeonly %d_type) local_unnamed_addr #0 align 64 {
entry:
  %ndirents = alloca i32, align 4
  %qn = alloca %struct.erofs_qstr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ndirents) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %qn) #7
  %i_size = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 14
  %0 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.erofs_qstr, ptr %qn, i32 0, i32 1
  %name1 = getelementptr inbounds %struct.qstr, ptr %name, i32 0, i32 1
  %3 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name1, align 8
  %5 = ptrtoint ptr %qn to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %qn, align 4
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %name, align 8
  %add.ptr = getelementptr i8, ptr %4, i32 %7
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr, ptr %2, align 4
  %9 = ptrtoint ptr %ndirents to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %ndirents, align 4
  %call = call fastcc ptr @find_target_block_classic(ptr noundef %dir, ptr noundef nonnull %qn, ptr noundef nonnull %ndirents)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %call to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %11 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %11, 512
  %12 = tail call i32 @llvm.read_register.i32(metadata !22) #7
  %and.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %15, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !32
  %16 = tail call i32 @llvm.read_register.i32(metadata !22) #7
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
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !33
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %call, i32 noundef %or.i) #7
  %22 = ptrtoint ptr %ndirents to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ndirents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool9.not = icmp eq i32 %23, 0
  br i1 %tobool9.not, label %if.end7.if.end12_crit_edge, label %if.then10

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then10:                                        ; preds = %if.end7
  %sub.i = add i32 %23, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp.not31.i = icmp slt i32 %sub.i, 1
  br i1 %cmp.not31.i, label %if.then10.do.end_crit_edge, label %while.body.lr.ph.i

if.then10.do.end_crit_edge:                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

while.body.lr.ph.i:                               ; preds = %if.then10
  %add.ptr11.i = getelementptr i8, ptr %call.i.i, i32 4096
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %endprfx.035.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %endprfx.2.i, %cleanup.i.while.body.i_crit_edge ]
  %startprfx.034.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %startprfx.2.i, %cleanup.i.while.body.i_crit_edge ]
  %back.033.i = phi i32 [ %sub.i, %while.body.lr.ph.i ], [ %back.2.i, %cleanup.i.while.body.i_crit_edge ]
  %head.032.i = phi i32 [ 1, %while.body.lr.ph.i ], [ %head.2.i, %cleanup.i.while.body.i_crit_edge ]
  %sub1.i = sub i32 %back.033.i, %head.032.i
  %div.i = sdiv i32 %sub1.i, 2
  %add.i = add i32 %div.i, %head.032.i
  %nameoff2.i = getelementptr %struct.erofs_dirent, ptr %call.i.i, i32 %add.i, i32 1
  %24 = ptrtoint ptr %nameoff2.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %nameoff2.i, align 1
  %26 = and i16 %25, -241
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #7
  %and.i = zext i16 %27 to i32
  %28 = tail call i32 @llvm.umin.i32(i32 %startprfx.034.i, i32 %endprfx.035.i) #7
  %add.ptr.i = getelementptr i8, ptr %call.i.i, i32 %and.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub.i)
  %cmp8.not.i = icmp slt i32 %add.i, %sub.i
  br i1 %cmp8.not.i, label %cond.false12.i, label %while.body.i.cond.end20.i_crit_edge

while.body.i.cond.end20.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end20.i

cond.false12.i:                                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %add13.i = add nsw i32 %add.i, 1
  %nameoff15.i = getelementptr %struct.erofs_dirent, ptr %call.i.i, i32 %add13.i, i32 1
  %29 = ptrtoint ptr %nameoff15.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %nameoff15.i, align 1
  %31 = and i16 %30, -241
  %32 = tail call i16 @llvm.bswap.i16(i16 %31) #7
  %and18.i = zext i16 %32 to i32
  %add.ptr19.i = getelementptr i8, ptr %call.i.i, i32 %and18.i
  br label %cond.end20.i

cond.end20.i:                                     ; preds = %cond.false12.i, %while.body.i.cond.end20.i_crit_edge
  %cond21.i = phi ptr [ %add.ptr19.i, %cond.false12.i ], [ %add.ptr11.i, %while.body.i.cond.end20.i_crit_edge ]
  %33 = ptrtoint ptr %add.ptr.i to i32
  %34 = ptrtoint ptr %cond21.i to i32
  %cmp.i.i = icmp ugt ptr %add.ptr.i, %cond21.i
  br i1 %cmp.i.i, label %do.body2.i.i, label %while.cond.preheader.i.i, !prof !34

while.cond.preheader.i.i:                         ; preds = %cond.end20.i
  %add.ptr58.i.i = getelementptr i8, ptr %add.ptr.i, i32 %28
  %cmp1059.i.i = icmp ult ptr %add.ptr58.i.i, %cond21.i
  br i1 %cmp1059.i.i, label %land.rhs.preheader.i.i, label %while.cond.preheader.i.i.erofs_dirnamecmp.exit.i_crit_edge

while.cond.preheader.i.i.erofs_dirnamecmp.exit.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %erofs_dirnamecmp.exit.i

land.rhs.preheader.i.i:                           ; preds = %while.cond.preheader.i.i
  %35 = sub i32 %34, %33
  br label %land.rhs.i.i

do.body2.i.i:                                     ; preds = %cond.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 27, 0\0A.popsection", ""() #7, !srcloc !35
  unreachable

land.rhs.i.i:                                     ; preds = %if.end31.i.i.land.rhs.i.i_crit_edge, %land.rhs.preheader.i.i
  %add.ptr61.i.i = phi ptr [ %add.ptr.i.i, %if.end31.i.i.land.rhs.i.i_crit_edge ], [ %add.ptr58.i.i, %land.rhs.preheader.i.i ]
  %i.060.i.i = phi i32 [ %inc.i.i, %if.end31.i.i.land.rhs.i.i_crit_edge ], [ %28, %land.rhs.preheader.i.i ]
  %36 = ptrtoint ptr %add.ptr61.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %add.ptr61.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp12.not.i.i = icmp eq i8 %37, 0
  br i1 %cmp12.not.i.i, label %land.rhs.i.i.erofs_dirnamecmp.exit.i_crit_edge, label %while.body.i.i

land.rhs.i.i.erofs_dirnamecmp.exit.i_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %erofs_dirnamecmp.exit.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %arrayidx15.i.i = getelementptr i8, ptr %4, i32 %i.060.i.i
  %38 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx15.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %37)
  %cmp20.not.i.i = icmp eq i8 %39, %37
  br i1 %cmp20.not.i.i, label %if.end31.i.i, label %erofs_dirnamecmp.exit.thread.i

erofs_dirnamecmp.exit.thread.i:                   ; preds = %while.body.i.i
  %arrayidx27.i.i = getelementptr i8, ptr %add.ptr.i, i32 %i.060.i.i
  %40 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx27.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %41)
  %cmp29.i.i = icmp ugt i8 %39, %41
  br i1 %cmp29.i.i, label %erofs_dirnamecmp.exit.thread.i.if.then25.i_crit_edge, label %if.else27.i

erofs_dirnamecmp.exit.thread.i.if.then25.i_crit_edge: ; preds = %erofs_dirnamecmp.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25.i

if.end31.i.i:                                     ; preds = %while.body.i.i
  %inc.i.i = add i32 %i.060.i.i, 1
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i, i32 %inc.i.i
  %cmp10.i.i = icmp ult ptr %add.ptr.i.i, %cond21.i
  br i1 %cmp10.i.i, label %if.end31.i.i.land.rhs.i.i_crit_edge, label %if.end31.i.i.erofs_dirnamecmp.exit.i_crit_edge

if.end31.i.i.erofs_dirnamecmp.exit.i_crit_edge:   ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %erofs_dirnamecmp.exit.i

if.end31.i.i.land.rhs.i.i_crit_edge:              ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i.i

erofs_dirnamecmp.exit.i:                          ; preds = %if.end31.i.i.erofs_dirnamecmp.exit.i_crit_edge, %land.rhs.i.i.erofs_dirnamecmp.exit.i_crit_edge, %while.cond.preheader.i.i.erofs_dirnamecmp.exit.i_crit_edge
  %i.0.lcssa.i.i = phi i32 [ %28, %while.cond.preheader.i.i.erofs_dirnamecmp.exit.i_crit_edge ], [ %35, %if.end31.i.i.erofs_dirnamecmp.exit.i_crit_edge ], [ %i.060.i.i, %land.rhs.i.i.erofs_dirnamecmp.exit.i_crit_edge ]
  %arrayidx33.i.i = getelementptr i8, ptr %4, i32 %i.0.lcssa.i.i
  %42 = ptrtoint ptr %arrayidx33.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx33.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp35.i.not.i = icmp eq i8 %43, 0
  br i1 %cmp35.i.not.i, label %cleanup35.split.loop.exit.i, label %erofs_dirnamecmp.exit.i.if.then25.i_crit_edge

erofs_dirnamecmp.exit.i.if.then25.i_crit_edge:    ; preds = %erofs_dirnamecmp.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25.i

if.then25.i:                                      ; preds = %erofs_dirnamecmp.exit.i.if.then25.i_crit_edge, %erofs_dirnamecmp.exit.thread.i.if.then25.i_crit_edge
  %matched.0721.i = phi i32 [ %i.0.lcssa.i.i, %erofs_dirnamecmp.exit.i.if.then25.i_crit_edge ], [ %i.060.i.i, %erofs_dirnamecmp.exit.thread.i.if.then25.i_crit_edge ]
  %add26.i = add i32 %add.i, 1
  br label %cleanup.i

if.else27.i:                                      ; preds = %erofs_dirnamecmp.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub28.i = add i32 %add.i, -1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.else27.i, %if.then25.i
  %head.2.i = phi i32 [ %add26.i, %if.then25.i ], [ %head.032.i, %if.else27.i ]
  %back.2.i = phi i32 [ %back.033.i, %if.then25.i ], [ %sub28.i, %if.else27.i ]
  %startprfx.2.i = phi i32 [ %matched.0721.i, %if.then25.i ], [ %startprfx.034.i, %if.else27.i ]
  %endprfx.2.i = phi i32 [ %endprfx.035.i, %if.then25.i ], [ %i.060.i.i, %if.else27.i ]
  %cmp.not.i = icmp slt i32 %back.2.i, %head.2.i
  br i1 %cmp.not.i, label %cleanup.i.do.end_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

cleanup.i.do.end_crit_edge:                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

cleanup35.split.loop.exit.i:                      ; preds = %erofs_dirnamecmp.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.le.i = getelementptr %struct.erofs_dirent, ptr %call.i.i, i32 %add.i
  br label %if.end12

if.end12:                                         ; preds = %cleanup35.split.loop.exit.i, %if.end7.if.end12_crit_edge
  %de.0 = phi ptr [ %call.i.i, %if.end7.if.end12_crit_edge ], [ %arrayidx.le.i, %cleanup35.split.loop.exit.i ]
  %cmp.i36 = icmp ugt ptr %de.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i36, label %if.end12.do.end_crit_edge, label %if.then14

if.end12.do.end_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %de.0 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 8)
  %45 = load i64, ptr %de.0, align 1
  %46 = tail call i64 @llvm.bswap.i64(i64 %45)
  %47 = ptrtoint ptr %nid to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %nid, align 8
  %file_type = getelementptr inbounds %struct.erofs_dirent, ptr %de.0, i32 0, i32 2
  %48 = ptrtoint ptr %file_type to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %file_type, align 1
  %conv = zext i8 %49 to i32
  %50 = ptrtoint ptr %d_type to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv, ptr %d_type, align 4
  br label %do.end

do.end:                                           ; preds = %if.then14, %if.end12.do.end_crit_edge, %cleanup.i.do.end_crit_edge, %if.then10.do.end_crit_edge
  %cmp.i3642 = phi i1 [ false, %if.then14 ], [ true, %if.end12.do.end_crit_edge ], [ true, %if.then10.do.end_crit_edge ], [ true, %cleanup.i.do.end_crit_edge ]
  %de.041 = phi ptr [ %de.0, %if.then14 ], [ %de.0, %if.end12.do.end_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.then10.do.end_crit_edge ], [ inttoptr (i32 -2 to ptr), %cleanup.i.do.end_crit_edge ]
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !36
  %51 = tail call i32 @llvm.read_register.i32(metadata !22) #7
  %and.i.i.i1.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 213
  %55 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %56, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !37
  %57 = tail call i32 @llvm.read_register.i32(metadata !22) #7
  %and.i.i.i.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %60, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %61 = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %61, align 4
  %and.i.i = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !38

if.then.i.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i37 = add i32 %63, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i37, %if.then.i.i ], [ %64, %if.end.i.i ]
  %65 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %65, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  %66 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp.i.i.i.i = icmp eq i32 %67, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !34

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %65, ptr noundef nonnull @.str.1) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !39
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !40
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #7
  %68 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #7, !srcloc !41
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %68, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@erofs_namei, %if.then.i.i.i.i.i)) #7
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !43

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %65, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #7
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__put_page(ptr noundef %65) #7
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %69 = ptrtoint ptr %de.041 to i32
  %spec.select.i = select i1 %cmp.i3642, i32 %69, i32 0
  br label %cleanup

cleanup:                                          ; preds = %put_page.exit, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.then5 ], [ %spec.select.i, %put_page.exit ], [ -2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %qn) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ndirents) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @find_target_block_classic(ptr nocapture noundef readonly %dir, ptr nocapture noundef readonly %name, ptr nocapture noundef writeonly %_ndirents) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_mapping = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 9
  %0 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_mapping, align 8
  %i_size.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 14
  %2 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_size.i, align 8
  %sub.i = add i64 %3, 4095
  %div.i = sdiv i64 %sub.i, 4096
  %conv.i = trunc i64 %div.i to i32
  %sub = add i32 %conv.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp.not197 = icmp slt i32 %sub, 0
  br i1 %cmp.not197, label %entry.cleanup70_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup70_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup70

while.body:                                       ; preds = %cleanup67.while.body_crit_edge, %entry.while.body_crit_edge
  %startprfx.0202 = phi i32 [ %startprfx.2.ph, %cleanup67.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %endprfx.0201 = phi i32 [ %endprfx.2.ph, %cleanup67.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %candidate.0200 = phi ptr [ %candidate.2.ph, %cleanup67.while.body_crit_edge ], [ inttoptr (i32 -2 to ptr), %entry.while.body_crit_edge ]
  %back.0199 = phi i32 [ %back.2.ph, %cleanup67.while.body_crit_edge ], [ %sub, %entry.while.body_crit_edge ]
  %head.0198 = phi i32 [ %head.2.ph, %cleanup67.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %sub2 = sub i32 %back.0199, %head.0198
  %div = sdiv i32 %sub2, 2
  %add = add i32 %div, %head.0198
  %call.i = tail call ptr @read_cache_page(ptr noundef %1, i32 noundef %add, ptr noundef null, ptr noundef null) #7
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %while.body.out_crit_edge, label %if.then

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then:                                          ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %4 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %4, 512
  %5 = tail call i32 @llvm.read_register.i32(metadata !22) #7
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !32
  %9 = tail call i32 @llvm.read_register.i32(metadata !22) #7
  %and.i.i.i1.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 213
  %13 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %14, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !33
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %call.i, i32 noundef %or.i) #7
  %nameoff6 = getelementptr inbounds %struct.erofs_dirent, ptr %call.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %nameoff6 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %nameoff6, align 1
  %17 = and i16 %16, -241
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %div7171 = udiv i16 %18, 12
  %div7.zext = zext i16 %div7171 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %18)
  %19 = icmp ult i16 %18, 12
  br i1 %19, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @__kunmap_atomic(ptr noundef %call.i.i)
  tail call fastcc void @put_page(ptr noundef %call.i)
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %20 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb, align 4
  %add.ptr = getelementptr i8, ptr %dir, i32 -56
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @_erofs_err(ptr noundef %21, ptr noundef nonnull @__func__.find_target_block_classic, ptr noundef nonnull @.str, i32 noundef %add, i64 noundef %23) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 121, 0\0A.popsection", ""() #7, !srcloc !44
  unreachable

if.end:                                           ; preds = %if.then
  %and = zext i16 %18 to i32
  %24 = tail call i32 @llvm.umin.i32(i32 %startprfx.0202, i32 %endprfx.0201)
  %add.ptr25 = getelementptr i8, ptr %call.i.i, i32 %and
  %and.off = add nsw i32 %and, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %and.off)
  %25 = icmp ult i32 %and.off, 12
  br i1 %25, label %if.end.if.end36_crit_edge, label %if.else

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %nameoff31 = getelementptr %struct.erofs_dirent, ptr %call.i.i, i32 1, i32 1
  %26 = ptrtoint ptr %nameoff31 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %nameoff31, align 1
  %28 = and i16 %27, -241
  %29 = tail call i16 @llvm.bswap.i16(i16 %28)
  %and33 = zext i16 %29 to i32
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.end.if.end36_crit_edge
  %and33.sink = phi i32 [ %and33, %if.else ], [ 4096, %if.end.if.end36_crit_edge ]
  %add.ptr34 = getelementptr i8, ptr %call.i.i, i32 %and33.sink
  %30 = ptrtoint ptr %add.ptr25 to i32
  %31 = ptrtoint ptr %add.ptr34 to i32
  %cmp.i110 = icmp ugt ptr %add.ptr25, %add.ptr34
  br i1 %cmp.i110, label %do.body2.i, label %while.cond.preheader.i, !prof !34

while.cond.preheader.i:                           ; preds = %if.end36
  %add.ptr58.i = getelementptr i8, ptr %add.ptr25, i32 %24
  %cmp1059.i = icmp ult ptr %add.ptr58.i, %add.ptr34
  br i1 %cmp1059.i, label %land.rhs.preheader.i, label %while.cond.preheader.i.while.end.i_crit_edge

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

land.rhs.preheader.i:                             ; preds = %while.cond.preheader.i
  %32 = sub i32 %31, %30
  br label %land.rhs.i

do.body2.i:                                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 27, 0\0A.popsection", ""() #7, !srcloc !35
  unreachable

land.rhs.i:                                       ; preds = %if.end31.i.land.rhs.i_crit_edge, %land.rhs.preheader.i
  %add.ptr61.i = phi ptr [ %add.ptr.i, %if.end31.i.land.rhs.i_crit_edge ], [ %add.ptr58.i, %land.rhs.preheader.i ]
  %i.060.i = phi i32 [ %inc.i, %if.end31.i.land.rhs.i_crit_edge ], [ %24, %land.rhs.preheader.i ]
  %33 = ptrtoint ptr %add.ptr61.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %add.ptr61.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp12.not.i = icmp eq i8 %34, 0
  br i1 %cmp12.not.i, label %land.rhs.i.while.end.i_crit_edge, label %while.body.i

land.rhs.i.while.end.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.i:                                     ; preds = %land.rhs.i
  %35 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %name, align 4
  %arrayidx15.i = getelementptr i8, ptr %36, i32 %i.060.i
  %37 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx15.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %38, i8 %34)
  %cmp20.not.i = icmp eq i8 %38, %34
  br i1 %cmp20.not.i, label %if.end31.i, label %if.then22.i

if.then22.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx27.i = getelementptr i8, ptr %add.ptr25, i32 %i.060.i
  %39 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx27.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %38, i8 %40)
  %cmp29.i = icmp ugt i8 %38, %40
  %cond.i = select i1 %cmp29.i, i32 1, i32 -1
  br label %erofs_dirnamecmp.exit

if.end31.i:                                       ; preds = %while.body.i
  %inc.i = add i32 %i.060.i, 1
  %add.ptr.i = getelementptr i8, ptr %add.ptr25, i32 %inc.i
  %cmp10.i = icmp ult ptr %add.ptr.i, %add.ptr34
  br i1 %cmp10.i, label %if.end31.i.land.rhs.i_crit_edge, label %if.end31.i.while.end.i_crit_edge

if.end31.i.while.end.i_crit_edge:                 ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

if.end31.i.land.rhs.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

while.end.i:                                      ; preds = %if.end31.i.while.end.i_crit_edge, %land.rhs.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ %24, %while.cond.preheader.i.while.end.i_crit_edge ], [ %i.060.i, %land.rhs.i.while.end.i_crit_edge ], [ %32, %if.end31.i.while.end.i_crit_edge ]
  %41 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %name, align 4
  %arrayidx33.i = getelementptr i8, ptr %42, i32 %i.0.lcssa.i
  %43 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx33.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp35.i = icmp ne i8 %44, 0
  %cond37.i = zext i1 %cmp35.i to i32
  br label %erofs_dirnamecmp.exit

erofs_dirnamecmp.exit:                            ; preds = %while.end.i, %if.then22.i
  %matched.0 = phi i32 [ %i.0.lcssa.i, %while.end.i ], [ %i.060.i, %if.then22.i ]
  %retval.0.i = phi i32 [ %cond37.i, %while.end.i ], [ %cond.i, %if.then22.i ]
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !36
  %45 = tail call i32 @llvm.read_register.i32(metadata !22) #7
  %and.i.i.i1.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 213
  %49 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %50, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !37
  %51 = tail call i32 @llvm.read_register.i32(metadata !22) #7
  %and.i.i.i.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %54, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool44.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool44.not, label %cleanup, label %if.else46

if.else46:                                        ; preds = %erofs_dirnamecmp.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp47 = icmp sgt i32 %retval.0.i, 0
  br i1 %cmp47, label %if.then49, label %if.else54

if.then49:                                        ; preds = %if.else46
  %add50 = add i32 %add, 1
  %cmp.i111 = icmp ugt ptr %candidate.0200, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i111, label %if.then49.if.end53_crit_edge, label %if.then52

if.then49.if.end53_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then52:                                        ; preds = %if.then49
  %55 = getelementptr inbounds %struct.page, ptr %candidate.0200, i32 0, i32 1
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %55, align 4
  %and.i.i = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !38

if.then.i.i:                                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i112 = add i32 %57, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %candidate.0200 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i112, %if.then.i.i ], [ %58, %if.end.i.i ]
  %59 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %59, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  %60 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp.i.i.i.i = icmp eq i32 %61, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !34

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %62 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %62, ptr noundef nonnull @.str.1) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !39
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !40
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #7
  %63 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #7, !srcloc !41
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %63, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@find_target_block_classic, %if.then.i.i.i.i.i)) #7
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !43

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %59, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #7
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end53_crit_edge

folio_put_testzero.exit.i.i.if.end53_crit_edge:   ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__put_page(ptr noundef %59) #7
  br label %if.end53

if.end53:                                         ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end53_crit_edge, %if.then49.if.end53_crit_edge
  %64 = ptrtoint ptr %_ndirents to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %div7.zext, ptr %_ndirents, align 4
  br label %cleanup67

if.else54:                                        ; preds = %if.else46
  %65 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %65, align 4
  %and.i.i113 = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i113)
  %tobool.not.i.i114 = icmp eq i32 %and.i.i113, 0
  br i1 %tobool.not.i.i114, label %if.end.i.i117, label %if.then.i.i116, !prof !38

if.then.i.i116:                                   ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i115 = add i32 %67, -1
  br label %_compound_head.exit.i122

if.end.i.i117:                                    ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i122

_compound_head.exit.i122:                         ; preds = %if.end.i.i117, %if.then.i.i116
  %retval.0.i.i118 = phi i32 [ %sub.i.i115, %if.then.i.i116 ], [ %68, %if.end.i.i117 ]
  %69 = inttoptr i32 %retval.0.i.i118 to ptr
  %_refcount.i.i.i.i.i119 = getelementptr inbounds %struct.page, ptr %69, i32 0, i32 3
  %call.i.i.i.i.i.i.i120 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i119, i32 noundef 4) #7
  %70 = ptrtoint ptr %_refcount.i.i.i.i.i119 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %_refcount.i.i.i.i.i119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp.i.i.i.i121 = icmp eq i32 %71, 0
  br i1 %cmp.i.i.i.i121, label %if.then.i.i.i.i123, label %do.end5.i.i.i.i127, !prof !34

if.then.i.i.i.i123:                               ; preds = %_compound_head.exit.i122
  call void @__sanitizer_cov_trace_pc() #9
  %72 = inttoptr i32 %retval.0.i.i118 to ptr
  tail call void @dump_page(ptr noundef %72, ptr noundef nonnull @.str.1) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !39
  unreachable

do.end5.i.i.i.i127:                               ; preds = %_compound_head.exit.i122
  %call.i.i.i10.i.i.i.i124 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i119, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !40
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i119, i32 1, i32 3, i32 1) #7
  %73 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i119, ptr %_refcount.i.i.i.i.i119, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i119) #7, !srcloc !41
  %asmresult.i.i.i.i.i.i.i.i.i.i125 = extractvalue { i32, i32 } %73, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i125)
  %cmp.i.i.i.i.i.i.i126 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i125, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@find_target_block_classic, %if.then.i.i.i.i.i129)) #7
          to label %folio_put_testzero.exit.i.i130 [label %if.then.i.i.i.i.i129], !srcloc !43

if.then.i.i.i.i.i129:                             ; preds = %do.end5.i.i.i.i127
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i128 = zext i1 %cmp.i.i.i.i.i.i.i126 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %69, i32 noundef -1, i32 noundef %conv.i.i.i.i.i128) #7
  br label %folio_put_testzero.exit.i.i130

folio_put_testzero.exit.i.i130:                   ; preds = %if.then.i.i.i.i.i129, %do.end5.i.i.i.i127
  br i1 %cmp.i.i.i.i.i.i.i126, label %if.then.i4.i131, label %folio_put_testzero.exit.i.i130.put_page.exit132_crit_edge

folio_put_testzero.exit.i.i130.put_page.exit132_crit_edge: ; preds = %folio_put_testzero.exit.i.i130
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_page.exit132

if.then.i4.i131:                                  ; preds = %folio_put_testzero.exit.i.i130
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__put_page(ptr noundef %69) #7
  br label %put_page.exit132

put_page.exit132:                                 ; preds = %if.then.i4.i131, %folio_put_testzero.exit.i.i130.put_page.exit132_crit_edge
  %sub55 = add i32 %add, -1
  br label %cleanup67

cleanup:                                          ; preds = %erofs_dirnamecmp.exit
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %_ndirents to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %_ndirents, align 4
  br label %out

out:                                              ; preds = %cleanup, %while.body.out_crit_edge
  %cmp.i133 = icmp ugt ptr %candidate.0200, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i133, label %out.cleanup70_crit_edge, label %if.then65

out.cleanup70_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup70

if.then65:                                        ; preds = %out
  %75 = getelementptr inbounds %struct.page, ptr %candidate.0200, i32 0, i32 1
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %75, align 4
  %and.i.i134 = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i134)
  %tobool.not.i.i135 = icmp eq i32 %and.i.i134, 0
  br i1 %tobool.not.i.i135, label %if.end.i.i138, label %if.then.i.i137, !prof !38

if.then.i.i137:                                   ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i136 = add i32 %77, -1
  br label %_compound_head.exit.i143

if.end.i.i138:                                    ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #9
  %78 = ptrtoint ptr %candidate.0200 to i32
  br label %_compound_head.exit.i143

_compound_head.exit.i143:                         ; preds = %if.end.i.i138, %if.then.i.i137
  %retval.0.i.i139 = phi i32 [ %sub.i.i136, %if.then.i.i137 ], [ %78, %if.end.i.i138 ]
  %79 = inttoptr i32 %retval.0.i.i139 to ptr
  %_refcount.i.i.i.i.i140 = getelementptr inbounds %struct.page, ptr %79, i32 0, i32 3
  %call.i.i.i.i.i.i.i141 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i140, i32 noundef 4) #7
  %80 = ptrtoint ptr %_refcount.i.i.i.i.i140 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %_refcount.i.i.i.i.i140, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp.i.i.i.i142 = icmp eq i32 %81, 0
  br i1 %cmp.i.i.i.i142, label %if.then.i.i.i.i144, label %do.end5.i.i.i.i148, !prof !34

if.then.i.i.i.i144:                               ; preds = %_compound_head.exit.i143
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %79, ptr noundef nonnull @.str.1) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !39
  unreachable

do.end5.i.i.i.i148:                               ; preds = %_compound_head.exit.i143
  %call.i.i.i10.i.i.i.i145 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i140, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !40
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i140, i32 1, i32 3, i32 1) #7
  %82 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i140, ptr %_refcount.i.i.i.i.i140, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i140) #7, !srcloc !41
  %asmresult.i.i.i.i.i.i.i.i.i.i146 = extractvalue { i32, i32 } %82, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i146)
  %cmp.i.i.i.i.i.i.i147 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i146, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@find_target_block_classic, %if.then.i.i.i.i.i150)) #7
          to label %folio_put_testzero.exit.i.i151 [label %if.then.i.i.i.i.i150], !srcloc !43

if.then.i.i.i.i.i150:                             ; preds = %do.end5.i.i.i.i148
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i149 = zext i1 %cmp.i.i.i.i.i.i.i147 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %79, i32 noundef -1, i32 noundef %conv.i.i.i.i.i149) #7
  br label %folio_put_testzero.exit.i.i151

folio_put_testzero.exit.i.i151:                   ; preds = %if.then.i.i.i.i.i150, %do.end5.i.i.i.i148
  br i1 %cmp.i.i.i.i.i.i.i147, label %if.then.i4.i152, label %folio_put_testzero.exit.i.i151.cleanup70_crit_edge

folio_put_testzero.exit.i.i151.cleanup70_crit_edge: ; preds = %folio_put_testzero.exit.i.i151
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup70

if.then.i4.i152:                                  ; preds = %folio_put_testzero.exit.i.i151
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__put_page(ptr noundef %79) #7
  br label %cleanup70

cleanup67:                                        ; preds = %put_page.exit132, %if.end53
  %head.2.ph = phi i32 [ %head.0198, %put_page.exit132 ], [ %add50, %if.end53 ]
  %back.2.ph = phi i32 [ %sub55, %put_page.exit132 ], [ %back.0199, %if.end53 ]
  %candidate.2.ph = phi ptr [ %candidate.0200, %put_page.exit132 ], [ %call.i, %if.end53 ]
  %endprfx.2.ph = phi i32 [ %matched.0, %put_page.exit132 ], [ %endprfx.0201, %if.end53 ]
  %startprfx.2.ph = phi i32 [ %startprfx.0202, %put_page.exit132 ], [ %matched.0, %if.end53 ]
  %cmp.not = icmp slt i32 %back.2.ph, %head.2.ph
  br i1 %cmp.not, label %cleanup67.cleanup70_crit_edge, label %cleanup67.while.body_crit_edge

cleanup67.while.body_crit_edge:                   ; preds = %cleanup67
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup67.cleanup70_crit_edge:                    ; preds = %cleanup67
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup70

cleanup70:                                        ; preds = %cleanup67.cleanup70_crit_edge, %if.then.i4.i152, %folio_put_testzero.exit.i.i151.cleanup70_crit_edge, %out.cleanup70_crit_edge, %entry.cleanup70_crit_edge
  %retval.2 = phi ptr [ %call.i, %out.cleanup70_crit_edge ], [ %call.i, %folio_put_testzero.exit.i.i151.cleanup70_crit_edge ], [ %call.i, %if.then.i4.i152 ], [ inttoptr (i32 -2 to ptr), %entry.cleanup70_crit_edge ], [ %candidate.2.ph, %cleanup67.cleanup70_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__kunmap_atomic(ptr noundef %addr) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kunmap_local_indexed(ptr noundef %addr) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !36
  %0 = tail call i32 @llvm.read_register.i32(metadata !22) #7
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
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !37
  %6 = tail call i32 @llvm.read_register.i32(metadata !22) #7
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_page(ptr noundef %page) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !38

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #7
  %5 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.i.i = icmp eq i32 %6, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.end5.i.i.i, !prof !34

if.then.i.i.i:                                    ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.1) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !39
  unreachable

do.end5.i.i.i:                                    ; preds = %_compound_head.exit
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !40
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #7
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #7, !srcloc !41
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@put_page, %if.then.i.i.i.i)) #7
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i], !srcloc !43

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %4, i32 noundef -1, i32 noundef %conv.i.i.i.i) #7
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i4, label %folio_put_testzero.exit.i.folio_put.exit_crit_edge

folio_put_testzero.exit.i.folio_put.exit_crit_edge: ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %folio_put.exit

if.then.i4:                                       ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__put_page(ptr noundef %4) #7
  br label %folio_put.exit

folio_put.exit:                                   ; preds = %if.then.i4, %folio_put_testzero.exit.i.folio_put.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @erofs_lookup(ptr noundef %dir, ptr noundef %dentry, i32 noundef %flags) #0 align 64 {
entry:
  %nid = alloca i64, align 8
  %d_type = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nid) #7
  %0 = ptrtoint ptr %nid to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %nid, align 8, !annotation !45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d_type) #7
  %1 = ptrtoint ptr %d_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %d_type, align 4, !annotation !45
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %cmp.i = icmp eq ptr %3, null
  br i1 %cmp.i, label %do.body9, label %do.body3, !prof !38

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 217, 0\0A.popsection", ""() #7, !srcloc !46
  unreachable

do.body9:                                         ; preds = %entry
  %pprev.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.not, label %do.end29, label %do.body21, !prof !38

do.body21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 219, 0\0A.popsection", ""() #7, !srcloc !47
  unreachable

do.end29:                                         ; preds = %do.body9
  tail call fastcc void @trace_erofs_lookup(ptr noundef %dir, ptr noundef %dentry, i32 noundef %flags)
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %6 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %d_name, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %7)
  %cmp = icmp ugt i32 %7, 255
  br i1 %cmp, label %do.end29.cleanup_crit_edge, label %if.end32

do.end29.cleanup_crit_edge:                       ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end32:                                         ; preds = %do.end29
  %call34 = call i32 @erofs_namei(ptr noundef %dir, ptr noundef %d_name, ptr noundef nonnull %nid, ptr noundef nonnull %d_type)
  %8 = zext i32 %call34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call34, label %if.then38 [
    i32 -2, label %if.end32.if.end57_crit_edge
    i32 0, label %do.body41
  ]

if.end32.if.end57_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.then38:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %9 = inttoptr i32 %call34 to ptr
  br label %if.end57

do.body41:                                        ; preds = %if.end32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @erofs_lookup.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@erofs_lookup, %if.then50)) #7
          to label %do.end53 [label %if.then50], !srcloc !43

if.then50:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %nid to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %nid, align 8
  %12 = ptrtoint ptr %d_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %d_type, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @erofs_lookup.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, ptr noundef %dentry, i64 noundef %11, i32 noundef %13) #7
  br label %do.end53

do.end53:                                         ; preds = %if.then50, %do.body41
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %14 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb, align 4
  %16 = ptrtoint ptr %nid to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %nid, align 8
  %18 = ptrtoint ptr %d_type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %d_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp54 = icmp eq i32 %19, 2
  %call55 = tail call ptr @erofs_iget(ptr noundef %15, i64 noundef %17, i1 noundef zeroext %cmp54) #7
  br label %if.end57

if.end57:                                         ; preds = %do.end53, %if.then38, %if.end32.if.end57_crit_edge
  %inode.0 = phi ptr [ %9, %if.then38 ], [ %call55, %do.end53 ], [ null, %if.end32.if.end57_crit_edge ]
  %call58 = tail call ptr @d_splice_alias(ptr noundef %inode.0, ptr noundef %dentry) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %do.end29.cleanup_crit_edge
  %retval.0 = phi ptr [ %call58, %if.end57 ], [ inttoptr (i32 -36 to ptr), %do.end29.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d_type) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nid) #7
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @erofs_get_acl(ptr noundef, i32 noundef, i1 noundef zeroext) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @erofs_getattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @erofs_listxattr(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @erofs_fiemap(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_erofs_err(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_erofs_lookup(ptr noundef %dir, ptr noundef %dentry, i32 noundef %flags) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_erofs_lookup, i32 0, i32 1), ptr blockaddress(@trace_erofs_lookup, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !43

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !22) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !38

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !22) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !48
  %call42 = tail call i32 @__traceiter_erofs_lookup(ptr noundef null, ptr noundef %dir, ptr noundef %dentry, i32 noundef %flags) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !49
  %13 = tail call i32 @llvm.read_register.i32(metadata !22) #7
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !22) #7
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !38

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !22) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_erofs_lookup, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_erofs_lookup, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_erofs_lookup.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_erofs_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 53, ptr noundef nonnull @.str.8) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !51
  %31 = tail call i32 @llvm.read_register.i32(metadata !22) #7
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @erofs_iget(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_erofs_lookup(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !21}
!llvm.named.register.sp = !{!22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @erofs_dir_iops, !1, !"erofs_dir_iops", i1 false, i1 false}
!1 = !{!"../fs/erofs/namei.c", i32 243, i32 31}
!2 = !{ptr @__func__.find_target_block_classic, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/erofs/namei.c", i32 118, i32 5}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../include/linux/mm.h", i32 717, i32 2}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/erofs/namei.c", i32 236, i32 3}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @erofs_lookup.__UNIQUE_ID_ddebug314, !8, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!13 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../include/trace/events/erofs.h", i32 29, i32 1}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!18 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = !{!"sp"}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{i64 2153697975}
!33 = !{i64 2152191519}
!34 = !{!"branch_weights", i32 1, i32 2000}
!35 = !{i64 2154759806, i64 2154760286, i64 2154759843, i64 2154759899, i64 2154759933, i64 2154759957, i64 2154759998, i64 2154760019, i64 2154760047, i64 2154760081}
!36 = !{i64 2152191726}
!37 = !{i64 2153700746}
!38 = !{!"branch_weights", i32 2000, i32 1}
!39 = !{i64 2153135259, i64 2153135742, i64 2153135296, i64 2153135352, i64 2153135386, i64 2153135410, i64 2153135451, i64 2153135472, i64 2153135500, i64 2153135534}
!40 = !{i64 2148764699}
!41 = !{i64 2148679408, i64 2148679440, i64 2148679469, i64 2148679503, i64 2148679534, i64 2148679557}
!42 = !{i64 2148764928}
!43 = !{i64 2148500821, i64 2148500826, i64 2148500839, i64 2148500883, i64 2148500917, i64 2148500938}
!44 = !{i64 2154766454, i64 2154766935, i64 2154766491, i64 2154766547, i64 2154766581, i64 2154766605, i64 2154766646, i64 2154766667, i64 2154766695, i64 2154766729}
!45 = !{!"auto-init"}
!46 = !{i64 2154773275, i64 2154773756, i64 2154773312, i64 2154773368, i64 2154773402, i64 2154773426, i64 2154773467, i64 2154773488, i64 2154773516, i64 2154773550}
!47 = !{i64 2154774867, i64 2154775348, i64 2154774904, i64 2154774960, i64 2154774994, i64 2154775018, i64 2154775059, i64 2154775080, i64 2154775108, i64 2154775142}
!48 = !{i64 2154594672}
!49 = !{i64 2154594895}
!50 = !{i64 2149497228}
!51 = !{i64 2149498264}
