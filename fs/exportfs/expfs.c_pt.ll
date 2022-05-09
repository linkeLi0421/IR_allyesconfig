; ModuleID = '/llk/IR_all_yes/fs/exportfs/expfs.c_pt.bc'
source_filename = "../fs/exportfs/expfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+exportfs_encode_inode_fh\22, \22a\22\09"
module asm "\09.weak\09__crc_exportfs_encode_inode_fh\09\09\09\09"
module asm "\09.long\09__crc_exportfs_encode_inode_fh\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_exportfs_encode_inode_fh:\09\09\09\09\09"
module asm "\09.asciz \09\22exportfs_encode_inode_fh\22\09\09\09\09\09"
module asm "__kstrtabns_exportfs_encode_inode_fh:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+exportfs_encode_fh\22, \22a\22\09"
module asm "\09.weak\09__crc_exportfs_encode_fh\09\09\09\09"
module asm "\09.long\09__crc_exportfs_encode_fh\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_exportfs_encode_fh:\09\09\09\09\09"
module asm "\09.asciz \09\22exportfs_encode_fh\22\09\09\09\09\09"
module asm "__kstrtabns_exportfs_encode_fh:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+exportfs_decode_fh_raw\22, \22a\22\09"
module asm "\09.weak\09__crc_exportfs_decode_fh_raw\09\09\09\09"
module asm "\09.long\09__crc_exportfs_decode_fh_raw\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_exportfs_decode_fh_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22exportfs_decode_fh_raw\22\09\09\09\09\09"
module asm "__kstrtabns_exportfs_decode_fh_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+exportfs_decode_fh\22, \22a\22\09"
module asm "\09.weak\09__crc_exportfs_decode_fh\09\09\09\09"
module asm "\09.long\09__crc_exportfs_decode_fh\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_exportfs_decode_fh:\09\09\09\09\09"
module asm "\09.asciz \09\22exportfs_decode_fh\22\09\09\09\09\09"
module asm "__kstrtabns_exportfs_decode_fh:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
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
%union.anon.68 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.70 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.63 = type { i32, i32, i32, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.65, %struct.list_head, %struct.list_head, %union.anon.66 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%union.anon.65 = type { %struct.list_head }
%union.anon.66 = type { %struct.hlist_node }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.export_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.path = type { ptr, ptr }
%struct.getdents_callback = type { %struct.dir_context, ptr, i64, i32, i32 }
%struct.dir_context = type { ptr, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.52, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.52 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.file = type { %union.anon.17, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.17 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_exportfs_encode_inode_fh = external dso_local constant [0 x i8], align 1
@__kstrtabns_exportfs_encode_inode_fh = external dso_local constant [0 x i8], align 1
@__ksymtab_exportfs_encode_inode_fh = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @exportfs_encode_inode_fh to i32), ptr @__kstrtab_exportfs_encode_inode_fh, ptr @__kstrtabns_exportfs_encode_inode_fh }, section "___ksymtab_gpl+exportfs_encode_inode_fh", align 4
@__kstrtab_exportfs_encode_fh = external dso_local constant [0 x i8], align 1
@__kstrtabns_exportfs_encode_fh = external dso_local constant [0 x i8], align 1
@__ksymtab_exportfs_encode_fh = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @exportfs_encode_fh to i32), ptr @__kstrtab_exportfs_encode_fh, ptr @__kstrtabns_exportfs_encode_fh }, section "___ksymtab_gpl+exportfs_encode_fh", align 4
@__kstrtab_exportfs_decode_fh_raw = external dso_local constant [0 x i8], align 1
@__kstrtabns_exportfs_decode_fh_raw = external dso_local constant [0 x i8], align 1
@__ksymtab_exportfs_decode_fh_raw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @exportfs_decode_fh_raw to i32), ptr @__kstrtab_exportfs_decode_fh_raw, ptr @__kstrtabns_exportfs_decode_fh_raw }, section "___ksymtab_gpl+exportfs_decode_fh_raw", align 4
@__kstrtab_exportfs_decode_fh = external dso_local constant [0 x i8], align 1
@__kstrtabns_exportfs_decode_fh = external dso_local constant [0 x i8], align 1
@__ksymtab_exportfs_decode_fh = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @exportfs_decode_fh to i32), ptr @__kstrtab_exportfs_decode_fh, ptr @__kstrtabns_exportfs_decode_fh }, section "___ksymtab_gpl+exportfs_decode_fh", align 4
@__UNIQUE_ID_file202 = internal constant [35 x i8] c"exportfs.file=fs/exportfs/exportfs\00", section ".modinfo", align 1
@__UNIQUE_ID_license203 = internal constant [21 x i8] c"exportfs.license=GPL\00", section ".modinfo", align 1
@clear_disconnected.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/exportfs/expfs.c\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [23 x i8] c"../fs/exportfs/expfs.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 97, i32 3 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_file202, ptr @__UNIQUE_ID_license203, ptr @__ksymtab_exportfs_decode_fh, ptr @__ksymtab_exportfs_decode_fh_raw, ptr @__ksymtab_exportfs_encode_fh, ptr @__ksymtab_exportfs_encode_inode_fh, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exportfs_encode_inode_fh(ptr noundef %inode, ptr noundef %fid, ptr noundef %max_len, ptr noundef %parent) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_export_op = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %s_export_op to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_export_op, align 16
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %5(ptr noundef %inode, ptr noundef %fid, ptr noundef %max_len, ptr noundef %parent) #6
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %max_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_len, align 4
  %tobool.not.i = icmp eq ptr %parent, null
  %tobool.not.not.i = xor i1 %tobool.not.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp.i = icmp slt i32 %7, 4
  %or.cond.i = select i1 %tobool.not.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %if.end.export_encode_fh.exit_crit_edge, label %if.else.i

if.end.export_encode_fh.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %export_encode_fh.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp1.i = icmp slt i32 %7, 2
  br i1 %cmp1.i, label %if.else.i.export_encode_fh.exit_crit_edge, label %if.end3.i

if.else.i.export_encode_fh.exit_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %export_encode_fh.exit

