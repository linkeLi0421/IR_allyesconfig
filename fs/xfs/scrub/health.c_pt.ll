; ModuleID = '/llk/IR_all_yes/fs/xfs/scrub/health.c_pt.bc'
source_filename = "../fs/xfs/scrub/health.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xchk_health_map = type { i32, i32 }
%struct.xfs_scrub = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.xchk_ag }
%struct.xchk_ag = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xfs_scrub_metadata = type { i32, i32, i64, i32, i32, [5 x i64] }

@type_to_health_flag = internal constant { [25 x %struct.xchk_health_map], [56 x i8] } { [25 x %struct.xchk_health_map] [%struct.xchk_health_map zeroinitializer, %struct.xchk_health_map { i32 3, i32 1 }, %struct.xchk_health_map { i32 3, i32 2 }, %struct.xchk_health_map { i32 3, i32 4 }, %struct.xchk_health_map { i32 3, i32 8 }, %struct.xchk_health_map { i32 3, i32 16 }, %struct.xchk_health_map { i32 3, i32 32 }, %struct.xchk_health_map { i32 3, i32 64 }, %struct.xchk_health_map { i32 3, i32 128 }, %struct.xchk_health_map { i32 3, i32 256 }, %struct.xchk_health_map { i32 3, i32 512 }, %struct.xchk_health_map { i32 4, i32 1 }, %struct.xchk_health_map { i32 4, i32 2 }, %struct.xchk_health_map { i32 4, i32 4 }, %struct.xchk_health_map { i32 4, i32 8 }, %struct.xchk_health_map { i32 4, i32 16 }, %struct.xchk_health_map { i32 4, i32 32 }, %struct.xchk_health_map { i32 4, i32 64 }, %struct.xchk_health_map { i32 4, i32 128 }, %struct.xchk_health_map { i32 2, i32 1 }, %struct.xchk_health_map { i32 2, i32 2 }, %struct.xchk_health_map { i32 1, i32 2 }, %struct.xchk_health_map { i32 1, i32 4 }, %struct.xchk_health_map { i32 1, i32 8 }, %struct.xchk_health_map { i32 1, i32 1 }], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/xfs/scrub/health.c\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.2 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 4, i64 5, i64 6]
@___asan_gen_.3 = private unnamed_addr constant [20 x i8] c"type_to_health_flag\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 81, i32 37 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private constant [25 x i8] c"../fs/xfs/scrub/health.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 168, i32 3 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @type_to_health_flag, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @type_to_health_flag to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @xchk_health_mask_for_scrub_type(i32 noundef %scrub_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sick_mask = getelementptr [25 x %struct.xchk_health_map], ptr @type_to_health_flag, i32 0, i32 %scrub_type, i32 1
  %0 = ptrtoint ptr %sick_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sick_mask, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xchk_update_health(ptr nocapture noundef readonly %sc) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sick_mask = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 9
  %0 = ptrtoint ptr %sick_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sick_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %2 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sm, align 4
  %sm_flags = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %sm_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sm_flags, align 4
  %and = and i32 %5, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 8
  %arrayidx = getelementptr [25 x %struct.xchk_health_map], ptr @type_to_health_flag, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb9
    i32 1, label %sw.bb21
    i32 2, label %sw.bb30
  ]

sw.bb:                                            ; preds = %if.end
  %11 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sc, align 4
  %sm_agno = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %3, i32 0, i32 4
  %13 = ptrtoint ptr %sm_agno to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sm_agno, align 4
  %call = tail call ptr @xfs_perag_get(ptr noundef %12, i32 noundef %14) #4
  %15 = ptrtoint ptr %sick_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sick_mask, align 4
  br i1 %tobool1.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xfs_ag_mark_sick(ptr noundef %call, i32 noundef %16) #4
  br label %if.end8

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xfs_ag_mark_healthy(ptr noundef %call, i32 noundef %16) #4
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5
  tail call void @xfs_perag_put(ptr noundef %call) #4
  br label %cleanup

sw.bb9:                                           ; preds = %if.end
  %ip = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 5
  %17 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ip, align 4
  %tobool10.not = icmp eq ptr %18, null
  br i1 %tobool10.not, label %sw.bb9.cleanup_crit_edge, label %if.end12

sw.bb9.cleanup_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %sw.bb9
  br i1 %tobool1.not, label %if.else17, label %if.then14

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xfs_inode_mark_sick(ptr noundef nonnull %18, i32 noundef %1) #4
  br label %cleanup

if.else17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xfs_inode_mark_healthy(ptr noundef nonnull %18, i32 noundef %1) #4
  br label %cleanup

sw.bb21:                                          ; preds = %if.end
  %19 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sc, align 4
  br i1 %tobool1.not, label %if.else26, label %if.then23

if.then23:                                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xfs_fs_mark_sick(ptr noundef %20, i32 noundef %1) #4
  br label %cleanup

if.else26:                                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xfs_fs_mark_healthy(ptr noundef %20, i32 noundef %1) #4
  br label %cleanup

sw.bb30:                                          ; preds = %if.end
  %21 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sc, align 4
  br i1 %tobool1.not, label %if.else35, label %if.then32

if.then32:                                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xfs_rt_mark_sick(ptr noundef %22, i32 noundef %1) #4
  br label %cleanup

