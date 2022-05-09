; ModuleID = '/llk/IR_all_yes/fs/jffs2/compr_rubin.c_pt.bc'
source_filename = "../fs/jffs2/compr_rubin.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.jffs2_compressor = type { %struct.list_head, i32, ptr, i8, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.rubin_state = type { i32, i32, i32, i32, %struct.pushpull, i32, [8 x i32] }
%struct.pushpull = type { ptr, i32, i32, i32 }

@jffs2_rubinmips_comp = internal global { %struct.jffs2_compressor, [36 x i8] } { %struct.jffs2_compressor { %struct.list_head zeroinitializer, i32 10, ptr @.str, i8 5, ptr null, ptr @jffs2_rubinmips_decompress, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@jffs2_dynrubin_comp = internal global { %struct.jffs2_compressor, [36 x i8] } { %struct.jffs2_compressor { %struct.list_head zeroinitializer, i32 20, ptr @.str.1, i8 3, ptr @jffs2_dynrubin_compress, ptr @jffs2_dynrubin_decompress, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rubinmips\00", [22 x i8] zeroinitializer }, align 32
@bits_mips = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 277, i32 249, i32 290, i32 267, i32 229, i32 341, i32 212, i32 241], [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dynrubin\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [21 x i8] c"jffs2_rubinmips_comp\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 408, i32 32 }
@___asan_gen_.5 = private unnamed_addr constant [20 x i8] c"jffs2_dynrubin_comp\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 431, i32 32 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 410, i32 10 }
@___asan_gen_.11 = private unnamed_addr constant [10 x i8] c"bits_mips\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 28, i32 12 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.15 = private constant [26 x i8] c"../fs/jffs2/compr_rubin.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 433, i32 10 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @jffs2_rubinmips_comp, ptr @jffs2_dynrubin_comp, ptr @.str, ptr @bits_mips, ptr @.str.1], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_rubinmips_comp to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_dynrubin_comp to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bits_mips to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_rubinmips_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @jffs2_register_compressor(ptr noundef nonnull @jffs2_rubinmips_comp) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_register_compressor(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jffs2_rubinmips_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @jffs2_unregister_compressor(ptr noundef nonnull @jffs2_rubinmips_comp) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_unregister_compressor(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_dynrubin_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @jffs2_register_compressor(ptr noundef nonnull @jffs2_dynrubin_comp) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jffs2_dynrubin_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @jffs2_unregister_compressor(ptr noundef nonnull @jffs2_dynrubin_comp) #5
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jffs2_rubinmips_decompress(ptr noundef %data_in, ptr nocapture noundef writeonly %cpage_out, i32 noundef %sourcelen, i32 noundef %dstlen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @rubin_do_decompress(i32 noundef 1043, ptr noundef nonnull @bits_mips, ptr noundef %data_in, ptr noundef %cpage_out, i32 noundef %sourcelen, i32 noundef %dstlen)
  ret i32 0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rubin_do_decompress(i32 noundef %bit_divider, ptr nocapture noundef readonly %bits, ptr noundef %cdata_in, ptr nocapture noundef writeonly %page_out, i32 noundef %srclen, i32 noundef %destlen) unnamed_addr #2 align 64 {
entry:
  %rs = alloca %struct.rubin_state, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %rs) #5
  %pp = getelementptr inbounds %struct.rubin_state, ptr %rs, i32 0, i32 4
  %0 = ptrtoint ptr %pp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %cdata_in, ptr %pp, align 4
  %buflen2.i = getelementptr inbounds %struct.rubin_state, ptr %rs, i32 0, i32 4, i32 1
  %1 = ptrtoint ptr %buflen2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %srclen, ptr %buflen2.i, align 4
  %ofs3.i = getelementptr inbounds %struct.rubin_state, ptr %rs, i32 0, i32 4, i32 2
  %reserve4.i = getelementptr inbounds %struct.rubin_state, ptr %rs, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %reserve4.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %reserve4.i, align 4
  %q.i.i = getelementptr inbounds %struct.rubin_state, ptr %rs, i32 0, i32 1
  %3 = ptrtoint ptr %q.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %q.i.i, align 4
  %4 = ptrtoint ptr %rs to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 65536, ptr %rs, align 4
  %bit_number.i.i = getelementptr inbounds %struct.rubin_state, ptr %rs, i32 0, i32 3
  %bit_divider.i.i = getelementptr inbounds %struct.rubin_state, ptr %rs, i32 0, i32 5
  %5 = ptrtoint ptr %bit_divider.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %bit_divider, ptr %bit_divider.i.i, align 4
  %6 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bits, align 4
  %arrayidx2.i.i = getelementptr inbounds %struct.rubin_state, ptr %rs, i32 0, i32 6, i32 0
  %8 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx2.i.i, align 4
  %arrayidx.1.i.i = getelementptr i32, ptr %bits, i32 1
  %9 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.1.i.i, align 4
  %arrayidx2.1.i.i = getelementptr inbounds %struct.rubin_state, ptr %rs, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %arrayidx2.1.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx2.1.i.i, align 4
  %arrayidx.2.i.i = getelementptr i32, ptr %bits, i32 2
  %12 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.2.i.i, align 4
  %arrayidx2.2.i.i = getelementptr inbounds %struct.rubin_state, ptr %rs, i32 0, i32 6, i32 2
  %14 = ptrtoint ptr %arrayidx2.2.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx2.2.i.i, align 4
  %arrayidx.3.i.i = getelementptr i32, ptr %bits, i32 3
  %15 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.3.i.i, align 4
  %arrayidx2.3.i.i = getelementptr inbounds %struct.rubin_state, ptr %rs, i32 0, i32 6, i32 3
  %17 = ptrtoint ptr %arrayidx2.3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx2.3.i.i, align 4
  %arrayidx.4.i.i = getelementptr i32, ptr %bits, i32 4
  %18 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.4.i.i, align 4
  %arrayidx2.4.i.i = getelementptr inbounds %struct.rubin_state, ptr %rs, i32 0, i32 6, i32 4
  %20 = ptrtoint ptr %arrayidx2.4.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx2.4.i.i, align 4
  %arrayidx.5.i.i = getelementptr i32, ptr %bits, i32 5
  %21 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.5.i.i, align 4
  %arrayidx2.5.i.i = getelementptr inbounds %struct.rubin_state, ptr %rs, i32 0, i32 6, i32 5
  %23 = ptrtoint ptr %arrayidx2.5.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.5.i.i, align 4
  %arrayidx.6.i.i = getelementptr i32, ptr %bits, i32 6
  %24 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.6.i.i, align 4
  %arrayidx2.6.i.i = getelementptr inbounds %struct.rubin_state, ptr %rs, i32 0, i32 6, i32 6
  %26 = ptrtoint ptr %arrayidx2.6.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx2.6.i.i, align 4
  %arrayidx.7.i.i = getelementptr i32, ptr %bits, i32 7
  %27 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.7.i.i, align 4
  %arrayidx2.7.i.i = getelementptr inbounds %struct.rubin_state, ptr %rs, i32 0, i32 6, i32 7
  %29 = ptrtoint ptr %arrayidx2.7.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx2.7.i.i, align 4
  %rec_q.i = getelementptr inbounds %struct.rubin_state, ptr %rs, i32 0, i32 2
  %30 = ptrtoint ptr %cdata_in to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %cdata_in, align 1
  %conv.i.i = zext i8 %31 to i32
  %arrayidx.i.i.8 = getelementptr i8, ptr %cdata_in, i32 1
  %32 = ptrtoint ptr %arrayidx.i.i.8 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i.i.8, align 1
  %conv.i.i.8 = zext i8 %33 to i32
  %34 = shl nuw nsw i32 %conv.i.i, 8
  %35 = and i32 %conv.i.i.8, 128
  %mul.i.9 = or i32 %34, %35
  %and3.i.i.9 = and i32 %conv.i.i.8, 64
  %add.i.9 = or i32 %and3.i.i.9, %mul.i.9
  %36 = and i32 %conv.i.i.8, 32
  %mul.i.11 = or i32 %add.i.9, %36
  %and3.i.i.11 = and i32 %conv.i.i.8, 16
  %add.i.11 = or i32 %and3.i.i.11, %mul.i.11
  %37 = and i32 %conv.i.i.8, 8
  %mul.i.13 = or i32 %add.i.11, %37
  %and3.i.i.13 = and i32 %conv.i.i.8, 4
  %add.i.13 = or i32 %and3.i.i.13, %mul.i.13
  %and3.i.i.14 = and i32 %conv.i.i.8, 2
  %add.i.14 = or i32 %and3.i.i.14, %add.i.13
  %and3.i.i.15 = and i32 %conv.i.i.8, 1
  %add.i.15 = or i32 %and3.i.i.15, %add.i.14
  %38 = ptrtoint ptr %rec_q.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add.i.15, ptr %rec_q.i, align 4
  %39 = ptrtoint ptr %ofs3.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 16, ptr %ofs3.i, align 4
  %40 = ptrtoint ptr %bit_number.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 17, ptr %bit_number.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %destlen)
  %cmp9.not = icmp eq i32 %destlen, 0
  br i1 %cmp9.not, label %entry.while.end_crit_edge, label %entry.for.body.i.preheader_crit_edge

entry.for.body.i.preheader_crit_edge:             ; preds = %entry
  br label %for.body.i.preheader

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

for.body.i.preheader:                             ; preds = %in_byte.exit.for.body.i.preheader_crit_edge, %entry.for.body.i.preheader_crit_edge
  %outpos.010 = phi i32 [ %inc, %in_byte.exit.for.body.i.preheader_crit_edge ], [ 0, %entry.for.body.i.preheader_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %decode.exit.i.for.body.i_crit_edge, %for.body.i.preheader
  %result.013.i = phi i32 [ %or.i, %decode.exit.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %i.012.i = phi i32 [ %inc.i4, %decode.exit.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr %struct.rubin_state, ptr %rs, i32 0, i32 6, i32 %i.012.i
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i, align 4
  %sub.i = sub i32 %bit_divider, %42
  %43 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rs, align 4
  %45 = ptrtoint ptr %q.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %q.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %46)
  %cmp.i.i = icmp ugt i32 %46, 32767
  %add.i.i = add i32 %46, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 32769, i32 %add.i.i)
  %cmp3.i.i = icmp ult i32 %add.i.i, 32769
  %or.cond.i.i = select i1 %cmp.i.i, i1 true, i1 %cmp3.i.i
  br i1 %or.cond.i.i, label %for.body.i.do.body.i.i.i_crit_edge, label %for.body.i.if.end.i.i_crit_edge

for.body.i.if.end.i.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

for.body.i.do.body.i.i.i_crit_edge:               ; preds = %for.body.i
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %for.body.i.do.body.i.i.i_crit_edge
  %p.addr.0.i.i.i = phi i32 [ %shl1.i.i.i, %do.body.i.i.i.do.body.i.i.i_crit_edge ], [ %44, %for.body.i.do.body.i.i.i_crit_edge ]
  %q.addr.0.i.i.i = phi i32 [ %shl.i.i.i, %do.body.i.i.i.do.body.i.i.i_crit_edge ], [ %46, %for.body.i.do.body.i.i.i_crit_edge ]
  %bits.0.i.i.i = phi i32 [ %inc.i.i.i, %do.body.i.i.i.do.body.i.i.i_crit_edge ], [ 0, %for.body.i.do.body.i.i.i_crit_edge ]
  %inc.i.i.i = add i32 %bits.0.i.i.i, 1
  %and.i.i.i = shl i32 %q.addr.0.i.i.i, 1
  %shl.i.i.i = and i32 %and.i.i.i, 65534
  %shl1.i.i.i = shl i32 %p.addr.0.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %shl.i.i.i)
  %cmp.i.i.i = icmp ugt i32 %shl.i.i.i, 32767
  %add.i.i.i = add i32 %shl.i.i.i, %shl1.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32769, i32 %add.i.i.i)
  %cmp2.i.i.i = icmp ult i32 %add.i.i.i, 32769
  %or.cond.i.i.i = select i1 %cmp.i.i.i, i1 true, i1 %cmp2.i.i.i
  br i1 %or.cond.i.i.i, label %do.body.i.i.i.do.body.i.i.i_crit_edge, label %do.end.i.i.i

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i.i

do.end.i.i.i:                                     ; preds = %do.body.i.i.i
  %47 = ptrtoint ptr %rs to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %shl1.i.i.i, ptr %rs, align 4
  %48 = ptrtoint ptr %q.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %shl.i.i.i, ptr %q.i.i, align 4
  %49 = ptrtoint ptr %bit_number.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bit_number.i.i, align 4
  %add5.i.i.i = add i32 %50, %inc.i.i.i
  store i32 %add5.i.i.i, ptr %bit_number.i.i, align 4
  %51 = ptrtoint ptr %rec_q.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rec_q.i, align 4
  %53 = ptrtoint ptr %ofs3.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %ofs.i.i.promoted8 = load i32, ptr %ofs3.i, align 4
  br label %do.body7.i.i.i

do.body7.i.i.i:                                   ; preds = %do.body7.i.i.i.do.body7.i.i.i_crit_edge, %do.end.i.i.i
  %54 = phi i32 [ %ofs.i.i.promoted8, %do.end.i.i.i ], [ %inc.i.i.i.i, %do.body7.i.i.i.do.body7.i.i.i_crit_edge ]
  %rec_q.0.i.i.i = phi i32 [ %52, %do.end.i.i.i ], [ %add10.i.i.i, %do.body7.i.i.i.do.body7.i.i.i_crit_edge ]
  %bits.1.i.i.i = phi i32 [ %inc.i.i.i, %do.end.i.i.i ], [ %dec.i.i.i, %do.body7.i.i.i.do.body7.i.i.i_crit_edge ]
  %shr.i.i.i.i = lshr i32 %54, 3
  %arrayidx.i.i.i.i = getelementptr i8, ptr %cdata_in, i32 %shr.i.i.i.i
  %55 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %56 to i32
  %and.i.i.i.i = and i32 %54, 7
  %sub.i.i.i.i = xor i32 %and.i.i.i.i, 7
  %shr2.i.i.i.i = lshr i32 %conv.i.i.i.i, %sub.i.i.i.i
  %and3.i.i.i.i = and i32 %shr2.i.i.i.i, 1
  %inc.i.i.i.i = add i32 %54, 1
  %and8.i.i.i = shl i32 %rec_q.0.i.i.i, 1
  %shl9.i.i.i = and i32 %and8.i.i.i, 65534
  %add10.i.i.i = or i32 %and3.i.i.i.i, %shl9.i.i.i
  %dec.i.i.i = add i32 %bits.1.i.i.i, -1
  %tobool.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %__do_decode.exit.i.i, label %do.body7.i.i.i.do.body7.i.i.i_crit_edge

do.body7.i.i.i.do.body7.i.i.i_crit_edge:          ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body7.i.i.i

__do_decode.exit.i.i:                             ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %57 = add i32 %inc.i.i.i, %ofs.i.i.promoted8
  %58 = ptrtoint ptr %ofs3.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %ofs3.i, align 4
  %59 = ptrtoint ptr %rec_q.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %add10.i.i.i, ptr %rec_q.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %__do_decode.exit.i.i, %for.body.i.if.end.i.i_crit_edge
  %60 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rs, align 4
  %mul.i.i = mul i32 %61, %sub.i
  %div.i.i = udiv i32 %mul.i.i, %bit_divider
  %62 = tail call i32 @llvm.smax.i32(i32 %div.i.i, i32 1) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %61)
  %cmp10.not.i.i = icmp ult i32 %62, %61
  %sub.i.i2 = add i32 %61, -1
  %spec.select.i.i = select i1 %cmp10.not.i.i, i32 %62, i32 %sub.i.i2
  %63 = ptrtoint ptr %q.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %q.i.i, align 4
  %add15.i.i = add i32 %spec.select.i.i, %64
  %65 = ptrtoint ptr %rec_q.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rec_q.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %add15.i.i)
  %cmp16.i.i = icmp uge i32 %66, %add15.i.i
  br i1 %cmp16.i.i, label %if.then20.i.i, label %if.end.i.i.decode.exit.i_crit_edge

if.end.i.i.decode.exit.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %decode.exit.i

if.then20.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %67 = ptrtoint ptr %q.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %add15.i.i, ptr %q.i.i, align 4
  %sub24.i.i = sub i32 %61, %spec.select.i.i
  br label %decode.exit.i

decode.exit.i:                                    ; preds = %if.then20.i.i, %if.end.i.i.decode.exit.i_crit_edge
  %i0.1.i.i = phi i32 [ %sub24.i.i, %if.then20.i.i ], [ %spec.select.i.i, %if.end.i.i.decode.exit.i_crit_edge ]
  %conv.i.i3 = zext i1 %cmp16.i.i to i32
  %68 = ptrtoint ptr %rs to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %i0.1.i.i, ptr %rs, align 4
  %shl.i = shl nuw i32 %conv.i.i3, %i.012.i
  %or.i = or i32 %shl.i, %result.013.i
  %inc.i4 = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i4, 8
  br i1 %exitcond.not.i, label %in_byte.exit, label %decode.exit.i.for.body.i_crit_edge

decode.exit.i.for.body.i_crit_edge:               ; preds = %decode.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

in_byte.exit:                                     ; preds = %decode.exit.i
  %conv = trunc i32 %or.i to i8
  %inc = add nuw i32 %outpos.010, 1
  %arrayidx = getelementptr i8, ptr %page_out, i32 %outpos.010
  %69 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv, ptr %arrayidx, align 1
  %exitcond.not = icmp eq i32 %inc, %destlen
  br i1 %exitcond.not, label %in_byte.exit.while.end_crit_edge, label %in_byte.exit.for.body.i.preheader_crit_edge

in_byte.exit.for.body.i.preheader_crit_edge:      ; preds = %in_byte.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.preheader

in_byte.exit.while.end_crit_edge:                 ; preds = %in_byte.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %in_byte.exit.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %rs) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jffs2_dynrubin_compress(ptr nocapture noundef readonly %data_in, ptr noundef %cpage_out, ptr nocapture noundef %sourcelen, ptr nocapture noundef %dstlen) #2 align 64 {
entry:
  %rs_copy.i.i = alloca %struct.rubin_state, align 4
  %rs.i = alloca %struct.rubin_state, align 4
  %histo = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %histo) #5
  %0 = ptrtoint ptr %sourcelen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sourcelen, align 4
  %2 = ptrtoint ptr %dstlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dstlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %3)
  %cmp = icmp ult i32 %3, 13
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = call ptr @memset(ptr %histo, i32 0, i32 256)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1158.not = icmp eq i32 %1, 0
  br i1 %cmp1158.not, label %if.end.for.body7.preheader_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.body7.preheader_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body7.preheader

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0159 = phi i32 [ %inc3, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %data_in, i32 %i.0159
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %idxprom = zext i8 %6 to i32
  %arrayidx2 = getelementptr [256 x i8], ptr %histo, i32 0, i32 %idxprom
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx2, align 1
  %inc = add i8 %8, 1
  store i8 %inc, ptr %arrayidx2, align 1
  %inc3 = add nuw i32 %i.0159, 1
  %exitcond.not = icmp eq i32 %inc3, %1
  br i1 %exitcond.not, label %for.body.for.body7.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.body7.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body7.preheader

for.body7.preheader:                              ; preds = %for.body.for.body7.preheader_crit_edge, %if.end.for.body7.preheader_crit_edge
  br label %for.body7

for.body7:                                        ; preds = %for.inc68.for.body7_crit_edge, %for.body7.preheader
  %bits.sroa.0.0 = phi i32 [ %bits.sroa.0.1, %for.inc68.for.body7_crit_edge ], [ 0, %for.body7.preheader ]
  %bits.sroa.9.0 = phi i32 [ %bits.sroa.9.1, %for.inc68.for.body7_crit_edge ], [ 0, %for.body7.preheader ]
  %bits.sroa.15.0 = phi i32 [ %bits.sroa.15.1, %for.inc68.for.body7_crit_edge ], [ 0, %for.body7.preheader ]
  %bits.sroa.21.0 = phi i32 [ %bits.sroa.21.1, %for.inc68.for.body7_crit_edge ], [ 0, %for.body7.preheader ]
  %bits.sroa.27.0 = phi i32 [ %bits.sroa.27.1, %for.inc68.for.body7_crit_edge ], [ 0, %for.body7.preheader ]
  %bits.sroa.33.0 = phi i32 [ %bits.sroa.33.1, %for.inc68.for.body7_crit_edge ], [ 0, %for.body7.preheader ]
  %bits.sroa.39.0 = phi i32 [ %bits.sroa.39.1, %for.inc68.for.body7_crit_edge ], [ 0, %for.body7.preheader ]
  %bits.sroa.45.0 = phi i32 [ %bits.sroa.45.1, %for.inc68.for.body7_crit_edge ], [ 0, %for.body7.preheader ]
  %i.1166 = phi i32 [ %inc69, %for.inc68.for.body7_crit_edge ], [ 0, %for.body7.preheader ]
  %9 = phi i32 [ %19, %for.inc68.for.body7_crit_edge ], [ 0, %for.body7.preheader ]
  %10 = phi i32 [ %22, %for.inc68.for.body7_crit_edge ], [ 0, %for.body7.preheader ]
  %11 = phi i32 [ %25, %for.inc68.for.body7_crit_edge ], [ 0, %for.body7.preheader ]
  %12 = phi i32 [ %28, %for.inc68.for.body7_crit_edge ], [ 0, %for.body7.preheader ]
  %13 = phi i32 [ %31, %for.inc68.for.body7_crit_edge ], [ 0, %for.body7.preheader ]
  %14 = phi i32 [ %34, %for.inc68.for.body7_crit_edge ], [ 0, %for.body7.preheader ]
  %15 = phi i32 [ %37, %for.inc68.for.body7_crit_edge ], [ 0, %for.body7.preheader ]
  %16 = phi i32 [ %40, %for.inc68.for.body7_crit_edge ], [ 0, %for.body7.preheader ]
  %and = and i32 %i.1166, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body7.if.end11_crit_edge, label %if.then8

for.body7.if.end11_crit_edge:                     ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then8:                                         ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx9 = getelementptr [256 x i8], ptr %histo, i32 0, i32 %i.1166
  %17 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx9, align 1
  %conv = zext i8 %18 to i32
  %add = add i32 %9, %conv
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %for.body7.if.end11_crit_edge
  %bits.sroa.45.1 = phi i32 [ %bits.sroa.45.0, %for.body7.if.end11_crit_edge ], [ %add, %if.then8 ]
  %19 = phi i32 [ %9, %for.body7.if.end11_crit_edge ], [ %add, %if.then8 ]
  %and12 = and i32 %i.1166, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.if.end19_crit_edge, label %if.then14

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx15 = getelementptr [256 x i8], ptr %histo, i32 0, i32 %i.1166
  %20 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %21 to i32
  %add18 = add i32 %10, %conv16
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %if.end11.if.end19_crit_edge
  %bits.sroa.39.1 = phi i32 [ %bits.sroa.39.0, %if.end11.if.end19_crit_edge ], [ %add18, %if.then14 ]
  %22 = phi i32 [ %10, %if.end11.if.end19_crit_edge ], [ %add18, %if.then14 ]
  %and20 = and i32 %i.1166, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.if.end27_crit_edge, label %if.then22

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx23 = getelementptr [256 x i8], ptr %histo, i32 0, i32 %i.1166
  %23 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %24 to i32
  %add26 = add i32 %11, %conv24
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %if.end19.if.end27_crit_edge
  %bits.sroa.33.1 = phi i32 [ %bits.sroa.33.0, %if.end19.if.end27_crit_edge ], [ %add26, %if.then22 ]
  %25 = phi i32 [ %11, %if.end19.if.end27_crit_edge ], [ %add26, %if.then22 ]
  %and28 = and i32 %i.1166, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end27.if.end35_crit_edge, label %if.then30

if.end27.if.end35_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx31 = getelementptr [256 x i8], ptr %histo, i32 0, i32 %i.1166
  %26 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %27 to i32
  %add34 = add i32 %12, %conv32
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %if.end27.if.end35_crit_edge
  %bits.sroa.27.1 = phi i32 [ %bits.sroa.27.0, %if.end27.if.end35_crit_edge ], [ %add34, %if.then30 ]
  %28 = phi i32 [ %12, %if.end27.if.end35_crit_edge ], [ %add34, %if.then30 ]
  %and36 = and i32 %i.1166, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end35.if.end43_crit_edge, label %if.then38

if.end35.if.end43_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx39 = getelementptr [256 x i8], ptr %histo, i32 0, i32 %i.1166
  %29 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %30 to i32
  %add42 = add i32 %13, %conv40
  br label %if.end43

if.end43:                                         ; preds = %if.then38, %if.end35.if.end43_crit_edge
  %bits.sroa.21.1 = phi i32 [ %bits.sroa.21.0, %if.end35.if.end43_crit_edge ], [ %add42, %if.then38 ]
  %31 = phi i32 [ %13, %if.end35.if.end43_crit_edge ], [ %add42, %if.then38 ]
  %and44 = and i32 %i.1166, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end43.if.end51_crit_edge, label %if.then46

if.end43.if.end51_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx47 = getelementptr [256 x i8], ptr %histo, i32 0, i32 %i.1166
  %32 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx47, align 1
  %conv48 = zext i8 %33 to i32
  %add50 = add i32 %14, %conv48
  br label %if.end51

if.end51:                                         ; preds = %if.then46, %if.end43.if.end51_crit_edge
  %bits.sroa.15.1 = phi i32 [ %bits.sroa.15.0, %if.end43.if.end51_crit_edge ], [ %add50, %if.then46 ]
  %34 = phi i32 [ %14, %if.end43.if.end51_crit_edge ], [ %add50, %if.then46 ]
  %and52 = and i32 %i.1166, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end51.if.end59_crit_edge, label %if.then54

if.end51.if.end59_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx55 = getelementptr [256 x i8], ptr %histo, i32 0, i32 %i.1166
  %35 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx55, align 1
  %conv56 = zext i8 %36 to i32
  %add58 = add i32 %15, %conv56
  br label %if.end59

if.end59:                                         ; preds = %if.then54, %if.end51.if.end59_crit_edge
  %bits.sroa.9.1 = phi i32 [ %bits.sroa.9.0, %if.end51.if.end59_crit_edge ], [ %add58, %if.then54 ]
  %37 = phi i32 [ %15, %if.end51.if.end59_crit_edge ], [ %add58, %if.then54 ]
  %and60 = and i32 %i.1166, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.end59.for.inc68_crit_edge, label %if.then62

if.end59.for.inc68_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc68

if.then62:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx63 = getelementptr [256 x i8], ptr %histo, i32 0, i32 %i.1166
  %38 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx63, align 1
  %conv64 = zext i8 %39 to i32
  %add66 = add i32 %16, %conv64
  br label %for.inc68

for.inc68:                                        ; preds = %if.then62, %if.end59.for.inc68_crit_edge
  %bits.sroa.0.1 = phi i32 [ %bits.sroa.0.0, %if.end59.for.inc68_crit_edge ], [ %add66, %if.then62 ]
  %40 = phi i32 [ %16, %if.end59.for.inc68_crit_edge ], [ %add66, %if.then62 ]
  %inc69 = add nuw nsw i32 %i.1166, 1
  %exitcond179.not = icmp eq i32 %inc69, 256
  br i1 %exitcond179.not, label %for.body74.preheader, label %for.inc68.for.body7_crit_edge

for.inc68.for.body7_crit_edge:                    ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body7

for.body74.preheader:                             ; preds = %for.inc68
  %mul = shl i32 %bits.sroa.0.1, 8
  %div = udiv i32 %mul, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %mul)
  %tobool78.not = icmp ugt i32 %1, %mul
  %41 = tail call i32 @llvm.smin.i32(i32 %div, i32 255)
  %42 = select i1 %tobool78.not, i32 1, i32 %41
  %conv89 = trunc i32 %42 to i8
  %43 = ptrtoint ptr %cpage_out to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv89, ptr %cpage_out, align 1
  %mul.1 = shl i32 %bits.sroa.9.1, 8
  %div.1 = udiv i32 %mul.1, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %mul.1)
  %tobool78.not.1 = icmp ugt i32 %1, %mul.1
  %44 = tail call i32 @llvm.smin.i32(i32 %div.1, i32 255)
  %45 = select i1 %tobool78.not.1, i32 1, i32 %44
  %conv89.1 = trunc i32 %45 to i8
  %arrayidx90.1 = getelementptr i8, ptr %cpage_out, i32 1
  %46 = ptrtoint ptr %arrayidx90.1 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv89.1, ptr %arrayidx90.1, align 1
  %mul.2 = shl i32 %bits.sroa.15.1, 8
  %div.2 = udiv i32 %mul.2, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %mul.2)
  %tobool78.not.2 = icmp ugt i32 %1, %mul.2
  %47 = tail call i32 @llvm.smin.i32(i32 %div.2, i32 255)
  %48 = select i1 %tobool78.not.2, i32 1, i32 %47
  %conv89.2 = trunc i32 %48 to i8
  %arrayidx90.2 = getelementptr i8, ptr %cpage_out, i32 2
  %49 = ptrtoint ptr %arrayidx90.2 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv89.2, ptr %arrayidx90.2, align 1
  %mul.3 = shl i32 %bits.sroa.21.1, 8
  %div.3 = udiv i32 %mul.3, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %mul.3)
  %tobool78.not.3 = icmp ugt i32 %1, %mul.3
  %50 = tail call i32 @llvm.smin.i32(i32 %div.3, i32 255)
  %51 = select i1 %tobool78.not.3, i32 1, i32 %50
  %conv89.3 = trunc i32 %51 to i8
  %arrayidx90.3 = getelementptr i8, ptr %cpage_out, i32 3
  %52 = ptrtoint ptr %arrayidx90.3 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv89.3, ptr %arrayidx90.3, align 1
  %mul.4 = shl i32 %bits.sroa.27.1, 8
  %div.4 = udiv i32 %mul.4, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %mul.4)
  %tobool78.not.4 = icmp ugt i32 %1, %mul.4
  %53 = tail call i32 @llvm.smin.i32(i32 %div.4, i32 255)
  %54 = select i1 %tobool78.not.4, i32 1, i32 %53
  %conv89.4 = trunc i32 %54 to i8
  %arrayidx90.4 = getelementptr i8, ptr %cpage_out, i32 4
  %55 = ptrtoint ptr %arrayidx90.4 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv89.4, ptr %arrayidx90.4, align 1
  %mul.5 = shl i32 %bits.sroa.33.1, 8
  %div.5 = udiv i32 %mul.5, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %mul.5)
  %tobool78.not.5 = icmp ugt i32 %1, %mul.5
  %56 = tail call i32 @llvm.smin.i32(i32 %div.5, i32 255)
  %57 = select i1 %tobool78.not.5, i32 1, i32 %56
  %conv89.5 = trunc i32 %57 to i8
  %arrayidx90.5 = getelementptr i8, ptr %cpage_out, i32 5
  %58 = ptrtoint ptr %arrayidx90.5 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv89.5, ptr %arrayidx90.5, align 1
  %mul.6 = shl i32 %bits.sroa.39.1, 8
  %div.6 = udiv i32 %mul.6, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %mul.6)
  %tobool78.not.6 = icmp ugt i32 %1, %mul.6
  %59 = tail call i32 @llvm.smin.i32(i32 %div.6, i32 255)
  %60 = select i1 %tobool78.not.6, i32 1, i32 %59
  %conv89.6 = trunc i32 %60 to i8
  %arrayidx90.6 = getelementptr i8, ptr %cpage_out, i32 6
  %61 = ptrtoint ptr %arrayidx90.6 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv89.6, ptr %arrayidx90.6, align 1
  %mul.7 = shl i32 %bits.sroa.45.1, 8
  %div.7 = udiv i32 %mul.7, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %mul.7)
  %tobool78.not.7 = icmp ugt i32 %1, %mul.7
  %62 = tail call i32 @llvm.smin.i32(i32 %div.7, i32 255)
  %63 = select i1 %tobool78.not.7, i32 1, i32 %62
  %conv89.7 = trunc i32 %63 to i8
  %arrayidx90.7 = getelementptr i8, ptr %cpage_out, i32 7
  %64 = ptrtoint ptr %arrayidx90.7 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv89.7, ptr %arrayidx90.7, align 1
  %add.ptr = getelementptr i8, ptr %cpage_out, i32 8
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %rs.i) #5
  %65 = getelementptr inbounds i8, ptr %rs.i, i32 8
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -1, ptr %65, align 4, !annotation !19
  %pp.i = getelementptr inbounds %struct.rubin_state, ptr %rs.i, i32 0, i32 4
  %sub = shl i32 %3, 3
  %mul.i = add i32 %sub, -64
  %67 = ptrtoint ptr %pp.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %add.ptr, ptr %pp.i, align 4
  %buflen2.i.i = getelementptr inbounds %struct.rubin_state, ptr %rs.i, i32 0, i32 4, i32 1
  %68 = ptrtoint ptr %buflen2.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %mul.i, ptr %buflen2.i.i, align 4
  %ofs3.i.i = getelementptr inbounds %struct.rubin_state, ptr %rs.i, i32 0, i32 4, i32 2
  %69 = ptrtoint ptr %ofs3.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %ofs3.i.i, align 4
  %reserve4.i.i = getelementptr inbounds %struct.rubin_state, ptr %rs.i, i32 0, i32 4, i32 3
  %70 = ptrtoint ptr %reserve4.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 32, ptr %reserve4.i.i, align 4
  %q.i.i = getelementptr inbounds %struct.rubin_state, ptr %rs.i, i32 0, i32 1
  %71 = ptrtoint ptr %q.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %q.i.i, align 4
  %72 = ptrtoint ptr %rs.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 65536, ptr %rs.i, align 4
  %bit_number.i.i = getelementptr inbounds %struct.rubin_state, ptr %rs.i, i32 0, i32 3
  %73 = ptrtoint ptr %bit_number.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %bit_number.i.i, align 4
  %bit_divider.i.i = getelementptr inbounds %struct.rubin_state, ptr %rs.i, i32 0, i32 5
  %74 = ptrtoint ptr %bit_divider.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 256, ptr %bit_divider.i.i, align 4
  %arrayidx2.i.i = getelementptr inbounds %struct.rubin_state, ptr %rs.i, i32 0, i32 6, i32 0
  %75 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %42, ptr %arrayidx2.i.i, align 4
  %arrayidx2.1.i.i = getelementptr inbounds %struct.rubin_state, ptr %rs.i, i32 0, i32 6, i32 1
  %76 = ptrtoint ptr %arrayidx2.1.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %45, ptr %arrayidx2.1.i.i, align 4
  %arrayidx2.2.i.i = getelementptr inbounds %struct.rubin_state, ptr %rs.i, i32 0, i32 6, i32 2
  %77 = ptrtoint ptr %arrayidx2.2.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %48, ptr %arrayidx2.2.i.i, align 4
  %arrayidx2.3.i.i = getelementptr inbounds %struct.rubin_state, ptr %rs.i, i32 0, i32 6, i32 3
  %78 = ptrtoint ptr %arrayidx2.3.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %51, ptr %arrayidx2.3.i.i, align 4
  %arrayidx2.4.i.i = getelementptr inbounds %struct.rubin_state, ptr %rs.i, i32 0, i32 6, i32 4
  %79 = ptrtoint ptr %arrayidx2.4.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %54, ptr %arrayidx2.4.i.i, align 4
  %arrayidx2.5.i.i = getelementptr inbounds %struct.rubin_state, ptr %rs.i, i32 0, i32 6, i32 5
  %80 = ptrtoint ptr %arrayidx2.5.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %57, ptr %arrayidx2.5.i.i, align 4
  %arrayidx2.6.i.i = getelementptr inbounds %struct.rubin_state, ptr %rs.i, i32 0, i32 6, i32 6
  %81 = ptrtoint ptr %arrayidx2.6.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %60, ptr %arrayidx2.6.i.i, align 4
  %arrayidx2.7.i.i = getelementptr inbounds %struct.rubin_state, ptr %rs.i, i32 0, i32 6, i32 7
  %82 = ptrtoint ptr %arrayidx2.7.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %63, ptr %arrayidx2.7.i.i, align 4
  br i1 %cmp1158.not, label %for.body74.preheader.while.end.i_crit_edge, label %for.body74.preheader.land.rhs.i_crit_edge

