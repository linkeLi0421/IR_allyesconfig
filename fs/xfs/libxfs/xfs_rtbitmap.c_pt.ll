; ModuleID = '/llk/IR_all_yes/fs/xfs/libxfs/xfs_rtbitmap.c_pt.bc'
source_filename = "../fs/xfs/libxfs/xfs_rtbitmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfs_buf_ops = type { ptr, %union.anon, ptr, ptr, ptr }
%union.anon = type { [2 x i32] }
%struct.xfs_buf_map = type { i64, i32 }
%struct.xfs_bmbt_irec = type { i64, i64, i64, i32 }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic64_t = type { i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xfs_buf = type { %struct.rhash_head, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.semaphore, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.completion, ptr, %struct.list_head, ptr, ptr, [2 x ptr], ptr, %struct.xfs_buf_map, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.xfs_trans = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.xfs_inode = type { ptr, ptr, ptr, ptr, i64, %struct.xfs_imap, ptr, ptr, %struct.xfs_ifork, ptr, %struct.mrlock_t, %struct.atomic_t, %struct.llist_node, i16, i16, %struct.spinlock, i32, i64, i64, i64, i32, i32, %union.anon.90, i8, i16, i64, %struct.timespec64, %struct.inode, %struct.spinlock, %struct.work_struct, %struct.list_head }
%struct.xfs_imap = type { i64, i16, i16 }
%struct.xfs_ifork = type { i64, ptr, i32, i32, %union.anon.89, i16, i8, i32 }
%union.anon.89 = type { ptr }
%struct.mrlock_t = type { %struct.rw_semaphore, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.llist_node = type { ptr }
%union.anon.90 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.76 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.79 = type { ptr }
%struct.xfs_rtalloc_rec = type { i64, i64 }

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rtbuf\00", [26 x i8] zeroinitializer }, align 32
@xfs_rtbuf_ops = dso_local constant { %struct.xfs_buf_ops, [40 x i8] } { %struct.xfs_buf_ops { ptr @.str, %union.anon zeroinitializer, ptr @xfs_rtbuf_verify_read, ptr @xfs_rtbuf_verify_write, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"nmap == 0 || !xfs_bmap_is_written_extent(&map)\00", [49 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"fs/xfs/libxfs/xfs_rtbitmap.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mp->m_rbmip->i_itemp != NULL\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"xfs_isilocked(mp->m_rbmip, XFS_ILOCK_EXCL)\00", [53 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"stat\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 44, i32 10 }
@___asan_gen_.10 = private unnamed_addr constant [14 x i8] c"xfs_rtbuf_ops\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 43, i32 26 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 73, i32 6 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 976, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 977, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private constant [32 x i8] c"../fs/xfs/libxfs/xfs_rtbitmap.c\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 953, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @.str, ptr @xfs_rtbuf_ops, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_rtbuf_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @xfs_rtbuf_verify_read(ptr nocapture noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @xfs_rtbuf_verify_write(ptr nocapture noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_rtbuf_get(ptr noundef %mp, ptr noundef %tp, i64 noundef %block, i32 noundef %issum, ptr nocapture noundef writeonly %bpp) #1 align 64 {
entry:
  %map.i = alloca %struct.xfs_buf_map, align 8
  %bp = alloca ptr, align 4
  %map = alloca %struct.xfs_bmbt_irec, align 8
  %nmap = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #6
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %map) #6
  %1 = call ptr @memset(ptr %map, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nmap) #6
  %2 = ptrtoint ptr %nmap to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %nmap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %issum)
  %tobool.not = icmp eq i32 %issum, 0
  %m_rsumip = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 10
  %m_rbmip = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 9
  %cond.in = select i1 %tobool.not, ptr %m_rbmip, ptr %m_rsumip
  %3 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %cond = load ptr, ptr %cond.in, align 4
  %call = call i32 @xfs_bmapi_read(ptr noundef %cond, i64 noundef %block, i64 noundef 1, ptr noundef nonnull %map, ptr noundef nonnull %nmap, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %nmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nmap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.end.__here_crit_edge, label %lor.rhs, !prof !25

if.end.__here_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

lor.rhs:                                          ; preds = %if.end
  %br_startblock.i.i = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %map, i32 0, i32 1
  %6 = ptrtoint ptr %br_startblock.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %br_startblock.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %7)
  %switch.i.i = icmp ult i64 %7, -2
  %and.i.i.i = and i64 %7, 4503599627239424
  call void @__sanitizer_cov_trace_const_cmp8(i64 4503599627239424, i64 %and.i.i.i)
  %cmp.i.i.i = icmp ne i64 %and.i.i.i, 4503599627239424
  %8 = and i1 %switch.i.i, %cmp.i.i.i
  br i1 %8, label %xfs_bmap_is_written_extent.exit, label %lor.rhs.__here_crit_edge

lor.rhs.__here_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

xfs_bmap_is_written_extent.exit:                  ; preds = %lor.rhs
  %br_state.i = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %map, i32 0, i32 3
  %9 = ptrtoint ptr %br_state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %br_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.i.not = icmp eq i32 %10, 1
  br i1 %cmp.i.not, label %xfs_bmap_is_written_extent.exit.__here_crit_edge, label %cond.end19, !prof !25

xfs_bmap_is_written_extent.exit.__here_crit_edge: ; preds = %xfs_bmap_is_written_extent.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %xfs_bmap_is_written_extent.exit.__here_crit_edge, %lor.rhs.__here_crit_edge, %if.end.__here_crit_edge
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !26
  call void @xfs_corruption_error(ptr noundef nonnull @.str.1, i32 noundef 1, ptr noundef %mp, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef 73, ptr noundef blockaddress(@xfs_rtbuf_get, %__here)) #6
  br label %cleanup

cond.end19:                                       ; preds = %xfs_bmap_is_written_extent.exit
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 13
  %11 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %m_ddev_targp, align 8
  %13 = ptrtoint ptr %br_startblock.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %br_startblock.i.i, align 8
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 24
  %15 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %sb_agblklog, align 4
  %conv = zext i8 %16 to i32
  %sh_prom = zext i8 %16 to i64
  %shr = lshr i64 %14, %sh_prom
  %conv22 = and i64 %shr, 4294967295
  %sb_agblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 11
  %17 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sb_agblocks, align 4
  %conv24 = zext i32 %18 to i64
  %mul = mul nuw i64 %conv22, %conv24
  %notmask.i = shl nsw i32 -1, %conv
  %sub.i = xor i32 %notmask.i, -1
  %19 = trunc i64 %14 to i32
  %conv31 = and i32 %sub.i, %19
  %conv32 = zext i32 %conv31 to i64
  %add = add nuw i64 %mul, %conv32
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 28
  %20 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom34 = zext i8 %21 to i64
  %shl = shl i64 %add, %sh_prom34
  %m_bsize = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 26
  %22 = ptrtoint ptr %m_bsize to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %m_bsize, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %map.i) #6
  %24 = getelementptr inbounds i8, ptr %map.i, i32 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 -1, ptr %24, align 8
  %26 = ptrtoint ptr %map.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %shl, ptr %map.i, align 8
  store i32 %23, ptr %24, align 8
  %call.i = call i32 @xfs_trans_read_buf_map(ptr noundef %mp, ptr noundef %tp, ptr noundef %12, ptr noundef nonnull %map.i, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %bp, ptr noundef nonnull @xfs_rtbuf_ops) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %map.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool36.not = icmp eq i32 %call.i, 0
  br i1 %tobool36.not, label %if.end38, label %cond.end19.cleanup_crit_edge

cond.end19.cleanup_crit_edge:                     ; preds = %cond.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end38:                                         ; preds = %cond.end19
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bp, align 4
  %cond40 = select i1 %tobool.not, i32 19, i32 20
  call void @xfs_trans_buf_set_type(ptr noundef %tp, ptr noundef %28, i32 noundef %cond40) #6
  %29 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bp, align 4
  %31 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %bpp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %cond.end19.cleanup_crit_edge, %__here, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -117, %__here ], [ 0, %if.end38 ], [ %call, %entry.cleanup_crit_edge ], [ %call.i, %cond.end19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nmap) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %map) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bmapi_read(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_corruption_error(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_buf_set_type(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_rtfind_back(ptr noundef %mp, ptr noundef %tp, i64 noundef %start, i64 noundef %limit, ptr nocapture noundef writeonly %rtblock) local_unnamed_addr #1 align 64 {
entry:
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #6
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !24
  %m_blkbit_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 27
  %1 = ptrtoint ptr %m_blkbit_log to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %m_blkbit_log, align 4
  %sh_prom = zext i8 %2 to i64
  %shr = lshr i64 %start, %sh_prom
  %call = call i32 @xfs_rtbuf_get(ptr noundef %mp, ptr noundef %tp, i64 noundef %shr, i32 noundef 0, ptr noundef nonnull %bp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %4, i32 0, i32 16
  %5 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %b_addr, align 4
  %shr1 = lshr i64 %start, 5
  %m_blockwmask = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 33
  %7 = ptrtoint ptr %m_blockwmask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %m_blockwmask, align 128
  %9 = trunc i64 %shr1 to i32
  %conv3 = and i32 %8, %9
  %arrayidx = getelementptr i32, ptr %6, i32 %conv3
  %10 = trunc i64 %start to i32
  %conv5 = and i32 %10, 31
  %sub = sub i64 %start, %limit
  %add = add i64 %sub, 1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %shl = shl nuw i32 1, %conv5
  %and6 = and i32 %12, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp ne i32 %and6, 0
  %cond = sext i1 %tobool7.not to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %conv5)
  %cmp.not = icmp eq i32 %conv5, 31
  br i1 %cmp.not, label %if.end.if.end54_crit_edge, label %if.then9

if.end.if.end54_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then9:                                         ; preds = %if.end
  %conv10 = zext i32 %conv5 to i64
  %sub11 = sub i64 %conv10, %add
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372036854775807, i64 %sub11)
  %cmp13 = icmp ult i64 %sub11, 9223372036854775807
  %add12 = add i64 %sub11, 1
  %spec.select = select i1 %cmp13, i64 %add12, i64 0
  %sub20 = sub nsw i64 %conv10, %spec.select
  %add21 = add nsw i64 %sub20, 1
  %sh_prom22 = trunc i64 %add21 to i32
  %notmask201 = shl nsw i32 -1, %sh_prom22
  %sub24 = xor i32 %notmask201, -1
  %sh_prom25 = trunc i64 %spec.select to i32
  %shl26 = shl i32 %sub24, %sh_prom25
  %xor = xor i32 %12, %cond
  %and27 = and i32 %xor, %shl26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end35, label %if.then29

if.then29:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @xfs_trans_brelse(ptr noundef %tp, ptr noundef %4) #6
  %13 = tail call i32 @llvm.ctlz.i32(i32 %and27, i1 true) #6, !range !27
  %sub.i.op.i.neg.neg = xor i32 %conv5, 31
  %sub31.neg = sub nsw i32 %sub.i.op.i.neg.neg, %13
  %conv32.neg = sext i32 %sub31.neg to i64
  %sub33 = add i64 %start, 1
  %add34 = add i64 %sub33, %conv32.neg
  br label %cleanup.sink.split

if.end35:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3)
  %cmp39 = icmp eq i32 %conv3, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add21, i64 %add)
  %cmp41 = icmp ult i64 %add21, %add
  %or.cond = select i1 %cmp39, i1 %cmp41, i1 false
  br i1 %or.cond, label %if.then43, label %if.else

if.then43:                                        ; preds = %if.end35
  tail call void @xfs_trans_brelse(ptr noundef %tp, ptr noundef %4) #6
  %dec44 = add i64 %shr, -1
  %call45 = call i32 @xfs_rtbuf_get(ptr noundef %mp, ptr noundef %tp, i64 noundef %dec44, i32 noundef 0, ptr noundef nonnull %bp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.then43.cleanup_crit_edge

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end48:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bp, align 4
  %b_addr49 = getelementptr inbounds %struct.xfs_buf, ptr %15, i32 0, i32 16
  %16 = ptrtoint ptr %b_addr49 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %b_addr49, align 4
  %18 = ptrtoint ptr %m_blockwmask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %m_blockwmask, align 128
  %arrayidx51 = getelementptr i32, ptr %17, i32 %19
  br label %if.end54

if.else:                                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %dec = add i32 %conv3, -1
  %incdec.ptr = getelementptr i32, ptr %arrayidx, i32 -1
  br label %if.end54

if.end54:                                         ; preds = %if.else, %if.end48, %if.end.if.end54_crit_edge
  %b.0 = phi ptr [ %arrayidx51, %if.end48 ], [ %incdec.ptr, %if.else ], [ %arrayidx, %if.end.if.end54_crit_edge ]
  %block.0 = phi i64 [ %dec44, %if.end48 ], [ %shr, %if.else ], [ %shr, %if.end.if.end54_crit_edge ]
  %i.0 = phi i64 [ %add21, %if.end48 ], [ %add21, %if.else ], [ 0, %if.end.if.end54_crit_edge ]
  %word.0 = phi i32 [ %19, %if.end48 ], [ %dec, %if.else ], [ %conv3, %if.end.if.end54_crit_edge ]
  %sub55221 = sub i64 %add, %i.0
  call void @__sanitizer_cov_trace_const_cmp8(i64 31, i64 %sub55221)
  %cmp56222 = icmp ugt i64 %sub55221, 31
  %extract.t = trunc i64 %sub55221 to i32
  br i1 %cmp56222, label %if.end54.while.body_crit_edge, label %if.end54.while.end_crit_edge

if.end54.while.end_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end54.while.body_crit_edge:                    ; preds = %if.end54
  br label %while.body

while.body:                                       ; preds = %if.end86.while.body_crit_edge, %if.end54.while.body_crit_edge
  %word.1226 = phi i32 [ %word.2, %if.end86.while.body_crit_edge ], [ %word.0, %if.end54.while.body_crit_edge ]
  %i.1225 = phi i64 [ %add68, %if.end86.while.body_crit_edge ], [ %i.0, %if.end54.while.body_crit_edge ]
  %block.1224 = phi i64 [ %block.2, %if.end86.while.body_crit_edge ], [ %block.0, %if.end54.while.body_crit_edge ]
  %b.1223 = phi ptr [ %b.2, %if.end86.while.body_crit_edge ], [ %b.0, %if.end54.while.body_crit_edge ]
  %20 = ptrtoint ptr %b.1223 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %b.1223, align 4
  %xor58 = xor i32 %21, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor58)
  %tobool59.not = icmp eq i32 %xor58, 0
  br i1 %tobool59.not, label %if.end67, label %if.then60

if.then60:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bp, align 4
  tail call void @xfs_trans_brelse(ptr noundef %tp, ptr noundef %23) #6
  %24 = tail call i32 @llvm.ctlz.i32(i32 %xor58, i1 true) #6, !range !27
  %conv63 = zext i32 %24 to i64
  %add64.neg = add i64 %start, 1
  %25 = add i64 %i.1225, %conv63
  %add66 = sub i64 %add64.neg, %25
  br label %cleanup.sink.split

if.end67:                                         ; preds = %while.body
  %add68 = add i64 %i.1225, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %word.1226)
  %cmp70 = icmp eq i32 %word.1226, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %add68)
  %cmp73 = icmp ugt i64 %add, %add68
  %or.cond202 = select i1 %cmp70, i1 %cmp73, i1 false
  br i1 %or.cond202, label %if.then75, label %if.else84

