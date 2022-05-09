; ModuleID = '/llk/IR_all_yes/fs/jffs2/compr_rtime.c_pt.bc'
source_filename = "../fs/jffs2/compr_rtime.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.jffs2_compressor = type { %struct.list_head, i32, ptr, i8, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }

@jffs2_rtime_comp = internal global { %struct.jffs2_compressor, [36 x i8] } { %struct.jffs2_compressor { %struct.list_head zeroinitializer, i32 50, ptr @.str, i8 2, ptr @jffs2_rtime_compress, ptr @jffs2_rtime_decompress, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rtime\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"jffs2_rtime_comp\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 112, i32 32 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [26 x i8] c"../fs/jffs2/compr_rtime.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 114, i32 13 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @jffs2_rtime_comp, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_rtime_comp to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_rtime_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @jffs2_register_compressor(ptr noundef nonnull @jffs2_rtime_comp) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_register_compressor(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jffs2_rtime_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @jffs2_unregister_compressor(ptr noundef nonnull @jffs2_rtime_comp) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_unregister_compressor(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jffs2_rtime_compress(ptr nocapture noundef readonly %data_in, ptr nocapture noundef writeonly %cpage_out, ptr nocapture noundef %sourcelen, ptr nocapture noundef %dstlen) #2 align 64 {
entry:
  %positions = alloca [256 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %positions) #5
  %0 = ptrtoint ptr %dstlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dstlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp ult i32 %1, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = call ptr @memset(ptr %positions, i32 0, i32 512)
  %3 = ptrtoint ptr %sourcelen to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sourcelen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp176.not = icmp eq i32 %4, 0
  br i1 %cmp176.not, label %if.end.cleanup_crit_edge, label %if.end.land.rhs_crit_edge

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  br label %land.rhs

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.rhs:                                         ; preds = %while.end.land.rhs_crit_edge, %if.end.land.rhs_crit_edge
  %pos.078 = phi i32 [ %pos.1.lcssa, %while.end.land.rhs_crit_edge ], [ 0, %if.end.land.rhs_crit_edge ]
  %outpos.077 = phi i32 [ %inc31, %while.end.land.rhs_crit_edge ], [ 0, %if.end.land.rhs_crit_edge ]
  %5 = ptrtoint ptr %dstlen to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dstlen, align 4
  %sub = add i32 %6, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %outpos.077, i32 %sub)
  %cmp2.not = icmp ugt i32 %outpos.077, %sub
  br i1 %cmp2.not, label %land.rhs.while.end33_crit_edge, label %while.body

land.rhs.while.end33_crit_edge:                   ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end33

while.body:                                       ; preds = %land.rhs
  %arrayidx = getelementptr i8, ptr %data_in, i32 %pos.078
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %inc = add nuw i32 %pos.078, 1
  %inc4 = or i32 %outpos.077, 1
  %arrayidx5 = getelementptr i8, ptr %cpage_out, i32 %outpos.077
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %arrayidx5, align 1
  %idxprom = zext i8 %8 to i32
  %arrayidx6 = getelementptr [256 x i16], ptr %positions, i32 0, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx6, align 2
  %conv = zext i16 %11 to i32
  %conv7 = trunc i32 %inc to i16
  store i16 %conv7, ptr %arrayidx6, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv)
  %cmp1167 = icmp sgt i32 %inc, %conv
  br i1 %cmp1167, label %land.lhs.true.lr.ph, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

land.lhs.true.lr.ph:                              ; preds = %while.body
  %12 = ptrtoint ptr %sourcelen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sourcelen, align 4
  %umax = call i32 @llvm.umax.i32(i32 %13, i32 %inc)
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body27.land.lhs.true_crit_edge, %land.lhs.true.lr.ph
  %runlen.070 = phi i32 [ 0, %land.lhs.true.lr.ph ], [ %inc29, %while.body27.land.lhs.true_crit_edge ]
  %backpos.069 = phi i32 [ %conv, %land.lhs.true.lr.ph ], [ %inc18, %while.body27.land.lhs.true_crit_edge ]
  %pos.168 = phi i32 [ %inc, %land.lhs.true.lr.ph ], [ %inc28, %while.body27.land.lhs.true_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.168, i32 %13)
  %cmp13 = icmp ult i32 %pos.168, %13
  br i1 %cmp13, label %land.lhs.true15, label %land.lhs.true.while.end_crit_edge

land.lhs.true.while.end_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

land.lhs.true15:                                  ; preds = %land.lhs.true
  %arrayidx16 = getelementptr i8, ptr %data_in, i32 %pos.168
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx16, align 1
  %arrayidx19 = getelementptr i8, ptr %data_in, i32 %backpos.069
  %16 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx19, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %17)
  %cmp21 = icmp eq i8 %15, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %runlen.070)
  %cmp24 = icmp ult i32 %runlen.070, 255
  %or.cond = select i1 %cmp21, i1 %cmp24, i1 false
  br i1 %or.cond, label %while.body27, label %land.lhs.true15.while.end_crit_edge

