; ModuleID = '/llk/IR_all_yes/drivers/misc/cb710/sgbuf2.c_pt.bc'
source_filename = "../drivers/misc/cb710/sgbuf2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+cb710_sg_dwiter_read_next_block\22, \22a\22\09"
module asm "\09.weak\09__crc_cb710_sg_dwiter_read_next_block\09\09\09\09"
module asm "\09.long\09__crc_cb710_sg_dwiter_read_next_block\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cb710_sg_dwiter_read_next_block:\09\09\09\09\09"
module asm "\09.asciz \09\22cb710_sg_dwiter_read_next_block\22\09\09\09\09\09"
module asm "__kstrtabns_cb710_sg_dwiter_read_next_block:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cb710_sg_dwiter_write_next_block\22, \22a\22\09"
module asm "\09.weak\09__crc_cb710_sg_dwiter_write_next_block\09\09\09\09"
module asm "\09.long\09__crc_cb710_sg_dwiter_write_next_block\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cb710_sg_dwiter_write_next_block:\09\09\09\09\09"
module asm "\09.asciz \09\22cb710_sg_dwiter_write_next_block\22\09\09\09\09\09"
module asm "__kstrtabns_cb710_sg_dwiter_write_next_block:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }

@__kstrtab_cb710_sg_dwiter_read_next_block = external dso_local constant [0 x i8], align 1
@__kstrtabns_cb710_sg_dwiter_read_next_block = external dso_local constant [0 x i8], align 1
@__ksymtab_cb710_sg_dwiter_read_next_block = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cb710_sg_dwiter_read_next_block to i32), ptr @__kstrtab_cb710_sg_dwiter_read_next_block, ptr @__kstrtabns_cb710_sg_dwiter_read_next_block }, section "___ksymtab_gpl+cb710_sg_dwiter_read_next_block", align 4
@__kstrtab_cb710_sg_dwiter_write_next_block = external dso_local constant [0 x i8], align 1
@__kstrtabns_cb710_sg_dwiter_write_next_block = external dso_local constant [0 x i8], align 1
@__ksymtab_cb710_sg_dwiter_write_next_block = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cb710_sg_dwiter_write_next_block to i32), ptr @__kstrtab_cb710_sg_dwiter_write_next_block, ptr @__kstrtabns_cb710_sg_dwiter_write_next_block }, section "___ksymtab_gpl+cb710_sg_dwiter_write_next_block", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_cb710_sg_dwiter_read_next_block, ptr @__ksymtab_cb710_sg_dwiter_write_next_block], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cb710_sg_dwiter_read_next_block(ptr noundef %miter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %length.i.i = getelementptr inbounds %struct.sg_mapping_iter, ptr %miter, i32 0, i32 2
  %0 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length.i.i, align 4
  %consumed.i.i = getelementptr inbounds %struct.sg_mapping_iter, ptr %miter, i32 0, i32 3
  %2 = ptrtoint ptr %consumed.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %consumed.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.i.i = icmp eq i32 %1, %3
  br i1 %cmp.i.i, label %land.rhs.i.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

land.rhs.i.i:                                     ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @sg_miter_next(ptr noundef %miter) #4
  br i1 %call.i.i.i, label %sg_dwiter_is_at_end.exit.i, label %land.rhs.i.i.cleanup_crit_edge

land.rhs.i.i.cleanup_crit_edge:                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sg_dwiter_is_at_end.exit.i:                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %consumed.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %consumed.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %sg_dwiter_is_at_end.exit.i, %entry.if.end.i_crit_edge
  %5 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %length.i.i, align 4
  %7 = ptrtoint ptr %consumed.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %consumed.i.i, align 4
  %sub.i = sub i32 %6, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i)
  %cmp.i = icmp ugt i32 %sub.i, 3
  br i1 %cmp.i, label %if.then, label %if.end, !prof !13

