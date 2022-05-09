; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_filestream.c_pt.bc'
source_filename = "../fs/xfs/xfs_filestream.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfs_param = type { %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val }
%struct.xfs_sysctl_val = type { i32, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.xfs_perag = type { ptr, i32, %struct.atomic_t, i8, i8, i8, i8, [3 x i8], i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.xfs_ag_resv, %struct.xfs_ag_resv, %struct.callback_head, i16, i16, %struct.spinlock, %struct.spinlock, %struct.rb_root, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.xarray, i32, i32, %struct.spinlock, %struct.rhashtable, %struct.delayed_work, %struct.rhashtable }
%struct.xfs_ag_resv = type { i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xfs_inode = type { ptr, ptr, ptr, ptr, i64, %struct.xfs_imap, ptr, ptr, %struct.xfs_ifork, ptr, %struct.mrlock_t, %struct.atomic_t, %struct.llist_node, i16, i16, %struct.spinlock, i32, i64, i64, i64, i32, i32, %union.anon.90, i8, i16, i64, %struct.timespec64, %struct.inode, %struct.spinlock, %struct.work_struct, %struct.list_head }
%struct.xfs_imap = type { i64, i16, i16 }
%struct.xfs_ifork = type { i64, ptr, i32, i32, %union.anon.89, i16, i8, i32 }
%union.anon.89 = type { ptr }
%struct.mrlock_t = type { %struct.rw_semaphore, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.llist_node = type { ptr }
%union.anon.90 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.75 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.76 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.78 = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.81, %struct.list_head, %struct.list_head, %union.anon.82 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.79 }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { %struct.spinlock, i32 }
%union.anon.81 = type { %struct.list_head }
%union.anon.82 = type { %struct.hlist_node }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xfs_fstrm_item = type { %struct.xfs_mru_cache_elem, i32 }
%struct.xfs_mru_cache_elem = type { %struct.list_head, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xfs_bmalloca = type { ptr, ptr, %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec, i64, i32, i64, ptr, %struct.xfs_iext_cursor, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32 }
%struct.xfs_bmbt_irec = type { i64, i64, i64, i32 }
%struct.xfs_iext_cursor = type { ptr, i32 }
%struct.xfs_trans = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, i32 }

@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"S_ISREG(VFS_I(ip)->i_mode)\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fs/xfs/xfs_filestream.c\00", [40 x i8] zeroinitializer }, align 32
@xfs_params = external dso_local local_unnamed_addr global %struct.xfs_param, align 4
@__tracepoint_xfs_filestream_lookup = external dso_local global %struct.tracepoint, align 4
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_filestream_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"S_ISDIR(VFS_I(ip)->i_mode)\00", [37 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_filestream_scan = external dso_local global %struct.tracepoint, align 4
@trace_xfs_filestream_scan.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_filestream_pick = external dso_local global %struct.tracepoint, align 4
@trace_xfs_filestream_pick.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_filestream_free = external dso_local global %struct.tracepoint, align 4
@trace_xfs_filestream_free.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 279, i32 2 }
@___asan_gen_.16 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 658, i32 1 }
@___asan_gen_.19 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 108, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private constant [27 x i8] c"../fs/xfs/xfs_filestream.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 112, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_filestream_peek_ag(ptr noundef %mp, i32 noundef %agno) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xfs_perag_get(ptr noundef %mp, i32 noundef %agno) #7
  %pagf_fstrms = getelementptr inbounds %struct.xfs_perag, ptr %call, i32 0, i32 30
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pagf_fstrms, i32 noundef 4) #7
  %0 = ptrtoint ptr %pagf_fstrms to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %pagf_fstrms, align 4
  tail call void @xfs_perag_put(ptr noundef %call) #7
  ret i32 %1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_perag_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_perag_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_filestream_lookup_ag(ptr noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  %ag = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ag) #7
  %2 = ptrtoint ptr %ag to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ag, align 4
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  %3 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %i_vnode.i, align 8
  %5 = and i16 %4, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %5)
  %cmp = icmp eq i16 %5, -32768
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !32

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 279) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %call1.i = tail call ptr @d_find_alias(ptr noundef %i_vnode.i) #7
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %cond.end.cleanup_crit_edge, label %if.end.i

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %cond.end
  %call2.i = tail call ptr @dget_parent(ptr noundef nonnull %call1.i) #7
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %out.thread17.i, label %out.i

out.thread17.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dput(ptr noundef nonnull %call1.i) #7
  br label %cleanup