for.body74.preheader.land.rhs.i_crit_edge:        ; preds = %for.body74.preheader
  br label %land.rhs.i

for.body74.preheader.while.end.i_crit_edge:       ; preds = %for.body74.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %for.body74.preheader.land.rhs.i_crit_edge
  %pos.015.i = phi i32 [ %inc.i, %while.body.i.land.rhs.i_crit_edge ], [ 0, %for.body74.preheader.land.rhs.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %data_in, i32 %pos.015.i
  %83 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %rs_copy.i.i)
  %85 = call ptr @memcpy(ptr %rs_copy.i.i, ptr %rs.i, i32 68)
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %land.rhs.i
  %i.022.i.i = phi i32 [ 0, %land.rhs.i ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %byte.addr.021.i.i = phi i8 [ %84, %land.rhs.i ], [ %120, %if.end.i.i.for.body.i.i_crit_edge ]
  %86 = ptrtoint ptr %bit_divider.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %bit_divider.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.rubin_state, ptr %rs.i, i32 0, i32 6, i32 %i.022.i.i
  %88 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx.i.i, align 4
  %sub.i.i = sub i32 %87, %89
  %90 = and i8 %byte.addr.021.i.i, 1
  %91 = ptrtoint ptr %q.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %.pr.i.i.i = load i32, ptr %q.i.i, align 4
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %if.end.i.i.i, %for.body.i.i
  %92 = phi i32 [ %shl.i.i.i, %if.end.i.i.i ], [ %.pr.i.i.i, %for.body.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %92)
  %cmp.i.i.i = icmp ugt i32 %92, 32767
  br i1 %cmp.i.i.i, label %while.cond.i.i.i.while.body.i.i.i_crit_edge, label %lor.rhs.i.i.i

while.cond.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i.i

lor.rhs.i.i.i:                                    ; preds = %while.cond.i.i.i
  %93 = ptrtoint ptr %rs.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %rs.i, align 4
  %add.i.i.i = add i32 %94, %92
  call void @__sanitizer_cov_trace_const_cmp4(i32 32769, i32 %add.i.i.i)
  %cmp2.i.i.i = icmp ult i32 %add.i.i.i, 32769
  br i1 %cmp2.i.i.i, label %lor.rhs.i.i.i.while.body.i.i.i_crit_edge, label %while.end.i.i.i

lor.rhs.i.i.i.while.body.i.i.i_crit_edge:         ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %lor.rhs.i.i.i.while.body.i.i.i_crit_edge, %while.cond.i.i.i.while.body.i.i.i_crit_edge
  %95 = ptrtoint ptr %bit_number.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %bit_number.i.i, align 4
  %inc.i.i.i = add i32 %96, 1
  store i32 %inc.i.i.i, ptr %bit_number.i.i, align 4
  %97 = ptrtoint ptr %ofs3.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %ofs3.i.i, align 4
  %99 = ptrtoint ptr %buflen2.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %buflen2.i.i, align 4
  %101 = ptrtoint ptr %reserve4.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %reserve4.i.i, align 4
  %sub.i.i.i.i = sub i32 %100, %102
  %cmp.not.i.i.i.i = icmp ult i32 %98, %sub.i.i.i.i
  br i1 %cmp.not.i.i.i.i, label %if.end.i.i.i, label %out_byte.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %103 = and i32 %92, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool1.not.i.i.i.i = icmp eq i32 %103, 0
  %and8.i.i.i.i = and i32 %98, 7
  %sub9.i.i.i.i = xor i32 %and8.i.i.i.i, 7
  %shl10.i.i.i.i = shl nuw i32 1, %sub9.i.i.i.i
  %104 = ptrtoint ptr %pp.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pp.i, align 4
  %shr13.i.i.i.i = lshr i32 %98, 3
  %arrayidx14.i.i.i.i = getelementptr i8, ptr %105, i32 %shr13.i.i.i.i
  %106 = ptrtoint ptr %arrayidx14.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx14.i.i.i.i, align 1
  %108 = trunc i32 %shl10.i.i.i.i to i8
  %109 = xor i8 %108, -1
  %conv17.i.i.i.i = and i8 %107, %109
  %conv6.i.i.i.i = or i8 %107, %108
  %conv17.sink.i.i.i.i = select i1 %tobool1.not.i.i.i.i, i8 %conv17.i.i.i.i, i8 %conv6.i.i.i.i
  store i8 %conv17.sink.i.i.i.i, ptr %arrayidx14.i.i.i.i, align 1
  %110 = ptrtoint ptr %ofs3.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %ofs3.i.i, align 4
  %inc.i.i.i.i = add i32 %111, 1
  store i32 %inc.i.i.i.i, ptr %ofs3.i.i, align 4
  %112 = ptrtoint ptr %q.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %q.i.i, align 4
  %and6.i.i.i = shl i32 %113, 1
  %shl.i.i.i = and i32 %and6.i.i.i, 65534
  store i32 %shl.i.i.i, ptr %q.i.i, align 4
  %114 = ptrtoint ptr %rs.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %rs.i, align 4
  %shl9.i.i.i = shl i32 %115, 1
  store i32 %shl9.i.i.i, ptr %rs.i, align 4
  br label %while.cond.i.i.i

while.end.i.i.i:                                  ; preds = %lor.rhs.i.i.i
  %mul.i.i.i = mul i32 %94, %sub.i.i
  %div.i.i.i = udiv i32 %mul.i.i.i, %87
  %116 = tail call i32 @llvm.smax.i32(i32 %div.i.i.i, i32 1) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %116, i32 %94)
  %cmp16.not.i.i.i = icmp ult i32 %116, %94
  %sub.i.i.i = add i32 %94, -1
  %spec.select.i.i.i = select i1 %cmp16.not.i.i.i, i32 %116, i32 %sub.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %cmp22.i.i.i = icmp eq i8 %90, 0
  br i1 %cmp22.i.i.i, label %if.then23.i.i.i, label %if.else.i.i.i