if.end3.i:                                        ; preds = %if.else.i
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %8 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_ino.i, align 8
  %10 = ptrtoint ptr %fid to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %fid, align 4
  %i_generation.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 49
  %11 = ptrtoint ptr %i_generation.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_generation.i, align 8
  %gen.i = getelementptr inbounds %struct.anon.63, ptr %fid, i32 0, i32 1
  %13 = ptrtoint ptr %gen.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %gen.i, align 4
  br i1 %tobool.not.i, label %if.end3.i.export_encode_fh.exit_crit_edge, label %if.then5.i

if.end3.i.export_encode_fh.exit_crit_edge:        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %export_encode_fh.exit

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  %i_ino6.i = getelementptr inbounds %struct.inode, ptr %parent, i32 0, i32 11
  %14 = ptrtoint ptr %i_ino6.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_ino6.i, align 8
  %parent_ino.i = getelementptr inbounds %struct.anon.63, ptr %fid, i32 0, i32 2
  %16 = ptrtoint ptr %parent_ino.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %parent_ino.i, align 4
  %i_generation7.i = getelementptr inbounds %struct.inode, ptr %parent, i32 0, i32 49
  %17 = ptrtoint ptr %i_generation7.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_generation7.i, align 8
  %parent_gen.i = getelementptr inbounds %struct.anon.63, ptr %fid, i32 0, i32 3
  %19 = ptrtoint ptr %parent_gen.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %parent_gen.i, align 4
  br label %export_encode_fh.exit

export_encode_fh.exit:                            ; preds = %if.then5.i, %if.end3.i.export_encode_fh.exit_crit_edge, %if.else.i.export_encode_fh.exit_crit_edge, %if.end.export_encode_fh.exit_crit_edge
  %len.0.sink.i = phi i32 [ 4, %if.end.export_encode_fh.exit_crit_edge ], [ 2, %if.else.i.export_encode_fh.exit_crit_edge ], [ 4, %if.then5.i ], [ 2, %if.end3.i.export_encode_fh.exit_crit_edge ]
  %retval.0.i = phi i32 [ 255, %if.end.export_encode_fh.exit_crit_edge ], [ 255, %if.else.i.export_encode_fh.exit_crit_edge ], [ 2, %if.then5.i ], [ 1, %if.end3.i.export_encode_fh.exit_crit_edge ]
  %20 = ptrtoint ptr %max_len to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %len.0.sink.i, ptr %max_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %export_encode_fh.exit, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %retval.0.i, %export_encode_fh.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exportfs_encode_fh(ptr noundef %dentry, ptr noundef %fid, ptr noundef %max_len, i32 noundef %connectable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %connectable)
  %tobool.not = icmp eq i32 %connectable, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 8
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %4)
  %cmp = icmp eq i16 %4, 16384
  br i1 %cmp, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call ptr @dget_parent(ptr noundef %dentry) #6
  %d_inode2 = getelementptr inbounds %struct.dentry, ptr %call, i32 0, i32 5
  %5 = ptrtoint ptr %d_inode2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d_inode2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %p.0 = phi ptr [ null, %land.lhs.true.if.end_crit_edge ], [ %call, %if.then ], [ null, %entry.if.end_crit_edge ]
  %parent.0 = phi ptr [ null, %land.lhs.true.if.end_crit_edge ], [ %6, %if.then ], [ null, %entry.if.end_crit_edge ]
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb.i, align 4
  %s_export_op.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %s_export_op.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_export_op.i, align 16
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %land.lhs.true.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool1.not.i = icmp eq ptr %12, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 %12(ptr noundef %1, ptr noundef %fid, ptr noundef %max_len, ptr noundef %parent.0) #6
  br label %exportfs_encode_inode_fh.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %13 = ptrtoint ptr %max_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_len, align 4
  %tobool.not.i.i = icmp eq ptr %parent.0, null
  %tobool.not.not.i.i = xor i1 %tobool.not.i.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cmp.i.i = icmp slt i32 %14, 4
  %or.cond.i.i = select i1 %tobool.not.not.i.i, i1 %cmp.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end.i.export_encode_fh.exit.i_crit_edge, label %if.else.i.i

if.end.i.export_encode_fh.exit.i_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %export_encode_fh.exit.i

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp1.i.i = icmp slt i32 %14, 2
  br i1 %cmp1.i.i, label %if.else.i.i.export_encode_fh.exit.i_crit_edge, label %if.end3.i.i

if.else.i.i.export_encode_fh.exit.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %export_encode_fh.exit.i

if.end3.i.i:                                      ; preds = %if.else.i.i
  %i_ino.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %15 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i_ino.i.i, align 8
  %17 = ptrtoint ptr %fid to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %fid, align 4
  %i_generation.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 49
  %18 = ptrtoint ptr %i_generation.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_generation.i.i, align 8
  %gen.i.i = getelementptr inbounds %struct.anon.63, ptr %fid, i32 0, i32 1
  %20 = ptrtoint ptr %gen.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %gen.i.i, align 4
  br i1 %tobool.not.i.i, label %if.end3.i.i.export_encode_fh.exit.i_crit_edge, label %if.then5.i.i

if.end3.i.i.export_encode_fh.exit.i_crit_edge:    ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %export_encode_fh.exit.i

if.then5.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %i_ino6.i.i = getelementptr inbounds %struct.inode, ptr %parent.0, i32 0, i32 11
  %21 = ptrtoint ptr %i_ino6.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %i_ino6.i.i, align 8
  %parent_ino.i.i = getelementptr inbounds %struct.anon.63, ptr %fid, i32 0, i32 2
  %23 = ptrtoint ptr %parent_ino.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %parent_ino.i.i, align 4
  %i_generation7.i.i = getelementptr inbounds %struct.inode, ptr %parent.0, i32 0, i32 49
  %24 = ptrtoint ptr %i_generation7.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_generation7.i.i, align 8
  %parent_gen.i.i = getelementptr inbounds %struct.anon.63, ptr %fid, i32 0, i32 3
  %26 = ptrtoint ptr %parent_gen.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %parent_gen.i.i, align 4
  br label %export_encode_fh.exit.i

