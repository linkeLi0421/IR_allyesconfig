; ModuleID = '/llk/IR_all_yes/drivers/md/persistent-data/dm-space-map-disk.c_pt.bc'
source_filename = "../drivers/md/persistent-data/dm-space-map-disk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+dm_sm_disk_create\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_sm_disk_create\09\09\09\09"
module asm "\09.long\09__crc_dm_sm_disk_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_sm_disk_create:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_sm_disk_create\22\09\09\09\09\09"
module asm "__kstrtabns_dm_sm_disk_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dm_sm_disk_open\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_sm_disk_open\09\09\09\09"
module asm "\09.long\09__crc_dm_sm_disk_open\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_sm_disk_open:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_sm_disk_open\22\09\09\09\09\09"
module asm "__kstrtabns_dm_sm_disk_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dm_space_map = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sm_disk = type { %struct.dm_space_map, %struct.ll_disk, %struct.ll_disk, i64, i64 }
%struct.ll_disk = type { ptr, %struct.dm_btree_info, %struct.dm_btree_info, i32, i32, i64, i64, i64, i64, %struct.disk_metadata_index, ptr, ptr, ptr, ptr, ptr, ptr, i8, [64 x %struct.ie_cache] }
%struct.dm_btree_info = type { ptr, i32, %struct.dm_btree_value_type }
%struct.dm_btree_value_type = type { ptr, i32, ptr, ptr, ptr }
%struct.disk_metadata_index = type { i32, i32, i64, [255 x %struct.disk_index_entry] }
%struct.disk_index_entry = type { i64, i32, i32 }
%struct.ie_cache = type { i8, i8, i64, %struct.disk_index_entry }

@ops = internal constant { %struct.dm_space_map, [40 x i8] } { %struct.dm_space_map { ptr @sm_disk_destroy, ptr @sm_disk_extend, ptr @sm_disk_get_nr_blocks, ptr @sm_disk_get_nr_free, ptr @sm_disk_get_count, ptr @sm_disk_count_is_more_than_one, ptr @sm_disk_set_count, ptr @sm_disk_commit, ptr @sm_disk_inc_blocks, ptr @sm_disk_dec_blocks, ptr @sm_disk_new_block, ptr @sm_disk_root_size, ptr @sm_disk_copy_root, ptr null }, [40 x i8] zeroinitializer }, align 32
@__kstrtab_dm_sm_disk_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_sm_disk_create = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_sm_disk_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_sm_disk_create to i32), ptr @__kstrtab_dm_sm_disk_create, ptr @__kstrtabns_dm_sm_disk_create }, section "___ksymtab_gpl+dm_sm_disk_create", align 4
@__kstrtab_dm_sm_disk_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_sm_disk_open = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_sm_disk_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_sm_disk_open to i32), ptr @__kstrtab_dm_sm_disk_open, ptr @__kstrtabns_dm_sm_disk_open }, section "___ksymtab_gpl+dm_sm_disk_open", align 4
@___asan_gen_.1 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.2 = private constant [50 x i8] c"../drivers/md/persistent-data/dm-space-map-disk.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 199, i32 28 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_dm_sm_disk_create, ptr @__ksymtab_dm_sm_disk_open, ptr @ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dm_sm_disk_create(ptr noundef %tm, i64 noundef %nr_blocks) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 12632, i32 noundef 3264, i32 noundef 2) #11
  %tobool.not = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %begin = getelementptr inbounds %struct.sm_disk, ptr %call1.i.i, i32 0, i32 3
  %nr_allocated_this_transaction = getelementptr inbounds %struct.sm_disk, ptr %call1.i.i, i32 0, i32 4
  %0 = call ptr @memset(ptr %begin, i32 0, i32 16)
  %1 = call ptr @memcpy(ptr %call1.i.i, ptr @ops, i32 56)
  %ll = getelementptr inbounds %struct.sm_disk, ptr %call1.i.i, i32 0, i32 1
  %call2 = tail call i32 @sm_ll_new_disk(ptr noundef %ll, ptr noundef %tm) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.bad_crit_edge

if.end.bad_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %bad

if.end5:                                          ; preds = %if.end
  %call7 = tail call i32 @sm_ll_extend(ptr noundef %ll, i64 noundef %nr_blocks) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.bad_crit_edge

if.end5.bad_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %bad

if.end10:                                         ; preds = %if.end5
  %call.i = tail call i32 @sm_ll_commit(ptr noundef %ll) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sm_disk_commit.exit.thread, label %if.end10.bad_crit_edge

if.end10.bad_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %bad

sm_disk_commit.exit.thread:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %old_ll.i = getelementptr inbounds %struct.sm_disk, ptr %call1.i.i, i32 0, i32 2
  %2 = call ptr @memcpy(ptr %old_ll.i, ptr %ll, i32 6280)
  %3 = ptrtoint ptr %nr_allocated_this_transaction to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %nr_allocated_this_transaction, align 16
  br label %cleanup