if.else35:                                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xfs_rt_mark_healthy(ptr noundef %22, i32 noundef %1) #4
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 168) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.else35, %if.then32, %if.else26, %if.then23, %if.else17, %if.then14, %sw.bb9.cleanup_crit_edge, %if.end8, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_perag_get(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_ag_mark_sick(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_ag_mark_healthy(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_perag_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_inode_mark_sick(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_inode_mark_healthy(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_fs_mark_sick(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_fs_mark_healthy(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_rt_mark_sick(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_rt_mark_healthy(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @xchk_ag_btree_healthy_enough(ptr nocapture noundef readonly %sc, ptr noundef %pag, i32 noundef %btnum) local_unnamed_addr #1 align 64 {
entry:
  %sick.i = alloca i32, align 4
  %checked.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %btnum to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %btnum, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 4, label %sw.bb7
    i32 5, label %sw.bb13
    i32 2, label %sw.bb19
    i32 6, label %sw.bb25
  ]

sw.bb:                                            ; preds = %entry
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %1 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sm, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %4)
  %cmp = icmp eq i32 %4, 5
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %sm2 = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %5 = ptrtoint ptr %sm2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sm2, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %8)
  %cmp4 = icmp eq i32 %8, 6
  br i1 %cmp4, label %sw.bb1.cleanup_crit_edge, label %sw.bb1.sw.epilog_crit_edge

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  %sm8 = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %9 = ptrtoint ptr %sm8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sm8, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %12)
  %cmp10 = icmp eq i32 %12, 7
  br i1 %cmp10, label %sw.bb7.cleanup_crit_edge, label %sw.bb7.sw.epilog_crit_edge

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  %sm14 = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %13 = ptrtoint ptr %sm14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sm14, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %16)
  %cmp16 = icmp eq i32 %16, 8
  br i1 %cmp16, label %sw.bb13.cleanup_crit_edge, label %sw.bb13.sw.epilog_crit_edge

sw.bb13.sw.epilog_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  %sm20 = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %17 = ptrtoint ptr %sm20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sm20, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %20)
  %cmp22 = icmp eq i32 %20, 9
  br i1 %cmp22, label %sw.bb19.cleanup_crit_edge, label %sw.bb19.sw.epilog_crit_edge

sw.bb19.sw.epilog_crit_edge:                      ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb19.cleanup_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb25:                                          ; preds = %entry
  %sm26 = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %21 = ptrtoint ptr %sm26 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sm26, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %24)
  %cmp28 = icmp eq i32 %24, 10
  br i1 %cmp28, label %sw.bb25.cleanup_crit_edge, label %sw.bb25.sw.epilog_crit_edge

sw.bb25.sw.epilog_crit_edge:                      ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb25.cleanup_crit_edge:                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 221) #4
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb25.sw.epilog_crit_edge, %sw.bb19.sw.epilog_crit_edge, %sw.bb13.sw.epilog_crit_edge, %sw.bb7.sw.epilog_crit_edge, %sw.bb1.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %mask.0 = phi i32 [ 16, %sw.bb.sw.epilog_crit_edge ], [ 32, %sw.bb1.sw.epilog_crit_edge ], [ 64, %sw.bb7.sw.epilog_crit_edge ], [ 128, %sw.bb13.sw.epilog_crit_edge ], [ 256, %sw.bb19.sw.epilog_crit_edge ], [ 512, %sw.bb25.sw.epilog_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sick.i) #4
  %25 = ptrtoint ptr %sick.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %sick.i, align 4, !annotation !14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %checked.i) #4
  %26 = ptrtoint ptr %checked.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %checked.i, align 4, !annotation !14
  call void @xfs_ag_measure_sickness(ptr noundef %pag, ptr noundef nonnull %sick.i, ptr noundef nonnull %checked.i) #4
  %27 = ptrtoint ptr %sick.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sick.i, align 4
  %and.i = and i32 %28, %mask.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %checked.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sick.i) #4
  br i1 %tobool.i.not, label %sw.epilog.cleanup_crit_edge, label %if.then31

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then31:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %sm32 = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %29 = ptrtoint ptr %sm32 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sm32, align 4
  %sm_flags = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %sm_flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sm_flags, align 4
  %or = or i32 %32, 8
  store i32 %or, ptr %sm_flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %sw.epilog.cleanup_crit_edge, %sw.default, %sw.bb25.cleanup_crit_edge, %sw.bb19.cleanup_crit_edge, %sw.bb13.cleanup_crit_edge, %sw.bb7.cleanup_crit_edge, %sw.bb1.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %sw.default ], [ false, %if.then31 ], [ true, %sw.bb.cleanup_crit_edge ], [ true, %sw.bb1.cleanup_crit_edge ], [ true, %sw.bb7.cleanup_crit_edge ], [ true, %sw.bb13.cleanup_crit_edge ], [ true, %sw.bb19.cleanup_crit_edge ], [ true, %sw.bb25.cleanup_crit_edge ], [ true, %sw.epilog.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_ag_measure_sickness(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/scrub/health.c", i32 168, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @type_to_health_flag, !4, !"type_to_health_flag", i1 false, i1 false}
!4 = !{!"../fs/xfs/scrub/health.c", i32 81, i32 37}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{!"auto-init"}
