; ModuleID = '/llk/IR_all_yes/lib/zlib_deflate/deflate.c_pt.bc'
source_filename = "../lib/zlib_deflate/deflate.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.config_s = type { i16, i16, i16, i16, ptr }
%struct.z_stream_s = type { ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32 }
%struct.deflate_workspace = type { %struct.deflate_state, ptr, ptr, ptr, ptr }
%struct.deflate_state = type { ptr, i32, ptr, i32, ptr, i32, i32, i8, i8, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [573 x %struct.ct_data_s], [61 x %struct.ct_data_s], [39 x %struct.ct_data_s], %struct.tree_desc_s, %struct.tree_desc_s, %struct.tree_desc_s, [16 x i16], [573 x i32], i32, i32, [573 x i8], ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i16, i32 }
%struct.ct_data_s = type { %union.anon, %union.anon.0 }
%union.anon = type { i16 }
%union.anon.0 = type { i16 }
%struct.tree_desc_s = type { ptr, i32, ptr }

@configuration_table = internal constant { [10 x %struct.config_s], [40 x i8] } { [10 x %struct.config_s] [%struct.config_s { i16 0, i16 0, i16 0, i16 0, ptr @deflate_stored }, %struct.config_s { i16 4, i16 4, i16 8, i16 4, ptr @deflate_fast }, %struct.config_s { i16 4, i16 5, i16 16, i16 8, ptr @deflate_fast }, %struct.config_s { i16 4, i16 6, i16 32, i16 32, ptr @deflate_fast }, %struct.config_s { i16 4, i16 4, i16 16, i16 16, ptr @deflate_slow }, %struct.config_s { i16 8, i16 16, i16 32, i16 32, ptr @deflate_slow }, %struct.config_s { i16 8, i16 16, i16 128, i16 128, ptr @deflate_slow }, %struct.config_s { i16 8, i16 32, i16 128, i16 256, ptr @deflate_slow }, %struct.config_s { i16 32, i16 128, i16 258, i16 1024, ptr @deflate_slow }, %struct.config_s { i16 32, i16 258, i16 258, i16 4096, ptr @deflate_slow }], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 32, i64 42, i64 113, i64 666]
@___asan_gen_.3 = private unnamed_addr constant [20 x i8] c"configuration_table\00", align 1
@___asan_gen_.4 = private constant [30 x i8] c"../lib/zlib_deflate/deflate.c\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.4, i32 135, i32 21 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @configuration_table], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configuration_table to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zlib_deflateInit2(ptr noundef %strm, i32 noundef %level, i32 noundef %method, i32 noundef %windowBits, i32 noundef %memLevel, i32 noundef %strategy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %strm, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 6
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %msg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %level)
  %cmp1 = icmp eq i32 %level, -1
  %spec.store.select = select i1 %cmp1, i32 6, i32 %level
  %1 = tail call i32 @llvm.abs.i32(i32 %windowBits, i1 false)
  %2 = add i32 %memLevel, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %2)
  %3 = icmp ult i32 %2, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %method)
  %cmp10.not = icmp ne i32 %method, 8
  %or.cond138.not = or i1 %cmp10.not, %3
  %4 = add i32 %1, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %4)
  %5 = icmp ult i32 %4, -7
  %6 = or i1 %5, %or.cond138.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %spec.store.select)
  %7 = icmp ugt i32 %spec.store.select, 9
  %8 = or i1 %7, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %strategy)
  %9 = icmp ugt i32 %strategy, 2
  %10 = or i1 %9, %8
  br i1 %10, label %if.end.cleanup_crit_edge, label %if.end24

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %windowBits.lobit = lshr i32 %windowBits, 31
  %workspace = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 8
  %11 = ptrtoint ptr %workspace to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %workspace, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 5836
  %window_memory = getelementptr inbounds %struct.deflate_workspace, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %window_memory to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr, ptr %window_memory, align 4
  %shl = shl nuw nsw i32 1, %1
  %mul = shl nuw nsw i32 %shl, 1
  %add.ptr26 = getelementptr i8, ptr %add.ptr, i32 %mul
  %prev_memory = getelementptr inbounds %struct.deflate_workspace, ptr %12, i32 0, i32 2
  %14 = ptrtoint ptr %prev_memory to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr26, ptr %prev_memory, align 4
  %add.ptr29 = getelementptr i8, ptr %add.ptr26, i32 %mul
  %head_memory = getelementptr inbounds %struct.deflate_workspace, ptr %12, i32 0, i32 3
  %15 = ptrtoint ptr %head_memory to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr29, ptr %head_memory, align 4
  %add = add nuw nsw i32 %memLevel, 7
  %shl30 = shl i32 128, %memLevel
  %mul31 = shl nuw nsw i32 %shl30, 1
  %add.ptr32 = getelementptr i8, ptr %add.ptr29, i32 %mul31
  %overlay_memory = getelementptr inbounds %struct.deflate_workspace, ptr %12, i32 0, i32 4
  %16 = ptrtoint ptr %overlay_memory to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr32, ptr %overlay_memory, align 4
  %state = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 7
  %17 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %12, ptr %state, align 4
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %strm, ptr %12, align 4
  %noheader34 = getelementptr inbounds %struct.deflate_state, ptr %12, i32 0, i32 6
  %19 = ptrtoint ptr %noheader34 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %windowBits.lobit, ptr %noheader34, align 4
  %w_bits = getelementptr inbounds %struct.deflate_state, ptr %12, i32 0, i32 11
  %20 = ptrtoint ptr %w_bits to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %1, ptr %w_bits, align 4
  %w_size = getelementptr inbounds %struct.deflate_state, ptr %12, i32 0, i32 10
  %21 = ptrtoint ptr %w_size to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shl, ptr %w_size, align 4
  %sub38 = add nsw i32 %shl, -1
  %w_mask = getelementptr inbounds %struct.deflate_state, ptr %12, i32 0, i32 12
  %22 = ptrtoint ptr %w_mask to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub38, ptr %w_mask, align 4
  %hash_bits = getelementptr inbounds %struct.deflate_state, ptr %12, i32 0, i32 19
  %23 = ptrtoint ptr %hash_bits to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add, ptr %hash_bits, align 4
  %hash_size = getelementptr inbounds %struct.deflate_state, ptr %12, i32 0, i32 18
  %24 = ptrtoint ptr %hash_size to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %shl30, ptr %hash_size, align 4
  %sub43 = add nsw i32 %shl30, -1
  %hash_mask = getelementptr inbounds %struct.deflate_state, ptr %12, i32 0, i32 20
  %25 = ptrtoint ptr %hash_mask to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub43, ptr %hash_mask, align 4
  %26 = trunc i32 %memLevel to i8
  %div.lhs.trunc = add i8 %26, 9
  %div145 = udiv i8 %div.lhs.trunc, 3
  %div.zext = zext i8 %div145 to i32
  %hash_shift = getelementptr inbounds %struct.deflate_state, ptr %12, i32 0, i32 21
  %27 = ptrtoint ptr %hash_shift to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %div.zext, ptr %hash_shift, align 4
  %28 = load ptr, ptr %window_memory, align 4
  %window = getelementptr inbounds %struct.deflate_state, ptr %12, i32 0, i32 13
  %29 = ptrtoint ptr %window to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %window, align 4
  %30 = load ptr, ptr %prev_memory, align 4
  %prev = getelementptr inbounds %struct.deflate_state, ptr %12, i32 0, i32 15
  %31 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %prev, align 4
  %32 = load ptr, ptr %head_memory, align 4
  %head = getelementptr inbounds %struct.deflate_state, ptr %12, i32 0, i32 16
  %33 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %head, align 4
  %shl51 = shl i32 64, %memLevel
  %lit_bufsize = getelementptr inbounds %struct.deflate_state, ptr %12, i32 0, i32 48
  %34 = ptrtoint ptr %lit_bufsize to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %shl51, ptr %lit_bufsize, align 4
  %35 = load ptr, ptr %overlay_memory, align 4
  %pending_buf = getelementptr inbounds %struct.deflate_state, ptr %12, i32 0, i32 2
  %36 = ptrtoint ptr %pending_buf to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %pending_buf, align 4
  %mul54 = shl nuw nsw i32 %shl51, 2
  %pending_buf_size = getelementptr inbounds %struct.deflate_state, ptr %12, i32 0, i32 3
  %37 = ptrtoint ptr %pending_buf_size to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %mul54, ptr %pending_buf_size, align 4
  %div56136 = lshr exact i32 %shl51, 1
  %add.ptr57 = getelementptr i16, ptr %35, i32 %div56136
  %d_buf = getelementptr inbounds %struct.deflate_state, ptr %12, i32 0, i32 50
  %38 = ptrtoint ptr %d_buf to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr57, ptr %d_buf, align 4
  %mul60 = shl i32 192, %memLevel
  %add.ptr61 = getelementptr i8, ptr %35, i32 %mul60
  %l_buf = getelementptr inbounds %struct.deflate_state, ptr %12, i32 0, i32 47
  %39 = ptrtoint ptr %l_buf to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %add.ptr61, ptr %l_buf, align 4
  %level62 = getelementptr inbounds %struct.deflate_state, ptr %12, i32 0, i32 32
  %40 = ptrtoint ptr %level62 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %spec.store.select, ptr %level62, align 4
  %strategy63 = getelementptr inbounds %struct.deflate_state, ptr %12, i32 0, i32 33
  %41 = ptrtoint ptr %strategy63 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %strategy, ptr %strategy63, align 4
  %method64 = getelementptr inbounds %struct.deflate_state, ptr %12, i32 0, i32 8
  %42 = ptrtoint ptr %method64 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 8, ptr %method64, align 1
  %call = tail call i32 @zlib_deflateReset(ptr noundef nonnull %strm)
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end24 ], [ -2, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zlib_deflateReset(ptr noundef %strm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %strm, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 7
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 5
  %2 = ptrtoint ptr %total_out to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %total_out, align 4
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 2
  %3 = ptrtoint ptr %total_in to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %total_in, align 4
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 6
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %msg, align 4
  %data_type = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 9
  %5 = ptrtoint ptr %data_type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %data_type, align 4
  %pending = getelementptr inbounds %struct.deflate_state, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %pending, align 4
  %pending_buf = getelementptr inbounds %struct.deflate_state, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %pending_buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pending_buf, align 4
  %pending_out = getelementptr inbounds %struct.deflate_state, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %pending_out to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %pending_out, align 4
  %noheader = getelementptr inbounds %struct.deflate_state, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %noheader to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %noheader, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp3 = icmp slt i32 %11, 0
  br i1 %cmp3, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %noheader to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %noheader, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %13 = ptrtoint ptr %noheader to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %noheader, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  %cond = select i1 %tobool.not, i32 42, i32 113
  %status = getelementptr inbounds %struct.deflate_state, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %cond, ptr %status, align 4
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 10
  %16 = ptrtoint ptr %adler to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %adler, align 4
  %last_flush = getelementptr inbounds %struct.deflate_state, ptr %1, i32 0, i32 9
  %17 = ptrtoint ptr %last_flush to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %last_flush, align 4
  tail call void @zlib_tr_init(ptr noundef nonnull %1) #8
  %w_size.i = getelementptr inbounds %struct.deflate_state, ptr %1, i32 0, i32 10
  %18 = ptrtoint ptr %w_size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %w_size.i, align 4
  %mul.i = shl i32 %19, 1
  %window_size.i = getelementptr inbounds %struct.deflate_state, ptr %1, i32 0, i32 14
  %20 = ptrtoint ptr %window_size.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul.i, ptr %window_size.i, align 4
  %head.i = getelementptr inbounds %struct.deflate_state, ptr %1, i32 0, i32 16
  %21 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %head.i, align 4
  %hash_size.i = getelementptr inbounds %struct.deflate_state, ptr %1, i32 0, i32 18
  %23 = ptrtoint ptr %hash_size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hash_size.i, align 4
  %sub.i = add i32 %24, -1
  %arrayidx.i = getelementptr i16, ptr %22, i32 %sub.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %arrayidx.i, align 2
  %26 = load ptr, ptr %head.i, align 4
  %27 = load i32, ptr %hash_size.i, align 4
  %sub3.i = shl i32 %27, 1
  %mul4.i = add i32 %sub3.i, -2
  %28 = call ptr @memset(ptr %26, i32 0, i32 %mul4.i)
  %level.i = getelementptr inbounds %struct.deflate_state, ptr %1, i32 0, i32 32
  %29 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %level.i, align 4
  %max_lazy.i = getelementptr [10 x %struct.config_s], ptr @configuration_table, i32 0, i32 %30, i32 1
  %31 = ptrtoint ptr %max_lazy.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %max_lazy.i, align 2
  %conv.i = zext i16 %32 to i32
  %max_lazy_match.i = getelementptr inbounds %struct.deflate_state, ptr %1, i32 0, i32 31
  %33 = ptrtoint ptr %max_lazy_match.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv.i, ptr %max_lazy_match.i, align 4
  %arrayidx7.i = getelementptr [10 x %struct.config_s], ptr @configuration_table, i32 0, i32 %30
  %34 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx7.i, align 4
  %conv8.i = zext i16 %35 to i32
  %good_match.i = getelementptr inbounds %struct.deflate_state, ptr %1, i32 0, i32 34
  %36 = ptrtoint ptr %good_match.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv8.i, ptr %good_match.i, align 4
  %nice_length.i = getelementptr [10 x %struct.config_s], ptr @configuration_table, i32 0, i32 %30, i32 2
  %37 = ptrtoint ptr %nice_length.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %nice_length.i, align 4
  %conv11.i = zext i16 %38 to i32
  %nice_match.i = getelementptr inbounds %struct.deflate_state, ptr %1, i32 0, i32 35
  %39 = ptrtoint ptr %nice_match.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv11.i, ptr %nice_match.i, align 4
  %max_chain.i = getelementptr [10 x %struct.config_s], ptr @configuration_table, i32 0, i32 %30, i32 3
  %40 = ptrtoint ptr %max_chain.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %max_chain.i, align 2
  %conv14.i = zext i16 %41 to i32
  %max_chain_length.i = getelementptr inbounds %struct.deflate_state, ptr %1, i32 0, i32 30
  %42 = ptrtoint ptr %max_chain_length.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv14.i, ptr %max_chain_length.i, align 4
  %strstart.i = getelementptr inbounds %struct.deflate_state, ptr %1, i32 0, i32 26
  %43 = ptrtoint ptr %strstart.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %strstart.i, align 4
  %block_start.i = getelementptr inbounds %struct.deflate_state, ptr %1, i32 0, i32 22
  %44 = ptrtoint ptr %block_start.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %block_start.i, align 4
  %lookahead.i = getelementptr inbounds %struct.deflate_state, ptr %1, i32 0, i32 28
  %45 = ptrtoint ptr %lookahead.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %lookahead.i, align 4
  %prev_length.i = getelementptr inbounds %struct.deflate_state, ptr %1, i32 0, i32 29
  %46 = ptrtoint ptr %prev_length.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 2, ptr %prev_length.i, align 4
  %match_length.i = getelementptr inbounds %struct.deflate_state, ptr %1, i32 0, i32 23
  %47 = ptrtoint ptr %match_length.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 2, ptr %match_length.i, align 4
  %match_available.i = getelementptr inbounds %struct.deflate_state, ptr %1, i32 0, i32 25
  %48 = ptrtoint ptr %match_available.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %match_available.i, align 4
  %ins_h.i = getelementptr inbounds %struct.deflate_state, ptr %1, i32 0, i32 17
  %49 = ptrtoint ptr %ins_h.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %ins_h.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -2, %lor.lhs.false.cleanup_crit_edge ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @zlib_tr_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zlib_deflate(ptr noundef %strm, i32 noundef %flush) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %strm, null
  br i1 %cmp, label %entry.cleanup131_crit_edge, label %lor.lhs.false

entry.cleanup131_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup131

lor.lhs.false:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 7
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %cmp1 = icmp eq ptr %1, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %flush)
  %2 = icmp ugt i32 %flush, 5
  %3 = or i1 %2, %cmp1
  br i1 %3, label %lor.lhs.false.cleanup131_crit_edge, label %if.end

lor.lhs.false.cleanup131_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup131

if.end:                                           ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %strm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %strm, align 4
  %cmp7 = icmp eq ptr %5, null
  br i1 %cmp7, label %land.lhs.true, label %if.end.lor.lhs.false9_crit_edge

if.end.lor.lhs.false9_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false9

land.lhs.true:                                    ; preds = %if.end
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 1
  %6 = ptrtoint ptr %avail_in to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %avail_in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp8.not = icmp eq i32 %7, 0
  br i1 %cmp8.not, label %land.lhs.true.lor.lhs.false9_crit_edge, label %land.lhs.true.cleanup131_crit_edge

land.lhs.true.cleanup131_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup131

land.lhs.true.lor.lhs.false9_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %land.lhs.true.lor.lhs.false9_crit_edge, %if.end.lor.lhs.false9_crit_edge
  %status = getelementptr inbounds %struct.deflate_state, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 666, i32 %9)
  %cmp10 = icmp ne i32 %9, 666
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %flush)
  %cmp12.not = icmp eq i32 %flush, 5
  %or.cond209 = or i1 %cmp12.not, %cmp10
  br i1 %or.cond209, label %if.end14, label %lor.lhs.false9.cleanup131_crit_edge

lor.lhs.false9.cleanup131_crit_edge:              ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup131

if.end14:                                         ; preds = %lor.lhs.false9
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 4
  %10 = ptrtoint ptr %avail_out to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %avail_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp15 = icmp eq i32 %11, 0
  br i1 %cmp15, label %if.end14.cleanup131_crit_edge, label %if.end17

if.end14.cleanup131_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup131

if.end17:                                         ; preds = %if.end14
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %strm, ptr %1, align 4
  %last_flush = getelementptr inbounds %struct.deflate_state, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %last_flush to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %last_flush, align 4
  store i32 %flush, ptr %last_flush, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %9)
  %cmp21 = icmp eq i32 %9, 42
  br i1 %cmp21, label %if.then22, label %if.end17.if.end43_crit_edge

if.end17.if.end43_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then22:                                        ; preds = %if.end17
  %w_bits = getelementptr inbounds %struct.deflate_state, ptr %1, i32 0, i32 11
  %15 = ptrtoint ptr %w_bits to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %w_bits, align 4
  %sub = shl i32 %16, 12
  %shl23 = add i32 %sub, -30720
  %level = getelementptr inbounds %struct.deflate_state, ptr %1, i32 0, i32 32
  %17 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %level, align 4
  %sub24 = add i32 %18, -1
  %shr = ashr i32 %sub24, 1
  %19 = tail call i32 @llvm.umin.i32(i32 %shr, i32 3)
  %shl28 = shl nuw nsw i32 %19, 6
  %or = or i32 %shl28, %shl23
  %strstart = getelementptr inbounds %struct.deflate_state, ptr %1, i32 0, i32 26
  %20 = ptrtoint ptr %strstart to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %strstart, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp29.not = icmp eq i32 %21, 0
  %or31 = or i32 %or, 32
  %spec.select = select i1 %cmp29.not, i32 %or, i32 %or31
  %rem = urem i32 %spec.select, 31
  %22 = or i32 %rem, %spec.select
  %23 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 113, ptr %status, align 4
  %shr.i = lshr i32 %spec.select, 8
  %conv.i = trunc i32 %shr.i to i8
  %pending_buf.i = getelementptr inbounds %struct.deflate_state, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %pending_buf.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pending_buf.i, align 4
  %pending.i = getelementptr inbounds %struct.deflate_state, ptr %1, i32 0, i32 5
  %26 = ptrtoint ptr %pending.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pending.i, align 4
  %inc.i = add i32 %27, 1
  store i32 %inc.i, ptr %pending.i, align 4
  %arrayidx.i = getelementptr i8, ptr %25, i32 %27
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  %29 = trunc i32 %22 to i8
  %conv1.i = xor i8 %29, 31
  %30 = load ptr, ptr %pending_buf.i, align 4
  %31 = load i32, ptr %pending.i, align 4
  %inc4.i = add i32 %31, 1
  store i32 %inc4.i, ptr %pending.i, align 4
  %arrayidx5.i = getelementptr i8, ptr %30, i32 %31
  %32 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv1.i, ptr %arrayidx5.i, align 1
  %33 = ptrtoint ptr %strstart to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %strstart, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp37.not = icmp eq i32 %34, 0
  br i1 %cmp37.not, label %if.then22.if.end41_crit_edge, label %if.then38