if.then75:                                        ; preds = %if.end67
  %26 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bp, align 4
  tail call void @xfs_trans_brelse(ptr noundef %tp, ptr noundef %27) #6
  %dec76 = add i64 %block.1224, -1
  %call77 = call i32 @xfs_rtbuf_get(ptr noundef %mp, ptr noundef %tp, i64 noundef %dec76, i32 noundef 0, ptr noundef nonnull %bp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %if.then75.cleanup_crit_edge

if.then75.cleanup_crit_edge:                      ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end80:                                         ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bp, align 4
  %b_addr81 = getelementptr inbounds %struct.xfs_buf, ptr %29, i32 0, i32 16
  %30 = ptrtoint ptr %b_addr81 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %b_addr81, align 4
  %32 = ptrtoint ptr %m_blockwmask to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %m_blockwmask, align 128
  %arrayidx83 = getelementptr i32, ptr %31, i32 %33
  br label %if.end86

if.else84:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  %dec69 = add i32 %word.1226, -1
  %incdec.ptr85 = getelementptr i32, ptr %b.1223, i32 -1
  br label %if.end86

if.end86:                                         ; preds = %if.else84, %if.end80
  %b.2 = phi ptr [ %arrayidx83, %if.end80 ], [ %incdec.ptr85, %if.else84 ]
  %block.2 = phi i64 [ %dec76, %if.end80 ], [ %block.1224, %if.else84 ]
  %word.2 = phi i32 [ %33, %if.end80 ], [ %dec69, %if.else84 ]
  %sub55 = sub i64 %add, %add68
  %cmp56 = icmp ugt i64 %sub55, 31
  br i1 %cmp56, label %if.end86.while.body_crit_edge, label %while.end.loopexit

if.end86.while.body_crit_edge:                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end.loopexit:                               ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  %extract.t230 = trunc i64 %sub55 to i32
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.end54.while.end_crit_edge
  %i.1.lcssa220 = phi i64 [ %i.0, %if.end54.while.end_crit_edge ], [ %add68, %while.end.loopexit ]
  %b.1.lcssa = phi ptr [ %b.0, %if.end54.while.end_crit_edge ], [ %b.2, %while.end.loopexit ]
  %sub55.lcssa.off0 = phi i32 [ %extract.t, %if.end54.while.end_crit_edge ], [ %extract.t230, %while.end.loopexit ]
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %i.1.lcssa220)
  %tobool88.not = icmp eq i64 %add, %i.1.lcssa220
  br i1 %tobool88.not, label %while.end.if.end110_crit_edge, label %if.then89

while.end.if.end110_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end110

if.then89:                                        ; preds = %while.end
  %notmask = shl nsw i32 -1, %sub55.lcssa.off0
  %sub95 = xor i32 %notmask, -1
  %sh_prom96 = sub nuw nsw i32 32, %sub55.lcssa.off0
  %shl97 = shl i32 %sub95, %sh_prom96
  %34 = ptrtoint ptr %b.1.lcssa to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %b.1.lcssa, align 4
  %xor98 = xor i32 %35, %cond
  %and99 = and i32 %xor98, %shl97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %if.then89.if.end110_crit_edge, label %if.then101

if.then89.if.end110_crit_edge:                    ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end110

if.then101:                                       ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bp, align 4
  tail call void @xfs_trans_brelse(ptr noundef %tp, ptr noundef %37) #6
  %38 = tail call i32 @llvm.ctlz.i32(i32 %and99, i1 true) #6, !range !27
  %conv104 = zext i32 %38 to i64
  %add105.neg = add i64 %start, 1
  %39 = add i64 %i.1.lcssa220, %conv104
  %add107 = sub i64 %add105.neg, %39
  br label %cleanup.sink.split

