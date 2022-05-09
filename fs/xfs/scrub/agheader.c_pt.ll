; ModuleID = '/llk/IR_all_yes/fs/xfs/scrub/agheader.c_pt.bc'
source_filename = "../fs/xfs/scrub/agheader.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfs_owner_info = type { i64, i64, i32 }
%struct.xfs_scrub = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.xchk_ag }
%struct.xchk_ag = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xfs_scrub_metadata = type { i32, i32, i64, i32, i32, [5 x i64] }
%struct.xfs_buf = type { %struct.rhash_head, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.semaphore, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.completion, ptr, %struct.list_head, ptr, ptr, [2 x ptr], ptr, %struct.xfs_buf_map, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.xfs_buf_map = type { i64, i32 }
%struct.atomic_t = type { i32 }
%struct.xfs_dsb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.xfs_agf = type { i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, %struct.uuid_t, i32, i32, i32, i32, [14 x i64], i64, i32, i32 }
%struct.xfs_perag = type { ptr, i32, %struct.atomic_t, i8, i8, i8, i8, [3 x i8], i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.xfs_ag_resv, %struct.xfs_ag_resv, %struct.callback_head, i16, i16, %struct.spinlock, %struct.spinlock, %struct.rb_root, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.xarray, i32, i32, %struct.spinlock, %struct.rhashtable, %struct.delayed_work, %struct.rhashtable }
%struct.xfs_ag_resv = type { i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.xchk_agfl_info = type { i32, i32, ptr, ptr }
%struct.xfs_agi = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [64 x i32], %struct.uuid_t, i32, i32, i64, i32, i32, i32, i32 }
%struct.xfs_alloc_rec_incore = type { i32, i32 }

@XFS_RMAP_OINFO_FS = external dso_local constant %struct.xfs_owner_info, align 8
@XFS_RMAP_OINFO_AG = external dso_local constant %struct.xfs_owner_info, align 8
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4294967258, i64 4294967269, i64 4294967274]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967171]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xchk_superblock(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  %bp = alloca ptr, align 4
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #7
  %2 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #7
  %3 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %error, align 4, !annotation !9
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %4 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sm, align 4
  %sm_agno = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %sm_agno to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sm_agno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @xfs_perag_get(ptr noundef %1, i32 noundef %7) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %tp = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 3
  %8 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tp, align 4
  %call4 = call i32 @xfs_sb_read_secondary(ptr noundef %1, ptr noundef %9, i32 noundef %7, ptr noundef nonnull %bp) #7
  %10 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call4, ptr %error, align 4
  %11 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call4, label %if.end3.sw.epilog_crit_edge [
    i32 -22, label %if.end3.sw.bb_crit_edge
    i32 -38, label %if.end3.sw.bb_crit_edge572
    i32 -27, label %if.end3.sw.bb_crit_edge573
  ]

if.end3.sw.bb_crit_edge573:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end3.sw.bb_crit_edge572:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end3.sw.bb_crit_edge:                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end3.sw.epilog_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end3.sw.bb_crit_edge, %if.end3.sw.bb_crit_edge572, %if.end3.sw.bb_crit_edge573
  %12 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -117, ptr %error, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end3.sw.epilog_crit_edge
  %call6 = call zeroext i1 @xchk_process_error(ptr noundef %sc, i32 noundef %7, i32 noundef 0, ptr noundef nonnull %error) #7
  br i1 %call6, label %if.end8, label %sw.epilog.out_pag_crit_edge

sw.epilog.out_pag_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_pag

if.end8:                                          ; preds = %sw.epilog
  %13 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %14, i32 0, i32 16
  %15 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %b_addr, align 4
  %sb_blocksize = getelementptr inbounds %struct.xfs_dsb, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %sb_blocksize to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sb_blocksize, align 4
  %sb_blocksize9 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %sb_blocksize9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sb_blocksize9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp10.not = icmp eq i32 %18, %20
  br i1 %cmp10.not, label %if.end8.if.end13_crit_edge, label %if.then12

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %14) #7
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end8.if.end13_crit_edge
  %sb_dblocks = getelementptr inbounds %struct.xfs_dsb, ptr %16, i32 0, i32 2
  %21 = ptrtoint ptr %sb_dblocks to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %sb_dblocks, align 8
  %sb_dblocks15 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %sb_dblocks15 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %sb_dblocks15, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %24)
  %cmp16.not = icmp eq i64 %22, %24
  br i1 %cmp16.not, label %if.end13.if.end19_crit_edge, label %if.then18

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %26) #7
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end13.if.end19_crit_edge
  %sb_rblocks = getelementptr inbounds %struct.xfs_dsb, ptr %16, i32 0, i32 3
  %27 = ptrtoint ptr %sb_rblocks to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %sb_rblocks, align 8
  %sb_rblocks21 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %sb_rblocks21 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %sb_rblocks21, align 16
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %30)
  %cmp22.not = icmp eq i64 %28, %30
  br i1 %cmp22.not, label %if.end19.if.end25_crit_edge, label %if.then24

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %32) #7
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end19.if.end25_crit_edge
  %sb_rextents = getelementptr inbounds %struct.xfs_dsb, ptr %16, i32 0, i32 4
  %33 = ptrtoint ptr %sb_rextents to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %sb_rextents, align 8
  %sb_rextents27 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 4
  %35 = ptrtoint ptr %sb_rextents27 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %sb_rextents27, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %36)
  %cmp28.not = icmp eq i64 %34, %36
  br i1 %cmp28.not, label %if.end25.if.end31_crit_edge, label %if.then30

if.end25.if.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %38) #7
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end25.if.end31_crit_edge
  %sb_uuid = getelementptr inbounds %struct.xfs_dsb, ptr %16, i32 0, i32 5
  %sb_uuid33 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 5
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(16) %sb_uuid, ptr noundef dereferenceable(16) %sb_uuid33, i32 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i, label %if.end31.if.end36_crit_edge, label %if.then35

if.end31.if.end36_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_preen(ptr noundef %sc, ptr noundef %40) #7
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end31.if.end36_crit_edge
  %sb_logstart = getelementptr inbounds %struct.xfs_dsb, ptr %16, i32 0, i32 6
  %41 = ptrtoint ptr %sb_logstart to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %sb_logstart, align 8
  %sb_logstart38 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 6
  %43 = ptrtoint ptr %sb_logstart38 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %sb_logstart38, align 16
  call void @__sanitizer_cov_trace_cmp8(i64 %42, i64 %44)
  %cmp39.not = icmp eq i64 %42, %44
  br i1 %cmp39.not, label %if.end36.if.end42_crit_edge, label %if.then41

if.end36.if.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %46) #7
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end36.if.end42_crit_edge
  %sb_rootino = getelementptr inbounds %struct.xfs_dsb, ptr %16, i32 0, i32 7
  %47 = ptrtoint ptr %sb_rootino to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %sb_rootino, align 8
  %sb_rootino44 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 7
  %49 = ptrtoint ptr %sb_rootino44 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %sb_rootino44, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %48, i64 %50)
  %cmp45.not = icmp eq i64 %48, %50
  br i1 %cmp45.not, label %if.end42.if.end48_crit_edge, label %if.then47

if.end42.if.end48_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.then47:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_preen(ptr noundef %sc, ptr noundef %52) #7
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end42.if.end48_crit_edge
  %sb_rbmino = getelementptr inbounds %struct.xfs_dsb, ptr %16, i32 0, i32 8
  %53 = ptrtoint ptr %sb_rbmino to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %sb_rbmino, align 8
  %sb_rbmino50 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 8
  %55 = ptrtoint ptr %sb_rbmino50 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %sb_rbmino50, align 64
  call void @__sanitizer_cov_trace_cmp8(i64 %54, i64 %56)
  %cmp51.not = icmp eq i64 %54, %56
  br i1 %cmp51.not, label %if.end48.if.end54_crit_edge, label %if.then53

if.end48.if.end54_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.then53:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_preen(ptr noundef %sc, ptr noundef %58) #7
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end48.if.end54_crit_edge
  %sb_rsumino = getelementptr inbounds %struct.xfs_dsb, ptr %16, i32 0, i32 9
  %59 = ptrtoint ptr %sb_rsumino to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %sb_rsumino, align 8
  %sb_rsumino56 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 9
  %61 = ptrtoint ptr %sb_rsumino56 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %sb_rsumino56, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %60, i64 %62)
  %cmp57.not = icmp eq i64 %60, %62
  br i1 %cmp57.not, label %if.end54.if.end60_crit_edge, label %if.then59

if.end54.if.end60_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.then59:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_preen(ptr noundef %sc, ptr noundef %64) #7
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %if.end54.if.end60_crit_edge
  %sb_rextsize = getelementptr inbounds %struct.xfs_dsb, ptr %16, i32 0, i32 10
  %65 = ptrtoint ptr %sb_rextsize to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sb_rextsize, align 8
  %sb_rextsize62 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 10
  %67 = ptrtoint ptr %sb_rextsize62 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sb_rextsize62, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %68)
  %cmp63.not = icmp eq i32 %66, %68
  br i1 %cmp63.not, label %if.end60.if.end66_crit_edge, label %if.then65

if.end60.if.end66_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

if.then65:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %70) #7
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %if.end60.if.end66_crit_edge
  %sb_agblocks = getelementptr inbounds %struct.xfs_dsb, ptr %16, i32 0, i32 11
  %71 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %sb_agblocks, align 4
  %sb_agblocks68 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 11
  %73 = ptrtoint ptr %sb_agblocks68 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %sb_agblocks68, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %74)
  %cmp69.not = icmp eq i32 %72, %74
  br i1 %cmp69.not, label %if.end66.if.end72_crit_edge, label %if.then71

if.end66.if.end72_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.then71:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  %75 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %76) #7
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %if.end66.if.end72_crit_edge
  %sb_agcount = getelementptr inbounds %struct.xfs_dsb, ptr %16, i32 0, i32 12
  %77 = ptrtoint ptr %sb_agcount to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %sb_agcount, align 8
  %sb_agcount74 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 12
  %79 = ptrtoint ptr %sb_agcount74 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %sb_agcount74, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %80)
  %cmp75.not = icmp eq i32 %78, %80
  br i1 %cmp75.not, label %if.end72.if.end78_crit_edge, label %if.then77

if.end72.if.end78_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

if.then77:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  %81 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %82) #7
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %if.end72.if.end78_crit_edge
  %sb_rbmblocks = getelementptr inbounds %struct.xfs_dsb, ptr %16, i32 0, i32 13
  %83 = ptrtoint ptr %sb_rbmblocks to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %sb_rbmblocks, align 4
  %sb_rbmblocks80 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 13
  %85 = ptrtoint ptr %sb_rbmblocks80 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %sb_rbmblocks80, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %86)
  %cmp81.not = icmp eq i32 %84, %86
  br i1 %cmp81.not, label %if.end78.if.end84_crit_edge, label %if.then83

if.end78.if.end84_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.then83:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  %87 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %88) #7
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %if.end78.if.end84_crit_edge
  %sb_logblocks = getelementptr inbounds %struct.xfs_dsb, ptr %16, i32 0, i32 14
  %89 = ptrtoint ptr %sb_logblocks to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %sb_logblocks, align 8
  %sb_logblocks86 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 14
  %91 = ptrtoint ptr %sb_logblocks86 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %sb_logblocks86, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %92)
  %cmp87.not = icmp eq i32 %90, %92
  br i1 %cmp87.not, label %if.end84.if.end90_crit_edge, label %if.then89

if.end84.if.end90_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

if.then89:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  %93 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %94) #7
  br label %if.end90

if.end90:                                         ; preds = %if.then89, %if.end84.if.end90_crit_edge
  %sb_versionnum = getelementptr inbounds %struct.xfs_dsb, ptr %16, i32 0, i32 15
  %95 = ptrtoint ptr %sb_versionnum to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %sb_versionnum, align 4
  %sb_versionnum94 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 15
  %97 = ptrtoint ptr %sb_versionnum94 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %sb_versionnum94, align 4
  %99 = xor i16 %98, %96
  %100 = and i16 %99, 16271
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %100)
  %cmp98.not = icmp eq i16 %100, 0
  br i1 %cmp98.not, label %if.end90.if.end101_crit_edge, label %if.then100

if.end90.if.end101_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

if.then100:                                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  %101 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %102) #7
  br label %if.end101

if.end101:                                        ; preds = %if.then100, %if.end90.if.end101_crit_edge
  %103 = ptrtoint ptr %sb_versionnum to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %sb_versionnum, align 4
  %105 = ptrtoint ptr %sb_versionnum94 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %sb_versionnum94, align 4
  %107 = xor i16 %106, %104
  %108 = and i16 %107, 112
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %108)
  %cmp111.not = icmp eq i16 %108, 0
  br i1 %cmp111.not, label %if.end101.if.end114_crit_edge, label %if.then113

if.end101.if.end114_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end114

if.then113:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  %109 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_preen(ptr noundef %sc, ptr noundef %110) #7
  br label %if.end114

if.end114:                                        ; preds = %if.then113, %if.end101.if.end114_crit_edge
  %sb_sectsize = getelementptr inbounds %struct.xfs_dsb, ptr %16, i32 0, i32 16
  %111 = ptrtoint ptr %sb_sectsize to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %sb_sectsize, align 2
  %sb_sectsize117 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 16
  %113 = ptrtoint ptr %sb_sectsize117 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %sb_sectsize117, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %112, i16 %114)
  %cmp119.not = icmp eq i16 %112, %114
  br i1 %cmp119.not, label %if.end114.if.end122_crit_edge, label %if.then121

