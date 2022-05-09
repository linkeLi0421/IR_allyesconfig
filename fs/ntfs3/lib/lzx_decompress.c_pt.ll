; ModuleID = '/llk/IR_all_yes/fs/ntfs3/lib/lzx_decompress.c_pt.bc'
source_filename = "../fs/ntfs3/lib/lzx_decompress.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.input_bitstream = type { i32, i32, ptr, ptr }
%struct.lzx_decompressor = type { [3040 x i16], [546 x i8], [1522 x i16], [299 x i8], [144 x i16], [8 x i8], [104 x i16], [20 x i8], [530 x i16] }

@__const.lzx_decompress.recent_offsets = private unnamed_addr constant [3 x i32] [i32 1, i32 1, i32 1], align 4
@lzx_extra_offset_bits = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\00\00\00\00\01\01\02\02\03\03\04\04\05\05\06\06\07\07\08\08\09\09\0A\0A\0B\0B\0C\0C\0D\0D", [34 x i8] zeroinitializer }, align 32
@lzx_offset_slot_base = internal constant { [31 x i32], [36 x i8] } { [31 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 6, i32 8, i32 12, i32 16, i32 24, i32 32, i32 48, i32 64, i32 96, i32 128, i32 192, i32 256, i32 384, i32 512, i32 768, i32 1024, i32 1536, i32 2048, i32 3072, i32 4096, i32 6144, i32 8192, i32 12288, i32 16384, i32 24576, i32 32768], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 16, i64 17, i64 18]
@___asan_gen_.2 = private unnamed_addr constant [22 x i8] c"lzx_extra_offset_bits\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 107, i32 17 }
@___asan_gen_.5 = private unnamed_addr constant [21 x i8] c"lzx_offset_slot_base\00", align 1
@___asan_gen_.6 = private constant [33 x i8] c"../fs/ntfs3/lib/lzx_decompress.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 94, i32 18 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @lzx_extra_offset_bits, ptr @lzx_offset_slot_base], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lzx_extra_offset_bits to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lzx_offset_slot_base to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @lzx_allocate_decompressor() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 11554, i32 noundef 3136, i32 noundef 2) #8
  ret ptr %call1.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lzx_decompress(ptr noundef %decompressor, ptr noundef %compressed_data, i32 noundef %compressed_size, ptr noundef %uncompressed_data, i32 noundef %uncompressed_size) local_unnamed_addr #0 align 64 {
entry:
  %is = alloca %struct.input_bitstream, align 4
  %recent_offsets = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %uncompressed_data, i32 %uncompressed_size
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %is) #5
  %0 = getelementptr inbounds %struct.input_bitstream, ptr %is, i32 0, i32 1
  %1 = getelementptr inbounds %struct.input_bitstream, ptr %is, i32 0, i32 2
  %2 = getelementptr inbounds %struct.input_bitstream, ptr %is, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %recent_offsets) #5
  %3 = call ptr @memcpy(ptr %recent_offsets, ptr @__const.lzx_decompress.recent_offsets, i32 12)
  %4 = ptrtoint ptr %is to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %is, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %0, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %compressed_data, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %compressed_data, i32 %compressed_size
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr.i, ptr %2, align 4
  %maincode_lens = getelementptr inbounds %struct.lzx_decompressor, ptr %decompressor, i32 0, i32 1
  %8 = call ptr @memset(ptr %maincode_lens, i32 0, i32 496)
  %lencode_lens = getelementptr inbounds %struct.lzx_decompressor, ptr %decompressor, i32 0, i32 3
  %9 = call ptr @memset(ptr %lencode_lens, i32 0, i32 249)
  %cmp.not143 = icmp eq ptr %add.ptr, %uncompressed_data
  br i1 %cmp.not143, label %entry.cleanup29_crit_edge, label %while.body.lr.ph

entry.cleanup29_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup29

while.body.lr.ph:                                 ; preds = %entry
  %arrayidx52.i = getelementptr inbounds i32, ptr %recent_offsets, i32 1
  %arrayidx54.i = getelementptr inbounds i32, ptr %recent_offsets, i32 2
  %sub.ptr.lhs.cast115 = ptrtoint ptr %add.ptr to i32
  %alignedcode_decode_table.i = getelementptr inbounds %struct.lzx_decompressor, ptr %decompressor, i32 0, i32 4
  %alignedcode_lens6.i = getelementptr inbounds %struct.lzx_decompressor, ptr %decompressor, i32 0, i32 5
  %working_space.i = getelementptr inbounds %struct.lzx_decompressor, ptr %decompressor, i32 0, i32 8
  %add.ptr.i61 = getelementptr %struct.lzx_decompressor, ptr %decompressor, i32 0, i32 1, i32 256
  %lencode_decode_table.i = getelementptr inbounds %struct.lzx_decompressor, ptr %decompressor, i32 0, i32 2
  %sub.ptr.rhs.cast44.i = ptrtoint ptr %uncompressed_data to i32
  %arrayidx = getelementptr %struct.lzx_decompressor, ptr %decompressor, i32 0, i32 1, i32 232
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %e8_status.0146 = phi i32 [ 0, %while.body.lr.ph ], [ %e8_status.2, %cleanup.while.body_crit_edge ]
  %out_next.0144 = phi ptr [ %uncompressed_data, %while.body.lr.ph ], [ %out_next.2, %cleanup.while.body_crit_edge ]
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp.i.i = icmp ult i32 %11, 4
  br i1 %cmp.i.i, label %if.then.i.i, label %while.body.bitstream_ensure_bits.exit.i_crit_edge

while.body.bitstream_ensure_bits.exit.i_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %bitstream_ensure_bits.exit.i

if.then.i.i:                                      ; preds = %while.body
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %2, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %13 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.ptr.sub.i.i)
  %cmp1.i.i = icmp sgt i32 %sub.ptr.sub.i.i, 1
  br i1 %cmp1.i.i, label %if.then2.i.i, label %if.then.i.i.if.end.i.i_crit_edge

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.then2.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %15, align 1
  %18 = call i16 @llvm.bswap.i16(i16 %17) #5
  %conv.i.i = zext i16 %18 to i32
  %sub.i.i = sub nuw nsw i32 16, %11
  %shl.i.i = shl nuw i32 %conv.i.i, %sub.i.i
  %19 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %is, align 4
  %or.i.i = or i32 %shl.i.i, %20
  store i32 %or.i.i, ptr %is, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 2
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr.i.i, ptr %1, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then2.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %add.i.i = add nuw nsw i32 %11, 16
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add.i.i, ptr %0, align 4
  br label %bitstream_ensure_bits.exit.i

bitstream_ensure_bits.exit.i:                     ; preds = %if.end.i.i, %while.body.bitstream_ensure_bits.exit.i_crit_edge
  %23 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %is, align 4
  %shr.i.i.i = lshr i32 %24, 29
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %0, align 4
  %shl.i.i110.i = shl i32 %24, 4
  store i32 %shl.i.i110.i, ptr %is, align 4
  %sub.i.i112.i = add i32 %26, -4
  store i32 %sub.i.i112.i, ptr %0, align 4
  %shl.i.i.mask.i = and i32 %24, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i.i.mask.i)
  %tobool.not.i = icmp eq i32 %shl.i.i.mask.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %bitstream_ensure_bits.exit.i.if.end.i60_crit_edge

bitstream_ensure_bits.exit.i.if.end.i60_crit_edge: ; preds = %bitstream_ensure_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i60

if.else.i:                                        ; preds = %bitstream_ensure_bits.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i.i112.i)
  %cmp.i.i.i = icmp ult i32 %sub.i.i112.i, 8
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.bitstream_read_bits.exit.i_crit_edge

if.else.i.bitstream_read_bits.exit.i_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bitstream_read_bits.exit.i

if.then.i.i.i:                                    ; preds = %if.else.i
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %2, align 4
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %28 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %30 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.ptr.sub.i.i.i)
  %cmp1.i.i.i = icmp sgt i32 %sub.ptr.sub.i.i.i, 1
  br i1 %cmp1.i.i.i, label %if.then2.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i.i

if.then2.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %30, align 1
  %33 = call i16 @llvm.bswap.i16(i16 %32) #5
  %conv.i.i.i = zext i16 %33 to i32
  %sub.i.i114.i = sub nuw nsw i32 20, %26
  %shl.i.i115.i = shl nuw i32 %conv.i.i.i, %sub.i.i114.i
  %or.i.i.i = or i32 %shl.i.i115.i, %shl.i.i110.i
  %34 = ptrtoint ptr %is to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or.i.i.i, ptr %is, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %30, i32 2
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr.i.i.i, ptr %1, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then2.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %add.i.i.i = add nuw nsw i32 %26, 12
  %36 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add.i.i.i, ptr %0, align 4
  br label %bitstream_read_bits.exit.i

bitstream_read_bits.exit.i:                       ; preds = %if.end.i.i.i, %if.else.i.bitstream_read_bits.exit.i_crit_edge
  %37 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %is, align 4
  %shl.i.i.i.i = shl i32 %38, 8
  store i32 %shl.i.i.i.i, ptr %is, align 4
  %39 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %0, align 4
  %sub.i.i.i.i = add i32 %40, -8
  store i32 %sub.i.i.i.i, ptr %0, align 4
  %41 = lshr i32 %38, 16
  %shl.i = and i32 %41, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i.i.i.i)
  %cmp.i.i117.i = icmp ult i32 %sub.i.i.i.i, 8
  br i1 %cmp.i.i117.i, label %if.then.i.i124.i, label %bitstream_read_bits.exit.i.bitstream_read_bits.exit137.i_crit_edge

bitstream_read_bits.exit.i.bitstream_read_bits.exit137.i_crit_edge: ; preds = %bitstream_read_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bitstream_read_bits.exit137.i

if.then.i.i124.i:                                 ; preds = %bitstream_read_bits.exit.i
  %42 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %2, align 4
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %sub.ptr.lhs.cast.i.i120.i = ptrtoint ptr %43 to i32
  %sub.ptr.rhs.cast.i.i121.i = ptrtoint ptr %45 to i32
  %sub.ptr.sub.i.i122.i = sub i32 %sub.ptr.lhs.cast.i.i120.i, %sub.ptr.rhs.cast.i.i121.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.ptr.sub.i.i122.i)
  %cmp1.i.i123.i = icmp sgt i32 %sub.ptr.sub.i.i122.i, 1
  br i1 %cmp1.i.i123.i, label %if.then2.i.i130.i, label %if.then.i.i124.i.if.end.i.i132.i_crit_edge

if.then.i.i124.i.if.end.i.i132.i_crit_edge:       ; preds = %if.then.i.i124.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i132.i

if.then2.i.i130.i:                                ; preds = %if.then.i.i124.i
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %45, align 1
  %48 = call i16 @llvm.bswap.i16(i16 %47) #5
  %conv.i.i125.i = zext i16 %48 to i32
  %sub.i.i126.i = sub nuw nsw i32 24, %40
  %shl.i.i127.i = shl nuw i32 %conv.i.i125.i, %sub.i.i126.i
  %or.i.i128.i = or i32 %shl.i.i127.i, %shl.i.i.i.i
  %49 = ptrtoint ptr %is to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %or.i.i128.i, ptr %is, align 4
  %add.ptr.i.i129.i = getelementptr i8, ptr %45, i32 2
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %add.ptr.i.i129.i, ptr %1, align 4
  br label %if.end.i.i132.i

if.end.i.i132.i:                                  ; preds = %if.then2.i.i130.i, %if.then.i.i124.i.if.end.i.i132.i_crit_edge
  %add.i.i131.i = add nuw nsw i32 %40, 8
  %51 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %add.i.i131.i, ptr %0, align 4
  br label %bitstream_read_bits.exit137.i

bitstream_read_bits.exit137.i:                    ; preds = %if.end.i.i132.i, %bitstream_read_bits.exit.i.bitstream_read_bits.exit137.i_crit_edge
  %52 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %is, align 4
  %shr.i.i.i133.i = lshr i32 %53, 24
  %shl.i.i.i135.i = shl i32 %53, 8
  store i32 %shl.i.i.i135.i, ptr %is, align 4
  %54 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %0, align 4
  %sub.i.i.i136.i = add i32 %55, -8
  store i32 %sub.i.i.i136.i, ptr %0, align 4
  %or4.i = or i32 %shr.i.i.i133.i, %shl.i
  br label %if.end.i60

if.end.i60:                                       ; preds = %bitstream_read_bits.exit137.i, %bitstream_ensure_bits.exit.i.if.end.i60_crit_edge
  %block_size.0.i = phi i32 [ %or4.i, %bitstream_read_bits.exit137.i ], [ 32768, %bitstream_ensure_bits.exit.i.if.end.i60_crit_edge ]
  %56 = zext i32 %shr.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i.i, label %if.end.i60.cleanup29_crit_edge [
    i32 2, label %if.end.i60.for.body.i_crit_edge
    i32 1, label %if.end.i60.sw.bb13.i_crit_edge
    i32 3, label %sw.bb48.i
  ]

if.end.i60.sw.bb13.i_crit_edge:                   ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb13.i

if.end.i60.for.body.i_crit_edge:                  ; preds = %if.end.i60
  br label %for.body.i