if.then23.i.i.i:                                  ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %117 = ptrtoint ptr %rs.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %spec.select.i.i.i, ptr %rs.i, align 4
  br label %if.end.i.i

if.else.i.i.i:                                    ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub21.i.i.i = sub i32 %94, %spec.select.i.i.i
  %118 = ptrtoint ptr %rs.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %sub21.i.i.i, ptr %rs.i, align 4
  %add27.i.i.i = add i32 %spec.select.i.i.i, %92
  %119 = ptrtoint ptr %q.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %add27.i.i.i, ptr %q.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i.i, %if.then23.i.i.i
  %120 = lshr i8 %byte.addr.021.i.i, 1
  %inc.i.i = add nuw nsw i32 %i.022.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 8
  br i1 %exitcond.not.i.i, label %while.body.i, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

out_byte.exit.i:                                  ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %121 = call ptr @memcpy(ptr %rs.i, ptr %rs_copy.i.i, i32 68)
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %rs_copy.i.i)
  br label %while.end.i

while.body.i:                                     ; preds = %if.end.i.i
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %rs_copy.i.i)
  %inc.i = add nuw i32 %pos.015.i, 1
  %exitcond181.not = icmp eq i32 %inc.i, %1
  br i1 %exitcond181.not, label %while.body.i.while.end.i_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %out_byte.exit.i, %for.body74.preheader.while.end.i_crit_edge
  %pos.013.i = phi i32 [ %pos.015.i, %out_byte.exit.i ], [ 0, %for.body74.preheader.while.end.i_crit_edge ], [ %1, %while.body.i.while.end.i_crit_edge ]
  br label %for.body.i3.i