export_encode_fh.exit.i:                          ; preds = %if.then5.i.i, %if.end3.i.i.export_encode_fh.exit.i_crit_edge, %if.else.i.i.export_encode_fh.exit.i_crit_edge, %if.end.i.export_encode_fh.exit.i_crit_edge
  %len.0.sink.i.i = phi i32 [ 4, %if.end.i.export_encode_fh.exit.i_crit_edge ], [ 2, %if.else.i.i.export_encode_fh.exit.i_crit_edge ], [ 4, %if.then5.i.i ], [ 2, %if.end3.i.i.export_encode_fh.exit.i_crit_edge ]
  %retval.0.i.i = phi i32 [ 255, %if.end.i.export_encode_fh.exit.i_crit_edge ], [ 255, %if.else.i.i.export_encode_fh.exit.i_crit_edge ], [ 2, %if.then5.i.i ], [ 1, %if.end3.i.i.export_encode_fh.exit.i_crit_edge ]
  %27 = ptrtoint ptr %max_len to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %len.0.sink.i.i, ptr %max_len, align 4
  br label %exportfs_encode_inode_fh.exit

exportfs_encode_inode_fh.exit:                    ; preds = %export_encode_fh.exit.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %retval.0.i.i, %export_encode_fh.exit.i ]
  tail call void @dput(ptr noundef %p.0) #6
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dget_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @exportfs_decode_fh_raw(ptr noundef %mnt, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fileid_type, ptr noundef readonly %acceptable, ptr noundef %context) #0 align 64 {
entry:
  %nbuf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mnt_sb = getelementptr inbounds %struct.vfsmount, ptr %mnt, i32 0, i32 1
  %0 = ptrtoint ptr %mnt_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mnt_sb, align 4
  %s_export_op = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %s_export_op to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_export_op, align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %nbuf) #6
  %4 = call ptr @memset(ptr %nbuf, i32 255, i32 256)
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup76_crit_edge, label %lor.lhs.false

entry.cleanup76_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup76

lor.lhs.false:                                    ; preds = %entry
  %fh_to_dentry = getelementptr inbounds %struct.export_operations, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %fh_to_dentry to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fh_to_dentry, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup76_crit_edge, label %if.end

lor.lhs.false.cleanup76_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup76

if.end:                                           ; preds = %lor.lhs.false
  %call4 = tail call ptr %6(ptr noundef %1, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fileid_type) #6
  %tobool.not.i = icmp eq ptr %call4, null
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  %tobool8.not = icmp eq ptr %acceptable, null
  %or.cond = or i1 %tobool8.not, %spec.select.i
  br i1 %or.cond, label %if.end.cleanup76_crit_edge, label %if.end10

if.end.cleanup76_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup76

if.end10:                                         ; preds = %if.end
  %7 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call4, align 8
  %9 = and i32 %8, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %9)
  %10 = icmp eq i32 %9, 2097152
  br i1 %10, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end10
  %and = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.then12.if.end19_crit_edge, label %if.then14