if.end.i60.cleanup29_crit_edge:                   ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup29

for.body.i:                                       ; preds = %bitstream_read_bits.exit159.i.for.body.i_crit_edge, %if.end.i60.for.body.i_crit_edge
  %i.0207.i = phi i32 [ %inc.i, %bitstream_read_bits.exit159.i.for.body.i_crit_edge ], [ 0, %if.end.i60.for.body.i_crit_edge ]
  %57 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %58)
  %cmp.i.i139.i = icmp ult i32 %58, 3
  br i1 %cmp.i.i139.i, label %if.then.i.i146.i, label %for.body.i.bitstream_read_bits.exit159.i_crit_edge

for.body.i.bitstream_read_bits.exit159.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bitstream_read_bits.exit159.i

if.then.i.i146.i:                                 ; preds = %for.body.i
  %59 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %2, align 4
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 4
  %sub.ptr.lhs.cast.i.i142.i = ptrtoint ptr %60 to i32
  %sub.ptr.rhs.cast.i.i143.i = ptrtoint ptr %62 to i32
  %sub.ptr.sub.i.i144.i = sub i32 %sub.ptr.lhs.cast.i.i142.i, %sub.ptr.rhs.cast.i.i143.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.ptr.sub.i.i144.i)
  %cmp1.i.i145.i = icmp sgt i32 %sub.ptr.sub.i.i144.i, 1
  br i1 %cmp1.i.i145.i, label %if.then2.i.i152.i, label %if.then.i.i146.i.if.end.i.i154.i_crit_edge

if.then.i.i146.i.if.end.i.i154.i_crit_edge:       ; preds = %if.then.i.i146.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i154.i

if.then2.i.i152.i:                                ; preds = %if.then.i.i146.i
  call void @__sanitizer_cov_trace_pc() #7
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %64 = load i16, ptr %62, align 1
  %65 = call i16 @llvm.bswap.i16(i16 %64) #5
  %conv.i.i147.i = zext i16 %65 to i32
  %sub.i.i148.i = sub nuw nsw i32 16, %58
  %shl.i.i149.i = shl nuw i32 %conv.i.i147.i, %sub.i.i148.i
  %66 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %is, align 4
  %or.i.i150.i = or i32 %shl.i.i149.i, %67
  store i32 %or.i.i150.i, ptr %is, align 4
  %add.ptr.i.i151.i = getelementptr i8, ptr %62, i32 2
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %add.ptr.i.i151.i, ptr %1, align 4
  br label %if.end.i.i154.i

if.end.i.i154.i:                                  ; preds = %if.then2.i.i152.i, %if.then.i.i146.i.if.end.i.i154.i_crit_edge
  %add.i.i153.i = add nuw nsw i32 %58, 16
  %69 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %add.i.i153.i, ptr %0, align 4
  br label %bitstream_read_bits.exit159.i

bitstream_read_bits.exit159.i:                    ; preds = %if.end.i.i154.i, %for.body.i.bitstream_read_bits.exit159.i_crit_edge
  %70 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %is, align 4
  %shr.i.i.i155.i = lshr i32 %71, 29
  %shl.i.i.i157.i = shl i32 %71, 3
  store i32 %shl.i.i.i157.i, ptr %is, align 4
  %72 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %0, align 4
  %sub.i.i.i158.i = add i32 %73, -3
  store i32 %sub.i.i.i158.i, ptr %0, align 4
  %conv.i = trunc i32 %shr.i.i.i155.i to i8
  %arrayidx.i = getelementptr %struct.lzx_decompressor, ptr %decompressor, i32 0, i32 5, i32 %i.0207.i
  %74 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  %inc.i = add nuw nsw i32 %i.0207.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %for.end.i, label %bitstream_read_bits.exit159.i.for.body.i_crit_edge

bitstream_read_bits.exit159.i.for.body.i_crit_edge: ; preds = %bitstream_read_bits.exit159.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %bitstream_read_bits.exit159.i
  %call9.i = call i32 @make_huffman_decode_table(ptr noundef %alignedcode_decode_table.i, i32 noundef 8, i32 noundef 7, ptr noundef %alignedcode_lens6.i, i32 noundef 7, ptr noundef %working_space.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %for.end.i.sw.bb13.i_crit_edge, label %for.end.i.cleanup29_crit_edge

for.end.i.cleanup29_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup29

for.end.i.sw.bb13.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb13.i

sw.bb13.i:                                        ; preds = %for.end.i.sw.bb13.i_crit_edge, %if.end.i60.sw.bb13.i_crit_edge
  %call15.i = call fastcc i32 @lzx_read_codeword_lens(ptr noundef %decompressor, ptr noundef nonnull %is, ptr noundef %maincode_lens, i32 noundef 256) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %sw.bb13.i.cleanup29_crit_edge

sw.bb13.i.cleanup29_crit_edge:                    ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup29

if.end18.i:                                       ; preds = %sw.bb13.i
  %call21.i = call fastcc i32 @lzx_read_codeword_lens(ptr noundef %decompressor, ptr noundef nonnull %is, ptr noundef %add.ptr.i61, i32 noundef 240) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end24.i, label %if.end18.i.cleanup29_crit_edge

if.end18.i.cleanup29_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup29

if.end24.i:                                       ; preds = %if.end18.i
  %call30.i = call i32 @make_huffman_decode_table(ptr noundef %decompressor, i32 noundef 496, i32 noundef 11, ptr noundef %maincode_lens, i32 noundef 16, ptr noundef %working_space.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end33.i, label %if.end24.i.cleanup29_crit_edge

if.end24.i.cleanup29_crit_edge:                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup29

if.end33.i:                                       ; preds = %if.end24.i
  %call35.i = call fastcc i32 @lzx_read_codeword_lens(ptr noundef %decompressor, ptr noundef nonnull %is, ptr noundef %lencode_lens, i32 noundef 249) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.end38.i, label %if.end33.i.cleanup29_crit_edge

if.end33.i.cleanup29_crit_edge:                   ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup29

if.end38.i:                                       ; preds = %if.end33.i
  %call44.i = call i32 @make_huffman_decode_table(ptr noundef %lencode_decode_table.i, i32 noundef 249, i32 noundef 10, ptr noundef %lencode_lens, i32 noundef 16, ptr noundef %working_space.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %if.end, label %if.end38.i.cleanup29_crit_edge

if.end38.i.cleanup29_crit_edge:                   ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup29

sw.bb48.i:                                        ; preds = %if.end.i60
  %75 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp.i161.i = icmp eq i32 %76, 0
  br i1 %cmp.i161.i, label %if.then.i168.i, label %sw.bb48.i.bitstream_ensure_bits.exit177.i_crit_edge

sw.bb48.i.bitstream_ensure_bits.exit177.i_crit_edge: ; preds = %sw.bb48.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bitstream_ensure_bits.exit177.i

if.then.i168.i:                                   ; preds = %sw.bb48.i
  %77 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %2, align 4
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %1, align 4
  %sub.ptr.lhs.cast.i164.i = ptrtoint ptr %78 to i32
  %sub.ptr.rhs.cast.i165.i = ptrtoint ptr %80 to i32
  %sub.ptr.sub.i166.i = sub i32 %sub.ptr.lhs.cast.i164.i, %sub.ptr.rhs.cast.i165.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.ptr.sub.i166.i)
  %cmp1.i167.i = icmp sgt i32 %sub.ptr.sub.i166.i, 1
  br i1 %cmp1.i167.i, label %if.then2.i174.i, label %if.then.i168.i.bitstream_ensure_bits.exit177.i_crit_edge

if.then.i168.i.bitstream_ensure_bits.exit177.i_crit_edge: ; preds = %if.then.i168.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bitstream_ensure_bits.exit177.i

if.then2.i174.i:                                  ; preds = %if.then.i168.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i173.i = getelementptr i8, ptr %80, i32 2
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %add.ptr.i173.i, ptr %1, align 4
  br label %bitstream_ensure_bits.exit177.i

bitstream_ensure_bits.exit177.i:                  ; preds = %if.then2.i174.i, %if.then.i168.i.bitstream_ensure_bits.exit177.i_crit_edge, %sw.bb48.i.bitstream_ensure_bits.exit177.i_crit_edge
  %82 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %0, align 4
  %83 = ptrtoint ptr %is to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %is, align 4
  %84 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %2, align 4
  %86 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %1, align 4
  %sub.ptr.lhs.cast.i181.i = ptrtoint ptr %85 to i32
  %sub.ptr.rhs.cast.i182.i = ptrtoint ptr %87 to i32
  %sub.ptr.sub.i183.i = sub i32 %sub.ptr.lhs.cast.i181.i, %sub.ptr.rhs.cast.i182.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub.i183.i)
  %cmp.i184.i = icmp slt i32 %sub.ptr.sub.i183.i, 4
  br i1 %cmp.i184.i, label %bitstream_ensure_bits.exit177.i.bitstream_read_u32.exit.i_crit_edge, label %if.end.i186.i, !prof !13

bitstream_ensure_bits.exit177.i.bitstream_read_u32.exit.i_crit_edge: ; preds = %bitstream_ensure_bits.exit177.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bitstream_read_u32.exit.i

if.end.i186.i:                                    ; preds = %bitstream_ensure_bits.exit177.i
  call void @__sanitizer_cov_trace_pc() #7
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_loadN_noabort(i32 %88, i32 4)
  %89 = load i32, ptr %87, align 1
  %90 = call i32 @llvm.bswap.i32(i32 %89) #5
  %add.ptr.i185.i = getelementptr i8, ptr %87, i32 4
  %91 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %add.ptr.i185.i, ptr %1, align 4
  br label %bitstream_read_u32.exit.i

bitstream_read_u32.exit.i:                        ; preds = %if.end.i186.i, %bitstream_ensure_bits.exit177.i.bitstream_read_u32.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %90, %if.end.i186.i ], [ 0, %bitstream_ensure_bits.exit177.i.bitstream_read_u32.exit.i_crit_edge ]
  %92 = ptrtoint ptr %recent_offsets to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %retval.0.i.i, ptr %recent_offsets, align 4
  %93 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %1, align 4
  %sub.ptr.rhs.cast.i190.i = ptrtoint ptr %94 to i32
  %sub.ptr.sub.i191.i = sub i32 %sub.ptr.lhs.cast.i181.i, %sub.ptr.rhs.cast.i190.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub.i191.i)
  %cmp.i192.i = icmp slt i32 %sub.ptr.sub.i191.i, 4
  br i1 %cmp.i192.i, label %bitstream_read_u32.exit.i.bitstream_read_u32.exit196.i_crit_edge, label %if.end.i194.i, !prof !13

bitstream_read_u32.exit.i.bitstream_read_u32.exit196.i_crit_edge: ; preds = %bitstream_read_u32.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bitstream_read_u32.exit196.i

if.end.i194.i:                                    ; preds = %bitstream_read_u32.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_loadN_noabort(i32 %95, i32 4)
  %96 = load i32, ptr %94, align 1
  %97 = call i32 @llvm.bswap.i32(i32 %96) #5
  %add.ptr.i193.i = getelementptr i8, ptr %94, i32 4
  %98 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %add.ptr.i193.i, ptr %1, align 4
  br label %bitstream_read_u32.exit196.i

bitstream_read_u32.exit196.i:                     ; preds = %if.end.i194.i, %bitstream_read_u32.exit.i.bitstream_read_u32.exit196.i_crit_edge
  %retval.0.i195.i = phi i32 [ %97, %if.end.i194.i ], [ 0, %bitstream_read_u32.exit.i.bitstream_read_u32.exit196.i_crit_edge ]
  %99 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %retval.0.i195.i, ptr %arrayidx52.i, align 4
  %100 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %1, align 4
  %sub.ptr.rhs.cast.i200.i = ptrtoint ptr %101 to i32
  %sub.ptr.sub.i201.i = sub i32 %sub.ptr.lhs.cast.i181.i, %sub.ptr.rhs.cast.i200.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub.i201.i)
  %cmp.i202.i = icmp slt i32 %sub.ptr.sub.i201.i, 4
  br i1 %cmp.i202.i, label %bitstream_read_u32.exit196.i.bitstream_read_u32.exit206.i_crit_edge, label %if.end.i204.i, !prof !13

bitstream_read_u32.exit196.i.bitstream_read_u32.exit206.i_crit_edge: ; preds = %bitstream_read_u32.exit196.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bitstream_read_u32.exit206.i

if.end.i204.i:                                    ; preds = %bitstream_read_u32.exit196.i
  call void @__sanitizer_cov_trace_pc() #7
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_loadN_noabort(i32 %102, i32 4)
  %103 = load i32, ptr %101, align 1
  %104 = call i32 @llvm.bswap.i32(i32 %103) #5
  %add.ptr.i203.i = getelementptr i8, ptr %101, i32 4
  %105 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %add.ptr.i203.i, ptr %1, align 4
  br label %bitstream_read_u32.exit206.i