if.then22.if.end41_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then38:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 10
  %35 = ptrtoint ptr %adler to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %adler, align 4
  %shr39 = lshr i32 %36, 16
  %shr.i216 = lshr i32 %36, 24
  %conv.i217 = trunc i32 %shr.i216 to i8
  %37 = ptrtoint ptr %pending_buf.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pending_buf.i, align 4
  %39 = ptrtoint ptr %pending.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pending.i, align 4
  %inc.i220 = add i32 %40, 1
  store i32 %inc.i220, ptr %pending.i, align 4
  %arrayidx.i221 = getelementptr i8, ptr %38, i32 %40
  %41 = ptrtoint ptr %arrayidx.i221 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv.i217, ptr %arrayidx.i221, align 1
  %conv1.i222 = trunc i32 %shr39 to i8
  %42 = load ptr, ptr %pending_buf.i, align 4
  %43 = load i32, ptr %pending.i, align 4
  %inc4.i223 = add i32 %43, 1
  store i32 %inc4.i223, ptr %pending.i, align 4
  %arrayidx5.i224 = getelementptr i8, ptr %42, i32 %43
  %44 = ptrtoint ptr %arrayidx5.i224 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv1.i222, ptr %arrayidx5.i224, align 1
  %45 = load i32, ptr %adler, align 4
  %shr.i225 = lshr i32 %45, 8
  %conv.i226 = trunc i32 %shr.i225 to i8
  %46 = load ptr, ptr %pending_buf.i, align 4
  %47 = load i32, ptr %pending.i, align 4
  %inc.i229 = add i32 %47, 1
  store i32 %inc.i229, ptr %pending.i, align 4
  %arrayidx.i230 = getelementptr i8, ptr %46, i32 %47
  %48 = ptrtoint ptr %arrayidx.i230 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv.i226, ptr %arrayidx.i230, align 1
  %conv1.i231 = trunc i32 %45 to i8
  %49 = load ptr, ptr %pending_buf.i, align 4
  %50 = load i32, ptr %pending.i, align 4
  %inc4.i232 = add i32 %50, 1
  store i32 %inc4.i232, ptr %pending.i, align 4
  %arrayidx5.i233 = getelementptr i8, ptr %49, i32 %50
  %51 = ptrtoint ptr %arrayidx5.i233 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv1.i231, ptr %arrayidx5.i233, align 1
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.then22.if.end41_crit_edge
  %adler42 = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 10
  %52 = ptrtoint ptr %adler42 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %adler42, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.end41, %if.end17.if.end43_crit_edge
  %pending = getelementptr inbounds %struct.deflate_state, ptr %1, i32 0, i32 5
  %53 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp44.not = icmp eq i32 %54, 0
  br i1 %cmp44.not, label %if.else, label %if.then45

if.then45:                                        ; preds = %if.end43
  %55 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %state, align 4
  %pending.i234 = getelementptr inbounds %struct.deflate_state, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %pending.i234 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pending.i234, align 4
  %59 = ptrtoint ptr %avail_out to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %avail_out, align 4
  %61 = tail call i32 @llvm.umin.i32(i32 %58, i32 %60) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp2.i = icmp eq i32 %61, 0
  br i1 %cmp2.i, label %if.then45.flush_pending.exit_crit_edge, label %if.end4.i

if.then45.flush_pending.exit_crit_edge:           ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  br label %flush_pending.exit

if.end4.i:                                        ; preds = %if.then45
  %next_out.i = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 3
  %62 = ptrtoint ptr %next_out.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %next_out.i, align 4
  %cmp5.not.i = icmp eq ptr %63, null
  br i1 %cmp5.not.i, label %if.end4.i.if.end9.i_crit_edge, label %if.then6.i

if.end4.i.if.end9.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %pending_out.i = getelementptr inbounds %struct.deflate_state, ptr %56, i32 0, i32 4
  %64 = ptrtoint ptr %pending_out.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pending_out.i, align 4
  %66 = call ptr @memcpy(ptr %63, ptr %65, i32 %61)
  %67 = ptrtoint ptr %next_out.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %next_out.i, align 4
  %add.ptr.i = getelementptr i8, ptr %68, i32 %61
  store ptr %add.ptr.i, ptr %next_out.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.i, %if.end4.i.if.end9.i_crit_edge
  %pending_out10.i = getelementptr inbounds %struct.deflate_state, ptr %56, i32 0, i32 4
  %69 = ptrtoint ptr %pending_out10.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pending_out10.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %70, i32 %61
  store ptr %add.ptr11.i, ptr %pending_out10.i, align 4
  %total_out.i = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 5
  %71 = ptrtoint ptr %total_out.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %total_out.i, align 4
  %add.i = add i32 %72, %61
  store i32 %add.i, ptr %total_out.i, align 4
  %73 = ptrtoint ptr %avail_out to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %avail_out, align 4
  %sub.i = sub i32 %74, %61
  store i32 %sub.i, ptr %avail_out, align 4
  %75 = ptrtoint ptr %pending.i234 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pending.i234, align 4
  %sub14.i = sub i32 %76, %61
  store i32 %sub14.i, ptr %pending.i234, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %61)
  %cmp16.i = icmp eq i32 %76, %61
  br i1 %cmp16.i, label %if.then17.i, label %if.end9.i.flush_pending.exitthread-pre-split_crit_edge

if.end9.i.flush_pending.exitthread-pre-split_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flush_pending.exitthread-pre-split

if.then17.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %pending_buf.i235 = getelementptr inbounds %struct.deflate_state, ptr %56, i32 0, i32 2
  %77 = ptrtoint ptr %pending_buf.i235 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pending_buf.i235, align 4
  %79 = ptrtoint ptr %pending_out10.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %78, ptr %pending_out10.i, align 4
  br label %flush_pending.exitthread-pre-split

flush_pending.exitthread-pre-split:               ; preds = %if.then17.i, %if.end9.i.flush_pending.exitthread-pre-split_crit_edge
  %80 = ptrtoint ptr %avail_out to i32
  call void @__asan_load4_noabort(i32 %80)
  %.pr = load i32, ptr %avail_out, align 4
  br label %flush_pending.exit

flush_pending.exit:                               ; preds = %flush_pending.exitthread-pre-split, %if.then45.flush_pending.exit_crit_edge
  %81 = phi i32 [ %.pr, %flush_pending.exitthread-pre-split ], [ %60, %if.then45.flush_pending.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp47 = icmp eq i32 %81, 0
  br i1 %cmp47, label %if.then48, label %flush_pending.exit.if.end59_crit_edge

flush_pending.exit.if.end59_crit_edge:            ; preds = %flush_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then48:                                        ; preds = %flush_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  %82 = ptrtoint ptr %last_flush to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 -1, ptr %last_flush, align 4
  br label %cleanup131

if.else:                                          ; preds = %if.end43
  %avail_in51 = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 1
  %83 = ptrtoint ptr %avail_in51 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %avail_in51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp52 = icmp ne i32 %84, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %flush)
  %cmp54.not = icmp slt i32 %14, %flush
  %or.cond210 = select i1 %cmp52, i1 true, i1 %cmp54.not
  %or.cond211 = or i1 %cmp12.not, %or.cond210
  br i1 %or.cond211, label %if.else.if.end59_crit_edge, label %if.else.cleanup131_crit_edge

if.else.cleanup131_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup131

if.else.if.end59_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.end59:                                         ; preds = %if.else.if.end59_crit_edge, %flush_pending.exit.if.end59_crit_edge
  %85 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 666, i32 %86)
  %cmp61 = icmp eq i32 %86, 666
  br i1 %cmp61, label %land.lhs.true62, label %if.end59.if.end66_crit_edge

if.end59.if.end66_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

land.lhs.true62:                                  ; preds = %if.end59
  %avail_in63 = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 1
  %87 = ptrtoint ptr %avail_in63 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %avail_in63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp64.not = icmp eq i32 %88, 0
  br i1 %cmp64.not, label %land.lhs.true62.if.end66_crit_edge, label %land.lhs.true62.cleanup131_crit_edge

land.lhs.true62.cleanup131_crit_edge:             ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup131

land.lhs.true62.if.end66_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.end66:                                         ; preds = %land.lhs.true62.if.end66_crit_edge, %if.end59.if.end66_crit_edge
  %avail_in67 = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 1
  %89 = ptrtoint ptr %avail_in67 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %avail_in67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp68.not = icmp eq i32 %90, 0
  br i1 %cmp68.not, label %lor.lhs.false69, label %if.end66.if.then76_crit_edge

if.end66.if.then76_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then76

lor.lhs.false69:                                  ; preds = %if.end66
  %lookahead = getelementptr inbounds %struct.deflate_state, ptr %1, i32 0, i32 28
  %91 = ptrtoint ptr %lookahead to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %lookahead, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp70.not = icmp eq i32 %92, 0
  br i1 %cmp70.not, label %lor.lhs.false71, label %lor.lhs.false69.if.then76_crit_edge

lor.lhs.false69.if.then76_crit_edge:              ; preds = %lor.lhs.false69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then76

lor.lhs.false71:                                  ; preds = %lor.lhs.false69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flush)
  %cond215 = icmp eq i32 %flush, 0
  br i1 %cond215, label %lor.lhs.false71.cleanup131_crit_edge, label %land.lhs.true73

lor.lhs.false71.cleanup131_crit_edge:             ; preds = %lor.lhs.false71
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup131

land.lhs.true73:                                  ; preds = %lor.lhs.false71
  br i1 %cmp61, label %land.lhs.true73.if.end118_crit_edge, label %land.lhs.true73.if.then76_crit_edge

land.lhs.true73.if.then76_crit_edge:              ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then76

land.lhs.true73.if.end118_crit_edge:              ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

if.then76:                                        ; preds = %land.lhs.true73.if.then76_crit_edge, %lor.lhs.false69.if.then76_crit_edge, %if.end66.if.then76_crit_edge
  %level77 = getelementptr inbounds %struct.deflate_state, ptr %1, i32 0, i32 32
  %93 = ptrtoint ptr %level77 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %level77, align 4
  %func = getelementptr [10 x %struct.config_s], ptr @configuration_table, i32 0, i32 %94, i32 4
  %95 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %func, align 4
  %call = tail call i32 %96(ptr noundef nonnull %1, i32 noundef %flush) #8
  %97 = and i32 %call, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %97)
  %switch = icmp eq i32 %97, 2
  br i1 %switch, label %if.then81, label %if.then76.if.end83_crit_edge

if.then76.if.end83_crit_edge:                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

if.then81:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #10
  %98 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 666, ptr %status, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then81, %if.then76.if.end83_crit_edge
  %99 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %if.end83.if.end118_crit_edge [
    i32 2, label %if.end83.if.then87_crit_edge
    i32 0, label %if.end83.if.then87_crit_edge254
    i32 1, label %if.then95
  ]

if.end83.if.then87_crit_edge254:                  ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then87

if.end83.if.then87_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then87

if.end83.if.end118_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

if.then87:                                        ; preds = %if.end83.if.then87_crit_edge, %if.end83.if.then87_crit_edge254
  %100 = ptrtoint ptr %avail_out to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %avail_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp89 = icmp eq i32 %101, 0
  br i1 %cmp89, label %if.then90, label %if.then87.cleanup131_crit_edge

if.then87.cleanup131_crit_edge:                   ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup131

if.then90:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #10
  %102 = ptrtoint ptr %last_flush to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 -1, ptr %last_flush, align 4
  br label %cleanup131

if.then95:                                        ; preds = %if.end83
  %103 = zext i32 %flush to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %flush, label %if.else101 [
    i32 1, label %if.then97
    i32 2, label %if.then100
  ]

if.then97:                                        ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @zlib_tr_align(ptr noundef nonnull %1) #8
  br label %if.end111

if.then100:                                       ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @zlib_tr_stored_type_only(ptr noundef nonnull %1) #8
  br label %if.end111

if.else101:                                       ; preds = %if.then95
  tail call void @zlib_tr_stored_block(ptr noundef nonnull %1, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %flush)
  %cmp102 = icmp eq i32 %flush, 4
  br i1 %cmp102, label %if.then103, label %if.else101.if.end111_crit_edge

if.else101.if.end111_crit_edge:                   ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end111

if.then103:                                       ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #10
  %head = getelementptr inbounds %struct.deflate_state, ptr %1, i32 0, i32 16
  %104 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %head, align 4
  %hash_size = getelementptr inbounds %struct.deflate_state, ptr %1, i32 0, i32 18
  %106 = ptrtoint ptr %hash_size to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %hash_size, align 4
  %sub104 = add i32 %107, -1
  %arrayidx105 = getelementptr i16, ptr %105, i32 %sub104
  %108 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 0, ptr %arrayidx105, align 2
  %109 = load ptr, ptr %head, align 4
  %110 = load i32, ptr %hash_size, align 4
  %sub108 = shl i32 %110, 1
  %mul = add i32 %sub108, -2
  %111 = call ptr @memset(ptr %109, i32 0, i32 %mul)
  br label %if.end111

if.end111:                                        ; preds = %if.then103, %if.else101.if.end111_crit_edge, %if.then100, %if.then97
  tail call fastcc void @flush_pending(ptr noundef nonnull %strm)
  %112 = ptrtoint ptr %avail_out to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %avail_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %cmp113 = icmp eq i32 %113, 0
  br i1 %cmp113, label %if.then114, label %if.end111.if.end118_crit_edge

if.end111.if.end118_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

if.then114:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  %114 = ptrtoint ptr %last_flush to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 -1, ptr %last_flush, align 4
  br label %cleanup131

if.end118:                                        ; preds = %if.end111.if.end118_crit_edge, %if.end83.if.end118_crit_edge, %land.lhs.true73.if.end118_crit_edge
  br i1 %cmp12.not, label %if.end121, label %if.end118.cleanup131_crit_edge

if.end118.cleanup131_crit_edge:                   ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup131

if.end121:                                        ; preds = %if.end118
  %noheader = getelementptr inbounds %struct.deflate_state, ptr %1, i32 0, i32 6
  %115 = ptrtoint ptr %noheader to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %noheader, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool.not = icmp eq i32 %116, 0
  br i1 %tobool.not, label %if.end123, label %if.end121.cleanup131_crit_edge

if.end121.cleanup131_crit_edge:                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup131

if.end123:                                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #10
  %adler124 = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 10
  %117 = ptrtoint ptr %adler124 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %adler124, align 4
  %shr125 = lshr i32 %118, 16
  %shr.i236 = lshr i32 %118, 24
  %conv.i237 = trunc i32 %shr.i236 to i8
  %pending_buf.i238 = getelementptr inbounds %struct.deflate_state, ptr %1, i32 0, i32 2
  %119 = ptrtoint ptr %pending_buf.i238 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %pending_buf.i238, align 4
  %121 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %pending, align 4
  %inc.i240 = add i32 %122, 1
  store i32 %inc.i240, ptr %pending, align 4
  %arrayidx.i241 = getelementptr i8, ptr %120, i32 %122
  %123 = ptrtoint ptr %arrayidx.i241 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %conv.i237, ptr %arrayidx.i241, align 1
  %conv1.i242 = trunc i32 %shr125 to i8
  %124 = load ptr, ptr %pending_buf.i238, align 4
  %125 = load i32, ptr %pending, align 4
  %inc4.i243 = add i32 %125, 1
  store i32 %inc4.i243, ptr %pending, align 4
  %arrayidx5.i244 = getelementptr i8, ptr %124, i32 %125
  %126 = ptrtoint ptr %arrayidx5.i244 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %conv1.i242, ptr %arrayidx5.i244, align 1
  %127 = load i32, ptr %adler124, align 4
  %shr.i245 = lshr i32 %127, 8
  %conv.i246 = trunc i32 %shr.i245 to i8
  %128 = load ptr, ptr %pending_buf.i238, align 4
  %129 = load i32, ptr %pending, align 4
  %inc.i249 = add i32 %129, 1
  store i32 %inc.i249, ptr %pending, align 4
  %arrayidx.i250 = getelementptr i8, ptr %128, i32 %129
  %130 = ptrtoint ptr %arrayidx.i250 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %conv.i246, ptr %arrayidx.i250, align 1
  %conv1.i251 = trunc i32 %127 to i8
  %131 = load ptr, ptr %pending_buf.i238, align 4
  %132 = load i32, ptr %pending, align 4
  %inc4.i252 = add i32 %132, 1
  store i32 %inc4.i252, ptr %pending, align 4
  %arrayidx5.i253 = getelementptr i8, ptr %131, i32 %132
  %133 = ptrtoint ptr %arrayidx5.i253 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %conv1.i251, ptr %arrayidx5.i253, align 1
  tail call fastcc void @flush_pending(ptr noundef nonnull %strm)
  %134 = ptrtoint ptr %noheader to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 -1, ptr %noheader, align 4
  %135 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %cmp130.not = icmp eq i32 %136, 0
  %cond = zext i1 %cmp130.not to i32
  br label %cleanup131

