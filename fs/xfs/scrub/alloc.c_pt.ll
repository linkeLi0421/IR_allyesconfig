; ModuleID = '/llk/IR_all_yes/fs/xfs/scrub/alloc.c_pt.bc'
source_filename = "../fs/xfs/scrub/alloc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfs_owner_info = type { i64, i64, i32 }
%struct.xfs_scrub = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.xchk_ag }
%struct.xchk_ag = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xfs_scrub_metadata = type { i32, i32, i64, i32, i32, [5 x i64] }
%struct.xchk_btree = type { ptr, ptr, ptr, ptr, ptr, %union.xfs_btree_rec, %struct.list_head, [0 x %union.xfs_btree_key] }
%union.xfs_btree_rec = type { %struct.xfs_rmap_rec }
%struct.xfs_rmap_rec = type { i32, i32, i64, i64 }
%struct.list_head = type { ptr, ptr }
%union.xfs_btree_key = type { %struct.xfs_bmbt_key, [32 x i8] }
%struct.xfs_bmbt_key = type { i64 }
%struct.xfs_btree_cur = type { ptr, ptr, ptr, ptr, i32, i32, %union.xfs_btree_irec, i8, i8, i32, %union.anon.93, [0 x %struct.xfs_btree_level] }
%union.xfs_btree_irec = type { %struct.xfs_bmbt_irec }
%struct.xfs_bmbt_irec = type { i64, i64, i64, i32 }
%union.anon.93 = type { %struct.xfs_btree_cur_ag }
%struct.xfs_btree_cur_ag = type { ptr, %union.anon.94, %union.anon.95 }
%union.anon.94 = type { ptr }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { i32, i32 }
%struct.xfs_btree_level = type { ptr, i16, i16 }
%struct.xfs_perag = type { ptr, i32, %struct.atomic_t, i8, i8, i8, i8, [3 x i8], i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.xfs_ag_resv, %struct.xfs_ag_resv, %struct.callback_head, i16, i16, %struct.spinlock, %struct.spinlock, %struct.rb_root, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.xarray, i32, i32, %struct.spinlock, %struct.rhashtable, %struct.delayed_work, %struct.rhashtable }
%struct.xfs_ag_resv = type { i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
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
%struct.xfs_alloc_rec = type { i32, i32 }

@XFS_RMAP_OINFO_AG = external dso_local constant %struct.xfs_owner_info, align 8
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xchk_setup_ag_allocbt(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xchk_setup_ag_btree(ptr noundef %sc, i1 noundef zeroext false) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_setup_ag_btree(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xchk_bnobt(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @xchk_allocbt(ptr noundef %sc, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xchk_allocbt(ptr noundef %sc, i32 noundef %which) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %which)
  %cmp = icmp eq i32 %which, 0
  %bno_cur = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 4
  %cnt_cur = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 5
  %cond.in = select i1 %cmp, ptr %bno_cur, ptr %cnt_cur
  %0 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %cond = load ptr, ptr %cond.in, align 4
  %call = tail call i32 @xchk_btree(ptr noundef %sc, ptr noundef %cond, ptr noundef nonnull @xchk_allocbt_rec, ptr noundef nonnull @XFS_RMAP_OINFO_AG, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xchk_cntbt(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @xchk_allocbt(ptr noundef %sc, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xchk_xref_is_used_space(ptr noundef %sc, i32 noundef %agbno, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %is_freesp = alloca i8, align 1
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %is_freesp) #4
  %0 = ptrtoint ptr %is_freesp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %is_freesp, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #4
  %bno_cur = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 4
  %1 = ptrtoint ptr %bno_cur to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bno_cur, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %3 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sm, align 4
  %sm_flags.i = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %sm_flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sm_flags.i, align 4
  %and.i = and i32 %6, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call3 = call i32 @xfs_alloc_has_record(ptr noundef nonnull %2, i32 noundef %agbno, i32 noundef %len, ptr noundef nonnull %is_freesp) #4
  %7 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call3, ptr %error, align 4
  %call6 = call zeroext i1 @xchk_should_check_xref(ptr noundef %sc, ptr noundef nonnull %error, ptr noundef %bno_cur) #4
  br i1 %call6, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %8 = ptrtoint ptr %is_freesp to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_freesp, align 1, !range !10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool9.not = icmp eq i8 %9, 0
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %if.then10

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %bno_cur to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bno_cur, align 4
  call void @xchk_btree_xref_set_corrupt(ptr noundef %sc, ptr noundef %11, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %is_freesp) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_alloc_has_record(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xchk_should_check_xref(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_btree_xref_set_corrupt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_btree(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xchk_allocbt_rec(ptr nocapture noundef readonly %bs, ptr nocapture noundef readonly %rec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cur = getelementptr inbounds %struct.xchk_btree, ptr %bs, i32 0, i32 1
  %0 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur, align 4
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bc_mp, align 4
  %4 = getelementptr inbounds %struct.xfs_btree_cur, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pag_agno, align 4
  %9 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rec, align 8
  %ar_blockcount = getelementptr inbounds %struct.xfs_alloc_rec, ptr %rec, i32 0, i32 1
  %11 = ptrtoint ptr %ar_blockcount to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ar_blockcount, align 4
  %add = add i32 %12, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %10)
  %cmp.not = icmp ugt i32 %add, %10
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call = tail call zeroext i1 @xfs_verify_agbno(ptr noundef %3, i32 noundef %8, i32 noundef %10) #4
  br i1 %call, label %lor.lhs.false2, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %sub = add i32 %add, -1
  %call4 = tail call zeroext i1 @xfs_verify_agbno(ptr noundef %3, i32 noundef %8, i32 noundef %sub) #4
  br i1 %call4, label %lor.lhs.false2.if.end_crit_edge, label %lor.lhs.false2.if.then_crit_edge

lor.lhs.false2.if.then_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false2.if.end_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false2.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %13 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bs, align 8
  %15 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cur, align 4
  tail call void @xchk_btree_set_corrupt(ptr noundef %14, ptr noundef %16, i32 noundef 0) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false2.if.end_crit_edge
  %17 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bs, align 8
  tail call fastcc void @xchk_allocbt_xref(ptr noundef %18, i32 noundef %10, i32 noundef %12)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_verify_agbno(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_btree_set_corrupt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xchk_allocbt_xref(ptr noundef %sc, i32 noundef %agbno, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @xchk_allocbt_xref_other(ptr noundef %sc, i32 noundef %agbno, i32 noundef %len)
  tail call void @xchk_xref_is_not_inode_chunk(ptr noundef %sc, i32 noundef %agbno, i32 noundef %len) #4
  tail call void @xchk_xref_has_no_owner(ptr noundef %sc, i32 noundef %agbno, i32 noundef %len) #4
  tail call void @xchk_xref_is_not_shared(ptr noundef %sc, i32 noundef %agbno, i32 noundef %len) #4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xchk_allocbt_xref_other(ptr noundef %sc, i32 noundef %agbno, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  %fbno = alloca i32, align 4
  %flen = alloca i32, align 4
  %has_otherrec = alloca i32, align 4
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fbno) #4
  %0 = ptrtoint ptr %fbno to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %fbno, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flen) #4
  %1 = ptrtoint ptr %flen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %flen, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %has_otherrec) #4
  %2 = ptrtoint ptr %has_otherrec to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %has_otherrec, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #4
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %3 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sm, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %6)
  %cmp = icmp eq i32 %6, 5
  %cnt_cur = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 5
  %bno_cur = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 4
  %pcur.0 = select i1 %cmp, ptr %cnt_cur, ptr %bno_cur
  %7 = ptrtoint ptr %pcur.0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcur.0, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %sm_flags.i = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %sm_flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sm_flags.i, align 4
  %and.i = and i32 %10, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end4, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %call5 = call i32 @xfs_alloc_lookup_le(ptr noundef nonnull %8, i32 noundef %agbno, i32 noundef %len, ptr noundef nonnull %has_otherrec) #4
  %11 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call5, ptr %error, align 4
  %call6 = call zeroext i1 @xchk_should_check_xref(ptr noundef %sc, ptr noundef nonnull %error, ptr noundef %pcur.0) #4
  br i1 %call6, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %12 = ptrtoint ptr %has_otherrec to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %has_otherrec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool9.not = icmp eq i32 %13, 0
  %14 = ptrtoint ptr %pcur.0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pcur.0, align 4
  br i1 %tobool9.not, label %if.end8.cleanup.sink.split_crit_edge, label %if.end11

if.end8.cleanup.sink.split_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end11:                                         ; preds = %if.end8
  %call12 = call i32 @xfs_alloc_get_rec(ptr noundef %15, ptr noundef nonnull %fbno, ptr noundef nonnull %flen, ptr noundef nonnull %has_otherrec) #4
  %16 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call12, ptr %error, align 4
  %call13 = call zeroext i1 @xchk_should_check_xref(ptr noundef %sc, ptr noundef nonnull %error, ptr noundef %pcur.0) #4
  br i1 %call13, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %17 = ptrtoint ptr %has_otherrec to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %has_otherrec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool16.not = icmp eq i32 %18, 0
  br i1 %tobool16.not, label %if.end15.cleanup.sink.split.sink.split_crit_edge, label %if.end18

if.end15.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.sink.split

if.end18:                                         ; preds = %if.end15
  %19 = ptrtoint ptr %fbno to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fbno, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %agbno)
  %cmp19.not = icmp eq i32 %20, %agbno
  br i1 %cmp19.not, label %lor.lhs.false20, label %if.end18.cleanup.sink.split.sink.split_crit_edge

if.end18.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.sink.split

lor.lhs.false20:                                  ; preds = %if.end18
  %21 = ptrtoint ptr %flen to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %len)
  %cmp21.not = icmp eq i32 %22, %len
  br i1 %cmp21.not, label %lor.lhs.false20.cleanup_crit_edge, label %lor.lhs.false20.cleanup.sink.split.sink.split_crit_edge

lor.lhs.false20.cleanup.sink.split.sink.split_crit_edge: ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.sink.split

lor.lhs.false20.cleanup_crit_edge:                ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup.sink.split.sink.split:                    ; preds = %lor.lhs.false20.cleanup.sink.split.sink.split_crit_edge, %if.end18.cleanup.sink.split.sink.split_crit_edge, %if.end15.cleanup.sink.split.sink.split_crit_edge
  %23 = ptrtoint ptr %pcur.0 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pcur.0, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end8.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %15, %if.end8.cleanup.sink.split_crit_edge ], [ %24, %cleanup.sink.split.sink.split ]
  call void @xchk_btree_xref_set_corrupt(ptr noundef %sc, ptr noundef %.sink, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false20.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %has_otherrec) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flen) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fbno) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_xref_is_not_inode_chunk(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_xref_has_no_owner(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_xref_is_not_shared(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_alloc_lookup_le(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_alloc_get_rec(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

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
!10 = !{i8 0, i8 2}