out.i:                                            ; preds = %if.end.i
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %call2.i, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i.i, align 8
  %call7.i = tail call ptr @igrab(ptr noundef %7) #7
  tail call void @dput(ptr noundef nonnull %call2.i) #7
  tail call void @dput(ptr noundef nonnull %call1.i) #7
  %tobool8.not.i = icmp eq ptr %call7.i, null
  %add.ptr.i.i = getelementptr i8, ptr %call7.i, i32 -312
  %tobool4.not = icmp eq ptr %add.ptr.i.i, null
  %or.cond = or i1 %tobool8.not.i, %tobool4.not
  br i1 %or.cond, label %out.i.cleanup_crit_edge, label %if.end

out.i.cleanup_crit_edge:                          ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %out.i
  %m_filestream = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 19
  %8 = ptrtoint ptr %m_filestream to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m_filestream, align 4
  %i_ino = getelementptr i8, ptr %call7.i, i32 -296
  %10 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_ino, align 8
  %conv5 = trunc i64 %11 to i32
  %call6 = tail call ptr @xfs_mru_cache_lookup(ptr noundef %9, i32 noundef %conv5) #7
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end12, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %ag9 = getelementptr inbounds %struct.xfs_fstrm_item, ptr %call6, i32 0, i32 1
  %12 = ptrtoint ptr %ag9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ag9, align 4
  %14 = ptrtoint ptr %ag to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %ag, align 4
  %15 = ptrtoint ptr %m_filestream to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %m_filestream, align 4
  tail call void @xfs_mru_cache_done(ptr noundef %16) #7
  %i_ino11 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 4
  %17 = ptrtoint ptr %i_ino11 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %i_ino11, align 8
  tail call fastcc void @trace_xfs_filestream_lookup(ptr noundef %1, i64 noundef %18, i32 noundef %13)
  br label %out

if.end12:                                         ; preds = %if.end
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 66
  %19 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %m_opstate.i, align 4
  %21 = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.i.not = icmp eq i32 %21, 0
  br i1 %tobool.i.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 12, i32 1) to i32))
  %22 = load i32, ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 12, i32 1), align 4
  %m_agfrotor = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 93
  %23 = ptrtoint ptr %m_agfrotor to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %m_agfrotor, align 8
  %div = udiv i32 %24, %22
  %sb_agcount = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 12
  %25 = ptrtoint ptr %sb_agcount to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sb_agcount, align 8
  %rem = urem i32 %div, %26
  %add = add i32 %24, 1
  %mul = mul i32 %26, %22
  %rem18 = urem i32 %add, %mul
  store i32 %rem18, ptr %m_agfrotor, align 8
  br label %if.end22

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %i_ino, align 8
  %agino_log = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 64, i32 15
  %29 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %agino_log, align 8
  %sh_prom = zext i32 %30 to i64
  %shr = lshr i64 %28, %sh_prom
  %conv21 = trunc i64 %shr to i32
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then14
  %startag.0 = phi i32 [ %rem, %if.then14 ], [ %conv21, %if.else ]
  %call23 = call fastcc i32 @xfs_filestream_pick_ag(ptr noundef nonnull %add.ptr.i.i, i32 noundef %startag.0, ptr noundef nonnull %ag, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end22.out_crit_edge, label %if.then25

if.end22.out_crit_edge:                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %ag to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %ag, align 4
  br label %out

out:                                              ; preds = %if.then25, %if.end22.out_crit_edge, %if.then8
  tail call void @xfs_irele(ptr noundef nonnull %add.ptr.i.i) #7
  %32 = ptrtoint ptr %ag to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ag, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %out.i.cleanup_crit_edge, %out.thread17.i, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %33, %out ], [ -1, %out.thread17.i ], [ -1, %cond.end.cleanup_crit_edge ], [ -1, %out.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ag) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_mru_cache_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_mru_cache_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_filestream_lookup(ptr noundef %mp, i64 noundef %ino, i32 noundef %agno) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_filestream_lookup, i32 0, i32 1), ptr blockaddress(@trace_xfs_filestream_lookup, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !33

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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !32

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !34
  %call42 = tail call i32 @__traceiter_xfs_filestream_lookup(ptr noundef null, ptr noundef %mp, i64 noundef %ino, i32 noundef %agno) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !35
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !32

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_filestream_lookup, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_filestream_lookup, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_filestream_lookup.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_xfs_filestream_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 658, ptr noundef nonnull @.str.3) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !37
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_filestream_pick_ag(ptr noundef %ip, i32 noundef %startag, ptr nocapture noundef %agp, i32 noundef %flags, i32 noundef %minlen) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  %2 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %i_vnode.i, align 8
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %4)
  %cmp = icmp eq i16 %4, 16384
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !32

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 112) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %sb_agblocks = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sb_agblocks, align 4
  %div = udiv i32 %6, 50
  %7 = ptrtoint ptr %agp to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %agp, align 4
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %minlen)
  %tobool26.not = icmp eq i32 %minlen, 0
  %sb_agcount = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %flags.addr.0 = phi i32 [ %flags, %cond.end ], [ %flags.addr.1, %for.inc ]
  %maxfree.0 = phi i32 [ 0, %cond.end ], [ %maxfree.2, %for.inc ]
  %ag.0 = phi i32 [ %startag, %cond.end ], [ %ag.1, %for.inc ]
  %max_ag.0 = phi i32 [ -1, %cond.end ], [ %max_ag.2, %for.inc ]
  %trylock.0 = phi i32 [ 1, %cond.end ], [ %trylock.1, %for.inc ]
  %nscan.0 = phi i32 [ 0, %cond.end ], [ %inc67, %for.inc ]
  %8 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %i_ino, align 8
  tail call fastcc void @trace_xfs_filestream_scan(ptr noundef %1, i64 noundef %9, i32 noundef %ag.0)
  %call3 = tail call ptr @xfs_perag_get(ptr noundef %1, i32 noundef %ag.0) #7
  %pagf_init = getelementptr inbounds %struct.xfs_perag, ptr %call3, i32 0, i32 3
  %10 = ptrtoint ptr %pagf_init to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pagf_init, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool4.not = icmp eq i8 %11, 0
  br i1 %tobool4.not, label %if.then, label %for.cond.if.end12_crit_edge