if.then12.if.end19_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then14:                                        ; preds = %if.then12
  %call15 = call fastcc i32 @reconnect_path(ptr noundef %mnt, ptr noundef nonnull %call4, ptr noundef nonnull %nbuf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then14.if.end19_crit_edge, label %if.then14.err_result_crit_edge

if.then14.err_result_crit_edge:                   ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_result

if.then14.if.end19_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.end19:                                         ; preds = %if.then14.if.end19_crit_edge, %if.then12.if.end19_crit_edge
  %call20 = call i32 %acceptable(ptr noundef %context, ptr noundef nonnull %call4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end19.err_result_crit_edge, label %if.end19.cleanup76_crit_edge

if.end19.cleanup76_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup76

if.end19.err_result_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_result

if.else:                                          ; preds = %if.end10
  %call24 = tail call fastcc ptr @find_acceptable_alias(ptr noundef nonnull %call4, ptr noundef nonnull %acceptable, ptr noundef %context)
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.end27, label %if.else.cleanup76_crit_edge

if.else.cleanup76_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup76

if.end27:                                         ; preds = %if.else
  %fh_to_parent = getelementptr inbounds %struct.export_operations, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %fh_to_parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fh_to_parent, align 4
  %tobool28.not = icmp eq ptr %12, null
  br i1 %tobool28.not, label %if.end27.err_result_crit_edge, label %if.end30

if.end27.err_result_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_result

if.end30:                                         ; preds = %if.end27
  %13 = ptrtoint ptr %mnt_sb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mnt_sb, align 4
  %call33 = tail call ptr %12(ptr noundef %14, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fileid_type) #6
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %if.end30.err_result_crit_edge, label %if.end36

if.end30.err_result_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_result

if.end36:                                         ; preds = %if.end30
  %15 = ptrtoint ptr %call33 to i32
  %cmp.i135 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i135, label %if.end36.err_result_crit_edge, label %if.end40

if.end36.err_result_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_result

if.end40:                                         ; preds = %if.end36
  %call42 = call fastcc i32 @reconnect_path(ptr noundef %mnt, ptr noundef nonnull %call33, ptr noundef nonnull %nbuf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.then44

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  call void @dput(ptr noundef nonnull %call33) #6
  br label %err_result

if.end45:                                         ; preds = %if.end40
  %call47 = call fastcc i32 @exportfs_get_name(ptr noundef %mnt, ptr noundef nonnull %call33, ptr noundef nonnull %nbuf, ptr noundef nonnull %call4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.then49

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  call void @dput(ptr noundef nonnull %call33) #6
  br label %err_result

if.end50:                                         ; preds = %if.end45
  %d_inode = getelementptr inbounds %struct.dentry, ptr %call33, i32 0, i32 5
  %16 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %d_inode, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 25
  call void @down_write(ptr noundef %i_rwsem.i) #6
  %call53 = call i32 @strlen(ptr noundef nonnull %nbuf) #9
  %call54 = call ptr @lookup_one_len(ptr noundef nonnull %nbuf, ptr noundef nonnull %call33, i32 noundef %call53) #6
  %cmp.i136 = icmp ugt ptr %call54, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i136, label %if.end50.if.end64_crit_edge, label %if.then56

if.end50.if.end64_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then56:                                        ; preds = %if.end50
  %d_inode57 = getelementptr inbounds %struct.dentry, ptr %call54, i32 0, i32 5
  %18 = ptrtoint ptr %d_inode57 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %d_inode57, align 8
  %d_inode58 = getelementptr inbounds %struct.dentry, ptr %call4, i32 0, i32 5
  %20 = ptrtoint ptr %d_inode58 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %d_inode58, align 8
  %cmp.not = icmp eq ptr %19, %21
  br i1 %cmp.not, label %if.then56.if.end64_crit_edge, label %if.then61, !prof !26

if.then56.if.end64_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then61:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #8
  call void @dput(ptr noundef %call54) #6
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %if.then56.if.end64_crit_edge, %if.end50.if.end64_crit_edge
  %nresult.0 = phi ptr [ %call54, %if.end50.if.end64_crit_edge ], [ inttoptr (i32 -116 to ptr), %if.then61 ], [ %call54, %if.then56.if.end64_crit_edge ]
  %22 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %d_inode, align 8
  %i_rwsem.i137 = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i137) #6
  call void @dput(ptr noundef nonnull %call33) #6
  %cmp.i138 = icmp ugt ptr %nresult.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i138, label %if.then67, label %cleanup

if.then67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %nresult.0 to i32
  br label %err_result

cleanup:                                          ; preds = %if.end64
  call void @dput(ptr noundef nonnull %call4) #6
  %call70 = call fastcc ptr @find_acceptable_alias(ptr noundef %nresult.0, ptr noundef nonnull %acceptable, ptr noundef %context)
  %tobool71.not = icmp eq ptr %call70, null
  br i1 %tobool71.not, label %cleanup.err_result_crit_edge, label %cleanup.cleanup76_crit_edge

cleanup.cleanup76_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup76

cleanup.err_result_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_result

err_result:                                       ; preds = %cleanup.err_result_crit_edge, %if.then67, %if.then49, %if.then44, %if.end36.err_result_crit_edge, %if.end30.err_result_crit_edge, %if.end27.err_result_crit_edge, %if.end19.err_result_crit_edge, %if.then14.err_result_crit_edge
  %result.1 = phi ptr [ %call4, %if.then14.err_result_crit_edge ], [ %nresult.0, %cleanup.err_result_crit_edge ], [ %call4, %if.end19.err_result_crit_edge ], [ %call4, %if.then44 ], [ %call4, %if.then49 ], [ %call4, %if.then67 ], [ %call4, %if.end27.err_result_crit_edge ], [ %call4, %if.end30.err_result_crit_edge ], [ %call4, %if.end36.err_result_crit_edge ]
  %err.1 = phi i32 [ %call15, %if.then14.err_result_crit_edge ], [ -13, %cleanup.err_result_crit_edge ], [ -13, %if.end19.err_result_crit_edge ], [ %call42, %if.then44 ], [ %call47, %if.then49 ], [ %24, %if.then67 ], [ -116, %if.end27.err_result_crit_edge ], [ -116, %if.end30.err_result_crit_edge ], [ %15, %if.end36.err_result_crit_edge ]
  call void @dput(ptr noundef %result.1) #6
  %25 = inttoptr i32 %err.1 to ptr
  br label %cleanup76

cleanup76:                                        ; preds = %err_result, %cleanup.cleanup76_crit_edge, %if.else.cleanup76_crit_edge, %if.end19.cleanup76_crit_edge, %if.end.cleanup76_crit_edge, %lor.lhs.false.cleanup76_crit_edge, %entry.cleanup76_crit_edge
  %retval.1 = phi ptr [ %25, %err_result ], [ %call70, %cleanup.cleanup76_crit_edge ], [ %call4, %if.end.cleanup76_crit_edge ], [ %call4, %if.end19.cleanup76_crit_edge ], [ inttoptr (i32 -116 to ptr), %lor.lhs.false.cleanup76_crit_edge ], [ inttoptr (i32 -116 to ptr), %entry.cleanup76_crit_edge ], [ %call24, %if.else.cleanup76_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %nbuf) #6
  ret ptr %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @reconnect_path(ptr noundef %mnt, ptr noundef %target_dir, ptr noundef %nbuf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %target_dir, null
  br i1 %tobool.not.i, label %entry.dget.exit_crit_edge, label %if.then.i

entry.dget.exit_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dget.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %target_dir, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #6
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i, %entry.dget.exit_crit_edge
  %mnt_sb = getelementptr inbounds %struct.vfsmount, ptr %mnt, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %if.end16.while.cond_crit_edge, %dget.exit
  %dentry.0 = phi ptr [ %target_dir, %dget.exit ], [ %parent.0, %if.end16.while.cond_crit_edge ]
  %0 = ptrtoint ptr %dentry.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dentry.0, align 8
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %do.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

do.body:                                          ; preds = %while.cond
  %2 = ptrtoint ptr %mnt_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mnt_sb, align 4
  %s_root = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_root, align 64
  %cmp = icmp eq ptr %dentry.0, %5
  br i1 %cmp, label %do.body3, label %do.end8, !prof !27

do.body3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/exportfs/expfs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 219, 0\0A.popsection", ""() #6, !srcloc !28
  unreachable

do.end8:                                          ; preds = %do.body
  %d_parent = getelementptr inbounds %struct.dentry, ptr %dentry.0, i32 0, i32 3
  %6 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_parent, align 8
  %cmp9 = icmp eq ptr %dentry.0, %7
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %do.end8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry.0, i32 0, i32 5
  %8 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i.i) #6
  %10 = ptrtoint ptr %mnt_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mnt_sb, align 4
  %s_export_op.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %s_export_op.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_export_op.i, align 16
  %get_parent.i = getelementptr inbounds %struct.export_operations, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %get_parent.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_parent.i, align 4
  %tobool.not.i34 = icmp eq ptr %15, null
  br i1 %tobool.not.i34, label %if.then10.if.end.i_crit_edge, label %if.then.i35

if.then10.if.end.i_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i35:                                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = tail call ptr %15(ptr noundef %dentry.0) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i35, %if.then10.if.end.i_crit_edge
  %parent.0.i = phi ptr [ %call4.i, %if.then.i35 ], [ inttoptr (i32 -13 to ptr), %if.then10.if.end.i_crit_edge ]
  %16 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i66.i = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i66.i) #6
  %cmp.i.i = icmp ugt ptr %parent.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.if.end13_crit_edge, label %do.end11.i

if.end.i.if.end13_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

do.end11.i:                                       ; preds = %if.end.i
  %call12.i = tail call fastcc i32 @exportfs_get_name(ptr noundef %mnt, ptr noundef %parent.0.i, ptr noundef %nbuf, ptr noundef %dentry.0) #6
  %18 = zext i32 %call12.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call12.i, label %do.end11.i.out_err.i_crit_edge [
    i32 -2, label %do.end11.i.out_reconnected.i_crit_edge
    i32 0, label %do.end20.i
  ]

do.end11.i.out_reconnected.i_crit_edge:           ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_reconnected.i

do.end11.i.out_err.i_crit_edge:                   ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_err.i

do.end20.i:                                       ; preds = %do.end11.i
  %call21.i = tail call i32 @strlen(ptr noundef %nbuf) #10
  %call22.i = tail call ptr @lookup_one_len_unlocked(ptr noundef %nbuf, ptr noundef %parent.0.i, i32 noundef %call21.i) #6
  %cmp.i67.i = icmp ugt ptr %call22.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i67.i, label %do.end27.i, label %if.end29.i

do.end27.i:                                       ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %call22.i to i32
  br label %out_err.i

if.end29.i:                                       ; preds = %do.end20.i
  %cmp30.not.i = icmp eq ptr %call22.i, %dentry.0
  br i1 %cmp30.not.i, label %if.end32.i, label %if.then31.i

if.then31.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dput(ptr noundef %call22.i) #6
  br label %out_reconnected.i

if.end32.i:                                       ; preds = %if.end29.i
  tail call void @dput(ptr noundef %dentry.0) #6
  %20 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %d_parent, align 8
  %cmp33.i = icmp eq ptr %21, %dentry.0
  br i1 %cmp33.i, label %if.end32.i.out_err.i_crit_edge, label %if.end32.i.if.end13_crit_edge

if.end32.i.if.end13_crit_edge:                    ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.end32.i.out_err.i_crit_edge:                   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_err.i

out_err.i:                                        ; preds = %if.end32.i.out_err.i_crit_edge, %do.end27.i, %do.end11.i.out_err.i_crit_edge
  %err.0.i = phi i32 [ %19, %do.end27.i ], [ %call12.i, %do.end11.i.out_err.i_crit_edge ], [ -116, %if.end32.i.out_err.i_crit_edge ]
  tail call void @dput(ptr noundef %parent.0.i) #6
  %22 = inttoptr i32 %err.0.i to ptr
  br label %if.end13

out_reconnected.i:                                ; preds = %if.then31.i, %do.end11.i.out_reconnected.i_crit_edge
  tail call void @dput(ptr noundef %parent.0.i) #6
  %tobool.not.i.i.i = icmp eq ptr %dentry.0, null
  br i1 %tobool.not.i.i.i, label %out_reconnected.i.while.cond.i.i.preheader_crit_edge, label %if.then.i.i.i

out_reconnected.i.while.cond.i.i.preheader_crit_edge: ; preds = %out_reconnected.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i.preheader

if.then.i.i.i:                                    ; preds = %out_reconnected.i
  call void @__sanitizer_cov_trace_pc() #8
  %d_lockref.i.i.i = getelementptr inbounds %struct.dentry, ptr %dentry.0, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i.i.i) #6
  br label %while.cond.i.i.preheader

while.cond.i.i.preheader:                         ; preds = %if.then.i.i.i, %out_reconnected.i.while.cond.i.i.preheader_crit_edge
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %while.cond.i.i.preheader
  %dentry.addr.0.i.i = phi ptr [ %call1.i.i, %while.body.i.i.while.cond.i.i_crit_edge ], [ %dentry.0, %while.cond.i.i.preheader ]
  %23 = ptrtoint ptr %dentry.addr.0.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dentry.addr.0.i.i, align 8
  %and.i.i = and i32 %24, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end13.thread, label %while.body.i.i

if.end13.thread:                                  ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dput(ptr noundef %dentry.addr.0.i.i) #6
  br label %while.end

while.body.i.i:                                   ; preds = %while.cond.i.i
  %call1.i.i = tail call ptr @dget_parent(ptr noundef %dentry.addr.0.i.i) #6
  tail call void @dput(ptr noundef %dentry.addr.0.i.i) #6
  %cmp.i68.i = icmp eq ptr %dentry.addr.0.i.i, %call1.i.i
  br i1 %cmp.i68.i, label %if.end16.thread, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i

if.end16.thread:                                  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dput(ptr noundef %dentry.addr.0.i.i) #6
  tail call void @dput(ptr noundef %dentry.0) #6
  br label %if.then18

if.else:                                          ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = tail call ptr @dget_parent(ptr noundef %dentry.0) #6
  br label %if.end13

if.end13:                                         ; preds = %if.else, %out_err.i, %if.end32.i.if.end13_crit_edge, %if.end.i.if.end13_crit_edge
  %parent.0 = phi ptr [ %call12, %if.else ], [ %22, %out_err.i ], [ %parent.0.i, %if.end.i.if.end13_crit_edge ], [ %parent.0.i, %if.end32.i.if.end13_crit_edge ]
  %tobool14.not = icmp eq ptr %parent.0, null
  br i1 %tobool14.not, label %if.end13.while.end_crit_edge, label %if.end16

if.end13.while.end_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end16:                                         ; preds = %if.end13
  tail call void @dput(ptr noundef %dentry.0) #6
  %cmp.i = icmp ugt ptr %parent.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end16.if.then18_crit_edge, label %if.end16.while.cond_crit_edge

if.end16.while.cond_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

if.end16.if.then18_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then18

if.then18:                                        ; preds = %if.end16.if.then18_crit_edge, %if.end16.thread
  %parent.04851 = phi ptr [ inttoptr (i32 -116 to ptr), %if.end16.thread ], [ %parent.0, %if.end16.if.then18_crit_edge ]
  %25 = ptrtoint ptr %parent.04851 to i32
  br label %cleanup

while.end:                                        ; preds = %if.end13.while.end_crit_edge, %if.end13.thread, %while.cond.while.end_crit_edge
  tail call void @dput(ptr noundef %dentry.0) #6
  br i1 %tobool.not.i, label %while.end.dget.exit.i_crit_edge, label %if.then.i.i

while.end.dget.exit.i_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %dget.exit.i

if.then.i.i:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %d_lockref.i.i = getelementptr inbounds %struct.dentry, ptr %target_dir, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i.i) #6
  br label %dget.exit.i

