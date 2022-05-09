; ModuleID = '/llk/IR_all_yes/fs/ntfs3/lib/xpress_decompress.c_pt.bc'
source_filename = "../fs/ntfs3/lib/xpress_decompress.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xpress_decompressor = type { [5120 x i16], [512 x i8], [544 x i16] }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @xpress_allocate_decompressor() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 11840, i32 noundef 3136, i32 noundef 2) #7
  ret ptr %call1.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xpress_decompress(ptr noundef %decompressor, ptr noundef %compressed_data, i32 noundef %compressed_size, ptr noundef %uncompressed_data, i32 noundef %uncompressed_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %uncompressed_data, i32 %uncompressed_size
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %compressed_size)
  %cmp = icmp ult i32 %compressed_size, 256
  br i1 %cmp, label %entry.cleanup60_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup60_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup60

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0155 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %compressed_data, i32 %i.0155
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = and i8 %1, 15
  %mul = shl nuw nsw i32 %i.0155, 1
  %arrayidx3 = getelementptr %struct.xpress_decompressor, ptr %decompressor, i32 0, i32 1, i32 %mul
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %arrayidx3, align 1
  %4 = load i8, ptr %arrayidx, align 1
  %5 = lshr i8 %4, 4
  %add9 = or i32 %mul, 1
  %arrayidx10 = getelementptr %struct.xpress_decompressor, ptr %decompressor, i32 0, i32 1, i32 %add9
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %arrayidx10, align 1
  %inc = add nuw nsw i32 %i.0155, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  %lens11 = getelementptr inbounds %struct.xpress_decompressor, ptr %decompressor, i32 0, i32 1
  %working_space = getelementptr inbounds %struct.xpress_decompressor, ptr %decompressor, i32 0, i32 2
  %call = tail call i32 @make_huffman_decode_table(ptr noundef %decompressor, i32 noundef 512, i32 noundef 12, ptr noundef %lens11, i32 noundef 15, ptr noundef %working_space) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end15, label %for.end.cleanup60_crit_edge

for.end.cleanup60_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup60

if.end15:                                         ; preds = %for.end
  %add.ptr.i = getelementptr i8, ptr %compressed_data, i32 %compressed_size
  %cmp17.not156 = icmp eq ptr %add.ptr, %uncompressed_data
  br i1 %cmp17.not156, label %if.end15.cleanup60_crit_edge, label %while.body.lr.ph

if.end15.cleanup60_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup60

while.body.lr.ph:                                 ; preds = %if.end15
  %add.ptr16 = getelementptr i8, ptr %compressed_data, i32 256
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %uncompressed_data to i32
  %sub.ptr.lhs.cast48 = ptrtoint ptr %add.ptr to i32
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %out_next.0161 = phi ptr [ %uncompressed_data, %while.body.lr.ph ], [ %out_next.2, %cleanup.while.body_crit_edge ]
  %is.sroa.0.0160 = phi i32 [ 0, %while.body.lr.ph ], [ %is.sroa.0.7, %cleanup.while.body_crit_edge ]
  %is.sroa.15.0158 = phi i32 [ 0, %while.body.lr.ph ], [ %is.sroa.15.5, %cleanup.while.body_crit_edge ]
  %is.sroa.29.0157 = phi ptr [ %add.ptr16, %while.body.lr.ph ], [ %is.sroa.29.8, %cleanup.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %is.sroa.15.0158)
  %cmp.i.i = icmp ult i32 %is.sroa.15.0158, 15
  br i1 %cmp.i.i, label %if.then.i.i, label %while.body.bitstream_ensure_bits.exit.i_crit_edge

while.body.bitstream_ensure_bits.exit.i_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %bitstream_ensure_bits.exit.i

if.then.i.i:                                      ; preds = %while.body
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %is.sroa.29.0157 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.ptr.sub.i.i)
  %cmp1.i.i = icmp sgt i32 %sub.ptr.sub.i.i, 1
  br i1 %cmp1.i.i, label %if.then2.i.i, label %if.then.i.i.if.end.i.i_crit_edge

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i