cleanup131:                                       ; preds = %if.end123, %if.end121.cleanup131_crit_edge, %if.end118.cleanup131_crit_edge, %if.then114, %if.then90, %if.then87.cleanup131_crit_edge, %lor.lhs.false71.cleanup131_crit_edge, %land.lhs.true62.cleanup131_crit_edge, %if.else.cleanup131_crit_edge, %if.then48, %if.end14.cleanup131_crit_edge, %lor.lhs.false9.cleanup131_crit_edge, %land.lhs.true.cleanup131_crit_edge, %lor.lhs.false.cleanup131_crit_edge, %entry.cleanup131_crit_edge
  %retval.1 = phi i32 [ 0, %if.then48 ], [ %cond, %if.end123 ], [ -2, %lor.lhs.false.cleanup131_crit_edge ], [ -2, %entry.cleanup131_crit_edge ], [ -2, %lor.lhs.false9.cleanup131_crit_edge ], [ -2, %land.lhs.true.cleanup131_crit_edge ], [ -5, %if.end14.cleanup131_crit_edge ], [ -5, %if.else.cleanup131_crit_edge ], [ -5, %land.lhs.true62.cleanup131_crit_edge ], [ 0, %if.then114 ], [ 0, %if.then90 ], [ 0, %lor.lhs.false71.cleanup131_crit_edge ], [ 0, %if.end118.cleanup131_crit_edge ], [ 1, %if.end121.cleanup131_crit_edge ], [ 0, %if.then87.cleanup131_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @flush_pending(ptr nocapture noundef %strm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %state = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 7
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %pending = getelementptr inbounds %struct.deflate_state, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pending, align 4
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 4
  %4 = ptrtoint ptr %avail_out to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %avail_out, align 4
  %6 = tail call i32 @llvm.umin.i32(i32 %3, i32 %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2 = icmp eq i32 %6, 0
  br i1 %cmp2, label %entry.cleanup_crit_edge, label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %entry
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 3
  %7 = ptrtoint ptr %next_out to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %next_out, align 4
  %cmp5.not = icmp eq ptr %8, null
  br i1 %cmp5.not, label %if.end4.if.end9_crit_edge, label %if.then6

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %pending_out = getelementptr inbounds %struct.deflate_state, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %pending_out to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pending_out, align 4
  %11 = call ptr @memcpy(ptr %8, ptr %10, i32 %6)
  %12 = ptrtoint ptr %next_out to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %next_out, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 %6
  store ptr %add.ptr, ptr %next_out, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end4.if.end9_crit_edge
  %pending_out10 = getelementptr inbounds %struct.deflate_state, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %pending_out10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pending_out10, align 4
  %add.ptr11 = getelementptr i8, ptr %15, i32 %6
  store ptr %add.ptr11, ptr %pending_out10, align 4
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 5
  %16 = ptrtoint ptr %total_out to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %total_out, align 4
  %add = add i32 %17, %6
  store i32 %add, ptr %total_out, align 4
  %18 = ptrtoint ptr %avail_out to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %avail_out, align 4
  %sub = sub i32 %19, %6
  store i32 %sub, ptr %avail_out, align 4
  %20 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pending, align 4
  %sub14 = sub i32 %21, %6
  store i32 %sub14, ptr %pending, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %6)
  %cmp16 = icmp eq i32 %21, %6
  br i1 %cmp16, label %if.then17, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then17:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %pending_buf = getelementptr inbounds %struct.deflate_state, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %pending_buf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pending_buf, align 4
  %24 = ptrtoint ptr %pending_out10 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %pending_out10, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @zlib_tr_align(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @zlib_tr_stored_type_only(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @zlib_tr_stored_block(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @zlib_deflateEnd(ptr noundef %strm) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %strm, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 7
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %status3 = getelementptr inbounds %struct.deflate_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %status3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status3, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %3, label %if.end.cleanup_crit_edge [
    i32 42, label %if.end.if.end9_crit_edge
    i32 113, label %if.end.if.end9_crit_edge20
    i32 666, label %if.end.if.end9_crit_edge21
  ]

if.end.if.end9_crit_edge21:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end.if.end9_crit_edge20:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end.if.end9_crit_edge, %if.end.if.end9_crit_edge20, %if.end.if.end9_crit_edge21
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 113, i32 %3)
  %cmp11 = icmp eq i32 %3, 113
  %cond = select i1 %cmp11, i32 -3, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end9 ], [ -2, %lor.lhs.false.cleanup_crit_edge ], [ -2, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zlib_deflate_workspacesize(i32 noundef %windowBits, i32 noundef %memLevel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.abs.i32(i32 %windowBits, i1 false)
  %1 = add i32 %memLevel, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %1)
  %2 = icmp ult i32 %1, -8
  %3 = add i32 %0, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %3)
  %4 = icmp ult i32 %3, -7
  %5 = or i1 %4, %2
  br i1 %5, label %do.body8, label %do.end12, !prof !11

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/zlib_deflate/deflate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1134, 0\0A.popsection", ""() #8, !srcloc !12
  unreachable

do.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %reass.add = shl nuw nsw i32 4, %0
  %add16 = add nuw nsw i32 %reass.add, 5836
  %reass.add35 = shl nuw nsw i32 512, %memLevel
  %add24 = add nuw nsw i32 %add16, %reass.add35
  ret i32 %add24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @zlib_deflate_dfltcc_enabled() local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @deflate_stored(ptr noundef %s, i32 noundef %flush) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pending_buf_size = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 3
  %0 = ptrtoint ptr %pending_buf_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pending_buf_size, align 4
  %sub = add i32 %1, -5
  %2 = tail call i32 @llvm.umin.i32(i32 %sub, i32 65535)
  %lookahead = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 28
  %strstart = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 26
  %block_start = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 22
  %window = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 13
  %w_size = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 10
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %entry
  %3 = ptrtoint ptr %lookahead to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lookahead, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp3 = icmp ult i32 %4, 2
  br i1 %cmp3, label %if.then4, label %for.cond.if.end14_crit_edge

for.cond.if.end14_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then4:                                         ; preds = %for.cond
  tail call fastcc void @fill_window(ptr noundef %s)
  %5 = ptrtoint ptr %lookahead to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %lookahead, align 4
  %7 = or i32 %6, %flush
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %if.then4.cleanup_crit_edge, label %if.end9

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp6 = icmp eq i32 %6, 0
  br i1 %cmp6, label %for.end, label %if.end9.if.end14_crit_edge

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.end14:                                         ; preds = %if.end9.if.end14_crit_edge, %for.cond.if.end14_crit_edge
  %9 = ptrtoint ptr %lookahead to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lookahead, align 4
  %11 = ptrtoint ptr %strstart to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %strstart, align 4
  %add = add i32 %12, %10
  store i32 %add, ptr %strstart, align 4
  store i32 0, ptr %lookahead, align 4
  %13 = ptrtoint ptr %block_start to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %block_start, align 4
  %add17 = add i32 %14, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp19 = icmp ne i32 %add, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %add17)
  %cmp21.not = icmp ult i32 %add, %add17
  %or.cond154 = select i1 %cmp19, i1 %cmp21.not, i1 false
  br i1 %or.cond154, label %if.end14.if.end39_crit_edge, label %if.then22

if.end14.if.end39_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then22:                                        ; preds = %if.end14
  %sub24 = sub i32 %add, %add17
  %15 = ptrtoint ptr %lookahead to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub24, ptr %lookahead, align 4
  %16 = ptrtoint ptr %strstart to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add17, ptr %strstart, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp28 = icmp sgt i32 %14, -1
  br i1 %cmp28, label %cond.true, label %if.then22.cond.end_crit_edge

if.then22.cond.end_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %window to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %window, align 4
  %arrayidx = getelementptr i8, ptr %18, i32 %14
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then22.cond.end_crit_edge
  %cond = phi ptr [ %arrayidx, %cond.true ], [ null, %if.then22.cond.end_crit_edge ]
  %call = tail call i32 @zlib_tr_flush_block(ptr noundef %s, ptr noundef %cond, i32 noundef %2, i32 noundef 0) #8
  %19 = ptrtoint ptr %strstart to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %strstart, align 4
  %21 = ptrtoint ptr %block_start to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %block_start, align 4
  %22 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s, align 4
  %state.i = getelementptr inbounds %struct.z_stream_s, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %state.i, align 4
  %pending.i = getelementptr inbounds %struct.deflate_state, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %pending.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pending.i, align 4
  %avail_out.i = getelementptr inbounds %struct.z_stream_s, ptr %23, i32 0, i32 4
  %28 = ptrtoint ptr %avail_out.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %avail_out.i, align 4
  %30 = tail call i32 @llvm.umin.i32(i32 %27, i32 %29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp2.i = icmp eq i32 %30, 0
  br i1 %cmp2.i, label %cond.end.flush_pending.exit_crit_edge, label %if.end4.i

cond.end.flush_pending.exit_crit_edge:            ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %flush_pending.exit

if.end4.i:                                        ; preds = %cond.end
  %next_out.i = getelementptr inbounds %struct.z_stream_s, ptr %23, i32 0, i32 3
  %31 = ptrtoint ptr %next_out.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %next_out.i, align 4
  %cmp5.not.i = icmp eq ptr %32, null
  br i1 %cmp5.not.i, label %if.end4.i.if.end9.i_crit_edge, label %if.then6.i

if.end4.i.if.end9.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %pending_out.i = getelementptr inbounds %struct.deflate_state, ptr %25, i32 0, i32 4
  %33 = ptrtoint ptr %pending_out.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pending_out.i, align 4
  %35 = call ptr @memcpy(ptr %32, ptr %34, i32 %30)
  %36 = ptrtoint ptr %next_out.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %next_out.i, align 4
  %add.ptr.i = getelementptr i8, ptr %37, i32 %30
  store ptr %add.ptr.i, ptr %next_out.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.i, %if.end4.i.if.end9.i_crit_edge
  %pending_out10.i = getelementptr inbounds %struct.deflate_state, ptr %25, i32 0, i32 4
  %38 = ptrtoint ptr %pending_out10.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pending_out10.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %39, i32 %30
  store ptr %add.ptr11.i, ptr %pending_out10.i, align 4
  %total_out.i = getelementptr inbounds %struct.z_stream_s, ptr %23, i32 0, i32 5
  %40 = ptrtoint ptr %total_out.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %total_out.i, align 4
  %add.i = add i32 %41, %30
  store i32 %add.i, ptr %total_out.i, align 4
  %42 = ptrtoint ptr %avail_out.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %avail_out.i, align 4
  %sub.i = sub i32 %43, %30
  store i32 %sub.i, ptr %avail_out.i, align 4
  %44 = ptrtoint ptr %pending.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pending.i, align 4
  %sub14.i = sub i32 %45, %30
  store i32 %sub14.i, ptr %pending.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %30)
  %cmp16.i = icmp eq i32 %45, %30
  br i1 %cmp16.i, label %if.then17.i, label %if.end9.i.flush_pending.exit_crit_edge

if.end9.i.flush_pending.exit_crit_edge:           ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flush_pending.exit

if.then17.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %pending_buf.i = getelementptr inbounds %struct.deflate_state, ptr %25, i32 0, i32 2
  %46 = ptrtoint ptr %pending_buf.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pending_buf.i, align 4
  %48 = ptrtoint ptr %pending_out10.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %pending_out10.i, align 4
  br label %flush_pending.exit

flush_pending.exit:                               ; preds = %if.then17.i, %if.end9.i.flush_pending.exit_crit_edge, %cond.end.flush_pending.exit_crit_edge
  %49 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s, align 4
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %avail_out to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %avail_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp36 = icmp eq i32 %52, 0
  br i1 %cmp36, label %flush_pending.exit.cleanup_crit_edge, label %if.end39thread-pre-split

flush_pending.exit.cleanup_crit_edge:             ; preds = %flush_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end39thread-pre-split:                         ; preds = %flush_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %block_start to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pr = load i32, ptr %block_start, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.end39thread-pre-split, %if.end14.if.end39_crit_edge
  %54 = phi i32 [ %.pr, %if.end39thread-pre-split ], [ %14, %if.end14.if.end39_crit_edge ]
  %55 = ptrtoint ptr %strstart to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %strstart, align 4
  %sub42 = sub i32 %56, %54
  %57 = ptrtoint ptr %w_size to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %w_size, align 4
  %sub43 = add i32 %58, -262
  call void @__sanitizer_cov_trace_cmp4(i32 %sub42, i32 %sub43)
  %cmp44.not = icmp ult i32 %sub42, %sub43
  br i1 %cmp44.not, label %if.end39.for.cond.backedge_crit_edge, label %if.then45

if.end39.for.cond.backedge_crit_edge:             ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

if.then45:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %54)
  %cmp47 = icmp sgt i32 %54, -1
  br i1 %cmp47, label %cond.true48, label %if.then45.cond.end53_crit_edge

if.then45.cond.end53_crit_edge:                   ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end53

cond.true48:                                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %window to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %window, align 4
  %arrayidx51 = getelementptr i8, ptr %60, i32 %54
  br label %cond.end53

cond.end53:                                       ; preds = %cond.true48, %if.then45.cond.end53_crit_edge
  %cond54 = phi ptr [ %arrayidx51, %cond.true48 ], [ null, %if.then45.cond.end53_crit_edge ]
  %call58 = tail call i32 @zlib_tr_flush_block(ptr noundef %s, ptr noundef %cond54, i32 noundef %sub42, i32 noundef 0) #8
  %61 = ptrtoint ptr %strstart to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %strstart, align 4
  %63 = ptrtoint ptr %block_start to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %block_start, align 4
  %64 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %s, align 4
  %state.i155 = getelementptr inbounds %struct.z_stream_s, ptr %65, i32 0, i32 7
  %66 = ptrtoint ptr %state.i155 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %state.i155, align 4
  %pending.i156 = getelementptr inbounds %struct.deflate_state, ptr %67, i32 0, i32 5
  %68 = ptrtoint ptr %pending.i156 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pending.i156, align 4
  %avail_out.i157 = getelementptr inbounds %struct.z_stream_s, ptr %65, i32 0, i32 4
  %70 = ptrtoint ptr %avail_out.i157 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %avail_out.i157, align 4
  %72 = tail call i32 @llvm.umin.i32(i32 %69, i32 %71) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp2.i158 = icmp eq i32 %72, 0
  br i1 %cmp2.i158, label %cond.end53.flush_pending.exit175_crit_edge, label %if.end4.i161

cond.end53.flush_pending.exit175_crit_edge:       ; preds = %cond.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %flush_pending.exit175

if.end4.i161:                                     ; preds = %cond.end53
  %next_out.i159 = getelementptr inbounds %struct.z_stream_s, ptr %65, i32 0, i32 3
  %73 = ptrtoint ptr %next_out.i159 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %next_out.i159, align 4
  %cmp5.not.i160 = icmp eq ptr %74, null
  br i1 %cmp5.not.i160, label %if.end4.i161.if.end9.i172_crit_edge, label %if.then6.i164

if.end4.i161.if.end9.i172_crit_edge:              ; preds = %if.end4.i161
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i172

if.then6.i164:                                    ; preds = %if.end4.i161
  call void @__sanitizer_cov_trace_pc() #10
  %pending_out.i162 = getelementptr inbounds %struct.deflate_state, ptr %67, i32 0, i32 4
  %75 = ptrtoint ptr %pending_out.i162 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pending_out.i162, align 4
  %77 = call ptr @memcpy(ptr %74, ptr %76, i32 %72)
  %78 = ptrtoint ptr %next_out.i159 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %next_out.i159, align 4
  %add.ptr.i163 = getelementptr i8, ptr %79, i32 %72
  store ptr %add.ptr.i163, ptr %next_out.i159, align 4
  br label %if.end9.i172

if.end9.i172:                                     ; preds = %if.then6.i164, %if.end4.i161.if.end9.i172_crit_edge
  %pending_out10.i165 = getelementptr inbounds %struct.deflate_state, ptr %67, i32 0, i32 4
  %80 = ptrtoint ptr %pending_out10.i165 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pending_out10.i165, align 4
  %add.ptr11.i166 = getelementptr i8, ptr %81, i32 %72
  store ptr %add.ptr11.i166, ptr %pending_out10.i165, align 4
  %total_out.i167 = getelementptr inbounds %struct.z_stream_s, ptr %65, i32 0, i32 5
  %82 = ptrtoint ptr %total_out.i167 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %total_out.i167, align 4
  %add.i168 = add i32 %83, %72
  store i32 %add.i168, ptr %total_out.i167, align 4
  %84 = ptrtoint ptr %avail_out.i157 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %avail_out.i157, align 4
  %sub.i169 = sub i32 %85, %72
  store i32 %sub.i169, ptr %avail_out.i157, align 4
  %86 = ptrtoint ptr %pending.i156 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %pending.i156, align 4
  %sub14.i170 = sub i32 %87, %72
  store i32 %sub14.i170, ptr %pending.i156, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %72)
  %cmp16.i171 = icmp eq i32 %87, %72
  br i1 %cmp16.i171, label %if.then17.i174, label %if.end9.i172.flush_pending.exit175_crit_edge

if.end9.i172.flush_pending.exit175_crit_edge:     ; preds = %if.end9.i172
  call void @__sanitizer_cov_trace_pc() #10
  br label %flush_pending.exit175

if.then17.i174:                                   ; preds = %if.end9.i172
  call void @__sanitizer_cov_trace_pc() #10
  %pending_buf.i173 = getelementptr inbounds %struct.deflate_state, ptr %67, i32 0, i32 2
  %88 = ptrtoint ptr %pending_buf.i173 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pending_buf.i173, align 4
  %90 = ptrtoint ptr %pending_out10.i165 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %89, ptr %pending_out10.i165, align 4
  br label %flush_pending.exit175

flush_pending.exit175:                            ; preds = %if.then17.i174, %if.end9.i172.flush_pending.exit175_crit_edge, %cond.end53.flush_pending.exit175_crit_edge
  %91 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %s, align 4
  %avail_out63 = getelementptr inbounds %struct.z_stream_s, ptr %92, i32 0, i32 4
  %93 = ptrtoint ptr %avail_out63 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %avail_out63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp64 = icmp eq i32 %94, 0
  br i1 %cmp64, label %flush_pending.exit175.cleanup_crit_edge, label %flush_pending.exit175.for.cond.backedge_crit_edge

flush_pending.exit175.for.cond.backedge_crit_edge: ; preds = %flush_pending.exit175
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

flush_pending.exit175.cleanup_crit_edge:          ; preds = %flush_pending.exit175
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.backedge:                                ; preds = %flush_pending.exit175.for.cond.backedge_crit_edge, %if.end39.for.cond.backedge_crit_edge
  br label %for.cond

for.end:                                          ; preds = %if.end9
  %95 = ptrtoint ptr %block_start to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %block_start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %96)
  %cmp69 = icmp sgt i32 %96, -1
  br i1 %cmp69, label %cond.true70, label %for.end.cond.end75_crit_edge

for.end.cond.end75_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end75

cond.true70:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %97 = ptrtoint ptr %window to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %window, align 4
  %arrayidx73 = getelementptr i8, ptr %98, i32 %96
  br label %cond.end75

cond.end75:                                       ; preds = %cond.true70, %for.end.cond.end75_crit_edge
  %cond76 = phi ptr [ %arrayidx73, %cond.true70 ], [ null, %for.end.cond.end75_crit_edge ]
  %99 = ptrtoint ptr %strstart to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %strstart, align 4
  %sub79 = sub i32 %100, %96
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %flush)
  %cmp80 = icmp eq i32 %flush, 5
  %conv = zext i1 %cmp80 to i32
  %call81 = tail call i32 @zlib_tr_flush_block(ptr noundef %s, ptr noundef %cond76, i32 noundef %sub79, i32 noundef %conv) #8
  %101 = ptrtoint ptr %strstart to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %strstart, align 4
  %103 = ptrtoint ptr %block_start to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %block_start, align 4
  %104 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %s, align 4
  %state.i176 = getelementptr inbounds %struct.z_stream_s, ptr %105, i32 0, i32 7
  %106 = ptrtoint ptr %state.i176 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %state.i176, align 4
  %pending.i177 = getelementptr inbounds %struct.deflate_state, ptr %107, i32 0, i32 5
  %108 = ptrtoint ptr %pending.i177 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %pending.i177, align 4
  %avail_out.i178 = getelementptr inbounds %struct.z_stream_s, ptr %105, i32 0, i32 4
  %110 = ptrtoint ptr %avail_out.i178 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %avail_out.i178, align 4
  %112 = tail call i32 @llvm.umin.i32(i32 %109, i32 %111) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp2.i179 = icmp eq i32 %112, 0
  br i1 %cmp2.i179, label %cond.end75.flush_pending.exit196_crit_edge, label %if.end4.i182

cond.end75.flush_pending.exit196_crit_edge:       ; preds = %cond.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %flush_pending.exit196

if.end4.i182:                                     ; preds = %cond.end75
  %next_out.i180 = getelementptr inbounds %struct.z_stream_s, ptr %105, i32 0, i32 3
  %113 = ptrtoint ptr %next_out.i180 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %next_out.i180, align 4
  %cmp5.not.i181 = icmp eq ptr %114, null
  br i1 %cmp5.not.i181, label %if.end4.i182.if.end9.i193_crit_edge, label %if.then6.i185

if.end4.i182.if.end9.i193_crit_edge:              ; preds = %if.end4.i182
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i193

if.then6.i185:                                    ; preds = %if.end4.i182
  call void @__sanitizer_cov_trace_pc() #10
  %pending_out.i183 = getelementptr inbounds %struct.deflate_state, ptr %107, i32 0, i32 4
  %115 = ptrtoint ptr %pending_out.i183 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %pending_out.i183, align 4
  %117 = call ptr @memcpy(ptr %114, ptr %116, i32 %112)
  %118 = ptrtoint ptr %next_out.i180 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %next_out.i180, align 4
  %add.ptr.i184 = getelementptr i8, ptr %119, i32 %112
  store ptr %add.ptr.i184, ptr %next_out.i180, align 4
  br label %if.end9.i193

if.end9.i193:                                     ; preds = %if.then6.i185, %if.end4.i182.if.end9.i193_crit_edge
  %pending_out10.i186 = getelementptr inbounds %struct.deflate_state, ptr %107, i32 0, i32 4
  %120 = ptrtoint ptr %pending_out10.i186 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pending_out10.i186, align 4
  %add.ptr11.i187 = getelementptr i8, ptr %121, i32 %112
  store ptr %add.ptr11.i187, ptr %pending_out10.i186, align 4
  %total_out.i188 = getelementptr inbounds %struct.z_stream_s, ptr %105, i32 0, i32 5
  %122 = ptrtoint ptr %total_out.i188 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %total_out.i188, align 4
  %add.i189 = add i32 %123, %112
  store i32 %add.i189, ptr %total_out.i188, align 4
  %124 = ptrtoint ptr %avail_out.i178 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %avail_out.i178, align 4
  %sub.i190 = sub i32 %125, %112
  store i32 %sub.i190, ptr %avail_out.i178, align 4
  %126 = ptrtoint ptr %pending.i177 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %pending.i177, align 4
  %sub14.i191 = sub i32 %127, %112
  store i32 %sub14.i191, ptr %pending.i177, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %127, i32 %112)
  %cmp16.i192 = icmp eq i32 %127, %112
  br i1 %cmp16.i192, label %if.then17.i195, label %if.end9.i193.flush_pending.exit196_crit_edge