dget.exit.i:                                      ; preds = %if.then.i.i, %while.end.dget.exit.i_crit_edge
  %26 = ptrtoint ptr %target_dir to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %target_dir, align 8
  %and53.i = and i32 %27, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i)
  %tobool.not54.i = icmp eq i32 %and53.i, 0
  br i1 %tobool.not54.i, label %dget.exit.i.clear_disconnected.exit_crit_edge, label %dget.exit.i.while.body.i_crit_edge

dget.exit.i.while.body.i_crit_edge:               ; preds = %dget.exit.i
  br label %while.body.i

dget.exit.i.clear_disconnected.exit_crit_edge:    ; preds = %dget.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clear_disconnected.exit

while.body.i:                                     ; preds = %if.end29.i42.while.body.i_crit_edge, %dget.exit.i.while.body.i_crit_edge
  %dentry.addr.055.i = phi ptr [ %call1.i, %if.end29.i42.while.body.i_crit_edge ], [ %target_dir, %dget.exit.i.while.body.i_crit_edge ]
  %call1.i = tail call ptr @dget_parent(ptr noundef %dentry.addr.055.i) #6
  %d_parent.i37 = getelementptr inbounds %struct.dentry, ptr %dentry.addr.055.i, i32 0, i32 3
  %28 = ptrtoint ptr %d_parent.i37 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %d_parent.i37, align 8
  %cmp.i38 = icmp eq ptr %dentry.addr.055.i, %29
  br i1 %cmp.i38, label %land.rhs.i, label %while.body.i.if.end29.i42_crit_edge