if.then2.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %is.sroa.29.0157 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %is.sroa.29.0157, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #4
  %conv.i.i = zext i16 %9 to i32
  %sub.i.i = sub nuw nsw i32 16, %is.sroa.15.0158
  %shl.i.i = shl nuw i32 %conv.i.i, %sub.i.i
  %or.i.i = or i32 %shl.i.i, %is.sroa.0.0160
  %add.ptr.i.i = getelementptr i8, ptr %is.sroa.29.0157, i32 2
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then2.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %is.sroa.29.1 = phi ptr [ %add.ptr.i.i, %if.then2.i.i ], [ %is.sroa.29.0157, %if.then.i.i.if.end.i.i_crit_edge ]
  %is.sroa.0.1 = phi i32 [ %or.i.i, %if.then2.i.i ], [ %is.sroa.0.0160, %if.then.i.i.if.end.i.i_crit_edge ]
  %add.i.i = add nuw nsw i32 %is.sroa.15.0158, 16
  br label %bitstream_ensure_bits.exit.i

bitstream_ensure_bits.exit.i:                     ; preds = %if.end.i.i, %while.body.bitstream_ensure_bits.exit.i_crit_edge
  %is.sroa.29.2 = phi ptr [ %is.sroa.29.1, %if.end.i.i ], [ %is.sroa.29.0157, %while.body.bitstream_ensure_bits.exit.i_crit_edge ]
  %is.sroa.15.1 = phi i32 [ %add.i.i, %if.end.i.i ], [ %is.sroa.15.0158, %while.body.bitstream_ensure_bits.exit.i_crit_edge ]
  %is.sroa.0.2 = phi i32 [ %is.sroa.0.1, %if.end.i.i ], [ %is.sroa.0.0160, %while.body.bitstream_ensure_bits.exit.i_crit_edge ]
  %shr.i.i = lshr i32 %is.sroa.0.2, 20
  %arrayidx.i = getelementptr i16, ptr %decompressor, i32 %shr.i.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16384, i16 %11)
  %cmp.i = icmp ult i16 %11, -16384
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %bitstream_ensure_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %shr.i = lshr i32 %conv.i, 11
  %shl.i1.i = shl i32 %is.sroa.0.2, %shr.i
  %sub.i3.i = sub i32 %is.sroa.15.1, %shr.i
  %and.i = and i32 %conv.i, 2047
  br label %read_huffsym.exit

if.end.i:                                         ; preds = %bitstream_ensure_bits.exit.i
  %shl.i4.i = shl i32 %is.sroa.0.2, 12
  %sub.i6.i = add i32 %is.sroa.15.1, -12
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end.i
  %is.sroa.15.2 = phi i32 [ %sub.i6.i, %if.end.i ], [ %sub.i.i.i, %do.body.i.do.body.i_crit_edge ]
  %is.sroa.0.3 = phi i32 [ %shl.i4.i, %if.end.i ], [ %shl.i.i.i, %do.body.i.do.body.i_crit_edge ]
  %entry1.0.i = phi i32 [ %conv.i, %if.end.i ], [ %conv6.i, %do.body.i.do.body.i_crit_edge ]
  %and3.i = and i32 %entry1.0.i, 16383
  %shr.i.i.i = lshr i32 %is.sroa.0.3, 31
  %shl.i.i.i = shl i32 %is.sroa.0.3, 1
  %sub.i.i.i = add i32 %is.sroa.15.2, -1
  %add.i = add nuw nsw i32 %and3.i, %shr.i.i.i
  %arrayidx5.i = getelementptr i16, ptr %decompressor, i32 %add.i
  %12 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx5.i, align 2
  %conv6.i = zext i16 %13 to i32
  %cmp7.i = icmp ugt i16 %13, -16385
  br i1 %cmp7.i, label %do.body.i.do.body.i_crit_edge, label %read_huffsym.exit.loopexit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

read_huffsym.exit.loopexit:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv6.i.le = zext i16 %13 to i32
  br label %read_huffsym.exit

read_huffsym.exit:                                ; preds = %read_huffsym.exit.loopexit, %if.then.i
  %is.sroa.15.3 = phi i32 [ %sub.i3.i, %if.then.i ], [ %sub.i.i.i, %read_huffsym.exit.loopexit ]
  %is.sroa.0.4 = phi i32 [ %shl.i1.i, %if.then.i ], [ %shl.i.i.i, %read_huffsym.exit.loopexit ]
  %retval.0.i = phi i32 [ %and.i, %if.then.i ], [ %conv6.i.le, %read_huffsym.exit.loopexit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %retval.0.i)
  %cmp22 = icmp ult i32 %retval.0.i, 256
  br i1 %cmp22, label %if.then24, label %if.else