if.end110:                                        ; preds = %if.then89.if.end110_crit_edge, %while.end.if.end110_crit_edge
  %40 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bp, align 4
  tail call void @xfs_trans_brelse(ptr noundef %tp, ptr noundef %41) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end110, %if.then101, %if.then60, %if.then29
  %limit.sink = phi i64 [ %limit, %if.end110 ], [ %add107, %if.then101 ], [ %add66, %if.then60 ], [ %add34, %if.then29 ]
  %42 = ptrtoint ptr %rtblock to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %limit.sink, ptr %rtblock, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then75.cleanup_crit_edge, %if.then43.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call45, %if.then43.cleanup_crit_edge ], [ 0, %cleanup.sink.split ], [ %call77, %if.then75.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_brelse(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_rtfind_forw(ptr noundef %mp, ptr noundef %tp, i64 noundef %start, i64 noundef %limit, ptr nocapture noundef writeonly %rtblock) local_unnamed_addr #1 align 64 {
entry:
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #6
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !24
  %m_blkbit_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 27
  %1 = ptrtoint ptr %m_blkbit_log to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %m_blkbit_log, align 4
  %sh_prom = zext i8 %2 to i64
  %shr = lshr i64 %start, %sh_prom
  %call = call i32 @xfs_rtbuf_get(ptr noundef %mp, ptr noundef %tp, i64 noundef %shr, i32 noundef 0, ptr noundef nonnull %bp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %4, i32 0, i32 16
  %5 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %b_addr, align 4
  %shr1 = lshr i64 %start, 5
  %m_blockwmask = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 33
  %7 = ptrtoint ptr %m_blockwmask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %m_blockwmask, align 128
  %9 = trunc i64 %shr1 to i32
  %conv3 = and i32 %8, %9
  %arrayidx = getelementptr i32, ptr %6, i32 %conv3
  %10 = trunc i64 %start to i32
  %conv5 = and i32 %10, 31
  %sub = sub i64 %limit, %start
  %add = add i64 %sub, 1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %shl = shl nuw i32 1, %conv5
  %and6 = and i32 %12, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp ne i32 %and6, 0
  %cond = sext i1 %tobool7.not to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv5)
  %tobool8.not = icmp eq i32 %conv5, 0
  br i1 %tobool8.not, label %if.end.if.end46_crit_edge, label %if.then9

if.end.if.end46_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then9:                                         ; preds = %if.end
  %conv10 = zext i32 %conv5 to i64
  %add11 = add i64 %add, %conv10
  %13 = tail call i64 @llvm.umin.i64(i64 %add11, i64 32)
  %sub17 = sub nsw i64 %13, %conv10
  %sh_prom18 = trunc i64 %sub17 to i32
  %notmask177 = shl nsw i32 -1, %sh_prom18
  %sub20 = xor i32 %notmask177, -1
  %shl21 = shl i32 %sub20, %conv5
  %xor = xor i32 %12, %cond
  %and22 = and i32 %xor, %shl21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end30, label %if.then24

if.then24:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @xfs_trans_brelse(ptr noundef %tp, ptr noundef %4) #6
  %14 = tail call i32 @llvm.cttz.i32(i32 %and22, i1 true) #6, !range !27
  %sub26 = sub nsw i32 %14, %conv5
  %conv27 = sext i32 %sub26 to i64
  %add28 = add i64 %start, -1
  %sub29 = add i64 %add28, %conv27
  br label %cleanup.sink.split

if.end30:                                         ; preds = %if.then9
  %inc = add i32 %conv3, 1
  %m_blockwsize = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 32
  %15 = ptrtoint ptr %m_blockwsize to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %m_blockwsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %16)
  %cmp33 = icmp eq i32 %inc, %16
  call void @__sanitizer_cov_trace_cmp8(i64 %sub17, i64 %add)
  %cmp35 = icmp ult i64 %sub17, %add
  %or.cond = select i1 %cmp33, i1 %cmp35, i1 false
  br i1 %or.cond, label %if.then37, label %if.else

if.then37:                                        ; preds = %if.end30
  tail call void @xfs_trans_brelse(ptr noundef %tp, ptr noundef %4) #6
  %inc38 = add i64 %shr, 1
  %call39 = call i32 @xfs_rtbuf_get(ptr noundef %mp, ptr noundef %tp, i64 noundef %inc38, i32 noundef 0, ptr noundef nonnull %bp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.then37.cleanup_crit_edge

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end42:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bp, align 4
  %b_addr43 = getelementptr inbounds %struct.xfs_buf, ptr %18, i32 0, i32 16
  %19 = ptrtoint ptr %b_addr43 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %b_addr43, align 4
  br label %if.end46

if.else:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr = getelementptr i32, ptr %arrayidx, i32 1
  br label %if.end46

if.end46:                                         ; preds = %if.else, %if.end42, %if.end.if.end46_crit_edge
  %b.0 = phi ptr [ %20, %if.end42 ], [ %incdec.ptr, %if.else ], [ %arrayidx, %if.end.if.end46_crit_edge ]
  %block.0 = phi i64 [ %inc38, %if.end42 ], [ %shr, %if.else ], [ %shr, %if.end.if.end46_crit_edge ]
  %i.0 = phi i64 [ %sub17, %if.end42 ], [ %sub17, %if.else ], [ 0, %if.end.if.end46_crit_edge ]
  %word.0 = phi i32 [ 0, %if.end42 ], [ %inc, %if.else ], [ %conv3, %if.end.if.end46_crit_edge ]
  %sub47188 = sub i64 %add, %i.0
  call void @__sanitizer_cov_trace_const_cmp8(i64 31, i64 %sub47188)
  %cmp48189 = icmp ugt i64 %sub47188, 31
  %extract.t = trunc i64 %sub47188 to i32
  br i1 %cmp48189, label %while.body.lr.ph, label %if.end46.while.end_crit_edge

if.end46.while.end_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end46
  %m_blockwsize61 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 32
  br label %while.body

while.body:                                       ; preds = %if.end76.while.body_crit_edge, %while.body.lr.ph
  %word.1193 = phi i32 [ %word.0, %while.body.lr.ph ], [ %word.2, %if.end76.while.body_crit_edge ]
  %i.1192 = phi i64 [ %i.0, %while.body.lr.ph ], [ %add59, %if.end76.while.body_crit_edge ]
  %block.1191 = phi i64 [ %block.0, %while.body.lr.ph ], [ %block.2, %if.end76.while.body_crit_edge ]
  %b.1190 = phi ptr [ %b.0, %while.body.lr.ph ], [ %b.2, %if.end76.while.body_crit_edge ]
  %21 = ptrtoint ptr %b.1190 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %b.1190, align 4
  %xor50 = xor i32 %22, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor50)
  %tobool51.not = icmp eq i32 %xor50, 0
  br i1 %tobool51.not, label %if.end58, label %if.then52

if.then52:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bp, align 4
  tail call void @xfs_trans_brelse(ptr noundef %tp, ptr noundef %24) #6
  %25 = tail call i32 @llvm.cttz.i32(i32 %xor50, i1 true) #6, !range !27
  %conv54179 = zext i32 %25 to i64
  %add55 = add i64 %start, -1
  %add56 = add i64 %add55, %i.1192
  %sub57 = add i64 %add56, %conv54179
  br label %cleanup.sink.split

if.end58:                                         ; preds = %while.body
  %add59 = add i64 %i.1192, 32
  %inc60 = add i32 %word.1193, 1
  %26 = ptrtoint ptr %m_blockwsize61 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %m_blockwsize61, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc60, i32 %27)
  %cmp62 = icmp eq i32 %inc60, %27
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %add59)
  %cmp65 = icmp ugt i64 %add, %add59
  %or.cond178 = select i1 %cmp62, i1 %cmp65, i1 false
  br i1 %or.cond178, label %if.then67, label %if.else74

if.then67:                                        ; preds = %if.end58
  %28 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bp, align 4
  tail call void @xfs_trans_brelse(ptr noundef %tp, ptr noundef %29) #6
  %inc68 = add i64 %block.1191, 1
  %call69 = call i32 @xfs_rtbuf_get(ptr noundef %mp, ptr noundef %tp, i64 noundef %inc68, i32 noundef 0, ptr noundef nonnull %bp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.then67.cleanup_crit_edge

if.then67.cleanup_crit_edge:                      ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end72:                                         ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bp, align 4
  %b_addr73 = getelementptr inbounds %struct.xfs_buf, ptr %31, i32 0, i32 16
  %32 = ptrtoint ptr %b_addr73 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %b_addr73, align 4
  br label %if.end76

if.else74:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr75 = getelementptr i32, ptr %b.1190, i32 1
  br label %if.end76

if.end76:                                         ; preds = %if.else74, %if.end72
  %b.2 = phi ptr [ %33, %if.end72 ], [ %incdec.ptr75, %if.else74 ]
  %block.2 = phi i64 [ %inc68, %if.end72 ], [ %block.1191, %if.else74 ]
  %word.2 = phi i32 [ 0, %if.end72 ], [ %inc60, %if.else74 ]
  %sub47 = sub i64 %add, %add59
  %cmp48 = icmp ugt i64 %sub47, 31
  br i1 %cmp48, label %if.end76.while.body_crit_edge, label %while.end.loopexit

if.end76.while.body_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end.loopexit:                               ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  %extract.t196 = trunc i64 %sub47 to i32
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.end46.while.end_crit_edge
  %b.1.lcssa = phi ptr [ %b.0, %if.end46.while.end_crit_edge ], [ %b.2, %while.end.loopexit ]
  %i.1.lcssa = phi i64 [ %i.0, %if.end46.while.end_crit_edge ], [ %add59, %while.end.loopexit ]
  %sub47.lcssa.off0 = phi i32 [ %extract.t, %if.end46.while.end_crit_edge ], [ %extract.t196, %while.end.loopexit ]
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %i.1.lcssa)
  %tobool78.not = icmp eq i64 %add, %i.1.lcssa
  br i1 %tobool78.not, label %while.end.if.end94_crit_edge, label %if.then79

while.end.if.end94_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end94

if.then79:                                        ; preds = %while.end
  %notmask = shl nsw i32 -1, %sub47.lcssa.off0
  %sub82 = xor i32 %notmask, -1
  %34 = ptrtoint ptr %b.1.lcssa to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %b.1.lcssa, align 4
  %xor83 = xor i32 %35, %cond
  %and84 = and i32 %xor83, %sub82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.then79.if.end94_crit_edge, label %if.then86

if.then79.if.end94_crit_edge:                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end94

if.then86:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bp, align 4
  tail call void @xfs_trans_brelse(ptr noundef %tp, ptr noundef %37) #6
  %38 = tail call i32 @llvm.cttz.i32(i32 %and84, i1 true) #6, !range !27
  %conv88180 = zext i32 %38 to i64
  %add89 = add i64 %start, -1
  %add90 = add i64 %add89, %i.1.lcssa
  %sub91 = add i64 %add90, %conv88180
  br label %cleanup.sink.split

