; ModuleID = '/llk/IR_all_yes/lib/seq_buf.c_pt.bc'
source_filename = "../lib/seq_buf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+seq_buf_printf\22, \22a\22\09"
module asm "\09.weak\09__crc_seq_buf_printf\09\09\09\09"
module asm "\09.long\09__crc_seq_buf_printf\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_seq_buf_printf:\09\09\09\09\09"
module asm "\09.asciz \09\22seq_buf_printf\22\09\09\09\09\09"
module asm "__kstrtabns_seq_buf_printf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.__va_list = type { ptr }

@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lib/seq_buf.c\00", [18 x i8] zeroinitializer }, align 32
@__kstrtab_seq_buf_printf = external dso_local constant [0 x i8], align 1
@__kstrtabns_seq_buf_printf = external dso_local constant [0 x i8], align 1
@__ksymtab_seq_buf_printf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @seq_buf_printf to i32), ptr @__kstrtab_seq_buf_printf, ptr @__kstrtabns_seq_buf_printf }, section "___ksymtab_gpl+seq_buf_printf", align 4
@hex_asc = external dso_local local_unnamed_addr constant [0 x i8], align 1
@seq_buf_putmem_hex.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s%p: %s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s%.8x: %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s%s\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seq_buf.h\00", [40 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 61, i32 2 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 382, i32 28 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 386, i32 28 }
@___asan_gen_.18 = private constant [17 x i8] c"../lib/seq_buf.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 390, i32 28 }
@___asan_gen_.21 = private unnamed_addr constant [27 x i8] c"../include/linux/seq_buf.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 109, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 230, i32 6 }
@___asan_gen_.27 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 214, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 174, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_seq_buf_printf, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @seq_buf_print_seq(ptr noundef %m, ptr nocapture noundef readonly %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %len.i = getelementptr inbounds %struct.seq_buf, ptr %s, i32 0, i32 2
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 8
  %size.i = getelementptr inbounds %struct.seq_buf, ptr %s, i32 0, i32 1
  %2 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i, align 4
  %4 = tail call i32 @llvm.umin.i32(i32 %1, i32 %3) #9
  %5 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s, align 8
  %call1 = tail call i32 @seq_write(ptr noundef %m, ptr noundef %6, i32 noundef %4) #9
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @seq_buf_vprintf(ptr nocapture noundef %s, ptr nocapture noundef readonly %fmt, [1 x i32] %args.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %size = getelementptr inbounds %struct.seq_buf, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !29

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %len19 = getelementptr inbounds %struct.seq_buf, ptr %s, i32 0, i32 2
  %2 = ptrtoint ptr %len19 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len19, align 8
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp21 = icmp ugt i32 %5, %3
  br i1 %cmp21, label %if.then22, label %if.end.if.end34_crit_edge

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then22:                                        ; preds = %if.end
  %6 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 %3
  %sub = sub i32 %5, %3
  %call = tail call i32 @vsnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef %fmt, [1 x i32] %args.coerce)
  %8 = ptrtoint ptr %len19 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len19, align 8
  %add = add i32 %9, %call
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %11)
  %cmp29 = icmp ult i32 %add, %11
  br i1 %cmp29, label %if.then22.cleanup_crit_edge, label %if.then22.if.end34_crit_edge

if.then22.if.end34_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end34:                                         ; preds = %if.then22.if.end34_crit_edge, %if.end.if.end34_crit_edge
  %12 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size, align 4
  %add.i = add i32 %13, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.then22.cleanup_crit_edge
  %storemerge = phi i32 [ %add.i, %if.end34 ], [ %add, %if.then22.cleanup_crit_edge ]
  %retval.0 = phi i32 [ -1, %if.end34 ], [ 0, %if.then22.cleanup_crit_edge ]
  %14 = ptrtoint ptr %len19 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %storemerge, ptr %len19, align 8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @seq_buf_printf(ptr nocapture noundef %s, ptr nocapture noundef readonly %fmt, ...) #0 align 64 {