if.end114.if.end122_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122

if.then121:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  %115 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %116) #7
  br label %if.end122

if.end122:                                        ; preds = %if.then121, %if.end114.if.end122_crit_edge
  %sb_inodesize = getelementptr inbounds %struct.xfs_dsb, ptr %16, i32 0, i32 17
  %117 = ptrtoint ptr %sb_inodesize to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %sb_inodesize, align 8
  %sb_inodesize125 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 17
  %119 = ptrtoint ptr %sb_inodesize125 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %sb_inodesize125, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %118, i16 %120)
  %cmp127.not = icmp eq i16 %118, %120
  br i1 %cmp127.not, label %if.end122.if.end130_crit_edge, label %if.then129

if.end122.if.end130_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end130

if.then129:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  %121 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %122) #7
  br label %if.end130

if.end130:                                        ; preds = %if.then129, %if.end122.if.end130_crit_edge
  %sb_inopblock = getelementptr inbounds %struct.xfs_dsb, ptr %16, i32 0, i32 18
  %123 = ptrtoint ptr %sb_inopblock to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %sb_inopblock, align 2
  %sb_inopblock133 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 18
  %125 = ptrtoint ptr %sb_inopblock133 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %sb_inopblock133, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %124, i16 %126)
  %cmp135.not = icmp eq i16 %124, %126
  br i1 %cmp135.not, label %if.end130.if.end138_crit_edge, label %if.then137

if.end130.if.end138_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end138

if.then137:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #9
  %127 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %128) #7
  br label %if.end138

if.end138:                                        ; preds = %if.then137, %if.end130.if.end138_crit_edge
  %sb_fname = getelementptr inbounds %struct.xfs_dsb, ptr %16, i32 0, i32 19
  %sb_fname140 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 19
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(12) %sb_fname, ptr noundef dereferenceable(12) %sb_fname140, i32 12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool143.not = icmp eq i32 %bcmp, 0
  br i1 %tobool143.not, label %if.end138.if.end145_crit_edge, label %if.then144

if.end138.if.end145_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end145

if.then144:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #9
  %129 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_preen(ptr noundef %sc, ptr noundef %130) #7
  br label %if.end145

if.end145:                                        ; preds = %if.then144, %if.end138.if.end145_crit_edge
  %sb_blocklog = getelementptr inbounds %struct.xfs_dsb, ptr %16, i32 0, i32 20
  %131 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %sb_blocklog, align 8
  %sb_blocklog148 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 20
  %133 = ptrtoint ptr %sb_blocklog148 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %sb_blocklog148, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %132, i8 %134)
  %cmp150.not = icmp eq i8 %132, %134
  br i1 %cmp150.not, label %if.end145.if.end153_crit_edge, label %if.then152

if.end145.if.end153_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end153

if.then152:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #9
  %135 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %136) #7
  br label %if.end153

if.end153:                                        ; preds = %if.then152, %if.end145.if.end153_crit_edge
  %sb_sectlog = getelementptr inbounds %struct.xfs_dsb, ptr %16, i32 0, i32 21
  %137 = ptrtoint ptr %sb_sectlog to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %sb_sectlog, align 1
  %sb_sectlog156 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 21
  %139 = ptrtoint ptr %sb_sectlog156 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %sb_sectlog156, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %138, i8 %140)
  %cmp158.not = icmp eq i8 %138, %140
  br i1 %cmp158.not, label %if.end153.if.end161_crit_edge, label %if.then160

if.end153.if.end161_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end161

if.then160:                                       ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #9
  %141 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %142) #7
  br label %if.end161

if.end161:                                        ; preds = %if.then160, %if.end153.if.end161_crit_edge
  %sb_inodelog = getelementptr inbounds %struct.xfs_dsb, ptr %16, i32 0, i32 22
  %143 = ptrtoint ptr %sb_inodelog to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %sb_inodelog, align 2
  %sb_inodelog164 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 22
  %145 = ptrtoint ptr %sb_inodelog164 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %sb_inodelog164, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %144, i8 %146)
  %cmp166.not = icmp eq i8 %144, %146
  br i1 %cmp166.not, label %if.end161.if.end169_crit_edge, label %if.then168

if.end161.if.end169_crit_edge:                    ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end169

if.then168:                                       ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #9
  %147 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %148) #7
  br label %if.end169

if.end169:                                        ; preds = %if.then168, %if.end161.if.end169_crit_edge
  %sb_inopblog = getelementptr inbounds %struct.xfs_dsb, ptr %16, i32 0, i32 23
  %149 = ptrtoint ptr %sb_inopblog to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %sb_inopblog, align 1
  %sb_inopblog172 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 23
  %151 = ptrtoint ptr %sb_inopblog172 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %sb_inopblog172, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %150, i8 %152)
  %cmp174.not = icmp eq i8 %150, %152
  br i1 %cmp174.not, label %if.end169.if.end177_crit_edge, label %if.then176

if.end169.if.end177_crit_edge:                    ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end177

if.then176:                                       ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #9
  %153 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %154) #7
  br label %if.end177

if.end177:                                        ; preds = %if.then176, %if.end169.if.end177_crit_edge
  %sb_agblklog = getelementptr inbounds %struct.xfs_dsb, ptr %16, i32 0, i32 24
  %155 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %sb_agblklog, align 4
  %sb_agblklog180 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 24
  %157 = ptrtoint ptr %sb_agblklog180 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %sb_agblklog180, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %156, i8 %158)
  %cmp182.not = icmp eq i8 %156, %158
  br i1 %cmp182.not, label %if.end177.if.end185_crit_edge, label %if.then184

if.end177.if.end185_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end185

if.then184:                                       ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #9
  %159 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %160) #7
  br label %if.end185

if.end185:                                        ; preds = %if.then184, %if.end177.if.end185_crit_edge
  %sb_rextslog = getelementptr inbounds %struct.xfs_dsb, ptr %16, i32 0, i32 25
  %161 = ptrtoint ptr %sb_rextslog to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %sb_rextslog, align 1
  %sb_rextslog188 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 25
  %163 = ptrtoint ptr %sb_rextslog188 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %sb_rextslog188, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %162, i8 %164)
  %cmp190.not = icmp eq i8 %162, %164
  br i1 %cmp190.not, label %if.end185.if.end193_crit_edge, label %if.then192

if.end185.if.end193_crit_edge:                    ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end193

if.then192:                                       ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #9
  %165 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %166) #7
  br label %if.end193

if.end193:                                        ; preds = %if.then192, %if.end185.if.end193_crit_edge
  %sb_imax_pct = getelementptr inbounds %struct.xfs_dsb, ptr %16, i32 0, i32 27
  %167 = ptrtoint ptr %sb_imax_pct to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %sb_imax_pct, align 1
  %sb_imax_pct196 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 27
  %169 = ptrtoint ptr %sb_imax_pct196 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %sb_imax_pct196, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %168, i8 %170)
  %cmp198.not = icmp eq i8 %168, %170
  br i1 %cmp198.not, label %if.end193.if.end201_crit_edge, label %if.then200

if.end193.if.end201_crit_edge:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end201

if.then200:                                       ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #9
  %171 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_preen(ptr noundef %sc, ptr noundef %172) #7
  br label %if.end201

if.end201:                                        ; preds = %if.then200, %if.end193.if.end201_crit_edge
  %sb_uquotino = getelementptr inbounds %struct.xfs_dsb, ptr %16, i32 0, i32 32
  %173 = ptrtoint ptr %sb_uquotino to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %sb_uquotino, align 8
  %sb_uquotino203 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 32
  %175 = ptrtoint ptr %sb_uquotino203 to i32
  call void @__asan_load8_noabort(i32 %175)
  %176 = load i64, ptr %sb_uquotino203, align 32
  call void @__sanitizer_cov_trace_cmp8(i64 %174, i64 %176)
  %cmp204.not = icmp eq i64 %174, %176
  br i1 %cmp204.not, label %if.end201.if.end207_crit_edge, label %if.then206

if.end201.if.end207_crit_edge:                    ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end207

if.then206:                                       ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #9
  %177 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_preen(ptr noundef %sc, ptr noundef %178) #7
  br label %if.end207

if.end207:                                        ; preds = %if.then206, %if.end201.if.end207_crit_edge
  %sb_gquotino = getelementptr inbounds %struct.xfs_dsb, ptr %16, i32 0, i32 33
  %179 = ptrtoint ptr %sb_gquotino to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %sb_gquotino, align 8
  %sb_gquotino209 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 33
  %181 = ptrtoint ptr %sb_gquotino209 to i32
  call void @__asan_load8_noabort(i32 %181)
  %182 = load i64, ptr %sb_gquotino209, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %180, i64 %182)
  %cmp210.not = icmp eq i64 %180, %182
  br i1 %cmp210.not, label %if.end207.if.end213_crit_edge, label %if.then212

if.end207.if.end213_crit_edge:                    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end213

if.then212:                                       ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #9
  %183 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_preen(ptr noundef %sc, ptr noundef %184) #7
  br label %if.end213

if.end213:                                        ; preds = %if.then212, %if.end207.if.end213_crit_edge
  %sb_flags = getelementptr inbounds %struct.xfs_dsb, ptr %16, i32 0, i32 35
  %185 = ptrtoint ptr %sb_flags to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %sb_flags, align 2
  %sb_flags216 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 35
  %187 = ptrtoint ptr %sb_flags216 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %sb_flags216, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %186, i8 %188)
  %cmp218.not = icmp eq i8 %186, %188
  br i1 %cmp218.not, label %if.end213.if.end221_crit_edge, label %if.then220

if.end213.if.end221_crit_edge:                    ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end221

if.then220:                                       ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #9
  %189 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %190) #7
  br label %if.end221

if.end221:                                        ; preds = %if.then220, %if.end213.if.end221_crit_edge
  %sb_shared_vn = getelementptr inbounds %struct.xfs_dsb, ptr %16, i32 0, i32 36
  %191 = ptrtoint ptr %sb_shared_vn to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %sb_shared_vn, align 1
  %sb_shared_vn224 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 36
  %193 = ptrtoint ptr %sb_shared_vn224 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %sb_shared_vn224, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %192, i8 %194)
  %cmp226.not = icmp eq i8 %192, %194
  br i1 %cmp226.not, label %if.end221.if.end229_crit_edge, label %if.then228

if.end221.if.end229_crit_edge:                    ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end229

if.then228:                                       ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #9
  %195 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %196) #7
  br label %if.end229

if.end229:                                        ; preds = %if.then228, %if.end221.if.end229_crit_edge
  %sb_inoalignmt = getelementptr inbounds %struct.xfs_dsb, ptr %16, i32 0, i32 37
  %197 = ptrtoint ptr %sb_inoalignmt to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %sb_inoalignmt, align 4
  %sb_inoalignmt231 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 37
  %199 = ptrtoint ptr %sb_inoalignmt231 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %sb_inoalignmt231, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %198, i32 %200)
  %cmp232.not = icmp eq i32 %198, %200
  br i1 %cmp232.not, label %if.end229.if.end235_crit_edge, label %if.then234

if.end229.if.end235_crit_edge:                    ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end235

if.then234:                                       ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #9
  %201 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %202) #7
  br label %if.end235

if.end235:                                        ; preds = %if.then234, %if.end229.if.end235_crit_edge
  %sb_unit = getelementptr inbounds %struct.xfs_dsb, ptr %16, i32 0, i32 38
  %203 = ptrtoint ptr %sb_unit to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %sb_unit, align 8
  %sb_unit237 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 38
  %205 = ptrtoint ptr %sb_unit237 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %sb_unit237, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %204, i32 %206)
  %cmp238.not = icmp eq i32 %204, %206
  br i1 %cmp238.not, label %if.end235.if.end241_crit_edge, label %if.then240

if.end235.if.end241_crit_edge:                    ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end241

if.then240:                                       ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #9
  %207 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_preen(ptr noundef %sc, ptr noundef %208) #7
  br label %if.end241

if.end241:                                        ; preds = %if.then240, %if.end235.if.end241_crit_edge
  %sb_width = getelementptr inbounds %struct.xfs_dsb, ptr %16, i32 0, i32 39
  %209 = ptrtoint ptr %sb_width to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %sb_width, align 4
  %sb_width243 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 39
  %211 = ptrtoint ptr %sb_width243 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %sb_width243, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %210, i32 %212)
  %cmp244.not = icmp eq i32 %210, %212
  br i1 %cmp244.not, label %if.end241.if.end247_crit_edge, label %if.then246

if.end241.if.end247_crit_edge:                    ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end247

if.then246:                                       ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #9
  %213 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_preen(ptr noundef %sc, ptr noundef %214) #7
  br label %if.end247

if.end247:                                        ; preds = %if.then246, %if.end241.if.end247_crit_edge
  %sb_dirblklog = getelementptr inbounds %struct.xfs_dsb, ptr %16, i32 0, i32 40
  %215 = ptrtoint ptr %sb_dirblklog to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %sb_dirblklog, align 8
  %sb_dirblklog250 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 40
  %217 = ptrtoint ptr %sb_dirblklog250 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %sb_dirblklog250, align 64
  call void @__sanitizer_cov_trace_cmp1(i8 %216, i8 %218)
  %cmp252.not = icmp eq i8 %216, %218
  br i1 %cmp252.not, label %if.end247.if.end255_crit_edge, label %if.then254

if.end247.if.end255_crit_edge:                    ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end255

if.then254:                                       ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #9
  %219 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %220) #7
  br label %if.end255