if.end94:                                         ; preds = %if.then79.if.end94_crit_edge, %while.end.if.end94_crit_edge
  %39 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bp, align 4
  tail call void @xfs_trans_brelse(ptr noundef %tp, ptr noundef %40) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end94, %if.then86, %if.then52, %if.then24
  %limit.sink = phi i64 [ %limit, %if.end94 ], [ %sub91, %if.then86 ], [ %sub57, %if.then52 ], [ %sub29, %if.then24 ]
  %41 = ptrtoint ptr %rtblock to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %limit.sink, ptr %rtblock, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then67.cleanup_crit_edge, %if.then37.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call39, %if.then37.cleanup_crit_edge ], [ 0, %cleanup.sink.split ], [ %call69, %if.then67.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_rtmodify_summary_int(ptr noundef %mp, ptr noundef %tp, i32 noundef %log, i64 noundef %bbno, i32 noundef %delta, ptr nocapture noundef %rbpp, ptr nocapture noundef %rsb, ptr noundef writeonly %sum) local_unnamed_addr #1 align 64 {
entry:
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #6
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !24
  %sb_rbmblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 13
  %1 = ptrtoint ptr %sb_rbmblocks to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sb_rbmblocks, align 4
  %mul = mul i32 %2, %log
  %3 = trunc i64 %bbno to i32
  %conv1 = add i32 %mul, %3
  %mul2 = shl i32 %conv1, 2
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 20
  %4 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sb_blocklog, align 8
  %conv4 = zext i8 %5 to i32
  %shr = lshr i32 %mul2, %conv4
  %conv5 = zext i32 %shr to i64
  %6 = ptrtoint ptr %rbpp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rbpp, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %8 = ptrtoint ptr %rsb to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %rsb, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %conv5)
  %cmp = icmp eq i64 %9, %conv5
  br i1 %cmp, label %if.then, label %if.then8

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %bp, align 4
  br label %if.end12

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @xfs_trans_brelse(ptr noundef %tp, ptr noundef nonnull %7) #6
  br label %if.end

if.end:                                           ; preds = %if.then8, %entry.if.end_crit_edge
  %call = call i32 @xfs_rtbuf_get(ptr noundef %mp, ptr noundef %tp, i64 noundef %conv5, i32 noundef 1, ptr noundef nonnull %bp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %if.end11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bp, align 4
  %13 = ptrtoint ptr %rbpp to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %rbpp, align 4
  %14 = ptrtoint ptr %rsb to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv5, ptr %rsb, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.then
  %15 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %16, i32 0, i32 16
  %17 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %b_addr, align 4
  %m_blockmask = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 31
  %19 = ptrtoint ptr %m_blockmask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %m_blockmask, align 8
  %and = and i32 %20, %mul2
  %add.ptr = getelementptr i8, ptr %18, i32 %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delta)
  %tobool14.not = icmp eq i32 %delta, 0
  br i1 %tobool14.not, label %if.end12.if.end49_crit_edge, label %if.then15

if.end12.if.end49_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.then15:                                        ; preds = %if.end12
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr, align 4
  %add17 = add i32 %22, %delta
  store i32 %add17, ptr %add.ptr, align 4
  %m_rsum_cache = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 18
  %23 = ptrtoint ptr %m_rsum_cache to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %m_rsum_cache, align 16
  %tobool18.not = icmp eq ptr %24, null
  br i1 %tobool18.not, label %if.then15.if.end47_crit_edge, label %if.then19

if.then15.if.end47_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then19:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add17)
  %cmp20 = icmp eq i32 %add17, 0
  br i1 %cmp20, label %land.lhs.true22, label %if.then19.if.end31_crit_edge

if.then19.if.end31_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

land.lhs.true22:                                  ; preds = %if.then19
  %arrayidx = getelementptr i8, ptr %24, i32 %3
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx, align 1
  %conv24 = zext i8 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv24, i32 %log)
  %cmp25 = icmp eq i32 %conv24, %log
  br i1 %cmp25, label %if.then27, label %land.lhs.true22.if.end31_crit_edge

land.lhs.true22.if.end31_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then27:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #8
  %inc = add i8 %26, 1
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %inc, ptr %arrayidx, align 1
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %land.lhs.true22.if.end31_crit_edge, %if.then19.if.end31_crit_edge
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp32.not = icmp eq i32 %29, 0
  br i1 %cmp32.not, label %if.end31.if.end47_crit_edge, label %land.lhs.true34

if.end31.if.end47_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

land.lhs.true34:                                  ; preds = %if.end31
  %30 = ptrtoint ptr %m_rsum_cache to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %m_rsum_cache, align 16
  %arrayidx37 = getelementptr i8, ptr %31, i32 %3
  %32 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %33 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv38, i32 %log)
  %cmp39 = icmp sgt i32 %conv38, %log
  br i1 %cmp39, label %if.then41, label %land.lhs.true34.if.end47_crit_edge

land.lhs.true34.if.end47_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then41:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #8
  %conv42 = trunc i32 %log to i8
  %34 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv42, ptr %arrayidx37, align 1
  br label %if.end47

if.end47:                                         ; preds = %if.then41, %land.lhs.true34.if.end47_crit_edge, %if.end31.if.end47_crit_edge, %if.then15.if.end47_crit_edge
  %sub = or i32 %and, 3
  tail call void @xfs_trans_log_buf(ptr noundef %tp, ptr noundef %16, i32 noundef %and, i32 noundef %sub) #6
  br label %if.end49

if.end49:                                         ; preds = %if.end47, %if.end12.if.end49_crit_edge
  %tobool50.not = icmp eq ptr %sum, null
  br i1 %tobool50.not, label %if.end49.cleanup_crit_edge, label %if.then51

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr, align 4
  %37 = ptrtoint ptr %sum to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %sum, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %if.end49.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end.cleanup_crit_edge ], [ 0, %if.then51 ], [ 0, %if.end49.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_log_buf(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_rtmodify_summary(ptr noundef %mp, ptr noundef %tp, i32 noundef %log, i64 noundef %bbno, i32 noundef %delta, ptr nocapture noundef %rbpp, ptr nocapture noundef %rsb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xfs_rtmodify_summary_int(ptr noundef %mp, ptr noundef %tp, i32 noundef %log, i64 noundef %bbno, i32 noundef %delta, ptr noundef %rbpp, ptr noundef %rsb, ptr noundef null)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_rtmodify_range(ptr noundef %mp, ptr noundef %tp, i64 noundef %start, i32 noundef %len, i32 noundef %val) local_unnamed_addr #1 align 64 {
entry:
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #6
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !24
  %m_blkbit_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 27
  %1 = ptrtoint ptr %m_blkbit_log to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %m_blkbit_log, align 4
  %sh_prom = zext i8 %2 to i64
  %shr = lshr i64 %start, %sh_prom
  %call = call i32 @xfs_rtbuf_get(ptr noundef %mp, ptr noundef %tp, i64 noundef %shr, i32 noundef 0, ptr noundef nonnull %bp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %4, i32 0, i32 16
  %5 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %b_addr, align 4
  %shr1 = lshr i64 %start, 5
  %m_blockwmask = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 33
  %7 = ptrtoint ptr %m_blockwmask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %m_blockwmask, align 128
  %9 = trunc i64 %shr1 to i32
  %conv3 = and i32 %8, %9
  %arrayidx = getelementptr i32, ptr %6, i32 %conv3
  %10 = trunc i64 %start to i32
  %conv5 = and i32 %10, 31
  %sub = sub i32 0, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv5)
  %tobool6.not = icmp eq i32 %conv5, 0
  br i1 %tobool6.not, label %if.end.if.end35_crit_edge, label %if.then7

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then7:                                         ; preds = %if.end
  %add = add i32 %conv5, %len
  %11 = tail call i32 @llvm.umin.i32(i32 %add, i32 32)
  %sub10 = sub nsw i32 %11, %conv5
  %notmask162 = shl nsw i32 -1, %sub10
  %sub11 = xor i32 %notmask162, -1
  %shl12 = shl i32 %sub11, %conv5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool13.not = icmp eq i32 %val, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %or = or i32 %13, %shl12
  br label %if.end16

if.else:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %neg = xor i32 %shl12, -1
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %and15 = and i32 %15, %neg
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then14
  %storemerge163 = phi i32 [ %and15, %if.else ], [ %or, %if.then14 ]
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %storemerge163, ptr %arrayidx, align 4
  %inc = add i32 %conv3, 1
  %m_blockwsize = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 32
  %17 = ptrtoint ptr %m_blockwsize to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %m_blockwsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %18)
  %cmp18 = icmp eq i32 %inc, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %sub10, i32 %len)
  %cmp20 = icmp ult i32 %sub10, %len
  %or.cond = and i1 %cmp20, %cmp18
  br i1 %or.cond, label %if.then22, label %if.else32

if.then22:                                        ; preds = %if.end16
  %arrayidx.idx = shl i32 %conv3, 2
  tail call void @xfs_trans_log_buf(ptr noundef %tp, ptr noundef %4, i32 noundef %arrayidx.idx, i32 noundef %arrayidx.idx) #6
  %inc26 = add i64 %shr, 1
  %call27 = call i32 @xfs_rtbuf_get(ptr noundef %mp, ptr noundef %tp, i64 noundef %inc26, i32 noundef 0, ptr noundef nonnull %bp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.then22.cleanup_crit_edge

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end30:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bp, align 4
  %b_addr31 = getelementptr inbounds %struct.xfs_buf, ptr %20, i32 0, i32 16
  %21 = ptrtoint ptr %b_addr31 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %b_addr31, align 4
  br label %if.end35

if.else32:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr = getelementptr i32, ptr %arrayidx, i32 1
  br label %if.end35

if.end35:                                         ; preds = %if.else32, %if.end30, %if.end.if.end35_crit_edge
  %b.0 = phi ptr [ %22, %if.end30 ], [ %incdec.ptr, %if.else32 ], [ %arrayidx, %if.end.if.end35_crit_edge ]
  %block.0 = phi i64 [ %inc26, %if.end30 ], [ %shr, %if.else32 ], [ %shr, %if.end.if.end35_crit_edge ]
  %bufp.0 = phi ptr [ %22, %if.end30 ], [ %6, %if.else32 ], [ %6, %if.end.if.end35_crit_edge ]
  %first.0 = phi ptr [ %22, %if.end30 ], [ %arrayidx, %if.else32 ], [ %arrayidx, %if.end.if.end35_crit_edge ]
  %i.0 = phi i32 [ %sub10, %if.end30 ], [ %sub10, %if.else32 ], [ 0, %if.end.if.end35_crit_edge ]
  %word.0 = phi i32 [ 0, %if.end30 ], [ %inc, %if.else32 ], [ %conv3, %if.end.if.end35_crit_edge ]
  %sub36170 = sub i32 %len, %i.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %sub36170)
  %cmp37171 = icmp ugt i32 %sub36170, 31
  br i1 %cmp37171, label %while.body.lr.ph, label %if.end35.while.end_crit_edge

if.end35.while.end_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end35
  %m_blockwsize41 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 32
  br label %while.body

while.body:                                       ; preds = %if.end62.while.body_crit_edge, %while.body.lr.ph
  %word.1177 = phi i32 [ %word.0, %while.body.lr.ph ], [ %word.2, %if.end62.while.body_crit_edge ]
  %i.1176 = phi i32 [ %i.0, %while.body.lr.ph ], [ %add39, %if.end62.while.body_crit_edge ]
  %first.1175 = phi ptr [ %first.0, %while.body.lr.ph ], [ %first.2, %if.end62.while.body_crit_edge ]
  %bufp.1174 = phi ptr [ %bufp.0, %while.body.lr.ph ], [ %bufp.2, %if.end62.while.body_crit_edge ]
  %block.1173 = phi i64 [ %block.0, %while.body.lr.ph ], [ %block.2, %if.end62.while.body_crit_edge ]
  %b.1172 = phi ptr [ %b.0, %while.body.lr.ph ], [ %b.2, %if.end62.while.body_crit_edge ]
  %23 = ptrtoint ptr %b.1172 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub, ptr %b.1172, align 4
  %add39 = add i32 %i.1176, 32
  %inc40 = add i32 %word.1177, 1
  %24 = ptrtoint ptr %m_blockwsize41 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %m_blockwsize41, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc40, i32 %25)
  %cmp42 = icmp eq i32 %inc40, %25
  call void @__sanitizer_cov_trace_cmp4(i32 %add39, i32 %len)
  %cmp45 = icmp ult i32 %add39, %len
  %or.cond164 = select i1 %cmp42, i1 %cmp45, i1 false
  br i1 %or.cond164, label %if.then47, label %if.else60