if.then24:                                        ; preds = %read_huffsym.exit
  call void @__sanitizer_cov_trace_pc() #6
  %conv25 = trunc i32 %retval.0.i to i8
  %incdec.ptr = getelementptr i8, ptr %out_next.0161, i32 1
  %14 = ptrtoint ptr %out_next.0161 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv25, ptr %out_next.0161, align 1
  br label %cleanup

if.else:                                          ; preds = %read_huffsym.exit
  %and26 = and i32 %retval.0.i, 15
  %shr27 = lshr i32 %retval.0.i, 4
  %and28 = and i32 %shr27, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %is.sroa.15.3)
  %cmp.i100 = icmp ult i32 %is.sroa.15.3, 16
  br i1 %cmp.i100, label %if.then.i103, label %if.else.bitstream_ensure_bits.exit_crit_edge

if.else.bitstream_ensure_bits.exit_crit_edge:     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %bitstream_ensure_bits.exit

if.then.i103:                                     ; preds = %if.else
  %sub.ptr.rhs.cast.i = ptrtoint ptr %is.sroa.29.2 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.ptr.sub.i)
  %cmp1.i = icmp sgt i32 %sub.ptr.sub.i, 1
  br i1 %cmp1.i, label %if.then2.i, label %if.then.i103.if.end.i107_crit_edge

if.then.i103.if.end.i107_crit_edge:               ; preds = %if.then.i103
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i107

if.then2.i:                                       ; preds = %if.then.i103
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %is.sroa.29.2 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %is.sroa.29.2, align 1
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #4
  %conv.i104 = zext i16 %17 to i32
  %sub.i = sub nuw nsw i32 16, %is.sroa.15.3
  %shl.i = shl nuw i32 %conv.i104, %sub.i
  %or.i = or i32 %shl.i, %is.sroa.0.4
  %add.ptr.i105 = getelementptr i8, ptr %is.sroa.29.2, i32 2
  br label %if.end.i107

if.end.i107:                                      ; preds = %if.then2.i, %if.then.i103.if.end.i107_crit_edge
  %is.sroa.29.3 = phi ptr [ %add.ptr.i105, %if.then2.i ], [ %is.sroa.29.2, %if.then.i103.if.end.i107_crit_edge ]
  %is.sroa.0.5 = phi i32 [ %or.i, %if.then2.i ], [ %is.sroa.0.4, %if.then.i103.if.end.i107_crit_edge ]
  %add.i106 = add nuw nsw i32 %is.sroa.15.3, 16
  br label %bitstream_ensure_bits.exit

bitstream_ensure_bits.exit:                       ; preds = %if.end.i107, %if.else.bitstream_ensure_bits.exit_crit_edge
  %is.sroa.29.4 = phi ptr [ %is.sroa.29.3, %if.end.i107 ], [ %is.sroa.29.2, %if.else.bitstream_ensure_bits.exit_crit_edge ]
  %is.sroa.15.4 = phi i32 [ %add.i106, %if.end.i107 ], [ %is.sroa.15.3, %if.else.bitstream_ensure_bits.exit_crit_edge ]
  %is.sroa.0.6 = phi i32 [ %is.sroa.0.5, %if.end.i107 ], [ %is.sroa.0.4, %if.else.bitstream_ensure_bits.exit_crit_edge ]
  %shl = shl nuw nsw i32 1, %and28
  %shr.i.i108 = lshr i32 %is.sroa.0.6, 1
  %sub1.i.i = xor i32 %and28, 31
  %shr2.i.i = lshr i32 %shr.i.i108, %sub1.i.i
  %shl.i.i109 = shl i32 %is.sroa.0.6, %and28
  %sub.i.i111 = sub nuw i32 %is.sroa.15.4, %and28
  %or = or i32 %shr2.i.i, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and26)
  %cmp30 = icmp eq i32 %and26, 15
  br i1 %cmp30, label %if.then32, label %bitstream_ensure_bits.exit.if.end42_crit_edge