bitstream_read_u32.exit206.i:                     ; preds = %if.end.i204.i, %bitstream_read_u32.exit196.i.bitstream_read_u32.exit206.i_crit_edge
  %retval.0.i205.i = phi i32 [ %104, %if.end.i204.i ], [ 0, %bitstream_read_u32.exit196.i.bitstream_read_u32.exit206.i_crit_edge ]
  %106 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %retval.0.i205.i, ptr %arrayidx54.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp56.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %cmp56.i, label %bitstream_read_u32.exit206.i.cleanup29_crit_edge, label %lor.lhs.false.i

bitstream_read_u32.exit206.i.cleanup29_crit_edge: ; preds = %bitstream_read_u32.exit206.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup29

lor.lhs.false.i:                                  ; preds = %bitstream_read_u32.exit206.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i195.i)
  %cmp59.i = icmp eq i32 %retval.0.i195.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i205.i)
  %cmp63.i = icmp eq i32 %retval.0.i205.i, 0
  %or.cond.i = select i1 %cmp59.i, i1 true, i1 %cmp63.i
  br i1 %or.cond.i, label %lor.lhs.false.i.cleanup29_crit_edge, label %if.end.thread

lor.lhs.false.i.cleanup29_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup29

if.end:                                           ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %block_size.0.i)
  %cmp3 = icmp eq i32 %block_size.0.i, 0
  %sub.ptr.rhs.cast = ptrtoint ptr %out_next.0144 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast115, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_cmp4(i32 %block_size.0.i, i32 %sub.ptr.sub)
  %cmp4 = icmp ugt i32 %block_size.0.i, %sub.ptr.sub
  %or.cond = select i1 %cmp3, i1 true, i1 %cmp4
  br i1 %or.cond, label %if.end.cleanup29_crit_edge, label %if.end6

if.end.cleanup29_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup29

if.end.thread:                                    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %block_size.0.i)
  %cmp3114 = icmp eq i32 %block_size.0.i, 0
  %sub.ptr.rhs.cast116 = ptrtoint ptr %out_next.0144 to i32
  %sub.ptr.sub117 = sub i32 %sub.ptr.lhs.cast115, %sub.ptr.rhs.cast116
  call void @__sanitizer_cov_trace_cmp4(i32 %block_size.0.i, i32 %sub.ptr.sub117)
  %cmp4118 = icmp ugt i32 %block_size.0.i, %sub.ptr.sub117
  %or.cond119 = select i1 %cmp3114, i1 true, i1 %cmp4118
  br i1 %or.cond119, label %if.end.thread.cleanup29_crit_edge, label %if.end.thread.if.else_crit_edge

if.end.thread.if.else_crit_edge:                  ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.end.thread.cleanup29_crit_edge:                ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup29

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr.i.i.i)
  %cmp7.not = icmp eq i32 %shr.i.i.i, 3
  br i1 %cmp7.not, label %if.end6.if.else_crit_edge, label %if.then8

if.end6.if.else_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then8:                                         ; preds = %if.end6
  %add.ptr.i63 = getelementptr i8, ptr %out_next.0144, i32 %block_size.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr.i.i.i)
  %cmp.i64 = icmp eq i32 %shr.i.i.i, 2
  %sub.ptr.lhs.cast.i65 = ptrtoint ptr %add.ptr.i63 to i32
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.then8
  %out_next.addr.0.i = phi ptr [ %out_next.0144, %if.then8 ], [ %out_next.addr.1.ph.i, %do.cond.i.do.body.i_crit_edge ]
  %107 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %108)
  %cmp.i.i.i.i = icmp ult i32 %108, 16
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.body.i.bitstream_ensure_bits.exit.i.i.i_crit_edge

do.body.i.bitstream_ensure_bits.exit.i.i.i_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bitstream_ensure_bits.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %do.body.i
  %109 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %2, align 4
  %111 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %1, align 4
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %110 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %112 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.ptr.sub.i.i.i.i)
  %cmp1.i.i.i.i = icmp sgt i32 %sub.ptr.sub.i.i.i.i, 1
  br i1 %cmp1.i.i.i.i, label %if.then2.i.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge

if.then.i.i.i.i.if.end.i.i.i.i_crit_edge:         ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i.i.i

if.then2.i.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_loadN_noabort(i32 %113, i32 2)
  %114 = load i16, ptr %112, align 1
  %115 = call i16 @llvm.bswap.i16(i16 %114) #5
  %conv.i.i.i.i = zext i16 %115 to i32
  %sub.i.i.i.i66 = sub nuw nsw i32 16, %108
  %shl.i.i.i.i67 = shl nuw i32 %conv.i.i.i.i, %sub.i.i.i.i66
  %116 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %is, align 4
  %or.i.i.i.i = or i32 %shl.i.i.i.i67, %117
  store i32 %or.i.i.i.i, ptr %is, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %112, i32 2
  %118 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %add.ptr.i.i.i.i, ptr %1, align 4
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then2.i.i.i.i, %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge
  %add.i.i.i.i = add nuw nsw i32 %108, 16
  %119 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %add.i.i.i.i, ptr %0, align 4
  br label %bitstream_ensure_bits.exit.i.i.i

bitstream_ensure_bits.exit.i.i.i:                 ; preds = %if.end.i.i.i.i, %do.body.i.bitstream_ensure_bits.exit.i.i.i_crit_edge
  %120 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %is, align 4
  %shr.i.i.i.i = lshr i32 %121, 21
  %arrayidx.i.i.i = getelementptr i16, ptr %decompressor, i32 %shr.i.i.i.i
  %122 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %arrayidx.i.i.i, align 2
  %conv.i.i.i68 = zext i16 %123 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16384, i16 %123)
  %cmp.i.i.i69 = icmp ult i16 %123, -16384
  br i1 %cmp.i.i.i69, label %if.then.i.i.i71, label %if.end.i.i.i72

if.then.i.i.i71:                                  ; preds = %bitstream_ensure_bits.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %shr.i.i.i70 = lshr i32 %conv.i.i.i68, 11
  %shl.i21.i.i.i = shl i32 %121, %shr.i.i.i70
  %124 = ptrtoint ptr %is to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %shl.i21.i.i.i, ptr %is, align 4
  %125 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %0, align 4
  %sub.i23.i.i.i = sub i32 %126, %shr.i.i.i70
  store i32 %sub.i23.i.i.i, ptr %0, align 4
  %and.i.i.i = and i32 %conv.i.i.i68, 2047
  br label %read_mainsym.exit.i

if.end.i.i.i72:                                   ; preds = %bitstream_ensure_bits.exit.i.i.i
  %shl.i24.i.i.i = shl i32 %121, 11
  %127 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %0, align 4
  %sub.i26.i.i.i = add i32 %128, -11
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %if.end.i.i.i72
  %129 = phi i32 [ %sub.i26.i.i.i, %if.end.i.i.i72 ], [ %sub.i.i.i.i.i, %do.body.i.i.i.do.body.i.i.i_crit_edge ]
  %shl.i.i.i.i.i134 = phi i32 [ %shl.i24.i.i.i, %if.end.i.i.i72 ], [ %shl.i.i.i.i.i, %do.body.i.i.i.do.body.i.i.i_crit_edge ]
  %entry1.0.i.i.i = phi i32 [ %conv.i.i.i68, %if.end.i.i.i72 ], [ %conv6.i.i.i, %do.body.i.i.i.do.body.i.i.i_crit_edge ]
  %and3.i.i.i = and i32 %entry1.0.i.i.i, 16383
  %shr.i.i.i.i.i = lshr i32 %shl.i.i.i.i.i134, 31
  %shl.i.i.i.i.i = shl i32 %shl.i.i.i.i.i134, 1
  %sub.i.i.i.i.i = add i32 %129, -1
  %add.i.i.i73 = add nuw nsw i32 %shr.i.i.i.i.i, %and3.i.i.i
  %arrayidx5.i.i.i = getelementptr i16, ptr %decompressor, i32 %add.i.i.i73
  %130 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %arrayidx5.i.i.i, align 2
  %conv6.i.i.i = zext i16 %131 to i32
  %cmp7.i.i.i = icmp ugt i16 %131, -16385
  br i1 %cmp7.i.i.i, label %do.body.i.i.i.do.body.i.i.i_crit_edge, label %read_mainsym.exit.i.loopexit

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i.i

read_mainsym.exit.i.loopexit:                     ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv6.i.i.i.le = zext i16 %131 to i32
  %132 = ptrtoint ptr %is to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %shl.i.i.i.i.i, ptr %is, align 4
  %133 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %sub.i.i.i.i.i, ptr %0, align 4
  br label %read_mainsym.exit.i

read_mainsym.exit.i:                              ; preds = %read_mainsym.exit.i.loopexit, %if.then.i.i.i71
  %retval.0.i.i.i = phi i32 [ %and.i.i.i, %if.then.i.i.i71 ], [ %conv6.i.i.i.le, %read_mainsym.exit.i.loopexit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %retval.0.i.i.i)
  %cmp1.i = icmp ult i32 %retval.0.i.i.i, 256
  br i1 %cmp1.i, label %if.then.i, label %if.end.i75

if.then.i:                                        ; preds = %read_mainsym.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv3.i = trunc i32 %retval.0.i.i.i to i8
  %incdec.ptr.i74 = getelementptr i8, ptr %out_next.addr.0.i, i32 1
  %134 = ptrtoint ptr %out_next.addr.0.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %conv3.i, ptr %out_next.addr.0.i, align 1
  br label %do.cond.i

if.end.i75:                                       ; preds = %read_mainsym.exit.i
  %sub4.i = add nsw i32 %retval.0.i.i.i, -256
  %rem.i = and i32 %retval.0.i.i.i, 7
  %div101.i = lshr i32 %sub4.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %rem.i)
  %cmp5.i = icmp eq i32 %rem.i, 7
  br i1 %cmp5.i, label %if.then7.i, label %if.end.i75.if.end9.i_crit_edge

if.end.i75.if.end9.i_crit_edge:                   ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.end.i75
  %135 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %136)
  %cmp.i.i.i104.i = icmp ult i32 %136, 16
  br i1 %cmp.i.i.i104.i, label %if.then.i.i.i111.i, label %if.then7.i.bitstream_ensure_bits.exit.i.i124.i_crit_edge

if.then7.i.bitstream_ensure_bits.exit.i.i124.i_crit_edge: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bitstream_ensure_bits.exit.i.i124.i

if.then.i.i.i111.i:                               ; preds = %if.then7.i
  %137 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %2, align 4
  %139 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %1, align 4
  %sub.ptr.lhs.cast.i.i.i107.i = ptrtoint ptr %138 to i32
  %sub.ptr.rhs.cast.i.i.i108.i = ptrtoint ptr %140 to i32
  %sub.ptr.sub.i.i.i109.i = sub i32 %sub.ptr.lhs.cast.i.i.i107.i, %sub.ptr.rhs.cast.i.i.i108.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.ptr.sub.i.i.i109.i)
  %cmp1.i.i.i110.i = icmp sgt i32 %sub.ptr.sub.i.i.i109.i, 1
  br i1 %cmp1.i.i.i110.i, label %if.then2.i.i.i117.i, label %if.then.i.i.i111.i.if.end.i.i.i119.i_crit_edge

if.then.i.i.i111.i.if.end.i.i.i119.i_crit_edge:   ; preds = %if.then.i.i.i111.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i.i119.i

if.then2.i.i.i117.i:                              ; preds = %if.then.i.i.i111.i
  call void @__sanitizer_cov_trace_pc() #7
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_loadN_noabort(i32 %141, i32 2)
  %142 = load i16, ptr %140, align 1
  %143 = call i16 @llvm.bswap.i16(i16 %142) #5
  %conv.i.i.i112.i = zext i16 %143 to i32
  %sub.i.i.i113.i = sub nuw nsw i32 16, %136
  %shl.i.i.i114.i = shl nuw i32 %conv.i.i.i112.i, %sub.i.i.i113.i
  %144 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %is, align 4
  %or.i.i.i115.i = or i32 %shl.i.i.i114.i, %145
  store i32 %or.i.i.i115.i, ptr %is, align 4
  %add.ptr.i.i.i116.i = getelementptr i8, ptr %140, i32 2
  %146 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %add.ptr.i.i.i116.i, ptr %1, align 4
  br label %if.end.i.i.i119.i

if.end.i.i.i119.i:                                ; preds = %if.then2.i.i.i117.i, %if.then.i.i.i111.i.if.end.i.i.i119.i_crit_edge
  %add.i.i.i118.i = add nuw nsw i32 %136, 16
  %147 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %add.i.i.i118.i, ptr %0, align 4
  br label %bitstream_ensure_bits.exit.i.i124.i

bitstream_ensure_bits.exit.i.i124.i:              ; preds = %if.end.i.i.i119.i, %if.then7.i.bitstream_ensure_bits.exit.i.i124.i_crit_edge
  %148 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %is, align 4
  %shr.i.i.i120.i = lshr i32 %149, 22
  %arrayidx.i.i121.i = getelementptr i16, ptr %lencode_decode_table.i, i32 %shr.i.i.i120.i
  %150 = ptrtoint ptr %arrayidx.i.i121.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %arrayidx.i.i121.i, align 2
  %conv.i.i122.i = zext i16 %151 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16384, i16 %151)
  %cmp.i.i123.i = icmp ult i16 %151, -16384
  br i1 %cmp.i.i123.i, label %if.then.i.i129.i, label %if.end.i.i132.i76