if.then47:                                        ; preds = %while.body
  %26 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bp, align 4
  %sub.ptr.lhs.cast48 = ptrtoint ptr %first.1175 to i32
  %sub.ptr.rhs.cast49 = ptrtoint ptr %bufp.1174 to i32
  %sub.ptr.sub50 = sub i32 %sub.ptr.lhs.cast48, %sub.ptr.rhs.cast49
  %sub.ptr.lhs.cast51 = ptrtoint ptr %b.1172 to i32
  %sub.ptr.sub53 = sub i32 %sub.ptr.lhs.cast51, %sub.ptr.rhs.cast49
  tail call void @xfs_trans_log_buf(ptr noundef %tp, ptr noundef %27, i32 noundef %sub.ptr.sub50, i32 noundef %sub.ptr.sub53) #6
  %inc54 = add i64 %block.1173, 1
  %call55 = call i32 @xfs_rtbuf_get(ptr noundef %mp, ptr noundef %tp, i64 noundef %inc54, i32 noundef 0, ptr noundef nonnull %bp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %if.then47.cleanup_crit_edge

if.then47.cleanup_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end58:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bp, align 4
  %b_addr59 = getelementptr inbounds %struct.xfs_buf, ptr %29, i32 0, i32 16
  %30 = ptrtoint ptr %b_addr59 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %b_addr59, align 4
  br label %if.end62

if.else60:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr61 = getelementptr i32, ptr %b.1172, i32 1
  br label %if.end62

if.end62:                                         ; preds = %if.else60, %if.end58
  %b.2 = phi ptr [ %31, %if.end58 ], [ %incdec.ptr61, %if.else60 ]
  %block.2 = phi i64 [ %inc54, %if.end58 ], [ %block.1173, %if.else60 ]
  %bufp.2 = phi ptr [ %31, %if.end58 ], [ %bufp.1174, %if.else60 ]
  %first.2 = phi ptr [ %31, %if.end58 ], [ %first.1175, %if.else60 ]
  %word.2 = phi i32 [ 0, %if.end58 ], [ %inc40, %if.else60 ]
  %sub36 = sub i32 %len, %add39
  %cmp37 = icmp ugt i32 %sub36, 31
  br i1 %cmp37, label %if.end62.while.body_crit_edge, label %if.end62.while.end_crit_edge

if.end62.while.end_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end62.while.body_crit_edge:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %if.end62.while.end_crit_edge, %if.end35.while.end_crit_edge
  %b.1.lcssa = phi ptr [ %b.0, %if.end35.while.end_crit_edge ], [ %b.2, %if.end62.while.end_crit_edge ]
  %bufp.1.lcssa = phi ptr [ %bufp.0, %if.end35.while.end_crit_edge ], [ %bufp.2, %if.end62.while.end_crit_edge ]
  %first.1.lcssa = phi ptr [ %first.0, %if.end35.while.end_crit_edge ], [ %first.2, %if.end62.while.end_crit_edge ]
  %i.1.lcssa = phi i32 [ %i.0, %if.end35.while.end_crit_edge ], [ %add39, %if.end62.while.end_crit_edge ]
  %sub36.lcssa = phi i32 [ %sub36170, %if.end35.while.end_crit_edge ], [ %sub36, %if.end62.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1.lcssa, i32 %len)
  %tobool64.not = icmp eq i32 %i.1.lcssa, %len
  br i1 %tobool64.not, label %while.end.if.end76_crit_edge, label %if.then65

while.end.if.end76_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

if.then65:                                        ; preds = %while.end
  %notmask = shl nsw i32 -1, %sub36.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool68.not = icmp eq i32 %val, 0
  br i1 %tobool68.not, label %if.else71, label %if.then69

if.then69:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #8
  %sub67 = xor i32 %notmask, -1
  %32 = ptrtoint ptr %b.1.lcssa to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %b.1.lcssa, align 4
  %or70 = or i32 %33, %sub67
  br label %if.end74

if.else71:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %b.1.lcssa to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %b.1.lcssa, align 4
  %and73 = and i32 %35, %notmask
  br label %if.end74

if.end74:                                         ; preds = %if.else71, %if.then69
  %storemerge = phi i32 [ %and73, %if.else71 ], [ %or70, %if.then69 ]
  %36 = ptrtoint ptr %b.1.lcssa to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %storemerge, ptr %b.1.lcssa, align 4
  %incdec.ptr75 = getelementptr i32, ptr %b.1.lcssa, i32 1
  br label %if.end76

if.end76:                                         ; preds = %if.end74, %while.end.if.end76_crit_edge
  %b.3 = phi ptr [ %incdec.ptr75, %if.end74 ], [ %b.1.lcssa, %while.end.if.end76_crit_edge ]
  %cmp77 = icmp ugt ptr %b.3, %first.1.lcssa
  br i1 %cmp77, label %if.then79, label %if.end76.cleanup_crit_edge

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then79:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bp, align 4
  %sub.ptr.lhs.cast80 = ptrtoint ptr %first.1.lcssa to i32
  %sub.ptr.rhs.cast81 = ptrtoint ptr %bufp.1.lcssa to i32
  %sub.ptr.sub82 = sub i32 %sub.ptr.lhs.cast80, %sub.ptr.rhs.cast81
  %sub.ptr.lhs.cast83 = ptrtoint ptr %b.3 to i32
  %39 = xor i32 %sub.ptr.rhs.cast81, -1
  %sub86 = add i32 %sub.ptr.lhs.cast83, %39
  tail call void @xfs_trans_log_buf(ptr noundef %tp, ptr noundef %38, i32 noundef %sub.ptr.sub82, i32 noundef %sub86) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then79, %if.end76.cleanup_crit_edge, %if.then47.cleanup_crit_edge, %if.then22.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call27, %if.then22.cleanup_crit_edge ], [ 0, %if.then79 ], [ 0, %if.end76.cleanup_crit_edge ], [ %call55, %if.then47.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_rtfree_range(ptr noundef %mp, ptr noundef %tp, i64 noundef %start, i32 noundef %len, ptr nocapture noundef %rbpp, ptr nocapture noundef %rsb) local_unnamed_addr #1 align 64 {
entry:
  %postblock = alloca i64, align 8
  %preblock = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %postblock) #6
  %0 = ptrtoint ptr %postblock to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %postblock, align 8, !annotation !24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %preblock) #6
  %1 = ptrtoint ptr %preblock to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %preblock, align 8, !annotation !24
  %conv = zext i32 %len to i64
  %add = add i64 %conv, %start
  %sub = add i64 %add, -1
  %call = tail call i32 @xfs_rtmodify_range(ptr noundef %mp, ptr noundef %tp, i64 noundef %start, i32 noundef %len, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @xfs_rtfind_back(ptr noundef %mp, ptr noundef %tp, i64 noundef %start, i64 noundef 0, ptr noundef nonnull %preblock)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %sb_rextents = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 4
  %2 = ptrtoint ptr %sb_rextents to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %sb_rextents, align 8
  %sub5 = add i64 %3, -1
  %call6 = call i32 @xfs_rtfind_forw(ptr noundef %mp, ptr noundef %tp, i64 noundef %sub, i64 noundef %sub5, ptr noundef nonnull %postblock)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %4 = ptrtoint ptr %preblock to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %preblock, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %start)
  %cmp = icmp ult i64 %5, %start
  br i1 %cmp, label %if.then11, label %if.end9.if.end19_crit_edge