bitstream_ensure_bits.exit.if.end42_crit_edge:    ; preds = %bitstream_ensure_bits.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

if.then32:                                        ; preds = %bitstream_ensure_bits.exit
  %cmp.i114 = icmp eq ptr %add.ptr.i, %is.sroa.29.4
  br i1 %cmp.i114, label %if.then32.if.end42_crit_edge, label %bitstream_read_byte.exit, !prof !9

if.then32.if.end42_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

bitstream_read_byte.exit:                         ; preds = %if.then32
  %incdec.ptr.i = getelementptr i8, ptr %is.sroa.29.4, i32 1
  %18 = ptrtoint ptr %is.sroa.29.4 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %is.sroa.29.4, align 1
  %conv34 = zext i8 %19 to i32
  %add35 = add nuw nsw i32 %conv34, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 270, i32 %add35)
  %cmp36 = icmp eq i32 %add35, 270
  br i1 %cmp36, label %if.then38, label %bitstream_read_byte.exit.if.end42_crit_edge

bitstream_read_byte.exit.if.end42_crit_edge:      ; preds = %bitstream_read_byte.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

if.then38:                                        ; preds = %bitstream_read_byte.exit
  %sub.ptr.rhs.cast.i120 = ptrtoint ptr %incdec.ptr.i to i32
  %sub.ptr.sub.i121 = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i120
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.ptr.sub.i121)
  %cmp.i122 = icmp slt i32 %sub.ptr.sub.i121, 2
  br i1 %cmp.i122, label %if.then38.bitstream_read_u16.exit_crit_edge, label %if.end.i124, !prof !9

if.then38.bitstream_read_u16.exit_crit_edge:      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  br label %bitstream_read_u16.exit

if.end.i124:                                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %incdec.ptr.i, align 1
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #4
  %add.ptr.i123 = getelementptr i8, ptr %is.sroa.29.4, i32 3
  br label %bitstream_read_u16.exit

bitstream_read_u16.exit:                          ; preds = %if.end.i124, %if.then38.bitstream_read_u16.exit_crit_edge
  %is.sroa.29.6 = phi ptr [ %incdec.ptr.i, %if.then38.bitstream_read_u16.exit_crit_edge ], [ %add.ptr.i123, %if.end.i124 ]
  %retval.0.i125 = phi i16 [ 0, %if.then38.bitstream_read_u16.exit_crit_edge ], [ %22, %if.end.i124 ]
  %conv40 = zext i16 %retval.0.i125 to i32
  br label %if.end42

if.end42:                                         ; preds = %bitstream_read_u16.exit, %bitstream_read_byte.exit.if.end42_crit_edge, %if.then32.if.end42_crit_edge, %bitstream_ensure_bits.exit.if.end42_crit_edge
  %is.sroa.29.7 = phi ptr [ %is.sroa.29.6, %bitstream_read_u16.exit ], [ %incdec.ptr.i, %bitstream_read_byte.exit.if.end42_crit_edge ], [ %is.sroa.29.4, %bitstream_ensure_bits.exit.if.end42_crit_edge ], [ %add.ptr.i, %if.then32.if.end42_crit_edge ]
  %length.0 = phi i32 [ %conv40, %bitstream_read_u16.exit ], [ %add35, %bitstream_read_byte.exit.if.end42_crit_edge ], [ %and26, %bitstream_ensure_bits.exit.if.end42_crit_edge ], [ 15, %if.then32.if.end42_crit_edge ]
  %add43 = add nuw nsw i32 %length.0, 3
  %sub.ptr.lhs.cast = ptrtoint ptr %out_next.0161 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %sub.ptr.sub)
  %cmp44 = icmp ugt i32 %or, %sub.ptr.sub
  %sub.ptr.sub50 = sub i32 %sub.ptr.lhs.cast48, %sub.ptr.lhs.cast
  call void @__sanitizer_cov_trace_cmp4(i32 %add43, i32 %sub.ptr.sub50)
  %cmp51 = icmp ugt i32 %add43, %sub.ptr.sub50
  %or.cond = select i1 %cmp44, i1 true, i1 %cmp51
  br i1 %or.cond, label %if.end42.cleanup60_crit_edge, label %if.end54