for.body.i3.i:                                    ; preds = %pushbit.exit.i.i.for.body.i3.i_crit_edge, %while.end.i
  %i.08.i.i = phi i32 [ 0, %while.end.i ], [ %inc.i6.i, %pushbit.exit.i.i.for.body.i3.i_crit_edge ]
  %122 = ptrtoint ptr %ofs3.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %ofs3.i.i, align 4
  %124 = ptrtoint ptr %buflen2.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %buflen2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %123, i32 %125)
  %cmp.not.i.i.i = icmp ult i32 %123, %125
  br i1 %cmp.not.i.i.i, label %if.end.i.i5.i, label %for.body.i3.i.pushbit.exit.i.i_crit_edge

for.body.i3.i.pushbit.exit.i.i_crit_edge:         ; preds = %for.body.i3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pushbit.exit.i.i

if.end.i.i5.i:                                    ; preds = %for.body.i3.i
  call void @__sanitizer_cov_trace_pc() #7
  %126 = ptrtoint ptr %q.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %q.i.i, align 4
  %128 = and i32 %127, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool1.not.i.i.i = icmp eq i32 %128, 0
  %and8.i.i.i = and i32 %123, 7
  %sub9.i.i.i = xor i32 %and8.i.i.i, 7
  %shl10.i.i.i = shl nuw i32 1, %sub9.i.i.i
  %129 = ptrtoint ptr %pp.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %pp.i, align 4
  %shr13.i.i.i = lshr i32 %123, 3
  %arrayidx14.i.i.i = getelementptr i8, ptr %130, i32 %shr13.i.i.i
  %131 = ptrtoint ptr %arrayidx14.i.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx14.i.i.i, align 1
  %133 = trunc i32 %shl10.i.i.i to i8
  %134 = xor i8 %133, -1
  %conv17.i.i.i = and i8 %132, %134
  %conv6.i.i.i = or i8 %132, %133
  %conv17.sink.i.i.i = select i1 %tobool1.not.i.i.i, i8 %conv17.i.i.i, i8 %conv6.i.i.i
  store i8 %conv17.sink.i.i.i, ptr %arrayidx14.i.i.i, align 1
  %135 = ptrtoint ptr %ofs3.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %ofs3.i.i, align 4
  %inc.i.i4.i = add i32 %136, 1
  store i32 %inc.i.i4.i, ptr %ofs3.i.i, align 4
  br label %pushbit.exit.i.i