if.then.i.i129.i:                                 ; preds = %bitstream_ensure_bits.exit.i.i124.i
  call void @__sanitizer_cov_trace_pc() #7
  %shr.i.i125.i = lshr i32 %conv.i.i122.i, 11
  %shl.i21.i.i126.i = shl i32 %149, %shr.i.i125.i
  %152 = ptrtoint ptr %is to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %shl.i21.i.i126.i, ptr %is, align 4
  %153 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %0, align 4
  %sub.i23.i.i127.i = sub i32 %154, %shr.i.i125.i
  store i32 %sub.i23.i.i127.i, ptr %0, align 4
  %and.i.i128.i = and i32 %conv.i.i122.i, 2047
  br label %read_lensym.exit.i

if.end.i.i132.i76:                                ; preds = %bitstream_ensure_bits.exit.i.i124.i
  %shl.i24.i.i130.i = shl i32 %149, 10
  %155 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %0, align 4
  %sub.i26.i.i131.i = add i32 %156, -10
  br label %do.body.i.i142.i

do.body.i.i142.i:                                 ; preds = %do.body.i.i142.i.do.body.i.i142.i_crit_edge, %if.end.i.i132.i76
  %157 = phi i32 [ %sub.i26.i.i131.i, %if.end.i.i132.i76 ], [ %sub.i.i.i.i137.i, %do.body.i.i142.i.do.body.i.i142.i_crit_edge ]
  %shl.i.i.i.i136.i137 = phi i32 [ %shl.i24.i.i130.i, %if.end.i.i132.i76 ], [ %shl.i.i.i.i136.i, %do.body.i.i142.i.do.body.i.i142.i_crit_edge ]
  %entry1.0.i.i133.i = phi i32 [ %conv.i.i122.i, %if.end.i.i132.i76 ], [ %conv6.i.i140.i, %do.body.i.i142.i.do.body.i.i142.i_crit_edge ]
  %and3.i.i134.i = and i32 %entry1.0.i.i133.i, 16383
  %shr.i.i.i.i135.i = lshr i32 %shl.i.i.i.i136.i137, 31
  %shl.i.i.i.i136.i = shl i32 %shl.i.i.i.i136.i137, 1
  %sub.i.i.i.i137.i = add i32 %157, -1
  %add.i.i138.i = add nuw nsw i32 %shr.i.i.i.i135.i, %and3.i.i134.i
  %arrayidx5.i.i139.i = getelementptr i16, ptr %lencode_decode_table.i, i32 %add.i.i138.i
  %158 = ptrtoint ptr %arrayidx5.i.i139.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %arrayidx5.i.i139.i, align 2
  %conv6.i.i140.i = zext i16 %159 to i32
  %cmp7.i.i141.i = icmp ugt i16 %159, -16385
  br i1 %cmp7.i.i141.i, label %do.body.i.i142.i.do.body.i.i142.i_crit_edge, label %read_lensym.exit.i.loopexit

do.body.i.i142.i.do.body.i.i142.i_crit_edge:      ; preds = %do.body.i.i142.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i142.i

read_lensym.exit.i.loopexit:                      ; preds = %do.body.i.i142.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv6.i.i140.i.le = zext i16 %159 to i32
  %160 = ptrtoint ptr %is to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %shl.i.i.i.i136.i, ptr %is, align 4
  %161 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %sub.i.i.i.i137.i, ptr %0, align 4
  br label %read_lensym.exit.i

read_lensym.exit.i:                               ; preds = %read_lensym.exit.i.loopexit, %if.then.i.i129.i
  %retval.0.i.i145.i = phi i32 [ %and.i.i128.i, %if.then.i.i129.i ], [ %conv6.i.i140.i.le, %read_lensym.exit.i.loopexit ]
  %add.i = add nuw nsw i32 %retval.0.i.i145.i, 7
  br label %if.end9.i

if.end9.i:                                        ; preds = %read_lensym.exit.i, %if.end.i75.if.end9.i_crit_edge
  %match_len.0.i = phi i32 [ %add.i, %read_lensym.exit.i ], [ %rem.i, %if.end.i75.if.end9.i_crit_edge ]
  %add10.i = add nuw nsw i32 %match_len.0.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %sub4.i)
  %cmp11.i = icmp ult i32 %sub4.i, 24
  br i1 %cmp11.i, label %if.then13.i, label %if.else.i78

if.then13.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i77 = getelementptr i32, ptr %recent_offsets, i32 %div101.i
  %162 = ptrtoint ptr %arrayidx.i77 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx.i77, align 4
  br label %if.end38.i91

if.else.i78:                                      ; preds = %if.end9.i
  %arrayidx17.i = getelementptr [30 x i8], ptr @lzx_extra_offset_bits, i32 0, i32 %div101.i
  %164 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %arrayidx17.i, align 1
  %conv18.i = zext i8 %165 to i32
  %arrayidx19.i = getelementptr [31 x i32], ptr @lzx_offset_slot_base, i32 0, i32 %div101.i
  %166 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx19.i, align 4
  %168 = add nsw i32 %div101.i, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %168)
  %cmp20102.i = icmp ult i32 %168, 22
  %cmp20.i = select i1 %cmp.i64, i1 %cmp20102.i, i1 false
  br i1 %cmp20.i, label %if.then22.i, label %if.else28.i

if.then22.i:                                      ; preds = %if.else.i78
  %sub23.i = add nsw i32 %conv18.i, -3
  %169 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %170, i32 %sub23.i)
  %cmp.i.i146.i = icmp ult i32 %170, %sub23.i
  br i1 %cmp.i.i146.i, label %if.then.i.i147.i, label %if.then22.i.bitstream_read_bits.exit.i87_crit_edge

if.then22.i.bitstream_read_bits.exit.i87_crit_edge: ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bitstream_read_bits.exit.i87

if.then.i.i147.i:                                 ; preds = %if.then22.i
  %171 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %2, align 4
  %173 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %1, align 4
  %sub.ptr.lhs.cast.i.i.i79 = ptrtoint ptr %172 to i32
  %sub.ptr.rhs.cast.i.i.i80 = ptrtoint ptr %174 to i32
  %sub.ptr.sub.i.i.i81 = sub i32 %sub.ptr.lhs.cast.i.i.i79, %sub.ptr.rhs.cast.i.i.i80
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.ptr.sub.i.i.i81)
  %cmp1.i.i.i82 = icmp sgt i32 %sub.ptr.sub.i.i.i81, 1
  br i1 %cmp1.i.i.i82, label %if.then2.i.i.i85, label %if.then.i.i147.i.if.end.i.i150.i_crit_edge

if.then.i.i147.i.if.end.i.i150.i_crit_edge:       ; preds = %if.then.i.i147.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i150.i

if.then2.i.i.i85:                                 ; preds = %if.then.i.i147.i
  call void @__sanitizer_cov_trace_pc() #7
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_loadN_noabort(i32 %175, i32 2)
  %176 = load i16, ptr %174, align 1
  %177 = call i16 @llvm.bswap.i16(i16 %176) #5
  %conv.i.i148.i = zext i16 %177 to i32
  %sub.i.i.i = sub i32 16, %170
  %shl.i.i.i = shl i32 %conv.i.i148.i, %sub.i.i.i
  %178 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %is, align 4
  %or.i.i.i83 = or i32 %shl.i.i.i, %179
  store i32 %or.i.i.i83, ptr %is, align 4
  %add.ptr.i.i.i84 = getelementptr i8, ptr %174, i32 2
  %180 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %add.ptr.i.i.i84, ptr %1, align 4
  br label %if.end.i.i150.i

if.end.i.i150.i:                                  ; preds = %if.then2.i.i.i85, %if.then.i.i147.i.if.end.i.i150.i_crit_edge
  %add.i.i149.i = add i32 %170, 16
  %181 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %add.i.i149.i, ptr %0, align 4
  br label %bitstream_read_bits.exit.i87

bitstream_read_bits.exit.i87:                     ; preds = %if.end.i.i150.i, %if.then22.i.bitstream_read_bits.exit.i87_crit_edge
  %182 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %is, align 4
  %shr.i.i.i151.i = lshr i32 %183, 1
  %sub1.i.i.i.i = sub nsw i32 34, %conv18.i
  %shr2.i.i.i.i = lshr i32 %shr.i.i.i151.i, %sub1.i.i.i.i
  %shl.i.i.i152.i = shl i32 %183, %sub23.i
  store i32 %shl.i.i.i152.i, ptr %is, align 4
  %184 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %0, align 4
  %sub.i.i.i153.i = sub i32 %185, %sub23.i
  store i32 %sub.i.i.i153.i, ptr %0, align 4
  %shl.i86 = shl i32 %shr2.i.i.i.i, 3
  %add25.i = add i32 %shl.i86, %167
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub.i.i.i153.i)
  %cmp.i.i.i155.i = icmp ult i32 %sub.i.i.i153.i, 7
  br i1 %cmp.i.i.i155.i, label %if.then.i.i.i162.i, label %bitstream_read_bits.exit.i87.bitstream_ensure_bits.exit.i.i175.i_crit_edge

bitstream_read_bits.exit.i87.bitstream_ensure_bits.exit.i.i175.i_crit_edge: ; preds = %bitstream_read_bits.exit.i87
  call void @__sanitizer_cov_trace_pc() #7
  br label %bitstream_ensure_bits.exit.i.i175.i

if.then.i.i.i162.i:                               ; preds = %bitstream_read_bits.exit.i87
  %186 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %2, align 4
  %188 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %1, align 4
  %sub.ptr.lhs.cast.i.i.i158.i = ptrtoint ptr %187 to i32
  %sub.ptr.rhs.cast.i.i.i159.i = ptrtoint ptr %189 to i32
  %sub.ptr.sub.i.i.i160.i = sub i32 %sub.ptr.lhs.cast.i.i.i158.i, %sub.ptr.rhs.cast.i.i.i159.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.ptr.sub.i.i.i160.i)
  %cmp1.i.i.i161.i = icmp sgt i32 %sub.ptr.sub.i.i.i160.i, 1
  br i1 %cmp1.i.i.i161.i, label %if.then2.i.i.i168.i, label %if.then.i.i.i162.i.if.end.i.i.i170.i_crit_edge

if.then.i.i.i162.i.if.end.i.i.i170.i_crit_edge:   ; preds = %if.then.i.i.i162.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i.i170.i

if.then2.i.i.i168.i:                              ; preds = %if.then.i.i.i162.i
  call void @__sanitizer_cov_trace_pc() #7
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_loadN_noabort(i32 %190, i32 2)
  %191 = load i16, ptr %189, align 1
  %192 = call i16 @llvm.bswap.i16(i16 %191) #5
  %conv.i.i.i163.i = zext i16 %192 to i32
  %sub.i.i.i164.i = sub nuw nsw i32 16, %sub.i.i.i153.i
  %shl.i.i.i165.i = shl nuw i32 %conv.i.i.i163.i, %sub.i.i.i164.i
  %or.i.i.i166.i = or i32 %shl.i.i.i165.i, %shl.i.i.i152.i
  %193 = ptrtoint ptr %is to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %or.i.i.i166.i, ptr %is, align 4
  %add.ptr.i.i.i167.i = getelementptr i8, ptr %189, i32 2
  %194 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %add.ptr.i.i.i167.i, ptr %1, align 4
  br label %if.end.i.i.i170.i

if.end.i.i.i170.i:                                ; preds = %if.then2.i.i.i168.i, %if.then.i.i.i162.i.if.end.i.i.i170.i_crit_edge
  %add.i.i.i169.i = add nuw nsw i32 %sub.i.i.i153.i, 16
  %195 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %add.i.i.i169.i, ptr %0, align 4
  br label %bitstream_ensure_bits.exit.i.i175.i

bitstream_ensure_bits.exit.i.i175.i:              ; preds = %if.end.i.i.i170.i, %bitstream_read_bits.exit.i87.bitstream_ensure_bits.exit.i.i175.i_crit_edge
  %196 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %is, align 4
  %shr.i.i.i171.i = lshr i32 %197, 25
  %arrayidx.i.i172.i = getelementptr i16, ptr %alignedcode_decode_table.i, i32 %shr.i.i.i171.i
  %198 = ptrtoint ptr %arrayidx.i.i172.i to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %arrayidx.i.i172.i, align 2
  %conv.i.i173.i = zext i16 %199 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16384, i16 %199)
  %cmp.i.i174.i = icmp ult i16 %199, -16384
  br i1 %cmp.i.i174.i, label %if.then.i.i180.i, label %if.end.i.i183.i

if.then.i.i180.i:                                 ; preds = %bitstream_ensure_bits.exit.i.i175.i
  call void @__sanitizer_cov_trace_pc() #7
  %shr.i.i176.i = lshr i32 %conv.i.i173.i, 11
  %shl.i21.i.i177.i = shl i32 %197, %shr.i.i176.i
  %200 = ptrtoint ptr %is to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %shl.i21.i.i177.i, ptr %is, align 4
  %201 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %0, align 4
  %sub.i23.i.i178.i = sub i32 %202, %shr.i.i176.i
  store i32 %sub.i23.i.i178.i, ptr %0, align 4
  %and.i.i179.i = and i32 %conv.i.i173.i, 2047
  br label %read_alignedsym.exit.i