if.end9.i193.flush_pending.exit196_crit_edge:     ; preds = %if.end9.i193
  call void @__sanitizer_cov_trace_pc() #10
  br label %flush_pending.exit196

if.then17.i195:                                   ; preds = %if.end9.i193
  call void @__sanitizer_cov_trace_pc() #10
  %pending_buf.i194 = getelementptr inbounds %struct.deflate_state, ptr %107, i32 0, i32 2
  %128 = ptrtoint ptr %pending_buf.i194 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %pending_buf.i194, align 4
  %130 = ptrtoint ptr %pending_out10.i186 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %129, ptr %pending_out10.i186, align 4
  br label %flush_pending.exit196

flush_pending.exit196:                            ; preds = %if.then17.i195, %if.end9.i193.flush_pending.exit196_crit_edge, %cond.end75.flush_pending.exit196_crit_edge
  %131 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %s, align 4
  %avail_out86 = getelementptr inbounds %struct.z_stream_s, ptr %132, i32 0, i32 4
  %133 = ptrtoint ptr %avail_out86 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %avail_out86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %cmp87 = icmp eq i32 %134, 0
  br i1 %cmp87, label %if.then89, label %if.end93

if.then89:                                        ; preds = %flush_pending.exit196
  call void @__sanitizer_cov_trace_pc() #10
  %cond92 = select i1 %cmp80, i32 2, i32 0
  br label %cleanup

if.end93:                                         ; preds = %flush_pending.exit196
  call void @__sanitizer_cov_trace_pc() #10
  %cond96 = select i1 %cmp80, i32 3, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end93, %if.then89, %flush_pending.exit175.cleanup_crit_edge, %flush_pending.exit.cleanup_crit_edge, %if.then4.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond92, %if.then89 ], [ %cond96, %if.end93 ], [ 0, %if.then4.cleanup_crit_edge ], [ 0, %flush_pending.exit.cleanup_crit_edge ], [ 0, %flush_pending.exit175.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @deflate_fast(ptr noundef %s, i32 noundef %flush) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lookahead = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flush)
  %cmp3 = icmp eq i32 %flush, 0
  %ins_h = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 17
  %hash_shift = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 21
  %window = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 13
  %strstart = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 26
  %hash_mask = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 20
  %head = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 16
  %prev = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 15
  %w_mask = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 12
  %w_size = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 10
  %strategy = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 33
  %match_length = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 23
  %match_start = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 27
  %max_lazy_match = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 31
  %block_start = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 22
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %entry
  %hash_head.0 = phi i32 [ 0, %entry ], [ %hash_head.2, %for.cond.backedge ]
  %0 = ptrtoint ptr %lookahead to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lookahead, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262, i32 %1)
  %cmp = icmp ult i32 %1, 262
  br i1 %cmp, label %if.then, label %for.cond.if.then12_crit_edge

for.cond.if.then12_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.then:                                          ; preds = %for.cond
  tail call fastcc void @fill_window(ptr noundef %s)
  %2 = ptrtoint ptr %lookahead to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lookahead, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262, i32 %3)
  %cmp2 = icmp ult i32 %3, 262
  %or.cond = and i1 %cmp3, %cmp2
  br i1 %or.cond, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6 = icmp eq i32 %3, 0
  br i1 %cmp6, label %for.end, label %if.end9

if.end9:                                          ; preds = %if.end
  %4 = ptrtoint ptr %lookahead to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pr = load i32, ptr %lookahead, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp11 = icmp ugt i32 %.pr, 2
  br i1 %cmp11, label %if.end9.if.then12_crit_edge, label %if.end9.if.end26_crit_edge

if.end9.if.end26_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.end9.if.then12_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.then12:                                        ; preds = %if.end9.if.then12_crit_edge, %for.cond.if.then12_crit_edge
  %5 = ptrtoint ptr %ins_h to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ins_h, align 4
  %7 = ptrtoint ptr %hash_shift to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hash_shift, align 4
  %shl = shl i32 %6, %8
  %9 = ptrtoint ptr %window to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %window, align 4
  %11 = ptrtoint ptr %strstart to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %strstart, align 4
  %add = add i32 %12, 2
  %arrayidx = getelementptr i8, ptr %10, i32 %add
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %14 to i32
  %xor = xor i32 %shl, %conv
  %15 = ptrtoint ptr %hash_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hash_mask, align 4
  %and = and i32 %xor, %16
  store i32 %and, ptr %ins_h, align 4
  %17 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head, align 4
  %arrayidx15 = getelementptr i16, ptr %18, i32 %and
  %19 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx15, align 2
  %conv16 = zext i16 %20 to i32
  %21 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev, align 4
  %23 = ptrtoint ptr %w_mask to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %w_mask, align 4
  %and19 = and i32 %24, %12
  %arrayidx20 = getelementptr i16, ptr %22, i32 %and19
  %25 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %20, ptr %arrayidx20, align 2
  %26 = load i32, ptr %strstart, align 4
  %conv22 = trunc i32 %26 to i16
  %27 = load ptr, ptr %head, align 4
  %28 = load i32, ptr %ins_h, align 4
  %arrayidx25 = getelementptr i16, ptr %27, i32 %28
  %29 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv22, ptr %arrayidx25, align 2
  br label %if.end26

if.end26:                                         ; preds = %if.then12, %if.end9.if.end26_crit_edge
  %hash_head.1 = phi i32 [ %conv16, %if.then12 ], [ %hash_head.0, %if.end9.if.end26_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hash_head.1)
  %cmp27.not = icmp eq i32 %hash_head.1, 0
  br i1 %cmp27.not, label %if.end26.if.end39thread-pre-split_crit_edge, label %land.lhs.true29

if.end26.if.end39thread-pre-split_crit_edge:      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39thread-pre-split

land.lhs.true29:                                  ; preds = %if.end26
  %30 = ptrtoint ptr %strstart to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %strstart, align 4
  %sub = sub i32 %31, %hash_head.1
  %32 = ptrtoint ptr %w_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %w_size, align 4
  %sub31 = add i32 %33, -262
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %sub31)
  %cmp32.not = icmp ugt i32 %sub, %sub31
  br i1 %cmp32.not, label %land.lhs.true29.if.end39thread-pre-split_crit_edge, label %if.then34

land.lhs.true29.if.end39thread-pre-split_crit_edge: ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39thread-pre-split

if.then34:                                        ; preds = %land.lhs.true29
  %34 = ptrtoint ptr %strategy to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %strategy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp35.not = icmp eq i32 %35, 2
  br i1 %cmp35.not, label %if.then34.if.end39thread-pre-split_crit_edge, label %if.then37

if.then34.if.end39thread-pre-split_crit_edge:     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39thread-pre-split

if.then37:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call fastcc i32 @longest_match(ptr noundef %s, i32 noundef %hash_head.1)
  %36 = ptrtoint ptr %match_length to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call, ptr %match_length, align 4
  br label %if.end39

if.end39thread-pre-split:                         ; preds = %if.then34.if.end39thread-pre-split_crit_edge, %land.lhs.true29.if.end39thread-pre-split_crit_edge, %if.end26.if.end39thread-pre-split_crit_edge
  %37 = ptrtoint ptr %match_length to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr297 = load i32, ptr %match_length, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.end39thread-pre-split, %if.then37
  %38 = phi i32 [ %.pr297, %if.end39thread-pre-split ], [ %call, %if.then37 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %38)
  %cmp41 = icmp ugt i32 %38, 2
  br i1 %cmp41, label %if.then43, label %if.else117

if.then43:                                        ; preds = %if.end39
  %39 = ptrtoint ptr %strstart to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %strstart, align 4
  %41 = ptrtoint ptr %match_start to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %match_start, align 4
  %sub45 = sub i32 %40, %42
  %sub47 = add i32 %38, -3
  %call48 = tail call i32 @zlib_tr_tally(ptr noundef %s, i32 noundef %sub45, i32 noundef %sub47) #8
  %43 = ptrtoint ptr %match_length to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %match_length, align 4
  %45 = ptrtoint ptr %lookahead to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %lookahead, align 4
  %sub51 = sub i32 %46, %44
  store i32 %sub51, ptr %lookahead, align 4
  %47 = ptrtoint ptr %max_lazy_match to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %max_lazy_match, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %48)
  %cmp53.not = icmp ule i32 %44, %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub51)
  %cmp57 = icmp ugt i32 %sub51, 2
  %or.cond274 = select i1 %cmp53.not, i1 %cmp57, i1 false
  br i1 %or.cond274, label %if.then59, label %if.else

if.then59:                                        ; preds = %if.then43
  %dec = add i32 %44, -1
  %49 = ptrtoint ptr %match_length to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %dec, ptr %match_length, align 4
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.then59
  %50 = ptrtoint ptr %strstart to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %strstart, align 4
  %inc = add i32 %51, 1
  store i32 %inc, ptr %strstart, align 4
  %52 = ptrtoint ptr %ins_h to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ins_h, align 4
  %54 = ptrtoint ptr %hash_shift to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %hash_shift, align 4
  %shl64 = shl i32 %53, %55
  %56 = ptrtoint ptr %window to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %window, align 4
  %add67 = add i32 %51, 3
  %arrayidx68 = getelementptr i8, ptr %57, i32 %add67
  %58 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx68, align 1
  %conv69 = zext i8 %59 to i32
  %xor70 = xor i32 %shl64, %conv69
  %60 = ptrtoint ptr %hash_mask to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %hash_mask, align 4
  %and72 = and i32 %xor70, %61
  store i32 %and72, ptr %ins_h, align 4
  %62 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %head, align 4
  %arrayidx76 = getelementptr i16, ptr %63, i32 %and72
  %64 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx76, align 2
  %66 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %prev, align 4
  %68 = ptrtoint ptr %w_mask to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %w_mask, align 4
  %and82 = and i32 %69, %inc
  %arrayidx83 = getelementptr i16, ptr %67, i32 %and82
  %70 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %65, ptr %arrayidx83, align 2
  %71 = load i32, ptr %strstart, align 4
  %conv85 = trunc i32 %71 to i16
  %72 = load ptr, ptr %head, align 4
  %73 = load i32, ptr %ins_h, align 4
  %arrayidx88 = getelementptr i16, ptr %72, i32 %73
  %74 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv85, ptr %arrayidx88, align 2
  %75 = ptrtoint ptr %match_length to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %match_length, align 4
  %dec90 = add i32 %76, -1
  store i32 %dec90, ptr %match_length, align 4
  %cmp91.not = icmp eq i32 %dec90, 0
  br i1 %cmp91.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv77 = zext i16 %65 to i32
  %77 = ptrtoint ptr %strstart to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %strstart, align 4
  %inc94 = add i32 %78, 1
  store i32 %inc94, ptr %strstart, align 4
  br label %if.end127

if.else:                                          ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  %79 = ptrtoint ptr %strstart to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %strstart, align 4
  %add97 = add i32 %80, %44
  store i32 %add97, ptr %strstart, align 4
  %81 = ptrtoint ptr %match_length to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %match_length, align 4
  %82 = ptrtoint ptr %window to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %window, align 4
  %arrayidx101 = getelementptr i8, ptr %83, i32 %add97
  %84 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx101, align 1
  %conv102 = zext i8 %85 to i32
  %86 = ptrtoint ptr %ins_h to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %conv102, ptr %ins_h, align 4
  %87 = ptrtoint ptr %hash_shift to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %hash_shift, align 4
  %shl106 = shl i32 %conv102, %88
  %add109 = add i32 %add97, 1
  %arrayidx110 = getelementptr i8, ptr %83, i32 %add109
  %89 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx110, align 1
  %conv111 = zext i8 %90 to i32
  %xor112 = xor i32 %shl106, %conv111
  %91 = ptrtoint ptr %hash_mask to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %hash_mask, align 4
  %and114 = and i32 %xor112, %92
  store i32 %and114, ptr %ins_h, align 4
  br label %if.end127

if.else117:                                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %93 = ptrtoint ptr %window to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %window, align 4
  %95 = ptrtoint ptr %strstart to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %strstart, align 4
  %arrayidx120 = getelementptr i8, ptr %94, i32 %96
  %97 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx120, align 1
  %conv121 = zext i8 %98 to i32
  %call122 = tail call i32 @zlib_tr_tally(ptr noundef %s, i32 noundef 0, i32 noundef %conv121) #8
  %99 = ptrtoint ptr %lookahead to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %lookahead, align 4
  %dec124 = add i32 %100, -1
  store i32 %dec124, ptr %lookahead, align 4
  %101 = ptrtoint ptr %strstart to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %strstart, align 4
  %inc126 = add i32 %102, 1
  store i32 %inc126, ptr %strstart, align 4
  br label %if.end127

if.end127:                                        ; preds = %if.else117, %if.else, %do.end
  %hash_head.2 = phi i32 [ %conv77, %do.end ], [ %hash_head.1, %if.else ], [ %hash_head.1, %if.else117 ]
  %bflush.0 = phi i32 [ %call48, %do.end ], [ %call48, %if.else ], [ %call122, %if.else117 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bflush.0)
  %tobool.not = icmp eq i32 %bflush.0, 0
  br i1 %tobool.not, label %if.end127.for.cond.backedge_crit_edge, label %if.then128

if.end127.for.cond.backedge_crit_edge:            ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

if.then128:                                       ; preds = %if.end127
  %103 = ptrtoint ptr %block_start to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %block_start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %104)
  %cmp129 = icmp sgt i32 %104, -1
  br i1 %cmp129, label %cond.true, label %if.then128.cond.end_crit_edge

if.then128.cond.end_crit_edge:                    ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #10
  %105 = ptrtoint ptr %window to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %window, align 4
  %arrayidx133 = getelementptr i8, ptr %106, i32 %104
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then128.cond.end_crit_edge
  %cond = phi ptr [ %arrayidx133, %cond.true ], [ null, %if.then128.cond.end_crit_edge ]
  %107 = ptrtoint ptr %strstart to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %strstart, align 4
  %sub136 = sub i32 %108, %104
  %call137 = tail call i32 @zlib_tr_flush_block(ptr noundef %s, ptr noundef %cond, i32 noundef %sub136, i32 noundef 0) #8
  %109 = ptrtoint ptr %strstart to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %strstart, align 4
  %111 = ptrtoint ptr %block_start to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %block_start, align 4
  %112 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %s, align 4
  %state.i = getelementptr inbounds %struct.z_stream_s, ptr %113, i32 0, i32 7
  %114 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %state.i, align 4
  %pending.i = getelementptr inbounds %struct.deflate_state, ptr %115, i32 0, i32 5
  %116 = ptrtoint ptr %pending.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %pending.i, align 4
  %avail_out.i = getelementptr inbounds %struct.z_stream_s, ptr %113, i32 0, i32 4
  %118 = ptrtoint ptr %avail_out.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %avail_out.i, align 4
  %120 = tail call i32 @llvm.umin.i32(i32 %117, i32 %119) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cmp2.i = icmp eq i32 %120, 0
  br i1 %cmp2.i, label %cond.end.flush_pending.exit_crit_edge, label %if.end4.i

cond.end.flush_pending.exit_crit_edge:            ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %flush_pending.exit

if.end4.i:                                        ; preds = %cond.end
  %next_out.i = getelementptr inbounds %struct.z_stream_s, ptr %113, i32 0, i32 3
  %121 = ptrtoint ptr %next_out.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %next_out.i, align 4
  %cmp5.not.i = icmp eq ptr %122, null
  br i1 %cmp5.not.i, label %if.end4.i.if.end9.i_crit_edge, label %if.then6.i

if.end4.i.if.end9.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %pending_out.i = getelementptr inbounds %struct.deflate_state, ptr %115, i32 0, i32 4
  %123 = ptrtoint ptr %pending_out.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %pending_out.i, align 4
  %125 = call ptr @memcpy(ptr %122, ptr %124, i32 %120)
  %126 = ptrtoint ptr %next_out.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %next_out.i, align 4
  %add.ptr.i = getelementptr i8, ptr %127, i32 %120
  store ptr %add.ptr.i, ptr %next_out.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.i, %if.end4.i.if.end9.i_crit_edge
  %pending_out10.i = getelementptr inbounds %struct.deflate_state, ptr %115, i32 0, i32 4
  %128 = ptrtoint ptr %pending_out10.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %pending_out10.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %129, i32 %120
  store ptr %add.ptr11.i, ptr %pending_out10.i, align 4
  %total_out.i = getelementptr inbounds %struct.z_stream_s, ptr %113, i32 0, i32 5
  %130 = ptrtoint ptr %total_out.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %total_out.i, align 4
  %add.i = add i32 %131, %120
  store i32 %add.i, ptr %total_out.i, align 4
  %132 = ptrtoint ptr %avail_out.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %avail_out.i, align 4
  %sub.i = sub i32 %133, %120
  store i32 %sub.i, ptr %avail_out.i, align 4
  %134 = ptrtoint ptr %pending.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %pending.i, align 4
  %sub14.i = sub i32 %135, %120
  store i32 %sub14.i, ptr %pending.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %135, i32 %120)
  %cmp16.i = icmp eq i32 %135, %120
  br i1 %cmp16.i, label %if.then17.i, label %if.end9.i.flush_pending.exit_crit_edge

if.end9.i.flush_pending.exit_crit_edge:           ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flush_pending.exit

if.then17.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %pending_buf.i = getelementptr inbounds %struct.deflate_state, ptr %115, i32 0, i32 2
  %136 = ptrtoint ptr %pending_buf.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %pending_buf.i, align 4
  %138 = ptrtoint ptr %pending_out10.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %137, ptr %pending_out10.i, align 4
  br label %flush_pending.exit

flush_pending.exit:                               ; preds = %if.then17.i, %if.end9.i.flush_pending.exit_crit_edge, %cond.end.flush_pending.exit_crit_edge
  %139 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %s, align 4
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %140, i32 0, i32 4
  %141 = ptrtoint ptr %avail_out to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %avail_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %cmp141 = icmp eq i32 %142, 0
  br i1 %cmp141, label %flush_pending.exit.cleanup_crit_edge, label %flush_pending.exit.for.cond.backedge_crit_edge

flush_pending.exit.for.cond.backedge_crit_edge:   ; preds = %flush_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

flush_pending.exit.cleanup_crit_edge:             ; preds = %flush_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.backedge:                                ; preds = %flush_pending.exit.for.cond.backedge_crit_edge, %if.end127.for.cond.backedge_crit_edge
  br label %for.cond

for.end:                                          ; preds = %if.end
  %143 = ptrtoint ptr %block_start to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %block_start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %144)
  %cmp147 = icmp sgt i32 %144, -1
  br i1 %cmp147, label %cond.true149, label %for.end.cond.end154_crit_edge

for.end.cond.end154_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end154

cond.true149:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %145 = ptrtoint ptr %window to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %window, align 4
  %arrayidx152 = getelementptr i8, ptr %146, i32 %144
  br label %cond.end154