pushbit.exit.i.i:                                 ; preds = %if.end.i.i5.i, %for.body.i3.i.pushbit.exit.i.i_crit_edge
  %137 = ptrtoint ptr %q.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %q.i.i, align 4
  %and2.i.i = shl i32 %138, 1
  %shl.i.i = and i32 %and2.i.i, 65534
  store i32 %shl.i.i, ptr %q.i.i, align 4
  %inc.i6.i = add nuw nsw i32 %i.08.i.i, 1
  %exitcond.not.i7.i = icmp eq i32 %inc.i6.i, 16
  br i1 %exitcond.not.i7.i, label %end_rubin.exit.i, label %pushbit.exit.i.i.for.body.i3.i_crit_edge

pushbit.exit.i.i.for.body.i3.i_crit_edge:         ; preds = %pushbit.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i3.i

end_rubin.exit.i:                                 ; preds = %pushbit.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pos.013.i)
  %cmp1.i = icmp slt i32 %pos.013.i, 0
  br i1 %cmp1.i, label %end_rubin.exit.i.rubin_do_compress.exit.thread_crit_edge, label %if.end.i

end_rubin.exit.i.rubin_do_compress.exit.thread_crit_edge: ; preds = %end_rubin.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rubin_do_compress.exit.thread

if.end.i:                                         ; preds = %end_rubin.exit.i
  %139 = ptrtoint ptr %ofs3.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %ofs3.i.i, align 4
  %add.i = add i32 %140, 7
  %div.i = sdiv i32 %add.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %pos.013.i)
  %cmp4.not.i = icmp slt i32 %div.i, %pos.013.i
  br i1 %cmp4.not.i, label %if.end97, label %if.end.i.rubin_do_compress.exit.thread_crit_edge