if.end.i.i183.i:                                  ; preds = %bitstream_ensure_bits.exit.i.i175.i
  %shl.i24.i.i181.i = shl i32 %197, 7
  %203 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %0, align 4
  %sub.i26.i.i182.i = add i32 %204, -7
  br label %do.body.i.i193.i

do.body.i.i193.i:                                 ; preds = %do.body.i.i193.i.do.body.i.i193.i_crit_edge, %if.end.i.i183.i
  %205 = phi i32 [ %sub.i26.i.i182.i, %if.end.i.i183.i ], [ %sub.i.i.i.i188.i, %do.body.i.i193.i.do.body.i.i193.i_crit_edge ]
  %shl.i.i.i.i187.i141 = phi i32 [ %shl.i24.i.i181.i, %if.end.i.i183.i ], [ %shl.i.i.i.i187.i, %do.body.i.i193.i.do.body.i.i193.i_crit_edge ]
  %entry1.0.i.i184.i = phi i32 [ %conv.i.i173.i, %if.end.i.i183.i ], [ %conv6.i.i191.i, %do.body.i.i193.i.do.body.i.i193.i_crit_edge ]
  %and3.i.i185.i = and i32 %entry1.0.i.i184.i, 16383
  %shr.i.i.i.i186.i = lshr i32 %shl.i.i.i.i187.i141, 31
  %shl.i.i.i.i187.i = shl i32 %shl.i.i.i.i187.i141, 1
  %sub.i.i.i.i188.i = add i32 %205, -1
  %add.i.i189.i = add nuw nsw i32 %shr.i.i.i.i186.i, %and3.i.i185.i
  %arrayidx5.i.i190.i = getelementptr i16, ptr %alignedcode_decode_table.i, i32 %add.i.i189.i
  %206 = ptrtoint ptr %arrayidx5.i.i190.i to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %arrayidx5.i.i190.i, align 2
  %conv6.i.i191.i = zext i16 %207 to i32
  %cmp7.i.i192.i = icmp ugt i16 %207, -16385
  br i1 %cmp7.i.i192.i, label %do.body.i.i193.i.do.body.i.i193.i_crit_edge, label %read_alignedsym.exit.i.loopexit

do.body.i.i193.i.do.body.i.i193.i_crit_edge:      ; preds = %do.body.i.i193.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i193.i

read_alignedsym.exit.i.loopexit:                  ; preds = %do.body.i.i193.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv6.i.i191.i.le = zext i16 %207 to i32
  %208 = ptrtoint ptr %is to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %shl.i.i.i.i187.i, ptr %is, align 4
  %209 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %sub.i.i.i.i188.i, ptr %0, align 4
  br label %read_alignedsym.exit.i

read_alignedsym.exit.i:                           ; preds = %read_alignedsym.exit.i.loopexit, %if.then.i.i180.i
  %retval.0.i.i196.i = phi i32 [ %and.i.i179.i, %if.then.i.i180.i ], [ %conv6.i.i191.i.le, %read_alignedsym.exit.i.loopexit ]
  %add27.i = add i32 %add25.i, %retval.0.i.i196.i
  br label %if.end31.i

if.else28.i:                                      ; preds = %if.else.i78
  %210 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %211, i32 %conv18.i)
  %cmp.i.i198.i = icmp ult i32 %211, %conv18.i
  br i1 %cmp.i.i198.i, label %if.then.i.i205.i, label %if.else28.i.bitstream_read_bits.exit219.i_crit_edge

if.else28.i.bitstream_read_bits.exit219.i_crit_edge: ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bitstream_read_bits.exit219.i

if.then.i.i205.i:                                 ; preds = %if.else28.i
  %212 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %2, align 4
  %214 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %1, align 4
  %sub.ptr.lhs.cast.i.i201.i = ptrtoint ptr %213 to i32
  %sub.ptr.rhs.cast.i.i202.i = ptrtoint ptr %215 to i32
  %sub.ptr.sub.i.i203.i = sub i32 %sub.ptr.lhs.cast.i.i201.i, %sub.ptr.rhs.cast.i.i202.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.ptr.sub.i.i203.i)
  %cmp1.i.i204.i = icmp sgt i32 %sub.ptr.sub.i.i203.i, 1
  br i1 %cmp1.i.i204.i, label %if.then2.i.i211.i, label %if.then.i.i205.i.if.end.i.i213.i_crit_edge

if.then.i.i205.i.if.end.i.i213.i_crit_edge:       ; preds = %if.then.i.i205.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i213.i

if.then2.i.i211.i:                                ; preds = %if.then.i.i205.i
  call void @__sanitizer_cov_trace_pc() #7
  %216 = ptrtoint ptr %215 to i32
  call void @__asan_loadN_noabort(i32 %216, i32 2)
  %217 = load i16, ptr %215, align 1
  %218 = call i16 @llvm.bswap.i16(i16 %217) #5
  %conv.i.i206.i = zext i16 %218 to i32
  %sub.i.i207.i = sub i32 16, %211
  %shl.i.i208.i = shl i32 %conv.i.i206.i, %sub.i.i207.i
  %219 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %is, align 4
  %or.i.i209.i = or i32 %shl.i.i208.i, %220
  store i32 %or.i.i209.i, ptr %is, align 4
  %add.ptr.i.i210.i = getelementptr i8, ptr %215, i32 2
  %221 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %add.ptr.i.i210.i, ptr %1, align 4
  br label %if.end.i.i213.i

if.end.i.i213.i:                                  ; preds = %if.then2.i.i211.i, %if.then.i.i205.i.if.end.i.i213.i_crit_edge
  %add.i.i212.i = add i32 %211, 16
  %222 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %add.i.i212.i, ptr %0, align 4
  br label %bitstream_read_bits.exit219.i

bitstream_read_bits.exit219.i:                    ; preds = %if.end.i.i213.i, %if.else28.i.bitstream_read_bits.exit219.i_crit_edge
  %223 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %is, align 4
  %shr.i.i.i214.i = lshr i32 %224, 1
  %sub1.i.i.i215.i = sub nsw i32 31, %conv18.i
  %shr2.i.i.i216.i = lshr i32 %shr.i.i.i214.i, %sub1.i.i.i215.i
  %shl.i.i.i217.i = shl i32 %224, %conv18.i
  store i32 %shl.i.i.i217.i, ptr %is, align 4
  %225 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %0, align 4
  %sub.i.i.i218.i = sub i32 %226, %conv18.i
  store i32 %sub.i.i.i218.i, ptr %0, align 4
  %add30.i = add i32 %shr2.i.i.i216.i, %167
  br label %if.end31.i

if.end31.i:                                       ; preds = %bitstream_read_bits.exit219.i, %read_alignedsym.exit.i
  %match_offset.0.i = phi i32 [ %add27.i, %read_alignedsym.exit.i ], [ %add30.i, %bitstream_read_bits.exit219.i ]
  %sub32.i = add i32 %match_offset.0.i, -2
  %227 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %arrayidx52.i, align 4
  %229 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %228, ptr %arrayidx54.i, align 4
  br label %if.end38.i91

if.end38.i91:                                     ; preds = %if.end31.i, %if.then13.i
  %arrayidx33.sink.i = phi ptr [ %arrayidx52.i, %if.end31.i ], [ %arrayidx.i77, %if.then13.i ]
  %storemerge.i = phi i32 [ %sub32.i, %if.end31.i ], [ %163, %if.then13.i ]
  %230 = ptrtoint ptr %recent_offsets to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %recent_offsets, align 4
  %232 = ptrtoint ptr %arrayidx33.sink.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %231, ptr %arrayidx33.sink.i, align 4
  store i32 %storemerge.i, ptr %recent_offsets, align 4
  %sub.ptr.rhs.cast.i88 = ptrtoint ptr %out_next.addr.0.i to i32
  %sub.ptr.sub.i89 = sub i32 %sub.ptr.lhs.cast.i65, %sub.ptr.rhs.cast.i88
  call void @__sanitizer_cov_trace_cmp4(i32 %add10.i, i32 %sub.ptr.sub.i89)
  %cmp39.i = icmp ugt i32 %add10.i, %sub.ptr.sub.i89
  %sub.ptr.sub45.i = sub i32 %sub.ptr.rhs.cast.i88, %sub.ptr.rhs.cast44.i
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge.i, i32 %sub.ptr.sub45.i)
  %cmp46.i = icmp ugt i32 %storemerge.i, %sub.ptr.sub45.i
  %or.cond.i90 = select i1 %cmp39.i, i1 true, i1 %cmp46.i
  br i1 %or.cond.i90, label %if.end38.i91.cleanup29_crit_edge, label %if.end49.i

if.end38.i91.cleanup29_crit_edge:                 ; preds = %if.end38.i91
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup29

if.end49.i:                                       ; preds = %if.end38.i91
  %idx.neg.i.i = sub i32 0, %storemerge.i
  %add.ptr.i.i92 = getelementptr i8, ptr %out_next.addr.0.i, i32 %idx.neg.i.i
  %233 = ptrtoint ptr %add.ptr.i.i92 to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %add.ptr.i.i92, align 1
  %incdec.ptr1.i.i = getelementptr i8, ptr %out_next.addr.0.i, i32 1
  %235 = ptrtoint ptr %out_next.addr.0.i to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 %234, ptr %out_next.addr.0.i, align 1
  %dec.i.i = add nsw i32 %match_len.0.i, 1
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.end49.i
  %length.addr.2.i.i = phi i32 [ %dec.i.i, %if.end49.i ], [ %dec10.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %dst.addr.2.i.i = phi ptr [ %incdec.ptr1.i.i, %if.end49.i ], [ %incdec.ptr9.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %add.ptr.pn.i.i = phi ptr [ %add.ptr.i.i92, %if.end49.i ], [ %src.2.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %src.2.i.i = getelementptr i8, ptr %add.ptr.pn.i.i, i32 1
  %236 = ptrtoint ptr %src.2.i.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %src.2.i.i, align 1
  %incdec.ptr9.i.i = getelementptr i8, ptr %dst.addr.2.i.i, i32 1
  %238 = ptrtoint ptr %dst.addr.2.i.i to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 %237, ptr %dst.addr.2.i.i, align 1
  %dec10.i.i = add nsw i32 %length.addr.2.i.i, -1
  %tobool.not.i.i = icmp eq i32 %dec10.i.i, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.do.cond.i_crit_edge, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

do.body.i.i.do.cond.i_crit_edge:                  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.i

do.cond.i:                                        ; preds = %do.body.i.i.do.cond.i_crit_edge, %if.then.i
  %out_next.addr.1.ph.i = phi ptr [ %incdec.ptr.i74, %if.then.i ], [ %incdec.ptr9.i.i, %do.body.i.i.do.cond.i_crit_edge ]
  %cmp55.not.i = icmp eq ptr %out_next.addr.1.ph.i, %add.ptr.i63
  br i1 %cmp55.not.i, label %if.end13, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

if.end13:                                         ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  %239 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %arrayidx, align 2
  %conv = zext i8 %240 to i32
  %or = or i32 %e8_status.0146, %conv
  br label %cleanup

if.else:                                          ; preds = %if.end6.if.else_crit_edge, %if.end.thread.if.else_crit_edge
  %241 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %2, align 4
  %243 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %1, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %242 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %244 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %block_size.0.i)
  %cmp.i = icmp ult i32 %sub.ptr.sub.i, %block_size.0.i
  br i1 %cmp.i, label %if.else.cleanup29_crit_edge, label %bitstream_read_bytes.exit

if.else.cleanup29_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup29

bitstream_read_bytes.exit:                        ; preds = %if.else
  %245 = call ptr @memcpy(ptr %out_next.0144, ptr %244, i32 %block_size.0.i)
  %246 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %1, align 4
  %add.ptr.i55 = getelementptr i8, ptr %247, i32 %block_size.0.i
  store ptr %add.ptr.i55, ptr %1, align 4
  %add.ptr3.i = getelementptr i8, ptr %out_next.0144, i32 %block_size.0.i
  %tobool17.not = icmp eq ptr %add.ptr3.i, null
  br i1 %tobool17.not, label %bitstream_read_bytes.exit.cleanup29_crit_edge, label %if.end19

bitstream_read_bytes.exit.cleanup29_crit_edge:    ; preds = %bitstream_read_bytes.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup29

if.end19:                                         ; preds = %bitstream_read_bytes.exit
  %and = and i32 %block_size.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %if.end19.cleanup_crit_edge, label %if.then21

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then21:                                        ; preds = %if.end19
  %248 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %2, align 4
  %250 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %1, align 4
  %cmp.i58 = icmp eq ptr %249, %251
  br i1 %cmp.i58, label %if.then21.cleanup_crit_edge, label %if.end.i59, !prof !13

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i59:                                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr.i = getelementptr i8, ptr %251, i32 1
  %252 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr %incdec.ptr.i, ptr %1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i59, %if.then21.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end13
  %out_next.2 = phi ptr [ %add.ptr.i63, %if.end13 ], [ %add.ptr3.i, %if.end19.cleanup_crit_edge ], [ %add.ptr3.i, %if.then21.cleanup_crit_edge ], [ %add.ptr3.i, %if.end.i59 ]
  %e8_status.2 = phi i32 [ %or, %if.end13 ], [ 1, %if.end19.cleanup_crit_edge ], [ 1, %if.then21.cleanup_crit_edge ], [ 1, %if.end.i59 ]
  %cmp.not = icmp eq ptr %out_next.2, %add.ptr
  br i1 %cmp.not, label %while.end, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %e8_status.2)
  %tobool26.not = icmp eq i32 %e8_status.2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %uncompressed_size)
  %cmp.i93 = icmp ult i32 %uncompressed_size, 11
  %or.cond130 = or i1 %cmp.i93, %tobool26.not
  br i1 %or.cond130, label %while.end.cleanup29_crit_edge, label %if.end.i96