for.cond.if.end12_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then:                                          ; preds = %for.cond
  %call5 = tail call i32 @xfs_alloc_pagf_init(ptr noundef %1, ptr noundef null, i32 noundef %ag.0, i32 noundef %trylock.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then.if.end12_crit_edge, label %if.then7

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then7:                                         ; preds = %if.then
  tail call void @xfs_perag_put(ptr noundef %call3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call5)
  %cmp8.not = icmp eq i32 %call5, -11
  br i1 %cmp8.not, label %if.then7.for.inc_crit_edge, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7.for.inc_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end12:                                         ; preds = %if.then.if.end12_crit_edge, %for.cond.if.end12_crit_edge
  %pagf_freeblks = getelementptr inbounds %struct.xfs_perag, ptr %call3, i32 0, i32 10
  %12 = ptrtoint ptr %pagf_freeblks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pagf_freeblks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %maxfree.0)
  %cmp13 = icmp ugt i32 %13, %maxfree.0
  %14 = tail call i32 @llvm.umax.i32(i32 %13, i32 %maxfree.0)
  %spec.select164 = select i1 %cmp13, i32 %ag.0, i32 %max_ag.0
  %call.i = tail call ptr @xfs_perag_get(ptr noundef %1, i32 noundef %ag.0) #7
  %pagf_fstrms.i = getelementptr inbounds %struct.xfs_perag, ptr %call.i, i32 0, i32 30
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pagf_fstrms.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !38
  tail call void @llvm.prefetch.p0(ptr %pagf_fstrms.i, i32 1, i32 3, i32 1) #7
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pagf_fstrms.i, ptr %pagf_fstrms.i, i32 1, ptr elementtype(i32) %pagf_fstrms.i) #7, !srcloc !39
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %15, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !40
  tail call void @xfs_perag_put(ptr noundef %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i)
  %cmp19 = icmp sgt i32 %asmresult.i.i.i.i.i, 1
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %call.i167 = tail call ptr @xfs_perag_get(ptr noundef %1, i32 noundef %ag.0) #7
  %pagf_fstrms.i168 = getelementptr inbounds %struct.xfs_perag, ptr %call.i167, i32 0, i32 30
  %call.i.i.i169 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pagf_fstrms.i168, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %pagf_fstrms.i168, i32 1, i32 3, i32 1) #7
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pagf_fstrms.i168, ptr %pagf_fstrms.i168, i32 1, ptr elementtype(i32) %pagf_fstrms.i168) #7, !srcloc !41
  br label %next_ag