if.end42.cleanup60_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup60

if.end54:                                         ; preds = %if.end42
  %idx.neg.i = sub nsw i32 0, %or
  %add.ptr.i126 = getelementptr i8, ptr %out_next.0161, i32 %idx.neg.i
  %incdec.ptr.i127 = getelementptr i8, ptr %add.ptr.i126, i32 1
  %23 = ptrtoint ptr %add.ptr.i126 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %add.ptr.i126, align 1
  %incdec.ptr1.i = getelementptr i8, ptr %out_next.0161, i32 1
  %25 = ptrtoint ptr %out_next.0161 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %out_next.0161, align 1
  %26 = ptrtoint ptr %incdec.ptr.i127 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %incdec.ptr.i127, align 1
  %28 = ptrtoint ptr %incdec.ptr1.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %incdec.ptr1.i, align 1
  %dec6.i = add nuw nsw i32 %length.0, 1
  %incdec.ptr5.i = getelementptr i8, ptr %out_next.0161, i32 2
  br label %do.body.i128

do.body.i128:                                     ; preds = %do.body.i128.do.body.i128_crit_edge, %if.end54
  %length.addr.2.i = phi i32 [ %dec6.i, %if.end54 ], [ %dec10.i, %do.body.i128.do.body.i128_crit_edge ]
  %dst.addr.2.i = phi ptr [ %incdec.ptr5.i, %if.end54 ], [ %incdec.ptr9.i, %do.body.i128.do.body.i128_crit_edge ]
  %incdec.ptr.pn.i = phi ptr [ %incdec.ptr.i127, %if.end54 ], [ %src.2.i, %do.body.i128.do.body.i128_crit_edge ]
  %src.2.i = getelementptr i8, ptr %incdec.ptr.pn.i, i32 1
  %29 = ptrtoint ptr %src.2.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %src.2.i, align 1
  %incdec.ptr9.i = getelementptr i8, ptr %dst.addr.2.i, i32 1
  %31 = ptrtoint ptr %dst.addr.2.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %dst.addr.2.i, align 1
  %dec10.i = add nsw i32 %length.addr.2.i, -1
  %tobool.not.i = icmp eq i32 %dec10.i, 0
  br i1 %tobool.not.i, label %do.body.i128.cleanup_crit_edge, label %do.body.i128.do.body.i128_crit_edge

do.body.i128.do.body.i128_crit_edge:              ; preds = %do.body.i128
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i128

do.body.i128.cleanup_crit_edge:                   ; preds = %do.body.i128
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %do.body.i128.cleanup_crit_edge, %if.then24
  %is.sroa.29.8 = phi ptr [ %is.sroa.29.2, %if.then24 ], [ %is.sroa.29.7, %do.body.i128.cleanup_crit_edge ]
  %is.sroa.15.5 = phi i32 [ %is.sroa.15.3, %if.then24 ], [ %sub.i.i111, %do.body.i128.cleanup_crit_edge ]
  %is.sroa.0.7 = phi i32 [ %is.sroa.0.4, %if.then24 ], [ %shl.i.i109, %do.body.i128.cleanup_crit_edge ]
  %out_next.2 = phi ptr [ %incdec.ptr, %if.then24 ], [ %incdec.ptr9.i, %do.body.i128.cleanup_crit_edge ]
  %cmp17.not = icmp eq ptr %out_next.2, %add.ptr
  br i1 %cmp17.not, label %cleanup.cleanup60_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

cleanup.cleanup60_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup60

cleanup60:                                        ; preds = %cleanup.cleanup60_crit_edge, %if.end42.cleanup60_crit_edge, %if.end15.cleanup60_crit_edge, %for.end.cleanup60_crit_edge, %entry.cleanup60_crit_edge
  %retval.0 = phi i32 [ -1, %for.end.cleanup60_crit_edge ], [ -1, %entry.cleanup60_crit_edge ], [ 0, %if.end15.cleanup60_crit_edge ], [ 0, %cleanup.cleanup60_crit_edge ], [ -1, %if.end42.cleanup60_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_huffman_decode_table(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xpress_free_decompressor(ptr noundef %decompressor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %decompressor) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_store1_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(0) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