if.then:                                          ; preds = %if.end.i
  %addr6.i = getelementptr inbounds %struct.sg_mapping_iter, ptr %miter, i32 0, i32 1
  %9 = ptrtoint ptr %addr6.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %addr6.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %10, i32 %8
  %add.i = add i32 %8, 4
  %11 = ptrtoint ptr %consumed.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add.i, ptr %consumed.i.i, align 4
  %tobool2.not = icmp eq ptr %add.ptr8.i, null
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %cond.true

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %add.ptr8.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr8.i, align 4
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %call3 = tail call fastcc i32 @sg_dwiter_read_buffer(ptr noundef %miter)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cond.true, %if.then.cleanup_crit_edge, %land.rhs.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %13, %cond.true ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %land.rhs.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sg_dwiter_read_buffer(ptr noundef %miter) unnamed_addr #0 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4, !annotation !14
  %length = getelementptr inbounds %struct.sg_mapping_iter, ptr %miter, i32 0, i32 2
  %consumed = getelementptr inbounds %struct.sg_mapping_iter, ptr %miter, i32 0, i32 3
  %addr1 = getelementptr inbounds %struct.sg_mapping_iter, ptr %miter, i32 0, i32 1
  %1 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %length, align 4
  %3 = ptrtoint ptr %consumed to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %consumed, align 4
  %sub25 = sub i32 %2, %4
  %5 = tail call i32 @llvm.umin.i32(i32 %sub25, i32 4)
  %6 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr1, align 4
  %add.ptr26 = getelementptr i8, ptr %7, i32 %4
  %8 = call ptr @memcpy(ptr %data, ptr %add.ptr26, i32 %5)
  %add27 = add i32 %5, %4
  %9 = ptrtoint ptr %consumed to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add27, ptr %consumed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub25)
  %tobool.not29 = icmp ugt i32 %sub25, 3
  br i1 %tobool.not29, label %entry.cleanup_crit_edge, label %if.end.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.preheader:                                 ; preds = %entry
  %sub428 = sub nuw nsw i32 4, %5
  br label %if.end

if.end:                                           ; preds = %sg_dwiter_next.exit.if.end_crit_edge, %if.end.preheader
  %sub431 = phi i32 [ %sub4, %sg_dwiter_next.exit.if.end_crit_edge ], [ %sub428, %if.end.preheader ]
  %10 = phi i32 [ %14, %sg_dwiter_next.exit.if.end_crit_edge ], [ %5, %if.end.preheader ]
  %addr.030 = phi ptr [ %add.ptr5, %sg_dwiter_next.exit.if.end_crit_edge ], [ %data, %if.end.preheader ]
  %add.ptr5 = getelementptr i8, ptr %addr.030, i32 %10
  %call.i = tail call zeroext i1 @sg_miter_next(ptr noundef %miter) #4
  br i1 %call.i, label %sg_dwiter_next.exit, label %do.end

sg_dwiter_next.exit:                              ; preds = %if.end
  %11 = ptrtoint ptr %consumed to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %consumed, align 4
  %12 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length, align 4
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 %sub431)
  %15 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %addr1, align 4
  %17 = call ptr @memcpy(ptr %add.ptr5, ptr %16, i32 %14)
  %18 = ptrtoint ptr %consumed to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %14, ptr %consumed, align 4
  %sub4 = sub i32 %sub431, %14
  %tobool.not = icmp eq i32 %sub4, 0
  br i1 %tobool.not, label %sg_dwiter_next.exit.cleanup_crit_edge, label %sg_dwiter_next.exit.if.end_crit_edge

sg_dwiter_next.exit.if.end_crit_edge:             ; preds = %sg_dwiter_next.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

sg_dwiter_next.exit.cleanup_crit_edge:            ; preds = %sg_dwiter_next.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %19 = call ptr @memset(ptr %add.ptr5, i32 0, i32 %sub431)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sg_dwiter_next.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %retval.0 = load i32, ptr %data, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cb710_sg_dwiter_write_next_block(ptr noundef %miter, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %length.i.i = getelementptr inbounds %struct.sg_mapping_iter, ptr %miter, i32 0, i32 2
  %0 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length.i.i, align 4
  %consumed.i.i = getelementptr inbounds %struct.sg_mapping_iter, ptr %miter, i32 0, i32 3
  %2 = ptrtoint ptr %consumed.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %consumed.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.i.i = icmp eq i32 %1, %3
  br i1 %cmp.i.i, label %land.rhs.i.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

land.rhs.i.i:                                     ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @sg_miter_next(ptr noundef %miter) #4
  br i1 %call.i.i.i, label %sg_dwiter_is_at_end.exit.i, label %land.rhs.i.i.cleanup_crit_edge

land.rhs.i.i.cleanup_crit_edge:                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sg_dwiter_is_at_end.exit.i:                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %consumed.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %consumed.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %sg_dwiter_is_at_end.exit.i, %entry.if.end.i_crit_edge
  %5 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %length.i.i, align 4
  %7 = ptrtoint ptr %consumed.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %consumed.i.i, align 4
  %sub.i = sub i32 %6, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i)
  %cmp.i = icmp ugt i32 %sub.i, 3
  br i1 %cmp.i, label %if.then, label %if.else4, !prof !13