while.body.i.if.end29.i42_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i42

land.rhs.i:                                       ; preds = %while.body.i
  %.b52.i = load i1, ptr @clear_disconnected.__already_done, align 1
  br i1 %.b52.i, label %land.rhs.i.if.end29.i42_crit_edge, label %if.then.i39, !prof !26

land.rhs.i.if.end29.i42_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i42

if.then.i39:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @clear_disconnected.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 97, i32 noundef 9, ptr noundef null) #6
  br label %if.end29.i42

if.end29.i42:                                     ; preds = %if.then.i39, %land.rhs.i.if.end29.i42_crit_edge, %while.body.i.if.end29.i42_crit_edge
  %d_lockref.i40 = getelementptr inbounds %struct.dentry, ptr %dentry.addr.055.i, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref.i40) #6
  %30 = ptrtoint ptr %dentry.addr.055.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dentry.addr.055.i, align 8
  %and38.i = and i32 %31, -33
  store i32 %and38.i, ptr %dentry.addr.055.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.i40) #6
  tail call void @dput(ptr noundef %dentry.addr.055.i) #6
  %32 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %call1.i, align 8
  %and.i = and i32 %33, 32
  %tobool.not.i41 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i41, label %if.end29.i42.clear_disconnected.exit_crit_edge, label %if.end29.i42.while.body.i_crit_edge

if.end29.i42.while.body.i_crit_edge:              ; preds = %if.end29.i42
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.end29.i42.clear_disconnected.exit_crit_edge:   ; preds = %if.end29.i42
  call void @__sanitizer_cov_trace_pc() #8
  br label %clear_disconnected.exit

clear_disconnected.exit:                          ; preds = %if.end29.i42.clear_disconnected.exit_crit_edge, %dget.exit.i.clear_disconnected.exit_crit_edge
  %dentry.addr.0.lcssa.i = phi ptr [ %target_dir, %dget.exit.i.clear_disconnected.exit_crit_edge ], [ %call1.i, %if.end29.i42.clear_disconnected.exit_crit_edge ]
  tail call void @dput(ptr noundef %dentry.addr.0.lcssa.i) #6
  br label %cleanup

cleanup:                                          ; preds = %clear_disconnected.exit, %if.then18
  %retval.0 = phi i32 [ %25, %if.then18 ], [ 0, %clear_disconnected.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @find_acceptable_alias(ptr noundef %result, ptr nocapture noundef readonly %acceptable, ptr noundef %context) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 %acceptable(ptr noundef %context, ptr noundef %result) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %d_inode = getelementptr inbounds %struct.dentry, ptr %result, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode, align 8
  %i_lock = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #6
  %2 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 37
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %tobool1.not = icmp eq ptr %4, null
  %add.ptr = getelementptr i8, ptr %4, i32 -200
  %tobool3.not5761 = icmp eq ptr %add.ptr, null
  %tobool3.not57 = or i1 %tobool1.not, %tobool3.not5761
  br i1 %tobool3.not57, label %for.end.thread, label %if.end.dget.exit_crit_edge

if.end.dget.exit_crit_edge:                       ; preds = %if.end
  br label %dget.exit

for.end.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #6
  br label %cleanup

dget.exit:                                        ; preds = %if.end12.dget.exit_crit_edge, %if.end.dget.exit_crit_edge
  %dentry.059 = phi ptr [ %add.ptr20, %if.end12.dget.exit_crit_edge ], [ %add.ptr, %if.end.dget.exit_crit_edge ]
  %toput.058 = phi ptr [ %dentry.059, %if.end12.dget.exit_crit_edge ], [ null, %if.end.dget.exit_crit_edge ]
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %dentry.059, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #6
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #6
  %tobool6.not = icmp eq ptr %toput.058, null
  br i1 %tobool6.not, label %dget.exit.if.end8_crit_edge, label %if.then7

dget.exit.if.end8_crit_edge:                      ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then7:                                         ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dput(ptr noundef nonnull %toput.058) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %dget.exit.if.end8_crit_edge
  %cmp.not = icmp eq ptr %dentry.059, %result
  br i1 %cmp.not, label %if.end8.if.end12_crit_edge, label %land.lhs.true

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end8
  %call9 = tail call i32 %acceptable(ptr noundef %context, ptr noundef nonnull %dentry.059) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.if.end12_crit_edge, label %if.then11

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dput(ptr noundef %result) #6
  br label %cleanup

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %if.end8.if.end12_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #6
  %d_u = getelementptr inbounds %struct.dentry, ptr %dentry.059, i32 0, i32 15
  %5 = ptrtoint ptr %d_u to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d_u, align 8
  %tobool16.not = icmp eq ptr %6, null
  %add.ptr20 = getelementptr i8, ptr %6, i32 -200
  %tobool3.not65 = icmp eq ptr %add.ptr20, null
  %tobool3.not = or i1 %tobool16.not, %tobool3.not65
  br i1 %tobool3.not, label %if.then26, label %if.end12.dget.exit_crit_edge

if.end12.dget.exit_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %dget.exit

if.then26:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #6
  tail call void @dput(ptr noundef nonnull %dentry.059) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.then11, %for.end.thread, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %dentry.059, %if.then11 ], [ %result, %entry.cleanup_crit_edge ], [ null, %if.then26 ], [ null, %for.end.thread ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @exportfs_get_name(ptr noundef %mnt, ptr noundef %dir, ptr noundef %name, ptr noundef %child) unnamed_addr #0 align 64 {
entry:
  %stat.i = alloca %struct.kstat, align 8
  %child_path.i = alloca %struct.path, align 4
  %buffer.i = alloca %struct.getdents_callback, align 8
  %path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dir, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_export_op = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %s_export_op to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_export_op, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #6
  %4 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %5 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %mnt, ptr %path, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dir, ptr %4, align 4
  %get_name = getelementptr inbounds %struct.export_operations, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %get_name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get_name, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %8(ptr noundef %dir, ptr noundef %name, ptr noundef %child) #6
  br label %cleanup

if.else:                                          ; preds = %entry
  %9 = tail call i32 @llvm.read_register.i32(metadata !16) #6
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task.i, align 8
  %cred1.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 99
  %13 = ptrtoint ptr %cred1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cred1.i, align 16
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dir, i32 0, i32 5
  %15 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %stat.i) #6
  %17 = call ptr @memset(ptr %stat.i, i32 255, i32 144)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %child_path.i) #6
  %18 = getelementptr inbounds %struct.path, ptr %child_path.i, i32 0, i32 1
  %19 = ptrtoint ptr %child_path.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %mnt, ptr %child_path.i, align 4
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %child, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %buffer.i) #6
  %21 = call ptr @memset(ptr %buffer.i, i32 0, i32 40)
  %22 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @filldir_one, ptr %buffer.i, align 8
  %name4.i = getelementptr inbounds %struct.getdents_callback, ptr %buffer.i, i32 0, i32 1
  %23 = ptrtoint ptr %name4.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %name, ptr %name4.i, align 8
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.else.get_name.exit_crit_edge, label %lor.lhs.false.i