if.end9.if.end19_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then11:                                        ; preds = %if.end9
  %sub12 = sub i64 %start, %5
  %shr.i.i = lshr i64 %sub12, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %tobool.not.i.i = icmp eq i32 %conv.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  %6 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i, i1 true) #6, !range !27
  %add.i.i = sub nuw nsw i32 64, %6
  br label %xfs_highbit64.exit

if.end.i.i:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  %conv1.i.i = trunc i64 %sub12 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %conv1.i.i, 0
  %7 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i, i1 true) #6, !range !27
  %sub.i6.i.i = sub nuw nsw i32 32, %7
  %cond.i7.i.i = select i1 %tobool.not.i5.i.i, i32 0, i32 %sub.i6.i.i
  br label %xfs_highbit64.exit

xfs_highbit64.exit:                               ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %cond.i7.i.i, %if.end.i.i ]
  %sub.i = add nsw i32 %retval.0.i.i, -1
  %m_blkbit_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 27
  %8 = ptrtoint ptr %m_blkbit_log to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %m_blkbit_log, align 4
  %sh_prom = zext i8 %9 to i64
  %shr = lshr i64 %5, %sh_prom
  %call.i = tail call i32 @xfs_rtmodify_summary_int(ptr noundef %mp, ptr noundef %tp, i32 noundef %sub.i, i64 noundef %shr, i32 noundef -1, ptr noundef %rbpp, ptr noundef %rsb, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool16.not = icmp eq i32 %call.i, 0
  br i1 %tobool16.not, label %xfs_highbit64.exit.if.end19_crit_edge, label %xfs_highbit64.exit.cleanup_crit_edge

xfs_highbit64.exit.cleanup_crit_edge:             ; preds = %xfs_highbit64.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

xfs_highbit64.exit.if.end19_crit_edge:            ; preds = %xfs_highbit64.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.end19:                                         ; preds = %xfs_highbit64.exit.if.end19_crit_edge, %if.end9.if.end19_crit_edge
  %10 = ptrtoint ptr %postblock to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %postblock, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %sub)
  %cmp20 = icmp ugt i64 %11, %sub
  br i1 %cmp20, label %if.then22, label %if.end19.if.end34_crit_edge

if.end19.if.end34_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then22:                                        ; preds = %if.end19
  %sub23 = sub i64 %11, %sub
  %shr.i.i83 = lshr i64 %sub23, 32
  %conv.i.i84 = trunc i64 %shr.i.i83 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i84)
  %tobool.not.i.i85 = icmp eq i32 %conv.i.i84, 0
  br i1 %tobool.not.i.i85, label %if.end.i.i92, label %if.then.i.i87

if.then.i.i87:                                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  %12 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i84, i1 true) #6, !range !27
  %add.i.i86 = sub nuw nsw i32 64, %12
  br label %xfs_highbit64.exit95

if.end.i.i92:                                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  %conv1.i.i88 = trunc i64 %sub23 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i88)
  %tobool.not.i5.i.i89 = icmp eq i32 %conv1.i.i88, 0
  %13 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i88, i1 true) #6, !range !27
  %sub.i6.i.i90 = sub nuw nsw i32 32, %13
  %cond.i7.i.i91 = select i1 %tobool.not.i5.i.i89, i32 0, i32 %sub.i6.i.i90
  br label %xfs_highbit64.exit95

xfs_highbit64.exit95:                             ; preds = %if.end.i.i92, %if.then.i.i87
  %retval.0.i.i93 = phi i32 [ %add.i.i86, %if.then.i.i87 ], [ %cond.i7.i.i91, %if.end.i.i92 ]
  %sub.i94 = add nsw i32 %retval.0.i.i93, -1
  %m_blkbit_log26 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 27
  %14 = ptrtoint ptr %m_blkbit_log26 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %m_blkbit_log26, align 4
  %sh_prom28 = zext i8 %15 to i64
  %shr29 = lshr i64 %add, %sh_prom28
  %call.i96 = tail call i32 @xfs_rtmodify_summary_int(ptr noundef %mp, ptr noundef %tp, i32 noundef %sub.i94, i64 noundef %shr29, i32 noundef -1, ptr noundef %rbpp, ptr noundef %rsb, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %tobool31.not = icmp eq i32 %call.i96, 0
  br i1 %tobool31.not, label %xfs_highbit64.exit95.if.end34_crit_edge, label %xfs_highbit64.exit95.cleanup_crit_edge

xfs_highbit64.exit95.cleanup_crit_edge:           ; preds = %xfs_highbit64.exit95
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

xfs_highbit64.exit95.if.end34_crit_edge:          ; preds = %xfs_highbit64.exit95
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.end34:                                         ; preds = %xfs_highbit64.exit95.if.end34_crit_edge, %if.end19.if.end34_crit_edge
  %add35 = sub i64 1, %5
  %sub36 = add i64 %add35, %11
  %shr.i.i97 = lshr i64 %sub36, 32
  %conv.i.i98 = trunc i64 %shr.i.i97 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i98)
  %tobool.not.i.i99 = icmp eq i32 %conv.i.i98, 0
  br i1 %tobool.not.i.i99, label %if.end.i.i106, label %if.then.i.i101

if.then.i.i101:                                   ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %16 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i98, i1 true) #6, !range !27
  %add.i.i100 = sub nuw nsw i32 64, %16
  br label %xfs_highbit64.exit109

if.end.i.i106:                                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %conv1.i.i102 = trunc i64 %sub36 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i102)
  %tobool.not.i5.i.i103 = icmp eq i32 %conv1.i.i102, 0
  %17 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i102, i1 true) #6, !range !27
  %sub.i6.i.i104 = sub nuw nsw i32 32, %17
  %cond.i7.i.i105 = select i1 %tobool.not.i5.i.i103, i32 0, i32 %sub.i6.i.i104
  br label %xfs_highbit64.exit109

xfs_highbit64.exit109:                            ; preds = %if.end.i.i106, %if.then.i.i101
  %retval.0.i.i107 = phi i32 [ %add.i.i100, %if.then.i.i101 ], [ %cond.i7.i.i105, %if.end.i.i106 ]
  %sub.i108 = add nsw i32 %retval.0.i.i107, -1
  %m_blkbit_log38 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 27
  %18 = ptrtoint ptr %m_blkbit_log38 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %m_blkbit_log38, align 4
  %sh_prom40 = zext i8 %19 to i64
  %shr41 = lshr i64 %5, %sh_prom40
  %call.i110 = tail call i32 @xfs_rtmodify_summary_int(ptr noundef %mp, ptr noundef %tp, i32 noundef %sub.i108, i64 noundef %shr41, i32 noundef 1, ptr noundef %rbpp, ptr noundef %rsb, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %xfs_highbit64.exit109, %xfs_highbit64.exit95.cleanup_crit_edge, %xfs_highbit64.exit.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i110, %xfs_highbit64.exit109 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call6, %if.end4.cleanup_crit_edge ], [ %call.i, %xfs_highbit64.exit.cleanup_crit_edge ], [ %call.i96, %xfs_highbit64.exit95.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %preblock) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %postblock) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_rtcheck_range(ptr noundef %mp, ptr noundef %tp, i64 noundef %start, i32 noundef %len, i32 noundef %val, ptr nocapture noundef writeonly %new, ptr nocapture noundef writeonly %stat) local_unnamed_addr #1 align 64 {
entry:
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #6
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !24
  %m_blkbit_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 27
  %1 = ptrtoint ptr %m_blkbit_log to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %m_blkbit_log, align 4
  %sh_prom = zext i8 %2 to i64
  %shr = lshr i64 %start, %sh_prom
  %call = call i32 @xfs_rtbuf_get(ptr noundef %mp, ptr noundef %tp, i64 noundef %shr, i32 noundef 0, ptr noundef nonnull %bp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %4, i32 0, i32 16
  %5 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %b_addr, align 4
  %shr1 = lshr i64 %start, 5
  %m_blockwmask = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 33
  %7 = ptrtoint ptr %m_blockwmask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %m_blockwmask, align 128
  %9 = trunc i64 %shr1 to i32
  %conv3 = and i32 %8, %9
  %arrayidx = getelementptr i32, ptr %6, i32 %conv3
  %10 = trunc i64 %start to i32
  %conv5 = and i32 %10, 31
  %sub = sub i32 0, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv5)
  %tobool6.not = icmp eq i32 %conv5, 0
  br i1 %tobool6.not, label %if.end.if.end40_crit_edge, label %if.then7

if.end.if.end40_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %.pre = zext i32 %len to i64
  br label %if.end40

if.then7:                                         ; preds = %if.end
  %add = add i32 %conv5, %len
  %11 = tail call i32 @llvm.umin.i32(i32 %add, i32 32)
  %conv10 = zext i32 %11 to i64
  %conv11 = zext i32 %conv5 to i64
  %sub12 = sub nsw i64 %conv10, %conv11
  %sh_prom13 = trunc i64 %sub12 to i32
  %notmask171 = shl nsw i32 -1, %sh_prom13
  %sub14 = xor i32 %notmask171, -1
  %shl15 = shl i32 %sub14, %conv5
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %xor = xor i32 %13, %sub
  %and16 = and i32 %xor, %shl15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end23, label %if.then18

if.then18:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @xfs_trans_brelse(ptr noundef %tp, ptr noundef %4) #6
  %14 = tail call i32 @llvm.cttz.i32(i32 %and16, i1 true) #6, !range !27
  %sub20 = sub nsw i32 %14, %conv5
  %conv21 = sext i32 %sub20 to i64
  %add22 = add i64 %conv21, %start
  br label %cleanup.sink.split