if.end22:                                         ; preds = %if.end12
  %call23 = tail call i32 @xfs_alloc_min_freelist(ptr noundef %1, ptr noundef %call3) #7
  %call24 = tail call i32 @xfs_ag_resv_needed(ptr noundef %call3, i32 noundef 0) #7
  %call25 = tail call i32 @xfs_alloc_longest_free_extent(ptr noundef %call3, i32 noundef %call23, i32 noundef %call24) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call25, i32 %minlen)
  %cmp27.not = icmp ult i32 %call25, %minlen
  %or.cond = select i1 %tobool26.not, i1 true, i1 %cmp27.not
  br i1 %or.cond, label %lor.lhs.false, label %if.end22.land.lhs.true34_crit_edge

if.end22.land.lhs.true34_crit_edge:               ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true34

lor.lhs.false:                                    ; preds = %if.end22
  br i1 %tobool26.not, label %land.lhs.true30, label %lor.lhs.false.if.end44_crit_edge

lor.lhs.false.if.end44_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

land.lhs.true30:                                  ; preds = %lor.lhs.false
  %17 = ptrtoint ptr %pagf_freeblks to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pagf_freeblks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %div)
  %cmp32.not = icmp ult i32 %18, %div
  br i1 %cmp32.not, label %land.lhs.true30.if.end44_crit_edge, label %land.lhs.true30.land.lhs.true34_crit_edge

land.lhs.true30.land.lhs.true34_crit_edge:        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true34

land.lhs.true30.if.end44_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

land.lhs.true34:                                  ; preds = %land.lhs.true30.land.lhs.true34_crit_edge, %if.end22.land.lhs.true34_crit_edge
  %pagf_metadata = getelementptr inbounds %struct.xfs_perag, ptr %call3, i32 0, i32 5
  %19 = ptrtoint ptr %pagf_metadata to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pagf_metadata, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool35.not = icmp ne i8 %20, 0
  %and37 = and i32 %flags.addr.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp ne i32 %and37, 0
  %or.cond165 = select i1 %tobool35.not, i1 %tobool38.not, i1 false
  %and40 = and i32 %flags.addr.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  %or.cond166 = select i1 %or.cond165, i1 %tobool41.not, i1 false
  br i1 %or.cond166, label %land.lhs.true34.if.end44_crit_edge, label %if.then42

land.lhs.true34.if.end44_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then42:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %pagf_freeblks to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pagf_freeblks, align 4
  br label %for.end

if.end44:                                         ; preds = %land.lhs.true34.if.end44_crit_edge, %land.lhs.true30.if.end44_crit_edge, %lor.lhs.false.if.end44_crit_edge
  %call.i170 = tail call ptr @xfs_perag_get(ptr noundef %1, i32 noundef %ag.0) #7
  %pagf_fstrms.i171 = getelementptr inbounds %struct.xfs_perag, ptr %call.i170, i32 0, i32 30
  %call.i.i.i172 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pagf_fstrms.i171, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %pagf_fstrms.i171, i32 1, i32 3, i32 1) #7
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pagf_fstrms.i171, ptr %pagf_fstrms.i171, i32 1, ptr elementtype(i32) %pagf_fstrms.i171) #7, !srcloc !41
  br label %next_ag

next_ag:                                          ; preds = %if.end44, %if.then21
  %call.i170.sink = phi ptr [ %call.i170, %if.end44 ], [ %call.i167, %if.then21 ]
  tail call void @xfs_perag_put(ptr noundef %call.i170.sink) #7
  tail call void @xfs_perag_put(ptr noundef %call3) #7
  %inc = add i32 %ag.0, 1
  %24 = ptrtoint ptr %sb_agcount to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sb_agcount, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %25)
  %cmp46.not = icmp ult i32 %inc, %25
  %spec.store.select = select i1 %cmp46.not, i32 %inc, i32 0
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select, i32 %startag)
  %cmp50.not = icmp eq i32 %spec.store.select, %startag
  br i1 %cmp50.not, label %if.end53, label %next_ag.for.inc_crit_edge

next_ag.for.inc_crit_edge:                        ; preds = %next_ag
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end53:                                         ; preds = %next_ag
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %trylock.0)
  %cmp54.not = icmp eq i32 %trylock.0, 0
  br i1 %cmp54.not, label %if.end57, label %if.end53.for.inc_crit_edge

if.end53.for.inc_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end57:                                         ; preds = %if.end53
  %and58 = and i32 %flags.addr.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %flags.addr.0, 2
  br label %for.inc