if.else.get_name.exit_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_name.exit

lor.lhs.false.i:                                  ; preds = %if.else
  %24 = ptrtoint ptr %16 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %16, align 8
  %26 = and i16 %25, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %26)
  %cmp.i = icmp eq i16 %26, 16384
  br i1 %cmp.i, label %if.end.i, label %lor.lhs.false.i.get_name.exit_crit_edge

lor.lhs.false.i.get_name.exit_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_name.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %27 = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 44
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  %tobool6.not.i = icmp eq ptr %29, null
  br i1 %tobool6.not.i, label %if.end.i.get_name.exit_crit_edge, label %if.end8.i

if.end.i.get_name.exit_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_name.exit

if.end8.i:                                        ; preds = %if.end.i
  %call9.i = call i32 @vfs_getattr_nosec(ptr noundef nonnull %child_path.i, ptr noundef nonnull %stat.i, i32 noundef 256, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end8.i.get_name.exit_crit_edge

if.end8.i.get_name.exit_crit_edge:                ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_name.exit

if.end12.i:                                       ; preds = %if.end8.i
  %ino.i = getelementptr inbounds %struct.kstat, ptr %stat.i, i32 0, i32 6
  %30 = ptrtoint ptr %ino.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %ino.i, align 8
  %ino13.i = getelementptr inbounds %struct.getdents_callback, ptr %buffer.i, i32 0, i32 2
  %32 = ptrtoint ptr %ino13.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %ino13.i, align 8
  %call14.i = call ptr @dentry_open(ptr noundef nonnull %path, i32 noundef 0, ptr noundef %14) #6
  %33 = ptrtoint ptr %call14.i to i32
  %cmp.i.i = icmp ugt ptr %call14.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end12.i.get_name.exit_crit_edge, label %if.end18.i

if.end12.i.get_name.exit_crit_edge:               ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_name.exit

if.end18.i:                                       ; preds = %if.end12.i
  %f_op.i = getelementptr inbounds %struct.file, ptr %call14.i, i32 0, i32 3
  %34 = ptrtoint ptr %f_op.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %f_op.i, align 4
  %iterate.i = getelementptr inbounds %struct.file_operations, ptr %35, i32 0, i32 7
  %36 = ptrtoint ptr %iterate.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %iterate.i, align 4
  %tobool19.not.i = icmp eq ptr %37, null
  br i1 %tobool19.not.i, label %land.lhs.true.i, label %if.end18.i.if.end23.i_crit_edge

if.end18.i.if.end23.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i

land.lhs.true.i:                                  ; preds = %if.end18.i
  %iterate_shared.i = getelementptr inbounds %struct.file_operations, ptr %35, i32 0, i32 8
  %38 = ptrtoint ptr %iterate_shared.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %iterate_shared.i, align 4
  %tobool21.not.i = icmp eq ptr %39, null
  br i1 %tobool21.not.i, label %land.lhs.true.i.out_close.i_crit_edge, label %land.lhs.true.i.if.end23.i_crit_edge

land.lhs.true.i.if.end23.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i

land.lhs.true.i.out_close.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_close.i

if.end23.i:                                       ; preds = %land.lhs.true.i.if.end23.i_crit_edge, %if.end18.i.if.end23.i_crit_edge
  %sequence.i = getelementptr inbounds %struct.getdents_callback, ptr %buffer.i, i32 0, i32 4
  %40 = ptrtoint ptr %sequence.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %sequence.i, align 4
  %found.i = getelementptr inbounds %struct.getdents_callback, ptr %buffer.i, i32 0, i32 3
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end33.i.while.cond.i_crit_edge, %if.end23.i
  %41 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sequence.i, align 4
  %call26.i = call i32 @iterate_dir(ptr noundef %call14.i, ptr noundef nonnull %buffer.i) #6
  %43 = ptrtoint ptr %found.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %found.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool27.not.i = icmp eq i32 %44, 0
  br i1 %tobool27.not.i, label %if.end29.i, label %while.cond.i.out_close.i_crit_edge

while.cond.i.out_close.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_close.i

if.end29.i:                                       ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %cmp30.i = icmp slt i32 %call26.i, 0
  br i1 %cmp30.i, label %if.end29.i.out_close.i_crit_edge, label %if.end33.i

if.end29.i.out_close.i_crit_edge:                 ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_close.i

if.end33.i:                                       ; preds = %if.end29.i
  %45 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sequence.i, align 4
  %cmp35.i = icmp eq i32 %42, %46
  br i1 %cmp35.i, label %if.end33.i.out_close.i_crit_edge, label %if.end33.i.while.cond.i_crit_edge

if.end33.i.while.cond.i_crit_edge:                ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

if.end33.i.out_close.i_crit_edge:                 ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_close.i

out_close.i:                                      ; preds = %if.end33.i.out_close.i_crit_edge, %if.end29.i.out_close.i_crit_edge, %while.cond.i.out_close.i_crit_edge, %land.lhs.true.i.out_close.i_crit_edge
  %error.1.i = phi i32 [ -22, %land.lhs.true.i.out_close.i_crit_edge ], [ %call26.i, %if.end29.i.out_close.i_crit_edge ], [ 0, %while.cond.i.out_close.i_crit_edge ], [ -2, %if.end33.i.out_close.i_crit_edge ]
  call void @fput(ptr noundef %call14.i) #6
  br label %get_name.exit

get_name.exit:                                    ; preds = %out_close.i, %if.end12.i.get_name.exit_crit_edge, %if.end8.i.get_name.exit_crit_edge, %if.end.i.get_name.exit_crit_edge, %lor.lhs.false.i.get_name.exit_crit_edge, %if.else.get_name.exit_crit_edge
  %retval.0.i = phi i32 [ %call9.i, %if.end8.i.get_name.exit_crit_edge ], [ %33, %if.end12.i.get_name.exit_crit_edge ], [ %error.1.i, %out_close.i ], [ -22, %if.end.i.get_name.exit_crit_edge ], [ -20, %lor.lhs.false.i.get_name.exit_crit_edge ], [ -20, %if.else.get_name.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %buffer.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %child_path.i) #6
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %stat.i) #6
  br label %cleanup