while.end.cleanup29_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup29

if.end.i96:                                       ; preds = %while.end
  %sub.i = add i32 %uncompressed_size, -6
  %arrayidx.i94 = getelementptr i8, ptr %uncompressed_data, i32 %sub.i
  %253 = ptrtoint ptr %arrayidx.i94 to i32
  call void @__asan_load1_noabort(i32 %253)
  %saved_bytes.sroa.0.0.copyload.i = load i8, ptr %arrayidx.i94, align 1
  %saved_bytes.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i94, i32 1
  %254 = ptrtoint ptr %saved_bytes.sroa.5.0..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %254)
  %saved_bytes.sroa.5.0.copyload.i = load i8, ptr %saved_bytes.sroa.5.0..sroa_idx.i, align 1
  %saved_bytes.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i94, i32 2
  %255 = ptrtoint ptr %saved_bytes.sroa.6.0..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %255)
  %saved_bytes.sroa.6.0.copyload.i = load i8, ptr %saved_bytes.sroa.6.0..sroa_idx.i, align 1
  %saved_bytes.sroa.7.0..sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i94, i32 3
  %256 = ptrtoint ptr %saved_bytes.sroa.7.0..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %saved_bytes.sroa.7.0.copyload.i = load i8, ptr %saved_bytes.sroa.7.0..sroa_idx.i, align 1
  %saved_bytes.sroa.8.0..sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i94, i32 4
  %257 = ptrtoint ptr %saved_bytes.sroa.8.0..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %257)
  %saved_bytes.sroa.8.0.copyload.i = load i8, ptr %saved_bytes.sroa.8.0..sroa_idx.i, align 1
  %saved_bytes.sroa.9.0..sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i94, i32 5
  %258 = ptrtoint ptr %saved_bytes.sroa.9.0..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %saved_bytes.sroa.9.0.copyload.i = load i8, ptr %saved_bytes.sroa.9.0..sroa_idx.i, align 1
  %259 = call ptr @memset(ptr %arrayidx.i94, i32 232, i32 6)
  %sub.ptr.rhs.cast.i95 = ptrtoint ptr %uncompressed_data to i32
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.backedge, %if.end.i96
  %p.1.i = phi ptr [ %uncompressed_data, %if.end.i96 ], [ %p.1.i.be, %while.cond.i.backedge ]
  %260 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %p.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -24, i8 %261)
  %cmp1.not.i = icmp eq i8 %261, -24
  %incdec.ptr.i97 = getelementptr i8, ptr %p.1.i, i32 1
  br i1 %cmp1.not.i, label %while.end.i, label %while.cond.i.while.cond.i.backedge_crit_edge

while.cond.i.while.cond.i.backedge_crit_edge:     ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i.backedge

while.cond.i.backedge:                            ; preds = %undo_e8_translation.exit.i, %while.cond.i.while.cond.i.backedge_crit_edge
  %p.1.i.be = phi ptr [ %incdec.ptr.i97, %while.cond.i.while.cond.i.backedge_crit_edge ], [ %add.ptr7.i, %undo_e8_translation.exit.i ]
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  %cmp3.not.i = icmp ult ptr %p.1.i, %arrayidx.i94
  br i1 %cmp3.not.i, label %if.end6.i, label %for.end.i106

if.end6.i:                                        ; preds = %while.end.i
  %sub.ptr.lhs.cast.i98 = ptrtoint ptr %p.1.i to i32
  %sub.ptr.sub.i99 = sub i32 %sub.ptr.lhs.cast.i98, %sub.ptr.rhs.cast.i95
  %262 = ptrtoint ptr %incdec.ptr.i97 to i32
  call void @__asan_loadN_noabort(i32 %262, i32 4)
  %263 = load i32, ptr %incdec.ptr.i97, align 1
  %264 = call i32 @llvm.bswap.i32(i32 %263) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %264)
  %cmp.i.i100 = icmp sgt i32 %264, -1
  br i1 %cmp.i.i100, label %if.then.i.i102, label %if.else.i.i

if.then.i.i102:                                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12000000, i32 %264)
  %cmp1.i.i101 = icmp ult i32 %264, 12000000
  br i1 %cmp1.i.i101, label %if.then2.i.i104, label %if.then.i.i102.undo_e8_translation.exit.i_crit_edge

if.then.i.i102.undo_e8_translation.exit.i_crit_edge: ; preds = %if.then.i.i102
  call void @__sanitizer_cov_trace_pc() #7
  br label %undo_e8_translation.exit.i

if.then2.i.i104:                                  ; preds = %if.then.i.i102
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i103 = sub i32 %264, %sub.ptr.sub.i99
  br label %if.end7.sink.split.i.i

if.else.i.i:                                      ; preds = %if.end6.i
  %sub3.i.i = sub i32 0, %sub.ptr.sub.i99
  call void @__sanitizer_cov_trace_cmp4(i32 %264, i32 %sub3.i.i)
  %cmp4.not.i.i = icmp slt i32 %264, %sub3.i.i
  br i1 %cmp4.not.i.i, label %if.else.i.i.undo_e8_translation.exit.i_crit_edge, label %if.then5.i.i

if.else.i.i.undo_e8_translation.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %undo_e8_translation.exit.i

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.i.i105 = add nsw i32 %264, 12000000
  br label %if.end7.sink.split.i.i

if.end7.sink.split.i.i:                           ; preds = %if.then5.i.i, %if.then2.i.i104
  %add.sink.i.i = phi i32 [ %add.i.i105, %if.then5.i.i ], [ %sub.i.i103, %if.then2.i.i104 ]
  %265 = call i32 @llvm.bswap.i32(i32 %add.sink.i.i) #5
  %266 = ptrtoint ptr %incdec.ptr.i97 to i32
  call void @__asan_storeN_noabort(i32 %266, i32 4)
  store i32 %265, ptr %incdec.ptr.i97, align 1
  br label %undo_e8_translation.exit.i

undo_e8_translation.exit.i:                       ; preds = %if.end7.sink.split.i.i, %if.else.i.i.undo_e8_translation.exit.i_crit_edge, %if.then.i.i102.undo_e8_translation.exit.i_crit_edge
  %add.ptr7.i = getelementptr i8, ptr %p.1.i, i32 5
  br label %while.cond.i.backedge

for.end.i106:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %267 = ptrtoint ptr %arrayidx.i94 to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 %saved_bytes.sroa.0.0.copyload.i, ptr %arrayidx.i94, align 1
  %268 = ptrtoint ptr %saved_bytes.sroa.5.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 %saved_bytes.sroa.5.0.copyload.i, ptr %saved_bytes.sroa.5.0..sroa_idx.i, align 1
  %269 = ptrtoint ptr %saved_bytes.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %269)
  store i8 %saved_bytes.sroa.6.0.copyload.i, ptr %saved_bytes.sroa.6.0..sroa_idx.i, align 1
  %270 = ptrtoint ptr %saved_bytes.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 %saved_bytes.sroa.7.0.copyload.i, ptr %saved_bytes.sroa.7.0..sroa_idx.i, align 1
  %271 = ptrtoint ptr %saved_bytes.sroa.8.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 %saved_bytes.sroa.8.0.copyload.i, ptr %saved_bytes.sroa.8.0..sroa_idx.i, align 1
  %272 = ptrtoint ptr %saved_bytes.sroa.9.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 %saved_bytes.sroa.9.0.copyload.i, ptr %saved_bytes.sroa.9.0..sroa_idx.i, align 1
  br label %cleanup29

cleanup29:                                        ; preds = %for.end.i106, %while.end.cleanup29_crit_edge, %bitstream_read_bytes.exit.cleanup29_crit_edge, %if.else.cleanup29_crit_edge, %if.end38.i91.cleanup29_crit_edge, %if.end.thread.cleanup29_crit_edge, %if.end.cleanup29_crit_edge, %lor.lhs.false.i.cleanup29_crit_edge, %bitstream_read_u32.exit206.i.cleanup29_crit_edge, %if.end38.i.cleanup29_crit_edge, %if.end33.i.cleanup29_crit_edge, %if.end24.i.cleanup29_crit_edge, %if.end18.i.cleanup29_crit_edge, %sw.bb13.i.cleanup29_crit_edge, %for.end.i.cleanup29_crit_edge, %if.end.i60.cleanup29_crit_edge, %entry.cleanup29_crit_edge
  %retval.0 = phi i32 [ 0, %while.end.cleanup29_crit_edge ], [ 0, %for.end.i106 ], [ 0, %entry.cleanup29_crit_edge ], [ -1, %if.end38.i91.cleanup29_crit_edge ], [ -1, %if.end.cleanup29_crit_edge ], [ -1, %bitstream_read_bytes.exit.cleanup29_crit_edge ], [ -1, %if.end.thread.cleanup29_crit_edge ], [ -1, %for.end.i.cleanup29_crit_edge ], [ -1, %sw.bb13.i.cleanup29_crit_edge ], [ -1, %if.end18.i.cleanup29_crit_edge ], [ -1, %if.end24.i.cleanup29_crit_edge ], [ -1, %if.end33.i.cleanup29_crit_edge ], [ -1, %if.end38.i.cleanup29_crit_edge ], [ -1, %lor.lhs.false.i.cleanup29_crit_edge ], [ -1, %bitstream_read_u32.exit206.i.cleanup29_crit_edge ], [ -1, %if.end.i60.cleanup29_crit_edge ], [ -1, %if.else.cleanup29_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %recent_offsets) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %is) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lzx_free_decompressor(ptr noundef %decompressor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %decompressor) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_huffman_decode_table(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lzx_read_codeword_lens(ptr noundef %d, ptr noundef %is, ptr noundef %lens, i32 noundef %num_lens) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bitsleft.i.i = getelementptr inbounds %struct.input_bitstream, ptr %is, i32 0, i32 1
  %end.i.i = getelementptr inbounds %struct.input_bitstream, ptr %is, i32 0, i32 3
  %next.i.i = getelementptr inbounds %struct.input_bitstream, ptr %is, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %bitstream_read_bits.exit.for.body_crit_edge, %entry
  %i.0219 = phi i32 [ 0, %entry ], [ %inc, %bitstream_read_bits.exit.for.body_crit_edge ]
  %0 = ptrtoint ptr %bitsleft.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bitsleft.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.i.i = icmp ult i32 %1, 4
  br i1 %cmp.i.i, label %if.then.i.i, label %for.body.bitstream_read_bits.exit_crit_edge

for.body.bitstream_read_bits.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %bitstream_read_bits.exit

if.then.i.i:                                      ; preds = %for.body
  %2 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i.i, align 4
  %4 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.ptr.sub.i.i)
  %cmp1.i.i = icmp sgt i32 %sub.ptr.sub.i.i, 1
  br i1 %cmp1.i.i, label %if.then2.i.i, label %if.then.i.i.if.end.i.i_crit_edge

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.then2.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %5, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #5
  %conv.i.i = zext i16 %8 to i32
  %sub.i.i = sub nuw nsw i32 16, %1
  %shl.i.i = shl nuw i32 %conv.i.i, %sub.i.i
  %9 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %is, align 4
  %or.i.i = or i32 %shl.i.i, %10
  store i32 %or.i.i, ptr %is, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 2
  %11 = ptrtoint ptr %next.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr.i.i, ptr %next.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then2.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %add.i.i = add nuw nsw i32 %1, 16
  %12 = ptrtoint ptr %bitsleft.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add.i.i, ptr %bitsleft.i.i, align 4
  br label %bitstream_read_bits.exit

bitstream_read_bits.exit:                         ; preds = %if.end.i.i, %for.body.bitstream_read_bits.exit_crit_edge
  %13 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %is, align 4
  %shr.i.i.i = lshr i32 %14, 28
  %shl.i.i.i = shl i32 %14, 4
  store i32 %shl.i.i.i, ptr %is, align 4
  %15 = ptrtoint ptr %bitsleft.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bitsleft.i.i, align 4
  %sub.i.i.i = add i32 %16, -4
  store i32 %sub.i.i.i, ptr %bitsleft.i.i, align 4
  %conv = trunc i32 %shr.i.i.i to i8
  %arrayidx = getelementptr %struct.lzx_decompressor, ptr %d, i32 0, i32 7, i32 %i.0219
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.0219, 1
  %exitcond.not = icmp eq i32 %inc, 20
  br i1 %exitcond.not, label %for.end, label %bitstream_read_bits.exit.for.body_crit_edge