if.end255:                                        ; preds = %if.then254, %if.end247.if.end255_crit_edge
  %sb_logsectlog = getelementptr inbounds %struct.xfs_dsb, ptr %16, i32 0, i32 41
  %221 = ptrtoint ptr %sb_logsectlog to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %sb_logsectlog, align 1
  %sb_logsectlog258 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 41
  %223 = ptrtoint ptr %sb_logsectlog258 to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %sb_logsectlog258, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %222, i8 %224)
  %cmp260.not = icmp eq i8 %222, %224
  br i1 %cmp260.not, label %if.end255.if.end263_crit_edge, label %if.then262

if.end255.if.end263_crit_edge:                    ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end263

if.then262:                                       ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #9
  %225 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %226) #7
  br label %if.end263

if.end263:                                        ; preds = %if.then262, %if.end255.if.end263_crit_edge
  %sb_logsectsize = getelementptr inbounds %struct.xfs_dsb, ptr %16, i32 0, i32 42
  %227 = ptrtoint ptr %sb_logsectsize to i32
  call void @__asan_load2_noabort(i32 %227)
  %228 = load i16, ptr %sb_logsectsize, align 2
  %sb_logsectsize266 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 42
  %229 = ptrtoint ptr %sb_logsectsize266 to i32
  call void @__asan_load2_noabort(i32 %229)
  %230 = load i16, ptr %sb_logsectsize266, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %228, i16 %230)
  %cmp268.not = icmp eq i16 %228, %230
  br i1 %cmp268.not, label %if.end263.if.end271_crit_edge, label %if.then270

if.end263.if.end271_crit_edge:                    ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end271

if.then270:                                       ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #9
  %231 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %232) #7
  br label %if.end271

if.end271:                                        ; preds = %if.then270, %if.end263.if.end271_crit_edge
  %sb_logsunit = getelementptr inbounds %struct.xfs_dsb, ptr %16, i32 0, i32 43
  %233 = ptrtoint ptr %sb_logsunit to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %sb_logsunit, align 4
  %sb_logsunit273 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 43
  %235 = ptrtoint ptr %sb_logsunit273 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %sb_logsunit273, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %234, i32 %236)
  %cmp274.not = icmp eq i32 %234, %236
  br i1 %cmp274.not, label %if.end271.if.end277_crit_edge, label %if.then276

if.end271.if.end277_crit_edge:                    ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end277

if.then276:                                       ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #9
  %237 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %238) #7
  br label %if.end277

if.end277:                                        ; preds = %if.then276, %if.end271.if.end277_crit_edge
  %239 = ptrtoint ptr %sb_versionnum94 to i32
  call void @__asan_load2_noabort(i32 %239)
  %240 = load i16, ptr %sb_versionnum94, align 4
  %241 = and i16 %240, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %241)
  %cmp.i.i = icmp eq i16 %241, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %240)
  %tobool.i = icmp slt i16 %240, 0
  %spec.select.i = or i1 %tobool.i, %cmp.i.i
  br i1 %spec.select.i, label %if.else, label %if.then280

if.then280:                                       ; preds = %if.end277
  %sb_features2 = getelementptr inbounds %struct.xfs_dsb, ptr %16, i32 0, i32 44
  %242 = ptrtoint ptr %sb_features2 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %sb_features2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %243)
  %cmp281.not = icmp eq i32 %243, 0
  br i1 %cmp281.not, label %if.then280.if.end299_crit_edge, label %if.then283

if.then280.if.end299_crit_edge:                   ; preds = %if.then280
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end299

if.then283:                                       ; preds = %if.then280
  call void @__sanitizer_cov_trace_pc() #9
  %244 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %245) #7
  br label %if.end299

if.else:                                          ; preds = %if.end277
  %spec.select = select i1 %cmp.i.i, i32 -907, i32 -651
  %sb_features2289 = getelementptr inbounds %struct.xfs_dsb, ptr %16, i32 0, i32 44
  %246 = ptrtoint ptr %sb_features2289 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %sb_features2289, align 8
  %and290 = and i32 %247, %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and290)
  %tobool291.not = icmp eq i32 %and290, 0
  br i1 %tobool291.not, label %if.else.if.end293_crit_edge, label %if.then292

if.else.if.end293_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end293

if.then292:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %248 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %249) #7
  br label %if.end293

if.end293:                                        ; preds = %if.then292, %if.else.if.end293_crit_edge
  %250 = ptrtoint ptr %sb_features2289 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %sb_features2289, align 8
  %sb_bad_features2 = getelementptr inbounds %struct.xfs_dsb, ptr %16, i32 0, i32 45
  %252 = ptrtoint ptr %sb_bad_features2 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %sb_bad_features2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %251, i32 %253)
  %cmp295.not = icmp eq i32 %251, %253
  br i1 %cmp295.not, label %if.end293.if.end299_crit_edge, label %if.then297

if.end293.if.end299_crit_edge:                    ; preds = %if.end293
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end299

if.then297:                                       ; preds = %if.end293
  call void @__sanitizer_cov_trace_pc() #9
  %254 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_preen(ptr noundef %sc, ptr noundef %255) #7
  br label %if.end299

if.end299:                                        ; preds = %if.then297, %if.end293.if.end299_crit_edge, %if.then283, %if.then280.if.end299_crit_edge
  %sb_features2300 = getelementptr inbounds %struct.xfs_dsb, ptr %16, i32 0, i32 44
  %256 = ptrtoint ptr %sb_features2300 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %sb_features2300, align 8
  %sb_features2303 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 44
  %258 = ptrtoint ptr %sb_features2303 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %sb_features2303, align 8
  %260 = xor i32 %259, %257
  %261 = and i32 %260, 898
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %261)
  %cmp305.not = icmp eq i32 %261, 0
  br i1 %cmp305.not, label %if.end299.if.end308_crit_edge, label %if.then307

if.end299.if.end308_crit_edge:                    ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end308

if.then307:                                       ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #9
  %262 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %263) #7
  br label %if.end308

if.end308:                                        ; preds = %if.then307, %if.end299.if.end308_crit_edge
  %264 = ptrtoint ptr %sb_features2300 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %sb_features2300, align 8
  %266 = ptrtoint ptr %sb_features2303 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %sb_features2303, align 8
  %268 = xor i32 %267, %265
  %269 = and i32 %268, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %269)
  %cmp314.not = icmp eq i32 %269, 0
  br i1 %cmp314.not, label %if.end308.if.end317_crit_edge, label %if.then316

if.end308.if.end317_crit_edge:                    ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end317

if.then316:                                       ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #9
  %270 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_preen(ptr noundef %sc, ptr noundef %271) #7
  br label %if.end317

if.end317:                                        ; preds = %if.then316, %if.end308.if.end317_crit_edge
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %272 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %272)
  %273 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %273, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i566.not = icmp eq i64 %and.i, 0
  %sb_features_compat = getelementptr inbounds %struct.xfs_dsb, ptr %16, i32 0, i32 46
  br i1 %tobool.i566.not, label %if.then319, label %if.else324

if.then319:                                       ; preds = %if.end317
  %call320 = call ptr @memchr_inv(ptr noundef %sb_features_compat, i32 noundef 0, i32 noundef 56) #7
  %tobool321.not = icmp eq ptr %call320, null
  br i1 %tobool321.not, label %if.then319.if.end368_crit_edge, label %if.then322

if.then319.if.end368_crit_edge:                   ; preds = %if.then319
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end368

if.then322:                                       ; preds = %if.then319
  call void @__sanitizer_cov_trace_pc() #9
  %274 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %275) #7
  br label %if.end368

if.else324:                                       ; preds = %if.end317
  %276 = ptrtoint ptr %sb_features_compat to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %sb_features_compat, align 8
  %sb_features_compat327 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 46
  %278 = ptrtoint ptr %sb_features_compat327 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %sb_features_compat327, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %277, i32 %279)
  %cmp328.not = icmp eq i32 %277, %279
  br i1 %cmp328.not, label %if.else324.if.end331_crit_edge, label %if.then330

if.else324.if.end331_crit_edge:                   ; preds = %if.else324
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end331

if.then330:                                       ; preds = %if.else324
  call void @__sanitizer_cov_trace_pc() #9
  %280 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %281) #7
  br label %if.end331

if.end331:                                        ; preds = %if.then330, %if.else324.if.end331_crit_edge
  %sb_features_ro_compat = getelementptr inbounds %struct.xfs_dsb, ptr %16, i32 0, i32 47
  %282 = ptrtoint ptr %sb_features_ro_compat to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %sb_features_ro_compat, align 4
  %sb_features_ro_compat333 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 47
  %284 = ptrtoint ptr %sb_features_ro_compat333 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %sb_features_ro_compat333, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %283, i32 %285)
  %cmp334.not = icmp eq i32 %283, %285
  br i1 %cmp334.not, label %if.end331.if.end337_crit_edge, label %if.then336

if.end331.if.end337_crit_edge:                    ; preds = %if.end331
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end337

if.then336:                                       ; preds = %if.end331
  call void @__sanitizer_cov_trace_pc() #9
  %286 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %287) #7
  br label %if.end337

if.end337:                                        ; preds = %if.then336, %if.end331.if.end337_crit_edge
  %sb_features_incompat = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 48
  %288 = ptrtoint ptr %sb_features_incompat to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %sb_features_incompat, align 8
  %sb_features_incompat339 = getelementptr inbounds %struct.xfs_dsb, ptr %16, i32 0, i32 48
  %290 = ptrtoint ptr %sb_features_incompat339 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %sb_features_incompat339, align 8
  %xor = xor i32 %291, %289
  %and340 = and i32 %xor, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and340)
  %tobool341.not = icmp eq i32 %and340, 0
  br i1 %tobool341.not, label %if.end337.if.end343_crit_edge, label %if.then342

if.end337.if.end343_crit_edge:                    ; preds = %if.end337
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end343

if.then342:                                       ; preds = %if.end337
  call void @__sanitizer_cov_trace_pc() #9
  %292 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_preen(ptr noundef %sc, ptr noundef %293) #7
  br label %if.end343

if.end343:                                        ; preds = %if.then342, %if.end337.if.end343_crit_edge
  %294 = ptrtoint ptr %sb_features_incompat to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %sb_features_incompat, align 8
  %296 = ptrtoint ptr %sb_features_incompat339 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %sb_features_incompat339, align 8
  %xor347 = xor i32 %297, %295
  %and349 = and i32 %xor347, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and349)
  %tobool350.not = icmp eq i32 %and349, 0
  br i1 %tobool350.not, label %if.end343.if.end352_crit_edge, label %if.then351

if.end343.if.end352_crit_edge:                    ; preds = %if.end343
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end352

if.then351:                                       ; preds = %if.end343
  call void @__sanitizer_cov_trace_pc() #9
  %298 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %299) #7
  br label %if.end352

if.end352:                                        ; preds = %if.then351, %if.end343.if.end352_crit_edge
  %sb_features_log_incompat = getelementptr inbounds %struct.xfs_dsb, ptr %16, i32 0, i32 49
  %300 = ptrtoint ptr %sb_features_log_incompat to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %sb_features_log_incompat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %301)
  %tobool353.not = icmp eq i32 %301, 0
  br i1 %tobool353.not, label %if.end352.if.end355_crit_edge, label %if.then354

if.end352.if.end355_crit_edge:                    ; preds = %if.end352
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end355

if.then354:                                       ; preds = %if.end352
  call void @__sanitizer_cov_trace_pc() #9
  %302 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_preen(ptr noundef %sc, ptr noundef %303) #7
  br label %if.end355

if.end355:                                        ; preds = %if.then354, %if.end352.if.end355_crit_edge
  %sb_spino_align = getelementptr inbounds %struct.xfs_dsb, ptr %16, i32 0, i32 51
  %304 = ptrtoint ptr %sb_spino_align to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %sb_spino_align, align 4
  %sb_spino_align357 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 51
  %306 = ptrtoint ptr %sb_spino_align357 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %sb_spino_align357, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %305, i32 %307)
  %cmp358.not = icmp eq i32 %305, %307
  br i1 %cmp358.not, label %if.end355.if.end361_crit_edge, label %if.then360

if.end355.if.end361_crit_edge:                    ; preds = %if.end355
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end361

if.then360:                                       ; preds = %if.end355
  call void @__sanitizer_cov_trace_pc() #9
  %308 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %309) #7
  br label %if.end361

if.end361:                                        ; preds = %if.then360, %if.end355.if.end361_crit_edge
  %sb_pquotino = getelementptr inbounds %struct.xfs_dsb, ptr %16, i32 0, i32 52
  %310 = ptrtoint ptr %sb_pquotino to i32
  call void @__asan_load8_noabort(i32 %310)
  %311 = load i64, ptr %sb_pquotino, align 8
  %sb_pquotino363 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 52
  %312 = ptrtoint ptr %sb_pquotino363 to i32
  call void @__asan_load8_noabort(i32 %312)
  %313 = load i64, ptr %sb_pquotino363, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %311, i64 %313)
  %cmp364.not = icmp eq i64 %311, %313
  br i1 %cmp364.not, label %if.end361.if.end368_crit_edge, label %if.then366

if.end361.if.end368_crit_edge:                    ; preds = %if.end361
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end368

if.then366:                                       ; preds = %if.end361
  call void @__sanitizer_cov_trace_pc() #9
  %314 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_preen(ptr noundef %sc, ptr noundef %315) #7
  br label %if.end368

if.end368:                                        ; preds = %if.then366, %if.end361.if.end368_crit_edge, %if.then322, %if.then319.if.end368_crit_edge
  %316 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %316)
  %317 = load i64, ptr %m_features.i, align 8
  %and.i568 = and i64 %317, 2097152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i568)
  %tobool.i569.not = icmp eq i64 %and.i568, 0
  br i1 %tobool.i569.not, label %if.end368.if.end376_crit_edge, label %if.then370