entry:
  %ap = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ap) #9
  %0 = ptrtoint ptr %ap to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ap, align 4, !annotation !30
  call void @llvm.va_start(ptr nonnull %ap)
  %1 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %1)
  %.fca.0.load = load i32, ptr %ap, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %size.i = getelementptr inbounds %struct.seq_buf, ptr %s, i32 0, i32 1
  %2 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %do.end.i, label %entry.if.end.i_crit_edge, !prof !29

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %len19.i = getelementptr inbounds %struct.seq_buf, ptr %s, i32 0, i32 2
  %4 = ptrtoint ptr %len19.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len19.i, align 8
  %6 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp21.i = icmp ugt i32 %7, %5
  br i1 %cmp21.i, label %if.then22.i, label %if.end.i.if.end34.i_crit_edge

if.end.i.if.end34.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i

if.then22.i:                                      ; preds = %if.end.i
  %8 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 %5
  %sub.i = sub i32 %7, %5
  %call.i = call i32 @vsnprintf(ptr noundef %add.ptr.i, i32 noundef %sub.i, ptr noundef %fmt, [1 x i32] %.fca.0.insert) #9
  %10 = ptrtoint ptr %len19.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len19.i, align 8
  %add.i = add i32 %11, %call.i
  %12 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %13)
  %cmp29.i = icmp ult i32 %add.i, %13
  br i1 %cmp29.i, label %if.then22.i.seq_buf_vprintf.exit_crit_edge, label %if.then22.i.if.end34.i_crit_edge

if.then22.i.if.end34.i_crit_edge:                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i

if.then22.i.seq_buf_vprintf.exit_crit_edge:       ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %seq_buf_vprintf.exit

if.end34.i:                                       ; preds = %if.then22.i.if.end34.i_crit_edge, %if.end.i.if.end34.i_crit_edge
  %14 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size.i, align 4
  %add.i.i = add i32 %15, 1
  br label %seq_buf_vprintf.exit

seq_buf_vprintf.exit:                             ; preds = %if.end34.i, %if.then22.i.seq_buf_vprintf.exit_crit_edge
  %storemerge.i = phi i32 [ %add.i.i, %if.end34.i ], [ %add.i, %if.then22.i.seq_buf_vprintf.exit_crit_edge ]
  %retval.0.i = phi i32 [ -1, %if.end34.i ], [ 0, %if.then22.i.seq_buf_vprintf.exit_crit_edge ]
  %16 = ptrtoint ptr %len19.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %storemerge.i, ptr %len19.i, align 8
  call void @llvm.va_end(ptr nonnull %ap)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ap) #9
  ret i32 %retval.0.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @seq_buf_bprintf(ptr nocapture noundef %s, ptr noundef %fmt, ptr noundef %binary) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %len.i.i = getelementptr inbounds %struct.seq_buf, ptr %s, i32 0, i32 2
  %0 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i.i, align 8
  %size.i.i = getelementptr inbounds %struct.seq_buf, ptr %s, i32 0, i32 1
  %2 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i.i, align 4
  %4 = tail call i32 @llvm.usub.sat.i32(i32 %3, i32 %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !29

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 119, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len.i.i, align 8
  %7 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp21 = icmp ult i32 %6, %8
  br i1 %cmp21, label %if.then22, label %if.end.if.end32_crit_edge

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then22:                                        ; preds = %if.end
  %9 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s, align 8
  %add.ptr = getelementptr i8, ptr %10, i32 %6
  %call24 = tail call i32 @bstr_printf(ptr noundef %add.ptr, i32 noundef %4, ptr noundef %fmt, ptr noundef %binary) #9
  %11 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i.i, align 8
  %add = add i32 %12, %call24
  %13 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %14)
  %cmp27 = icmp ult i32 %add, %14
  br i1 %cmp27, label %if.then22.cleanup_crit_edge, label %if.then22.if.end32_crit_edge