bad:                                              ; preds = %if.end10.bad_crit_edge, %if.end5.bad_crit_edge, %if.end.bad_crit_edge
  %r.0 = phi i32 [ %call2, %if.end.bad_crit_edge ], [ %call7, %if.end5.bad_crit_edge ], [ %call.i, %if.end10.bad_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call1.i.i) #8
  %4 = inttoptr i32 %r.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %bad, %sm_disk_commit.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %4, %bad ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %call1.i.i, %sm_disk_commit.exit.thread ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sm_ll_new_disk(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sm_ll_extend(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm_disk_commit(ptr noundef %sm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ll = getelementptr inbounds %struct.sm_disk, ptr %sm, i32 0, i32 1
  %call = tail call i32 @sm_ll_commit(ptr noundef %ll) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %old_ll = getelementptr inbounds %struct.sm_disk, ptr %sm, i32 0, i32 2
  %0 = call ptr @memcpy(ptr %old_ll, ptr %ll, i32 6280)
  %nr_allocated_this_transaction = getelementptr inbounds %struct.sm_disk, ptr %sm, i32 0, i32 4
  %1 = ptrtoint ptr %nr_allocated_this_transaction to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %nr_allocated_this_transaction, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dm_sm_disk_open(ptr noundef %tm, ptr noundef %root_le, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 12632, i32 noundef 3264, i32 noundef 2) #11
  %tobool.not = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %begin = getelementptr inbounds %struct.sm_disk, ptr %call1.i.i, i32 0, i32 3
  %nr_allocated_this_transaction = getelementptr inbounds %struct.sm_disk, ptr %call1.i.i, i32 0, i32 4
  %0 = call ptr @memset(ptr %begin, i32 0, i32 16)
  %1 = call ptr @memcpy(ptr %call1.i.i, ptr @ops, i32 56)
  %ll = getelementptr inbounds %struct.sm_disk, ptr %call1.i.i, i32 0, i32 1
  %call2 = tail call i32 @sm_ll_open_disk(ptr noundef %ll, ptr noundef %tm, ptr noundef %root_le, i32 noundef %len) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.bad_crit_edge

if.end.bad_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %bad

if.end5:                                          ; preds = %if.end
  %call.i = tail call i32 @sm_ll_commit(ptr noundef %ll) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sm_disk_commit.exit.thread, label %if.end5.bad_crit_edge

if.end5.bad_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %bad

sm_disk_commit.exit.thread:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %old_ll.i = getelementptr inbounds %struct.sm_disk, ptr %call1.i.i, i32 0, i32 2
  %2 = call ptr @memcpy(ptr %old_ll.i, ptr %ll, i32 6280)
  %3 = ptrtoint ptr %nr_allocated_this_transaction to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %nr_allocated_this_transaction, align 16
  br label %cleanup

bad:                                              ; preds = %if.end5.bad_crit_edge, %if.end.bad_crit_edge
  %r.0 = phi i32 [ %call2, %if.end.bad_crit_edge ], [ %call.i, %if.end5.bad_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call1.i.i) #8
  %4 = inttoptr i32 %r.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %bad, %sm_disk_commit.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %4, %bad ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %call1.i.i, %sm_disk_commit.exit.thread ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sm_ll_open_disk(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sm_disk_destroy(ptr noundef %sm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %sm) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm_disk_extend(ptr noundef %sm, i64 noundef %extra_blocks) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ll = getelementptr inbounds %struct.sm_disk, ptr %sm, i32 0, i32 1
  %call = tail call i32 @sm_ll_extend(ptr noundef %ll, i64 noundef %extra_blocks) #8
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sm_disk_get_nr_blocks(ptr nocapture noundef readonly %sm, ptr nocapture noundef writeonly %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_blocks = getelementptr inbounds %struct.sm_disk, ptr %sm, i32 0, i32 2, i32 5
  %0 = ptrtoint ptr %nr_blocks to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %nr_blocks, align 8
  %2 = ptrtoint ptr %count to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %count, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sm_disk_get_nr_free(ptr nocapture noundef readonly %sm, ptr nocapture noundef writeonly %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_blocks = getelementptr inbounds %struct.sm_disk, ptr %sm, i32 0, i32 2, i32 5
  %0 = ptrtoint ptr %nr_blocks to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %nr_blocks, align 8
  %nr_allocated = getelementptr inbounds %struct.sm_disk, ptr %sm, i32 0, i32 2, i32 6
  %2 = ptrtoint ptr %nr_allocated to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %nr_allocated, align 8
  %nr_allocated_this_transaction = getelementptr inbounds %struct.sm_disk, ptr %sm, i32 0, i32 4
  %4 = ptrtoint ptr %nr_allocated_this_transaction to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %nr_allocated_this_transaction, align 8
  %6 = add i64 %3, %5
  %sub2 = sub i64 %1, %6
  %7 = ptrtoint ptr %count to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %sub2, ptr %count, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm_disk_get_count(ptr noundef %sm, i64 noundef %b, ptr noundef %result) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ll = getelementptr inbounds %struct.sm_disk, ptr %sm, i32 0, i32 1
  %call = tail call i32 @sm_ll_lookup(ptr noundef %ll, i64 noundef %b, ptr noundef %result) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm_disk_count_is_more_than_one(ptr noundef %sm, i64 noundef %b, ptr nocapture noundef writeonly %result) #0 align 64 {
entry:
  %count = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count) #8
  %0 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %count, align 4, !annotation !15
  %ll.i = getelementptr inbounds %struct.sm_disk, ptr %sm, i32 0, i32 1
  %call.i = call i32 @sm_ll_lookup(ptr noundef %ll.i, i64 noundef %b, ptr noundef nonnull %count) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp ugt i32 %2, 1
  %conv = zext i1 %cmp to i32
  %3 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %result, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count) #8
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm_disk_set_count(ptr noundef %sm, i64 noundef %b, i32 noundef %count) #0 align 64 {
entry:
  %nr_allocations = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_allocations) #8
  %0 = ptrtoint ptr %nr_allocations to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %nr_allocations, align 4, !annotation !15
  %ll = getelementptr inbounds %struct.sm_disk, ptr %sm, i32 0, i32 1
  %call = call i32 @sm_ll_insert(ptr noundef %ll, i64 noundef %b, i32 noundef %count, ptr noundef nonnull %nr_allocations) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %nr_allocations to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nr_allocations, align 4
  %conv = sext i32 %2 to i64
  %nr_allocated_this_transaction = getelementptr inbounds %struct.sm_disk, ptr %sm, i32 0, i32 4
  %3 = ptrtoint ptr %nr_allocated_this_transaction to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %nr_allocated_this_transaction, align 8
  %add = add i64 %4, %conv
  store i64 %add, ptr %nr_allocated_this_transaction, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_allocations) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm_disk_inc_blocks(ptr noundef %sm, i64 noundef %b, i64 noundef %e) #0 align 64 {
entry:
  %nr_allocations = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_allocations) #8
  %0 = ptrtoint ptr %nr_allocations to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %nr_allocations, align 4, !annotation !15
  %ll = getelementptr inbounds %struct.sm_disk, ptr %sm, i32 0, i32 1
  %call = call i32 @sm_ll_inc(ptr noundef %ll, i64 noundef %b, i64 noundef %e, ptr noundef nonnull %nr_allocations) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %nr_allocations to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nr_allocations, align 4
  %conv = sext i32 %2 to i64
  %nr_allocated_this_transaction = getelementptr inbounds %struct.sm_disk, ptr %sm, i32 0, i32 4
  %3 = ptrtoint ptr %nr_allocated_this_transaction to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %nr_allocated_this_transaction, align 8
  %add = add i64 %4, %conv
  store i64 %add, ptr %nr_allocated_this_transaction, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_allocations) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm_disk_dec_blocks(ptr noundef %sm, i64 noundef %b, i64 noundef %e) #0 align 64 {