if.end368.if.end376_crit_edge:                    ; preds = %if.end368
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end376

if.then370:                                       ; preds = %if.end368
  %sb_meta_uuid = getelementptr inbounds %struct.xfs_dsb, ptr %16, i32 0, i32 54
  %sb_meta_uuid372 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 54
  %bcmp.i570 = call i32 @bcmp(ptr noundef dereferenceable(16) %sb_meta_uuid, ptr noundef dereferenceable(16) %sb_meta_uuid372, i32 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i570)
  %cmp.i571 = icmp eq i32 %bcmp.i570, 0
  br i1 %cmp.i571, label %if.then370.if.end376_crit_edge, label %if.then374

if.then370.if.end376_crit_edge:                   ; preds = %if.then370
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end376

if.then374:                                       ; preds = %if.then370
  call void @__sanitizer_cov_trace_pc() #9
  %318 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %319) #7
  br label %if.end376

if.end376:                                        ; preds = %if.then374, %if.then370.if.end376_crit_edge, %if.end368.if.end376_crit_edge
  %add.ptr = getelementptr %struct.xfs_dsb, ptr %16, i32 1
  %320 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %bp, align 4
  %b_length = getelementptr inbounds %struct.xfs_buf, ptr %321, i32 0, i32 2
  %322 = ptrtoint ptr %b_length to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %b_length, align 8
  %shl = shl i32 %323, 9
  %sub = add i32 %shl, -264
  %call377 = call ptr @memchr_inv(ptr noundef %add.ptr, i32 noundef 0, i32 noundef %sub) #7
  %tobool378.not = icmp eq ptr %call377, null
  br i1 %tobool378.not, label %if.end376.if.end380_crit_edge, label %if.then379

if.end376.if.end380_crit_edge:                    ; preds = %if.end376
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end380

if.then379:                                       ; preds = %if.end376
  call void @__sanitizer_cov_trace_pc() #9
  %324 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %325) #7
  br label %if.end380

if.end380:                                        ; preds = %if.then379, %if.end376.if.end380_crit_edge
  call fastcc void @xchk_superblock_xref(ptr noundef %sc)
  br label %out_pag

out_pag:                                          ; preds = %if.end380, %sw.epilog.out_pag_crit_edge
  call void @xfs_perag_put(ptr noundef nonnull %call) #7
  %326 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %error, align 4
  br label %cleanup

cleanup:                                          ; preds = %out_pag, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %327, %out_pag ], [ 0, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_perag_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_sb_read_secondary(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xchk_process_error(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_block_set_corrupt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_block_set_preen(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xchk_superblock_xref(ptr noundef %sc) unnamed_addr #3 align 64 {
entry:
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %0 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sm, align 4
  %sm_agno = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %sm_agno to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sm_agno, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #7
  %sm_flags = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %sm_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sm_flags, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %sa = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10
  %call.i = tail call i32 @xchk_ag_init(ptr noundef %sc, i32 noundef %3, ptr noundef %sa) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -2
  %spec.select.i = select i1 %cmp.i, i32 -117, i32 %call.i
  %6 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %spec.select.i, ptr %error, align 4
  %call4 = call zeroext i1 @xchk_xref_process_error(ptr noundef %sc, i32 noundef %3, i32 noundef 0, ptr noundef nonnull %error) #7
  br i1 %call4, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @xchk_xref_is_used_space(ptr noundef %sc, i32 noundef 0, i32 noundef 1) #7
  call void @xchk_xref_is_not_inode_chunk(ptr noundef %sc, i32 noundef 0, i32 noundef 1) #7
  call void @xchk_xref_is_owned_by(ptr noundef %sc, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @XFS_RMAP_OINFO_FS) #7
  call void @xchk_xref_is_not_shared(ptr noundef %sc, i32 noundef 0, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_perag_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xchk_agf(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc, align 4
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %2 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sm, align 4
  %sm_agno = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %sm_agno to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sm_agno, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #7
  %sa = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10
  %call = tail call i32 @xchk_ag_read_headers(ptr noundef %sc, i32 noundef %5, ptr noundef %sa) #7
  %6 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call, ptr %error, align 4
  %7 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sc, align 4
  %m_sectbb_log = getelementptr inbounds %struct.xfs_mount, ptr %8, i32 0, i32 30
  %9 = ptrtoint ptr %m_sectbb_log to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %m_sectbb_log, align 1
  %conv = zext i8 %10 to i32
  %shl = shl nuw i32 1, %conv
  %conv3 = sext i32 %shl to i64
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %8, i32 0, i32 28
  %11 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom = zext i8 %12 to i64
  %shr = ashr i64 %conv3, %sh_prom
  %conv6 = trunc i64 %shr to i32
  %call7 = call zeroext i1 @xchk_process_error(ptr noundef %sc, i32 noundef %5, i32 noundef %conv6, ptr noundef nonnull %error) #7
  br i1 %call7, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %agf_bp = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 1
  %13 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %agf_bp, align 4
  call void @xchk_buffer_recheck(ptr noundef %sc, ptr noundef %14) #7
  %15 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %agf_bp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %16, i32 0, i32 16
  %17 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %b_addr, align 4
  %19 = ptrtoint ptr %sa to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sa, align 4
  %agf_length = getelementptr inbounds %struct.xfs_agf, ptr %18, i32 0, i32 3
  %21 = ptrtoint ptr %agf_length to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %agf_length, align 4
  %call13 = call i32 @xfs_ag_block_count(ptr noundef %1, i32 noundef %5) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %call13)
  %cmp.not = icmp eq i32 %22, %call13
  br i1 %cmp.not, label %if.end.if.end18_crit_edge, label %if.then15

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %agf_bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %24) #7
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end.if.end18_crit_edge
  %agf_roots = getelementptr inbounds %struct.xfs_agf, ptr %18, i32 0, i32 4
  %25 = ptrtoint ptr %agf_roots to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %agf_roots, align 8
  %call19 = call zeroext i1 @xfs_verify_agbno(ptr noundef %1, i32 noundef %5, i32 noundef %26) #7
  br i1 %call19, label %if.end18.if.end23_crit_edge, label %if.then20

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %agf_bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %28) #7
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end18.if.end23_crit_edge
  %arrayidx25 = getelementptr %struct.xfs_agf, ptr %18, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx25, align 4
  %call26 = call zeroext i1 @xfs_verify_agbno(ptr noundef %1, i32 noundef %5, i32 noundef %30) #7
  br i1 %call26, label %if.end23.if.end30_crit_edge, label %if.then27

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %agf_bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %32) #7
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end23.if.end30_crit_edge
  %agf_levels = getelementptr inbounds %struct.xfs_agf, ptr %18, i32 0, i32 5
  %33 = ptrtoint ptr %agf_levels to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %agf_levels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp32 = icmp slt i32 %34, 1
  br i1 %cmp32, label %if.end30.if.then36_crit_edge, label %lor.lhs.false

if.end30.if.then36_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then36

lor.lhs.false:                                    ; preds = %if.end30
  %m_alloc_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 42
  %35 = ptrtoint ptr %m_alloc_maxlevels to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %m_alloc_maxlevels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp34 = icmp ugt i32 %34, %36
  br i1 %cmp34, label %lor.lhs.false.if.then36_crit_edge, label %lor.lhs.false.if.end39_crit_edge

lor.lhs.false.if.end39_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

lor.lhs.false.if.then36_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then36

if.then36:                                        ; preds = %lor.lhs.false.if.then36_crit_edge, %if.end30.if.then36_crit_edge
  %37 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %agf_bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %38) #7
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %lor.lhs.false.if.end39_crit_edge
  %arrayidx41 = getelementptr %struct.xfs_agf, ptr %18, i32 0, i32 5, i32 1
  %39 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp42 = icmp slt i32 %40, 1
  br i1 %cmp42, label %if.end39.if.then48_crit_edge, label %lor.lhs.false44

if.end39.if.then48_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then48

lor.lhs.false44:                                  ; preds = %if.end39
  %m_alloc_maxlevels45 = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 42
  %41 = ptrtoint ptr %m_alloc_maxlevels45 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %m_alloc_maxlevels45, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42)
  %cmp46 = icmp ugt i32 %40, %42
  br i1 %cmp46, label %lor.lhs.false44.if.then48_crit_edge, label %lor.lhs.false44.if.end51_crit_edge

lor.lhs.false44.if.end51_crit_edge:               ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

lor.lhs.false44.if.then48_crit_edge:              ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then48

if.then48:                                        ; preds = %lor.lhs.false44.if.then48_crit_edge, %if.end39.if.then48_crit_edge
  %43 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %agf_bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %44) #7
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %lor.lhs.false44.if.end51_crit_edge
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %45 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %46, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end51.if.end72_crit_edge, label %if.then53

if.end51.if.end72_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.then53:                                        ; preds = %if.end51
  %arrayidx55 = getelementptr %struct.xfs_agf, ptr %18, i32 0, i32 4, i32 2
  %47 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx55, align 8
  %call56 = call zeroext i1 @xfs_verify_agbno(ptr noundef %1, i32 noundef %5, i32 noundef %48) #7
  br i1 %call56, label %if.then53.if.end60_crit_edge, label %if.then57

if.then53.if.end60_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.then57:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %agf_bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %50) #7
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %if.then53.if.end60_crit_edge
  %arrayidx62 = getelementptr %struct.xfs_agf, ptr %18, i32 0, i32 5, i32 2
  %51 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp63 = icmp slt i32 %52, 1
  br i1 %cmp63, label %if.end60.if.then68_crit_edge, label %lor.lhs.false65

if.end60.if.then68_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then68

lor.lhs.false65:                                  ; preds = %if.end60
  %m_rmap_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 44
  %53 = ptrtoint ptr %m_rmap_maxlevels to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %m_rmap_maxlevels, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %54)
  %cmp66 = icmp ugt i32 %52, %54
  br i1 %cmp66, label %lor.lhs.false65.if.then68_crit_edge, label %lor.lhs.false65.if.end72_crit_edge

lor.lhs.false65.if.end72_crit_edge:               ; preds = %lor.lhs.false65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

lor.lhs.false65.if.then68_crit_edge:              ; preds = %lor.lhs.false65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then68

if.then68:                                        ; preds = %lor.lhs.false65.if.then68_crit_edge, %if.end60.if.then68_crit_edge
  %55 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %agf_bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %56) #7
  br label %if.end72

if.end72:                                         ; preds = %if.then68, %lor.lhs.false65.if.end72_crit_edge, %if.end51.if.end72_crit_edge
  %57 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %m_features.i, align 8
  %and.i223 = and i64 %58, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i223)
  %tobool.i224.not = icmp eq i64 %and.i223, 0
  br i1 %tobool.i224.not, label %if.end72.if.end89_crit_edge, label %if.then74

if.end72.if.end89_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

if.then74:                                        ; preds = %if.end72
  %agf_refcount_root = getelementptr inbounds %struct.xfs_agf, ptr %18, i32 0, i32 15
  %59 = ptrtoint ptr %agf_refcount_root to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %agf_refcount_root, align 8
  %call75 = call zeroext i1 @xfs_verify_agbno(ptr noundef %1, i32 noundef %5, i32 noundef %60) #7
  br i1 %call75, label %if.then74.if.end79_crit_edge, label %if.then76

if.then74.if.end79_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79

if.then76:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %agf_bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %62) #7
  br label %if.end79

if.end79:                                         ; preds = %if.then76, %if.then74.if.end79_crit_edge
  %agf_refcount_level = getelementptr inbounds %struct.xfs_agf, ptr %18, i32 0, i32 16
  %63 = ptrtoint ptr %agf_refcount_level to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %agf_refcount_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %64)
  %cmp80 = icmp slt i32 %64, 1
  br i1 %cmp80, label %if.end79.if.then85_crit_edge, label %lor.lhs.false82

if.end79.if.then85_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then85

lor.lhs.false82:                                  ; preds = %if.end79
  %m_refc_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 45
  %65 = ptrtoint ptr %m_refc_maxlevels to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %m_refc_maxlevels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %66)
  %cmp83 = icmp ugt i32 %64, %66
  br i1 %cmp83, label %lor.lhs.false82.if.then85_crit_edge, label %lor.lhs.false82.if.end89_crit_edge

lor.lhs.false82.if.end89_crit_edge:               ; preds = %lor.lhs.false82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

lor.lhs.false82.if.then85_crit_edge:              ; preds = %lor.lhs.false82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then85

if.then85:                                        ; preds = %lor.lhs.false82.if.then85_crit_edge, %if.end79.if.then85_crit_edge
  %67 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %agf_bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %68) #7
  br label %if.end89

if.end89:                                         ; preds = %if.then85, %lor.lhs.false82.if.end89_crit_edge, %if.end72.if.end89_crit_edge
  %agf_flfirst = getelementptr inbounds %struct.xfs_agf, ptr %18, i32 0, i32 6
  %69 = ptrtoint ptr %agf_flfirst to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %agf_flfirst, align 8
  %agf_fllast = getelementptr inbounds %struct.xfs_agf, ptr %18, i32 0, i32 7
  %71 = ptrtoint ptr %agf_fllast to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %agf_fllast, align 4
  %agf_flcount = getelementptr inbounds %struct.xfs_agf, ptr %18, i32 0, i32 8
  %73 = ptrtoint ptr %agf_flcount to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %agf_flcount, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %70)
  %cmp90 = icmp ugt i32 %72, %70
  br i1 %cmp90, label %if.then92, label %if.else