cleanup:                                          ; preds = %get_name.exit, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %retval.0.i, %get_name.exit ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_one_len(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @exportfs_decode_fh(ptr noundef %mnt, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fileid_type, ptr noundef %acceptable, ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @exportfs_decode_fh_raw(ptr noundef %mnt, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fileid_type, ptr noundef %acceptable, ptr noundef %context)
  %tobool.not.i = icmp eq ptr %call, null
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  %cmp = icmp eq ptr %call, inttoptr (i32 -12 to ptr)
  %spec.select = select i1 %cmp, ptr inttoptr (i32 -12 to ptr), ptr inttoptr (i32 -116 to ptr)
  %retval.0 = select i1 %spec.select.i, ptr %spec.select, ptr %call
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_one_len_unlocked(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @filldir_one(ptr nocapture noundef %ctx, ptr nocapture noundef readonly %name, i32 noundef %len, i64 noundef %pos, i64 noundef %ino, i32 noundef %d_type) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sequence = getelementptr inbounds %struct.getdents_callback, ptr %ctx, i32 0, i32 4
  %0 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sequence, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %sequence, align 4
  %ino1 = getelementptr inbounds %struct.getdents_callback, ptr %ctx, i32 0, i32 2
  %2 = ptrtoint ptr %ino1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ino1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %ino)
  %cmp = icmp eq i64 %3, %ino
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %len)
  %cmp2 = icmp slt i32 %len, 256
  %or.cond = and i1 %cmp2, %cmp
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name3 = getelementptr inbounds %struct.getdents_callback, ptr %ctx, i32 0, i32 1
  %4 = ptrtoint ptr %name3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name3, align 8
  %6 = call ptr @memcpy(ptr %5, ptr %name, i32 %len)
  %7 = load ptr, ptr %name3, align 8
  %arrayidx = getelementptr i8, ptr %7, i32 %len
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx, align 1
  %found = getelementptr inbounds %struct.getdents_callback, ptr %ctx, i32 0, i32 3
  %9 = ptrtoint ptr %found to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %found, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %result.0 = phi i32 [ -1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %result.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_getattr_nosec(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dentry_open(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iterate_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }
attributes #10 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14}
!llvm.named.register.sp = !{!16}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @__ksymtab_exportfs_encode_inode_fh, !1, !"__ksymtab_exportfs_encode_inode_fh", i1 false, i1 false}
!1 = !{!"../fs/exportfs/expfs.c", i32 395, i32 1}
!2 = !{ptr @__ksymtab_exportfs_encode_fh, !3, !"__ksymtab_exportfs_encode_fh", i1 false, i1 false}
!3 = !{!"../fs/exportfs/expfs.c", i32 418, i32 1}
!4 = !{ptr @__ksymtab_exportfs_decode_fh_raw, !5, !"__ksymtab_exportfs_decode_fh_raw", i1 false, i1 false}
!5 = !{!"../fs/exportfs/expfs.c", i32 566, i32 1}
!6 = !{ptr @__ksymtab_exportfs_decode_fh, !7, !"__ksymtab_exportfs_decode_fh", i1 false, i1 false}
!7 = !{!"../fs/exportfs/expfs.c", i32 584, i32 1}
!8 = !{ptr @__UNIQUE_ID_file202, !9, !"__UNIQUE_ID_file202", i1 false, i1 false}
!9 = !{!"../fs/exportfs/expfs.c", i32 586, i32 1}
!10 = !{ptr @__UNIQUE_ID_license203, !9, !"__UNIQUE_ID_license203", i1 false, i1 false}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../fs/exportfs/expfs.c", i32 97, i32 3}
!13 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../fs/exportfs/expfs.c", i32 279, i32 28}
!16 = !{!"sp"}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{!"branch_weights", i32 1, i32 2000}
!28 = !{i64 2152782956, i64 2152783440, i64 2152782993, i64 2152783049, i64 2152783083, i64 2152783107, i64 2152783148, i64 2152783169, i64 2152783197, i64 2152783231}
