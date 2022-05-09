; ModuleID = '/llk/IR_all_yes/drivers/scsi/libfc/fc_frame.c_pt.bc'
source_filename = "../drivers/scsi/libfc/fc_frame.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+fc_frame_crc_check\22, \22a\22\09"
module asm "\09.weak\09__crc_fc_frame_crc_check\09\09\09\09"
module asm "\09.long\09__crc_fc_frame_crc_check\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fc_frame_crc_check:\09\09\09\09\09"
module asm "\09.asciz \09\22fc_frame_crc_check\22\09\09\09\09\09"
module asm "__kstrtabns_fc_frame_crc_check:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+_fc_frame_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc__fc_frame_alloc\09\09\09\09"
module asm "\09.long\09__crc__fc_frame_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__fc_frame_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22_fc_frame_alloc\22\09\09\09\09\09"
module asm "__kstrtabns__fc_frame_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fc_frame_alloc_fill\22, \22a\22\09"
module asm "\09.weak\09__crc_fc_frame_alloc_fill\09\09\09\09"
module asm "\09.long\09__crc_fc_frame_alloc_fill\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fc_frame_alloc_fill:\09\09\09\09\09"
module asm "\09.asciz \09\22fc_frame_alloc_fill\22\09\09\09\09\09"
module asm "__kstrtabns_fc_frame_alloc_fill:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.1, %union.anon.2, [48 x i8], %union.anon.3, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.5, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.1 = type { ptr }
%union.anon.2 = type { i64 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { i32, ptr }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.7, i32, i32, i32, i16, i16, %union.anon.9, i32, %union.anon.10, %union.anon.11, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.7 = type { i32 }
%union.anon.9 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/scsi/libfc/fc_frame.c\00", [34 x i8] zeroinitializer }, align 32
@__kstrtab_fc_frame_crc_check = external dso_local constant [0 x i8], align 1
@__kstrtabns_fc_frame_crc_check = external dso_local constant [0 x i8], align 1
@__ksymtab_fc_frame_crc_check = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fc_frame_crc_check to i32), ptr @__kstrtab_fc_frame_crc_check, ptr @__kstrtabns_fc_frame_crc_check }, section "___ksymtab+fc_frame_crc_check", align 4
@__kstrtab__fc_frame_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns__fc_frame_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab__fc_frame_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_fc_frame_alloc to i32), ptr @__kstrtab__fc_frame_alloc, ptr @__kstrtabns__fc_frame_alloc }, section "___ksymtab+_fc_frame_alloc", align 4
@__kstrtab_fc_frame_alloc_fill = external dso_local constant [0 x i8], align 1
@__kstrtabns_fc_frame_alloc_fill = external dso_local constant [0 x i8], align 1
@__ksymtab_fc_frame_alloc_fill = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fc_frame_alloc_fill to i32), ptr @__kstrtab_fc_frame_alloc_fill, ptr @__kstrtabns_fc_frame_alloc_fill }, section "___ksymtab+fc_frame_alloc_fill", align 4
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [33 x i8] c"../drivers/scsi/libfc/fc_frame.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 29, i32 2 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab__fc_frame_alloc, ptr @__ksymtab_fc_frame_alloc_fill, ptr @__ksymtab_fc_frame_crc_check, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fc_frame_crc_check(ptr nocapture noundef %fp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 7
  %0 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not.i.not = icmp eq i32 %1, 0
  br i1 %tobool.i.not.i.not, label %entry.if.end_crit_edge, label %do.end, !prof !17

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 29, i32 noundef 9, ptr noundef null) #3
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %fr_flags = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 3, i32 20
  %2 = ptrtoint ptr %fr_flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fr_flags, align 4
  %4 = and i8 %3, -2
  store i8 %4, ptr %fr_flags, align 4
  %len23 = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %5 = ptrtoint ptr %len23 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len23, align 4
  %add = add i32 %6, 3
  %and24 = and i32 %add, -4
  %data = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %call26 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %8, i32 noundef %and24) #6
  %fr_crc = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 3, i32 12
  %9 = ptrtoint ptr %fr_crc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fr_crc, align 4
  %11 = xor i32 %call26, %10
  %xor = xor i32 %11, -1
  ret i32 %xor
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @_fc_frame_alloc(i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rem = and i32 %len, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp eq i32 %rem, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !17

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 48, i32 noundef 9, ptr noundef null) #3
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %add21 = add i32 %len, 192
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add21, i32 noundef 2592, i32 noundef 1, i32 noundef -1) #3
  %tobool22.not = icmp eq ptr %call.i, null
  br i1 %tobool22.not, label %if.end.cleanup_crit_edge, label %if.end24

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end24:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %add = add i32 %len, 24
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 160
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %3, i32 160
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %cb.i, align 8
  %fr_seq.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 4
  %5 = ptrtoint ptr %fr_seq.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %fr_seq.i, align 4
  %fr_flags.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 20
  %6 = ptrtoint ptr %fr_flags.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %fr_flags.i, align 4
  %fr_encaps.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 21
  %7 = ptrtoint ptr %fr_encaps.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %fr_encaps.i, align 1
  %call25 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %add) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end.cleanup_crit_edge
  ret ptr %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fc_frame_alloc_fill(ptr nocapture readnone %lp, i32 noundef %payload_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rem = and i32 %payload_len, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp eq i32 %rem, 0
  %sub = sub nuw nsw i32 4, %rem
  %spec.select = select i1 %cmp.not, i32 0, i32 %sub
  %add = add i32 %spec.select, %payload_len
  %rem.i = and i32 %add, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp.not.i = icmp eq i32 %rem.i, 0
  br i1 %cmp.not.i, label %entry.if.end.i_crit_edge, label %do.end.i, !prof !17

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 48, i32 noundef 9, ptr noundef null) #3
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %add21.i = add i32 %add, 192
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add21.i, i32 noundef 2592, i32 noundef 1, i32 noundef -1) #3
  %tobool22.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool22.not.i, label %if.end.i.if.end4_crit_edge, label %if.then1