if.then92:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  %sub = sub i32 %72, %70
  br label %if.end97

if.else:                                          ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  %call93 = call i32 @xfs_agfl_size(ptr noundef %1) #7
  %sub94 = sub i32 %72, %70
  %add95 = add i32 %sub94, %call93
  br label %if.end97

if.end97:                                         ; preds = %if.else, %if.then92
  %fl_count.0.in = phi i32 [ %sub, %if.then92 ], [ %add95, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp98.not = icmp eq i32 %74, 0
  %fl_count.0 = add i32 %fl_count.0.in, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %fl_count.0, i32 %74)
  %cmp100.not = icmp eq i32 %fl_count.0, %74
  %or.cond = select i1 %cmp98.not, i1 true, i1 %cmp100.not
  br i1 %or.cond, label %if.end97.if.end105_crit_edge, label %if.then102

if.end97.if.end105_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end105

if.then102:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  %75 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %agf_bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %76) #7
  br label %if.end105

if.end105:                                        ; preds = %if.then102, %if.end97.if.end105_crit_edge
  %pagf_freeblks = getelementptr inbounds %struct.xfs_perag, ptr %20, i32 0, i32 10
  %77 = ptrtoint ptr %pagf_freeblks to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %pagf_freeblks, align 4
  %agf_freeblks = getelementptr inbounds %struct.xfs_agf, ptr %18, i32 0, i32 9
  %79 = ptrtoint ptr %agf_freeblks to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %agf_freeblks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %80)
  %cmp106.not = icmp eq i32 %78, %80
  br i1 %cmp106.not, label %if.end105.if.end111_crit_edge, label %if.then108

if.end105.if.end111_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end111

if.then108:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  %81 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %agf_bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %82) #7
  br label %if.end111

if.end111:                                        ; preds = %if.then108, %if.end105.if.end111_crit_edge
  %pagf_flcount = getelementptr inbounds %struct.xfs_perag, ptr %20, i32 0, i32 9
  %83 = ptrtoint ptr %pagf_flcount to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %pagf_flcount, align 4
  %85 = ptrtoint ptr %agf_flcount to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %agf_flcount, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %86)
  %cmp113.not = icmp eq i32 %84, %86
  br i1 %cmp113.not, label %if.end111.if.end118_crit_edge, label %if.then115

if.end111.if.end118_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118

if.then115:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  %87 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %agf_bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %88) #7
  br label %if.end118

if.end118:                                        ; preds = %if.then115, %if.end111.if.end118_crit_edge
  %89 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %sc, align 4
  %m_features.i225 = getelementptr inbounds %struct.xfs_mount, ptr %90, i32 0, i32 61
  %91 = ptrtoint ptr %m_features.i225 to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %m_features.i225, align 8
  %and.i226 = and i64 %92, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i226)
  %tobool.i227.not = icmp eq i64 %and.i226, 0
  br i1 %tobool.i227.not, label %if.end118.if.end128_crit_edge, label %land.lhs.true122

if.end118.if.end128_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end128

land.lhs.true122:                                 ; preds = %if.end118
  %pagf_btreeblks = getelementptr inbounds %struct.xfs_perag, ptr %20, i32 0, i32 12
  %93 = ptrtoint ptr %pagf_btreeblks to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %pagf_btreeblks, align 4
  %agf_btreeblks = getelementptr inbounds %struct.xfs_agf, ptr %18, i32 0, i32 11
  %95 = ptrtoint ptr %agf_btreeblks to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %agf_btreeblks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %96)
  %cmp123.not = icmp eq i32 %94, %96
  br i1 %cmp123.not, label %land.lhs.true122.if.end128_crit_edge, label %if.then125

land.lhs.true122.if.end128_crit_edge:             ; preds = %land.lhs.true122
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end128

if.then125:                                       ; preds = %land.lhs.true122
  call void @__sanitizer_cov_trace_pc() #9
  %97 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %agf_bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %98) #7
  br label %if.end128

if.end128:                                        ; preds = %if.then125, %land.lhs.true122.if.end128_crit_edge, %if.end118.if.end128_crit_edge
  call fastcc void @xchk_agf_xref(ptr noundef %sc)
  br label %out

out:                                              ; preds = %if.end128, %entry.out_crit_edge
  %99 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %error, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #7
  ret i32 %100
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_ag_read_headers(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_buffer_recheck(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_ag_block_count(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_verify_agbno(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_agfl_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xchk_agf_xref(ptr noundef %sc) unnamed_addr #3 align 64 {
entry:
  %blocks.i32 = alloca i32, align 4
  %error.i33 = alloca i32, align 4
  %agbno.i = alloca i32, align 4
  %blocks.i21 = alloca i32, align 4
  %have.i = alloca i32, align 4
  %error.i22 = alloca i32, align 4
  %blocks.i = alloca i32, align 4
  %error.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %0 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sm, align 4
  %sm_flags = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sm_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sm_flags, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sc, align 4
  %m_sectbb_log = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 30
  %6 = ptrtoint ptr %m_sectbb_log to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %m_sectbb_log, align 1
  %conv = zext i8 %7 to i32
  %shl = shl nuw i32 1, %conv
  %conv2 = sext i32 %shl to i64
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 28
  %8 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom = zext i8 %9 to i64
  %shr = ashr i64 %conv2, %sh_prom
  %conv4 = trunc i64 %shr to i32
  %sa = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10
  tail call void @xchk_ag_btcur_init(ptr noundef %sc, ptr noundef %sa) #7
  tail call void @xchk_xref_is_used_space(ptr noundef %sc, i32 noundef %conv4, i32 noundef 1) #7
  %agf_bp.i = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 1
  %10 = ptrtoint ptr %agf_bp.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %agf_bp.i, align 4
  %b_addr.i = getelementptr inbounds %struct.xfs_buf, ptr %11, i32 0, i32 16
  %12 = ptrtoint ptr %b_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %blocks.i) #7
  %14 = ptrtoint ptr %blocks.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %blocks.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error.i) #7
  %bno_cur.i = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 4
  %15 = ptrtoint ptr %bno_cur.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bno_cur.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.xchk_agf_xref_freeblks.exit_crit_edge, label %if.end.i

if.end.xchk_agf_xref_freeblks.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %xchk_agf_xref_freeblks.exit

if.end.i:                                         ; preds = %if.end
  %call.i = call i32 @xfs_alloc_query_all(ptr noundef nonnull %16, ptr noundef nonnull @xchk_agf_record_bno_lengths, ptr noundef nonnull %blocks.i) #7
  %17 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call.i, ptr %error.i, align 4
  %call6.i = call zeroext i1 @xchk_should_check_xref(ptr noundef %sc, ptr noundef nonnull %error.i, ptr noundef %bno_cur.i) #7
  br i1 %call6.i, label %if.end8.i, label %if.end.i.xchk_agf_xref_freeblks.exit_crit_edge

if.end.i.xchk_agf_xref_freeblks.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xchk_agf_xref_freeblks.exit

if.end8.i:                                        ; preds = %if.end.i
  %18 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %blocks.i, align 4
  %agf_freeblks.i = getelementptr inbounds %struct.xfs_agf, ptr %13, i32 0, i32 9
  %20 = ptrtoint ptr %agf_freeblks.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %agf_freeblks.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp.not.i = icmp eq i32 %19, %21
  br i1 %cmp.not.i, label %if.end8.i.xchk_agf_xref_freeblks.exit_crit_edge, label %if.then9.i

if.end8.i.xchk_agf_xref_freeblks.exit_crit_edge:  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xchk_agf_xref_freeblks.exit

if.then9.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %agf_bp.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %agf_bp.i, align 4
  call void @xchk_block_xref_set_corrupt(ptr noundef %sc, ptr noundef %23) #7
  br label %xchk_agf_xref_freeblks.exit

xchk_agf_xref_freeblks.exit:                      ; preds = %if.then9.i, %if.end8.i.xchk_agf_xref_freeblks.exit_crit_edge, %if.end.i.xchk_agf_xref_freeblks.exit_crit_edge, %if.end.xchk_agf_xref_freeblks.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %blocks.i) #7
  %24 = ptrtoint ptr %agf_bp.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %agf_bp.i, align 4
  %b_addr.i24 = getelementptr inbounds %struct.xfs_buf, ptr %25, i32 0, i32 16
  %26 = ptrtoint ptr %b_addr.i24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %b_addr.i24, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agbno.i) #7
  %28 = ptrtoint ptr %agbno.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %agbno.i, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %blocks.i21) #7
  %29 = ptrtoint ptr %blocks.i21 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %blocks.i21, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %have.i) #7
  %30 = ptrtoint ptr %have.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %have.i, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error.i22) #7
  %cnt_cur.i = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 5
  %31 = ptrtoint ptr %cnt_cur.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cnt_cur.i, align 4
  %tobool.not.i25 = icmp eq ptr %32, null
  br i1 %tobool.not.i25, label %xchk_agf_xref_freeblks.exit.xchk_agf_xref_cntbt.exit_crit_edge, label %if.end.i28

xchk_agf_xref_freeblks.exit.xchk_agf_xref_cntbt.exit_crit_edge: ; preds = %xchk_agf_xref_freeblks.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %xchk_agf_xref_cntbt.exit

if.end.i28:                                       ; preds = %xchk_agf_xref_freeblks.exit
  %call.i26 = call i32 @xfs_alloc_lookup_le(ptr noundef nonnull %32, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %have.i) #7
  %33 = ptrtoint ptr %error.i22 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call.i26, ptr %error.i22, align 4
  %call6.i27 = call zeroext i1 @xchk_should_check_xref(ptr noundef %sc, ptr noundef nonnull %error.i22, ptr noundef %cnt_cur.i) #7
  br i1 %call6.i27, label %if.end8.i29, label %if.end.i28.xchk_agf_xref_cntbt.exit_crit_edge

if.end.i28.xchk_agf_xref_cntbt.exit_crit_edge:    ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #9
  br label %xchk_agf_xref_cntbt.exit

if.end8.i29:                                      ; preds = %if.end.i28
  %34 = ptrtoint ptr %have.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %have.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool9.not.i = icmp eq i32 %35, 0
  br i1 %tobool9.not.i, label %if.then10.i, label %if.end15.i

if.then10.i:                                      ; preds = %if.end8.i29
  %agf_freeblks.i30 = getelementptr inbounds %struct.xfs_agf, ptr %27, i32 0, i32 9
  %36 = ptrtoint ptr %agf_freeblks.i30 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %agf_freeblks.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.not.i31 = icmp eq i32 %37, 0
  br i1 %cmp.not.i31, label %if.then10.i.xchk_agf_xref_cntbt.exit_crit_edge, label %if.then10.i.cleanup.sink.split.i_crit_edge

if.then10.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.then10.i.xchk_agf_xref_cntbt.exit_crit_edge:   ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xchk_agf_xref_cntbt.exit

if.end15.i:                                       ; preds = %if.end8.i29
  %38 = ptrtoint ptr %cnt_cur.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cnt_cur.i, align 4
  %call18.i = call i32 @xfs_alloc_get_rec(ptr noundef %39, ptr noundef nonnull %agbno.i, ptr noundef nonnull %blocks.i21, ptr noundef nonnull %have.i) #7
  %40 = ptrtoint ptr %error.i22 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call18.i, ptr %error.i22, align 4
  %call21.i = call zeroext i1 @xchk_should_check_xref(ptr noundef %sc, ptr noundef nonnull %error.i22, ptr noundef %cnt_cur.i) #7
  br i1 %call21.i, label %if.end23.i, label %if.end15.i.xchk_agf_xref_cntbt.exit_crit_edge

if.end15.i.xchk_agf_xref_cntbt.exit_crit_edge:    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xchk_agf_xref_cntbt.exit

if.end23.i:                                       ; preds = %if.end15.i
  %41 = ptrtoint ptr %have.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %have.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool24.not.i = icmp eq i32 %42, 0
  br i1 %tobool24.not.i, label %if.end23.i.cleanup.sink.split.i_crit_edge, label %lor.lhs.false.i

if.end23.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

lor.lhs.false.i:                                  ; preds = %if.end23.i
  %43 = ptrtoint ptr %blocks.i21 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %blocks.i21, align 4
  %agf_longest.i = getelementptr inbounds %struct.xfs_agf, ptr %27, i32 0, i32 10
  %45 = ptrtoint ptr %agf_longest.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %agf_longest.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp25.not.i = icmp eq i32 %44, %46
  br i1 %cmp25.not.i, label %lor.lhs.false.i.xchk_agf_xref_cntbt.exit_crit_edge, label %lor.lhs.false.i.cleanup.sink.split.i_crit_edge

lor.lhs.false.i.cleanup.sink.split.i_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

lor.lhs.false.i.xchk_agf_xref_cntbt.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xchk_agf_xref_cntbt.exit

cleanup.sink.split.i:                             ; preds = %lor.lhs.false.i.cleanup.sink.split.i_crit_edge, %if.end23.i.cleanup.sink.split.i_crit_edge, %if.then10.i.cleanup.sink.split.i_crit_edge
  %47 = ptrtoint ptr %agf_bp.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %agf_bp.i, align 4
  call void @xchk_block_xref_set_corrupt(ptr noundef %sc, ptr noundef %48) #7
  br label %xchk_agf_xref_cntbt.exit