if.end61:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %spec.select164)
  %cmp62.not = icmp eq i32 %spec.select164, -1
  br i1 %cmp62.not, label %if.end66, label %if.then64

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %call.i173 = tail call ptr @xfs_perag_get(ptr noundef %1, i32 noundef %spec.select164) #7
  %pagf_fstrms.i174 = getelementptr inbounds %struct.xfs_perag, ptr %call.i173, i32 0, i32 30
  %call.i.i.i175 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pagf_fstrms.i174, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !38
  tail call void @llvm.prefetch.p0(ptr %pagf_fstrms.i174, i32 1, i32 3, i32 1) #7
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pagf_fstrms.i174, ptr %pagf_fstrms.i174, i32 1, ptr elementtype(i32) %pagf_fstrms.i174) #7, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !40
  br label %for.end

if.end66:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %agp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %agp, align 4
  tail call fastcc void @trace_xfs_filestream_pick(ptr noundef %ip, i32 noundef %28, i32 noundef 0, i32 noundef %nscan.0)
  %29 = ptrtoint ptr %agp to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %agp, align 4
  br label %cleanup

for.inc:                                          ; preds = %if.then60, %if.end53.for.inc_crit_edge, %next_ag.for.inc_crit_edge, %if.then7.for.inc_crit_edge
  %flags.addr.1 = phi i32 [ %flags.addr.0, %next_ag.for.inc_crit_edge ], [ %or, %if.then60 ], [ %flags.addr.0, %if.then7.for.inc_crit_edge ], [ %flags.addr.0, %if.end53.for.inc_crit_edge ]
  %maxfree.2 = phi i32 [ %14, %next_ag.for.inc_crit_edge ], [ %14, %if.then60 ], [ %maxfree.0, %if.then7.for.inc_crit_edge ], [ %14, %if.end53.for.inc_crit_edge ]
  %ag.1 = phi i32 [ %spec.store.select, %next_ag.for.inc_crit_edge ], [ %startag, %if.then60 ], [ %ag.0, %if.then7.for.inc_crit_edge ], [ %startag, %if.end53.for.inc_crit_edge ]
  %max_ag.2 = phi i32 [ %spec.select164, %next_ag.for.inc_crit_edge ], [ %spec.select164, %if.then60 ], [ %max_ag.0, %if.then7.for.inc_crit_edge ], [ %spec.select164, %if.end53.for.inc_crit_edge ]
  %trylock.1 = phi i32 [ %trylock.0, %next_ag.for.inc_crit_edge ], [ 0, %if.then60 ], [ %trylock.0, %if.then7.for.inc_crit_edge ], [ 0, %if.end53.for.inc_crit_edge ]
  %inc67 = add i32 %nscan.0, 1
  br label %for.cond

for.end:                                          ; preds = %if.then64, %if.then42
  %call.i173.sink = phi ptr [ %call.i173, %if.then64 ], [ %call3, %if.then42 ]
  %storemerge = phi i32 [ %spec.select164, %if.then64 ], [ %ag.0, %if.then42 ]
  %free.0 = phi i32 [ %14, %if.then64 ], [ %22, %if.then42 ]
  tail call void @xfs_perag_put(ptr noundef %call.i173.sink) #7
  %30 = ptrtoint ptr %agp to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %storemerge, ptr %agp, align 4
  tail call fastcc void @trace_xfs_filestream_pick(ptr noundef %ip, i32 noundef %storemerge, i32 noundef %free.0, i32 noundef %nscan.0)
  %31 = ptrtoint ptr %agp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %agp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %cmp68 = icmp eq i32 %32, -1
  br i1 %cmp68, label %for.end.cleanup_crit_edge, label %if.end71

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end71:                                         ; preds = %for.end
  %call72 = tail call ptr @kmem_alloc(i32 noundef 16, i32 noundef 8) #7
  %tobool73.not = icmp eq ptr %call72, null
  br i1 %tobool73.not, label %if.end71.out_put_ag_crit_edge, label %if.end75

if.end71.out_put_ag_crit_edge:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_put_ag