if.end.i.if.end4_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

if.then1:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %add.i = add i32 %add, 24
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 160
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %3, i32 160
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %cb.i.i, align 8
  %fr_seq.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 4
  %5 = ptrtoint ptr %fr_seq.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %fr_seq.i.i, align 4
  %fr_flags.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 20
  %6 = ptrtoint ptr %fr_flags.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %fr_flags.i.i, align 4
  %fr_encaps.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 21
  %7 = ptrtoint ptr %fr_encaps.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %fr_encaps.i.i, align 1
  %call25.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %add.i) #3
  %8 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %payload_len
  %10 = call ptr @memset(ptr %add.ptr, i32 0, i32 %spec.select)
  %add3 = add i32 %payload_len, 24
  tail call void @skb_trim(ptr noundef nonnull %call.i.i, i32 noundef %add3) #3
  br label %if.end4

if.end4:                                          ; preds = %if.then1, %if.end.i.if.end4_crit_edge
  ret ptr %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/libfc/fc_frame.c", i32 29, i32 2}
!2 = !{ptr @__ksymtab_fc_frame_crc_check, !3, !"__ksymtab_fc_frame_crc_check", i1 false, i1 false}
!3 = !{!"../drivers/scsi/libfc/fc_frame.c", i32 37, i32 1}
!4 = !{ptr @__ksymtab__fc_frame_alloc, !5, !"__ksymtab__fc_frame_alloc", i1 false, i1 false}
!5 = !{!"../drivers/scsi/libfc/fc_frame.c", i32 60, i32 1}
!6 = !{ptr @__ksymtab_fc_frame_alloc_fill, !7, !"__ksymtab_fc_frame_alloc_fill", i1 false, i1 false}
!7 = !{!"../drivers/scsi/libfc/fc_frame.c", i32 79, i32 1}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{!"branch_weights", i32 2000, i32 1}