xchk_agf_xref_cntbt.exit:                         ; preds = %cleanup.sink.split.i, %lor.lhs.false.i.xchk_agf_xref_cntbt.exit_crit_edge, %if.end15.i.xchk_agf_xref_cntbt.exit_crit_edge, %if.then10.i.xchk_agf_xref_cntbt.exit_crit_edge, %if.end.i28.xchk_agf_xref_cntbt.exit_crit_edge, %xchk_agf_xref_freeblks.exit.xchk_agf_xref_cntbt.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error.i22) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %have.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %blocks.i21) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agbno.i) #7
  call void @xchk_xref_is_not_inode_chunk(ptr noundef %sc, i32 noundef %conv4, i32 noundef 1) #7
  call void @xchk_xref_is_owned_by(ptr noundef %sc, i32 noundef %conv4, i32 noundef 1, ptr noundef nonnull @XFS_RMAP_OINFO_FS) #7
  call fastcc void @xchk_agf_xref_btreeblks(ptr noundef %sc)
  call void @xchk_xref_is_not_shared(ptr noundef %sc, i32 noundef %conv4, i32 noundef 1) #7
  %49 = ptrtoint ptr %agf_bp.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %agf_bp.i, align 4
  %b_addr.i35 = getelementptr inbounds %struct.xfs_buf, ptr %50, i32 0, i32 16
  %51 = ptrtoint ptr %b_addr.i35 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %b_addr.i35, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %blocks.i32) #7
  %53 = ptrtoint ptr %blocks.i32 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %blocks.i32, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error.i33) #7
  %refc_cur.i = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 9
  %54 = ptrtoint ptr %refc_cur.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %refc_cur.i, align 4
  %tobool.not.i36 = icmp eq ptr %55, null
  br i1 %tobool.not.i36, label %xchk_agf_xref_cntbt.exit.xchk_agf_xref_refcblks.exit_crit_edge, label %if.end.i39

xchk_agf_xref_cntbt.exit.xchk_agf_xref_refcblks.exit_crit_edge: ; preds = %xchk_agf_xref_cntbt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %xchk_agf_xref_refcblks.exit

if.end.i39:                                       ; preds = %xchk_agf_xref_cntbt.exit
  %call.i37 = call i32 @xfs_btree_count_blocks(ptr noundef nonnull %55, ptr noundef nonnull %blocks.i32) #7
  %56 = ptrtoint ptr %error.i33 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call.i37, ptr %error.i33, align 4
  %call6.i38 = call zeroext i1 @xchk_should_check_xref(ptr noundef %sc, ptr noundef nonnull %error.i33, ptr noundef %refc_cur.i) #7
  br i1 %call6.i38, label %if.end8.i41, label %if.end.i39.xchk_agf_xref_refcblks.exit_crit_edge

if.end.i39.xchk_agf_xref_refcblks.exit_crit_edge: ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #9
  br label %xchk_agf_xref_refcblks.exit

if.end8.i41:                                      ; preds = %if.end.i39
  %57 = ptrtoint ptr %blocks.i32 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %blocks.i32, align 4
  %agf_refcount_blocks.i = getelementptr inbounds %struct.xfs_agf, ptr %52, i32 0, i32 14
  %59 = ptrtoint ptr %agf_refcount_blocks.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %agf_refcount_blocks.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp.not.i40 = icmp eq i32 %58, %60
  br i1 %cmp.not.i40, label %if.end8.i41.xchk_agf_xref_refcblks.exit_crit_edge, label %if.then9.i42

if.end8.i41.xchk_agf_xref_refcblks.exit_crit_edge: ; preds = %if.end8.i41
  call void @__sanitizer_cov_trace_pc() #9
  br label %xchk_agf_xref_refcblks.exit

if.then9.i42:                                     ; preds = %if.end8.i41
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %agf_bp.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %agf_bp.i, align 4
  call void @xchk_block_xref_set_corrupt(ptr noundef %sc, ptr noundef %62) #7
  br label %xchk_agf_xref_refcblks.exit

xchk_agf_xref_refcblks.exit:                      ; preds = %if.then9.i42, %if.end8.i41.xchk_agf_xref_refcblks.exit_crit_edge, %if.end.i39.xchk_agf_xref_refcblks.exit_crit_edge, %xchk_agf_xref_cntbt.exit.xchk_agf_xref_refcblks.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error.i33) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %blocks.i32) #7
  br label %cleanup

cleanup:                                          ; preds = %xchk_agf_xref_refcblks.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xchk_agfl(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  %sai = alloca %struct.xchk_agfl_info, align 4
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sai) #7
  %0 = getelementptr inbounds %struct.xchk_agfl_info, ptr %sai, i32 0, i32 1
  %1 = getelementptr inbounds %struct.xchk_agfl_info, ptr %sai, i32 0, i32 2
  %2 = getelementptr inbounds %struct.xchk_agfl_info, ptr %sai, i32 0, i32 3
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %3 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sm, align 4
  %sm_agno = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %sm_agno to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sm_agno, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #7
  %sa = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10
  %call = tail call i32 @xchk_ag_read_headers(ptr noundef %sc, i32 noundef %6, ptr noundef %sa) #7
  %7 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call, ptr %error, align 4
  %8 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sc, align 4
  %m_sectbb_log = getelementptr inbounds %struct.xfs_mount, ptr %9, i32 0, i32 30
  %10 = ptrtoint ptr %m_sectbb_log to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %m_sectbb_log, align 1
  %conv = zext i8 %11 to i32
  %shl = shl i32 3, %conv
  %conv1 = sext i32 %shl to i64
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %9, i32 0, i32 28
  %12 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom = zext i8 %13 to i64
  %shr = ashr i64 %conv1, %sh_prom
  %conv4 = trunc i64 %shr to i32
  %call5 = call zeroext i1 @xchk_process_error(ptr noundef %sc, i32 noundef %6, i32 noundef %conv4, ptr noundef nonnull %error) #7
  br i1 %call5, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %agf_bp = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %agf_bp, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %agfl_bp = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 2
  %16 = ptrtoint ptr %agfl_bp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %agfl_bp, align 4
  call void @xchk_buffer_recheck(ptr noundef %sc, ptr noundef %17) #7
  call fastcc void @xchk_agfl_xref(ptr noundef %sc)
  %18 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sm, align 4
  %sm_flags = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %sm_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sm_flags, align 4
  %and = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end13, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end13:                                         ; preds = %if.end8
  %22 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %agf_bp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %23, i32 0, i32 16
  %24 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %b_addr, align 4
  %agf_flcount = getelementptr inbounds %struct.xfs_agf, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %agf_flcount to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %agf_flcount, align 8
  %28 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sc, align 4
  %call17 = call i32 @xfs_agfl_size(ptr noundef %29) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %call17)
  %cmp = icmp ugt i32 %27, %call17
  br i1 %cmp, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %agf_bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %31) #7
  br label %out

if.end22:                                         ; preds = %if.end13
  %32 = getelementptr inbounds i8, ptr %sai, i32 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %32, align 4
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %sc, ptr %2, align 4
  %35 = ptrtoint ptr %sai to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %27, ptr %sai, align 4
  %mul = shl i32 %27, 2
  %call.i = call ptr @kmem_alloc(i32 noundef %mul, i32 noundef 24) #7
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %1, align 4
  %tobool26.not = icmp eq ptr %call.i, null
  br i1 %tobool26.not, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -12, ptr %error, align 4
  br label %out

if.end28:                                         ; preds = %if.end22
  %38 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sc, align 4
  %40 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %agf_bp, align 4
  %b_addr32 = getelementptr inbounds %struct.xfs_buf, ptr %41, i32 0, i32 16
  %42 = ptrtoint ptr %b_addr32 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %b_addr32, align 4
  %44 = ptrtoint ptr %agfl_bp to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %agfl_bp, align 4
  %call35 = call i32 @xfs_agfl_walk(ptr noundef %39, ptr noundef %43, ptr noundef %45, ptr noundef nonnull @xchk_agfl_block, ptr noundef nonnull %sai) #7
  %46 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call35, ptr %error, align 4
  %47 = zext i32 %call35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %call35, label %if.end28.out_free_crit_edge [
    i32 -125, label %if.then38
    i32 0, label %if.end42
  ]

if.end28.out_free_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free

if.then38:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %error, align 4
  br label %out_free

if.end42:                                         ; preds = %if.end28
  %49 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %50)
  %cmp43.not = icmp eq i32 %27, %50
  br i1 %cmp43.not, label %if.end48, label %if.then45

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %agf_bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %52) #7
  br label %out_free

if.end48:                                         ; preds = %if.end42
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 4
  call void @sort(ptr noundef %54, i32 noundef %27, i32 noundef 4, ptr noundef nonnull @xchk_agblock_cmp, ptr noundef null) #7
  %55 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp5299 = icmp ugt i32 %56, 1
  br i1 %cmp5299, label %for.body.lr.ph, label %if.end48.out_free_crit_edge

if.end48.out_free_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free

for.body.lr.ph:                                   ; preds = %if.end48
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.0100, 1
  %exitcond.not = icmp eq i32 %inc, %56
  br i1 %exitcond.not, label %for.cond.out_free_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.out_free_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0100 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %58, i32 %i.0100
  %59 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx, align 4
  %sub = add i32 %i.0100, -1
  %arrayidx56 = getelementptr i32, ptr %58, i32 %sub
  %61 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx56, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp57 = icmp eq i32 %60, %62
  br i1 %cmp57, label %if.then59, label %for.cond

if.then59:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %agf_bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %64) #7
  br label %out_free

out_free:                                         ; preds = %if.then59, %for.cond.out_free_crit_edge, %if.end48.out_free_crit_edge, %if.then45, %if.then38, %if.end28.out_free_crit_edge
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 4
  call void @kvfree(ptr noundef %66) #7
  br label %out

out:                                              ; preds = %out_free, %if.then27, %if.then19, %if.end8.out_crit_edge, %entry.out_crit_edge
  %67 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %error, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %68, %out ], [ -117, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sai) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xchk_agfl_xref(ptr noundef %sc) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %0 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sm, align 4
  %sm_flags = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sm_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sm_flags, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sc, align 4
  %m_sectbb_log = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 30
  %6 = ptrtoint ptr %m_sectbb_log to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %m_sectbb_log, align 1
  %conv = zext i8 %7 to i32
  %shl = shl i32 3, %conv
  %conv2 = sext i32 %shl to i64
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 28
  %8 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom = zext i8 %9 to i64
  %shr = ashr i64 %conv2, %sh_prom
  %conv4 = trunc i64 %shr to i32
  %sa = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10
  tail call void @xchk_ag_btcur_init(ptr noundef %sc, ptr noundef %sa) #7
  tail call void @xchk_xref_is_used_space(ptr noundef %sc, i32 noundef %conv4, i32 noundef 1) #7
  tail call void @xchk_xref_is_not_inode_chunk(ptr noundef %sc, i32 noundef %conv4, i32 noundef 1) #7
  tail call void @xchk_xref_is_owned_by(ptr noundef %sc, i32 noundef %conv4, i32 noundef 1, ptr noundef nonnull @XFS_RMAP_OINFO_FS) #7
  tail call void @xchk_xref_is_not_shared(ptr noundef %sc, i32 noundef %conv4, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_agfl_walk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xchk_agfl_block(ptr noundef %mp, i32 noundef %agbno, ptr nocapture noundef %priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sc1 = getelementptr inbounds %struct.xchk_agfl_info, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %sc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc1, align 4
  %sa = getelementptr inbounds %struct.xfs_scrub, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %sa to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sa, align 4
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pag_agno, align 4
  %call = tail call zeroext i1 @xfs_verify_agbno(ptr noundef %mp, i32 noundef %5, i32 noundef %agbno) #7
  br i1 %call, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %nr_entries = getelementptr inbounds %struct.xchk_agfl_info, ptr %priv, i32 0, i32 1
  %6 = ptrtoint ptr %nr_entries to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_entries, align 4
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %priv, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp = icmp ult i32 %7, %9
  br i1 %cmp, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %entries = getelementptr inbounds %struct.xchk_agfl_info, ptr %priv, i32 0, i32 2
  %10 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %entries, align 4
  %inc = add nuw i32 %7, 1
  %12 = ptrtoint ptr %nr_entries to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %inc, ptr %nr_entries, align 4
  %arrayidx = getelementptr i32, ptr %11, i32 %7
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %agbno, ptr %arrayidx, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %agfl_bp = getelementptr inbounds %struct.xfs_scrub, ptr %1, i32 0, i32 10, i32 2
  %14 = ptrtoint ptr %agfl_bp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %agfl_bp, align 4
  tail call void @xchk_block_set_corrupt(ptr noundef %1, ptr noundef %15) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call fastcc void @xchk_agfl_block_xref(ptr noundef %1, i32 noundef %agbno)
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sm, align 4
  %sm_flags = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %sm_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sm_flags, align 4
  %and = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 0, i32 -125
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xchk_agblock_cmp(ptr nocapture noundef readonly %pa, ptr nocapture noundef readonly %pb) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pa, align 4
  %2 = ptrtoint ptr %pb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pb, align 4
  %sub = sub i32 %1, %3
  ret i32 %sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xchk_agi(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  %first_agino = alloca i32, align 4
  %last_agino = alloca i32, align 4
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc, align 4
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %2 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sm, align 4
  %sm_agno = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %sm_agno to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sm_agno, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %first_agino) #7
  %6 = ptrtoint ptr %first_agino to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %first_agino, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last_agino) #7
  %7 = ptrtoint ptr %last_agino to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %last_agino, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #7
  %sa = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10
  %call = tail call i32 @xchk_ag_read_headers(ptr noundef %sc, i32 noundef %5, ptr noundef %sa) #7
  %8 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call, ptr %error, align 4
  %9 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sc, align 4
  %m_sectbb_log = getelementptr inbounds %struct.xfs_mount, ptr %10, i32 0, i32 30
  %11 = ptrtoint ptr %m_sectbb_log to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %m_sectbb_log, align 1
  %conv = zext i8 %12 to i32
  %shl = shl i32 2, %conv
  %conv4 = sext i32 %shl to i64
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %10, i32 0, i32 28
  %13 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom = zext i8 %14 to i64
  %shr = ashr i64 %conv4, %sh_prom
  %conv7 = trunc i64 %shr to i32
  %call8 = call zeroext i1 @xchk_process_error(ptr noundef %sc, i32 noundef %5, i32 noundef %conv7, ptr noundef nonnull %error) #7
  br i1 %call8, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %agi_bp = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 3
  %15 = ptrtoint ptr %agi_bp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %agi_bp, align 4
  call void @xchk_buffer_recheck(ptr noundef %sc, ptr noundef %16) #7
  %17 = ptrtoint ptr %agi_bp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %agi_bp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %18, i32 0, i32 16
  %19 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %b_addr, align 4
  %21 = ptrtoint ptr %sa to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sa, align 4
  %agi_length = getelementptr inbounds %struct.xfs_agi, ptr %20, i32 0, i32 3
  %23 = ptrtoint ptr %agi_length to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %agi_length, align 4
  %call14 = call i32 @xfs_ag_block_count(ptr noundef %1, i32 noundef %5) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %call14)
  %cmp.not = icmp eq i32 %24, %call14
  br i1 %cmp.not, label %if.end.if.end19_crit_edge, label %if.then16

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %agi_bp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %agi_bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %26) #7
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end.if.end19_crit_edge
  %agi_root = getelementptr inbounds %struct.xfs_agi, ptr %20, i32 0, i32 5
  %27 = ptrtoint ptr %agi_root to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %agi_root, align 4
  %call20 = call zeroext i1 @xfs_verify_agbno(ptr noundef %1, i32 noundef %5, i32 noundef %28) #7
  br i1 %call20, label %if.end19.if.end24_crit_edge, label %if.then21

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %agi_bp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %agi_bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %30) #7
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end19.if.end24_crit_edge
  %agi_level = getelementptr inbounds %struct.xfs_agi, ptr %20, i32 0, i32 6
  %31 = ptrtoint ptr %agi_level to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %agi_level, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp25 = icmp slt i32 %32, 1
  br i1 %cmp25, label %if.end24.if.then29_crit_edge, label %lor.lhs.false