cond.end154:                                      ; preds = %cond.true149, %for.end.cond.end154_crit_edge
  %cond155 = phi ptr [ %arrayidx152, %cond.true149 ], [ null, %for.end.cond.end154_crit_edge ]
  %147 = ptrtoint ptr %strstart to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %strstart, align 4
  %sub158 = sub i32 %148, %144
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %flush)
  %cmp159 = icmp eq i32 %flush, 5
  %conv160 = zext i1 %cmp159 to i32
  %call161 = tail call i32 @zlib_tr_flush_block(ptr noundef %s, ptr noundef %cond155, i32 noundef %sub158, i32 noundef %conv160) #8
  %149 = ptrtoint ptr %strstart to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %strstart, align 4
  %151 = ptrtoint ptr %block_start to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %block_start, align 4
  %152 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %s, align 4
  %state.i275 = getelementptr inbounds %struct.z_stream_s, ptr %153, i32 0, i32 7
  %154 = ptrtoint ptr %state.i275 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %state.i275, align 4
  %pending.i276 = getelementptr inbounds %struct.deflate_state, ptr %155, i32 0, i32 5
  %156 = ptrtoint ptr %pending.i276 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %pending.i276, align 4
  %avail_out.i277 = getelementptr inbounds %struct.z_stream_s, ptr %153, i32 0, i32 4
  %158 = ptrtoint ptr %avail_out.i277 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %avail_out.i277, align 4
  %160 = tail call i32 @llvm.umin.i32(i32 %157, i32 %159) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %cmp2.i278 = icmp eq i32 %160, 0
  br i1 %cmp2.i278, label %cond.end154.flush_pending.exit295_crit_edge, label %if.end4.i281

cond.end154.flush_pending.exit295_crit_edge:      ; preds = %cond.end154
  call void @__sanitizer_cov_trace_pc() #10
  br label %flush_pending.exit295

if.end4.i281:                                     ; preds = %cond.end154
  %next_out.i279 = getelementptr inbounds %struct.z_stream_s, ptr %153, i32 0, i32 3
  %161 = ptrtoint ptr %next_out.i279 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %next_out.i279, align 4
  %cmp5.not.i280 = icmp eq ptr %162, null
  br i1 %cmp5.not.i280, label %if.end4.i281.if.end9.i292_crit_edge, label %if.then6.i284

if.end4.i281.if.end9.i292_crit_edge:              ; preds = %if.end4.i281
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i292

if.then6.i284:                                    ; preds = %if.end4.i281
  call void @__sanitizer_cov_trace_pc() #10
  %pending_out.i282 = getelementptr inbounds %struct.deflate_state, ptr %155, i32 0, i32 4
  %163 = ptrtoint ptr %pending_out.i282 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %pending_out.i282, align 4
  %165 = call ptr @memcpy(ptr %162, ptr %164, i32 %160)
  %166 = ptrtoint ptr %next_out.i279 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %next_out.i279, align 4
  %add.ptr.i283 = getelementptr i8, ptr %167, i32 %160
  store ptr %add.ptr.i283, ptr %next_out.i279, align 4
  br label %if.end9.i292

if.end9.i292:                                     ; preds = %if.then6.i284, %if.end4.i281.if.end9.i292_crit_edge
  %pending_out10.i285 = getelementptr inbounds %struct.deflate_state, ptr %155, i32 0, i32 4
  %168 = ptrtoint ptr %pending_out10.i285 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %pending_out10.i285, align 4
  %add.ptr11.i286 = getelementptr i8, ptr %169, i32 %160
  store ptr %add.ptr11.i286, ptr %pending_out10.i285, align 4
  %total_out.i287 = getelementptr inbounds %struct.z_stream_s, ptr %153, i32 0, i32 5
  %170 = ptrtoint ptr %total_out.i287 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %total_out.i287, align 4
  %add.i288 = add i32 %171, %160
  store i32 %add.i288, ptr %total_out.i287, align 4
  %172 = ptrtoint ptr %avail_out.i277 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %avail_out.i277, align 4
  %sub.i289 = sub i32 %173, %160
  store i32 %sub.i289, ptr %avail_out.i277, align 4
  %174 = ptrtoint ptr %pending.i276 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %pending.i276, align 4
  %sub14.i290 = sub i32 %175, %160
  store i32 %sub14.i290, ptr %pending.i276, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %175, i32 %160)
  %cmp16.i291 = icmp eq i32 %175, %160
  br i1 %cmp16.i291, label %if.then17.i294, label %if.end9.i292.flush_pending.exit295_crit_edge

if.end9.i292.flush_pending.exit295_crit_edge:     ; preds = %if.end9.i292
  call void @__sanitizer_cov_trace_pc() #10
  br label %flush_pending.exit295

if.then17.i294:                                   ; preds = %if.end9.i292
  call void @__sanitizer_cov_trace_pc() #10
  %pending_buf.i293 = getelementptr inbounds %struct.deflate_state, ptr %155, i32 0, i32 2
  %176 = ptrtoint ptr %pending_buf.i293 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %pending_buf.i293, align 4
  %178 = ptrtoint ptr %pending_out10.i285 to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %177, ptr %pending_out10.i285, align 4
  br label %flush_pending.exit295

flush_pending.exit295:                            ; preds = %if.then17.i294, %if.end9.i292.flush_pending.exit295_crit_edge, %cond.end154.flush_pending.exit295_crit_edge
  %179 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %s, align 4
  %avail_out166 = getelementptr inbounds %struct.z_stream_s, ptr %180, i32 0, i32 4
  %181 = ptrtoint ptr %avail_out166 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %avail_out166, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %cmp167 = icmp eq i32 %182, 0
  br i1 %cmp167, label %if.then169, label %if.end173

if.then169:                                       ; preds = %flush_pending.exit295
  call void @__sanitizer_cov_trace_pc() #10
  %cond172 = select i1 %cmp159, i32 2, i32 0
  br label %cleanup

if.end173:                                        ; preds = %flush_pending.exit295
  call void @__sanitizer_cov_trace_pc() #10
  %cond176 = select i1 %cmp159, i32 3, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end173, %if.then169, %flush_pending.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond172, %if.then169 ], [ %cond176, %if.end173 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %flush_pending.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @deflate_slow(ptr noundef %s, i32 noundef %flush) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lookahead = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flush)
  %cmp3 = icmp eq i32 %flush, 0
  %ins_h = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 17
  %hash_shift = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 21
  %window = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 13
  %strstart = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 26
  %hash_mask = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 20
  %head = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 16
  %prev = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 15
  %w_mask = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 12
  %match_length = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 23
  %prev_length = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 29
  %match_start = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 27
  %prev_match = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 24
  %max_lazy_match = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 31
  %w_size = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 10
  %strategy = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 33
  %match_available = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 25
  %block_start = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 22
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %entry
  %hash_head.0 = phi i32 [ 0, %entry ], [ %hash_head.0.be, %for.cond.backedge ]
  %0 = ptrtoint ptr %lookahead to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lookahead, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262, i32 %1)
  %cmp = icmp ult i32 %1, 262
  br i1 %cmp, label %if.then, label %for.cond.if.then12_crit_edge

for.cond.if.then12_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.then:                                          ; preds = %for.cond
  tail call fastcc void @fill_window(ptr noundef %s)
  %2 = ptrtoint ptr %lookahead to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lookahead, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262, i32 %3)
  %cmp2 = icmp ult i32 %3, 262
  %or.cond = and i1 %cmp3, %cmp2
  br i1 %or.cond, label %if.then.cleanup236_crit_edge, label %if.end

if.then.cleanup236_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup236

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6 = icmp eq i32 %3, 0
  br i1 %cmp6, label %for.end, label %if.end9

if.end9:                                          ; preds = %if.end
  %4 = ptrtoint ptr %lookahead to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pr = load i32, ptr %lookahead, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp11 = icmp ugt i32 %.pr, 2
  br i1 %cmp11, label %if.end9.if.then12_crit_edge, label %if.end9.if.end26_crit_edge

if.end9.if.end26_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.end9.if.then12_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.then12:                                        ; preds = %if.end9.if.then12_crit_edge, %for.cond.if.then12_crit_edge
  %5 = ptrtoint ptr %ins_h to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ins_h, align 4
  %7 = ptrtoint ptr %hash_shift to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hash_shift, align 4
  %shl = shl i32 %6, %8
  %9 = ptrtoint ptr %window to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %window, align 4
  %11 = ptrtoint ptr %strstart to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %strstart, align 4
  %add = add i32 %12, 2
  %arrayidx = getelementptr i8, ptr %10, i32 %add
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %14 to i32
  %xor = xor i32 %shl, %conv
  %15 = ptrtoint ptr %hash_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hash_mask, align 4
  %and = and i32 %xor, %16
  store i32 %and, ptr %ins_h, align 4
  %17 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head, align 4
  %arrayidx15 = getelementptr i16, ptr %18, i32 %and
  %19 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx15, align 2
  %conv16 = zext i16 %20 to i32
  %21 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev, align 4
  %23 = ptrtoint ptr %w_mask to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %w_mask, align 4
  %and19 = and i32 %24, %12
  %arrayidx20 = getelementptr i16, ptr %22, i32 %and19
  %25 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %20, ptr %arrayidx20, align 2
  %26 = load i32, ptr %strstart, align 4
  %conv22 = trunc i32 %26 to i16
  %27 = load ptr, ptr %head, align 4
  %28 = load i32, ptr %ins_h, align 4
  %arrayidx25 = getelementptr i16, ptr %27, i32 %28
  %29 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv22, ptr %arrayidx25, align 2
  br label %if.end26

if.end26:                                         ; preds = %if.then12, %if.end9.if.end26_crit_edge
  %hash_head.1 = phi i32 [ %conv16, %if.then12 ], [ %hash_head.0, %if.end9.if.end26_crit_edge ]
  %30 = ptrtoint ptr %match_length to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %match_length, align 4
  %32 = ptrtoint ptr %prev_length to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %prev_length, align 4
  %33 = ptrtoint ptr %match_start to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %match_start, align 4
  %35 = ptrtoint ptr %prev_match to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %prev_match, align 4
  store i32 2, ptr %match_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hash_head.1)
  %cmp28.not = icmp eq i32 %hash_head.1, 0
  br i1 %cmp28.not, label %if.end26.if.end64_crit_edge, label %land.lhs.true30

if.end26.if.end64_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

land.lhs.true30:                                  ; preds = %if.end26
  %36 = ptrtoint ptr %max_lazy_match to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_lazy_match, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %37)
  %cmp32 = icmp ult i32 %31, %37
  br i1 %cmp32, label %land.lhs.true34, label %land.lhs.true30.if.end64thread-pre-split_crit_edge

land.lhs.true30.if.end64thread-pre-split_crit_edge: ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64thread-pre-split

land.lhs.true34:                                  ; preds = %land.lhs.true30
  %38 = ptrtoint ptr %strstart to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %strstart, align 4
  %sub = sub i32 %39, %hash_head.1
  %40 = ptrtoint ptr %w_size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %w_size, align 4
  %sub36 = add i32 %41, -262
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %sub36)
  %cmp37.not = icmp ugt i32 %sub, %sub36
  br i1 %cmp37.not, label %land.lhs.true34.if.end64thread-pre-split_crit_edge, label %if.then39

land.lhs.true34.if.end64thread-pre-split_crit_edge: ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64thread-pre-split

if.then39:                                        ; preds = %land.lhs.true34
  %42 = ptrtoint ptr %strategy to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %strategy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %cmp40.not = icmp eq i32 %43, 2
  br i1 %cmp40.not, label %if.end44thread-pre-split, label %if.then42

if.then42:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call fastcc i32 @longest_match(ptr noundef %s, i32 noundef %hash_head.1)
  %44 = ptrtoint ptr %match_length to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call, ptr %match_length, align 4
  br label %if.end44

if.end44thread-pre-split:                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %match_length to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pr402 = load i32, ptr %match_length, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.end44thread-pre-split, %if.then42
  %46 = phi i32 [ %.pr402, %if.end44thread-pre-split ], [ %call, %if.then42 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %46)
  %cmp46 = icmp ult i32 %46, 6
  br i1 %cmp46, label %land.lhs.true48, label %if.end44.if.end64thread-pre-split_crit_edge

if.end44.if.end64thread-pre-split_crit_edge:      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64thread-pre-split

land.lhs.true48:                                  ; preds = %if.end44
  %47 = ptrtoint ptr %strategy to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %strategy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp50 = icmp eq i32 %48, 1
  br i1 %cmp50, label %land.lhs.true48.if.then61_crit_edge, label %lor.lhs.false

land.lhs.true48.if.then61_crit_edge:              ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then61

lor.lhs.false:                                    ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %46)
  %cmp53 = icmp eq i32 %46, 3
  br i1 %cmp53, label %land.lhs.true55, label %lor.lhs.false.if.end64thread-pre-split_crit_edge

lor.lhs.false.if.end64thread-pre-split_crit_edge: ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64thread-pre-split

land.lhs.true55:                                  ; preds = %lor.lhs.false
  %49 = ptrtoint ptr %strstart to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %strstart, align 4
  %51 = ptrtoint ptr %match_start to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %match_start, align 4
  %sub58 = sub i32 %50, %52
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub58)
  %cmp59 = icmp ugt i32 %sub58, 4096
  br i1 %cmp59, label %land.lhs.true55.if.then61_crit_edge, label %land.lhs.true55.if.end64thread-pre-split_crit_edge

land.lhs.true55.if.end64thread-pre-split_crit_edge: ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64thread-pre-split

land.lhs.true55.if.then61_crit_edge:              ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then61

if.then61:                                        ; preds = %land.lhs.true55.if.then61_crit_edge, %land.lhs.true48.if.then61_crit_edge
  %53 = ptrtoint ptr %match_length to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 2, ptr %match_length, align 4
  br label %if.end64thread-pre-split

if.end64thread-pre-split:                         ; preds = %if.then61, %land.lhs.true55.if.end64thread-pre-split_crit_edge, %lor.lhs.false.if.end64thread-pre-split_crit_edge, %if.end44.if.end64thread-pre-split_crit_edge, %land.lhs.true34.if.end64thread-pre-split_crit_edge, %land.lhs.true30.if.end64thread-pre-split_crit_edge
  %54 = ptrtoint ptr %prev_length to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pr403 = load i32, ptr %prev_length, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.end64thread-pre-split, %if.end26.if.end64_crit_edge
  %55 = phi i32 [ %.pr403, %if.end64thread-pre-split ], [ %31, %if.end26.if.end64_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %cmp66 = icmp ugt i32 %55, 2
  br i1 %cmp66, label %land.lhs.true68, label %if.end64.if.else_crit_edge

if.end64.if.else_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true68:                                  ; preds = %if.end64
  %56 = ptrtoint ptr %match_length to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %match_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %55)
  %cmp71.not = icmp ugt i32 %57, %55
  br i1 %cmp71.not, label %land.lhs.true68.if.else_crit_edge, label %if.then73

land.lhs.true68.if.else_crit_edge:                ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then73:                                        ; preds = %land.lhs.true68
  %58 = ptrtoint ptr %strstart to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %strstart, align 4
  %60 = ptrtoint ptr %lookahead to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %lookahead, align 4
  %add76 = add i32 %59, -3
  %sub77 = add i32 %add76, %61
  %62 = ptrtoint ptr %prev_match to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %prev_match, align 4
  %64 = xor i32 %63, -1
  %sub81 = add i32 %59, %64
  %sub83 = add i32 %55, -3
  %call84 = tail call i32 @zlib_tr_tally(ptr noundef %s, i32 noundef %sub81, i32 noundef %sub83) #8
  %65 = ptrtoint ptr %prev_length to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %prev_length, align 4
  %67 = ptrtoint ptr %lookahead to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %lookahead, align 4
  %sub86.neg = sub i32 1, %66
  %sub88 = add i32 %sub86.neg, %68
  store i32 %sub88, ptr %lookahead, align 4
  %sub90 = add i32 %66, -2
  store i32 %sub90, ptr %prev_length, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.then73
  %hash_head.2 = phi i32 [ %hash_head.1, %if.then73 ], [ %hash_head.3, %do.cond.do.body_crit_edge ]
  %69 = ptrtoint ptr %strstart to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %strstart, align 4
  %inc = add i32 %70, 1
  store i32 %inc, ptr %strstart, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %sub77)
  %cmp92.not = icmp ugt i32 %inc, %sub77
  br i1 %cmp92.not, label %do.body.do.cond_crit_edge, label %if.then94

do.body.do.cond_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond

if.then94:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %ins_h to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ins_h, align 4
  %73 = ptrtoint ptr %hash_shift to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %hash_shift, align 4
  %shl97 = shl i32 %72, %74
  %75 = ptrtoint ptr %window to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %window, align 4
  %add100 = add i32 %70, 3
  %arrayidx101 = getelementptr i8, ptr %76, i32 %add100
  %77 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx101, align 1
  %conv102 = zext i8 %78 to i32
  %xor103 = xor i32 %shl97, %conv102
  %79 = ptrtoint ptr %hash_mask to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %hash_mask, align 4
  %and105 = and i32 %xor103, %80
  store i32 %and105, ptr %ins_h, align 4
  %81 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %head, align 4
  %arrayidx109 = getelementptr i16, ptr %82, i32 %and105
  %83 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %arrayidx109, align 2
  %conv110 = zext i16 %84 to i32
  %85 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %prev, align 4
  %87 = ptrtoint ptr %w_mask to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %w_mask, align 4
  %and115 = and i32 %88, %inc
  %arrayidx116 = getelementptr i16, ptr %86, i32 %and115
  %89 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %84, ptr %arrayidx116, align 2
  %90 = ptrtoint ptr %strstart to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %strstart, align 4
  %conv118 = trunc i32 %91 to i16
  %92 = load ptr, ptr %head, align 4
  %93 = load i32, ptr %ins_h, align 4
  %arrayidx121 = getelementptr i16, ptr %92, i32 %93
  %94 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %conv118, ptr %arrayidx121, align 2
  br label %do.cond

do.cond:                                          ; preds = %if.then94, %do.body.do.cond_crit_edge
  %hash_head.3 = phi i32 [ %conv110, %if.then94 ], [ %hash_head.2, %do.body.do.cond_crit_edge ]
  %95 = ptrtoint ptr %prev_length to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %prev_length, align 4
  %dec = add i32 %96, -1
  store i32 %dec, ptr %prev_length, align 4
  %cmp124.not = icmp eq i32 %dec, 0
  br i1 %cmp124.not, label %do.end, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %do.cond
  %97 = ptrtoint ptr %match_available to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %match_available, align 4
  %98 = ptrtoint ptr %match_length to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 2, ptr %match_length, align 4
  %99 = ptrtoint ptr %strstart to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %strstart, align 4
  %inc128 = add i32 %100, 1
  store i32 %inc128, ptr %strstart, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool.not = icmp eq i32 %call84, 0
  br i1 %tobool.not, label %do.end.for.cond.backedge_crit_edge, label %if.then129

do.end.for.cond.backedge_crit_edge:               ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.else186, %if.end175.for.cond.backedge_crit_edge, %flush_pending.exit.for.cond.backedge_crit_edge, %do.end.for.cond.backedge_crit_edge
  %hash_head.0.be = phi i32 [ %hash_head.1, %if.end175.for.cond.backedge_crit_edge ], [ %hash_head.1, %if.else186 ], [ %hash_head.3, %flush_pending.exit.for.cond.backedge_crit_edge ], [ %hash_head.3, %do.end.for.cond.backedge_crit_edge ]
  br label %for.cond

if.then129:                                       ; preds = %do.end
  %101 = ptrtoint ptr %block_start to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %block_start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %102)
  %cmp130 = icmp sgt i32 %102, -1
  br i1 %cmp130, label %cond.true, label %if.then129.cond.end_crit_edge

if.then129.cond.end_crit_edge:                    ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #10
  %103 = ptrtoint ptr %window to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %window, align 4
  %arrayidx134 = getelementptr i8, ptr %104, i32 %102
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then129.cond.end_crit_edge
  %cond = phi ptr [ %arrayidx134, %cond.true ], [ null, %if.then129.cond.end_crit_edge ]
  %sub137 = sub i32 %inc128, %102
  %call138 = tail call i32 @zlib_tr_flush_block(ptr noundef %s, ptr noundef %cond, i32 noundef %sub137, i32 noundef 0) #8
  %105 = ptrtoint ptr %strstart to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %strstart, align 4
  %107 = ptrtoint ptr %block_start to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %block_start, align 4
  %108 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %s, align 4
  %state.i = getelementptr inbounds %struct.z_stream_s, ptr %109, i32 0, i32 7
  %110 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %state.i, align 4
  %pending.i = getelementptr inbounds %struct.deflate_state, ptr %111, i32 0, i32 5
  %112 = ptrtoint ptr %pending.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %pending.i, align 4
  %avail_out.i = getelementptr inbounds %struct.z_stream_s, ptr %109, i32 0, i32 4
  %114 = ptrtoint ptr %avail_out.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %avail_out.i, align 4
  %116 = tail call i32 @llvm.umin.i32(i32 %113, i32 %115) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp2.i = icmp eq i32 %116, 0
  br i1 %cmp2.i, label %cond.end.flush_pending.exit_crit_edge, label %if.end4.i