if.end23:                                         ; preds = %if.then7
  %inc = add i32 %conv3, 1
  %m_blockwsize = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 32
  %15 = ptrtoint ptr %m_blockwsize to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %m_blockwsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %16)
  %cmp26 = icmp eq i32 %inc, %16
  %conv28 = zext i32 %len to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub12, i64 %conv28)
  %cmp29 = icmp ult i64 %sub12, %conv28
  %or.cond = select i1 %cmp26, i1 %cmp29, i1 false
  br i1 %or.cond, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.end23
  tail call void @xfs_trans_brelse(ptr noundef %tp, ptr noundef %4) #6
  %inc32 = add i64 %shr, 1
  %call33 = call i32 @xfs_rtbuf_get(ptr noundef %mp, ptr noundef %tp, i64 noundef %inc32, i32 noundef 0, ptr noundef nonnull %bp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.then31.cleanup_crit_edge

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end36:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bp, align 4
  %b_addr37 = getelementptr inbounds %struct.xfs_buf, ptr %18, i32 0, i32 16
  %19 = ptrtoint ptr %b_addr37 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %b_addr37, align 4
  br label %if.end40

if.else:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr = getelementptr i32, ptr %arrayidx, i32 1
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.end36, %if.end.if.end40_crit_edge
  %conv41.pre-phi = phi i64 [ %.pre, %if.end.if.end40_crit_edge ], [ %conv28, %if.end36 ], [ %conv28, %if.else ]
  %b.0 = phi ptr [ %arrayidx, %if.end.if.end40_crit_edge ], [ %20, %if.end36 ], [ %incdec.ptr, %if.else ]
  %block.0 = phi i64 [ %shr, %if.end.if.end40_crit_edge ], [ %inc32, %if.end36 ], [ %shr, %if.else ]
  %i.0 = phi i64 [ 0, %if.end.if.end40_crit_edge ], [ %sub12, %if.end36 ], [ %sub12, %if.else ]
  %word.0 = phi i32 [ %conv3, %if.end.if.end40_crit_edge ], [ 0, %if.end36 ], [ %inc, %if.else ]
  %sub42184 = sub nsw i64 %conv41.pre-phi, %i.0
  call void @__sanitizer_cov_trace_const_cmp8(i64 31, i64 %sub42184)
  %cmp43185 = icmp ugt i64 %sub42184, 31
  %extract.t = trunc i64 %sub42184 to i32
  br i1 %cmp43185, label %while.body.lr.ph, label %if.end40.while.end_crit_edge

if.end40.while.end_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end40
  %m_blockwsize55 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 32
  br label %while.body

while.body:                                       ; preds = %if.end71.while.body_crit_edge, %while.body.lr.ph
  %word.1189 = phi i32 [ %word.0, %while.body.lr.ph ], [ %word.2, %if.end71.while.body_crit_edge ]
  %i.1188 = phi i64 [ %i.0, %while.body.lr.ph ], [ %add53, %if.end71.while.body_crit_edge ]
  %block.1187 = phi i64 [ %block.0, %while.body.lr.ph ], [ %block.2, %if.end71.while.body_crit_edge ]
  %b.1186 = phi ptr [ %b.0, %while.body.lr.ph ], [ %b.2, %if.end71.while.body_crit_edge ]
  %21 = ptrtoint ptr %b.1186 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %b.1186, align 4
  %xor45 = xor i32 %22, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor45)
  %tobool46.not = icmp eq i32 %xor45, 0
  br i1 %tobool46.not, label %if.end52, label %if.then47

if.then47:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bp, align 4
  tail call void @xfs_trans_brelse(ptr noundef %tp, ptr noundef %24) #6
  %25 = tail call i32 @llvm.cttz.i32(i32 %xor45, i1 true) #6, !range !27
  %conv49173 = zext i32 %25 to i64
  %add50 = add i64 %i.1188, %start
  %add51 = add i64 %add50, %conv49173
  br label %cleanup.sink.split

if.end52:                                         ; preds = %while.body
  %add53 = add i64 %i.1188, 32
  %inc54 = add i32 %word.1189, 1
  %26 = ptrtoint ptr %m_blockwsize55 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %m_blockwsize55, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc54, i32 %27)
  %cmp56 = icmp eq i32 %inc54, %27
  call void @__sanitizer_cov_trace_cmp8(i64 %conv41.pre-phi, i64 %add53)
  %cmp60 = icmp ugt i64 %conv41.pre-phi, %add53
  %or.cond172 = select i1 %cmp56, i1 %cmp60, i1 false
  br i1 %or.cond172, label %if.then62, label %if.else69

if.then62:                                        ; preds = %if.end52
  %28 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bp, align 4
  tail call void @xfs_trans_brelse(ptr noundef %tp, ptr noundef %29) #6
  %inc63 = add i64 %block.1187, 1
  %call64 = call i32 @xfs_rtbuf_get(ptr noundef %mp, ptr noundef %tp, i64 noundef %inc63, i32 noundef 0, ptr noundef nonnull %bp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.then62.cleanup_crit_edge

if.then62.cleanup_crit_edge:                      ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end67:                                         ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bp, align 4
  %b_addr68 = getelementptr inbounds %struct.xfs_buf, ptr %31, i32 0, i32 16
  %32 = ptrtoint ptr %b_addr68 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %b_addr68, align 4
  br label %if.end71

if.else69:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr70 = getelementptr i32, ptr %b.1186, i32 1
  br label %if.end71

if.end71:                                         ; preds = %if.else69, %if.end67
  %b.2 = phi ptr [ %33, %if.end67 ], [ %incdec.ptr70, %if.else69 ]
  %block.2 = phi i64 [ %inc63, %if.end67 ], [ %block.1187, %if.else69 ]
  %word.2 = phi i32 [ 0, %if.end67 ], [ %inc54, %if.else69 ]
  %sub42 = sub i64 %conv41.pre-phi, %add53
  %cmp43 = icmp ugt i64 %sub42, 31
  br i1 %cmp43, label %if.end71.while.body_crit_edge, label %while.end.loopexit

if.end71.while.body_crit_edge:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end.loopexit:                               ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  %extract.t193 = trunc i64 %sub42 to i32
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.end40.while.end_crit_edge
  %b.1.lcssa = phi ptr [ %b.0, %if.end40.while.end_crit_edge ], [ %b.2, %while.end.loopexit ]
  %i.1.lcssa = phi i64 [ %i.0, %if.end40.while.end_crit_edge ], [ %add53, %while.end.loopexit ]
  %sub42.lcssa.off0 = phi i32 [ %extract.t, %if.end40.while.end_crit_edge ], [ %extract.t193, %while.end.loopexit ]
  call void @__sanitizer_cov_trace_cmp8(i64 %i.1.lcssa, i64 %conv41.pre-phi)
  %tobool74.not = icmp eq i64 %i.1.lcssa, %conv41.pre-phi
  br i1 %tobool74.not, label %while.end.if.end90_crit_edge, label %if.then75

while.end.if.end90_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90

if.then75:                                        ; preds = %while.end
  %notmask = shl nsw i32 -1, %sub42.lcssa.off0
  %sub78 = xor i32 %notmask, -1
  %34 = ptrtoint ptr %b.1.lcssa to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %b.1.lcssa, align 4
  %xor79 = xor i32 %35, %sub
  %and80 = and i32 %xor79, %sub78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.then75.if.end90_crit_edge, label %if.then82

if.then75.if.end90_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90

if.then82:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bp, align 4
  tail call void @xfs_trans_brelse(ptr noundef %tp, ptr noundef %37) #6
  %38 = tail call i32 @llvm.cttz.i32(i32 %and80, i1 true) #6, !range !27
  %conv84174 = zext i32 %38 to i64
  %add85 = add i64 %i.1.lcssa, %start
  %add86 = add i64 %add85, %conv84174
  br label %cleanup.sink.split

if.end90:                                         ; preds = %if.then75.if.end90_crit_edge, %while.end.if.end90_crit_edge
  %39 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bp, align 4
  tail call void @xfs_trans_brelse(ptr noundef %tp, ptr noundef %40) #6
  %add91 = add i64 %conv41.pre-phi, %start
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end90, %if.then82, %if.then47, %if.then18
  %add91.sink = phi i64 [ %add91, %if.end90 ], [ %add86, %if.then82 ], [ %add51, %if.then47 ], [ %add22, %if.then18 ]
  %.sink = phi i32 [ 1, %if.end90 ], [ 0, %if.then82 ], [ 0, %if.then47 ], [ 0, %if.then18 ]
  %41 = ptrtoint ptr %new to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %add91.sink, ptr %new, align 8
  %42 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %.sink, ptr %stat, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then62.cleanup_crit_edge, %if.then31.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call33, %if.then31.cleanup_crit_edge ], [ 0, %cleanup.sink.split ], [ %call64, %if.then62.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_rtfree_extent(ptr noundef %tp, i64 noundef %bno, i32 noundef %len) local_unnamed_addr #1 align 64 {
entry:
  %sb = alloca i64, align 8
  %sumbp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sb) #6
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %sb, align 8, !annotation !24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sumbp) #6
  %1 = ptrtoint ptr %sumbp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %sumbp, align 4
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %2 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %t_mountp, align 4
  %m_rbmip = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %m_rbmip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m_rbmip, align 8
  %i_itemp = getelementptr inbounds %struct.xfs_inode, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %i_itemp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_itemp, align 8
  %cmp.not = icmp eq ptr %7, null
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !25

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 976) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %8 = ptrtoint ptr %m_rbmip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m_rbmip, align 8
  %call = tail call zeroext i1 @xfs_isilocked(ptr noundef %9, i32 noundef 4) #6
  br i1 %call, label %cond.end.cond.end11_crit_edge, label %cond.false10, !prof !28

cond.end.cond.end11_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end11