if.then22.if.end32_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end32:                                         ; preds = %if.then22.if.end32_crit_edge, %if.end.if.end32_crit_edge
  %15 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size.i.i, align 4
  %add.i = add i32 %16, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then22.cleanup_crit_edge
  %storemerge = phi i32 [ %add.i, %if.end32 ], [ %add, %if.then22.cleanup_crit_edge ]
  %retval.0 = phi i32 [ -1, %if.end32 ], [ 0, %if.then22.cleanup_crit_edge ]
  %17 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %storemerge, ptr %len.i.i, align 8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bstr_printf(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @seq_buf_puts(ptr nocapture noundef %s, ptr nocapture noundef readonly %str) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @strlen(ptr noundef %str) #10
  %size = getelementptr inbounds %struct.seq_buf, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !29

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 146, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %add = add i32 %call, 1
  %len1.i = getelementptr inbounds %struct.seq_buf, ptr %s, i32 0, i32 2
  %2 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len1.i, align 8
  %add.i = add i32 %3, %add
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %5)
  %cmp.i.not = icmp ugt i32 %add.i, %5
  br i1 %cmp.i.not, label %if.end24, label %if.then20

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 %3
  %8 = call ptr @memcpy(ptr %add.ptr, ptr %str, i32 %add)
  %9 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len1.i, align 8
  %add23 = add i32 %10, %call
  br label %cleanup

if.end24:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.i36 = add nuw i32 %5, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then20
  %storemerge = phi i32 [ %add.i36, %if.end24 ], [ %add23, %if.then20 ]
  %retval.0 = phi i32 [ -1, %if.end24 ], [ 0, %if.then20 ]
  %11 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %storemerge, ptr %len1.i, align 8
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @seq_buf_putc(ptr nocapture noundef %s, i8 noundef zeroext %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %size = getelementptr inbounds %struct.seq_buf, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !29

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 172, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %len1.i = getelementptr inbounds %struct.seq_buf, ptr %s, i32 0, i32 2
  %2 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len1.i, align 8
  %add.i = add i32 %3, 1
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %5)
  %cmp.i.not = icmp ugt i32 %add.i, %5
  br i1 %cmp.i.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s, align 8
  %8 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add.i, ptr %len1.i, align 8
  %arrayidx = getelementptr i8, ptr %7, i32 %3
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %c, ptr %arrayidx, align 1
  br label %return

if.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.i27 = add nuw i32 %5, 1
  %10 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add.i27, ptr %len1.i, align 8
  br label %return