cond.end.flush_pending.exit_crit_edge:            ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %flush_pending.exit

if.end4.i:                                        ; preds = %cond.end
  %next_out.i = getelementptr inbounds %struct.z_stream_s, ptr %109, i32 0, i32 3
  %117 = ptrtoint ptr %next_out.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %next_out.i, align 4
  %cmp5.not.i = icmp eq ptr %118, null
  br i1 %cmp5.not.i, label %if.end4.i.if.end9.i_crit_edge, label %if.then6.i

if.end4.i.if.end9.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %pending_out.i = getelementptr inbounds %struct.deflate_state, ptr %111, i32 0, i32 4
  %119 = ptrtoint ptr %pending_out.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %pending_out.i, align 4
  %121 = call ptr @memcpy(ptr %118, ptr %120, i32 %116)
  %122 = ptrtoint ptr %next_out.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %next_out.i, align 4
  %add.ptr.i = getelementptr i8, ptr %123, i32 %116
  store ptr %add.ptr.i, ptr %next_out.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.i, %if.end4.i.if.end9.i_crit_edge
  %pending_out10.i = getelementptr inbounds %struct.deflate_state, ptr %111, i32 0, i32 4
  %124 = ptrtoint ptr %pending_out10.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %pending_out10.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %125, i32 %116
  store ptr %add.ptr11.i, ptr %pending_out10.i, align 4
  %total_out.i = getelementptr inbounds %struct.z_stream_s, ptr %109, i32 0, i32 5
  %126 = ptrtoint ptr %total_out.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %total_out.i, align 4
  %add.i = add i32 %127, %116
  store i32 %add.i, ptr %total_out.i, align 4
  %128 = ptrtoint ptr %avail_out.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %avail_out.i, align 4
  %sub.i = sub i32 %129, %116
  store i32 %sub.i, ptr %avail_out.i, align 4
  %130 = ptrtoint ptr %pending.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %pending.i, align 4
  %sub14.i = sub i32 %131, %116
  store i32 %sub14.i, ptr %pending.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %131, i32 %116)
  %cmp16.i = icmp eq i32 %131, %116
  br i1 %cmp16.i, label %if.then17.i, label %if.end9.i.flush_pending.exit_crit_edge

if.end9.i.flush_pending.exit_crit_edge:           ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flush_pending.exit

if.then17.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %pending_buf.i = getelementptr inbounds %struct.deflate_state, ptr %111, i32 0, i32 2
  %132 = ptrtoint ptr %pending_buf.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %pending_buf.i, align 4
  %134 = ptrtoint ptr %pending_out10.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %133, ptr %pending_out10.i, align 4
  br label %flush_pending.exit

flush_pending.exit:                               ; preds = %if.then17.i, %if.end9.i.flush_pending.exit_crit_edge, %cond.end.flush_pending.exit_crit_edge
  %135 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %s, align 4
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %136, i32 0, i32 4
  %137 = ptrtoint ptr %avail_out to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %avail_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %cmp142 = icmp eq i32 %138, 0
  br i1 %cmp142, label %flush_pending.exit.cleanup236_crit_edge, label %flush_pending.exit.for.cond.backedge_crit_edge

flush_pending.exit.for.cond.backedge_crit_edge:   ; preds = %flush_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

flush_pending.exit.cleanup236_crit_edge:          ; preds = %flush_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup236

if.else:                                          ; preds = %land.lhs.true68.if.else_crit_edge, %if.end64.if.else_crit_edge
  %139 = ptrtoint ptr %match_available to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %match_available, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool148.not = icmp eq i32 %140, 0
  br i1 %tobool148.not, label %if.else186, label %if.then149

if.then149:                                       ; preds = %if.else
  %141 = ptrtoint ptr %window to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %window, align 4
  %143 = ptrtoint ptr %strstart to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %strstart, align 4
  %sub152 = add i32 %144, -1
  %arrayidx153 = getelementptr i8, ptr %142, i32 %sub152
  %145 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx153, align 1
  %conv154 = zext i8 %146 to i32
  %call155 = tail call i32 @zlib_tr_tally(ptr noundef %s, i32 noundef 0, i32 noundef %conv154) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %if.then149.if.end175_crit_edge, label %if.then157

if.then149.if.end175_crit_edge:                   ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end175

if.then157:                                       ; preds = %if.then149
  %147 = ptrtoint ptr %block_start to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %block_start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %148)
  %cmp159 = icmp sgt i32 %148, -1
  br i1 %cmp159, label %cond.true161, label %if.then157.cond.end166_crit_edge

if.then157.cond.end166_crit_edge:                 ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end166

cond.true161:                                     ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #10
  %149 = ptrtoint ptr %window to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %window, align 4
  %arrayidx164 = getelementptr i8, ptr %150, i32 %148
  br label %cond.end166

cond.end166:                                      ; preds = %cond.true161, %if.then157.cond.end166_crit_edge
  %cond167 = phi ptr [ %arrayidx164, %cond.true161 ], [ null, %if.then157.cond.end166_crit_edge ]
  %151 = ptrtoint ptr %strstart to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %strstart, align 4
  %sub170 = sub i32 %152, %148
  %call171 = tail call i32 @zlib_tr_flush_block(ptr noundef %s, ptr noundef %cond167, i32 noundef %sub170, i32 noundef 0) #8
  %153 = ptrtoint ptr %strstart to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %strstart, align 4
  %155 = ptrtoint ptr %block_start to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %block_start, align 4
  %156 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %s, align 4
  %state.i359 = getelementptr inbounds %struct.z_stream_s, ptr %157, i32 0, i32 7
  %158 = ptrtoint ptr %state.i359 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %state.i359, align 4
  %pending.i360 = getelementptr inbounds %struct.deflate_state, ptr %159, i32 0, i32 5
  %160 = ptrtoint ptr %pending.i360 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %pending.i360, align 4
  %avail_out.i361 = getelementptr inbounds %struct.z_stream_s, ptr %157, i32 0, i32 4
  %162 = ptrtoint ptr %avail_out.i361 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %avail_out.i361, align 4
  %164 = tail call i32 @llvm.umin.i32(i32 %161, i32 %163) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %cmp2.i362 = icmp eq i32 %164, 0
  br i1 %cmp2.i362, label %cond.end166.if.end175_crit_edge, label %if.end4.i365

cond.end166.if.end175_crit_edge:                  ; preds = %cond.end166
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end175

if.end4.i365:                                     ; preds = %cond.end166
  %next_out.i363 = getelementptr inbounds %struct.z_stream_s, ptr %157, i32 0, i32 3
  %165 = ptrtoint ptr %next_out.i363 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %next_out.i363, align 4
  %cmp5.not.i364 = icmp eq ptr %166, null
  br i1 %cmp5.not.i364, label %if.end4.i365.if.end9.i376_crit_edge, label %if.then6.i368

if.end4.i365.if.end9.i376_crit_edge:              ; preds = %if.end4.i365
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i376

if.then6.i368:                                    ; preds = %if.end4.i365
  call void @__sanitizer_cov_trace_pc() #10
  %pending_out.i366 = getelementptr inbounds %struct.deflate_state, ptr %159, i32 0, i32 4
  %167 = ptrtoint ptr %pending_out.i366 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %pending_out.i366, align 4
  %169 = call ptr @memcpy(ptr %166, ptr %168, i32 %164)
  %170 = ptrtoint ptr %next_out.i363 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %next_out.i363, align 4
  %add.ptr.i367 = getelementptr i8, ptr %171, i32 %164
  store ptr %add.ptr.i367, ptr %next_out.i363, align 4
  br label %if.end9.i376

if.end9.i376:                                     ; preds = %if.then6.i368, %if.end4.i365.if.end9.i376_crit_edge
  %pending_out10.i369 = getelementptr inbounds %struct.deflate_state, ptr %159, i32 0, i32 4
  %172 = ptrtoint ptr %pending_out10.i369 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %pending_out10.i369, align 4
  %add.ptr11.i370 = getelementptr i8, ptr %173, i32 %164
  store ptr %add.ptr11.i370, ptr %pending_out10.i369, align 4
  %total_out.i371 = getelementptr inbounds %struct.z_stream_s, ptr %157, i32 0, i32 5
  %174 = ptrtoint ptr %total_out.i371 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %total_out.i371, align 4
  %add.i372 = add i32 %175, %164
  store i32 %add.i372, ptr %total_out.i371, align 4
  %176 = ptrtoint ptr %avail_out.i361 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %avail_out.i361, align 4
  %sub.i373 = sub i32 %177, %164
  store i32 %sub.i373, ptr %avail_out.i361, align 4
  %178 = ptrtoint ptr %pending.i360 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %pending.i360, align 4
  %sub14.i374 = sub i32 %179, %164
  store i32 %sub14.i374, ptr %pending.i360, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %179, i32 %164)
  %cmp16.i375 = icmp eq i32 %179, %164
  br i1 %cmp16.i375, label %if.then17.i378, label %if.end9.i376.if.end175_crit_edge

if.end9.i376.if.end175_crit_edge:                 ; preds = %if.end9.i376
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end175

if.then17.i378:                                   ; preds = %if.end9.i376
  call void @__sanitizer_cov_trace_pc() #10
  %pending_buf.i377 = getelementptr inbounds %struct.deflate_state, ptr %159, i32 0, i32 2
  %180 = ptrtoint ptr %pending_buf.i377 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %pending_buf.i377, align 4
  %182 = ptrtoint ptr %pending_out10.i369 to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %181, ptr %pending_out10.i369, align 4
  br label %if.end175

if.end175:                                        ; preds = %if.then17.i378, %if.end9.i376.if.end175_crit_edge, %cond.end166.if.end175_crit_edge, %if.then149.if.end175_crit_edge
  %183 = ptrtoint ptr %strstart to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %strstart, align 4
  %inc177 = add i32 %184, 1
  store i32 %inc177, ptr %strstart, align 4
  %185 = ptrtoint ptr %lookahead to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %lookahead, align 4
  %dec179 = add i32 %186, -1
  store i32 %dec179, ptr %lookahead, align 4
  %187 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %s, align 4
  %avail_out181 = getelementptr inbounds %struct.z_stream_s, ptr %188, i32 0, i32 4
  %189 = ptrtoint ptr %avail_out181 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %avail_out181, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %cmp182 = icmp eq i32 %190, 0
  br i1 %cmp182, label %if.end175.cleanup236_crit_edge, label %if.end175.for.cond.backedge_crit_edge

if.end175.for.cond.backedge_crit_edge:            ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

if.end175.cleanup236_crit_edge:                   ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup236

if.else186:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %191 = ptrtoint ptr %match_available to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 1, ptr %match_available, align 4
  %192 = ptrtoint ptr %strstart to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %strstart, align 4
  %inc189 = add i32 %193, 1
  store i32 %inc189, ptr %strstart, align 4
  %194 = ptrtoint ptr %lookahead to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %lookahead, align 4
  %dec191 = add i32 %195, -1
  store i32 %dec191, ptr %lookahead, align 4
  br label %for.cond.backedge

for.end:                                          ; preds = %if.end
  %196 = ptrtoint ptr %match_available to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %match_available, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %tobool195.not = icmp eq i32 %197, 0
  br i1 %tobool195.not, label %for.end.if.end204_crit_edge, label %if.then196

for.end.if.end204_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end204

if.then196:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %198 = ptrtoint ptr %window to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %window, align 4
  %200 = ptrtoint ptr %strstart to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %strstart, align 4
  %sub199 = add i32 %201, -1
  %arrayidx200 = getelementptr i8, ptr %199, i32 %sub199
  %202 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %arrayidx200, align 1
  %conv201 = zext i8 %203 to i32
  %call202 = tail call i32 @zlib_tr_tally(ptr noundef %s, i32 noundef 0, i32 noundef %conv201) #8
  %204 = ptrtoint ptr %match_available to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 0, ptr %match_available, align 4
  br label %if.end204

if.end204:                                        ; preds = %if.then196, %for.end.if.end204_crit_edge
  %205 = ptrtoint ptr %block_start to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %block_start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %206)
  %cmp206 = icmp sgt i32 %206, -1
  br i1 %cmp206, label %cond.true208, label %if.end204.cond.end213_crit_edge

if.end204.cond.end213_crit_edge:                  ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end213

cond.true208:                                     ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #10
  %207 = ptrtoint ptr %window to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %window, align 4
  %arrayidx211 = getelementptr i8, ptr %208, i32 %206
  br label %cond.end213

cond.end213:                                      ; preds = %cond.true208, %if.end204.cond.end213_crit_edge
  %cond214 = phi ptr [ %arrayidx211, %cond.true208 ], [ null, %if.end204.cond.end213_crit_edge ]
  %209 = ptrtoint ptr %strstart to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %strstart, align 4
  %sub217 = sub i32 %210, %206
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %flush)
  %cmp218 = icmp eq i32 %flush, 5
  %conv219 = zext i1 %cmp218 to i32
  %call220 = tail call i32 @zlib_tr_flush_block(ptr noundef %s, ptr noundef %cond214, i32 noundef %sub217, i32 noundef %conv219) #8
  %211 = ptrtoint ptr %strstart to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %strstart, align 4
  %213 = ptrtoint ptr %block_start to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %212, ptr %block_start, align 4
  %214 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %s, align 4
  %state.i380 = getelementptr inbounds %struct.z_stream_s, ptr %215, i32 0, i32 7
  %216 = ptrtoint ptr %state.i380 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %state.i380, align 4
  %pending.i381 = getelementptr inbounds %struct.deflate_state, ptr %217, i32 0, i32 5
  %218 = ptrtoint ptr %pending.i381 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %pending.i381, align 4
  %avail_out.i382 = getelementptr inbounds %struct.z_stream_s, ptr %215, i32 0, i32 4
  %220 = ptrtoint ptr %avail_out.i382 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %avail_out.i382, align 4
  %222 = tail call i32 @llvm.umin.i32(i32 %219, i32 %221) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %222)
  %cmp2.i383 = icmp eq i32 %222, 0
  br i1 %cmp2.i383, label %cond.end213.flush_pending.exit400_crit_edge, label %if.end4.i386

cond.end213.flush_pending.exit400_crit_edge:      ; preds = %cond.end213
  call void @__sanitizer_cov_trace_pc() #10
  br label %flush_pending.exit400

if.end4.i386:                                     ; preds = %cond.end213
  %next_out.i384 = getelementptr inbounds %struct.z_stream_s, ptr %215, i32 0, i32 3
  %223 = ptrtoint ptr %next_out.i384 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %next_out.i384, align 4
  %cmp5.not.i385 = icmp eq ptr %224, null
  br i1 %cmp5.not.i385, label %if.end4.i386.if.end9.i397_crit_edge, label %if.then6.i389

if.end4.i386.if.end9.i397_crit_edge:              ; preds = %if.end4.i386
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i397

if.then6.i389:                                    ; preds = %if.end4.i386
  call void @__sanitizer_cov_trace_pc() #10
  %pending_out.i387 = getelementptr inbounds %struct.deflate_state, ptr %217, i32 0, i32 4
  %225 = ptrtoint ptr %pending_out.i387 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %pending_out.i387, align 4
  %227 = call ptr @memcpy(ptr %224, ptr %226, i32 %222)
  %228 = ptrtoint ptr %next_out.i384 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %next_out.i384, align 4
  %add.ptr.i388 = getelementptr i8, ptr %229, i32 %222
  store ptr %add.ptr.i388, ptr %next_out.i384, align 4
  br label %if.end9.i397

if.end9.i397:                                     ; preds = %if.then6.i389, %if.end4.i386.if.end9.i397_crit_edge
  %pending_out10.i390 = getelementptr inbounds %struct.deflate_state, ptr %217, i32 0, i32 4
  %230 = ptrtoint ptr %pending_out10.i390 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %pending_out10.i390, align 4
  %add.ptr11.i391 = getelementptr i8, ptr %231, i32 %222
  store ptr %add.ptr11.i391, ptr %pending_out10.i390, align 4
  %total_out.i392 = getelementptr inbounds %struct.z_stream_s, ptr %215, i32 0, i32 5
  %232 = ptrtoint ptr %total_out.i392 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %total_out.i392, align 4
  %add.i393 = add i32 %233, %222
  store i32 %add.i393, ptr %total_out.i392, align 4
  %234 = ptrtoint ptr %avail_out.i382 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %avail_out.i382, align 4
  %sub.i394 = sub i32 %235, %222
  store i32 %sub.i394, ptr %avail_out.i382, align 4
  %236 = ptrtoint ptr %pending.i381 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %pending.i381, align 4
  %sub14.i395 = sub i32 %237, %222
  store i32 %sub14.i395, ptr %pending.i381, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %237, i32 %222)
  %cmp16.i396 = icmp eq i32 %237, %222
  br i1 %cmp16.i396, label %if.then17.i399, label %if.end9.i397.flush_pending.exit400_crit_edge

if.end9.i397.flush_pending.exit400_crit_edge:     ; preds = %if.end9.i397
  call void @__sanitizer_cov_trace_pc() #10
  br label %flush_pending.exit400

if.then17.i399:                                   ; preds = %if.end9.i397
  call void @__sanitizer_cov_trace_pc() #10
  %pending_buf.i398 = getelementptr inbounds %struct.deflate_state, ptr %217, i32 0, i32 2
  %238 = ptrtoint ptr %pending_buf.i398 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %pending_buf.i398, align 4
  %240 = ptrtoint ptr %pending_out10.i390 to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr %239, ptr %pending_out10.i390, align 4
  br label %flush_pending.exit400

flush_pending.exit400:                            ; preds = %if.then17.i399, %if.end9.i397.flush_pending.exit400_crit_edge, %cond.end213.flush_pending.exit400_crit_edge
  %241 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %s, align 4
  %avail_out225 = getelementptr inbounds %struct.z_stream_s, ptr %242, i32 0, i32 4
  %243 = ptrtoint ptr %avail_out225 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %avail_out225, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %244)
  %cmp226 = icmp eq i32 %244, 0
  br i1 %cmp226, label %if.then228, label %if.end232

if.then228:                                       ; preds = %flush_pending.exit400
  call void @__sanitizer_cov_trace_pc() #10
  %cond231 = select i1 %cmp218, i32 2, i32 0
  br label %cleanup236

if.end232:                                        ; preds = %flush_pending.exit400
  call void @__sanitizer_cov_trace_pc() #10
  %cond235 = select i1 %cmp218, i32 3, i32 1
  br label %cleanup236

cleanup236:                                       ; preds = %if.end232, %if.then228, %if.end175.cleanup236_crit_edge, %flush_pending.exit.cleanup236_crit_edge, %if.then.cleanup236_crit_edge
  %retval.3 = phi i32 [ %cond231, %if.then228 ], [ %cond235, %if.end232 ], [ 0, %if.then.cleanup236_crit_edge ], [ 0, %flush_pending.exit.cleanup236_crit_edge ], [ 0, %if.end175.cleanup236_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fill_window(ptr nocapture noundef %s) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %w_size = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 10
  %0 = ptrtoint ptr %w_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %w_size, align 4
  %window_size = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 14
  %lookahead = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 28
  %strstart = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 26
  %sub12 = add i32 %1, -262
  %window = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 13
  %match_start = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 27
  %block_start = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 22
  %hash_size = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 18
  %head = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 16
  %prev = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 15
  %ins_h = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 17
  %hash_shift = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 21
  %hash_mask = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 20
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %entry
  %2 = ptrtoint ptr %window_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %window_size, align 4
  %4 = ptrtoint ptr %lookahead to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lookahead, align 4
  %6 = ptrtoint ptr %strstart to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %strstart, align 4
  %8 = add i32 %5, %7
  %sub1 = sub i32 %3, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1)
  %cmp = icmp eq i32 %sub1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3 = icmp eq i32 %7, 0
  %or.cond = select i1 %cmp, i1 %cmp3, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp6 = icmp eq i32 %5, 0
  %or.cond145 = select i1 %or.cond, i1 %cmp6, i1 false
  br i1 %or.cond145, label %do.body.if.end44_crit_edge, label %if.else