cond.false10:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, i32 noundef 977) #6
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false10, %cond.end.cond.end11_crit_edge
  %call12 = tail call fastcc i32 @xfs_rtcheck_alloc_range(ptr noundef %3, ptr noundef %tp, i64 noundef %bno, i32 noundef %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end, label %cond.end11.cleanup_crit_edge

cond.end11.cleanup_crit_edge:                     ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %cond.end11
  %call14 = call i32 @xfs_rtfree_range(ptr noundef %3, ptr noundef %tp, i64 noundef %bno, i32 noundef %len, ptr noundef nonnull %sumbp, ptr noundef nonnull %sb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %conv = sext i32 %len to i64
  tail call void @xfs_trans_mod_sb(ptr noundef %tp, i32 noundef 16, i64 noundef %conv) #6
  %t_frextents_delta = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 16
  %10 = ptrtoint ptr %t_frextents_delta to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %t_frextents_delta, align 8
  %sb_frextents = getelementptr inbounds %struct.xfs_sb, ptr %3, i32 0, i32 31
  %12 = ptrtoint ptr %sb_frextents to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %sb_frextents, align 8
  %add = add i64 %13, %11
  %sb_rextents = getelementptr inbounds %struct.xfs_sb, ptr %3, i32 0, i32 4
  %14 = ptrtoint ptr %sb_rextents to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %sb_rextents, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %15)
  %cmp19 = icmp eq i64 %add, %15
  br i1 %cmp19, label %if.then21, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then21:                                        ; preds = %if.end17
  %16 = ptrtoint ptr %m_rbmip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %m_rbmip, align 8
  %i_diflags = getelementptr inbounds %struct.xfs_inode, ptr %17, i32 0, i32 24
  %18 = ptrtoint ptr %i_diflags to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %i_diflags, align 2
  %20 = and i16 %19, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool24.not = icmp eq i16 %20, 0
  br i1 %tobool24.not, label %if.then25, label %if.then21.if.end30_crit_edge

if.then21.if.end30_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then25:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i16 %19, 4
  %21 = ptrtoint ptr %i_diflags to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %or, ptr %i_diflags, align 2
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %if.then21.if.end30_crit_edge
  %22 = ptrtoint ptr %m_rbmip to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %m_rbmip, align 8
  %i_atime = getelementptr inbounds %struct.xfs_inode, ptr %23, i32 0, i32 27, i32 15
  %24 = ptrtoint ptr %i_atime to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 0, ptr %i_atime, align 8
  %25 = load ptr, ptr %m_rbmip, align 8
  tail call void @xfs_trans_log_inode(ptr noundef %tp, ptr noundef %25, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.end17.cleanup_crit_edge, %if.end.cleanup_crit_edge, %cond.end11.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %cond.end11.cleanup_crit_edge ], [ %call14, %if.end.cleanup_crit_edge ], [ 0, %if.end30 ], [ 0, %if.end17.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sumbp) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sb) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_isilocked(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_rtcheck_alloc_range(ptr noundef %mp, ptr noundef %tp, i64 noundef %bno, i32 noundef %len) unnamed_addr #4 align 64 {
entry:
  %new = alloca i64, align 8
  %stat = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %new) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stat) #6
  %0 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %stat, align 4, !annotation !24
  %call = call i32 @xfs_rtcheck_range(ptr noundef %mp, ptr noundef %tp, i64 noundef %bno, i32 noundef %len, i32 noundef 0, ptr noundef nonnull %new, ptr noundef nonnull %stat)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %cond.false, label %if.end.cleanup_crit_edge, !prof !25

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 953) #6
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stat) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_mod_sb(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_log_inode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_rtalloc_query_range(ptr noundef %tp, ptr nocapture noundef readonly %low_rec, ptr nocapture noundef readonly %high_rec, ptr nocapture noundef readonly %fn, ptr noundef %priv) local_unnamed_addr #1 align 64 {
entry:
  %rec = alloca %struct.xfs_rtalloc_rec, align 8
  %rtend = alloca i64, align 8
  %is_free = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rec) #6
  %0 = getelementptr inbounds %struct.xfs_rtalloc_rec, ptr %rec, i32 0, i32 1
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %1 = call ptr @memset(ptr %rec, i32 255, i32 16)
  %2 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %t_mountp, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rtend) #6
  %4 = ptrtoint ptr %rtend to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %rtend, align 8, !annotation !24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %is_free) #6
  %5 = ptrtoint ptr %is_free to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %is_free, align 4, !annotation !24
  %6 = ptrtoint ptr %low_rec to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %low_rec, align 8
  %8 = ptrtoint ptr %high_rec to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %high_rec, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %9)
  %cmp = icmp ugt i64 %7, %9
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %sb_rextents = getelementptr inbounds %struct.xfs_sb, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %sb_rextents to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %sb_rextents, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %11)
  %cmp3.not = icmp uge i64 %7, %11
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %9)
  %cmp6 = icmp eq i64 %7, %9
  %or.cond = select i1 %cmp3.not, i1 true, i1 %cmp6
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %sub = add i64 %11, -1
  %12 = tail call i64 @llvm.umin.i64(i64 %9, i64 %sub)
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %12)
  %cmp14.not60 = icmp ugt i64 %7, %12
  br i1 %cmp14.not60, label %if.end8.cleanup_crit_edge, label %if.end8.while.body_crit_edge

if.end8.while.body_crit_edge:                     ; preds = %if.end8
  br label %while.body

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body:                                       ; preds = %if.end29.while.body_crit_edge, %if.end8.while.body_crit_edge
  %rtstart.061 = phi i64 [ %add30, %if.end29.while.body_crit_edge ], [ %7, %if.end8.while.body_crit_edge ]
  %call = call i32 @xfs_rtcheck_range(ptr noundef %3, ptr noundef %tp, i64 noundef %rtstart.061, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %rtend, ptr noundef nonnull %is_free)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end16, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %while.body
  %call17 = call i32 @xfs_rtfind_forw(ptr noundef %3, ptr noundef %tp, i64 noundef %rtstart.061, i64 noundef %12, ptr noundef nonnull %rtend)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %13 = ptrtoint ptr %is_free to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %is_free, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool21.not = icmp eq i32 %14, 0
  br i1 %tobool21.not, label %if.end20.if.end29_crit_edge, label %if.then22

if.end20.if.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then22:                                        ; preds = %if.end20
  %15 = ptrtoint ptr %rec to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %rtstart.061, ptr %rec, align 8
  %16 = ptrtoint ptr %rtend to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %rtend, align 8
  %sub24 = sub i64 1, %rtstart.061
  %add = add i64 %sub24, %17
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %add, ptr %0, align 8
  %call25 = call i32 %fn(ptr noundef %tp, ptr noundef nonnull %rec, ptr noundef %priv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then22.if.end29_crit_edge, label %if.then22.cleanup_crit_edge

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then22.if.end29_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.end29:                                         ; preds = %if.then22.if.end29_crit_edge, %if.end20.if.end29_crit_edge
  %19 = ptrtoint ptr %rtend to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %rtend, align 8
  %add30 = add i64 %20, 1
  %cmp14.not = icmp ugt i64 %add30, %12
  br i1 %cmp14.not, label %if.end29.cleanup_crit_edge, label %if.end29.while.body_crit_edge

if.end29.while.body_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end29.cleanup_crit_edge, %if.then22.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ %call25, %if.then22.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ], [ %call, %while.body.cleanup_crit_edge ], [ 0, %if.end29.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %is_free) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rtend) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rec) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_rtalloc_query_all(ptr noundef %tp, ptr nocapture noundef readonly %fn, ptr noundef %priv) local_unnamed_addr #1 align 64 {
entry:
  %keys = alloca [2 x %struct.xfs_rtalloc_rec], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %keys) #6
  %0 = getelementptr inbounds %struct.xfs_rtalloc_rec, ptr %keys, i32 0, i32 1
  %1 = getelementptr inbounds [2 x %struct.xfs_rtalloc_rec], ptr %keys, i32 0, i32 1
  %2 = getelementptr inbounds [2 x %struct.xfs_rtalloc_rec], ptr %keys, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %keys to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %keys, align 8
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %4 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %t_mountp, align 4
  %sb_rextents = getelementptr inbounds %struct.xfs_sb, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %sb_rextents to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %sb_rextents, align 8
  %sub = add i64 %7, -1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %sub, ptr %1, align 8
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %2, align 8
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %0, align 8
  %call = call i32 @xfs_rtalloc_query_range(ptr noundef %tp, ptr noundef nonnull %keys, ptr noundef %1, ptr noundef %fn, ptr noundef %priv)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %keys) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_rtalloc_extent_is_free(ptr noundef %mp, ptr noundef %tp, i64 noundef %start, i32 noundef %len, ptr nocapture noundef writeonly %is_free) local_unnamed_addr #1 align 64 {
entry:
  %end = alloca i64, align 8
  %matches = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %matches) #6
  %0 = ptrtoint ptr %matches to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %matches, align 4, !annotation !24
  %call = call i32 @xfs_rtcheck_range(ptr noundef %mp, ptr noundef %tp, i64 noundef %start, i32 noundef %len, i32 noundef 1, ptr noundef nonnull %end, ptr noundef nonnull %matches)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %matches to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %matches, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1 = icmp ne i32 %2, 0
  %frombool = zext i1 %tobool1 to i8
  %3 = ptrtoint ptr %is_free to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool, ptr %is_free, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %matches) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_read_buf_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/libxfs/xfs_rtbitmap.c", i32 44, i32 10}
!2 = !{ptr @xfs_rtbuf_ops, !3, !"xfs_rtbuf_ops", i1 false, i1 false}
!3 = !{!"../fs/xfs/libxfs/xfs_rtbitmap.c", i32 43, i32 26}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/xfs/libxfs/xfs_rtbitmap.c", i32 73, i32 6}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/xfs/libxfs/xfs_rtbitmap.c", i32 76, i32 2}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/xfs/libxfs/xfs_rtbitmap.c", i32 976, i32 2}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/xfs/libxfs/xfs_rtbitmap.c", i32 977, i32 2}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/xfs/libxfs/xfs_rtbitmap.c", i32 953, i32 2}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{!"auto-init"}
!25 = !{!"branch_weights", i32 1, i32 2000}
!26 = !{i64 2155741687}
!27 = !{i32 0, i32 33}
!28 = !{!"branch_weights", i32 2000, i32 1}