return:                                           ; preds = %if.end20, %if.then19
  %retval.0 = phi i32 [ 0, %if.then19 ], [ -1, %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @seq_buf_putmem(ptr nocapture noundef %s, ptr nocapture noundef readonly %mem, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %size = getelementptr inbounds %struct.seq_buf, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !29

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 196, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %len1.i = getelementptr inbounds %struct.seq_buf, ptr %s, i32 0, i32 2
  %2 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len1.i, align 8
  %add.i = add i32 %3, %len
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %5)
  %cmp.i.not = icmp ugt i32 %add.i, %5
  br i1 %cmp.i.not, label %if.end22, label %if.then19

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 %3
  %8 = call ptr @memcpy(ptr %add.ptr, ptr %mem, i32 %len)
  %9 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len1.i, align 8
  %add = add i32 %10, %len
  br label %return

if.end22:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.i32 = add nuw i32 %5, 1
  br label %return

return:                                           ; preds = %if.end22, %if.then19
  %storemerge = phi i32 [ %add.i32, %if.end22 ], [ %add, %if.then19 ]
  %retval.0 = phi i32 [ -1, %if.end22 ], [ 0, %if.then19 ]
  %11 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %storemerge, ptr %len1.i, align 8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @seq_buf_putmem_hex(ptr nocapture noundef %s, ptr nocapture noundef readonly %mem, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %hex = alloca [17 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %hex) #9
  %size = getelementptr inbounds %struct.seq_buf, ptr %s, i32 0, i32 1
  %0 = call ptr @memset(ptr %hex, i32 255, i32 17)
  %1 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !29

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool22.not130 = icmp eq i32 %len, 0
  br i1 %tobool22.not130, label %if.end.cleanup_crit_edge, label %while.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end
  %len1.i.i = getelementptr inbounds %struct.seq_buf, ptr %s, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end96.while.body_crit_edge, %while.body.lr.ph
  %len.addr.0132 = phi i32 [ %len, %while.body.lr.ph ], [ %sub, %if.end96.while.body_crit_edge ]
  %data.0131 = phi ptr [ %mem, %while.body.lr.ph ], [ %add.ptr, %if.end96.while.body_crit_edge ]
  %3 = tail call i32 @llvm.umin.i32(i32 %len.addr.0132, i32 8)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %while.body
  %j.0129 = phi i32 [ %inc32, %for.body.for.body_crit_edge ], [ 0, %while.body ]
  %i.0128 = phi i32 [ %inc34, %for.body.for.body_crit_edge ], [ 0, %while.body ]
  %arrayidx = getelementptr i8, ptr %data.0131, i32 %i.0128
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = lshr i8 %5, 4
  %7 = zext i8 %6 to i32
  %arrayidx26 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx26, align 1
  %inc = or i32 %j.0129, 1
  %arrayidx27 = getelementptr [17 x i8], ptr %hex, i32 0, i32 %j.0129
  %10 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %arrayidx27, align 1
  %11 = and i8 %5, 15
  %and30 = zext i8 %11 to i32
  %arrayidx31 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and30
  %12 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx31, align 1
  %inc32 = add nuw nsw i32 %j.0129, 2
  %arrayidx33 = getelementptr [17 x i8], ptr %hex, i32 0, i32 %inc
  %14 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx33, align 1
  %inc34 = add nuw nsw i32 %i.0128, 1
  %exitcond.not = icmp eq i32 %inc34, %3
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  %div139 = lshr exact i32 %inc32, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div139, i32 %len.addr.0132)
  %cmp37 = icmp ugt i32 %div139, %len.addr.0132
  br i1 %cmp37, label %land.rhs, label %if.end91.critedge

land.rhs:                                         ; preds = %for.end
  %.b123 = load i1, ptr @seq_buf_putmem_hex.__already_done, align 1
  br i1 %.b123, label %land.rhs.cleanup_crit_edge, label %if.then54, !prof !31

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then54:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @seq_buf_putmem_hex.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 244, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end91.critedge:                                ; preds = %for.end
  %inc92 = or i32 %inc32, 1
  %arrayidx93 = getelementptr [17 x i8], ptr %hex, i32 0, i32 %inc32
  %15 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 32, ptr %arrayidx93, align 1
  %16 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i = icmp eq i32 %17, 0
  br i1 %cmp.i, label %do.end.i, label %if.end91.critedge.if.end.i_crit_edge, !prof !29

if.end91.critedge.if.end.i_crit_edge:             ; preds = %if.end91.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %if.end91.critedge
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 196, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end91.critedge.if.end.i_crit_edge
  %18 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len1.i.i, align 8
  %add.i.i = add i32 %19, %inc92
  %20 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %21)
  %cmp.i.not.i = icmp ugt i32 %add.i.i, %21
  br i1 %cmp.i.not.i, label %if.end22.i, label %if.then19.i

if.then19.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s, align 8
  %add.ptr.i = getelementptr i8, ptr %23, i32 %19
  %24 = call ptr @memcpy(ptr %add.ptr.i, ptr %hex, i32 %inc92)
  %25 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len1.i.i, align 8
  %add.i = add i32 %26, %inc92
  br label %seq_buf_putmem.exit

if.end22.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.i32.i = add nuw i32 %21, 1
  br label %seq_buf_putmem.exit