do.body.if.end44_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub1)
  %cmp7 = icmp eq i32 %sub1, -1
  br i1 %cmp7, label %if.else.if.end44_crit_edge, label %if.else9

if.else.if.end44_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.else9:                                         ; preds = %if.else
  %9 = ptrtoint ptr %w_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %w_size, align 4
  %add = add i32 %sub12, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add)
  %cmp13.not = icmp ult i32 %7, %add
  br i1 %cmp13.not, label %if.else9.if.end44_crit_edge, label %if.then14

if.else9.if.end44_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then14:                                        ; preds = %if.else9
  %11 = ptrtoint ptr %window to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %window, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 %1
  %13 = call ptr @memcpy(ptr %12, ptr %add.ptr, i32 %1)
  %14 = ptrtoint ptr %match_start to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %match_start, align 4
  %sub16 = sub i32 %15, %1
  store i32 %sub16, ptr %match_start, align 4
  %16 = ptrtoint ptr %strstart to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %strstart, align 4
  %sub18 = sub i32 %17, %1
  store i32 %sub18, ptr %strstart, align 4
  %18 = ptrtoint ptr %block_start to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %block_start, align 4
  %sub19 = sub i32 %19, %1
  store i32 %sub19, ptr %block_start, align 4
  %20 = ptrtoint ptr %hash_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hash_size, align 4
  %22 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %head, align 4
  %arrayidx = getelementptr i16, ptr %23, i32 %21
  br label %do.body20

do.body20:                                        ; preds = %do.body20.do.body20_crit_edge, %if.then14
  %n.0 = phi i32 [ %21, %if.then14 ], [ %dec25, %do.body20.do.body20_crit_edge ]
  %p.0 = phi ptr [ %arrayidx, %if.then14 ], [ %incdec.ptr, %do.body20.do.body20_crit_edge ]
  %incdec.ptr = getelementptr i16, ptr %p.0, i32 -1
  %24 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %incdec.ptr, align 2
  %conv = zext i16 %25 to i32
  %26 = tail call i32 @llvm.usub.sat.i32(i32 %conv, i32 %1)
  %conv24 = trunc i32 %26 to i16
  %27 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv24, ptr %incdec.ptr, align 2
  %dec25 = add i32 %n.0, -1
  %tobool.not = icmp eq i32 %dec25, 0
  br i1 %tobool.not, label %do.end, label %do.body20.do.body20_crit_edge

do.body20.do.body20_crit_edge:                    ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body20

do.end:                                           ; preds = %do.body20
  %28 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev, align 4
  %arrayidx26 = getelementptr i16, ptr %29, i32 %1
  br label %do.body27

do.body27:                                        ; preds = %do.body27.do.body27_crit_edge, %do.end
  %n.1 = phi i32 [ %1, %do.end ], [ %dec39, %do.body27.do.body27_crit_edge ]
  %p.1 = phi ptr [ %arrayidx26, %do.end ], [ %incdec.ptr28, %do.body27.do.body27_crit_edge ]
  %incdec.ptr28 = getelementptr i16, ptr %p.1, i32 -1
  %30 = ptrtoint ptr %incdec.ptr28 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %incdec.ptr28, align 2
  %conv29 = zext i16 %31 to i32
  %32 = tail call i32 @llvm.usub.sat.i32(i32 %conv29, i32 %1)
  %conv37 = trunc i32 %32 to i16
  %33 = ptrtoint ptr %incdec.ptr28 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv37, ptr %incdec.ptr28, align 2
  %dec39 = add i32 %n.1, -1
  %tobool40.not = icmp eq i32 %dec39, 0
  br i1 %tobool40.not, label %do.end41, label %do.body27.do.body27_crit_edge

do.body27.do.body27_crit_edge:                    ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body27

do.end41:                                         ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #10
  %add42 = add i32 %sub1, %1
  br label %if.end44

if.end44:                                         ; preds = %do.end41, %if.else9.if.end44_crit_edge, %if.else.if.end44_crit_edge, %do.body.if.end44_crit_edge
  %more.0 = phi i32 [ %add42, %do.end41 ], [ %sub1, %if.else9.if.end44_crit_edge ], [ %1, %do.body.if.end44_crit_edge ], [ -2, %if.else.if.end44_crit_edge ]
  %34 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s, align 4
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %avail_in to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %avail_in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp45 = icmp eq i32 %37, 0
  br i1 %cmp45, label %if.end44.cleanup_crit_edge, label %if.end48

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end48:                                         ; preds = %if.end44
  %38 = ptrtoint ptr %window to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %window, align 4
  %40 = ptrtoint ptr %strstart to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %strstart, align 4
  %add.ptr52 = getelementptr i8, ptr %39, i32 %41
  %42 = ptrtoint ptr %lookahead to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %lookahead, align 4
  %add.ptr54 = getelementptr i8, ptr %add.ptr52, i32 %43
  %44 = tail call i32 @llvm.umin.i32(i32 %37, i32 %more.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp1.i = icmp eq i32 %44, 0
  br i1 %cmp1.i, label %if.end48.read_buf.exit_crit_edge, label %if.end3.i

if.end48.read_buf.exit_crit_edge:                 ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %read_buf.exit

if.end3.i:                                        ; preds = %if.end48
  %sub.i = sub i32 %37, %44
  %45 = ptrtoint ptr %avail_in to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %sub.i, ptr %avail_in, align 4
  %state.i = getelementptr inbounds %struct.z_stream_s, ptr %35, i32 0, i32 7
  %46 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %state.i, align 4
  %noheader.i = getelementptr inbounds %struct.deflate_state, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %noheader.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %noheader.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i = icmp eq i32 %49, 0
  br i1 %tobool.not.i, label %if.then5.i, label %if.end3.i.if.end7.i_crit_edge

if.end3.i.if.end7.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end3.i
  %adler.i = getelementptr inbounds %struct.z_stream_s, ptr %35, i32 0, i32 10
  %50 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %35, align 4
  %cmp.i.i = icmp eq ptr %51, null
  br i1 %cmp.i.i, label %if.then5.i.zlib_adler32.exit.i_crit_edge, label %while.cond.preheader.i.i

if.then5.i.zlib_adler32.exit.i_crit_edge:         ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zlib_adler32.exit.i

while.cond.preheader.i.i:                         ; preds = %if.then5.i
  %52 = ptrtoint ptr %adler.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %adler.i, align 4
  %shr.i.i = lshr i32 %53, 16
  %and.i.i = and i32 %53, 65535
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end75.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i
  %s2.0171.i.i = phi i32 [ %rem76.i.i, %if.end75.i.i.while.body.i.i_crit_edge ], [ %shr.i.i, %while.cond.preheader.i.i ]
  %s1.0170.i.i = phi i32 [ %rem.i.i, %if.end75.i.i.while.body.i.i_crit_edge ], [ %and.i.i, %while.cond.preheader.i.i ]
  %len.addr.0169.i.i = phi i32 [ %sub.i.i, %if.end75.i.i.while.body.i.i_crit_edge ], [ %44, %while.cond.preheader.i.i ]
  %buf.addr.0168.i.i = phi ptr [ %buf.addr.3.i.i, %if.end75.i.i.while.body.i.i_crit_edge ], [ %51, %while.cond.preheader.i.i ]
  %54 = tail call i32 @llvm.umin.i32(i32 %len.addr.0169.i.i, i32 5552) #8
  %sub.i.i = sub i32 %len.addr.0169.i.i, %54
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %54)
  %cmp5159.i.i = icmp ugt i32 %54, 15
  br i1 %cmp5159.i.i, label %while.body.i.i.while.body6.i.i_crit_edge, label %while.body.i.i.do.body.preheader.i.i_crit_edge

while.body.i.i.do.body.preheader.i.i_crit_edge:   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.preheader.i.i

while.body.i.i.while.body6.i.i_crit_edge:         ; preds = %while.body.i.i
  br label %while.body6.i.i

while.body6.i.i:                                  ; preds = %while.body6.i.i.while.body6.i.i_crit_edge, %while.body.i.i.while.body6.i.i_crit_edge
  %k.0163.i.i = phi i32 [ %sub68.i.i, %while.body6.i.i.while.body6.i.i_crit_edge ], [ %54, %while.body.i.i.while.body6.i.i_crit_edge ]
  %s2.1162.i.i = phi i32 [ %add67.i.i, %while.body6.i.i.while.body6.i.i_crit_edge ], [ %s2.0171.i.i, %while.body.i.i.while.body6.i.i_crit_edge ]
  %s1.1161.i.i = phi i32 [ %add66.i.i, %while.body6.i.i.while.body6.i.i_crit_edge ], [ %s1.0170.i.i, %while.body.i.i.while.body6.i.i_crit_edge ]
  %buf.addr.1160.i.i = phi ptr [ %add.ptr.i.i, %while.body6.i.i.while.body6.i.i_crit_edge ], [ %buf.addr.0168.i.i, %while.body.i.i.while.body6.i.i_crit_edge ]
  %55 = ptrtoint ptr %buf.addr.1160.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %buf.addr.1160.i.i, align 1
  %conv.i.i = zext i8 %56 to i32
  %add.i.i = add i32 %s1.1161.i.i, %conv.i.i
  %add7.i.i = add i32 %add.i.i, %s2.1162.i.i
  %arrayidx8.i.i = getelementptr i8, ptr %buf.addr.1160.i.i, i32 1
  %57 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i = zext i8 %58 to i32
  %add10.i.i = add i32 %add.i.i, %conv9.i.i
  %add11.i.i = add i32 %add7.i.i, %add10.i.i
  %arrayidx12.i.i = getelementptr i8, ptr %buf.addr.1160.i.i, i32 2
  %59 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx12.i.i, align 1
  %conv13.i.i = zext i8 %60 to i32
  %add14.i.i = add i32 %add10.i.i, %conv13.i.i
  %add15.i.i = add i32 %add11.i.i, %add14.i.i
  %arrayidx16.i.i = getelementptr i8, ptr %buf.addr.1160.i.i, i32 3
  %61 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx16.i.i, align 1
  %conv17.i.i = zext i8 %62 to i32
  %add18.i.i = add i32 %add14.i.i, %conv17.i.i
  %add19.i.i = add i32 %add15.i.i, %add18.i.i
  %arrayidx20.i.i = getelementptr i8, ptr %buf.addr.1160.i.i, i32 4
  %63 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx20.i.i, align 1
  %conv21.i.i = zext i8 %64 to i32
  %add22.i.i = add i32 %add18.i.i, %conv21.i.i
  %add23.i.i = add i32 %add19.i.i, %add22.i.i
  %arrayidx24.i.i = getelementptr i8, ptr %buf.addr.1160.i.i, i32 5
  %65 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx24.i.i, align 1
  %conv25.i.i = zext i8 %66 to i32
  %add26.i.i = add i32 %add22.i.i, %conv25.i.i
  %add27.i.i = add i32 %add23.i.i, %add26.i.i
  %arrayidx28.i.i = getelementptr i8, ptr %buf.addr.1160.i.i, i32 6
  %67 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx28.i.i, align 1
  %conv29.i.i = zext i8 %68 to i32
  %add30.i.i = add i32 %add26.i.i, %conv29.i.i
  %add31.i.i = add i32 %add27.i.i, %add30.i.i
  %arrayidx32.i.i = getelementptr i8, ptr %buf.addr.1160.i.i, i32 7
  %69 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx32.i.i, align 1
  %conv33.i.i = zext i8 %70 to i32
  %add34.i.i = add i32 %add30.i.i, %conv33.i.i
  %add35.i.i = add i32 %add31.i.i, %add34.i.i
  %arrayidx36.i.i = getelementptr i8, ptr %buf.addr.1160.i.i, i32 8
  %71 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx36.i.i, align 1
  %conv37.i.i = zext i8 %72 to i32
  %add38.i.i = add i32 %add34.i.i, %conv37.i.i
  %add39.i.i = add i32 %add35.i.i, %add38.i.i
  %arrayidx40.i.i = getelementptr i8, ptr %buf.addr.1160.i.i, i32 9
  %73 = ptrtoint ptr %arrayidx40.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx40.i.i, align 1
  %conv41.i.i = zext i8 %74 to i32
  %add42.i.i = add i32 %add38.i.i, %conv41.i.i
  %add43.i.i = add i32 %add39.i.i, %add42.i.i
  %arrayidx44.i.i = getelementptr i8, ptr %buf.addr.1160.i.i, i32 10
  %75 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx44.i.i, align 1
  %conv45.i.i = zext i8 %76 to i32
  %add46.i.i = add i32 %add42.i.i, %conv45.i.i
  %add47.i.i = add i32 %add43.i.i, %add46.i.i
  %arrayidx48.i.i = getelementptr i8, ptr %buf.addr.1160.i.i, i32 11
  %77 = ptrtoint ptr %arrayidx48.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx48.i.i, align 1
  %conv49.i.i = zext i8 %78 to i32
  %add50.i.i = add i32 %add46.i.i, %conv49.i.i
  %add51.i.i = add i32 %add47.i.i, %add50.i.i
  %arrayidx52.i.i = getelementptr i8, ptr %buf.addr.1160.i.i, i32 12
  %79 = ptrtoint ptr %arrayidx52.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx52.i.i, align 1
  %conv53.i.i = zext i8 %80 to i32
  %add54.i.i = add i32 %add50.i.i, %conv53.i.i
  %add55.i.i = add i32 %add51.i.i, %add54.i.i
  %arrayidx56.i.i = getelementptr i8, ptr %buf.addr.1160.i.i, i32 13
  %81 = ptrtoint ptr %arrayidx56.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx56.i.i, align 1
  %conv57.i.i = zext i8 %82 to i32
  %add58.i.i = add i32 %add54.i.i, %conv57.i.i
  %add59.i.i = add i32 %add55.i.i, %add58.i.i
  %arrayidx60.i.i = getelementptr i8, ptr %buf.addr.1160.i.i, i32 14
  %83 = ptrtoint ptr %arrayidx60.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx60.i.i, align 1
  %conv61.i.i = zext i8 %84 to i32
  %add62.i.i = add i32 %add58.i.i, %conv61.i.i
  %add63.i.i = add i32 %add59.i.i, %add62.i.i
  %arrayidx64.i.i = getelementptr i8, ptr %buf.addr.1160.i.i, i32 15
  %85 = ptrtoint ptr %arrayidx64.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx64.i.i, align 1
  %conv65.i.i = zext i8 %86 to i32
  %add66.i.i = add i32 %add62.i.i, %conv65.i.i
  %add67.i.i = add i32 %add63.i.i, %add66.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf.addr.1160.i.i, i32 16
  %sub68.i.i = add nsw i32 %k.0163.i.i, -16
  %cmp5.i.i = icmp ugt i32 %sub68.i.i, 15
  br i1 %cmp5.i.i, label %while.body6.i.i.while.body6.i.i_crit_edge, label %while.end.i.i

while.body6.i.i.while.body6.i.i_crit_edge:        ; preds = %while.body6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body6.i.i

while.end.i.i:                                    ; preds = %while.body6.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub68.i.i)
  %cmp69.not.i.i = icmp eq i32 %sub68.i.i, 0
  br i1 %cmp69.not.i.i, label %while.end.i.i.if.end75.i.i_crit_edge, label %while.end.i.i.do.body.preheader.i.i_crit_edge

while.end.i.i.do.body.preheader.i.i_crit_edge:    ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.preheader.i.i

while.end.i.i.if.end75.i.i_crit_edge:             ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75.i.i

do.body.preheader.i.i:                            ; preds = %while.end.i.i.do.body.preheader.i.i_crit_edge, %while.body.i.i.do.body.preheader.i.i_crit_edge
  %k.0.lcssa182.i.i = phi i32 [ %sub68.i.i, %while.end.i.i.do.body.preheader.i.i_crit_edge ], [ %54, %while.body.i.i.do.body.preheader.i.i_crit_edge ]
  %s2.1.lcssa181.i.i = phi i32 [ %add67.i.i, %while.end.i.i.do.body.preheader.i.i_crit_edge ], [ %s2.0171.i.i, %while.body.i.i.do.body.preheader.i.i_crit_edge ]
  %s1.1.lcssa180.i.i = phi i32 [ %add66.i.i, %while.end.i.i.do.body.preheader.i.i_crit_edge ], [ %s1.0170.i.i, %while.body.i.i.do.body.preheader.i.i_crit_edge ]
  %buf.addr.1.lcssa179.i.i = phi ptr [ %add.ptr.i.i, %while.end.i.i.do.body.preheader.i.i_crit_edge ], [ %buf.addr.0168.i.i, %while.body.i.i.do.body.preheader.i.i_crit_edge ]
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %do.body.preheader.i.i
  %buf.addr.2.i.i = phi ptr [ %incdec.ptr.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ %buf.addr.1.lcssa179.i.i, %do.body.preheader.i.i ]
  %s1.2.i.i = phi i32 [ %add73.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ %s1.1.lcssa180.i.i, %do.body.preheader.i.i ]
  %s2.2.i.i = phi i32 [ %add74.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ %s2.1.lcssa181.i.i, %do.body.preheader.i.i ]
  %k.1.i.i = phi i32 [ %dec.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ %k.0.lcssa182.i.i, %do.body.preheader.i.i ]
  %incdec.ptr.i.i = getelementptr i8, ptr %buf.addr.2.i.i, i32 1
  %87 = ptrtoint ptr %buf.addr.2.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %buf.addr.2.i.i, align 1
  %conv72.i.i = zext i8 %88 to i32
  %add73.i.i = add i32 %s1.2.i.i, %conv72.i.i
  %add74.i.i = add i32 %add73.i.i, %s2.2.i.i
  %dec.i.i = add i32 %k.1.i.i, -1
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %if.end75.loopexit.i.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

if.end75.loopexit.i.i:                            ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %uglygep.i.i = getelementptr i8, ptr %buf.addr.1.lcssa179.i.i, i32 %k.0.lcssa182.i.i
  br label %if.end75.i.i

if.end75.i.i:                                     ; preds = %if.end75.loopexit.i.i, %while.end.i.i.if.end75.i.i_crit_edge
  %buf.addr.3.i.i = phi ptr [ %add.ptr.i.i, %while.end.i.i.if.end75.i.i_crit_edge ], [ %uglygep.i.i, %if.end75.loopexit.i.i ]
  %s1.3.i.i = phi i32 [ %add66.i.i, %while.end.i.i.if.end75.i.i_crit_edge ], [ %add73.i.i, %if.end75.loopexit.i.i ]
  %s2.3.i.i = phi i32 [ %add67.i.i, %while.end.i.i.if.end75.i.i_crit_edge ], [ %add74.i.i, %if.end75.loopexit.i.i ]
  %rem.i.i = urem i32 %s1.3.i.i, 65521
  %rem76.i.i = urem i32 %s2.3.i.i, 65521
  %cmp2.not.i.i = icmp eq i32 %sub.i.i, 0
  br i1 %cmp2.not.i.i, label %while.end77.i.i, label %if.end75.i.i.while.body.i.i_crit_edge

if.end75.i.i.while.body.i.i_crit_edge:            ; preds = %if.end75.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.end77.i.i:                                  ; preds = %if.end75.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i.i = shl nuw i32 %rem76.i.i, 16
  %or.i.i = or i32 %shl.i.i, %rem.i.i
  br label %zlib_adler32.exit.i