if.then:                                          ; preds = %if.end.i
  %addr6.i = getelementptr inbounds %struct.sg_mapping_iter, ptr %miter, i32 0, i32 1
  %9 = ptrtoint ptr %addr6.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %addr6.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %10, i32 %8
  %add.i = add i32 %8, 4
  %11 = ptrtoint ptr %consumed.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add.i, ptr %consumed.i.i, align 4
  %tobool2.not = icmp eq ptr %add.ptr8.i, null
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %if.then3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %add.ptr8.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %data, ptr %add.ptr8.i, align 4
  br label %cleanup

if.else4:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @sg_dwiter_write_slow(ptr noundef %miter, i32 noundef %data)
  br label %cleanup

cleanup:                                          ; preds = %if.else4, %if.then3, %if.then.cleanup_crit_edge, %land.rhs.i.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sg_dwiter_write_slow(ptr noundef %miter, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  %data.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %data, ptr %data.addr, align 4
  %length = getelementptr inbounds %struct.sg_mapping_iter, ptr %miter, i32 0, i32 2
  %consumed = getelementptr inbounds %struct.sg_mapping_iter, ptr %miter, i32 0, i32 3
  %addr1 = getelementptr inbounds %struct.sg_mapping_iter, ptr %miter, i32 0, i32 1
  %1 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %length, align 4
  %3 = ptrtoint ptr %consumed to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %consumed, align 4
  %sub18 = sub i32 %2, %4
  %5 = tail call i32 @llvm.umin.i32(i32 %sub18, i32 4)
  %6 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr1, align 4
  %8 = call ptr @memcpy(ptr %7, ptr %data.addr, i32 %5)
  %9 = ptrtoint ptr %consumed to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %consumed, align 4
  %add19 = add i32 %10, %5
  store i32 %add19, ptr %consumed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub18)
  %tobool.not21 = icmp ugt i32 %sub18, 3
  br i1 %tobool.not21, label %entry.cleanup_crit_edge, label %if.end.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.preheader:                                 ; preds = %entry
  %sub320 = sub nuw nsw i32 4, %5
  br label %if.end

if.end:                                           ; preds = %sg_dwiter_next.exit.if.end_crit_edge, %if.end.preheader
  %sub323 = phi i32 [ %sub3, %sg_dwiter_next.exit.if.end_crit_edge ], [ %sub320, %if.end.preheader ]
  %11 = phi i32 [ %15, %sg_dwiter_next.exit.if.end_crit_edge ], [ %5, %if.end.preheader ]
  %addr.022 = phi ptr [ %add.ptr, %sg_dwiter_next.exit.if.end_crit_edge ], [ %data.addr, %if.end.preheader ]
  %call.i = tail call zeroext i1 @sg_miter_next(ptr noundef %miter) #4
  br i1 %call.i, label %sg_dwiter_next.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sg_dwiter_next.exit:                              ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %addr.022, i32 %11
  %12 = ptrtoint ptr %consumed to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %consumed, align 4
  %13 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length, align 4
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 %sub323)
  %16 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %addr1, align 4
  %18 = call ptr @memcpy(ptr %17, ptr %add.ptr, i32 %15)
  %19 = ptrtoint ptr %consumed to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %consumed, align 4
  %add = add i32 %20, %15
  store i32 %add, ptr %consumed, align 4
  %sub3 = sub i32 %sub323, %15
  %tobool.not = icmp eq i32 %sub3, 0
  br i1 %tobool.not, label %sg_dwiter_next.exit.cleanup_crit_edge, label %sg_dwiter_next.exit.if.end_crit_edge

sg_dwiter_next.exit.if.end_crit_edge:             ; preds = %sg_dwiter_next.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

sg_dwiter_next.exit.cleanup_crit_edge:            ; preds = %sg_dwiter_next.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %sg_dwiter_next.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sg_miter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @__ksymtab_cb710_sg_dwiter_read_next_block, !1, !"__ksymtab_cb710_sg_dwiter_read_next_block", i1 false, i1 false}
!1 = !{!"../drivers/misc/cb710/sgbuf2.c", i32 99, i32 1}
!2 = !{ptr @__ksymtab_cb710_sg_dwiter_write_next_block, !3, !"__ksymtab_cb710_sg_dwiter_write_next_block", i1 false, i1 false}
!3 = !{!"../drivers/misc/cb710/sgbuf2.c", i32 143, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{!"auto-init"}