seq_buf_putmem.exit:                              ; preds = %if.end22.i, %if.then19.i
  %storemerge.i = phi i32 [ %add.i32.i, %if.end22.i ], [ %add.i, %if.then19.i ]
  %27 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %storemerge.i, ptr %len1.i.i, align 8
  %28 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge.i, i32 %29)
  %cmp.i126 = icmp ugt i32 %storemerge.i, %29
  br i1 %cmp.i126, label %seq_buf_putmem.exit.cleanup_crit_edge, label %if.end96

seq_buf_putmem.exit.cleanup_crit_edge:            ; preds = %seq_buf_putmem.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end96:                                         ; preds = %seq_buf_putmem.exit
  %sub = sub i32 %len.addr.0132, %3
  %add.ptr = getelementptr i8, ptr %data.0131, i32 %3
  %tobool22.not = icmp eq i32 %sub, 0
  br i1 %tobool22.not, label %if.end96.cleanup_crit_edge, label %if.end96.while.body_crit_edge

if.end96.while.body_crit_edge:                    ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end96.cleanup_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end96.cleanup_crit_edge, %seq_buf_putmem.exit.cleanup_crit_edge, %if.then54, %land.rhs.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.rhs.cleanup_crit_edge ], [ 0, %if.then54 ], [ 0, %if.end.cleanup_crit_edge ], [ -1, %seq_buf_putmem.exit.cleanup_crit_edge ], [ 0, %if.end96.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %hex) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @seq_buf_path(ptr nocapture noundef %s, ptr noundef %path, ptr noundef %esc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %len.i = getelementptr inbounds %struct.seq_buf, ptr %s, i32 0, i32 2
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 8
  %size.i = getelementptr inbounds %struct.seq_buf, ptr %s, i32 0, i32 1
  %2 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i, align 4
  %add.i = add i32 %3, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %add.i)
  %cmp.i = icmp ugt i32 %1, %add.i
  br i1 %cmp.i, label %do.end.i, label %entry.if.end.i_crit_edge, !prof !29

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 109, i32 noundef 9, ptr noundef null) #9
  %4 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pr = load i32, ptr %size.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %5 = phi i32 [ %.pr, %do.end.i ], [ %3, %entry.if.end.i_crit_edge ]
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp21.i = icmp ugt i32 %5, %7
  br i1 %cmp21.i, label %if.end, label %seq_buf_get_buf.exit

seq_buf_get_buf.exit:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %do.end, label %seq_buf_get_buf.exit.if.then.i_crit_edge, !prof !29

seq_buf_get_buf.exit.if.then.i_crit_edge:         ; preds = %seq_buf_get_buf.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

do.end:                                           ; preds = %seq_buf_get_buf.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 276, i32 noundef 9, ptr noundef null) #9
  br label %if.then.i

if.end:                                           ; preds = %if.end.i
  %8 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 %7
  %sub.i = sub i32 %5, %7
  %call22 = tail call ptr @d_path(ptr noundef %path, ptr noundef %add.ptr.i, i32 noundef %sub.i) #9
  %cmp.i38 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i38, label %if.end.if.then.i_crit_edge, label %if.then24

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then24:                                        ; preds = %if.end
  %call25 = tail call ptr @mangle_path(ptr noundef %add.ptr.i, ptr noundef %call22, ptr noundef %esc) #9
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.then24.if.then.i_crit_edge, label %if.end30

if.then24.if.then.i_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.end30:                                         ; preds = %if.then24
  %sub.ptr.lhs.cast = ptrtoint ptr %call25 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.ptr.sub)
  %cmp.i39 = icmp slt i32 %sub.ptr.sub, 0
  br i1 %cmp.i39, label %if.end30.if.then.i_crit_edge, label %do.body.i