zlib_adler32.exit.i:                              ; preds = %while.end77.i.i, %if.then5.i.zlib_adler32.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %or.i.i, %while.end77.i.i ], [ 1, %if.then5.i.zlib_adler32.exit.i_crit_edge ]
  %89 = ptrtoint ptr %adler.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %retval.0.i.i, ptr %adler.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %zlib_adler32.exit.i, %if.end3.i.if.end7.i_crit_edge
  %90 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %35, align 4
  %92 = call ptr @memcpy(ptr %add.ptr54, ptr %91, i32 %44)
  %93 = load ptr, ptr %35, align 4
  %add.ptr.i = getelementptr i8, ptr %93, i32 %44
  store ptr %add.ptr.i, ptr %35, align 4
  %total_in.i = getelementptr inbounds %struct.z_stream_s, ptr %35, i32 0, i32 2
  %94 = ptrtoint ptr %total_in.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %total_in.i, align 4
  %add.i = add i32 %95, %44
  store i32 %add.i, ptr %total_in.i, align 4
  br label %read_buf.exit

read_buf.exit:                                    ; preds = %if.end7.i, %if.end48.read_buf.exit_crit_edge
  %96 = ptrtoint ptr %lookahead to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %lookahead, align 4
  %add56 = add i32 %97, %44
  store i32 %add56, ptr %lookahead, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add56)
  %cmp58 = icmp ugt i32 %add56, 2
  br i1 %cmp58, label %do.cond73, label %read_buf.exit.land.rhs_crit_edge

read_buf.exit.land.rhs_crit_edge:                 ; preds = %read_buf.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

do.cond73:                                        ; preds = %read_buf.exit
  %98 = ptrtoint ptr %window to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %window, align 4
  %100 = ptrtoint ptr %strstart to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %strstart, align 4
  %arrayidx63 = getelementptr i8, ptr %99, i32 %101
  %102 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx63, align 1
  %conv64 = zext i8 %103 to i32
  %104 = ptrtoint ptr %ins_h to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %conv64, ptr %ins_h, align 4
  %105 = ptrtoint ptr %hash_shift to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %hash_shift, align 4
  %shl = shl i32 %conv64, %106
  %add68 = add i32 %101, 1
  %arrayidx69 = getelementptr i8, ptr %99, i32 %add68
  %107 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx69, align 1
  %conv70 = zext i8 %108 to i32
  %xor = xor i32 %shl, %conv70
  %109 = ptrtoint ptr %hash_mask to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %hash_mask, align 4
  %and = and i32 %xor, %110
  store i32 %and, ptr %ins_h, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262, i32 %add56)
  %cmp75 = icmp ult i32 %add56, 262
  br i1 %cmp75, label %do.cond73.land.rhs_crit_edge, label %do.cond73.cleanup_crit_edge

do.cond73.cleanup_crit_edge:                      ; preds = %do.cond73
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond73.land.rhs_crit_edge:                     ; preds = %do.cond73
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

land.rhs:                                         ; preds = %do.cond73.land.rhs_crit_edge, %read_buf.exit.land.rhs_crit_edge
  %111 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %s, align 4
  %avail_in78 = getelementptr inbounds %struct.z_stream_s, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %avail_in78 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %avail_in78, align 4
  %cmp79.not = icmp eq i32 %114, 0
  br i1 %cmp79.not, label %land.rhs.cleanup_crit_edge, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %land.rhs.cleanup_crit_edge, %do.cond73.cleanup_crit_edge, %if.end44.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_tr_flush_block(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @longest_match(ptr nocapture noundef %s, i32 noundef %cur_match) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %max_chain_length = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 30
  %0 = ptrtoint ptr %max_chain_length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_chain_length, align 4
  %window = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 13
  %2 = ptrtoint ptr %window to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %window, align 4
  %strstart = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 26
  %4 = ptrtoint ptr %strstart to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %strstart, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %5
  %prev_length = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 29
  %6 = ptrtoint ptr %prev_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %prev_length, align 4
  %nice_match1 = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 35
  %8 = ptrtoint ptr %nice_match1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nice_match1, align 4
  %w_size = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 10
  %10 = ptrtoint ptr %w_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %w_size, align 4
  %sub = add i32 %11, -262
  %12 = tail call i32 @llvm.usub.sat.i32(i32 %5, i32 %sub)
  %prev7 = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 15
  %13 = ptrtoint ptr %prev7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev7, align 4
  %w_mask = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 12
  %15 = ptrtoint ptr %w_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %w_mask, align 4
  %add.ptr11 = getelementptr i8, ptr %add.ptr, i32 258
  %sub12 = add i32 %7, -1
  %arrayidx = getelementptr i8, ptr %add.ptr, i32 %sub12
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  %arrayidx13 = getelementptr i8, ptr %add.ptr, i32 %7
  %19 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx13, align 1
  %good_match = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 34
  %21 = ptrtoint ptr %good_match to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %good_match, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %22)
  %cmp15.not = icmp ult i32 %7, %22
  %shr = lshr i32 %1, 2
  %chain_length.0 = select i1 %cmp15.not, i32 %1, i32 %shr
  %lookahead = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 28
  %23 = ptrtoint ptr %lookahead to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %lookahead, align 4
  %25 = tail call i32 @llvm.umin.i32(i32 %9, i32 %24)
  %match_start = getelementptr inbounds %struct.deflate_state, ptr %s, i32 0, i32 27
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr11 to i32
  %add.ptr105 = getelementptr i8, ptr %add.ptr11, i32 -258
  br label %do.body

do.body:                                          ; preds = %do.cond117.do.body_crit_edge, %entry
  %cur_match.addr.0 = phi i32 [ %cur_match, %entry ], [ %conv119, %do.cond117.do.body_crit_edge ]
  %chain_length.1 = phi i32 [ %chain_length.0, %entry ], [ %dec, %do.cond117.do.body_crit_edge ]
  %scan.0 = phi ptr [ %add.ptr, %entry ], [ %scan.3, %do.cond117.do.body_crit_edge ]
  %best_len.0 = phi i32 [ %7, %entry ], [ %best_len.1, %do.cond117.do.body_crit_edge ]
  %scan_end1.0 = phi i8 [ %18, %entry ], [ %scan_end1.1, %do.cond117.do.body_crit_edge ]
  %scan_end.0 = phi i8 [ %20, %entry ], [ %scan_end.1, %do.cond117.do.body_crit_edge ]
  %add.ptr21 = getelementptr i8, ptr %3, i32 %cur_match.addr.0
  %arrayidx22 = getelementptr i8, ptr %add.ptr21, i32 %best_len.0
  %26 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx22, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %scan_end.0)
  %cmp24.not = icmp eq i8 %27, %scan_end.0
  br i1 %cmp24.not, label %lor.lhs.false, label %do.body.do.cond117_crit_edge

do.body.do.cond117_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond117

lor.lhs.false:                                    ; preds = %do.body
  %sub26 = add i32 %best_len.0, -1
  %arrayidx27 = getelementptr i8, ptr %add.ptr21, i32 %sub26
  %28 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx27, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %scan_end1.0)
  %cmp30.not = icmp eq i8 %29, %scan_end1.0
  br i1 %cmp30.not, label %lor.lhs.false32, label %lor.lhs.false.do.cond117_crit_edge

lor.lhs.false.do.cond117_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond117

lor.lhs.false32:                                  ; preds = %lor.lhs.false
  %30 = ptrtoint ptr %add.ptr21 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %add.ptr21, align 1
  %32 = ptrtoint ptr %scan.0 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %scan.0, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %33)
  %cmp35.not = icmp eq i8 %31, %33
  br i1 %cmp35.not, label %lor.lhs.false37, label %lor.lhs.false32.do.cond117_crit_edge

lor.lhs.false32.do.cond117_crit_edge:             ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond117

lor.lhs.false37:                                  ; preds = %lor.lhs.false32
  %incdec.ptr = getelementptr i8, ptr %add.ptr21, i32 1
  %34 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %incdec.ptr, align 1
  %arrayidx39 = getelementptr i8, ptr %scan.0, i32 1
  %36 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx39, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %37)
  %cmp41.not = icmp eq i8 %35, %37
  br i1 %cmp41.not, label %if.end44, label %lor.lhs.false37.do.cond117_crit_edge

lor.lhs.false37.do.cond117_crit_edge:             ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond117

if.end44:                                         ; preds = %lor.lhs.false37
  %add.ptr45 = getelementptr i8, ptr %scan.0, i32 2
  br label %do.body47

do.body47:                                        ; preds = %land.lhs.true95.do.body47_crit_edge, %if.end44
  %scan.1 = phi ptr [ %add.ptr45, %if.end44 ], [ %incdec.ptr96, %land.lhs.true95.do.body47_crit_edge ]
  %38 = phi ptr [ %add.ptr21, %if.end44 ], [ %incdec.ptr84, %land.lhs.true95.do.body47_crit_edge ]
  %incdec.ptr48 = getelementptr i8, ptr %scan.1, i32 1
  %39 = ptrtoint ptr %incdec.ptr48 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %incdec.ptr48, align 1
  %incdec.ptr50 = getelementptr i8, ptr %38, i32 3
  %41 = ptrtoint ptr %incdec.ptr50 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %incdec.ptr50, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %40, i8 %42)
  %cmp52 = icmp eq i8 %40, %42
  br i1 %cmp52, label %land.lhs.true, label %do.end.split.loop.exit258

land.lhs.true:                                    ; preds = %do.body47
  %incdec.ptr54 = getelementptr i8, ptr %scan.1, i32 2
  %43 = ptrtoint ptr %incdec.ptr54 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %incdec.ptr54, align 1
  %incdec.ptr56 = getelementptr i8, ptr %38, i32 4
  %45 = ptrtoint ptr %incdec.ptr56 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %incdec.ptr56, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %44, i8 %46)
  %cmp58 = icmp eq i8 %44, %46
  br i1 %cmp58, label %land.lhs.true60, label %do.end.split.loop.exit256

land.lhs.true60:                                  ; preds = %land.lhs.true
  %incdec.ptr61 = getelementptr i8, ptr %scan.1, i32 3
  %47 = ptrtoint ptr %incdec.ptr61 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %incdec.ptr61, align 1
  %incdec.ptr63 = getelementptr i8, ptr %38, i32 5
  %49 = ptrtoint ptr %incdec.ptr63 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %incdec.ptr63, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %48, i8 %50)
  %cmp65 = icmp eq i8 %48, %50
  br i1 %cmp65, label %land.lhs.true67, label %do.end.split.loop.exit254

land.lhs.true67:                                  ; preds = %land.lhs.true60
  %incdec.ptr68 = getelementptr i8, ptr %scan.1, i32 4
  %51 = ptrtoint ptr %incdec.ptr68 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %incdec.ptr68, align 1
  %incdec.ptr70 = getelementptr i8, ptr %38, i32 6
  %53 = ptrtoint ptr %incdec.ptr70 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %incdec.ptr70, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %52, i8 %54)
  %cmp72 = icmp eq i8 %52, %54
  br i1 %cmp72, label %land.lhs.true74, label %do.end.split.loop.exit252

land.lhs.true74:                                  ; preds = %land.lhs.true67
  %incdec.ptr75 = getelementptr i8, ptr %scan.1, i32 5
  %55 = ptrtoint ptr %incdec.ptr75 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %incdec.ptr75, align 1
  %incdec.ptr77 = getelementptr i8, ptr %38, i32 7
  %57 = ptrtoint ptr %incdec.ptr77 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %incdec.ptr77, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %56, i8 %58)
  %cmp79 = icmp eq i8 %56, %58
  br i1 %cmp79, label %land.lhs.true81, label %do.end.split.loop.exit250

land.lhs.true81:                                  ; preds = %land.lhs.true74
  %incdec.ptr82 = getelementptr i8, ptr %scan.1, i32 6
  %59 = ptrtoint ptr %incdec.ptr82 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %incdec.ptr82, align 1
  %incdec.ptr84 = getelementptr i8, ptr %38, i32 8
  %61 = ptrtoint ptr %incdec.ptr84 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %incdec.ptr84, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %60, i8 %62)
  %cmp86 = icmp eq i8 %60, %62
  br i1 %cmp86, label %land.lhs.true88, label %do.end.split.loop.exit248

land.lhs.true88:                                  ; preds = %land.lhs.true81
  %incdec.ptr89 = getelementptr i8, ptr %scan.1, i32 7
  %63 = ptrtoint ptr %incdec.ptr89 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %incdec.ptr89, align 1
  %incdec.ptr91 = getelementptr i8, ptr %38, i32 9
  %65 = ptrtoint ptr %incdec.ptr91 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %incdec.ptr91, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %64, i8 %66)
  %cmp93 = icmp eq i8 %64, %66
  br i1 %cmp93, label %land.lhs.true95, label %do.end.split.loop.exit246

land.lhs.true95:                                  ; preds = %land.lhs.true88
  %incdec.ptr96 = getelementptr i8, ptr %scan.1, i32 8
  %67 = ptrtoint ptr %incdec.ptr96 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %incdec.ptr96, align 1
  %incdec.ptr98 = getelementptr i8, ptr %38, i32 10
  %69 = ptrtoint ptr %incdec.ptr98 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %incdec.ptr98, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %68, i8 %70)
  %cmp100 = icmp eq i8 %68, %70
  %cmp102 = icmp ult ptr %incdec.ptr96, %add.ptr11
  %or.cond = select i1 %cmp100, i1 %cmp102, i1 false
  br i1 %or.cond, label %land.lhs.true95.do.body47_crit_edge, label %land.lhs.true95.do.end_crit_edge

land.lhs.true95.do.end_crit_edge:                 ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true95.do.body47_crit_edge:              ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body47

do.end.split.loop.exit246:                        ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr89.le = getelementptr i8, ptr %scan.1, i32 7
  br label %do.end

do.end.split.loop.exit248:                        ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr82.le = getelementptr i8, ptr %scan.1, i32 6
  br label %do.end

do.end.split.loop.exit250:                        ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr75.le = getelementptr i8, ptr %scan.1, i32 5
  br label %do.end

do.end.split.loop.exit252:                        ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr68.le = getelementptr i8, ptr %scan.1, i32 4
  br label %do.end

do.end.split.loop.exit254:                        ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr61.le = getelementptr i8, ptr %scan.1, i32 3
  br label %do.end

do.end.split.loop.exit256:                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr54.le = getelementptr i8, ptr %scan.1, i32 2
  br label %do.end

do.end.split.loop.exit258:                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr48.le = getelementptr i8, ptr %scan.1, i32 1
  br label %do.end

do.end:                                           ; preds = %do.end.split.loop.exit258, %do.end.split.loop.exit256, %do.end.split.loop.exit254, %do.end.split.loop.exit252, %do.end.split.loop.exit250, %do.end.split.loop.exit248, %do.end.split.loop.exit246, %land.lhs.true95.do.end_crit_edge
  %scan.2 = phi ptr [ %incdec.ptr89.le, %do.end.split.loop.exit246 ], [ %incdec.ptr82.le, %do.end.split.loop.exit248 ], [ %incdec.ptr75.le, %do.end.split.loop.exit250 ], [ %incdec.ptr68.le, %do.end.split.loop.exit252 ], [ %incdec.ptr61.le, %do.end.split.loop.exit254 ], [ %incdec.ptr54.le, %do.end.split.loop.exit256 ], [ %incdec.ptr48.le, %do.end.split.loop.exit258 ], [ %incdec.ptr96, %land.lhs.true95.do.end_crit_edge ]
  %sub.ptr.rhs.cast = ptrtoint ptr %scan.2 to i32
  %sub.ptr.sub.neg = sub i32 %sub.ptr.rhs.cast, %sub.ptr.lhs.cast
  %sub104 = add i32 %sub.ptr.sub.neg, 258
  call void @__sanitizer_cov_trace_cmp4(i32 %sub104, i32 %best_len.0)
  %cmp106 = icmp sgt i32 %sub104, %best_len.0
  br i1 %cmp106, label %if.then108, label %do.end.do.cond117_crit_edge

do.end.do.cond117_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond117

if.then108:                                       ; preds = %do.end
  %71 = ptrtoint ptr %match_start to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %cur_match.addr.0, ptr %match_start, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub104, i32 %25)
  %cmp109.not = icmp slt i32 %sub104, %25
  br i1 %cmp109.not, label %if.end112, label %if.then108.do.end126_crit_edge

if.then108.do.end126_crit_edge:                   ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end126

if.end112:                                        ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #10
  %sub113 = add i32 %sub.ptr.sub.neg, 257
  %arrayidx114 = getelementptr i8, ptr %add.ptr105, i32 %sub113
  %72 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx114, align 1
  %arrayidx115 = getelementptr i8, ptr %add.ptr105, i32 %sub104
  %74 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx115, align 1
  br label %do.cond117

do.cond117:                                       ; preds = %if.end112, %do.end.do.cond117_crit_edge, %lor.lhs.false37.do.cond117_crit_edge, %lor.lhs.false32.do.cond117_crit_edge, %lor.lhs.false.do.cond117_crit_edge, %do.body.do.cond117_crit_edge
  %scan.3 = phi ptr [ %scan.0, %do.body.do.cond117_crit_edge ], [ %scan.0, %lor.lhs.false.do.cond117_crit_edge ], [ %scan.0, %lor.lhs.false32.do.cond117_crit_edge ], [ %scan.0, %lor.lhs.false37.do.cond117_crit_edge ], [ %add.ptr105, %if.end112 ], [ %add.ptr105, %do.end.do.cond117_crit_edge ]
  %best_len.1 = phi i32 [ %best_len.0, %do.body.do.cond117_crit_edge ], [ %best_len.0, %lor.lhs.false.do.cond117_crit_edge ], [ %best_len.0, %lor.lhs.false32.do.cond117_crit_edge ], [ %best_len.0, %lor.lhs.false37.do.cond117_crit_edge ], [ %sub104, %if.end112 ], [ %best_len.0, %do.end.do.cond117_crit_edge ]
  %scan_end1.1 = phi i8 [ %scan_end1.0, %do.body.do.cond117_crit_edge ], [ %scan_end1.0, %lor.lhs.false.do.cond117_crit_edge ], [ %scan_end1.0, %lor.lhs.false32.do.cond117_crit_edge ], [ %scan_end1.0, %lor.lhs.false37.do.cond117_crit_edge ], [ %73, %if.end112 ], [ %scan_end1.0, %do.end.do.cond117_crit_edge ]
  %scan_end.1 = phi i8 [ %scan_end.0, %do.body.do.cond117_crit_edge ], [ %scan_end.0, %lor.lhs.false.do.cond117_crit_edge ], [ %scan_end.0, %lor.lhs.false32.do.cond117_crit_edge ], [ %scan_end.0, %lor.lhs.false37.do.cond117_crit_edge ], [ %75, %if.end112 ], [ %scan_end.0, %do.end.do.cond117_crit_edge ]
  %and = and i32 %cur_match.addr.0, %16
  %arrayidx118 = getelementptr i16, ptr %14, i32 %and
  %76 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %arrayidx118, align 2
  %conv119 = zext i16 %77 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv119)
  %cmp120 = icmp uge i32 %12, %conv119
  %dec = add i32 %chain_length.1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp123.not = icmp eq i32 %dec, 0
  %or.cond218 = select i1 %cmp120, i1 true, i1 %cmp123.not
  br i1 %or.cond218, label %do.cond117.do.end126_crit_edge, label %do.cond117.do.body_crit_edge

do.cond117.do.body_crit_edge:                     ; preds = %do.cond117
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.cond117.do.end126_crit_edge:                   ; preds = %do.cond117
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end126

do.end126:                                        ; preds = %do.cond117.do.end126_crit_edge, %if.then108.do.end126_crit_edge
  %best_len.2 = phi i32 [ %best_len.1, %do.cond117.do.end126_crit_edge ], [ %sub104, %if.then108.do.end126_crit_edge ]
  %78 = tail call i32 @llvm.umin.i32(i32 %best_len.2, i32 %24)
  ret i32 %78
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_tr_tally(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @configuration_table, !1, !"configuration_table", i1 false, i1 false}
!1 = !{!"../lib/zlib_deflate/deflate.c", i32 135, i32 21}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"branch_weights", i32 7818360, i32 -388717296}
!12 = !{i64 2151609414, i64 2151609906, i64 2151609451, i64 2151609507, i64 2151609541, i64 2151609565, i64 2151609606, i64 2151609627, i64 2151609655, i64 2151609689}