land.lhs.true15.while.end_crit_edge:              ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body27:                                     ; preds = %land.lhs.true15
  %inc18 = add nuw nsw i32 %backpos.069, 1
  %inc28 = add nuw i32 %pos.168, 1
  %inc29 = add nuw nsw i32 %runlen.070, 1
  %cmp11 = icmp slt i32 %inc18, %inc28
  br i1 %cmp11, label %while.body27.land.lhs.true_crit_edge, label %while.body27.while.end_crit_edge

while.body27.while.end_crit_edge:                 ; preds = %while.body27
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body27.land.lhs.true_crit_edge:             ; preds = %while.body27
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

while.end:                                        ; preds = %while.body27.while.end_crit_edge, %land.lhs.true15.while.end_crit_edge, %land.lhs.true.while.end_crit_edge, %while.body.while.end_crit_edge
  %pos.1.lcssa = phi i32 [ %inc, %while.body.while.end_crit_edge ], [ %inc28, %while.body27.while.end_crit_edge ], [ %umax, %land.lhs.true.while.end_crit_edge ], [ %pos.168, %land.lhs.true15.while.end_crit_edge ]
  %runlen.0.lcssa = phi i32 [ 0, %while.body.while.end_crit_edge ], [ %inc29, %while.body27.while.end_crit_edge ], [ %runlen.070, %land.lhs.true.while.end_crit_edge ], [ %runlen.070, %land.lhs.true15.while.end_crit_edge ]
  %conv30 = trunc i32 %runlen.0.lcssa to i8
  %inc31 = add i32 %outpos.077, 2
  %arrayidx32 = getelementptr i8, ptr %cpage_out, i32 %inc4
  %18 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv30, ptr %arrayidx32, align 1
  %19 = ptrtoint ptr %sourcelen to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sourcelen, align 4
  %cmp1 = icmp ult i32 %pos.1.lcssa, %20
  br i1 %cmp1, label %while.end.land.rhs_crit_edge, label %while.end.while.end33_crit_edge

while.end.while.end33_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end33

while.end.land.rhs_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

while.end33:                                      ; preds = %while.end.while.end33_crit_edge, %land.rhs.while.end33_crit_edge
  %outpos.0.lcssa = phi i32 [ %outpos.077, %land.rhs.while.end33_crit_edge ], [ %inc31, %while.end.while.end33_crit_edge ]
  %pos.0.lcssa = phi i32 [ %pos.078, %land.rhs.while.end33_crit_edge ], [ %pos.1.lcssa, %while.end.while.end33_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %outpos.0.lcssa, i32 %pos.0.lcssa)
  %cmp34.not = icmp slt i32 %outpos.0.lcssa, %pos.0.lcssa
  br i1 %cmp34.not, label %if.end37, label %while.end33.cleanup_crit_edge

while.end33.cleanup_crit_edge:                    ; preds = %while.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end37:                                         ; preds = %while.end33
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %sourcelen to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %pos.0.lcssa, ptr %sourcelen, align 4
  %22 = ptrtoint ptr %dstlen to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %outpos.0.lcssa, ptr %dstlen, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %while.end33.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end37 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %while.end33.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %positions) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jffs2_rtime_decompress(ptr nocapture noundef readonly %data_in, ptr nocapture noundef %cpage_out, i32 noundef %srclen, i32 noundef %destlen) #2 align 64 {
entry:
  %positions = alloca [256 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %positions) #5
  %0 = call ptr @memset(ptr %positions, i32 0, i32 512)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %destlen)
  %cmp50.not = icmp eq i32 %destlen, 0
  br i1 %cmp50.not, label %entry.while.end24_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end24_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end24