if.end30.if.then.i_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.i:                                        ; preds = %if.end30.if.then.i_crit_edge, %if.then24.if.then.i_crit_edge, %if.end.if.then.i_crit_edge, %do.end, %seq_buf_get_buf.exit.if.then.i_crit_edge
  %res.256 = phi i32 [ %sub.ptr.sub, %if.end30.if.then.i_crit_edge ], [ -1, %if.end.if.then.i_crit_edge ], [ -1, %if.then24.if.then.i_crit_edge ], [ -1, %do.end ], [ -1, %seq_buf_get_buf.exit.if.then.i_crit_edge ]
  %10 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size.i, align 4
  %add.i.i = add i32 %11, 1
  br label %seq_buf_commit.exit

do.body.i:                                        ; preds = %if.end30
  %12 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i, align 8
  %add.i41 = add i32 %13, %sub.ptr.sub
  %14 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i41, i32 %15)
  %cmp1.i = icmp ugt i32 %add.i41, %15
  br i1 %cmp1.i, label %do.body4.i, label %do.body.i.seq_buf_commit.exit_crit_edge, !prof !29

do.body.i.seq_buf_commit.exit_crit_edge:          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %seq_buf_commit.exit

do.body4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/seq_buf.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 135, 0\0A.popsection", ""() #9, !srcloc !32
  unreachable

seq_buf_commit.exit:                              ; preds = %do.body.i.seq_buf_commit.exit_crit_edge, %if.then.i
  %storemerge = phi i32 [ %add.i.i, %if.then.i ], [ %add.i41, %do.body.i.seq_buf_commit.exit_crit_edge ]
  %res.255 = phi i32 [ %res.256, %if.then.i ], [ %sub.ptr.sub, %do.body.i.seq_buf_commit.exit_crit_edge ]
  %16 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %storemerge, ptr %len.i, align 8
  ret i32 %res.255
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_path(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mangle_path(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @seq_buf_to_user(ptr nocapture noundef %s, ptr noundef %ubuf, i32 noundef %cnt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt)
  %tobool.not = icmp eq i32 %cnt, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %len.i = getelementptr inbounds %struct.seq_buf, ptr %s, i32 0, i32 2
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 8
  %size.i = getelementptr inbounds %struct.seq_buf, ptr %s, i32 0, i32 1
  %2 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i, align 4
  %4 = tail call i32 @llvm.umin.i32(i32 %1, i32 %3) #9
  %conv = sext i32 %4 to i64
  %readpos = getelementptr inbounds %struct.seq_buf, ptr %s, i32 0, i32 3
  %5 = ptrtoint ptr %readpos to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %readpos, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %conv)
  %cmp.not = icmp slt i64 %6, %conv
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %7 = trunc i64 %6 to i32
  %conv6 = sub i32 %4, %7
  %8 = tail call i32 @llvm.smin.i32(i32 %conv6, i32 %cnt)
  %9 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s, align 8
  %add.ptr = getelementptr i8, ptr %10, i32 %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp9.i.i = icmp slt i32 %8, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end3
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.cleanup_crit_edge, label %if.then27.i.i, !prof !31

land.rhs16.i.i.cleanup_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end3
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %8, i1 noundef zeroext true) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 174) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.cleanup_crit_edge, label %if.end.i.i