bitstream_read_bits.exit.for.body_crit_edge:      ; preds = %bitstream_read_bits.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %bitstream_read_bits.exit
  %add.ptr = getelementptr i8, ptr %lens, i32 %num_lens
  %precode_decode_table = getelementptr inbounds %struct.lzx_decompressor, ptr %d, i32 0, i32 6
  %precode_lens1 = getelementptr inbounds %struct.lzx_decompressor, ptr %d, i32 0, i32 7
  %working_space = getelementptr inbounds %struct.lzx_decompressor, ptr %d, i32 0, i32 8
  %call4 = tail call i32 @make_huffman_decode_table(ptr noundef %precode_decode_table, i32 noundef 20, i32 noundef 6, ptr noundef %precode_lens1, i32 noundef 15, ptr noundef %working_space) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %for.end.do.body_crit_edge, label %for.end.cleanup62_crit_edge

for.end.cleanup62_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup62

for.end.do.body_crit_edge:                        ; preds = %for.end
  br label %do.body

do.body:                                          ; preds = %do.cond58.do.body_crit_edge, %for.end.do.body_crit_edge
  %len_ptr.0 = phi ptr [ %len_ptr.4.ph, %do.cond58.do.body_crit_edge ], [ %lens, %for.end.do.body_crit_edge ]
  %18 = ptrtoint ptr %bitsleft.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bitsleft.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %19)
  %cmp.i.i.i = icmp ult i32 %19, 15
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.body.bitstream_ensure_bits.exit.i.i_crit_edge

do.body.bitstream_ensure_bits.exit.i.i_crit_edge: ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %bitstream_ensure_bits.exit.i.i

if.then.i.i.i:                                    ; preds = %do.body
  %20 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %end.i.i, align 4
  %22 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %next.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %21 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %23 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.ptr.sub.i.i.i)
  %cmp1.i.i.i = icmp sgt i32 %sub.ptr.sub.i.i.i, 1
  br i1 %cmp1.i.i.i, label %if.then2.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i.i

if.then2.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %23, align 1
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #5
  %conv.i.i.i = zext i16 %26 to i32
  %sub.i.i.i95 = sub nuw nsw i32 16, %19
  %shl.i.i.i96 = shl nuw i32 %conv.i.i.i, %sub.i.i.i95
  %27 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %is, align 4
  %or.i.i.i = or i32 %shl.i.i.i96, %28
  store i32 %or.i.i.i, ptr %is, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %23, i32 2
  %29 = ptrtoint ptr %next.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr.i.i.i, ptr %next.i.i, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then2.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %add.i.i.i = add nuw nsw i32 %19, 16
  %30 = ptrtoint ptr %bitsleft.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add.i.i.i, ptr %bitsleft.i.i, align 4
  br label %bitstream_ensure_bits.exit.i.i

bitstream_ensure_bits.exit.i.i:                   ; preds = %if.end.i.i.i, %do.body.bitstream_ensure_bits.exit.i.i_crit_edge
  %31 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %is, align 4
  %shr.i.i.i97 = lshr i32 %32, 26
  %arrayidx.i.i = getelementptr i16, ptr %precode_decode_table, i32 %shr.i.i.i97
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i98 = zext i16 %34 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16384, i16 %34)
  %cmp.i.i99 = icmp ult i16 %34, -16384
  br i1 %cmp.i.i99, label %if.then.i.i100, label %if.end.i.i101

if.then.i.i100:                                   ; preds = %bitstream_ensure_bits.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %shr.i.i = lshr i32 %conv.i.i98, 11
  %shl.i21.i.i = shl i32 %32, %shr.i.i
  %35 = ptrtoint ptr %is to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %shl.i21.i.i, ptr %is, align 4
  %36 = ptrtoint ptr %bitsleft.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bitsleft.i.i, align 4
  %sub.i23.i.i = sub i32 %37, %shr.i.i
  store i32 %sub.i23.i.i, ptr %bitsleft.i.i, align 4
  %and.i.i = and i32 %conv.i.i98, 2047
  br label %read_presym.exit

if.end.i.i101:                                    ; preds = %bitstream_ensure_bits.exit.i.i
  %shl.i24.i.i = shl i32 %32, 6
  %38 = ptrtoint ptr %is to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %shl.i24.i.i, ptr %is, align 4
  %39 = ptrtoint ptr %bitsleft.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bitsleft.i.i, align 4
  %sub.i26.i.i = add i32 %40, -6
  store i32 %sub.i26.i.i, ptr %bitsleft.i.i, align 4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.end.i.i101
  %entry1.0.i.i = phi i32 [ %conv.i.i98, %if.end.i.i101 ], [ %conv6.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %and3.i.i = and i32 %entry1.0.i.i, 16383
  %41 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %is, align 4
  %shr.i.i.i.i = lshr i32 %42, 31
  %shl.i.i.i.i = shl i32 %42, 1
  store i32 %shl.i.i.i.i, ptr %is, align 4
  %43 = ptrtoint ptr %bitsleft.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bitsleft.i.i, align 4
  %sub.i.i.i.i = add i32 %44, -1
  store i32 %sub.i.i.i.i, ptr %bitsleft.i.i, align 4
  %add.i.i102 = add nuw nsw i32 %shr.i.i.i.i, %and3.i.i
  %arrayidx5.i.i = getelementptr i16, ptr %precode_decode_table, i32 %add.i.i102
  %45 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx5.i.i, align 2
  %conv6.i.i = zext i16 %46 to i32
  %cmp7.i.i = icmp ugt i16 %46, -16385
  br i1 %cmp7.i.i, label %do.body.i.i.do.body.i.i_crit_edge, label %read_presym.exit.loopexit

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

read_presym.exit.loopexit:                        ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv6.i.i.le = zext i16 %46 to i32
  br label %read_presym.exit

read_presym.exit:                                 ; preds = %read_presym.exit.loopexit, %if.then.i.i100
  %retval.0.i.i = phi i32 [ %and.i.i, %if.then.i.i100 ], [ %conv6.i.i.le, %read_presym.exit.loopexit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %retval.0.i.i)
  %cmp6 = icmp ult i32 %retval.0.i.i, 17
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %read_presym.exit
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %len_ptr.0 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %len_ptr.0, align 1
  %49 = trunc i32 %retval.0.i.i to i8
  %conv10 = sub i8 %48, %49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv10)
  %cmp12 = icmp slt i8 %conv10, 0
  %add = add i8 %conv10, 17
  %spec.select = select i1 %cmp12, i8 %add, i8 %conv10
  %incdec.ptr = getelementptr i8, ptr %len_ptr.0, i32 1
  %50 = ptrtoint ptr %len_ptr.0 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %spec.select, ptr %len_ptr.0, align 1
  br label %do.cond58

if.else:                                          ; preds = %read_presym.exit
  %trunc = trunc i32 %retval.0.i.i to i16
  %51 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.1)
  switch i16 %trunc, label %if.else29 [
    i16 17, label %if.then20
    i16 18, label %if.then26
  ]

if.then20:                                        ; preds = %if.else
  %52 = ptrtoint ptr %bitsleft.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bitsleft.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %53)
  %cmp.i.i104 = icmp ult i32 %53, 4
  br i1 %cmp.i.i104, label %if.then.i.i111, label %if.then20.bitstream_read_bits.exit124_crit_edge

if.then20.bitstream_read_bits.exit124_crit_edge:  ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %bitstream_read_bits.exit124

if.then.i.i111:                                   ; preds = %if.then20
  %54 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %end.i.i, align 4
  %56 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %next.i.i, align 4
  %sub.ptr.lhs.cast.i.i107 = ptrtoint ptr %55 to i32
  %sub.ptr.rhs.cast.i.i108 = ptrtoint ptr %57 to i32
  %sub.ptr.sub.i.i109 = sub i32 %sub.ptr.lhs.cast.i.i107, %sub.ptr.rhs.cast.i.i108
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.ptr.sub.i.i109)
  %cmp1.i.i110 = icmp sgt i32 %sub.ptr.sub.i.i109, 1
  br i1 %cmp1.i.i110, label %if.then2.i.i117, label %if.then.i.i111.if.end.i.i119_crit_edge

if.then.i.i111.if.end.i.i119_crit_edge:           ; preds = %if.then.i.i111
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i119

if.then2.i.i117:                                  ; preds = %if.then.i.i111
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %59 = load i16, ptr %57, align 1
  %60 = tail call i16 @llvm.bswap.i16(i16 %59) #5
  %conv.i.i112 = zext i16 %60 to i32
  %sub.i.i113 = sub nuw nsw i32 16, %53
  %shl.i.i114 = shl nuw i32 %conv.i.i112, %sub.i.i113
  %61 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %is, align 4
  %or.i.i115 = or i32 %shl.i.i114, %62
  store i32 %or.i.i115, ptr %is, align 4
  %add.ptr.i.i116 = getelementptr i8, ptr %57, i32 2
  %63 = ptrtoint ptr %next.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %add.ptr.i.i116, ptr %next.i.i, align 4
  br label %if.end.i.i119

if.end.i.i119:                                    ; preds = %if.then2.i.i117, %if.then.i.i111.if.end.i.i119_crit_edge
  %add.i.i118 = add nuw nsw i32 %53, 16
  %64 = ptrtoint ptr %bitsleft.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %add.i.i118, ptr %bitsleft.i.i, align 4
  br label %bitstream_read_bits.exit124

bitstream_read_bits.exit124:                      ; preds = %if.end.i.i119, %if.then20.bitstream_read_bits.exit124_crit_edge
  %65 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %is, align 4
  %shr.i.i.i120 = lshr i32 %66, 28
  %shl.i.i.i122 = shl i32 %66, 4
  store i32 %shl.i.i.i122, ptr %is, align 4
  %67 = ptrtoint ptr %bitsleft.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %bitsleft.i.i, align 4
  %sub.i.i.i123 = add i32 %68, -4
  store i32 %sub.i.i.i123, ptr %bitsleft.i.i, align 4
  %add22 = add nuw nsw i32 %shr.i.i.i120, 4
  br label %if.end49

if.then26:                                        ; preds = %if.else
  %69 = ptrtoint ptr %bitsleft.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %bitsleft.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %70)
  %cmp.i.i126 = icmp ult i32 %70, 5
  br i1 %cmp.i.i126, label %if.then.i.i133, label %if.then26.bitstream_read_bits.exit146_crit_edge

if.then26.bitstream_read_bits.exit146_crit_edge:  ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #7
  br label %bitstream_read_bits.exit146

if.then.i.i133:                                   ; preds = %if.then26
  %71 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %end.i.i, align 4
  %73 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %next.i.i, align 4
  %sub.ptr.lhs.cast.i.i129 = ptrtoint ptr %72 to i32
  %sub.ptr.rhs.cast.i.i130 = ptrtoint ptr %74 to i32
  %sub.ptr.sub.i.i131 = sub i32 %sub.ptr.lhs.cast.i.i129, %sub.ptr.rhs.cast.i.i130
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.ptr.sub.i.i131)
  %cmp1.i.i132 = icmp sgt i32 %sub.ptr.sub.i.i131, 1
  br i1 %cmp1.i.i132, label %if.then2.i.i139, label %if.then.i.i133.if.end.i.i141_crit_edge

if.then.i.i133.if.end.i.i141_crit_edge:           ; preds = %if.then.i.i133
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i141

if.then2.i.i139:                                  ; preds = %if.then.i.i133
  call void @__sanitizer_cov_trace_pc() #7
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_loadN_noabort(i32 %75, i32 2)
  %76 = load i16, ptr %74, align 1
  %77 = tail call i16 @llvm.bswap.i16(i16 %76) #5
  %conv.i.i134 = zext i16 %77 to i32
  %sub.i.i135 = sub nuw nsw i32 16, %70
  %shl.i.i136 = shl nuw i32 %conv.i.i134, %sub.i.i135
  %78 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %is, align 4
  %or.i.i137 = or i32 %shl.i.i136, %79
  store i32 %or.i.i137, ptr %is, align 4
  %add.ptr.i.i138 = getelementptr i8, ptr %74, i32 2
  %80 = ptrtoint ptr %next.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %add.ptr.i.i138, ptr %next.i.i, align 4
  br label %if.end.i.i141

if.end.i.i141:                                    ; preds = %if.then2.i.i139, %if.then.i.i133.if.end.i.i141_crit_edge
  %add.i.i140 = add nuw nsw i32 %70, 16
  %81 = ptrtoint ptr %bitsleft.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %add.i.i140, ptr %bitsleft.i.i, align 4
  br label %bitstream_read_bits.exit146

bitstream_read_bits.exit146:                      ; preds = %if.end.i.i141, %if.then26.bitstream_read_bits.exit146_crit_edge
  %82 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %is, align 4
  %shr.i.i.i142 = lshr i32 %83, 27
  %shl.i.i.i144 = shl i32 %83, 5
  store i32 %shl.i.i.i144, ptr %is, align 4
  %84 = ptrtoint ptr %bitsleft.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %bitsleft.i.i, align 4
  %sub.i.i.i145 = add i32 %85, -5
  store i32 %sub.i.i.i145, ptr %bitsleft.i.i, align 4
  %add28 = add nuw nsw i32 %shr.i.i.i142, 20
  br label %if.end49