entry:
  %nr_allocations = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_allocations) #8
  %0 = ptrtoint ptr %nr_allocations to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %nr_allocations, align 4, !annotation !15
  %ll = getelementptr inbounds %struct.sm_disk, ptr %sm, i32 0, i32 1
  %call = call i32 @sm_ll_dec(ptr noundef %ll, i64 noundef %b, i64 noundef %e, ptr noundef nonnull %nr_allocations) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %nr_allocations to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nr_allocations, align 4
  %conv = sext i32 %2 to i64
  %nr_allocated_this_transaction = getelementptr inbounds %struct.sm_disk, ptr %sm, i32 0, i32 4
  %3 = ptrtoint ptr %nr_allocated_this_transaction to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %nr_allocated_this_transaction, align 8
  %add = add i64 %4, %conv
  store i64 %add, ptr %nr_allocated_this_transaction, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_allocations) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm_disk_new_block(ptr noundef %sm, ptr noundef %b) #0 align 64 {
entry:
  %nr_allocations = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_allocations) #8
  %0 = ptrtoint ptr %nr_allocations to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %nr_allocations, align 4, !annotation !15
  %old_ll = getelementptr inbounds %struct.sm_disk, ptr %sm, i32 0, i32 2
  %ll = getelementptr inbounds %struct.sm_disk, ptr %sm, i32 0, i32 1
  %begin = getelementptr inbounds %struct.sm_disk, ptr %sm, i32 0, i32 3
  %1 = ptrtoint ptr %begin to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %begin, align 8
  %nr_blocks = getelementptr inbounds %struct.sm_disk, ptr %sm, i32 0, i32 1, i32 5
  %3 = ptrtoint ptr %nr_blocks to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %nr_blocks, align 8
  %call = tail call i32 @sm_ll_find_common_free_block(ptr noundef %old_ll, ptr noundef %ll, i64 noundef %2, i64 noundef %4, ptr noundef %b) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call)
  %cmp = icmp eq i32 %call, -28
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %begin to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %begin, align 8
  %call5 = tail call i32 @sm_ll_find_common_free_block(ptr noundef %old_ll, ptr noundef %ll, i64 noundef 0, i64 noundef %6, ptr noundef %b) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %r.0 = phi i32 [ %call5, %if.then ], [ %call, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0)
  %tobool.not = icmp eq i32 %r.0, 0
  br i1 %tobool.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %7 = ptrtoint ptr %b to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %b, align 8
  %add = add i64 %8, 1
  %9 = ptrtoint ptr %begin to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %add, ptr %begin, align 8
  %10 = load i64, ptr %b, align 8
  %add10 = add i64 %10, 1
  %call11 = call i32 @sm_ll_inc(ptr noundef %ll, i64 noundef %10, i64 noundef %add10, ptr noundef nonnull %nr_allocations) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %nr_allocations to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_allocations, align 4
  %conv = sext i32 %12 to i64
  %nr_allocated_this_transaction = getelementptr inbounds %struct.sm_disk, ptr %sm, i32 0, i32 4
  %13 = ptrtoint ptr %nr_allocated_this_transaction to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %nr_allocated_this_transaction, align 8
  %add14 = add i64 %14, %conv
  store i64 %add14, ptr %nr_allocated_this_transaction, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %if.end.cleanup_crit_edge ], [ 0, %if.then13 ], [ %call11, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_allocations) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sm_disk_root_size(ptr nocapture noundef readnone %sm, ptr nocapture noundef writeonly %result) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 32, ptr %result, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sm_disk_copy_root(ptr nocapture noundef readonly %sm, ptr nocapture noundef writeonly %where_le, i32 noundef %max) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %max)
  %cmp = icmp ult i32 %max, 32
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ref_count_root = getelementptr inbounds %struct.sm_disk, ptr %sm, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %ref_count_root to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ref_count_root, align 8
  %2 = tail call i64 @llvm.bswap.i64(i64 %1)
  %bitmap_root = getelementptr inbounds %struct.sm_disk, ptr %sm, i32 0, i32 1, i32 7
  %3 = ptrtoint ptr %bitmap_root to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %bitmap_root, align 8
  %5 = tail call i64 @llvm.bswap.i64(i64 %4)
  %nr_allocated = getelementptr inbounds %struct.sm_disk, ptr %sm, i32 0, i32 1, i32 6
  %6 = ptrtoint ptr %nr_allocated to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %nr_allocated, align 8
  %8 = tail call i64 @llvm.bswap.i64(i64 %7)
  %nr_blocks = getelementptr inbounds %struct.sm_disk, ptr %sm, i32 0, i32 1, i32 5
  %9 = ptrtoint ptr %nr_blocks to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %nr_blocks, align 8
  %11 = tail call i64 @llvm.bswap.i64(i64 %10)
  %12 = ptrtoint ptr %where_le to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %11, ptr %where_le, align 1
  %root_le.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %where_le, i32 8
  %13 = ptrtoint ptr %root_le.sroa.5.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %8, ptr %root_le.sroa.5.0..sroa_idx, align 1
  %root_le.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %where_le, i32 16
  %14 = ptrtoint ptr %root_le.sroa.7.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %5, ptr %root_le.sroa.7.0..sroa_idx, align 1
  %root_le.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %where_le, i32 24
  %15 = ptrtoint ptr %root_le.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 %2, ptr %root_le.sroa.9.0..sroa_idx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -28, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sm_ll_lookup(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sm_ll_insert(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sm_ll_inc(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sm_ll_dec(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sm_ll_find_common_free_block(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sm_ll_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @__ksymtab_dm_sm_disk_create, !1, !"__ksymtab_dm_sm_disk_create", i1 false, i1 false}
!1 = !{!"../drivers/md/persistent-data/dm-space-map-disk.c", i32 248, i32 1}
!2 = !{ptr @__ksymtab_dm_sm_disk_open, !3, !"__ksymtab_dm_sm_disk_open", i1 false, i1 false}
!3 = !{!"../drivers/md/persistent-data/dm-space-map-disk.c", i32 278, i32 1}
!4 = !{ptr @ops, !5, !"ops", i1 false, i1 false}
!5 = !{!"../drivers/md/persistent-data/dm-space-map-disk.c", i32 199, i32 28}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"auto-init"}