if.then.i.i.i.cleanup_crit_edge:                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %ubuf, i32 %8, i32 -1226833920) #11, !srcloc !33
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef %8) #9
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %ubuf, ptr noundef %add.ptr, i32 noundef %8) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %call.i12.i.i)
  %cmp13 = icmp eq i32 %8, %call.i12.i.i
  br i1 %cmp13, label %copy_to_user.exit.cleanup_crit_edge, label %if.end16

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #8
  %sub17 = sub i32 %8, %call.i12.i.i
  %conv18 = sext i32 %sub17 to i64
  %12 = ptrtoint ptr %readpos to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %readpos, align 8
  %add = add i64 %13, %conv18
  store i64 %add, ptr %readpos, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %copy_to_user.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.then.i.i.i.cleanup_crit_edge, %if.then27.i.i, %land.rhs16.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub17, %if.end16 ], [ 0, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %if.then.i.i.i.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @seq_buf_hex_dump(ptr nocapture noundef %s, ptr noundef %prefix_str, i32 noundef %prefix_type, i32 noundef %rowsize, i32 noundef %groupsize, ptr noundef %buf, i32 noundef %len, i1 noundef zeroext %ascii) local_unnamed_addr #0 align 64 {
entry:
  %linebuf = alloca [131 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 131, ptr nonnull %linebuf) #9
  %0 = call ptr @memset(ptr %linebuf, i32 255, i32 131)
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %rowsize)
  %cmp.not = icmp eq i32 %rowsize, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %rowsize)
  %cmp1.not = icmp eq i32 %rowsize, 32
  %spec.store.select = select i1 %cmp1.not, i32 32, i32 16
  %rowsize.addr.0 = select i1 %cmp.not, i32 16, i32 %spec.store.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp239.not = icmp eq i32 %len, 0
  br i1 %cmp239.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond:                                         ; preds = %sw.epilog
  %add = add i32 %i.040, %rowsize.addr.0
  %cmp2 = icmp ult i32 %add, %len
  br i1 %cmp2, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %remaining.041 = phi i32 [ %sub, %for.cond.for.body_crit_edge ], [ %len, %entry.for.body_crit_edge ]
  %i.040 = phi i32 [ %add, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %1 = call i32 @llvm.smin.i32(i32 %remaining.041, i32 %rowsize.addr.0)
  %sub = sub i32 %remaining.041, %rowsize.addr.0
  %add.ptr = getelementptr i8, ptr %buf, i32 %i.040
  %call = call i32 @hex_dump_to_buffer(ptr noundef %add.ptr, i32 noundef %1, i32 noundef %rowsize.addr.0, i32 noundef %groupsize, ptr noundef nonnull %linebuf, i32 noundef 131, i1 noundef zeroext %ascii) #9
  %2 = zext i32 %prefix_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %prefix_type, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb7
  ]

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = call i32 (ptr, ptr, ...) @seq_buf_printf(ptr noundef %s, ptr noundef nonnull @.str.1, ptr noundef %prefix_str, ptr noundef %add.ptr, ptr noundef nonnull %linebuf)
  br label %sw.epilog

sw.bb7:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = call i32 (ptr, ptr, ...) @seq_buf_printf(ptr noundef %s, ptr noundef nonnull @.str.2, ptr noundef %prefix_str, i32 noundef %i.040, ptr noundef nonnull %linebuf)
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = call i32 (ptr, ptr, ...) @seq_buf_printf(ptr noundef %s, ptr noundef nonnull @.str.3, ptr noundef %prefix_str, ptr noundef nonnull %linebuf)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb7, %sw.bb
  %ret.0 = phi i32 [ %call11, %sw.default ], [ %call9, %sw.bb7 ], [ %call6, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool12.not = icmp eq i32 %ret.0, 0
  br i1 %tobool12.not, label %for.cond, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %ret.0, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 131, ptr nonnull %linebuf) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex_dump_to_buffer(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind uwtable(sync) }
attributes #8 = { nomerge }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../lib/seq_buf.c", i32 61, i32 2}
!2 = !{ptr @__ksymtab_seq_buf_printf, !3, !"__ksymtab_seq_buf_printf", i1 false, i1 false}
!3 = !{!"../lib/seq_buf.c", i32 94, i32 1}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../lib/seq_buf.c", i32 244, i32 7}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../lib/seq_buf.c", i32 382, i32 28}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../lib/seq_buf.c", i32 386, i32 28}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../lib/seq_buf.c", i32 390, i32 28}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../include/linux/seq_buf.h", i32 109, i32 2}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"branch_weights", i32 1, i32 2000}
!30 = !{!"auto-init"}
!31 = !{!"branch_weights", i32 2000, i32 1}
!32 = !{i64 2152581626, i64 2152582114, i64 2152581663, i64 2152581719, i64 2152581753, i64 2152581777, i64 2152581818, i64 2152581839, i64 2152581867, i64 2152581901}
!33 = !{i64 2150506883, i64 2150506908}