if.end24.if.then29_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29

lor.lhs.false:                                    ; preds = %if.end24
  %inobt_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 64, i32 10
  %33 = ptrtoint ptr %inobt_maxlevels to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %inobt_maxlevels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp27 = icmp ugt i32 %32, %34
  br i1 %cmp27, label %lor.lhs.false.if.then29_crit_edge, label %lor.lhs.false.if.end32_crit_edge

lor.lhs.false.if.end32_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

lor.lhs.false.if.then29_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29

if.then29:                                        ; preds = %lor.lhs.false.if.then29_crit_edge, %if.end24.if.then29_crit_edge
  %35 = ptrtoint ptr %agi_bp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %agi_bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %36) #7
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %lor.lhs.false.if.end32_crit_edge
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %37 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %38, 131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end32.if.end50_crit_edge, label %if.then34

if.end32.if.end50_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then34:                                        ; preds = %if.end32
  %agi_free_root = getelementptr inbounds %struct.xfs_agi, ptr %20, i32 0, i32 15
  %39 = ptrtoint ptr %agi_free_root to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %agi_free_root, align 8
  %call35 = call zeroext i1 @xfs_verify_agbno(ptr noundef %1, i32 noundef %5, i32 noundef %40) #7
  br i1 %call35, label %if.then34.if.end39_crit_edge, label %if.then36

if.then34.if.end39_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then36:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %agi_bp to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %agi_bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %42) #7
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.then34.if.end39_crit_edge
  %agi_free_level = getelementptr inbounds %struct.xfs_agi, ptr %20, i32 0, i32 16
  %43 = ptrtoint ptr %agi_free_level to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %agi_free_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp40 = icmp slt i32 %44, 1
  br i1 %cmp40, label %if.end39.if.then46_crit_edge, label %lor.lhs.false42

if.end39.if.then46_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then46

lor.lhs.false42:                                  ; preds = %if.end39
  %inobt_maxlevels43 = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 64, i32 10
  %45 = ptrtoint ptr %inobt_maxlevels43 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %inobt_maxlevels43, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp44 = icmp ugt i32 %44, %46
  br i1 %cmp44, label %lor.lhs.false42.if.then46_crit_edge, label %lor.lhs.false42.if.end50_crit_edge

lor.lhs.false42.if.end50_crit_edge:               ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

lor.lhs.false42.if.then46_crit_edge:              ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then46

if.then46:                                        ; preds = %lor.lhs.false42.if.then46_crit_edge, %if.end39.if.then46_crit_edge
  %47 = ptrtoint ptr %agi_bp to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %agi_bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %48) #7
  br label %if.end50

if.end50:                                         ; preds = %if.then46, %lor.lhs.false42.if.end50_crit_edge, %if.end32.if.end50_crit_edge
  call void @xfs_agino_range(ptr noundef %1, i32 noundef %5, ptr noundef nonnull %first_agino, ptr noundef nonnull %last_agino) #7
  %agi_count = getelementptr inbounds %struct.xfs_agi, ptr %20, i32 0, i32 4
  %49 = ptrtoint ptr %agi_count to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %agi_count, align 8
  %51 = ptrtoint ptr %last_agino to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %last_agino, align 4
  %53 = ptrtoint ptr %first_agino to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %first_agino, align 4
  %sub = add i32 %52, 1
  %add = sub i32 %sub, %54
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %add)
  %cmp51 = icmp ugt i32 %50, %add
  br i1 %cmp51, label %if.end50.if.then56_crit_edge, label %lor.lhs.false53

if.end50.if.then56_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then56

lor.lhs.false53:                                  ; preds = %if.end50
  %agi_freecount = getelementptr inbounds %struct.xfs_agi, ptr %20, i32 0, i32 7
  %55 = ptrtoint ptr %agi_freecount to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %agi_freecount, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %56)
  %cmp54 = icmp ult i32 %50, %56
  br i1 %cmp54, label %lor.lhs.false53.if.then56_crit_edge, label %lor.lhs.false53.if.end59_crit_edge

lor.lhs.false53.if.end59_crit_edge:               ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

lor.lhs.false53.if.then56_crit_edge:              ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then56

if.then56:                                        ; preds = %lor.lhs.false53.if.then56_crit_edge, %if.end50.if.then56_crit_edge
  %57 = ptrtoint ptr %agi_bp to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %agi_bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %58) #7
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %lor.lhs.false53.if.end59_crit_edge
  %agi_newino = getelementptr inbounds %struct.xfs_agi, ptr %20, i32 0, i32 8
  %59 = ptrtoint ptr %agi_newino to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %agi_newino, align 8
  %call60 = call zeroext i1 @xfs_verify_agino_or_null(ptr noundef %1, i32 noundef %5, i32 noundef %60) #7
  br i1 %call60, label %if.end59.if.end64_crit_edge, label %if.then61

if.end59.if.end64_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.then61:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %agi_bp to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %agi_bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %62) #7
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %if.end59.if.end64_crit_edge
  %agi_dirino = getelementptr inbounds %struct.xfs_agi, ptr %20, i32 0, i32 9
  %63 = ptrtoint ptr %agi_dirino to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %agi_dirino, align 4
  %call65 = call zeroext i1 @xfs_verify_agino_or_null(ptr noundef %1, i32 noundef %5, i32 noundef %64) #7
  br i1 %call65, label %if.end64.for.body.preheader_crit_edge, label %if.then66

if.end64.for.body.preheader_crit_edge:            ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

if.then66:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %agi_bp to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %agi_bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %66) #7
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then66, %if.end64.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0173 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.xfs_agi, ptr %20, i32 0, i32 10, i32 %i.0173
  %67 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx, align 4
  %call72 = call zeroext i1 @xfs_verify_agino_or_null(ptr noundef %1, i32 noundef %5, i32 noundef %68) #7
  br i1 %call72, label %for.body.for.inc_crit_edge, label %if.then73

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then73:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %agi_bp to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %agi_bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %70) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then73, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0173, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  %agi_pad32 = getelementptr inbounds %struct.xfs_agi, ptr %20, i32 0, i32 13
  %71 = ptrtoint ptr %agi_pad32 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %agi_pad32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp77.not = icmp eq i32 %72, 0
  br i1 %cmp77.not, label %for.end.if.end82_crit_edge, label %if.then79

for.end.if.end82_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82

if.then79:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %agi_bp to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %agi_bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %74) #7
  br label %if.end82

if.end82:                                         ; preds = %if.then79, %for.end.if.end82_crit_edge
  %pagi_count = getelementptr inbounds %struct.xfs_perag, ptr %22, i32 0, i32 14
  %75 = ptrtoint ptr %pagi_count to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pagi_count, align 4
  %77 = ptrtoint ptr %agi_count to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %agi_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %78)
  %cmp84.not = icmp eq i32 %76, %78
  br i1 %cmp84.not, label %if.end82.if.end89_crit_edge, label %if.then86

if.end82.if.end89_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

if.then86:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %agi_bp to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %agi_bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %80) #7
  br label %if.end89

if.end89:                                         ; preds = %if.then86, %if.end82.if.end89_crit_edge
  %pagi_freecount = getelementptr inbounds %struct.xfs_perag, ptr %22, i32 0, i32 13
  %81 = ptrtoint ptr %pagi_freecount to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %pagi_freecount, align 4
  %agi_freecount90 = getelementptr inbounds %struct.xfs_agi, ptr %20, i32 0, i32 7
  %83 = ptrtoint ptr %agi_freecount90 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %agi_freecount90, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %84)
  %cmp91.not = icmp eq i32 %82, %84
  br i1 %cmp91.not, label %if.end89.if.end96_crit_edge, label %if.then93

if.end89.if.end96_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end96

if.then93:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  %85 = ptrtoint ptr %agi_bp to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %agi_bp, align 4
  call void @xchk_block_set_corrupt(ptr noundef %sc, ptr noundef %86) #7
  br label %if.end96

if.end96:                                         ; preds = %if.then93, %if.end89.if.end96_crit_edge
  call fastcc void @xchk_agi_xref(ptr noundef %sc)
  br label %out

out:                                              ; preds = %if.end96, %entry.out_crit_edge
  %87 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %error, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last_agino) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %first_agino) #7
  ret i32 %88
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_agino_range(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_verify_agino_or_null(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xchk_agi_xref(ptr noundef %sc) unnamed_addr #3 align 64 {
entry:
  %blocks.i = alloca i32, align 4
  %error.i19 = alloca i32, align 4
  %icount.i = alloca i32, align 4
  %freecount.i = alloca i32, align 4
  %error.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %0 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sm, align 4
  %sm_flags = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sm_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sm_flags, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sc, align 4
  %m_sectbb_log = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 30
  %6 = ptrtoint ptr %m_sectbb_log to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %m_sectbb_log, align 1
  %conv = zext i8 %7 to i32
  %shl = shl i32 2, %conv
  %conv2 = sext i32 %shl to i64
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 28
  %8 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom = zext i8 %9 to i64
  %shr = ashr i64 %conv2, %sh_prom
  %conv4 = trunc i64 %shr to i32
  %sa = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10
  tail call void @xchk_ag_btcur_init(ptr noundef %sc, ptr noundef %sa) #7
  tail call void @xchk_xref_is_used_space(ptr noundef %sc, i32 noundef %conv4, i32 noundef 1) #7
  tail call void @xchk_xref_is_not_inode_chunk(ptr noundef %sc, i32 noundef %conv4, i32 noundef 1) #7
  %agi_bp.i = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 3
  %10 = ptrtoint ptr %agi_bp.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %agi_bp.i, align 4
  %b_addr.i = getelementptr inbounds %struct.xfs_buf, ptr %11, i32 0, i32 16
  %12 = ptrtoint ptr %b_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %icount.i) #7
  %14 = ptrtoint ptr %icount.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %icount.i, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freecount.i) #7
  %15 = ptrtoint ptr %freecount.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %freecount.i, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error.i) #7
  %ino_cur.i = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 6
  %16 = ptrtoint ptr %ino_cur.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ino_cur.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end.xchk_agi_xref_icounts.exit_crit_edge, label %if.end.i

if.end.xchk_agi_xref_icounts.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %xchk_agi_xref_icounts.exit

if.end.i:                                         ; preds = %if.end
  %call.i = call i32 @xfs_ialloc_count_inodes(ptr noundef nonnull %17, ptr noundef nonnull %icount.i, ptr noundef nonnull %freecount.i) #7
  %18 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call.i, ptr %error.i, align 4
  %call6.i = call zeroext i1 @xchk_should_check_xref(ptr noundef %sc, ptr noundef nonnull %error.i, ptr noundef %ino_cur.i) #7
  br i1 %call6.i, label %if.end8.i, label %if.end.i.xchk_agi_xref_icounts.exit_crit_edge

if.end.i.xchk_agi_xref_icounts.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xchk_agi_xref_icounts.exit

if.end8.i:                                        ; preds = %if.end.i
  %agi_count.i = getelementptr inbounds %struct.xfs_agi, ptr %13, i32 0, i32 4
  %19 = ptrtoint ptr %agi_count.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %agi_count.i, align 8
  %21 = ptrtoint ptr %icount.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %icount.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp.not.i = icmp eq i32 %20, %22
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end8.i.if.then10.i_crit_edge