if.end75:                                         ; preds = %if.end71
  %33 = ptrtoint ptr %agp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %agp, align 4
  %ag76 = getelementptr inbounds %struct.xfs_fstrm_item, ptr %call72, i32 0, i32 1
  %35 = ptrtoint ptr %ag76 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %ag76, align 4
  %m_filestream = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 19
  %36 = ptrtoint ptr %m_filestream to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %m_filestream, align 4
  %38 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %i_ino, align 8
  %conv78 = trunc i64 %39 to i32
  %call79 = tail call i32 @xfs_mru_cache_insert(ptr noundef %37, i32 noundef %conv78, ptr noundef nonnull %call72) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end75.cleanup_crit_edge, label %if.then81

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then81:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %call79)
  %cmp82 = icmp eq i32 %call79, -17
  %spec.store.select98 = select i1 %cmp82, i32 0, i32 %call79
  tail call void @kvfree(ptr noundef nonnull %call72) #7
  br label %out_put_ag

out_put_ag:                                       ; preds = %if.then81, %if.end71.out_put_ag_crit_edge
  %err.0 = phi i32 [ %spec.store.select98, %if.then81 ], [ -12, %if.end71.out_put_ag_crit_edge ]
  %40 = ptrtoint ptr %agp to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %agp, align 4
  %call.i177 = tail call ptr @xfs_perag_get(ptr noundef %1, i32 noundef %41) #7
  %pagf_fstrms.i178 = getelementptr inbounds %struct.xfs_perag, ptr %call.i177, i32 0, i32 30
  %call.i.i.i179 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pagf_fstrms.i178, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %pagf_fstrms.i178, i32 1, i32 3, i32 1) #7
  %42 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pagf_fstrms.i178, ptr %pagf_fstrms.i178, i32 1, ptr elementtype(i32) %pagf_fstrms.i178) #7, !srcloc !41
  tail call void @xfs_perag_put(ptr noundef %call.i177) #7
  br label %cleanup