if.else29:                                        ; preds = %if.else
  %86 = ptrtoint ptr %bitsleft.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %bitsleft.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp.i.i148 = icmp eq i32 %87, 0
  br i1 %cmp.i.i148, label %if.then.i.i155, label %if.else29.bitstream_read_bits.exit168_crit_edge

if.else29.bitstream_read_bits.exit168_crit_edge:  ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #7
  br label %bitstream_read_bits.exit168

if.then.i.i155:                                   ; preds = %if.else29
  %88 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %end.i.i, align 4
  %90 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %next.i.i, align 4
  %sub.ptr.lhs.cast.i.i151 = ptrtoint ptr %89 to i32
  %sub.ptr.rhs.cast.i.i152 = ptrtoint ptr %91 to i32
  %sub.ptr.sub.i.i153 = sub i32 %sub.ptr.lhs.cast.i.i151, %sub.ptr.rhs.cast.i.i152
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.ptr.sub.i.i153)
  %cmp1.i.i154 = icmp sgt i32 %sub.ptr.sub.i.i153, 1
  br i1 %cmp1.i.i154, label %if.then2.i.i161, label %if.then.i.i155.if.end.i.i163_crit_edge

if.then.i.i155.if.end.i.i163_crit_edge:           ; preds = %if.then.i.i155
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i163

if.then2.i.i161:                                  ; preds = %if.then.i.i155
  call void @__sanitizer_cov_trace_pc() #7
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_loadN_noabort(i32 %92, i32 2)
  %93 = load i16, ptr %91, align 1
  %94 = tail call i16 @llvm.bswap.i16(i16 %93) #5
  %conv.i.i156 = zext i16 %94 to i32
  %shl.i.i158 = shl nuw i32 %conv.i.i156, 16
  %95 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %is, align 4
  %or.i.i159 = or i32 %shl.i.i158, %96
  store i32 %or.i.i159, ptr %is, align 4
  %add.ptr.i.i160 = getelementptr i8, ptr %91, i32 2
  %97 = ptrtoint ptr %next.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %add.ptr.i.i160, ptr %next.i.i, align 4
  br label %if.end.i.i163

if.end.i.i163:                                    ; preds = %if.then2.i.i161, %if.then.i.i155.if.end.i.i163_crit_edge
  %98 = ptrtoint ptr %bitsleft.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 16, ptr %bitsleft.i.i, align 4
  br label %bitstream_read_bits.exit168

bitstream_read_bits.exit168:                      ; preds = %if.end.i.i163, %if.else29.bitstream_read_bits.exit168_crit_edge
  %99 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %is, align 4
  %shr.i.i.i164 = lshr i32 %100, 31
  %shl.i.i.i166 = shl i32 %100, 1
  store i32 %shl.i.i.i166, ptr %is, align 4
  %101 = ptrtoint ptr %bitsleft.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %bitsleft.i.i, align 4
  %sub.i.i.i167 = add i32 %102, -1
  store i32 %sub.i.i.i167, ptr %bitsleft.i.i, align 4
  %add31 = or i32 %shr.i.i.i164, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub.i.i.i167)
  %cmp.i.i.i171 = icmp ult i32 %sub.i.i.i167, 15
  br i1 %cmp.i.i.i171, label %if.then.i.i.i178, label %bitstream_read_bits.exit168.bitstream_ensure_bits.exit.i.i191_crit_edge

bitstream_read_bits.exit168.bitstream_ensure_bits.exit.i.i191_crit_edge: ; preds = %bitstream_read_bits.exit168
  call void @__sanitizer_cov_trace_pc() #7
  br label %bitstream_ensure_bits.exit.i.i191

if.then.i.i.i178:                                 ; preds = %bitstream_read_bits.exit168
  %103 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %end.i.i, align 4
  %105 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %next.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i174 = ptrtoint ptr %104 to i32
  %sub.ptr.rhs.cast.i.i.i175 = ptrtoint ptr %106 to i32
  %sub.ptr.sub.i.i.i176 = sub i32 %sub.ptr.lhs.cast.i.i.i174, %sub.ptr.rhs.cast.i.i.i175
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.ptr.sub.i.i.i176)
  %cmp1.i.i.i177 = icmp sgt i32 %sub.ptr.sub.i.i.i176, 1
  br i1 %cmp1.i.i.i177, label %if.then2.i.i.i184, label %if.then.i.i.i178.if.end.i.i.i186_crit_edge

if.then.i.i.i178.if.end.i.i.i186_crit_edge:       ; preds = %if.then.i.i.i178
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i.i186

if.then2.i.i.i184:                                ; preds = %if.then.i.i.i178
  call void @__sanitizer_cov_trace_pc() #7
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_loadN_noabort(i32 %107, i32 2)
  %108 = load i16, ptr %106, align 1
  %109 = tail call i16 @llvm.bswap.i16(i16 %108) #5
  %conv.i.i.i179 = zext i16 %109 to i32
  %sub.i.i.i180 = sub nuw nsw i32 17, %102
  %shl.i.i.i181 = shl nuw i32 %conv.i.i.i179, %sub.i.i.i180
  %or.i.i.i182 = or i32 %shl.i.i.i181, %shl.i.i.i166
  %110 = ptrtoint ptr %is to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %or.i.i.i182, ptr %is, align 4
  %add.ptr.i.i.i183 = getelementptr i8, ptr %106, i32 2
  %111 = ptrtoint ptr %next.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %add.ptr.i.i.i183, ptr %next.i.i, align 4
  br label %if.end.i.i.i186

if.end.i.i.i186:                                  ; preds = %if.then2.i.i.i184, %if.then.i.i.i178.if.end.i.i.i186_crit_edge
  %add.i.i.i185 = add nuw nsw i32 %102, 15
  %112 = ptrtoint ptr %bitsleft.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %add.i.i.i185, ptr %bitsleft.i.i, align 4
  br label %bitstream_ensure_bits.exit.i.i191

bitstream_ensure_bits.exit.i.i191:                ; preds = %if.end.i.i.i186, %bitstream_read_bits.exit168.bitstream_ensure_bits.exit.i.i191_crit_edge
  %113 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %is, align 4
  %shr.i.i.i187 = lshr i32 %114, 26
  %arrayidx.i.i188 = getelementptr i16, ptr %precode_decode_table, i32 %shr.i.i.i187
  %115 = ptrtoint ptr %arrayidx.i.i188 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %arrayidx.i.i188, align 2
  %conv.i.i189 = zext i16 %116 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16384, i16 %116)
  %cmp.i.i190 = icmp ult i16 %116, -16384
  br i1 %cmp.i.i190, label %if.then.i.i196, label %if.end.i.i199

if.then.i.i196:                                   ; preds = %bitstream_ensure_bits.exit.i.i191
  call void @__sanitizer_cov_trace_pc() #7
  %shr.i.i192 = lshr i32 %conv.i.i189, 11
  %shl.i21.i.i193 = shl i32 %114, %shr.i.i192
  %117 = ptrtoint ptr %is to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %shl.i21.i.i193, ptr %is, align 4
  %118 = ptrtoint ptr %bitsleft.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %bitsleft.i.i, align 4
  %sub.i23.i.i194 = sub i32 %119, %shr.i.i192
  store i32 %sub.i23.i.i194, ptr %bitsleft.i.i, align 4
  %and.i.i195 = and i32 %conv.i.i189, 2047
  br label %read_presym.exit213

if.end.i.i199:                                    ; preds = %bitstream_ensure_bits.exit.i.i191
  %shl.i24.i.i197 = shl i32 %114, 6
  %120 = ptrtoint ptr %is to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %shl.i24.i.i197, ptr %is, align 4
  %121 = ptrtoint ptr %bitsleft.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %bitsleft.i.i, align 4
  %sub.i26.i.i198 = add i32 %122, -6
  store i32 %sub.i26.i.i198, ptr %bitsleft.i.i, align 4
  br label %do.body.i.i209

do.body.i.i209:                                   ; preds = %do.body.i.i209.do.body.i.i209_crit_edge, %if.end.i.i199
  %entry1.0.i.i200 = phi i32 [ %conv.i.i189, %if.end.i.i199 ], [ %conv6.i.i207, %do.body.i.i209.do.body.i.i209_crit_edge ]
  %and3.i.i201 = and i32 %entry1.0.i.i200, 16383
  %123 = ptrtoint ptr %is to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %is, align 4
  %shr.i.i.i.i202 = lshr i32 %124, 31
  %shl.i.i.i.i203 = shl i32 %124, 1
  store i32 %shl.i.i.i.i203, ptr %is, align 4
  %125 = ptrtoint ptr %bitsleft.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %bitsleft.i.i, align 4
  %sub.i.i.i.i204 = add i32 %126, -1
  store i32 %sub.i.i.i.i204, ptr %bitsleft.i.i, align 4
  %add.i.i205 = add nuw nsw i32 %shr.i.i.i.i202, %and3.i.i201
  %arrayidx5.i.i206 = getelementptr i16, ptr %precode_decode_table, i32 %add.i.i205
  %127 = ptrtoint ptr %arrayidx5.i.i206 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %arrayidx5.i.i206, align 2
  %conv6.i.i207 = zext i16 %128 to i32
  %cmp7.i.i208 = icmp ugt i16 %128, -16385
  br i1 %cmp7.i.i208, label %do.body.i.i209.do.body.i.i209_crit_edge, label %read_presym.exit213.loopexit

do.body.i.i209.do.body.i.i209_crit_edge:          ; preds = %do.body.i.i209
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i209

read_presym.exit213.loopexit:                     ; preds = %do.body.i.i209
  call void @__sanitizer_cov_trace_pc() #7
  %conv6.i.i207.le = zext i16 %128 to i32
  br label %read_presym.exit213

read_presym.exit213:                              ; preds = %read_presym.exit213.loopexit, %if.then.i.i196
  %retval.0.i.i212 = phi i32 [ %and.i.i195, %if.then.i.i196 ], [ %conv6.i.i207.le, %read_presym.exit213.loopexit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %retval.0.i.i212)
  %cmp33 = icmp ugt i32 %retval.0.i.i212, 17
  br i1 %cmp33, label %read_presym.exit213.cleanup62_crit_edge, label %if.end36

read_presym.exit213.cleanup62_crit_edge:          ; preds = %read_presym.exit213
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup62

if.end36:                                         ; preds = %read_presym.exit213
  call void @__sanitizer_cov_trace_pc() #7
  %129 = ptrtoint ptr %len_ptr.0 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %len_ptr.0, align 1
  %131 = trunc i32 %retval.0.i.i212 to i8
  %conv39 = sub i8 %130, %131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv39)
  %cmp41 = icmp slt i8 %conv39, 0
  %add45 = add i8 %conv39, 17
  %spec.select94 = select i1 %cmp41, i8 %add45, i8 %conv39
  br label %if.end49

if.end49:                                         ; preds = %if.end36, %bitstream_read_bits.exit146, %bitstream_read_bits.exit124
  %len.1 = phi i8 [ 0, %bitstream_read_bits.exit124 ], [ 0, %bitstream_read_bits.exit146 ], [ %spec.select94, %if.end36 ]
  %run_len.0 = phi i32 [ %add22, %bitstream_read_bits.exit124 ], [ %add28, %bitstream_read_bits.exit146 ], [ %add31, %if.end36 ]
  %132 = zext i8 %len.1 to i32
  %133 = call ptr @memset(ptr %len_ptr.0, i32 %132, i32 %run_len.0)
  %uglygep = getelementptr i8, ptr %len_ptr.0, i32 %run_len.0
  br label %do.cond58

do.cond58:                                        ; preds = %if.end49, %if.then8
  %len_ptr.4.ph = phi ptr [ %incdec.ptr, %if.then8 ], [ %uglygep, %if.end49 ]
  %cmp59 = icmp ult ptr %len_ptr.4.ph, %add.ptr
  br i1 %cmp59, label %do.cond58.do.body_crit_edge, label %do.cond58.cleanup62_crit_edge

do.cond58.cleanup62_crit_edge:                    ; preds = %do.cond58
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup62

do.cond58.do.body_crit_edge:                      ; preds = %do.cond58
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

cleanup62:                                        ; preds = %do.cond58.cleanup62_crit_edge, %read_presym.exit213.cleanup62_crit_edge, %for.end.cleanup62_crit_edge
  %retval.4 = phi i32 [ -1, %for.end.cleanup62_crit_edge ], [ -1, %read_presym.exit213.cleanup62_crit_edge ], [ 0, %do.cond58.cleanup62_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @lzx_extra_offset_bits, !1, !"lzx_extra_offset_bits", i1 false, i1 false}
!1 = !{!"../fs/ntfs3/lib/lzx_decompress.c", i32 107, i32 17}
!2 = !{ptr @lzx_offset_slot_base, !3, !"lzx_offset_slot_base", i1 false, i1 false}
!3 = !{!"../fs/ntfs3/lib/lzx_decompress.c", i32 94, i32 18}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"branch_weights", i32 1, i32 2000}