if.end8.i.if.then10.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10.i

lor.lhs.false.i:                                  ; preds = %if.end8.i
  %agi_freecount.i = getelementptr inbounds %struct.xfs_agi, ptr %13, i32 0, i32 7
  %23 = ptrtoint ptr %agi_freecount.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %agi_freecount.i, align 4
  %25 = ptrtoint ptr %freecount.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %freecount.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp9.not.i = icmp eq i32 %24, %26
  br i1 %cmp9.not.i, label %lor.lhs.false.i.xchk_agi_xref_icounts.exit_crit_edge, label %lor.lhs.false.i.if.then10.i_crit_edge

lor.lhs.false.i.if.then10.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10.i

lor.lhs.false.i.xchk_agi_xref_icounts.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xchk_agi_xref_icounts.exit

if.then10.i:                                      ; preds = %lor.lhs.false.i.if.then10.i_crit_edge, %if.end8.i.if.then10.i_crit_edge
  %27 = ptrtoint ptr %agi_bp.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %agi_bp.i, align 4
  call void @xchk_block_xref_set_corrupt(ptr noundef %sc, ptr noundef %28) #7
  br label %xchk_agi_xref_icounts.exit

xchk_agi_xref_icounts.exit:                       ; preds = %if.then10.i, %lor.lhs.false.i.xchk_agi_xref_icounts.exit_crit_edge, %if.end.i.xchk_agi_xref_icounts.exit_crit_edge, %if.end.xchk_agi_xref_icounts.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freecount.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %icount.i) #7
  call void @xchk_xref_is_owned_by(ptr noundef %sc, i32 noundef %conv4, i32 noundef 1, ptr noundef nonnull @XFS_RMAP_OINFO_FS) #7
  call void @xchk_xref_is_not_shared(ptr noundef %sc, i32 noundef %conv4, i32 noundef 1) #7
  %29 = ptrtoint ptr %agi_bp.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %agi_bp.i, align 4
  %b_addr.i21 = getelementptr inbounds %struct.xfs_buf, ptr %30, i32 0, i32 16
  %31 = ptrtoint ptr %b_addr.i21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %b_addr.i21, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %blocks.i) #7
  %33 = ptrtoint ptr %blocks.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %blocks.i, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error.i19) #7
  %34 = ptrtoint ptr %error.i19 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %error.i19, align 4
  %35 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sc, align 4
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %36, i32 0, i32 61
  %37 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %38, 8388608
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %xchk_agi_xref_icounts.exit.xchk_agi_xref_fiblocks.exit_crit_edge, label %if.end.i24

xchk_agi_xref_icounts.exit.xchk_agi_xref_fiblocks.exit_crit_edge: ; preds = %xchk_agi_xref_icounts.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %xchk_agi_xref_fiblocks.exit

if.end.i24:                                       ; preds = %xchk_agi_xref_icounts.exit
  %39 = ptrtoint ptr %ino_cur.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ino_cur.i, align 4
  %tobool.not.i23 = icmp eq ptr %40, null
  br i1 %tobool.not.i23, label %if.end.i24.if.end15.i_crit_edge, label %if.then2.i

if.end.i24.if.end15.i_crit_edge:                  ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.then2.i:                                       ; preds = %if.end.i24
  %call5.i = call i32 @xfs_btree_count_blocks(ptr noundef nonnull %40, ptr noundef nonnull %blocks.i) #7
  %41 = ptrtoint ptr %error.i19 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call5.i, ptr %error.i19, align 4
  %call8.i = call zeroext i1 @xchk_should_check_xref(ptr noundef %sc, ptr noundef nonnull %error.i19, ptr noundef %ino_cur.i) #7
  br i1 %call8.i, label %if.end10.i, label %if.then2.i.xchk_agi_xref_fiblocks.exit_crit_edge

if.then2.i.xchk_agi_xref_fiblocks.exit_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xchk_agi_xref_fiblocks.exit

if.end10.i:                                       ; preds = %if.then2.i
  %42 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %blocks.i, align 4
  %agi_iblocks.i = getelementptr inbounds %struct.xfs_agi, ptr %32, i32 0, i32 17
  %44 = ptrtoint ptr %agi_iblocks.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %agi_iblocks.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp.not.i25 = icmp eq i32 %43, %45
  br i1 %cmp.not.i25, label %if.end10.i.if.end15.i_crit_edge, label %if.then11.i

if.end10.i.if.end15.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.then11.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %agi_bp.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %agi_bp.i, align 4
  call void @xchk_block_xref_set_corrupt(ptr noundef %sc, ptr noundef %47) #7
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then11.i, %if.end10.i.if.end15.i_crit_edge, %if.end.i24.if.end15.i_crit_edge
  %fino_cur.i = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 7
  %48 = ptrtoint ptr %fino_cur.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fino_cur.i, align 4
  %tobool17.not.i = icmp eq ptr %49, null
  br i1 %tobool17.not.i, label %if.end15.i.xchk_agi_xref_fiblocks.exit_crit_edge, label %if.then18.i

if.end15.i.xchk_agi_xref_fiblocks.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xchk_agi_xref_fiblocks.exit

if.then18.i:                                      ; preds = %if.end15.i
  %call21.i = call i32 @xfs_btree_count_blocks(ptr noundef nonnull %49, ptr noundef nonnull %blocks.i) #7
  %50 = ptrtoint ptr %error.i19 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %call21.i, ptr %error.i19, align 4
  %call24.i = call zeroext i1 @xchk_should_check_xref(ptr noundef %sc, ptr noundef nonnull %error.i19, ptr noundef %fino_cur.i) #7
  br i1 %call24.i, label %if.end26.i, label %if.then18.i.xchk_agi_xref_fiblocks.exit_crit_edge

if.then18.i.xchk_agi_xref_fiblocks.exit_crit_edge: ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xchk_agi_xref_fiblocks.exit

if.end26.i:                                       ; preds = %if.then18.i
  %51 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %blocks.i, align 4
  %agi_fblocks.i = getelementptr inbounds %struct.xfs_agi, ptr %32, i32 0, i32 18
  %53 = ptrtoint ptr %agi_fblocks.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %agi_fblocks.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %54)
  %cmp27.not.i = icmp eq i32 %52, %54
  br i1 %cmp27.not.i, label %if.end26.i.xchk_agi_xref_fiblocks.exit_crit_edge, label %if.then28.i

if.end26.i.xchk_agi_xref_fiblocks.exit_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xchk_agi_xref_fiblocks.exit

if.then28.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %agi_bp.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %agi_bp.i, align 4
  call void @xchk_block_xref_set_corrupt(ptr noundef %sc, ptr noundef %56) #7
  br label %xchk_agi_xref_fiblocks.exit

xchk_agi_xref_fiblocks.exit:                      ; preds = %if.then28.i, %if.end26.i.xchk_agi_xref_fiblocks.exit_crit_edge, %if.then18.i.xchk_agi_xref_fiblocks.exit_crit_edge, %if.end15.i.xchk_agi_xref_fiblocks.exit_crit_edge, %if.then2.i.xchk_agi_xref_fiblocks.exit_crit_edge, %xchk_agi_xref_icounts.exit.xchk_agi_xref_fiblocks.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error.i19) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %blocks.i) #7
  br label %cleanup

cleanup:                                          ; preds = %xchk_agi_xref_fiblocks.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xchk_xref_process_error(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_xref_is_used_space(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_xref_is_not_inode_chunk(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_xref_is_owned_by(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_xref_is_not_shared(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_ag_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_ag_btcur_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xchk_agf_xref_btreeblks(ptr noundef %sc) unnamed_addr #3 align 64 {
entry:
  %blocks = alloca i32, align 4
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %agf_bp = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 1
  %0 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %agf_bp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_addr, align 4
  %4 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sc, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %blocks) #7
  %6 = ptrtoint ptr %blocks to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %blocks, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #7
  %7 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %error, align 4, !annotation !9
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 61
  %8 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %9, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %rmap_cur = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 8
  %10 = ptrtoint ptr %rmap_cur to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmap_cur, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end.if.end17_crit_edge, label %if.then4

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then4:                                         ; preds = %if.end
  %call7 = call i32 @xfs_btree_count_blocks(ptr noundef nonnull %11, ptr noundef nonnull %blocks) #7
  %12 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call7, ptr %error, align 4
  %call10 = call zeroext i1 @xchk_should_check_xref(ptr noundef %sc, ptr noundef nonnull %error, ptr noundef %rmap_cur) #7
  br i1 %call10, label %if.end12, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.then4
  %13 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %blocks, align 4
  %sub = add i32 %14, -1
  %agf_rmap_blocks = getelementptr inbounds %struct.xfs_agf, ptr %3, i32 0, i32 13
  %15 = ptrtoint ptr %agf_rmap_blocks to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %agf_rmap_blocks, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp.not = icmp eq i32 %14, %16
  br i1 %cmp.not, label %if.end12.if.end17_crit_edge, label %if.then13

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then13:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %agf_bp, align 4
  call void @xchk_block_xref_set_corrupt(ptr noundef %sc, ptr noundef %18) #7
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end12.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %btreeblks.0 = phi i32 [ %sub, %if.then13 ], [ %sub, %if.end12.if.end17_crit_edge ], [ 0, %if.end.if.end17_crit_edge ]
  %19 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %m_features.i, align 8
  %and.i81 = and i64 %20, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i81)
  %tobool.i82.not = icmp eq i64 %and.i81, 0
  br i1 %tobool.i82.not, label %if.end17.lor.lhs.false_crit_edge, label %land.lhs.true

if.end17.lor.lhs.false_crit_edge:                 ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end17
  %21 = ptrtoint ptr %rmap_cur to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rmap_cur, align 4
  %tobool21.not = icmp eq ptr %22, null
  br i1 %tobool21.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %if.end17.lor.lhs.false_crit_edge
  %bno_cur = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 4
  %23 = ptrtoint ptr %bno_cur to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bno_cur, align 4
  %tobool23.not = icmp eq ptr %24, null
  br i1 %tobool23.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false24

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false24:                                  ; preds = %lor.lhs.false
  %cnt_cur = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 5
  %25 = ptrtoint ptr %cnt_cur to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cnt_cur, align 4
  %tobool26.not = icmp eq ptr %26, null
  br i1 %tobool26.not, label %lor.lhs.false24.cleanup_crit_edge, label %if.end28

lor.lhs.false24.cleanup_crit_edge:                ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %lor.lhs.false24
  %call31 = call i32 @xfs_btree_count_blocks(ptr noundef nonnull %24, ptr noundef nonnull %blocks) #7
  %27 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call31, ptr %error, align 4
  %call34 = call zeroext i1 @xchk_should_check_xref(ptr noundef %sc, ptr noundef nonnull %error, ptr noundef %bno_cur) #7
  br i1 %call34, label %if.end36, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end36:                                         ; preds = %if.end28
  %28 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %blocks, align 4
  %30 = ptrtoint ptr %cnt_cur to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cnt_cur, align 4
  %call40 = call i32 @xfs_btree_count_blocks(ptr noundef %31, ptr noundef nonnull %blocks) #7
  %32 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call40, ptr %error, align 4
  %call43 = call zeroext i1 @xchk_should_check_xref(ptr noundef %sc, ptr noundef nonnull %error, ptr noundef %cnt_cur) #7
  br i1 %call43, label %if.end45, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end45:                                         ; preds = %if.end36
  %33 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %blocks, align 4
  %sub37 = add i32 %btreeblks.0, -2
  %add = add i32 %sub37, %29
  %add47 = add i32 %add, %34
  %agf_btreeblks = getelementptr inbounds %struct.xfs_agf, ptr %3, i32 0, i32 11
  %35 = ptrtoint ptr %agf_btreeblks to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %agf_btreeblks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add47, i32 %36)
  %cmp48.not = icmp eq i32 %add47, %36
  br i1 %cmp48.not, label %if.end45.cleanup_crit_edge, label %if.then49

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %agf_bp, align 4
  call void @xchk_block_xref_set_corrupt(ptr noundef %sc, ptr noundef %38) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %if.end45.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %lor.lhs.false24.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %blocks) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_alloc_query_all(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xchk_agf_record_bno_lengths(ptr nocapture noundef readnone %cur, ptr nocapture noundef readonly %rec, ptr nocapture noundef %priv) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ar_blockcount = getelementptr inbounds %struct.xfs_alloc_rec_incore, ptr %rec, i32 0, i32 1
  %0 = ptrtoint ptr %ar_blockcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ar_blockcount, align 4
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %priv, align 4
  %add = add i32 %3, %1
  store i32 %add, ptr %priv, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xchk_should_check_xref(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_block_xref_set_corrupt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_alloc_lookup_le(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_alloc_get_rec(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_btree_count_blocks(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_alloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xchk_agfl_block_xref(ptr noundef %sc, i32 noundef %agbno) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %0 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sm, align 4
  %sm_flags = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sm_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sm_flags, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @xchk_xref_is_used_space(ptr noundef %sc, i32 noundef %agbno, i32 noundef 1) #7
  tail call void @xchk_xref_is_not_inode_chunk(ptr noundef %sc, i32 noundef %agbno, i32 noundef 1) #7
  tail call void @xchk_xref_is_owned_by(ptr noundef %sc, i32 noundef %agbno, i32 noundef 1, ptr noundef nonnull @XFS_RMAP_OINFO_AG) #7
  tail call void @xchk_xref_is_not_shared(ptr noundef %sc, i32 noundef %agbno, i32 noundef 1) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_ialloc_count_inodes(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin nounwind }
attributes #11 = { nobuiltin }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{!"auto-init"}