while.body:                                       ; preds = %if.end23.while.body_crit_edge, %entry.while.body_crit_edge
  %outpos.052 = phi i32 [ %outpos.2, %if.end23.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %pos.051 = phi i32 [ %inc3, %if.end23.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %inc = or i32 %pos.051, 1
  %arrayidx = getelementptr i8, ptr %data_in, i32 %pos.051
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %inc1 = add nuw i32 %outpos.052, 1
  %arrayidx2 = getelementptr i8, ptr %cpage_out, i32 %outpos.052
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %arrayidx2, align 1
  %inc3 = add i32 %pos.051, 2
  %arrayidx4 = getelementptr i8, ptr %data_in, i32 %inc
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4, align 1
  %conv = zext i8 %5 to i32
  %idxprom = zext i8 %2 to i32
  %arrayidx5 = getelementptr [256 x i16], ptr %positions, i32 0, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx5, align 2
  %conv6 = zext i16 %7 to i32
  %conv7 = trunc i32 %inc1 to i16
  store i16 %conv7, ptr %arrayidx5, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %while.body.if.end23_crit_edge, label %if.then

while.body.if.end23_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then:                                          ; preds = %while.body
  %add = add nuw nsw i32 %conv6, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %inc1)
  %cmp10.not = icmp slt i32 %add, %inc1
  br i1 %cmp10.not, label %if.else, label %if.then.while.body15_crit_edge

if.then.while.body15_crit_edge:                   ; preds = %if.then
  br label %while.body15

while.body15:                                     ; preds = %while.body15.while.body15_crit_edge, %if.then.while.body15_crit_edge
  %repeat.049 = phi i32 [ %dec, %while.body15.while.body15_crit_edge ], [ %conv, %if.then.while.body15_crit_edge ]
  %backoffs.048 = phi i32 [ %inc16, %while.body15.while.body15_crit_edge ], [ %conv6, %if.then.while.body15_crit_edge ]
  %outpos.147 = phi i32 [ %inc18, %while.body15.while.body15_crit_edge ], [ %inc1, %if.then.while.body15_crit_edge ]
  %inc16 = add nuw nsw i32 %backoffs.048, 1
  %arrayidx17 = getelementptr i8, ptr %cpage_out, i32 %backoffs.048
  %8 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx17, align 1
  %inc18 = add i32 %outpos.147, 1
  %arrayidx19 = getelementptr i8, ptr %cpage_out, i32 %outpos.147
  %10 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %arrayidx19, align 1
  %dec = add nsw i32 %repeat.049, -1
  %tobool14.not = icmp eq i32 %dec, 0
  br i1 %tobool14.not, label %while.body15.if.end23_crit_edge, label %while.body15.while.body15_crit_edge

while.body15.while.body15_crit_edge:              ; preds = %while.body15
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body15

while.body15.if.end23_crit_edge:                  ; preds = %while.body15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx20 = getelementptr i8, ptr %cpage_out, i32 %inc1
  %arrayidx21 = getelementptr i8, ptr %cpage_out, i32 %conv6
  %11 = call ptr @memcpy(ptr %arrayidx20, ptr %arrayidx21, i32 %conv)
  %add22 = add i32 %inc1, %conv
  br label %if.end23

if.end23:                                         ; preds = %if.else, %while.body15.if.end23_crit_edge, %while.body.if.end23_crit_edge
  %outpos.2 = phi i32 [ %add22, %if.else ], [ %inc1, %while.body.if.end23_crit_edge ], [ %inc18, %while.body15.if.end23_crit_edge ]
  %cmp = icmp ult i32 %outpos.2, %destlen
  br i1 %cmp, label %if.end23.while.body_crit_edge, label %if.end23.while.end24_crit_edge

if.end23.while.end24_crit_edge:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end24

if.end23.while.body_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end24:                                      ; preds = %if.end23.while.end24_crit_edge, %entry.while.end24_crit_edge
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %positions) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

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
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/jffs2/compr_rtime.c", i32 114, i32 13}
!2 = !{ptr @jffs2_rtime_comp, !3, !"jffs2_rtime_comp", i1 false, i1 false}
!3 = !{!"../fs/jffs2/compr_rtime.c", i32 112, i32 32}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