cleanup:                                          ; preds = %out_put_ag, %if.end75.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end66, %if.then7.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out_put_ag ], [ 0, %if.end66 ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %if.end75.cleanup_crit_edge ], [ %call5, %if.then7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_irele(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_filestream_new_ag(ptr nocapture noundef readonly %ap, ptr nocapture noundef %agp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ip1 = getelementptr inbounds %struct.xfs_bmalloca, ptr %ap, i32 0, i32 1
  %0 = ptrtoint ptr %ip1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %length = getelementptr inbounds %struct.xfs_bmalloca, ptr %ap, i32 0, i32 5
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length, align 8
  %6 = ptrtoint ptr %agp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %agp, align 4
  %i_vnode.i.i = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 27
  %call1.i = tail call ptr @d_find_alias(ptr noundef %i_vnode.i.i) #7
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %entry.exit_crit_edge, label %if.end.i

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end.i:                                         ; preds = %entry
  %call2.i = tail call ptr @dget_parent(ptr noundef nonnull %call1.i) #7
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %out.thread17.i, label %out.i

out.thread17.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dput(ptr noundef nonnull %call1.i) #7
  br label %exit

out.i:                                            ; preds = %if.end.i
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %call2.i, i32 0, i32 5
  %7 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d_inode.i.i, align 8
  %call7.i = tail call ptr @igrab(ptr noundef %8) #7
  tail call void @dput(ptr noundef nonnull %call2.i) #7
  tail call void @dput(ptr noundef nonnull %call1.i) #7
  %tobool8.not.i = icmp eq ptr %call7.i, null
  %add.ptr.i.i = getelementptr i8, ptr %call7.i, i32 -312
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  %or.cond = or i1 %tobool8.not.i, %tobool.not
  br i1 %or.cond, label %out.i.exit_crit_edge, label %if.end

out.i.exit_crit_edge:                             ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end:                                           ; preds = %out.i
  %m_filestream = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 19
  %9 = ptrtoint ptr %m_filestream to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %m_filestream, align 4
  %i_ino = getelementptr i8, ptr %call7.i, i32 -296
  %11 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %i_ino, align 8
  %conv = trunc i64 %12 to i32
  %call2 = tail call ptr @xfs_mru_cache_remove(ptr noundef %10, i32 noundef %conv) #7
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %ag = getelementptr inbounds %struct.xfs_fstrm_item, ptr %call2, i32 0, i32 1
  %13 = ptrtoint ptr %ag to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ag, align 4
  %add = add i32 %14, 1
  %sb_agcount = getelementptr inbounds %struct.xfs_sb, ptr %3, i32 0, i32 12
  %15 = ptrtoint ptr %sb_agcount to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sb_agcount, align 8
  %rem = urem i32 %add, %16
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %startag.0 = phi i32 [ %rem, %if.then4 ], [ 0, %if.end.if.end5_crit_edge ]
  %datatype = getelementptr inbounds %struct.xfs_bmalloca, ptr %ap, i32 0, i32 18
  %17 = ptrtoint ptr %datatype to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %datatype, align 4
  %and = and i32 %18, 1
  %19 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ap, align 8
  %t_flags = getelementptr inbounds %struct.xfs_trans, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %t_flags, align 4
  %and9 = lshr i32 %22, 7
  %23 = and i32 %and9, 2
  %24 = or i32 %23, %and
  %call14 = tail call fastcc i32 @xfs_filestream_pick_ag(ptr noundef nonnull %add.ptr.i.i, i32 noundef %startag.0, ptr noundef %agp, i32 noundef %24, i32 noundef %5)
  br i1 %tobool3.not, label %if.end5.if.end17_crit_edge, label %if.then16

if.end5.if.end17_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then16:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %ag.i = getelementptr inbounds %struct.xfs_fstrm_item, ptr %call2, i32 0, i32 1
  %25 = ptrtoint ptr %ag.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ag.i, align 4
  %call.i.i = tail call ptr @xfs_perag_get(ptr noundef %3, i32 noundef %26) #7
  %pagf_fstrms.i.i = getelementptr inbounds %struct.xfs_perag, ptr %call.i.i, i32 0, i32 30
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pagf_fstrms.i.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %pagf_fstrms.i.i, i32 1, i32 3, i32 1) #7
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pagf_fstrms.i.i, ptr %pagf_fstrms.i.i, i32 1, ptr elementtype(i32) %pagf_fstrms.i.i) #7, !srcloc !41
  tail call void @xfs_perag_put(ptr noundef %call.i.i) #7
  %key.i = getelementptr inbounds %struct.xfs_mru_cache_elem, ptr %call2, i32 0, i32 1
  %28 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %key.i, align 4
  %conv.i = zext i32 %29 to i64
  %30 = ptrtoint ptr %ag.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ag.i, align 4
  tail call fastcc void @trace_xfs_filestream_free(ptr noundef %3, i64 noundef %conv.i, i32 noundef %31) #7
  tail call void @kvfree(ptr noundef nonnull %call2) #7
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end5.if.end17_crit_edge
  tail call void @xfs_irele(ptr noundef nonnull %add.ptr.i.i) #7
  br label %exit

exit:                                             ; preds = %if.end17, %out.i.exit_crit_edge, %out.thread17.i, %entry.exit_crit_edge
  %err.0 = phi i32 [ %call14, %if.end17 ], [ 0, %out.thread17.i ], [ 0, %entry.exit_crit_edge ], [ 0, %out.i.exit_crit_edge ]
  %32 = ptrtoint ptr %agp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %agp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp = icmp eq i32 %33, -1
  br i1 %cmp, label %if.then19, label %exit.if.end20_crit_edge

exit.if.end20_crit_edge:                          ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then19:                                        ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %agp to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %agp, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %exit.if.end20_crit_edge
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_mru_cache_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_fstrm_free_func(ptr noundef %data, ptr noundef %mru) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ag = getelementptr inbounds %struct.xfs_fstrm_item, ptr %mru, i32 0, i32 1
  %0 = ptrtoint ptr %ag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ag, align 4
  %call.i = tail call ptr @xfs_perag_get(ptr noundef %data, i32 noundef %1) #7
  %pagf_fstrms.i = getelementptr inbounds %struct.xfs_perag, ptr %call.i, i32 0, i32 30
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pagf_fstrms.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %pagf_fstrms.i, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pagf_fstrms.i, ptr %pagf_fstrms.i, i32 1, ptr elementtype(i32) %pagf_fstrms.i) #7, !srcloc !41
  tail call void @xfs_perag_put(ptr noundef %call.i) #7
  %key = getelementptr inbounds %struct.xfs_mru_cache_elem, ptr %mru, i32 0, i32 1
  %3 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %key, align 4
  %conv = zext i32 %4 to i64
  %5 = ptrtoint ptr %ag to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ag, align 4
  tail call fastcc void @trace_xfs_filestream_free(ptr noundef %data, i64 noundef %conv, i32 noundef %6)
  tail call void @kvfree(ptr noundef %mru) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_filestream_deassociate(ptr nocapture noundef readonly %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  %m_filestream = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %m_filestream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m_filestream, align 4
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 4
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %i_ino, align 8
  %conv = trunc i64 %5 to i32
  tail call void @xfs_mru_cache_delete(ptr noundef %3, i32 noundef %conv) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_mru_cache_delete(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_filestream_mount(ptr noundef %mp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %m_filestream = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 14, i32 1) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 14, i32 1), align 4
  %mul = mul i32 %0, 10
  %call = tail call i32 @xfs_mru_cache_create(ptr noundef %m_filestream, ptr noundef %mp, i32 noundef %mul, i32 noundef 10, ptr noundef nonnull @xfs_fstrm_free_func) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_mru_cache_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_filestream_unmount(ptr nocapture noundef readonly %mp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %m_filestream = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 19
  %0 = ptrtoint ptr %m_filestream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_filestream, align 4
  tail call void @xfs_mru_cache_destroy(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_mru_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_find_alias(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dget_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igrab(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_filestream_lookup(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_filestream_scan(ptr noundef %mp, i64 noundef %ino, i32 noundef %agno) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_filestream_scan, i32 0, i32 1), ptr blockaddress(@trace_xfs_filestream_scan, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !33

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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !32

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !42
  %call42 = tail call i32 @__traceiter_xfs_filestream_scan(ptr noundef null, ptr noundef %mp, i64 noundef %ino, i32 noundef %agno) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !43
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !32

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_filestream_scan, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_filestream_scan, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_filestream_scan.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_xfs_filestream_scan.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 659, ptr noundef nonnull @.str.3) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !37
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
declare dso_local i32 @xfs_alloc_pagf_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_alloc_longest_free_extent(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_alloc_min_freelist(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_ag_resv_needed(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_filestream_pick(ptr noundef %ip, i32 noundef %agno, i32 noundef %free, i32 noundef %nscan) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_filestream_pick, i32 0, i32 1), ptr blockaddress(@trace_xfs_filestream_pick, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !33

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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !32

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !44
  %call42 = tail call i32 @__traceiter_xfs_filestream_pick(ptr noundef null, ptr noundef %ip, i32 noundef %agno, i32 noundef %free, i32 noundef %nscan) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !45
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !32

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_filestream_pick, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_filestream_pick, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_filestream_pick.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_xfs_filestream_pick.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 688, ptr noundef nonnull @.str.3) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !37
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
declare dso_local ptr @kmem_alloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_mru_cache_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_filestream_scan(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_filestream_pick(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_filestream_free(ptr noundef %mp, i64 noundef %ino, i32 noundef %agno) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_filestream_free, i32 0, i32 1), ptr blockaddress(@trace_xfs_filestream_free, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !33

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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !32

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !46
  %call42 = tail call i32 @__traceiter_xfs_filestream_free(ptr noundef null, ptr noundef %mp, i64 noundef %ino, i32 noundef %agno) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !47
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !32

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_filestream_free, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_filestream_free, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_filestream_free.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_xfs_filestream_free.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 657, ptr noundef nonnull @.str.3) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !37
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
declare dso_local i32 @__traceiter_xfs_filestream_free(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !10, !11, !13, !15, !16, !18, !19, !21}
!llvm.named.register.sp = !{!22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_filestream.c", i32 279, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__already_done", i1 false, i1 false}
!4 = !{!"../fs/xfs/xfs_trace.h", i32 658, i32 1}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !4, !"__warned", i1 false, i1 false}
!7 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/xfs/xfs_filestream.c", i32 112, i32 2}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../fs/xfs/xfs_trace.h", i32 659, i32 1}
!15 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../fs/xfs/xfs_trace.h", i32 661, i32 1}
!18 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../fs/xfs/xfs_trace.h", i32 657, i32 1}
!21 = distinct !{null, !20, !"__warned", i1 false, i1 false}
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
!32 = !{!"branch_weights", i32 2000, i32 1}
!33 = !{i64 2148252036, i64 2148252041, i64 2148252054, i64 2148252098, i64 2148252132, i64 2148252153}
!34 = !{i64 2157555102}
!35 = !{i64 2157555333}
!36 = !{i64 2149954129}
!37 = !{i64 2149955165}
!38 = !{i64 2148709483}
!39 = !{i64 2148624768, i64 2148624800, i64 2148624829, i64 2148624863, i64 2148624894, i64 2148624917}
!40 = !{i64 2148709712}
!41 = !{i64 2148626513, i64 2148626539, i64 2148626568, i64 2148626602, i64 2148626633, i64 2148626656}
!42 = !{i64 2157572458}
!43 = !{i64 2157572685}
!44 = !{i64 2157589869}
!45 = !{i64 2157590112}
!46 = !{i64 2157533715}
!47 = !{i64 2157533942}