if.end.i.rubin_do_compress.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rubin_do_compress.exit.thread

rubin_do_compress.exit.thread:                    ; preds = %if.end.i.rubin_do_compress.exit.thread_crit_edge, %end_rubin.exit.i.rubin_do_compress.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %rs.i) #5
  br label %cleanup

if.end97:                                         ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %rs.i) #5
  %add98 = add nsw i32 %div.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.013.i, i32 %add98)
  %cmp99.not = icmp ugt i32 %pos.013.i, %add98
  br i1 %cmp99.not, label %if.end102, label %if.end97.cleanup_crit_edge

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end102:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #7
  %141 = ptrtoint ptr %sourcelen to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %pos.013.i, ptr %sourcelen, align 4
  %142 = ptrtoint ptr %dstlen to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %add98, ptr %dstlen, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end102, %if.end97.cleanup_crit_edge, %rubin_do_compress.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end102 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end97.cleanup_crit_edge ], [ -1, %rubin_do_compress.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %histo) #5
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jffs2_dynrubin_decompress(ptr noundef %data_in, ptr nocapture noundef writeonly %cpage_out, i32 noundef %sourcelen, i32 noundef %dstlen) #2 align 64 {
entry:
  %bits = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %bits) #5
  %0 = getelementptr inbounds [8 x i32], ptr %bits, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i32], ptr %bits, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i32], ptr %bits, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i32], ptr %bits, i32 0, i32 4
  %4 = getelementptr inbounds [8 x i32], ptr %bits, i32 0, i32 5
  %5 = getelementptr inbounds [8 x i32], ptr %bits, i32 0, i32 6
  %6 = getelementptr inbounds [8 x i32], ptr %bits, i32 0, i32 7
  %7 = ptrtoint ptr %data_in to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %data_in, align 1
  %conv = zext i8 %8 to i32
  %9 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %bits, align 4
  %arrayidx.1 = getelementptr i8, ptr %data_in, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = zext i8 %11 to i32
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv.1, ptr %0, align 4
  %arrayidx.2 = getelementptr i8, ptr %data_in, i32 2
  %13 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.2, align 1
  %conv.2 = zext i8 %14 to i32
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv.2, ptr %1, align 4
  %arrayidx.3 = getelementptr i8, ptr %data_in, i32 3
  %16 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.3, align 1
  %conv.3 = zext i8 %17 to i32
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv.3, ptr %2, align 4
  %arrayidx.4 = getelementptr i8, ptr %data_in, i32 4
  %19 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.4, align 1
  %conv.4 = zext i8 %20 to i32
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv.4, ptr %3, align 4
  %arrayidx.5 = getelementptr i8, ptr %data_in, i32 5
  %22 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.5, align 1
  %conv.5 = zext i8 %23 to i32
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv.5, ptr %4, align 4
  %arrayidx.6 = getelementptr i8, ptr %data_in, i32 6
  %25 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.6, align 1
  %conv.6 = zext i8 %26 to i32
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv.6, ptr %5, align 4
  %arrayidx.7 = getelementptr i8, ptr %data_in, i32 7
  %28 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.7, align 1
  %conv.7 = zext i8 %29 to i32
  %30 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv.7, ptr %6, align 4
  %add.ptr = getelementptr i8, ptr %data_in, i32 8
  %sub = add i32 %sourcelen, -8
  call fastcc void @rubin_do_decompress(i32 noundef 256, ptr noundef nonnull %bits, ptr noundef %add.ptr, ptr noundef %cpage_out, i32 noundef %sub, i32 noundef %dstlen)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %bits) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/jffs2/compr_rubin.c", i32 410, i32 10}
!2 = !{ptr @jffs2_rubinmips_comp, !3, !"jffs2_rubinmips_comp", i1 false, i1 false}
!3 = !{!"../fs/jffs2/compr_rubin.c", i32 408, i32 32}
!4 = !{ptr @bits_mips, !5, !"bits_mips", i1 false, i1 false}
!5 = !{!"../fs/jffs2/compr_rubin.c", i32 28, i32 12}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/jffs2/compr_rubin.c", i32 433, i32 10}
!8 = !{ptr @jffs2_dynrubin_comp, !9, !"jffs2_dynrubin_comp", i1 false, i1 false}
!9 = !{!"../fs/jffs2/compr_rubin.c", i32 431, i32 32}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{!"auto-init"}
