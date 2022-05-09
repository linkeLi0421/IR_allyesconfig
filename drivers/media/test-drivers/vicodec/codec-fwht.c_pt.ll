; ModuleID = '/llk/IR_all_yes/drivers/media/test-drivers/vicodec/codec-fwht.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vicodec/codec-fwht.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fwht_cframe = type { i16, i16, ptr, [64 x i16], [64 x i16], [64 x i16], i32 }
%struct.fwht_raw_frame = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@quant_table = internal constant { [64 x i32], [64 x i8] } { [64 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 6, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 6, i32 6, i32 2, i32 2, i32 2, i32 2, i32 3, i32 6, i32 6, i32 6, i32 2, i32 2, i32 2, i32 3, i32 6, i32 6, i32 6, i32 6, i32 2, i32 2, i32 3, i32 6, i32 6, i32 6, i32 6, i32 8], [64 x i8] zeroinitializer }, align 32
@quant_table_p = internal constant { [64 x i32], [64 x i8] } { [64 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 6, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 6, i32 6, i32 3, i32 3, i32 3, i32 3, i32 3, i32 6, i32 6, i32 9, i32 3, i32 3, i32 3, i32 3, i32 6, i32 6, i32 9, i32 9, i32 3, i32 3, i32 3, i32 6, i32 6, i32 9, i32 9, i32 10], [64 x i8] zeroinitializer }, align 32
@zigzag = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\00\01\08\02\09\10\03\0A\11\18\04\0B\12\19 \05\0C\13\1A!(\06\0D\14\1B\22)0\07\0E\15\1C#*18\0F\16\1D$+29\17\1E%,3:\1F&-4;'.5</6=7>?", [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 4, i64 0, i64 15]
@___asan_gen_.2 = private unnamed_addr constant [12 x i8] c"quant_table\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 174, i32 18 }
@___asan_gen_.5 = private unnamed_addr constant [14 x i8] c"quant_table_p\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 185, i32 18 }
@___asan_gen_.8 = private unnamed_addr constant [7 x i8] c"zigzag\00", align 1
@___asan_gen_.9 = private constant [51 x i8] c"../drivers/media/test-drivers/vicodec/codec-fwht.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 32, i32 22 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @quant_table, ptr @quant_table_p, ptr @zigzag], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @quant_table to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @quant_table_p to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zigzag to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fwht_encode_frame(ptr nocapture noundef readonly %frm, ptr nocapture noundef readonly %ref_frm, ptr nocapture noundef %cf, i1 noundef zeroext %is_intra, i1 noundef zeroext %next_is_intra, i32 noundef %width, i32 noundef %height, i32 noundef %stride, i32 noundef %chroma_stride) local_unnamed_addr #0 align 64 {
entry:
  %rlco = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %height, %width
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rlco) #8
  %rlc_data = getelementptr inbounds %struct.fwht_cframe, ptr %cf, i32 0, i32 2
  %0 = ptrtoint ptr %rlc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rlc_data, align 4
  %2 = ptrtoint ptr %rlco to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %rlco, align 4
  %div121 = lshr i32 %mul, 1
  %add.ptr = getelementptr i16, ptr %1, i32 %div121
  %add.ptr2 = getelementptr i16, ptr %add.ptr, i32 -256
  %luma = getelementptr inbounds %struct.fwht_raw_frame, ptr %frm, i32 0, i32 6
  %3 = ptrtoint ptr %luma to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %luma, align 4
  %luma3 = getelementptr inbounds %struct.fwht_raw_frame, ptr %ref_frm, i32 0, i32 6
  %5 = ptrtoint ptr %luma3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %luma3, align 4
  %luma_alpha_step = getelementptr inbounds %struct.fwht_raw_frame, ptr %frm, i32 0, i32 2
  %7 = ptrtoint ptr %luma_alpha_step to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %luma_alpha_step, align 4
  %call = call fastcc i32 @encode_plane(ptr noundef %4, ptr noundef %6, ptr noundef nonnull %rlco, ptr noundef %add.ptr2, ptr noundef %cf, i32 noundef %height, i32 noundef %width, i32 noundef %stride, i32 noundef %8, i1 noundef zeroext %is_intra, i1 noundef zeroext %next_is_intra)
  %and = shl i32 %call, 1
  %9 = and i32 %and, 4
  %call.masked = and i32 %call, -3
  %and6 = or i32 %9, %call.masked
  %components_num = getelementptr inbounds %struct.fwht_raw_frame, ptr %frm, i32 0, i32 4
  %10 = ptrtoint ptr %components_num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %components_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp = icmp ugt i32 %11, 2
  br i1 %cmp, label %if.end40, label %entry.if.end59_crit_edge

entry.if.end59_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.end40:                                         ; preds = %entry
  %height_div = getelementptr inbounds %struct.fwht_raw_frame, ptr %frm, i32 0, i32 1
  %12 = ptrtoint ptr %height_div to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height_div, align 4
  %div8 = udiv i32 %height, %13
  %14 = ptrtoint ptr %frm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %frm, align 4
  %div9 = udiv i32 %width, %15
  %mul10 = mul i32 %div9, %div8
  %16 = ptrtoint ptr %rlco to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rlco, align 4
  %div11122 = lshr i32 %mul10, 1
  %add.ptr12 = getelementptr i16, ptr %17, i32 %div11122
  %add.ptr13 = getelementptr i16, ptr %add.ptr12, i32 -256
  %cb = getelementptr inbounds %struct.fwht_raw_frame, ptr %frm, i32 0, i32 7
  %18 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cb, align 4
  %cb14 = getelementptr inbounds %struct.fwht_raw_frame, ptr %ref_frm, i32 0, i32 7
  %20 = ptrtoint ptr %cb14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cb14, align 4
  %chroma_step = getelementptr inbounds %struct.fwht_raw_frame, ptr %frm, i32 0, i32 3
  %22 = ptrtoint ptr %chroma_step to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %chroma_step, align 4
  %call17 = call fastcc i32 @encode_plane(ptr noundef %19, ptr noundef %21, ptr noundef nonnull %rlco, ptr noundef %add.ptr13, ptr noundef %cf, i32 noundef %div8, i32 noundef %div9, i32 noundef %chroma_stride, i32 noundef %23, i1 noundef zeroext %is_intra, i1 noundef zeroext %next_is_intra)
  %and19 = shl i32 %call17, 2
  %24 = and i32 %and19, 8
  %or18.masked = or i32 %call17, %and6
  %and24 = or i32 %or18.masked, %24
  %25 = ptrtoint ptr %rlco to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rlco, align 4
  %add.ptr26 = getelementptr i16, ptr %26, i32 %div11122
  %add.ptr27 = getelementptr i16, ptr %add.ptr26, i32 -256
  %cr = getelementptr inbounds %struct.fwht_raw_frame, ptr %frm, i32 0, i32 8
  %27 = ptrtoint ptr %cr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cr, align 4
  %cr28 = getelementptr inbounds %struct.fwht_raw_frame, ptr %ref_frm, i32 0, i32 8
  %29 = ptrtoint ptr %cr28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cr28, align 4
  %31 = ptrtoint ptr %chroma_step to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %chroma_step, align 4
  %call32 = call fastcc i32 @encode_plane(ptr noundef %28, ptr noundef %30, ptr noundef nonnull %rlco, ptr noundef %add.ptr27, ptr noundef %cf, i32 noundef %div8, i32 noundef %div9, i32 noundef %chroma_stride, i32 noundef %32, i1 noundef zeroext %is_intra, i1 noundef zeroext %next_is_intra)
  %or33 = or i32 %and24, %call32
  %and34 = shl i32 %call32, 3
  %33 = and i32 %and34, 16
  %or33.masked = and i32 %or33, -3
  %and39 = or i32 %33, %or33.masked
  %34 = ptrtoint ptr %components_num to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pr = load i32, ptr %components_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr)
  %cmp42 = icmp eq i32 %.pr, 4
  br i1 %cmp42, label %if.then43, label %if.end40.if.end59_crit_edge

if.end40.if.end59_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %rlco to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rlco, align 4
  %add.ptr45 = getelementptr i16, ptr %36, i32 %div121
  %add.ptr46 = getelementptr i16, ptr %add.ptr45, i32 -256
  %alpha = getelementptr inbounds %struct.fwht_raw_frame, ptr %frm, i32 0, i32 9
  %37 = ptrtoint ptr %alpha to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %alpha, align 4
  %alpha47 = getelementptr inbounds %struct.fwht_raw_frame, ptr %ref_frm, i32 0, i32 9
  %39 = ptrtoint ptr %alpha47 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %alpha47, align 4
  %41 = ptrtoint ptr %luma_alpha_step to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %luma_alpha_step, align 4
  %call51 = call fastcc i32 @encode_plane(ptr noundef %38, ptr noundef %40, ptr noundef nonnull %rlco, ptr noundef %add.ptr46, ptr noundef %cf, i32 noundef %height, i32 noundef %width, i32 noundef %stride, i32 noundef %42, i1 noundef zeroext %is_intra, i1 noundef zeroext %next_is_intra)
  %and53 = shl i32 %call51, 4
  %43 = and i32 %and53, 32
  %call51.masked = and i32 %call51, -3
  %or52.masked = or i32 %call51.masked, %and39
  %and58 = or i32 %or52.masked, %43
  br label %if.end59

if.end59:                                         ; preds = %if.then43, %if.end40.if.end59_crit_edge, %entry.if.end59_crit_edge
  %encoding.5 = phi i32 [ %and58, %if.then43 ], [ %and39, %if.end40.if.end59_crit_edge ], [ %and6, %entry.if.end59_crit_edge ]
  %44 = ptrtoint ptr %rlco to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rlco, align 4
  %46 = ptrtoint ptr %rlc_data to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rlc_data, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %45 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %47 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %size62 = getelementptr inbounds %struct.fwht_cframe, ptr %cf, i32 0, i32 6
  %48 = ptrtoint ptr %size62 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %sub.ptr.sub, ptr %size62, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rlco) #8
  ret i32 %encoding.5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @encode_plane(ptr noundef %input, ptr nocapture noundef %refp, ptr nocapture noundef %rlco, ptr noundef readnone %rlco_max, ptr nocapture noundef %cf, i32 noundef %height, i32 noundef %width, i32 noundef %stride, i32 noundef %input_step, i1 noundef zeroext %is_intra, i1 noundef zeroext %next_is_intra) unnamed_addr #0 align 64 {
entry:
  %deltablock = alloca [64 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rlco to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rlco, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %deltablock) #8
  %2 = call ptr @memset(ptr %deltablock, i32 255, i32 128)
  %sub = add i32 %width, -1
  %or = or i32 %sub, 7
  %add = add i32 %or, 1
  %sub2 = add i32 %height, -1
  %or3 = or i32 %sub2, 7
  %add4 = add i32 %or3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add4)
  %cmp337.not = icmp eq i32 %add4, 0
  br i1 %cmp337.not, label %entry.cleanup108_crit_edge, label %for.body.lr.ph

entry.cleanup108_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup108

for.body.lr.ph:                                   ; preds = %entry
  %div182 = lshr exact i32 %add4, 3
  %mul = shl i32 %stride, 3
  %div7183 = lshr exact i32 %add, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp8327.not = icmp eq i32 %add, 0
  %coeffs18 = getelementptr inbounds %struct.fwht_cframe, ptr %cf, i32 0, i32 3
  %de_coeffs22 = getelementptr inbounds %struct.fwht_cframe, ptr %cf, i32 0, i32 4
  %p_frame_qp = getelementptr inbounds %struct.fwht_cframe, ptr %cf, i32 0, i32 1
  %de_fwht = getelementptr inbounds %struct.fwht_cframe, ptr %cf, i32 0, i32 5
  %mul38 = shl i32 %input_step, 3
  %umax = call i32 @llvm.umax.i32(i32 %div7183, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc79.for.body_crit_edge, %for.body.lr.ph
  %j.0341 = phi i32 [ 0, %for.body.lr.ph ], [ %inc80, %for.inc79.for.body_crit_edge ]
  %last_size.0340 = phi i32 [ 0, %for.body.lr.ph ], [ %last_size.1.lcssa, %for.inc79.for.body_crit_edge ]
  %encoding.0339 = phi i32 [ 0, %for.body.lr.ph ], [ %encoding.1.lcssa, %for.inc79.for.body_crit_edge ]
  %refp.addr.0338 = phi ptr [ %refp, %for.body.lr.ph ], [ %refp.addr.1.lcssa, %for.inc79.for.body_crit_edge ]
  br i1 %cmp8327.not, label %for.body.for.inc79_crit_edge, label %for.body9.preheader

for.body.for.inc79_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc79

for.body9.preheader:                              ; preds = %for.body
  %mul5 = mul i32 %mul, %j.0341
  %add.ptr = getelementptr i8, ptr %input, i32 %mul5
  br label %for.body9

for.cond6:                                        ; preds = %if.end72
  %inc = add nuw nsw i32 %i.0334, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.cond6.for.inc79_crit_edge, label %for.cond6.for.body9_crit_edge

for.cond6.for.body9_crit_edge:                    ; preds = %for.cond6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body9

for.cond6.for.inc79_crit_edge:                    ; preds = %for.cond6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc79

for.body9:                                        ; preds = %for.cond6.for.body9_crit_edge, %for.body9.preheader
  %i.0334 = phi i32 [ %inc, %for.cond6.for.body9_crit_edge ], [ 0, %for.body9.preheader ]
  %last_size.1333 = phi i32 [ %call43, %for.cond6.for.body9_crit_edge ], [ %last_size.0340, %for.body9.preheader ]
  %encoding.1332 = phi i32 [ %encoding.2368, %for.cond6.for.body9_crit_edge ], [ %encoding.0339, %for.body9.preheader ]
  %input.addr.0330 = phi ptr [ %add.ptr39, %for.cond6.for.body9_crit_edge ], [ %add.ptr, %for.body9.preheader ]
  %refp.addr.1328 = phi ptr [ %add.ptr40, %for.cond6.for.body9_crit_edge ], [ %refp.addr.0338, %for.body9.preheader ]
  br i1 %is_intra, label %for.body9.if.then11_crit_edge, label %if.end

for.body9.if.then11_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

if.end:                                           ; preds = %for.body9
  %call = call fastcc i32 @decide_blocktype(ptr noundef %input.addr.0330, ptr noundef %refp.addr.1328, ptr noundef nonnull %deltablock, i32 noundef %stride, i32 noundef %input_step)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp10 = icmp eq i32 %call, 1
  br i1 %cmp10, label %if.end.if.then11_crit_edge, label %if.else

if.end.if.then11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

if.then11:                                        ; preds = %if.end.if.then11_crit_edge, %for.body9.if.then11_crit_edge
  tail call fastcc void @fwht(ptr noundef %input.addr.0330, ptr noundef %coeffs18, i32 noundef %stride, i32 noundef %input_step)
  %3 = ptrtoint ptr %cf to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %cf, align 4
  %conv6.i = zext i16 %4 to i32
  %sub.i = sub nsw i32 0, %conv6.i
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc.7.i.for.cond1.preheader.i_crit_edge, %if.then11
  %j.042.i = phi i32 [ 0, %if.then11 ], [ %inc18.i, %for.inc.7.i.for.cond1.preheader.i_crit_edge ]
  %quant.041.i = phi ptr [ @quant_table, %if.then11 ], [ %incdec.ptr.7.i, %for.inc.7.i.for.cond1.preheader.i_crit_edge ]
  %coeff.addr.040.i = phi ptr [ %coeffs18, %if.then11 ], [ %incdec.ptr15.7.i, %for.inc.7.i.for.cond1.preheader.i_crit_edge ]
  %de_coeff.addr.039.i = phi ptr [ %de_coeffs22, %if.then11 ], [ %incdec.ptr16.7.i, %for.inc.7.i.for.cond1.preheader.i_crit_edge ]
  %5 = ptrtoint ptr %quant.041.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %quant.041.i, align 4
  %7 = ptrtoint ptr %coeff.addr.040.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %coeff.addr.040.i, align 2
  %conv.i = sext i16 %8 to i32
  %shr.i = ashr i32 %conv.i, %6
  %conv4.i = trunc i32 %shr.i to i16
  store i16 %conv4.i, ptr %coeff.addr.040.i, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %sub.i)
  %cmp7.not.i = icmp slt i32 %shr.i, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %conv6.i)
  %cmp11.not.i = icmp sgt i32 %shr.i, %conv6.i
  %or.cond.i = or i1 %cmp7.not.i, %cmp11.not.i
  br i1 %or.cond.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %de_coeff.addr.039.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %de_coeff.addr.039.i, align 2
  %10 = ptrtoint ptr %coeff.addr.040.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %coeff.addr.040.i, align 2
  br label %for.inc.i

if.else.i:                                        ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %quant.041.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %quant.041.i, align 4
  %shl.i = shl i32 %shr.i, %12
  %conv14.i = trunc i32 %shl.i to i16
  %13 = ptrtoint ptr %de_coeff.addr.039.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv14.i, ptr %de_coeff.addr.039.i, align 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then.i
  %incdec.ptr.i = getelementptr i32, ptr %quant.041.i, i32 1
  %incdec.ptr15.i = getelementptr i16, ptr %coeff.addr.040.i, i32 1
  %incdec.ptr16.i = getelementptr i16, ptr %de_coeff.addr.039.i, i32 1
  %14 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %incdec.ptr.i, align 4
  %16 = ptrtoint ptr %incdec.ptr15.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %incdec.ptr15.i, align 2
  %conv.1.i = sext i16 %17 to i32
  %shr.1.i = ashr i32 %conv.1.i, %15
  %conv4.1.i = trunc i32 %shr.1.i to i16
  store i16 %conv4.1.i, ptr %incdec.ptr15.i, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.1.i, i32 %sub.i)
  %cmp7.not.1.i = icmp slt i32 %shr.1.i, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.1.i, i32 %conv6.i)
  %cmp11.not.1.i = icmp sgt i32 %shr.1.i, %conv6.i
  %or.cond.1.i = or i1 %cmp7.not.1.i, %cmp11.not.1.i
  br i1 %or.cond.1.i, label %if.else.1.i, label %if.then.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %incdec.ptr16.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %incdec.ptr16.i, align 2
  %19 = ptrtoint ptr %incdec.ptr15.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %incdec.ptr15.i, align 2
  br label %for.inc.1.i

if.else.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %incdec.ptr.i, align 4
  %shl.1.i = shl i32 %shr.1.i, %21
  %conv14.1.i = trunc i32 %shl.1.i to i16
  %22 = ptrtoint ptr %incdec.ptr16.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv14.1.i, ptr %incdec.ptr16.i, align 2
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.else.1.i, %if.then.1.i
  %incdec.ptr.1.i = getelementptr i32, ptr %quant.041.i, i32 2
  %incdec.ptr15.1.i = getelementptr i16, ptr %coeff.addr.040.i, i32 2
  %incdec.ptr16.1.i = getelementptr i16, ptr %de_coeff.addr.039.i, i32 2
  %23 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %incdec.ptr.1.i, align 4
  %25 = ptrtoint ptr %incdec.ptr15.1.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %incdec.ptr15.1.i, align 2
  %conv.2.i = sext i16 %26 to i32
  %shr.2.i = ashr i32 %conv.2.i, %24
  %conv4.2.i = trunc i32 %shr.2.i to i16
  store i16 %conv4.2.i, ptr %incdec.ptr15.1.i, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.2.i, i32 %sub.i)
  %cmp7.not.2.i = icmp slt i32 %shr.2.i, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.2.i, i32 %conv6.i)
  %cmp11.not.2.i = icmp sgt i32 %shr.2.i, %conv6.i
  %or.cond.2.i = or i1 %cmp7.not.2.i, %cmp11.not.2.i
  br i1 %or.cond.2.i, label %if.else.2.i, label %if.then.2.i

if.then.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %incdec.ptr16.1.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %incdec.ptr16.1.i, align 2
  %28 = ptrtoint ptr %incdec.ptr15.1.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %incdec.ptr15.1.i, align 2
  br label %for.inc.2.i

if.else.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %incdec.ptr.1.i, align 4
  %shl.2.i = shl i32 %shr.2.i, %30
  %conv14.2.i = trunc i32 %shl.2.i to i16
  %31 = ptrtoint ptr %incdec.ptr16.1.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv14.2.i, ptr %incdec.ptr16.1.i, align 2
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.else.2.i, %if.then.2.i
  %incdec.ptr.2.i = getelementptr i32, ptr %quant.041.i, i32 3
  %incdec.ptr15.2.i = getelementptr i16, ptr %coeff.addr.040.i, i32 3
  %incdec.ptr16.2.i = getelementptr i16, ptr %de_coeff.addr.039.i, i32 3
  %32 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %incdec.ptr.2.i, align 4
  %34 = ptrtoint ptr %incdec.ptr15.2.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %incdec.ptr15.2.i, align 2
  %conv.3.i = sext i16 %35 to i32
  %shr.3.i = ashr i32 %conv.3.i, %33
  %conv4.3.i = trunc i32 %shr.3.i to i16
  store i16 %conv4.3.i, ptr %incdec.ptr15.2.i, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.3.i, i32 %sub.i)
  %cmp7.not.3.i = icmp slt i32 %shr.3.i, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.3.i, i32 %conv6.i)
  %cmp11.not.3.i = icmp sgt i32 %shr.3.i, %conv6.i
  %or.cond.3.i = or i1 %cmp7.not.3.i, %cmp11.not.3.i
  br i1 %or.cond.3.i, label %if.else.3.i, label %if.then.3.i

if.then.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %incdec.ptr16.2.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %incdec.ptr16.2.i, align 2
  %37 = ptrtoint ptr %incdec.ptr15.2.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %incdec.ptr15.2.i, align 2
  br label %for.inc.3.i

if.else.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %incdec.ptr.2.i, align 4
  %shl.3.i = shl i32 %shr.3.i, %39
  %conv14.3.i = trunc i32 %shl.3.i to i16
  %40 = ptrtoint ptr %incdec.ptr16.2.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv14.3.i, ptr %incdec.ptr16.2.i, align 2
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.else.3.i, %if.then.3.i
  %incdec.ptr.3.i = getelementptr i32, ptr %quant.041.i, i32 4
  %incdec.ptr15.3.i = getelementptr i16, ptr %coeff.addr.040.i, i32 4
  %incdec.ptr16.3.i = getelementptr i16, ptr %de_coeff.addr.039.i, i32 4
  %41 = ptrtoint ptr %incdec.ptr.3.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %incdec.ptr.3.i, align 4
  %43 = ptrtoint ptr %incdec.ptr15.3.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %incdec.ptr15.3.i, align 2
  %conv.4.i = sext i16 %44 to i32
  %shr.4.i = ashr i32 %conv.4.i, %42
  %conv4.4.i = trunc i32 %shr.4.i to i16
  store i16 %conv4.4.i, ptr %incdec.ptr15.3.i, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.4.i, i32 %sub.i)
  %cmp7.not.4.i = icmp slt i32 %shr.4.i, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.4.i, i32 %conv6.i)
  %cmp11.not.4.i = icmp sgt i32 %shr.4.i, %conv6.i
  %or.cond.4.i = or i1 %cmp7.not.4.i, %cmp11.not.4.i
  br i1 %or.cond.4.i, label %if.else.4.i, label %if.then.4.i

if.then.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %incdec.ptr16.3.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %incdec.ptr16.3.i, align 2
  %46 = ptrtoint ptr %incdec.ptr15.3.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %incdec.ptr15.3.i, align 2
  br label %for.inc.4.i

if.else.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %incdec.ptr.3.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %incdec.ptr.3.i, align 4
  %shl.4.i = shl i32 %shr.4.i, %48
  %conv14.4.i = trunc i32 %shl.4.i to i16
  %49 = ptrtoint ptr %incdec.ptr16.3.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv14.4.i, ptr %incdec.ptr16.3.i, align 2
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %if.else.4.i, %if.then.4.i
  %incdec.ptr.4.i = getelementptr i32, ptr %quant.041.i, i32 5
  %incdec.ptr15.4.i = getelementptr i16, ptr %coeff.addr.040.i, i32 5
  %incdec.ptr16.4.i = getelementptr i16, ptr %de_coeff.addr.039.i, i32 5
  %50 = ptrtoint ptr %incdec.ptr.4.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %incdec.ptr.4.i, align 4
  %52 = ptrtoint ptr %incdec.ptr15.4.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %incdec.ptr15.4.i, align 2
  %conv.5.i = sext i16 %53 to i32
  %shr.5.i = ashr i32 %conv.5.i, %51
  %conv4.5.i = trunc i32 %shr.5.i to i16
  store i16 %conv4.5.i, ptr %incdec.ptr15.4.i, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.5.i, i32 %sub.i)
  %cmp7.not.5.i = icmp slt i32 %shr.5.i, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.5.i, i32 %conv6.i)
  %cmp11.not.5.i = icmp sgt i32 %shr.5.i, %conv6.i
  %or.cond.5.i = or i1 %cmp7.not.5.i, %cmp11.not.5.i
  br i1 %or.cond.5.i, label %if.else.5.i, label %if.then.5.i

if.then.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %incdec.ptr16.4.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 0, ptr %incdec.ptr16.4.i, align 2
  %55 = ptrtoint ptr %incdec.ptr15.4.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 0, ptr %incdec.ptr15.4.i, align 2
  br label %for.inc.5.i

if.else.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %incdec.ptr.4.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %incdec.ptr.4.i, align 4
  %shl.5.i = shl i32 %shr.5.i, %57
  %conv14.5.i = trunc i32 %shl.5.i to i16
  %58 = ptrtoint ptr %incdec.ptr16.4.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv14.5.i, ptr %incdec.ptr16.4.i, align 2
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %if.else.5.i, %if.then.5.i
  %incdec.ptr.5.i = getelementptr i32, ptr %quant.041.i, i32 6
  %incdec.ptr15.5.i = getelementptr i16, ptr %coeff.addr.040.i, i32 6
  %incdec.ptr16.5.i = getelementptr i16, ptr %de_coeff.addr.039.i, i32 6
  %59 = ptrtoint ptr %incdec.ptr.5.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %incdec.ptr.5.i, align 4
  %61 = ptrtoint ptr %incdec.ptr15.5.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %incdec.ptr15.5.i, align 2
  %conv.6.i = sext i16 %62 to i32
  %shr.6.i = ashr i32 %conv.6.i, %60
  %conv4.6.i = trunc i32 %shr.6.i to i16
  store i16 %conv4.6.i, ptr %incdec.ptr15.5.i, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.6.i, i32 %sub.i)
  %cmp7.not.6.i = icmp slt i32 %shr.6.i, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.6.i, i32 %conv6.i)
  %cmp11.not.6.i = icmp sgt i32 %shr.6.i, %conv6.i
  %or.cond.6.i = or i1 %cmp7.not.6.i, %cmp11.not.6.i
  br i1 %or.cond.6.i, label %if.else.6.i, label %if.then.6.i

if.then.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %incdec.ptr16.5.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 0, ptr %incdec.ptr16.5.i, align 2
  %64 = ptrtoint ptr %incdec.ptr15.5.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 0, ptr %incdec.ptr15.5.i, align 2
  br label %for.inc.6.i

if.else.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %incdec.ptr.5.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %incdec.ptr.5.i, align 4
  %shl.6.i = shl i32 %shr.6.i, %66
  %conv14.6.i = trunc i32 %shl.6.i to i16
  %67 = ptrtoint ptr %incdec.ptr16.5.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv14.6.i, ptr %incdec.ptr16.5.i, align 2
  br label %for.inc.6.i

for.inc.6.i:                                      ; preds = %if.else.6.i, %if.then.6.i
  %incdec.ptr.6.i = getelementptr i32, ptr %quant.041.i, i32 7
  %incdec.ptr15.6.i = getelementptr i16, ptr %coeff.addr.040.i, i32 7
  %incdec.ptr16.6.i = getelementptr i16, ptr %de_coeff.addr.039.i, i32 7
  %68 = ptrtoint ptr %incdec.ptr.6.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %incdec.ptr.6.i, align 4
  %70 = ptrtoint ptr %incdec.ptr15.6.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %incdec.ptr15.6.i, align 2
  %conv.7.i = sext i16 %71 to i32
  %shr.7.i = ashr i32 %conv.7.i, %69
  %conv4.7.i = trunc i32 %shr.7.i to i16
  store i16 %conv4.7.i, ptr %incdec.ptr15.6.i, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.7.i, i32 %sub.i)
  %cmp7.not.7.i = icmp slt i32 %shr.7.i, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.7.i, i32 %conv6.i)
  %cmp11.not.7.i = icmp sgt i32 %shr.7.i, %conv6.i
  %or.cond.7.i = or i1 %cmp7.not.7.i, %cmp11.not.7.i
  br i1 %or.cond.7.i, label %if.else.7.i, label %if.then.7.i

if.then.7.i:                                      ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %incdec.ptr16.6.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 0, ptr %incdec.ptr16.6.i, align 2
  %73 = ptrtoint ptr %incdec.ptr15.6.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 0, ptr %incdec.ptr15.6.i, align 2
  br label %for.inc.7.i

if.else.7.i:                                      ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %incdec.ptr.6.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %incdec.ptr.6.i, align 4
  %shl.7.i = shl i32 %shr.7.i, %75
  %conv14.7.i = trunc i32 %shl.7.i to i16
  %76 = ptrtoint ptr %incdec.ptr16.6.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %conv14.7.i, ptr %incdec.ptr16.6.i, align 2
  br label %for.inc.7.i

for.inc.7.i:                                      ; preds = %if.else.7.i, %if.then.7.i
  %incdec.ptr.7.i = getelementptr i32, ptr %quant.041.i, i32 8
  %incdec.ptr15.7.i = getelementptr i16, ptr %coeff.addr.040.i, i32 8
  %incdec.ptr16.7.i = getelementptr i16, ptr %de_coeff.addr.039.i, i32 8
  %inc18.i = add nuw nsw i32 %j.042.i, 1
  %exitcond.not.i = icmp eq i32 %inc18.i, 8
  br i1 %exitcond.not.i, label %if.end24.thread, label %for.inc.7.i.for.cond1.preheader.i_crit_edge

for.inc.7.i.for.cond1.preheader.i_crit_edge:      ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond1.preheader.i

if.else:                                          ; preds = %if.end
  call fastcc void @fwht16(ptr noundef nonnull %deltablock, ptr noundef %coeffs18)
  %77 = ptrtoint ptr %p_frame_qp to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %p_frame_qp, align 2
  %conv6.i186 = zext i16 %78 to i32
  %sub.i187 = sub nsw i32 0, %conv6.i186
  br label %for.cond1.preheader.i198

for.cond1.preheader.i198:                         ; preds = %for.inc.7.i306.for.cond1.preheader.i198_crit_edge, %if.else
  %j.042.i188 = phi i32 [ 0, %if.else ], [ %inc18.i304, %for.inc.7.i306.for.cond1.preheader.i198_crit_edge ]
  %quant.041.i189 = phi ptr [ @quant_table_p, %if.else ], [ %incdec.ptr.7.i301, %for.inc.7.i306.for.cond1.preheader.i198_crit_edge ]
  %coeff.addr.040.i190 = phi ptr [ %coeffs18, %if.else ], [ %incdec.ptr15.7.i302, %for.inc.7.i306.for.cond1.preheader.i198_crit_edge ]
  %de_coeff.addr.039.i191 = phi ptr [ %de_coeffs22, %if.else ], [ %incdec.ptr16.7.i303, %for.inc.7.i306.for.cond1.preheader.i198_crit_edge ]
  %79 = ptrtoint ptr %quant.041.i189 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %quant.041.i189, align 4
  %81 = ptrtoint ptr %coeff.addr.040.i190 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %coeff.addr.040.i190, align 2
  %conv.i192 = sext i16 %82 to i32
  %shr.i193 = ashr i32 %conv.i192, %80
  %conv4.i194 = trunc i32 %shr.i193 to i16
  store i16 %conv4.i194, ptr %coeff.addr.040.i190, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i193, i32 %sub.i187)
  %cmp7.not.i195 = icmp slt i32 %shr.i193, %sub.i187
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i193, i32 %conv6.i186)
  %cmp11.not.i196 = icmp sgt i32 %shr.i193, %conv6.i186
  %or.cond.i197 = or i1 %cmp7.not.i195, %cmp11.not.i196
  br i1 %or.cond.i197, label %if.else.i202, label %if.then.i199

if.then.i199:                                     ; preds = %for.cond1.preheader.i198
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %de_coeff.addr.039.i191 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 0, ptr %de_coeff.addr.039.i191, align 2
  %84 = ptrtoint ptr %coeff.addr.040.i190 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 0, ptr %coeff.addr.040.i190, align 2
  br label %for.inc.i212

if.else.i202:                                     ; preds = %for.cond1.preheader.i198
  call void @__sanitizer_cov_trace_pc() #10
  %85 = ptrtoint ptr %quant.041.i189 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %quant.041.i189, align 4
  %shl.i200 = shl i32 %shr.i193, %86
  %conv14.i201 = trunc i32 %shl.i200 to i16
  %87 = ptrtoint ptr %de_coeff.addr.039.i191 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %conv14.i201, ptr %de_coeff.addr.039.i191, align 2
  br label %for.inc.i212

for.inc.i212:                                     ; preds = %if.else.i202, %if.then.i199
  %incdec.ptr.i203 = getelementptr i32, ptr %quant.041.i189, i32 1
  %incdec.ptr15.i204 = getelementptr i16, ptr %coeff.addr.040.i190, i32 1
  %incdec.ptr16.i205 = getelementptr i16, ptr %de_coeff.addr.039.i191, i32 1
  %88 = ptrtoint ptr %incdec.ptr.i203 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %incdec.ptr.i203, align 4
  %90 = ptrtoint ptr %incdec.ptr15.i204 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %incdec.ptr15.i204, align 2
  %conv.1.i206 = sext i16 %91 to i32
  %shr.1.i207 = ashr i32 %conv.1.i206, %89
  %conv4.1.i208 = trunc i32 %shr.1.i207 to i16
  store i16 %conv4.1.i208, ptr %incdec.ptr15.i204, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.1.i207, i32 %sub.i187)
  %cmp7.not.1.i209 = icmp slt i32 %shr.1.i207, %sub.i187
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.1.i207, i32 %conv6.i186)
  %cmp11.not.1.i210 = icmp sgt i32 %shr.1.i207, %conv6.i186
  %or.cond.1.i211 = or i1 %cmp7.not.1.i209, %cmp11.not.1.i210
  br i1 %or.cond.1.i211, label %if.else.1.i216, label %if.then.1.i213

if.then.1.i213:                                   ; preds = %for.inc.i212
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %incdec.ptr16.i205 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 0, ptr %incdec.ptr16.i205, align 2
  %93 = ptrtoint ptr %incdec.ptr15.i204 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 0, ptr %incdec.ptr15.i204, align 2
  br label %for.inc.1.i226

if.else.1.i216:                                   ; preds = %for.inc.i212
  call void @__sanitizer_cov_trace_pc() #10
  %94 = ptrtoint ptr %incdec.ptr.i203 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %incdec.ptr.i203, align 4
  %shl.1.i214 = shl i32 %shr.1.i207, %95
  %conv14.1.i215 = trunc i32 %shl.1.i214 to i16
  %96 = ptrtoint ptr %incdec.ptr16.i205 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %conv14.1.i215, ptr %incdec.ptr16.i205, align 2
  br label %for.inc.1.i226

for.inc.1.i226:                                   ; preds = %if.else.1.i216, %if.then.1.i213
  %incdec.ptr.1.i217 = getelementptr i32, ptr %quant.041.i189, i32 2
  %incdec.ptr15.1.i218 = getelementptr i16, ptr %coeff.addr.040.i190, i32 2
  %incdec.ptr16.1.i219 = getelementptr i16, ptr %de_coeff.addr.039.i191, i32 2
  %97 = ptrtoint ptr %incdec.ptr.1.i217 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %incdec.ptr.1.i217, align 4
  %99 = ptrtoint ptr %incdec.ptr15.1.i218 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %incdec.ptr15.1.i218, align 2
  %conv.2.i220 = sext i16 %100 to i32
  %shr.2.i221 = ashr i32 %conv.2.i220, %98
  %conv4.2.i222 = trunc i32 %shr.2.i221 to i16
  store i16 %conv4.2.i222, ptr %incdec.ptr15.1.i218, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.2.i221, i32 %sub.i187)
  %cmp7.not.2.i223 = icmp slt i32 %shr.2.i221, %sub.i187
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.2.i221, i32 %conv6.i186)
  %cmp11.not.2.i224 = icmp sgt i32 %shr.2.i221, %conv6.i186
  %or.cond.2.i225 = or i1 %cmp7.not.2.i223, %cmp11.not.2.i224
  br i1 %or.cond.2.i225, label %if.else.2.i230, label %if.then.2.i227

if.then.2.i227:                                   ; preds = %for.inc.1.i226
  call void @__sanitizer_cov_trace_pc() #10
  %101 = ptrtoint ptr %incdec.ptr16.1.i219 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 0, ptr %incdec.ptr16.1.i219, align 2
  %102 = ptrtoint ptr %incdec.ptr15.1.i218 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 0, ptr %incdec.ptr15.1.i218, align 2
  br label %for.inc.2.i240

if.else.2.i230:                                   ; preds = %for.inc.1.i226
  call void @__sanitizer_cov_trace_pc() #10
  %103 = ptrtoint ptr %incdec.ptr.1.i217 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %incdec.ptr.1.i217, align 4
  %shl.2.i228 = shl i32 %shr.2.i221, %104
  %conv14.2.i229 = trunc i32 %shl.2.i228 to i16
  %105 = ptrtoint ptr %incdec.ptr16.1.i219 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %conv14.2.i229, ptr %incdec.ptr16.1.i219, align 2
  br label %for.inc.2.i240

for.inc.2.i240:                                   ; preds = %if.else.2.i230, %if.then.2.i227
  %incdec.ptr.2.i231 = getelementptr i32, ptr %quant.041.i189, i32 3
  %incdec.ptr15.2.i232 = getelementptr i16, ptr %coeff.addr.040.i190, i32 3
  %incdec.ptr16.2.i233 = getelementptr i16, ptr %de_coeff.addr.039.i191, i32 3
  %106 = ptrtoint ptr %incdec.ptr.2.i231 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %incdec.ptr.2.i231, align 4
  %108 = ptrtoint ptr %incdec.ptr15.2.i232 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %incdec.ptr15.2.i232, align 2
  %conv.3.i234 = sext i16 %109 to i32
  %shr.3.i235 = ashr i32 %conv.3.i234, %107
  %conv4.3.i236 = trunc i32 %shr.3.i235 to i16
  store i16 %conv4.3.i236, ptr %incdec.ptr15.2.i232, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.3.i235, i32 %sub.i187)
  %cmp7.not.3.i237 = icmp slt i32 %shr.3.i235, %sub.i187
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.3.i235, i32 %conv6.i186)
  %cmp11.not.3.i238 = icmp sgt i32 %shr.3.i235, %conv6.i186
  %or.cond.3.i239 = or i1 %cmp7.not.3.i237, %cmp11.not.3.i238
  br i1 %or.cond.3.i239, label %if.else.3.i244, label %if.then.3.i241

if.then.3.i241:                                   ; preds = %for.inc.2.i240
  call void @__sanitizer_cov_trace_pc() #10
  %110 = ptrtoint ptr %incdec.ptr16.2.i233 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 0, ptr %incdec.ptr16.2.i233, align 2
  %111 = ptrtoint ptr %incdec.ptr15.2.i232 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 0, ptr %incdec.ptr15.2.i232, align 2
  br label %for.inc.3.i254

if.else.3.i244:                                   ; preds = %for.inc.2.i240
  call void @__sanitizer_cov_trace_pc() #10
  %112 = ptrtoint ptr %incdec.ptr.2.i231 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %incdec.ptr.2.i231, align 4
  %shl.3.i242 = shl i32 %shr.3.i235, %113
  %conv14.3.i243 = trunc i32 %shl.3.i242 to i16
  %114 = ptrtoint ptr %incdec.ptr16.2.i233 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %conv14.3.i243, ptr %incdec.ptr16.2.i233, align 2
  br label %for.inc.3.i254

for.inc.3.i254:                                   ; preds = %if.else.3.i244, %if.then.3.i241
  %incdec.ptr.3.i245 = getelementptr i32, ptr %quant.041.i189, i32 4
  %incdec.ptr15.3.i246 = getelementptr i16, ptr %coeff.addr.040.i190, i32 4
  %incdec.ptr16.3.i247 = getelementptr i16, ptr %de_coeff.addr.039.i191, i32 4
  %115 = ptrtoint ptr %incdec.ptr.3.i245 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %incdec.ptr.3.i245, align 4
  %117 = ptrtoint ptr %incdec.ptr15.3.i246 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %incdec.ptr15.3.i246, align 2
  %conv.4.i248 = sext i16 %118 to i32
  %shr.4.i249 = ashr i32 %conv.4.i248, %116
  %conv4.4.i250 = trunc i32 %shr.4.i249 to i16
  store i16 %conv4.4.i250, ptr %incdec.ptr15.3.i246, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.4.i249, i32 %sub.i187)
  %cmp7.not.4.i251 = icmp slt i32 %shr.4.i249, %sub.i187
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.4.i249, i32 %conv6.i186)
  %cmp11.not.4.i252 = icmp sgt i32 %shr.4.i249, %conv6.i186
  %or.cond.4.i253 = or i1 %cmp7.not.4.i251, %cmp11.not.4.i252
  br i1 %or.cond.4.i253, label %if.else.4.i258, label %if.then.4.i255

if.then.4.i255:                                   ; preds = %for.inc.3.i254
  call void @__sanitizer_cov_trace_pc() #10
  %119 = ptrtoint ptr %incdec.ptr16.3.i247 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 0, ptr %incdec.ptr16.3.i247, align 2
  %120 = ptrtoint ptr %incdec.ptr15.3.i246 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 0, ptr %incdec.ptr15.3.i246, align 2
  br label %for.inc.4.i268

if.else.4.i258:                                   ; preds = %for.inc.3.i254
  call void @__sanitizer_cov_trace_pc() #10
  %121 = ptrtoint ptr %incdec.ptr.3.i245 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %incdec.ptr.3.i245, align 4
  %shl.4.i256 = shl i32 %shr.4.i249, %122
  %conv14.4.i257 = trunc i32 %shl.4.i256 to i16
  %123 = ptrtoint ptr %incdec.ptr16.3.i247 to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %conv14.4.i257, ptr %incdec.ptr16.3.i247, align 2
  br label %for.inc.4.i268

for.inc.4.i268:                                   ; preds = %if.else.4.i258, %if.then.4.i255
  %incdec.ptr.4.i259 = getelementptr i32, ptr %quant.041.i189, i32 5
  %incdec.ptr15.4.i260 = getelementptr i16, ptr %coeff.addr.040.i190, i32 5
  %incdec.ptr16.4.i261 = getelementptr i16, ptr %de_coeff.addr.039.i191, i32 5
  %124 = ptrtoint ptr %incdec.ptr.4.i259 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %incdec.ptr.4.i259, align 4
  %126 = ptrtoint ptr %incdec.ptr15.4.i260 to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %incdec.ptr15.4.i260, align 2
  %conv.5.i262 = sext i16 %127 to i32
  %shr.5.i263 = ashr i32 %conv.5.i262, %125
  %conv4.5.i264 = trunc i32 %shr.5.i263 to i16
  store i16 %conv4.5.i264, ptr %incdec.ptr15.4.i260, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.5.i263, i32 %sub.i187)
  %cmp7.not.5.i265 = icmp slt i32 %shr.5.i263, %sub.i187
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.5.i263, i32 %conv6.i186)
  %cmp11.not.5.i266 = icmp sgt i32 %shr.5.i263, %conv6.i186
  %or.cond.5.i267 = or i1 %cmp7.not.5.i265, %cmp11.not.5.i266
  br i1 %or.cond.5.i267, label %if.else.5.i272, label %if.then.5.i269

if.then.5.i269:                                   ; preds = %for.inc.4.i268
  call void @__sanitizer_cov_trace_pc() #10
  %128 = ptrtoint ptr %incdec.ptr16.4.i261 to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 0, ptr %incdec.ptr16.4.i261, align 2
  %129 = ptrtoint ptr %incdec.ptr15.4.i260 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 0, ptr %incdec.ptr15.4.i260, align 2
  br label %for.inc.5.i282

if.else.5.i272:                                   ; preds = %for.inc.4.i268
  call void @__sanitizer_cov_trace_pc() #10
  %130 = ptrtoint ptr %incdec.ptr.4.i259 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %incdec.ptr.4.i259, align 4
  %shl.5.i270 = shl i32 %shr.5.i263, %131
  %conv14.5.i271 = trunc i32 %shl.5.i270 to i16
  %132 = ptrtoint ptr %incdec.ptr16.4.i261 to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %conv14.5.i271, ptr %incdec.ptr16.4.i261, align 2
  br label %for.inc.5.i282

for.inc.5.i282:                                   ; preds = %if.else.5.i272, %if.then.5.i269
  %incdec.ptr.5.i273 = getelementptr i32, ptr %quant.041.i189, i32 6
  %incdec.ptr15.5.i274 = getelementptr i16, ptr %coeff.addr.040.i190, i32 6
  %incdec.ptr16.5.i275 = getelementptr i16, ptr %de_coeff.addr.039.i191, i32 6
  %133 = ptrtoint ptr %incdec.ptr.5.i273 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %incdec.ptr.5.i273, align 4
  %135 = ptrtoint ptr %incdec.ptr15.5.i274 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %incdec.ptr15.5.i274, align 2
  %conv.6.i276 = sext i16 %136 to i32
  %shr.6.i277 = ashr i32 %conv.6.i276, %134
  %conv4.6.i278 = trunc i32 %shr.6.i277 to i16
  store i16 %conv4.6.i278, ptr %incdec.ptr15.5.i274, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.6.i277, i32 %sub.i187)
  %cmp7.not.6.i279 = icmp slt i32 %shr.6.i277, %sub.i187
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.6.i277, i32 %conv6.i186)
  %cmp11.not.6.i280 = icmp sgt i32 %shr.6.i277, %conv6.i186
  %or.cond.6.i281 = or i1 %cmp7.not.6.i279, %cmp11.not.6.i280
  br i1 %or.cond.6.i281, label %if.else.6.i286, label %if.then.6.i283

if.then.6.i283:                                   ; preds = %for.inc.5.i282
  call void @__sanitizer_cov_trace_pc() #10
  %137 = ptrtoint ptr %incdec.ptr16.5.i275 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 0, ptr %incdec.ptr16.5.i275, align 2
  %138 = ptrtoint ptr %incdec.ptr15.5.i274 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 0, ptr %incdec.ptr15.5.i274, align 2
  br label %for.inc.6.i296

if.else.6.i286:                                   ; preds = %for.inc.5.i282
  call void @__sanitizer_cov_trace_pc() #10
  %139 = ptrtoint ptr %incdec.ptr.5.i273 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %incdec.ptr.5.i273, align 4
  %shl.6.i284 = shl i32 %shr.6.i277, %140
  %conv14.6.i285 = trunc i32 %shl.6.i284 to i16
  %141 = ptrtoint ptr %incdec.ptr16.5.i275 to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %conv14.6.i285, ptr %incdec.ptr16.5.i275, align 2
  br label %for.inc.6.i296

for.inc.6.i296:                                   ; preds = %if.else.6.i286, %if.then.6.i283
  %incdec.ptr.6.i287 = getelementptr i32, ptr %quant.041.i189, i32 7
  %incdec.ptr15.6.i288 = getelementptr i16, ptr %coeff.addr.040.i190, i32 7
  %incdec.ptr16.6.i289 = getelementptr i16, ptr %de_coeff.addr.039.i191, i32 7
  %142 = ptrtoint ptr %incdec.ptr.6.i287 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %incdec.ptr.6.i287, align 4
  %144 = ptrtoint ptr %incdec.ptr15.6.i288 to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %incdec.ptr15.6.i288, align 2
  %conv.7.i290 = sext i16 %145 to i32
  %shr.7.i291 = ashr i32 %conv.7.i290, %143
  %conv4.7.i292 = trunc i32 %shr.7.i291 to i16
  store i16 %conv4.7.i292, ptr %incdec.ptr15.6.i288, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.7.i291, i32 %sub.i187)
  %cmp7.not.7.i293 = icmp slt i32 %shr.7.i291, %sub.i187
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.7.i291, i32 %conv6.i186)
  %cmp11.not.7.i294 = icmp sgt i32 %shr.7.i291, %conv6.i186
  %or.cond.7.i295 = or i1 %cmp7.not.7.i293, %cmp11.not.7.i294
  br i1 %or.cond.7.i295, label %if.else.7.i300, label %if.then.7.i297

if.then.7.i297:                                   ; preds = %for.inc.6.i296
  call void @__sanitizer_cov_trace_pc() #10
  %146 = ptrtoint ptr %incdec.ptr16.6.i289 to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 0, ptr %incdec.ptr16.6.i289, align 2
  %147 = ptrtoint ptr %incdec.ptr15.6.i288 to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 0, ptr %incdec.ptr15.6.i288, align 2
  br label %for.inc.7.i306

if.else.7.i300:                                   ; preds = %for.inc.6.i296
  call void @__sanitizer_cov_trace_pc() #10
  %148 = ptrtoint ptr %incdec.ptr.6.i287 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %incdec.ptr.6.i287, align 4
  %shl.7.i298 = shl i32 %shr.7.i291, %149
  %conv14.7.i299 = trunc i32 %shl.7.i298 to i16
  %150 = ptrtoint ptr %incdec.ptr16.6.i289 to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 %conv14.7.i299, ptr %incdec.ptr16.6.i289, align 2
  br label %for.inc.7.i306

for.inc.7.i306:                                   ; preds = %if.else.7.i300, %if.then.7.i297
  %incdec.ptr.7.i301 = getelementptr i32, ptr %quant.041.i189, i32 8
  %incdec.ptr15.7.i302 = getelementptr i16, ptr %coeff.addr.040.i190, i32 8
  %incdec.ptr16.7.i303 = getelementptr i16, ptr %de_coeff.addr.039.i191, i32 8
  %inc18.i304 = add nuw nsw i32 %j.042.i188, 1
  %exitcond.not.i305 = icmp eq i32 %inc18.i304, 8
  br i1 %exitcond.not.i305, label %if.end24, label %for.inc.7.i306.for.cond1.preheader.i198_crit_edge

for.inc.7.i306.for.cond1.preheader.i198_crit_edge: ; preds = %for.inc.7.i306
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond1.preheader.i198

if.end24:                                         ; preds = %for.inc.7.i306
  %or16 = or i32 %encoding.1332, 1
  br i1 %next_is_intra, label %if.end24.if.end37_crit_edge, label %if.then26

if.end24.if.end37_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.end24.thread:                                  ; preds = %for.inc.7.i
  br i1 %next_is_intra, label %if.end24.thread.if.end37_crit_edge, label %if.then26.thread

if.end24.thread.if.end37_crit_edge:               ; preds = %if.end24.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then26.thread:                                 ; preds = %if.end24.thread
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ifwht(ptr noundef %de_coeffs22, ptr noundef %de_fwht, i32 noundef 1)
  br label %if.end34

if.then26:                                        ; preds = %if.end24
  tail call fastcc void @ifwht(ptr noundef %de_coeffs22, ptr noundef %de_fwht, i32 noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp30 = icmp eq i32 %call, 0
  br i1 %cmp30, label %if.then31, label %if.then26.if.end34_crit_edge

if.then26.if.end34_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then31:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @add_deltas(ptr noundef %de_fwht, ptr noundef %refp.addr.1328, i32 noundef 8, i32 noundef 1)
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.then26.if.end34_crit_edge, %if.then26.thread
  %blocktype.0319365373 = phi i32 [ 1, %if.then26.thread ], [ 0, %if.then31 ], [ %call, %if.then26.if.end34_crit_edge ]
  %encoding.2367372 = phi i32 [ %encoding.1332, %if.then26.thread ], [ %or16, %if.then31 ], [ %or16, %if.then26.if.end34_crit_edge ]
  br label %for.cond1.preheader.i316

for.cond1.preheader.i316:                         ; preds = %for.cond1.preheader.i316.for.cond1.preheader.i316_crit_edge, %if.end34
  %i.033.i = phi i32 [ 0, %if.end34 ], [ %inc15.i, %for.cond1.preheader.i316.for.cond1.preheader.i316_crit_edge ]
  %dst.addr.032.i = phi ptr [ %refp.addr.1328, %if.end34 ], [ %add.ptr.7.i, %for.cond1.preheader.i316.for.cond1.preheader.i316_crit_edge ]
  %input.addr.031.i = phi ptr [ %de_fwht, %if.end34 ], [ %incdec.ptr.7.i314, %for.cond1.preheader.i316.for.cond1.preheader.i316_crit_edge ]
  %151 = ptrtoint ptr %input.addr.031.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %input.addr.031.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %152)
  %cmp4.i = icmp slt i16 %152, 0
  %153 = tail call i16 @llvm.umin.i16(i16 %152, i16 255) #8
  %154 = trunc i16 %153 to i8
  %.sink.i = select i1 %cmp4.i, i8 0, i8 %154
  %155 = ptrtoint ptr %dst.addr.032.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %.sink.i, ptr %dst.addr.032.i, align 1
  %incdec.ptr.i307 = getelementptr i16, ptr %input.addr.031.i, i32 1
  %add.ptr.i = getelementptr i8, ptr %dst.addr.032.i, i32 1
  %156 = ptrtoint ptr %incdec.ptr.i307 to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %incdec.ptr.i307, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %157)
  %cmp4.1.i = icmp slt i16 %157, 0
  %158 = tail call i16 @llvm.umin.i16(i16 %157, i16 255) #8
  %159 = trunc i16 %158 to i8
  %.sink34.i = select i1 %cmp4.1.i, i8 0, i8 %159
  %160 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %.sink34.i, ptr %add.ptr.i, align 1
  %incdec.ptr.1.i308 = getelementptr i16, ptr %input.addr.031.i, i32 2
  %add.ptr.1.i = getelementptr i8, ptr %dst.addr.032.i, i32 2
  %161 = ptrtoint ptr %incdec.ptr.1.i308 to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %incdec.ptr.1.i308, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %162)
  %cmp4.2.i = icmp slt i16 %162, 0
  %163 = tail call i16 @llvm.umin.i16(i16 %162, i16 255) #8
  %164 = trunc i16 %163 to i8
  %.sink35.i = select i1 %cmp4.2.i, i8 0, i8 %164
  %165 = ptrtoint ptr %add.ptr.1.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %.sink35.i, ptr %add.ptr.1.i, align 1
  %incdec.ptr.2.i309 = getelementptr i16, ptr %input.addr.031.i, i32 3
  %add.ptr.2.i = getelementptr i8, ptr %dst.addr.032.i, i32 3
  %166 = ptrtoint ptr %incdec.ptr.2.i309 to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %incdec.ptr.2.i309, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %167)
  %cmp4.3.i = icmp slt i16 %167, 0
  %168 = tail call i16 @llvm.umin.i16(i16 %167, i16 255) #8
  %169 = trunc i16 %168 to i8
  %.sink36.i = select i1 %cmp4.3.i, i8 0, i8 %169
  %170 = ptrtoint ptr %add.ptr.2.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %.sink36.i, ptr %add.ptr.2.i, align 1
  %incdec.ptr.3.i310 = getelementptr i16, ptr %input.addr.031.i, i32 4
  %add.ptr.3.i = getelementptr i8, ptr %dst.addr.032.i, i32 4
  %171 = ptrtoint ptr %incdec.ptr.3.i310 to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %incdec.ptr.3.i310, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %172)
  %cmp4.4.i = icmp slt i16 %172, 0
  %173 = tail call i16 @llvm.umin.i16(i16 %172, i16 255) #8
  %174 = trunc i16 %173 to i8
  %.sink37.i = select i1 %cmp4.4.i, i8 0, i8 %174
  %175 = ptrtoint ptr %add.ptr.3.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %.sink37.i, ptr %add.ptr.3.i, align 1
  %incdec.ptr.4.i311 = getelementptr i16, ptr %input.addr.031.i, i32 5
  %add.ptr.4.i = getelementptr i8, ptr %dst.addr.032.i, i32 5
  %176 = ptrtoint ptr %incdec.ptr.4.i311 to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %incdec.ptr.4.i311, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %177)
  %cmp4.5.i = icmp slt i16 %177, 0
  %178 = tail call i16 @llvm.umin.i16(i16 %177, i16 255) #8
  %179 = trunc i16 %178 to i8
  %.sink38.i = select i1 %cmp4.5.i, i8 0, i8 %179
  %180 = ptrtoint ptr %add.ptr.4.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %.sink38.i, ptr %add.ptr.4.i, align 1
  %incdec.ptr.5.i312 = getelementptr i16, ptr %input.addr.031.i, i32 6
  %add.ptr.5.i = getelementptr i8, ptr %dst.addr.032.i, i32 6
  %181 = ptrtoint ptr %incdec.ptr.5.i312 to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %incdec.ptr.5.i312, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %182)
  %cmp4.6.i = icmp slt i16 %182, 0
  %183 = tail call i16 @llvm.umin.i16(i16 %182, i16 255) #8
  %184 = trunc i16 %183 to i8
  %.sink39.i = select i1 %cmp4.6.i, i8 0, i8 %184
  %185 = ptrtoint ptr %add.ptr.5.i to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %.sink39.i, ptr %add.ptr.5.i, align 1
  %incdec.ptr.6.i313 = getelementptr i16, ptr %input.addr.031.i, i32 7
  %add.ptr.6.i = getelementptr i8, ptr %dst.addr.032.i, i32 7
  %186 = ptrtoint ptr %incdec.ptr.6.i313 to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %incdec.ptr.6.i313, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %187)
  %cmp4.7.i = icmp slt i16 %187, 0
  %188 = tail call i16 @llvm.umin.i16(i16 %187, i16 255) #8
  %189 = trunc i16 %188 to i8
  %.sink40.i = select i1 %cmp4.7.i, i8 0, i8 %189
  %190 = ptrtoint ptr %add.ptr.6.i to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 %.sink40.i, ptr %add.ptr.6.i, align 1
  %incdec.ptr.7.i314 = getelementptr i16, ptr %input.addr.031.i, i32 8
  %add.ptr.7.i = getelementptr i8, ptr %dst.addr.032.i, i32 8
  %inc15.i = add nuw nsw i32 %i.033.i, 1
  %exitcond.not.i315 = icmp eq i32 %inc15.i, 8
  br i1 %exitcond.not.i315, label %for.cond1.preheader.i316.if.end37_crit_edge, label %for.cond1.preheader.i316.for.cond1.preheader.i316_crit_edge

for.cond1.preheader.i316.for.cond1.preheader.i316_crit_edge: ; preds = %for.cond1.preheader.i316
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond1.preheader.i316

for.cond1.preheader.i316.if.end37_crit_edge:      ; preds = %for.cond1.preheader.i316
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.end37:                                         ; preds = %for.cond1.preheader.i316.if.end37_crit_edge, %if.end24.thread.if.end37_crit_edge, %if.end24.if.end37_crit_edge
  %encoding.2368 = phi i32 [ %encoding.1332, %if.end24.thread.if.end37_crit_edge ], [ %or16, %if.end24.if.end37_crit_edge ], [ %encoding.2367372, %for.cond1.preheader.i316.if.end37_crit_edge ]
  %blocktype.0319366 = phi i32 [ 1, %if.end24.thread.if.end37_crit_edge ], [ %call, %if.end24.if.end37_crit_edge ], [ %blocktype.0319365373, %for.cond1.preheader.i316.if.end37_crit_edge ]
  %add.ptr39 = getelementptr i8, ptr %input.addr.0330, i32 %mul38
  %add.ptr40 = getelementptr i8, ptr %refp.addr.1328, i32 64
  %191 = ptrtoint ptr %rlco to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %rlco, align 4
  %call43 = tail call fastcc i32 @rlc(ptr noundef %coeffs18, ptr noundef %192, i32 noundef %blocktype.0319366)
  call void @__sanitizer_cov_trace_cmp4(i32 %last_size.1333, i32 %call43)
  %cmp44 = icmp eq i32 %last_size.1333, %call43
  br i1 %cmp44, label %land.lhs.true, label %if.end37.if.else70_crit_edge

if.end37.if.else70_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else70

land.lhs.true:                                    ; preds = %if.end37
  %193 = ptrtoint ptr %rlco to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %rlco, align 4
  %add.ptr45 = getelementptr i16, ptr %194, i32 1
  %idx.neg = sub i32 0, %last_size.1333
  %add.ptr46 = getelementptr i16, ptr %194, i32 %idx.neg
  %add.ptr47 = getelementptr i16, ptr %add.ptr46, i32 1
  %mul48 = shl i32 %last_size.1333, 1
  %sub49 = add i32 %mul48, -2
  %bcmp = tail call i32 @bcmp(ptr %add.ptr45, ptr %add.ptr47, i32 %sub49) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool51.not = icmp eq i32 %bcmp, 0
  br i1 %tobool51.not, label %if.then52, label %land.lhs.true.if.else70_crit_edge

land.lhs.true.if.else70_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else70

if.then52:                                        ; preds = %land.lhs.true
  %195 = ptrtoint ptr %add.ptr46 to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %add.ptr46, align 2
  %197 = ptrtoint ptr %194 to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %194, align 2
  %xor184 = xor i16 %198, %196
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor184)
  %tobool57.not = icmp slt i16 %xor184, 0
  %199 = and i16 %196, 8190
  call void @__sanitizer_cov_trace_const_cmp2(i16 8190, i16 %199)
  %cmp61.not = icmp eq i16 %199, 8190
  %or.cond = or i1 %cmp61.not, %tobool57.not
  br i1 %or.cond, label %if.else67, label %if.then63

if.then63:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  %add65 = add i16 %196, 2
  %200 = ptrtoint ptr %add.ptr46 to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 %add65, ptr %add.ptr46, align 2
  br label %if.end72

if.else67:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr68 = getelementptr i16, ptr %194, i32 %last_size.1333
  %201 = ptrtoint ptr %rlco to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %add.ptr68, ptr %rlco, align 4
  br label %if.end72

if.else70:                                        ; preds = %land.lhs.true.if.else70_crit_edge, %if.end37.if.else70_crit_edge
  %202 = ptrtoint ptr %rlco to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %rlco, align 4
  %add.ptr71 = getelementptr i16, ptr %203, i32 %call43
  store ptr %add.ptr71, ptr %rlco, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.else70, %if.else67, %if.then63
  %204 = ptrtoint ptr %rlco to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %rlco, align 4
  %cmp73.not = icmp ult ptr %205, %rlco_max
  br i1 %cmp73.not, label %for.cond6, label %exit_loop.loopexit

for.inc79:                                        ; preds = %for.cond6.for.inc79_crit_edge, %for.body.for.inc79_crit_edge
  %refp.addr.1.lcssa = phi ptr [ %refp.addr.0338, %for.body.for.inc79_crit_edge ], [ %add.ptr40, %for.cond6.for.inc79_crit_edge ]
  %encoding.1.lcssa = phi i32 [ %encoding.0339, %for.body.for.inc79_crit_edge ], [ %encoding.2368, %for.cond6.for.inc79_crit_edge ]
  %last_size.1.lcssa = phi i32 [ %last_size.0340, %for.body.for.inc79_crit_edge ], [ %call43, %for.cond6.for.inc79_crit_edge ]
  %inc80 = add nuw nsw i32 %j.0341, 1
  %exitcond360.not = icmp eq i32 %inc80, %div182
  br i1 %exitcond360.not, label %for.inc79.exit_loop_crit_edge, label %for.inc79.for.body_crit_edge

for.inc79.for.body_crit_edge:                     ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc79.exit_loop_crit_edge:                    ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_loop

exit_loop.loopexit:                               ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  %or76.le = or i32 %encoding.2368, 2
  br label %exit_loop

exit_loop:                                        ; preds = %exit_loop.loopexit, %for.inc79.exit_loop_crit_edge
  %encoding.4 = phi i32 [ %or76.le, %exit_loop.loopexit ], [ %encoding.1.lcssa, %for.inc79.exit_loop_crit_edge ]
  %and82 = and i32 %encoding.4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %exit_loop.cleanup108_crit_edge, label %for.cond85.preheader

exit_loop.cleanup108_crit_edge:                   ; preds = %exit_loop
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup108

for.cond85.preheader:                             ; preds = %exit_loop
  br i1 %cmp337.not, label %for.cond85.preheader.for.end105_crit_edge, label %for.cond89.preheader.lr.ph

for.cond85.preheader.for.end105_crit_edge:        ; preds = %for.cond85.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end105

for.cond89.preheader.lr.ph:                       ; preds = %for.cond85.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp90343.not = icmp eq i32 %add, 0
  br label %for.cond89.preheader

for.cond89.preheader:                             ; preds = %for.end101.for.cond89.preheader_crit_edge, %for.cond89.preheader.lr.ph
  %out.0352 = phi ptr [ %1, %for.cond89.preheader.lr.ph ], [ %out.1.lcssa, %for.end101.for.cond89.preheader_crit_edge ]
  %j.1351 = phi i32 [ 0, %for.cond89.preheader.lr.ph ], [ %inc104, %for.end101.for.cond89.preheader_crit_edge ]
  %input.addr.1349 = phi ptr [ %input, %for.cond89.preheader.lr.ph ], [ %add.ptr102, %for.end101.for.cond89.preheader_crit_edge ]
  br i1 %cmp90343.not, label %for.cond89.preheader.for.end101_crit_edge, label %for.cond89.preheader.for.body92_crit_edge

for.cond89.preheader.for.body92_crit_edge:        ; preds = %for.cond89.preheader
  br label %for.body92

for.cond89.preheader.for.end101_crit_edge:        ; preds = %for.cond89.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end101

for.body92:                                       ; preds = %for.body92.for.body92_crit_edge, %for.cond89.preheader.for.body92_crit_edge
  %p.0346 = phi ptr [ %add.ptr100, %for.body92.for.body92_crit_edge ], [ %input.addr.1349, %for.cond89.preheader.for.body92_crit_edge ]
  %out.1345 = phi ptr [ %incdec.ptr, %for.body92.for.body92_crit_edge ], [ %out.0352, %for.cond89.preheader.for.body92_crit_edge ]
  %i.1344 = phi i32 [ %inc99, %for.body92.for.body92_crit_edge ], [ 0, %for.cond89.preheader.for.body92_crit_edge ]
  %206 = ptrtoint ptr %p.0346 to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %p.0346, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %207)
  %cmp94 = icmp eq i8 %207, -1
  %spec.select = select i1 %cmp94, i8 -2, i8 %207
  %incdec.ptr = getelementptr i8, ptr %out.1345, i32 1
  %208 = ptrtoint ptr %out.1345 to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 %spec.select, ptr %out.1345, align 1
  %inc99 = add nuw i32 %i.1344, 1
  %add.ptr100 = getelementptr i8, ptr %p.0346, i32 %input_step
  %exitcond361.not = icmp eq i32 %i.1344, %or
  br i1 %exitcond361.not, label %for.body92.for.end101_crit_edge, label %for.body92.for.body92_crit_edge

for.body92.for.body92_crit_edge:                  ; preds = %for.body92
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body92

for.body92.for.end101_crit_edge:                  ; preds = %for.body92
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end101

for.end101:                                       ; preds = %for.body92.for.end101_crit_edge, %for.cond89.preheader.for.end101_crit_edge
  %out.1.lcssa = phi ptr [ %out.0352, %for.cond89.preheader.for.end101_crit_edge ], [ %incdec.ptr, %for.body92.for.end101_crit_edge ]
  %add.ptr102 = getelementptr i8, ptr %input.addr.1349, i32 %stride
  %inc104 = add nuw i32 %j.1351, 1
  %exitcond362.not = icmp eq i32 %j.1351, %or3
  br i1 %exitcond362.not, label %for.end101.for.end105_crit_edge, label %for.end101.for.cond89.preheader_crit_edge

for.end101.for.cond89.preheader_crit_edge:        ; preds = %for.end101
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond89.preheader

for.end101.for.end105_crit_edge:                  ; preds = %for.end101
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end105

for.end105:                                       ; preds = %for.end101.for.end105_crit_edge, %for.cond85.preheader.for.end105_crit_edge
  %out.0.lcssa = phi ptr [ %1, %for.cond85.preheader.for.end105_crit_edge ], [ %out.1.lcssa, %for.end101.for.end105_crit_edge ]
  %209 = ptrtoint ptr %rlco to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr %out.0.lcssa, ptr %rlco, align 4
  %and106 = and i32 %encoding.4, -2
  br label %cleanup108

cleanup108:                                       ; preds = %for.end105, %exit_loop.cleanup108_crit_edge, %entry.cleanup108_crit_edge
  %retval.0 = phi i32 [ %and106, %for.end105 ], [ %encoding.4, %exit_loop.cleanup108_crit_edge ], [ 0, %entry.cleanup108_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %deltablock) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @fwht_decode_frame(ptr noundef %cf, i32 noundef %hdr_flags, i32 noundef %components_num, i32 noundef %width, i32 noundef %height, ptr nocapture noundef readonly %ref, i32 noundef %ref_stride, i32 noundef %ref_chroma_stride, ptr nocapture noundef readonly %dst, i32 noundef %dst_stride, i32 noundef %dst_chroma_stride) local_unnamed_addr #2 align 64 {
entry:
  %rlco = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rlco) #8
  %rlc_data = getelementptr inbounds %struct.fwht_cframe, ptr %cf, i32 0, i32 2
  %0 = ptrtoint ptr %rlc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rlc_data, align 4
  %2 = ptrtoint ptr %rlco to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %rlco, align 4
  %size = getelementptr inbounds %struct.fwht_cframe, ptr %cf, i32 0, i32 6
  %3 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size, align 4
  %div87 = lshr i32 %4, 1
  %add.ptr = getelementptr i16, ptr %1, i32 %div87
  %add.ptr2 = getelementptr i16, ptr %add.ptr, i32 -1
  %luma = getelementptr inbounds %struct.fwht_raw_frame, ptr %ref, i32 0, i32 6
  %5 = ptrtoint ptr %luma to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %luma, align 4
  %luma_alpha_step = getelementptr inbounds %struct.fwht_raw_frame, ptr %ref, i32 0, i32 2
  %7 = ptrtoint ptr %luma_alpha_step to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %luma_alpha_step, align 4
  %luma3 = getelementptr inbounds %struct.fwht_raw_frame, ptr %dst, i32 0, i32 6
  %9 = ptrtoint ptr %luma3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %luma3, align 4
  %luma_alpha_step4 = getelementptr inbounds %struct.fwht_raw_frame, ptr %dst, i32 0, i32 2
  %11 = ptrtoint ptr %luma_alpha_step4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %luma_alpha_step4, align 4
  %and = and i32 %hdr_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %call = call fastcc zeroext i1 @decode_plane(ptr noundef %cf, ptr noundef nonnull %rlco, i32 noundef %height, i32 noundef %width, ptr noundef %6, i32 noundef %ref_stride, i32 noundef %8, ptr noundef %10, i32 noundef %dst_stride, i32 noundef %12, i1 noundef zeroext %tobool, ptr noundef %add.ptr2)
  br i1 %call, label %if.end, label %entry.cleanup44_crit_edge

entry.cleanup44_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup44

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %components_num)
  %cmp = icmp ugt i32 %components_num, 2
  br i1 %cmp, label %if.then5, label %if.end.if.end43_crit_edge

if.end.if.end43_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then5:                                         ; preds = %if.end
  %and6 = lshr i32 %hdr_flags, 7
  %and6.lobit = and i32 %and6, 1
  %13 = xor i32 %and6.lobit, 1
  %spec.select = lshr i32 %height, %13
  %and11 = lshr i32 %hdr_flags, 8
  %and11.lobit = and i32 %and11, 1
  %14 = xor i32 %and11.lobit, 1
  %w.0 = lshr i32 %width, %14
  %cb = getelementptr inbounds %struct.fwht_raw_frame, ptr %ref, i32 0, i32 7
  %15 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cb, align 4
  %chroma_step = getelementptr inbounds %struct.fwht_raw_frame, ptr %ref, i32 0, i32 3
  %17 = ptrtoint ptr %chroma_step to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %chroma_step, align 4
  %cb16 = getelementptr inbounds %struct.fwht_raw_frame, ptr %dst, i32 0, i32 7
  %19 = ptrtoint ptr %cb16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cb16, align 4
  %chroma_step17 = getelementptr inbounds %struct.fwht_raw_frame, ptr %dst, i32 0, i32 3
  %21 = ptrtoint ptr %chroma_step17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %chroma_step17, align 4
  %and18 = and i32 %hdr_flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19 = icmp ne i32 %and18, 0
  %call20 = call fastcc zeroext i1 @decode_plane(ptr noundef %cf, ptr noundef nonnull %rlco, i32 noundef %spec.select, i32 noundef %w.0, ptr noundef %16, i32 noundef %ref_chroma_stride, i32 noundef %18, ptr noundef %20, i32 noundef %dst_chroma_stride, i32 noundef %22, i1 noundef zeroext %tobool19, ptr noundef %add.ptr2)
  br i1 %call20, label %if.end22, label %if.then5.cleanup44_crit_edge

if.then5.cleanup44_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup44

if.end22:                                         ; preds = %if.then5
  %cr = getelementptr inbounds %struct.fwht_raw_frame, ptr %ref, i32 0, i32 8
  %23 = ptrtoint ptr %cr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cr, align 4
  %25 = ptrtoint ptr %chroma_step to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %chroma_step, align 4
  %cr24 = getelementptr inbounds %struct.fwht_raw_frame, ptr %dst, i32 0, i32 8
  %27 = ptrtoint ptr %cr24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cr24, align 4
  %29 = ptrtoint ptr %chroma_step17 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %chroma_step17, align 4
  %and26 = and i32 %hdr_flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27 = icmp ne i32 %and26, 0
  %call28 = call fastcc zeroext i1 @decode_plane(ptr noundef %cf, ptr noundef nonnull %rlco, i32 noundef %spec.select, i32 noundef %w.0, ptr noundef %24, i32 noundef %ref_chroma_stride, i32 noundef %26, ptr noundef %28, i32 noundef %dst_chroma_stride, i32 noundef %30, i1 noundef zeroext %tobool27, ptr noundef %add.ptr2)
  br i1 %call28, label %if.end32, label %if.end22.cleanup44_crit_edge

if.end22.cleanup44_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup44

if.end32:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %components_num)
  %cmp33 = icmp eq i32 %components_num, 4
  br i1 %cmp33, label %if.then34, label %if.end32.if.end43_crit_edge

if.end32.if.end43_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then34:                                        ; preds = %if.end32
  %alpha = getelementptr inbounds %struct.fwht_raw_frame, ptr %ref, i32 0, i32 9
  %31 = ptrtoint ptr %alpha to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %alpha, align 4
  %33 = ptrtoint ptr %luma_alpha_step to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %luma_alpha_step, align 4
  %alpha36 = getelementptr inbounds %struct.fwht_raw_frame, ptr %dst, i32 0, i32 9
  %35 = ptrtoint ptr %alpha36 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %alpha36, align 4
  %37 = ptrtoint ptr %luma_alpha_step4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %luma_alpha_step4, align 4
  %and38 = and i32 %hdr_flags, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39 = icmp ne i32 %and38, 0
  %call40 = call fastcc zeroext i1 @decode_plane(ptr noundef %cf, ptr noundef nonnull %rlco, i32 noundef %height, i32 noundef %width, ptr noundef %32, i32 noundef %ref_stride, i32 noundef %34, ptr noundef %36, i32 noundef %dst_stride, i32 noundef %38, i1 noundef zeroext %tobool39, ptr noundef %add.ptr2)
  br i1 %call40, label %if.then34.if.end43_crit_edge, label %if.then34.cleanup44_crit_edge

if.then34.cleanup44_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup44

if.then34.if.end43_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.end43:                                         ; preds = %if.then34.if.end43_crit_edge, %if.end32.if.end43_crit_edge, %if.end.if.end43_crit_edge
  br label %cleanup44

cleanup44:                                        ; preds = %if.end43, %if.then34.cleanup44_crit_edge, %if.end22.cleanup44_crit_edge, %if.then5.cleanup44_crit_edge, %entry.cleanup44_crit_edge
  %retval.1 = phi i1 [ true, %if.end43 ], [ false, %if.end22.cleanup44_crit_edge ], [ false, %entry.cleanup44_crit_edge ], [ false, %if.then34.cleanup44_crit_edge ], [ false, %if.then5.cleanup44_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rlco) #8
  ret i1 %retval.1
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @decode_plane(ptr noundef %cf, ptr nocapture noundef %rlco, i32 noundef %height, i32 noundef %width, ptr noundef readonly %ref, i32 noundef %ref_stride, i32 noundef %ref_step, ptr nocapture noundef writeonly %dst, i32 noundef %dst_stride, i32 noundef %dst_step, i1 noundef zeroext %uncompressed, ptr noundef %end_of_rlco_buf) unnamed_addr #2 align 64 {
entry:
  %copy = alloca [64 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %copy)
  %0 = call ptr @memset(ptr %copy, i32 255, i32 128)
  %tobool = icmp ne ptr %ref, null
  %sub = add i32 %width, -1
  %or = or i32 %sub, 7
  %add = add i32 %or, 1
  %sub2 = add i32 %height, -1
  %or3 = or i32 %sub2, 7
  %add4 = add i32 %or3, 1
  br i1 %uncompressed, label %if.then, label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add4)
  %cmp16347.not = icmp eq i32 %add4, 0
  br i1 %cmp16347.not, label %for.cond14.preheader.cleanup99_crit_edge, label %for.cond18.preheader.lr.ph

for.cond14.preheader.cleanup99_crit_edge:         ; preds = %for.cond14.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup99

for.cond18.preheader.lr.ph:                       ; preds = %for.cond14.preheader
  %div15157 = lshr exact i32 %add4, 3
  %div19158 = lshr exact i32 %add, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp20342.not = icmp eq i32 %add, 0
  %de_fwht = getelementptr inbounds %struct.fwht_cframe, ptr %cf, i32 0, i32 5
  %mul.neg.i = mul i32 %dst_step, -8
  %sub.i = add i32 %mul.neg.i, %dst_stride
  %coeffs = getelementptr inbounds %struct.fwht_cframe, ptr %cf, i32 0, i32 3
  %tobool.not161 = xor i1 %tobool, true
  %incdec.ptr5.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 1
  %incdec.ptr5.1.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 2
  %incdec.ptr5.2.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 3
  %incdec.ptr5.3.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 4
  %incdec.ptr5.4.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 5
  %incdec.ptr5.5.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 6
  %incdec.ptr5.6.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 7
  %incdec.ptr5.7.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 8
  %incdec.ptr5.124.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 9
  %incdec.ptr5.1.1.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 10
  %incdec.ptr5.2.1.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 11
  %incdec.ptr5.3.1.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 12
  %incdec.ptr5.4.1.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 13
  %incdec.ptr5.5.1.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 14
  %incdec.ptr5.6.1.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 15
  %incdec.ptr5.7.1.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 16
  %incdec.ptr5.229.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 17
  %incdec.ptr5.1.2.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 18
  %incdec.ptr5.2.2.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 19
  %incdec.ptr5.3.2.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 20
  %incdec.ptr5.4.2.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 21
  %incdec.ptr5.5.2.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 22
  %incdec.ptr5.6.2.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 23
  %incdec.ptr5.7.2.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 24
  %incdec.ptr5.334.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 25
  %incdec.ptr5.1.3.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 26
  %incdec.ptr5.2.3.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 27
  %incdec.ptr5.3.3.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 28
  %incdec.ptr5.4.3.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 29
  %incdec.ptr5.5.3.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 30
  %incdec.ptr5.6.3.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 31
  %incdec.ptr5.7.3.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 32
  %incdec.ptr5.439.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 33
  %incdec.ptr5.1.4.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 34
  %incdec.ptr5.2.4.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 35
  %incdec.ptr5.3.4.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 36
  %incdec.ptr5.4.4.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 37
  %incdec.ptr5.5.4.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 38
  %incdec.ptr5.6.4.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 39
  %incdec.ptr5.7.4.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 40
  %incdec.ptr5.544.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 41
  %incdec.ptr5.1.5.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 42
  %incdec.ptr5.2.5.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 43
  %incdec.ptr5.3.5.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 44
  %incdec.ptr5.4.5.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 45
  %incdec.ptr5.5.5.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 46
  %incdec.ptr5.6.5.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 47
  %incdec.ptr5.7.5.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 48
  %incdec.ptr5.649.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 49
  %incdec.ptr5.1.6.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 50
  %incdec.ptr5.2.6.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 51
  %incdec.ptr5.3.6.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 52
  %incdec.ptr5.4.6.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 53
  %incdec.ptr5.5.6.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 54
  %incdec.ptr5.6.6.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 55
  %incdec.ptr5.7.6.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 56
  %incdec.ptr5.754.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 57
  %incdec.ptr5.1.7.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 58
  %incdec.ptr5.2.7.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 59
  %incdec.ptr5.3.7.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 60
  %incdec.ptr5.4.7.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 61
  %incdec.ptr5.5.7.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 62
  %incdec.ptr5.6.7.i = getelementptr %struct.fwht_cframe, ptr %cf, i32 0, i32 3, i32 63
  %umax = call i32 @llvm.umax.i32(i32 %div19158, i32 1)
  br label %for.cond18.preheader

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i16, ptr %end_of_rlco_buf, i32 1
  %1 = ptrtoint ptr %rlco to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rlco, align 4
  %mul = mul i32 %add, %add4
  %div159 = lshr exact i32 %mul, 1
  %add.ptr7 = getelementptr i16, ptr %2, i32 %div159
  %cmp = icmp ult ptr %add.ptr, %add.ptr7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add4)
  %cmp9352 = icmp eq i32 %add4, 0
  %3 = or i1 %cmp, %cmp9352
  br i1 %3, label %if.then.cleanup_crit_edge, label %for.body.lr.ph

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.then
  %div11160 = lshr exact i32 %add, 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i6.0354 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %dst.addr.0353 = phi ptr [ %dst, %for.body.lr.ph ], [ %add.ptr10, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %rlco to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rlco, align 4
  %6 = call ptr @memcpy(ptr %dst.addr.0353, ptr %5, i32 %add)
  %add.ptr10 = getelementptr i8, ptr %dst.addr.0353, i32 %dst_stride
  %7 = load ptr, ptr %rlco, align 4
  %add.ptr12 = getelementptr i16, ptr %7, i32 %div11160
  store ptr %add.ptr12, ptr %rlco, align 4
  %inc = add nuw i32 %i6.0354, 1
  %exitcond358.not = icmp eq i32 %i6.0354, %or3
  br i1 %exitcond358.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %8 = xor i1 %cmp, true
  br label %cleanup99

for.cond18.preheader:                             ; preds = %for.inc96.for.cond18.preheader_crit_edge, %for.cond18.preheader.lr.ph
  %j.0350 = phi i32 [ 0, %for.cond18.preheader.lr.ph ], [ %inc97, %for.inc96.for.cond18.preheader_crit_edge ]
  %stat.0349 = phi i16 [ -1, %for.cond18.preheader.lr.ph ], [ %stat.1.lcssa, %for.inc96.for.cond18.preheader_crit_edge ]
  %copies.0348 = phi i32 [ 0, %for.cond18.preheader.lr.ph ], [ %copies.1.lcssa, %for.inc96.for.cond18.preheader_crit_edge ]
  br i1 %cmp20342.not, label %for.cond18.preheader.for.inc96_crit_edge, label %for.body21.lr.ph

for.cond18.preheader.for.inc96_crit_edge:         ; preds = %for.cond18.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc96

for.body21.lr.ph:                                 ; preds = %for.cond18.preheader
  %mul22 = shl i32 %j.0350, 3
  %mul23 = mul i32 %mul22, %ref_stride
  %add.ptr24 = getelementptr i8, ptr %ref, i32 %mul23
  %mul29 = mul i32 %mul22, %dst_stride
  %add.ptr30 = getelementptr i8, ptr %dst, i32 %mul29
  br label %for.body21

for.body21:                                       ; preds = %for.inc93.for.body21_crit_edge, %for.body21.lr.ph
  %i.0345 = phi i32 [ 0, %for.body21.lr.ph ], [ %inc94, %for.inc93.for.body21_crit_edge ]
  %stat.1344 = phi i16 [ %stat.0349, %for.body21.lr.ph ], [ %stat.2.ph, %for.inc93.for.body21_crit_edge ]
  %copies.1343 = phi i32 [ %copies.0348, %for.body21.lr.ph ], [ %copies.2.ph, %for.inc93.for.body21_crit_edge ]
  %mul25 = shl i32 %i.0345, 3
  %mul26 = mul i32 %mul25, %ref_step
  %add.ptr27 = getelementptr i8, ptr %add.ptr24, i32 %mul26
  %mul32 = mul i32 %mul25, %dst_step
  %add.ptr33 = getelementptr i8, ptr %add.ptr30, i32 %mul32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copies.1343)
  %tobool34.not = icmp eq i32 %copies.1343, 0
  br i1 %tobool34.not, label %if.end45, label %if.then35

if.then35:                                        ; preds = %for.body21
  %9 = call ptr @memcpy(ptr %de_fwht, ptr %copy, i32 128)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %stat.1344)
  %tobool37.not = icmp slt i16 %stat.1344, 0
  %10 = and i1 %tobool, %tobool37.not
  br i1 %10, label %if.then39, label %if.then35.for.cond1.preheader.i.preheader_crit_edge

if.then35.for.cond1.preheader.i.preheader_crit_edge: ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond1.preheader.i.preheader

if.then39:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @add_deltas(ptr noundef %de_fwht, ptr noundef %add.ptr27, i32 noundef %ref_stride, i32 noundef %ref_step)
  br label %for.cond1.preheader.i.preheader

for.cond1.preheader.i.preheader:                  ; preds = %if.then39, %if.then35.for.cond1.preheader.i.preheader_crit_edge
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.cond1.preheader.i.for.cond1.preheader.i_crit_edge, %for.cond1.preheader.i.preheader
  %i.033.i = phi i32 [ %inc15.i, %for.cond1.preheader.i.for.cond1.preheader.i_crit_edge ], [ 0, %for.cond1.preheader.i.preheader ]
  %dst.addr.032.i = phi ptr [ %add.ptr13.i, %for.cond1.preheader.i.for.cond1.preheader.i_crit_edge ], [ %add.ptr33, %for.cond1.preheader.i.preheader ]
  %input.addr.031.i = phi ptr [ %incdec.ptr.7.i, %for.cond1.preheader.i.for.cond1.preheader.i_crit_edge ], [ %de_fwht, %for.cond1.preheader.i.preheader ]
  %11 = ptrtoint ptr %input.addr.031.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %input.addr.031.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp4.i = icmp slt i16 %12, 0
  %13 = tail call i16 @llvm.umin.i16(i16 %12, i16 255) #8
  %14 = trunc i16 %13 to i8
  %.sink.i = select i1 %cmp4.i, i8 0, i8 %14
  %15 = ptrtoint ptr %dst.addr.032.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %.sink.i, ptr %dst.addr.032.i, align 1
  %incdec.ptr.i = getelementptr i16, ptr %input.addr.031.i, i32 1
  %add.ptr.i = getelementptr i8, ptr %dst.addr.032.i, i32 %dst_step
  %16 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %incdec.ptr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp4.1.i = icmp slt i16 %17, 0
  %18 = tail call i16 @llvm.umin.i16(i16 %17, i16 255) #8
  %19 = trunc i16 %18 to i8
  %.sink34.i = select i1 %cmp4.1.i, i8 0, i8 %19
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %.sink34.i, ptr %add.ptr.i, align 1
  %incdec.ptr.1.i = getelementptr i16, ptr %input.addr.031.i, i32 2
  %add.ptr.1.i = getelementptr i8, ptr %add.ptr.i, i32 %dst_step
  %21 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %incdec.ptr.1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp4.2.i = icmp slt i16 %22, 0
  %23 = tail call i16 @llvm.umin.i16(i16 %22, i16 255) #8
  %24 = trunc i16 %23 to i8
  %.sink35.i = select i1 %cmp4.2.i, i8 0, i8 %24
  %25 = ptrtoint ptr %add.ptr.1.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %.sink35.i, ptr %add.ptr.1.i, align 1
  %incdec.ptr.2.i = getelementptr i16, ptr %input.addr.031.i, i32 3
  %add.ptr.2.i = getelementptr i8, ptr %add.ptr.1.i, i32 %dst_step
  %26 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %incdec.ptr.2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp4.3.i = icmp slt i16 %27, 0
  %28 = tail call i16 @llvm.umin.i16(i16 %27, i16 255) #8
  %29 = trunc i16 %28 to i8
  %.sink36.i = select i1 %cmp4.3.i, i8 0, i8 %29
  %30 = ptrtoint ptr %add.ptr.2.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %.sink36.i, ptr %add.ptr.2.i, align 1
  %incdec.ptr.3.i = getelementptr i16, ptr %input.addr.031.i, i32 4
  %add.ptr.3.i = getelementptr i8, ptr %add.ptr.2.i, i32 %dst_step
  %31 = ptrtoint ptr %incdec.ptr.3.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %incdec.ptr.3.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %cmp4.4.i = icmp slt i16 %32, 0
  %33 = tail call i16 @llvm.umin.i16(i16 %32, i16 255) #8
  %34 = trunc i16 %33 to i8
  %.sink37.i = select i1 %cmp4.4.i, i8 0, i8 %34
  %35 = ptrtoint ptr %add.ptr.3.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %.sink37.i, ptr %add.ptr.3.i, align 1
  %incdec.ptr.4.i = getelementptr i16, ptr %input.addr.031.i, i32 5
  %add.ptr.4.i = getelementptr i8, ptr %add.ptr.3.i, i32 %dst_step
  %36 = ptrtoint ptr %incdec.ptr.4.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %incdec.ptr.4.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %cmp4.5.i = icmp slt i16 %37, 0
  %38 = tail call i16 @llvm.umin.i16(i16 %37, i16 255) #8
  %39 = trunc i16 %38 to i8
  %.sink38.i = select i1 %cmp4.5.i, i8 0, i8 %39
  %40 = ptrtoint ptr %add.ptr.4.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %.sink38.i, ptr %add.ptr.4.i, align 1
  %incdec.ptr.5.i = getelementptr i16, ptr %input.addr.031.i, i32 6
  %add.ptr.5.i = getelementptr i8, ptr %add.ptr.4.i, i32 %dst_step
  %41 = ptrtoint ptr %incdec.ptr.5.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %incdec.ptr.5.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %cmp4.6.i = icmp slt i16 %42, 0
  %43 = tail call i16 @llvm.umin.i16(i16 %42, i16 255) #8
  %44 = trunc i16 %43 to i8
  %.sink39.i = select i1 %cmp4.6.i, i8 0, i8 %44
  %45 = ptrtoint ptr %add.ptr.5.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %.sink39.i, ptr %add.ptr.5.i, align 1
  %incdec.ptr.6.i = getelementptr i16, ptr %input.addr.031.i, i32 7
  %add.ptr.6.i = getelementptr i8, ptr %add.ptr.5.i, i32 %dst_step
  %46 = ptrtoint ptr %incdec.ptr.6.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %incdec.ptr.6.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %cmp4.7.i = icmp slt i16 %47, 0
  %48 = tail call i16 @llvm.umin.i16(i16 %47, i16 255) #8
  %49 = trunc i16 %48 to i8
  %.sink40.i = select i1 %cmp4.7.i, i8 0, i8 %49
  %50 = ptrtoint ptr %add.ptr.6.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %.sink40.i, ptr %add.ptr.6.i, align 1
  %incdec.ptr.7.i = getelementptr i16, ptr %input.addr.031.i, i32 8
  %add.ptr.7.i = getelementptr i8, ptr %add.ptr.6.i, i32 %dst_step
  %add.ptr13.i = getelementptr i8, ptr %add.ptr.7.i, i32 %sub.i
  %inc15.i = add nuw nsw i32 %i.033.i, 1
  %exitcond.not.i = icmp eq i32 %inc15.i, 8
  br i1 %exitcond.not.i, label %fill_decoder_block.exit, label %for.cond1.preheader.i.for.cond1.preheader.i_crit_edge

for.cond1.preheader.i.for.cond1.preheader.i_crit_edge: ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond1.preheader.i

fill_decoder_block.exit:                          ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  %dec = add i32 %copies.1343, -1
  br label %for.inc93

if.end45:                                         ; preds = %for.body21
  %call = tail call fastcc zeroext i16 @derlc(ptr noundef %rlco, ptr noundef %coeffs, ptr noundef %end_of_rlco_buf)
  %conv47 = zext i16 %call to i32
  %and48 = and i32 %conv47, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end45.cleanup99_crit_edge

if.end45.cleanup99_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup99

if.end51:                                         ; preds = %if.end45
  %and53 = and i32 %conv47, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  %brmerge162 = or i1 %tobool54.not, %tobool.not161
  %51 = ptrtoint ptr %coeffs to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %coeffs, align 2
  %. = select i1 %brmerge162, i16 2, i16 3
  %.408 = select i1 %brmerge162, i16 6, i16 9
  %.409 = select i1 %brmerge162, i16 8, i16 10
  %shl.i165 = shl i16 %52, %.
  store i16 %shl.i165, ptr %coeffs, align 2
  %53 = ptrtoint ptr %incdec.ptr5.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %incdec.ptr5.i, align 2
  %shl.1.i167 = shl i16 %54, %.
  store i16 %shl.1.i167, ptr %incdec.ptr5.i, align 2
  %55 = ptrtoint ptr %incdec.ptr5.1.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %incdec.ptr5.1.i, align 2
  %shl.2.i169 = shl i16 %56, %.
  store i16 %shl.2.i169, ptr %incdec.ptr5.1.i, align 2
  %57 = ptrtoint ptr %incdec.ptr5.2.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %incdec.ptr5.2.i, align 2
  %shl.3.i171 = shl i16 %58, %.
  store i16 %shl.3.i171, ptr %incdec.ptr5.2.i, align 2
  %59 = ptrtoint ptr %incdec.ptr5.3.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %incdec.ptr5.3.i, align 2
  %shl.4.i173 = shl i16 %60, %.
  store i16 %shl.4.i173, ptr %incdec.ptr5.3.i, align 2
  %61 = ptrtoint ptr %incdec.ptr5.4.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %incdec.ptr5.4.i, align 2
  %shl.5.i175 = shl i16 %62, %.
  store i16 %shl.5.i175, ptr %incdec.ptr5.4.i, align 2
  %63 = ptrtoint ptr %incdec.ptr5.5.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %incdec.ptr5.5.i, align 2
  %shl.6.i177 = shl i16 %64, %.
  store i16 %shl.6.i177, ptr %incdec.ptr5.5.i, align 2
  %65 = ptrtoint ptr %incdec.ptr5.6.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %incdec.ptr5.6.i, align 2
  %shl.7.i179 = shl i16 %66, %.
  store i16 %shl.7.i179, ptr %incdec.ptr5.6.i, align 2
  %67 = ptrtoint ptr %incdec.ptr5.7.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %incdec.ptr5.7.i, align 2
  %shl.121.i181 = shl i16 %68, %.
  store i16 %shl.121.i181, ptr %incdec.ptr5.7.i, align 2
  %69 = ptrtoint ptr %incdec.ptr5.124.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %incdec.ptr5.124.i, align 2
  %shl.1.1.i183 = shl i16 %70, %.
  store i16 %shl.1.1.i183, ptr %incdec.ptr5.124.i, align 2
  %71 = ptrtoint ptr %incdec.ptr5.1.1.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %incdec.ptr5.1.1.i, align 2
  %shl.2.1.i185 = shl i16 %72, %.
  store i16 %shl.2.1.i185, ptr %incdec.ptr5.1.1.i, align 2
  %73 = ptrtoint ptr %incdec.ptr5.2.1.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %incdec.ptr5.2.1.i, align 2
  %shl.3.1.i187 = shl i16 %74, %.
  store i16 %shl.3.1.i187, ptr %incdec.ptr5.2.1.i, align 2
  %75 = ptrtoint ptr %incdec.ptr5.3.1.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %incdec.ptr5.3.1.i, align 2
  %shl.4.1.i189 = shl i16 %76, %.
  store i16 %shl.4.1.i189, ptr %incdec.ptr5.3.1.i, align 2
  %77 = ptrtoint ptr %incdec.ptr5.4.1.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %incdec.ptr5.4.1.i, align 2
  %shl.5.1.i191 = shl i16 %78, %.
  store i16 %shl.5.1.i191, ptr %incdec.ptr5.4.1.i, align 2
  %79 = ptrtoint ptr %incdec.ptr5.5.1.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %incdec.ptr5.5.1.i, align 2
  %shl.6.1.i193 = shl i16 %80, %.
  store i16 %shl.6.1.i193, ptr %incdec.ptr5.5.1.i, align 2
  %81 = ptrtoint ptr %incdec.ptr5.6.1.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %incdec.ptr5.6.1.i, align 2
  %shl.7.1.i195 = shl i16 %82, %.
  store i16 %shl.7.1.i195, ptr %incdec.ptr5.6.1.i, align 2
  %83 = ptrtoint ptr %incdec.ptr5.7.1.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %incdec.ptr5.7.1.i, align 2
  %shl.226.i197 = shl i16 %84, %.
  store i16 %shl.226.i197, ptr %incdec.ptr5.7.1.i, align 2
  %85 = ptrtoint ptr %incdec.ptr5.229.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %incdec.ptr5.229.i, align 2
  %shl.1.2.i199 = shl i16 %86, %.
  store i16 %shl.1.2.i199, ptr %incdec.ptr5.229.i, align 2
  %87 = ptrtoint ptr %incdec.ptr5.1.2.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %incdec.ptr5.1.2.i, align 2
  %shl.2.2.i201 = shl i16 %88, %.
  store i16 %shl.2.2.i201, ptr %incdec.ptr5.1.2.i, align 2
  %89 = ptrtoint ptr %incdec.ptr5.2.2.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %incdec.ptr5.2.2.i, align 2
  %shl.3.2.i203 = shl i16 %90, %.
  store i16 %shl.3.2.i203, ptr %incdec.ptr5.2.2.i, align 2
  %91 = ptrtoint ptr %incdec.ptr5.3.2.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %incdec.ptr5.3.2.i, align 2
  %shl.4.2.i205 = shl i16 %92, %.
  store i16 %shl.4.2.i205, ptr %incdec.ptr5.3.2.i, align 2
  %93 = ptrtoint ptr %incdec.ptr5.4.2.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %incdec.ptr5.4.2.i, align 2
  %shl.5.2.i207 = shl i16 %94, %.
  store i16 %shl.5.2.i207, ptr %incdec.ptr5.4.2.i, align 2
  %95 = ptrtoint ptr %incdec.ptr5.5.2.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %incdec.ptr5.5.2.i, align 2
  %shl.6.2.i209 = shl i16 %96, %.
  store i16 %shl.6.2.i209, ptr %incdec.ptr5.5.2.i, align 2
  %97 = ptrtoint ptr %incdec.ptr5.6.2.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %incdec.ptr5.6.2.i, align 2
  %shl.7.2.i211 = shl i16 %98, 3
  store i16 %shl.7.2.i211, ptr %incdec.ptr5.6.2.i, align 2
  %99 = ptrtoint ptr %incdec.ptr5.7.2.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %incdec.ptr5.7.2.i, align 2
  %shl.331.i213 = shl i16 %100, %.
  store i16 %shl.331.i213, ptr %incdec.ptr5.7.2.i, align 2
  %101 = ptrtoint ptr %incdec.ptr5.334.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %incdec.ptr5.334.i, align 2
  %shl.1.3.i215 = shl i16 %102, %.
  store i16 %shl.1.3.i215, ptr %incdec.ptr5.334.i, align 2
  %103 = ptrtoint ptr %incdec.ptr5.1.3.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %incdec.ptr5.1.3.i, align 2
  %shl.2.3.i217 = shl i16 %104, %.
  store i16 %shl.2.3.i217, ptr %incdec.ptr5.1.3.i, align 2
  %105 = ptrtoint ptr %incdec.ptr5.2.3.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %incdec.ptr5.2.3.i, align 2
  %shl.3.3.i219 = shl i16 %106, %.
  store i16 %shl.3.3.i219, ptr %incdec.ptr5.2.3.i, align 2
  %107 = ptrtoint ptr %incdec.ptr5.3.3.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %incdec.ptr5.3.3.i, align 2
  %shl.4.3.i221 = shl i16 %108, %.
  store i16 %shl.4.3.i221, ptr %incdec.ptr5.3.3.i, align 2
  %109 = ptrtoint ptr %incdec.ptr5.4.3.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %incdec.ptr5.4.3.i, align 2
  %shl.5.3.i223 = shl i16 %110, %.
  store i16 %shl.5.3.i223, ptr %incdec.ptr5.4.3.i, align 2
  %111 = ptrtoint ptr %incdec.ptr5.5.3.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %incdec.ptr5.5.3.i, align 2
  %shl.6.3.i225 = shl i16 %112, 3
  store i16 %shl.6.3.i225, ptr %incdec.ptr5.5.3.i, align 2
  %113 = ptrtoint ptr %incdec.ptr5.6.3.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %incdec.ptr5.6.3.i, align 2
  %shl.7.3.i227 = shl i16 %114, 6
  store i16 %shl.7.3.i227, ptr %incdec.ptr5.6.3.i, align 2
  %115 = ptrtoint ptr %incdec.ptr5.7.3.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %incdec.ptr5.7.3.i, align 2
  %shl.436.i229 = shl i16 %116, %.
  store i16 %shl.436.i229, ptr %incdec.ptr5.7.3.i, align 2
  %117 = ptrtoint ptr %incdec.ptr5.439.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %incdec.ptr5.439.i, align 2
  %shl.1.4.i231 = shl i16 %118, %.
  store i16 %shl.1.4.i231, ptr %incdec.ptr5.439.i, align 2
  %119 = ptrtoint ptr %incdec.ptr5.1.4.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %incdec.ptr5.1.4.i, align 2
  %shl.2.4.i233 = shl i16 %120, %.
  store i16 %shl.2.4.i233, ptr %incdec.ptr5.1.4.i, align 2
  %121 = ptrtoint ptr %incdec.ptr5.2.4.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %incdec.ptr5.2.4.i, align 2
  %shl.3.4.i235 = shl i16 %122, %.
  store i16 %shl.3.4.i235, ptr %incdec.ptr5.2.4.i, align 2
  %123 = ptrtoint ptr %incdec.ptr5.3.4.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %incdec.ptr5.3.4.i, align 2
  %shl.4.4.i237 = shl i16 %124, %.
  store i16 %shl.4.4.i237, ptr %incdec.ptr5.3.4.i, align 2
  %125 = ptrtoint ptr %incdec.ptr5.4.4.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %incdec.ptr5.4.4.i, align 2
  %shl.5.4.i239 = shl i16 %126, 3
  store i16 %shl.5.4.i239, ptr %incdec.ptr5.4.4.i, align 2
  %127 = ptrtoint ptr %incdec.ptr5.5.4.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %incdec.ptr5.5.4.i, align 2
  %shl.6.4.i241 = shl i16 %128, 6
  store i16 %shl.6.4.i241, ptr %incdec.ptr5.5.4.i, align 2
  %129 = ptrtoint ptr %incdec.ptr5.6.4.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %incdec.ptr5.6.4.i, align 2
  %shl.7.4.i243 = shl i16 %130, 6
  store i16 %shl.7.4.i243, ptr %incdec.ptr5.6.4.i, align 2
  %131 = ptrtoint ptr %incdec.ptr5.7.4.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %incdec.ptr5.7.4.i, align 2
  %shl.541.i245 = shl i16 %132, %.
  store i16 %shl.541.i245, ptr %incdec.ptr5.7.4.i, align 2
  %133 = ptrtoint ptr %incdec.ptr5.544.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %incdec.ptr5.544.i, align 2
  %shl.1.5.i247 = shl i16 %134, %.
  store i16 %shl.1.5.i247, ptr %incdec.ptr5.544.i, align 2
  %135 = ptrtoint ptr %incdec.ptr5.1.5.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %incdec.ptr5.1.5.i, align 2
  %shl.2.5.i249 = shl i16 %136, %.
  store i16 %shl.2.5.i249, ptr %incdec.ptr5.1.5.i, align 2
  %137 = ptrtoint ptr %incdec.ptr5.2.5.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %incdec.ptr5.2.5.i, align 2
  %shl.3.5.i251 = shl i16 %138, %.
  store i16 %shl.3.5.i251, ptr %incdec.ptr5.2.5.i, align 2
  %139 = ptrtoint ptr %incdec.ptr5.3.5.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %incdec.ptr5.3.5.i, align 2
  %shl.4.5.i253 = shl i16 %140, 3
  store i16 %shl.4.5.i253, ptr %incdec.ptr5.3.5.i, align 2
  %141 = ptrtoint ptr %incdec.ptr5.4.5.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %incdec.ptr5.4.5.i, align 2
  %shl.5.5.i255 = shl i16 %142, 6
  store i16 %shl.5.5.i255, ptr %incdec.ptr5.4.5.i, align 2
  %143 = ptrtoint ptr %incdec.ptr5.5.5.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %incdec.ptr5.5.5.i, align 2
  %shl.6.5.i257 = shl i16 %144, 6
  store i16 %shl.6.5.i257, ptr %incdec.ptr5.5.5.i, align 2
  %145 = ptrtoint ptr %incdec.ptr5.6.5.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %incdec.ptr5.6.5.i, align 2
  %shl.7.5.i259 = shl i16 %146, %.408
  store i16 %shl.7.5.i259, ptr %incdec.ptr5.6.5.i, align 2
  %147 = ptrtoint ptr %incdec.ptr5.7.5.i to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %incdec.ptr5.7.5.i, align 2
  %shl.646.i261 = shl i16 %148, %.
  store i16 %shl.646.i261, ptr %incdec.ptr5.7.5.i, align 2
  %149 = ptrtoint ptr %incdec.ptr5.649.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %incdec.ptr5.649.i, align 2
  %shl.1.6.i263 = shl i16 %150, %.
  store i16 %shl.1.6.i263, ptr %incdec.ptr5.649.i, align 2
  %151 = ptrtoint ptr %incdec.ptr5.1.6.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %incdec.ptr5.1.6.i, align 2
  %shl.2.6.i265 = shl i16 %152, %.
  store i16 %shl.2.6.i265, ptr %incdec.ptr5.1.6.i, align 2
  %153 = ptrtoint ptr %incdec.ptr5.2.6.i to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %incdec.ptr5.2.6.i, align 2
  %shl.3.6.i267 = shl i16 %154, 3
  store i16 %shl.3.6.i267, ptr %incdec.ptr5.2.6.i, align 2
  %155 = ptrtoint ptr %incdec.ptr5.3.6.i to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %incdec.ptr5.3.6.i, align 2
  %shl.4.6.i269 = shl i16 %156, 6
  store i16 %shl.4.6.i269, ptr %incdec.ptr5.3.6.i, align 2
  %157 = ptrtoint ptr %incdec.ptr5.4.6.i to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %incdec.ptr5.4.6.i, align 2
  %shl.5.6.i271 = shl i16 %158, 6
  store i16 %shl.5.6.i271, ptr %incdec.ptr5.4.6.i, align 2
  %159 = ptrtoint ptr %incdec.ptr5.5.6.i to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %incdec.ptr5.5.6.i, align 2
  %shl.6.6.i273 = shl i16 %160, %.408
  store i16 %shl.6.6.i273, ptr %incdec.ptr5.5.6.i, align 2
  %161 = ptrtoint ptr %incdec.ptr5.6.6.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %incdec.ptr5.6.6.i, align 2
  %shl.7.6.i275 = shl i16 %162, %.408
  store i16 %shl.7.6.i275, ptr %incdec.ptr5.6.6.i, align 2
  %163 = ptrtoint ptr %incdec.ptr5.7.6.i to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %incdec.ptr5.7.6.i, align 2
  %shl.751.i277 = shl i16 %164, %.
  store i16 %shl.751.i277, ptr %incdec.ptr5.7.6.i, align 2
  %165 = ptrtoint ptr %incdec.ptr5.754.i to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %incdec.ptr5.754.i, align 2
  %shl.1.7.i279 = shl i16 %166, %.
  store i16 %shl.1.7.i279, ptr %incdec.ptr5.754.i, align 2
  %167 = ptrtoint ptr %incdec.ptr5.1.7.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %incdec.ptr5.1.7.i, align 2
  %shl.2.7.i281 = shl i16 %168, 3
  store i16 %shl.2.7.i281, ptr %incdec.ptr5.1.7.i, align 2
  %169 = ptrtoint ptr %incdec.ptr5.2.7.i to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %incdec.ptr5.2.7.i, align 2
  %shl.3.7.i283 = shl i16 %170, 6
  store i16 %shl.3.7.i283, ptr %incdec.ptr5.2.7.i, align 2
  %171 = ptrtoint ptr %incdec.ptr5.3.7.i to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %incdec.ptr5.3.7.i, align 2
  %shl.4.7.i285 = shl i16 %172, 6
  store i16 %shl.4.7.i285, ptr %incdec.ptr5.3.7.i, align 2
  %173 = ptrtoint ptr %incdec.ptr5.4.7.i to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %incdec.ptr5.4.7.i, align 2
  %shl.5.7.i287 = shl i16 %174, %.408
  store i16 %shl.5.7.i287, ptr %incdec.ptr5.4.7.i, align 2
  %175 = ptrtoint ptr %incdec.ptr5.5.7.i to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %incdec.ptr5.5.7.i, align 2
  %shl.6.7.i289 = shl i16 %176, %.408
  store i16 %shl.6.7.i289, ptr %incdec.ptr5.5.7.i, align 2
  %177 = ptrtoint ptr %incdec.ptr5.6.7.i to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %incdec.ptr5.6.7.i, align 2
  %shl.7.7.i291 = shl i16 %178, %.409
  store i16 %shl.7.7.i291, ptr %incdec.ptr5.6.7.i, align 2
  %cond = zext i1 %brmerge162 to i32
  tail call fastcc void @ifwht(ptr noundef %coeffs, ptr noundef %de_fwht, i32 noundef %cond)
  %and73 = lshr i32 %conv47, 1
  %179 = and i32 %and73, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %tobool74.not = icmp eq i32 %179, 0
  br i1 %tobool74.not, label %if.end51.if.end79_crit_edge, label %if.then75

if.end51.if.end79_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

if.then75:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %180 = call ptr @memcpy(ptr %copy, ptr %de_fwht, i32 128)
  br label %if.end79

if.end79:                                         ; preds = %if.then75, %if.end51.if.end79_crit_edge
  br i1 %brmerge162, label %if.end79.for.cond1.preheader.i332.preheader_crit_edge, label %if.then85

if.end79.for.cond1.preheader.i332.preheader_crit_edge: ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond1.preheader.i332.preheader

if.then85:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @add_deltas(ptr noundef %de_fwht, ptr noundef %add.ptr27, i32 noundef %ref_stride, i32 noundef %ref_step)
  br label %for.cond1.preheader.i332.preheader

for.cond1.preheader.i332.preheader:               ; preds = %if.then85, %if.end79.for.cond1.preheader.i332.preheader_crit_edge
  br label %for.cond1.preheader.i332

for.cond1.preheader.i332:                         ; preds = %for.cond1.preheader.i332.for.cond1.preheader.i332_crit_edge, %for.cond1.preheader.i332.preheader
  %i.033.i294 = phi i32 [ %inc15.i330, %for.cond1.preheader.i332.for.cond1.preheader.i332_crit_edge ], [ 0, %for.cond1.preheader.i332.preheader ]
  %dst.addr.032.i295 = phi ptr [ %add.ptr13.i329, %for.cond1.preheader.i332.for.cond1.preheader.i332_crit_edge ], [ %add.ptr33, %for.cond1.preheader.i332.preheader ]
  %input.addr.031.i296 = phi ptr [ %incdec.ptr.7.i327, %for.cond1.preheader.i332.for.cond1.preheader.i332_crit_edge ], [ %de_fwht, %for.cond1.preheader.i332.preheader ]
  %181 = ptrtoint ptr %input.addr.031.i296 to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %input.addr.031.i296, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %182)
  %cmp4.i297 = icmp slt i16 %182, 0
  %183 = tail call i16 @llvm.umin.i16(i16 %182, i16 255) #8
  %184 = trunc i16 %183 to i8
  %.sink.i298 = select i1 %cmp4.i297, i8 0, i8 %184
  %185 = ptrtoint ptr %dst.addr.032.i295 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %.sink.i298, ptr %dst.addr.032.i295, align 1
  %incdec.ptr.i299 = getelementptr i16, ptr %input.addr.031.i296, i32 1
  %add.ptr.i300 = getelementptr i8, ptr %dst.addr.032.i295, i32 %dst_step
  %186 = ptrtoint ptr %incdec.ptr.i299 to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %incdec.ptr.i299, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %187)
  %cmp4.1.i301 = icmp slt i16 %187, 0
  %188 = tail call i16 @llvm.umin.i16(i16 %187, i16 255) #8
  %189 = trunc i16 %188 to i8
  %.sink34.i302 = select i1 %cmp4.1.i301, i8 0, i8 %189
  %190 = ptrtoint ptr %add.ptr.i300 to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 %.sink34.i302, ptr %add.ptr.i300, align 1
  %incdec.ptr.1.i303 = getelementptr i16, ptr %input.addr.031.i296, i32 2
  %add.ptr.1.i304 = getelementptr i8, ptr %add.ptr.i300, i32 %dst_step
  %191 = ptrtoint ptr %incdec.ptr.1.i303 to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %incdec.ptr.1.i303, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %192)
  %cmp4.2.i305 = icmp slt i16 %192, 0
  %193 = tail call i16 @llvm.umin.i16(i16 %192, i16 255) #8
  %194 = trunc i16 %193 to i8
  %.sink35.i306 = select i1 %cmp4.2.i305, i8 0, i8 %194
  %195 = ptrtoint ptr %add.ptr.1.i304 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %.sink35.i306, ptr %add.ptr.1.i304, align 1
  %incdec.ptr.2.i307 = getelementptr i16, ptr %input.addr.031.i296, i32 3
  %add.ptr.2.i308 = getelementptr i8, ptr %add.ptr.1.i304, i32 %dst_step
  %196 = ptrtoint ptr %incdec.ptr.2.i307 to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %incdec.ptr.2.i307, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %197)
  %cmp4.3.i309 = icmp slt i16 %197, 0
  %198 = tail call i16 @llvm.umin.i16(i16 %197, i16 255) #8
  %199 = trunc i16 %198 to i8
  %.sink36.i310 = select i1 %cmp4.3.i309, i8 0, i8 %199
  %200 = ptrtoint ptr %add.ptr.2.i308 to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 %.sink36.i310, ptr %add.ptr.2.i308, align 1
  %incdec.ptr.3.i311 = getelementptr i16, ptr %input.addr.031.i296, i32 4
  %add.ptr.3.i312 = getelementptr i8, ptr %add.ptr.2.i308, i32 %dst_step
  %201 = ptrtoint ptr %incdec.ptr.3.i311 to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %incdec.ptr.3.i311, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %202)
  %cmp4.4.i313 = icmp slt i16 %202, 0
  %203 = tail call i16 @llvm.umin.i16(i16 %202, i16 255) #8
  %204 = trunc i16 %203 to i8
  %.sink37.i314 = select i1 %cmp4.4.i313, i8 0, i8 %204
  %205 = ptrtoint ptr %add.ptr.3.i312 to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 %.sink37.i314, ptr %add.ptr.3.i312, align 1
  %incdec.ptr.4.i315 = getelementptr i16, ptr %input.addr.031.i296, i32 5
  %add.ptr.4.i316 = getelementptr i8, ptr %add.ptr.3.i312, i32 %dst_step
  %206 = ptrtoint ptr %incdec.ptr.4.i315 to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %incdec.ptr.4.i315, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %207)
  %cmp4.5.i317 = icmp slt i16 %207, 0
  %208 = tail call i16 @llvm.umin.i16(i16 %207, i16 255) #8
  %209 = trunc i16 %208 to i8
  %.sink38.i318 = select i1 %cmp4.5.i317, i8 0, i8 %209
  %210 = ptrtoint ptr %add.ptr.4.i316 to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %.sink38.i318, ptr %add.ptr.4.i316, align 1
  %incdec.ptr.5.i319 = getelementptr i16, ptr %input.addr.031.i296, i32 6
  %add.ptr.5.i320 = getelementptr i8, ptr %add.ptr.4.i316, i32 %dst_step
  %211 = ptrtoint ptr %incdec.ptr.5.i319 to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %incdec.ptr.5.i319, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %212)
  %cmp4.6.i321 = icmp slt i16 %212, 0
  %213 = tail call i16 @llvm.umin.i16(i16 %212, i16 255) #8
  %214 = trunc i16 %213 to i8
  %.sink39.i322 = select i1 %cmp4.6.i321, i8 0, i8 %214
  %215 = ptrtoint ptr %add.ptr.5.i320 to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 %.sink39.i322, ptr %add.ptr.5.i320, align 1
  %incdec.ptr.6.i323 = getelementptr i16, ptr %input.addr.031.i296, i32 7
  %add.ptr.6.i324 = getelementptr i8, ptr %add.ptr.5.i320, i32 %dst_step
  %216 = ptrtoint ptr %incdec.ptr.6.i323 to i32
  call void @__asan_load2_noabort(i32 %216)
  %217 = load i16, ptr %incdec.ptr.6.i323, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %217)
  %cmp4.7.i325 = icmp slt i16 %217, 0
  %218 = tail call i16 @llvm.umin.i16(i16 %217, i16 255) #8
  %219 = trunc i16 %218 to i8
  %.sink40.i326 = select i1 %cmp4.7.i325, i8 0, i8 %219
  %220 = ptrtoint ptr %add.ptr.6.i324 to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 %.sink40.i326, ptr %add.ptr.6.i324, align 1
  %incdec.ptr.7.i327 = getelementptr i16, ptr %input.addr.031.i296, i32 8
  %add.ptr.7.i328 = getelementptr i8, ptr %add.ptr.6.i324, i32 %dst_step
  %add.ptr13.i329 = getelementptr i8, ptr %add.ptr.7.i328, i32 %sub.i
  %inc15.i330 = add nuw nsw i32 %i.033.i294, 1
  %exitcond.not.i331 = icmp eq i32 %inc15.i330, 8
  br i1 %exitcond.not.i331, label %for.cond1.preheader.i332.for.inc93_crit_edge, label %for.cond1.preheader.i332.for.cond1.preheader.i332_crit_edge

for.cond1.preheader.i332.for.cond1.preheader.i332_crit_edge: ; preds = %for.cond1.preheader.i332
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond1.preheader.i332

for.cond1.preheader.i332.for.inc93_crit_edge:     ; preds = %for.cond1.preheader.i332
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc93

for.inc93:                                        ; preds = %for.cond1.preheader.i332.for.inc93_crit_edge, %fill_decoder_block.exit
  %copies.2.ph = phi i32 [ %dec, %fill_decoder_block.exit ], [ %179, %for.cond1.preheader.i332.for.inc93_crit_edge ]
  %stat.2.ph = phi i16 [ %stat.1344, %fill_decoder_block.exit ], [ %call, %for.cond1.preheader.i332.for.inc93_crit_edge ]
  %inc94 = add nuw nsw i32 %i.0345, 1
  %exitcond.not = icmp eq i32 %inc94, %umax
  br i1 %exitcond.not, label %for.inc93.for.inc96_crit_edge, label %for.inc93.for.body21_crit_edge

for.inc93.for.body21_crit_edge:                   ; preds = %for.inc93
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body21

for.inc93.for.inc96_crit_edge:                    ; preds = %for.inc93
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc96

for.inc96:                                        ; preds = %for.inc93.for.inc96_crit_edge, %for.cond18.preheader.for.inc96_crit_edge
  %copies.1.lcssa = phi i32 [ %copies.0348, %for.cond18.preheader.for.inc96_crit_edge ], [ %copies.2.ph, %for.inc93.for.inc96_crit_edge ]
  %stat.1.lcssa = phi i16 [ %stat.0349, %for.cond18.preheader.for.inc96_crit_edge ], [ %stat.2.ph, %for.inc93.for.inc96_crit_edge ]
  %inc97 = add nuw nsw i32 %j.0350, 1
  %exitcond357.not = icmp eq i32 %inc97, %div15157
  br i1 %exitcond357.not, label %for.inc96.cleanup99_crit_edge, label %for.inc96.for.cond18.preheader_crit_edge

for.inc96.for.cond18.preheader_crit_edge:         ; preds = %for.inc96
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond18.preheader

for.inc96.cleanup99_crit_edge:                    ; preds = %for.inc96
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup99

cleanup99:                                        ; preds = %for.inc96.cleanup99_crit_edge, %if.end45.cleanup99_crit_edge, %cleanup, %for.cond14.preheader.cleanup99_crit_edge
  %retval.4 = phi i1 [ %8, %cleanup ], [ true, %for.cond14.preheader.cleanup99_crit_edge ], [ false, %if.end45.cleanup99_crit_edge ], [ true, %for.inc96.cleanup99_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %copy)
  ret i1 %retval.4
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @decide_blocktype(ptr nocapture noundef readonly %cur, ptr nocapture noundef readonly %reference, ptr nocapture noundef writeonly %deltablock, i32 noundef %stride, i32 noundef %input_step) unnamed_addr #3 align 64 {
entry:
  %tmp = alloca [64 x i16], align 2
  %old = alloca [64 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %tmp) #8
  %0 = getelementptr inbounds i8, ptr %tmp, i32 24
  %1 = call ptr @memset(ptr %0, i32 255, i32 104)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %old) #8
  %2 = call ptr @memset(ptr %old, i32 255, i32 128)
  %mul.neg.i = mul i32 %input_step, -8
  %sub.i = add i32 %mul.neg.i, %stride
  %3 = ptrtoint ptr %cur to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %cur, align 1
  %conv.i = zext i8 %4 to i16
  %incdec.ptr.i = getelementptr inbounds i16, ptr %tmp, i32 1
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv.i, ptr %tmp, align 2
  %add.ptr.i = getelementptr i8, ptr %cur, i32 %input_step
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr.i, align 1
  %conv.1.i = zext i8 %7 to i16
  %incdec.ptr.1.i = getelementptr inbounds i16, ptr %tmp, i32 2
  %8 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.1.i, ptr %incdec.ptr.i, align 2
  %add.ptr.1.i = getelementptr i8, ptr %add.ptr.i, i32 %input_step
  %9 = ptrtoint ptr %add.ptr.1.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %add.ptr.1.i, align 1
  %conv.2.i = zext i8 %10 to i16
  %incdec.ptr.2.i = getelementptr inbounds i16, ptr %tmp, i32 3
  %11 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.2.i, ptr %incdec.ptr.1.i, align 2
  %add.ptr.2.i = getelementptr i8, ptr %add.ptr.1.i, i32 %input_step
  %12 = ptrtoint ptr %add.ptr.2.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr.2.i, align 1
  %conv.3.i = zext i8 %13 to i16
  %incdec.ptr.3.i = getelementptr inbounds i16, ptr %tmp, i32 4
  %14 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.3.i, ptr %incdec.ptr.2.i, align 2
  %add.ptr.3.i = getelementptr i8, ptr %add.ptr.2.i, i32 %input_step
  %15 = ptrtoint ptr %add.ptr.3.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %add.ptr.3.i, align 1
  %conv.4.i = zext i8 %16 to i16
  %incdec.ptr.4.i = getelementptr inbounds i16, ptr %tmp, i32 5
  %17 = ptrtoint ptr %incdec.ptr.3.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.4.i, ptr %incdec.ptr.3.i, align 2
  %add.ptr.4.i = getelementptr i8, ptr %add.ptr.3.i, i32 %input_step
  %18 = ptrtoint ptr %add.ptr.4.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %add.ptr.4.i, align 1
  %conv.5.i = zext i8 %19 to i16
  %incdec.ptr.5.i = getelementptr inbounds i16, ptr %tmp, i32 6
  %20 = ptrtoint ptr %incdec.ptr.4.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.5.i, ptr %incdec.ptr.4.i, align 2
  %add.ptr.5.i = getelementptr i8, ptr %add.ptr.4.i, i32 %input_step
  %21 = ptrtoint ptr %add.ptr.5.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %add.ptr.5.i, align 1
  %conv.6.i = zext i8 %22 to i16
  %incdec.ptr.6.i = getelementptr inbounds i16, ptr %tmp, i32 7
  %23 = ptrtoint ptr %incdec.ptr.5.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv.6.i, ptr %incdec.ptr.5.i, align 2
  %add.ptr.6.i = getelementptr i8, ptr %add.ptr.5.i, i32 %input_step
  %24 = ptrtoint ptr %add.ptr.6.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %add.ptr.6.i, align 1
  %conv.7.i = zext i8 %25 to i16
  %incdec.ptr.7.i = getelementptr inbounds i16, ptr %tmp, i32 8
  %26 = ptrtoint ptr %incdec.ptr.6.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.7.i, ptr %incdec.ptr.6.i, align 2
  %add.ptr.7.i = getelementptr i8, ptr %add.ptr.6.i, i32 %input_step
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.7.i, i32 %sub.i
  %27 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %add.ptr4.i, align 1
  %conv.119.i = zext i8 %28 to i16
  %incdec.ptr.120.i = getelementptr inbounds i16, ptr %tmp, i32 9
  %29 = ptrtoint ptr %incdec.ptr.7.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv.119.i, ptr %incdec.ptr.7.i, align 2
  %add.ptr.121.i = getelementptr i8, ptr %add.ptr4.i, i32 %input_step
  %30 = ptrtoint ptr %add.ptr.121.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %add.ptr.121.i, align 1
  %conv.1.1.i = zext i8 %31 to i16
  %incdec.ptr.1.1.i = getelementptr inbounds i16, ptr %tmp, i32 10
  %32 = ptrtoint ptr %incdec.ptr.120.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.1.1.i, ptr %incdec.ptr.120.i, align 2
  %add.ptr.1.1.i = getelementptr i8, ptr %add.ptr.121.i, i32 %input_step
  %33 = ptrtoint ptr %add.ptr.1.1.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %add.ptr.1.1.i, align 1
  %conv.2.1.i = zext i8 %34 to i16
  %incdec.ptr.2.1.i = getelementptr inbounds i16, ptr %tmp, i32 11
  %35 = ptrtoint ptr %incdec.ptr.1.1.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.2.1.i, ptr %incdec.ptr.1.1.i, align 2
  %add.ptr.2.1.i = getelementptr i8, ptr %add.ptr.1.1.i, i32 %input_step
  %36 = ptrtoint ptr %add.ptr.2.1.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %add.ptr.2.1.i, align 1
  %conv.3.1.i = zext i8 %37 to i16
  %incdec.ptr.3.1.i = getelementptr inbounds i16, ptr %tmp, i32 12
  %38 = ptrtoint ptr %incdec.ptr.2.1.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv.3.1.i, ptr %incdec.ptr.2.1.i, align 2
  %add.ptr.3.1.i = getelementptr i8, ptr %add.ptr.2.1.i, i32 %input_step
  %39 = ptrtoint ptr %add.ptr.3.1.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %add.ptr.3.1.i, align 1
  %conv.4.1.i = zext i8 %40 to i16
  %incdec.ptr.4.1.i = getelementptr inbounds i16, ptr %tmp, i32 13
  %41 = ptrtoint ptr %incdec.ptr.3.1.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv.4.1.i, ptr %incdec.ptr.3.1.i, align 2
  %add.ptr.4.1.i = getelementptr i8, ptr %add.ptr.3.1.i, i32 %input_step
  %42 = ptrtoint ptr %add.ptr.4.1.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %add.ptr.4.1.i, align 1
  %conv.5.1.i = zext i8 %43 to i16
  %incdec.ptr.5.1.i = getelementptr inbounds i16, ptr %tmp, i32 14
  %44 = ptrtoint ptr %incdec.ptr.4.1.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv.5.1.i, ptr %incdec.ptr.4.1.i, align 2
  %add.ptr.5.1.i = getelementptr i8, ptr %add.ptr.4.1.i, i32 %input_step
  %45 = ptrtoint ptr %add.ptr.5.1.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %add.ptr.5.1.i, align 1
  %conv.6.1.i = zext i8 %46 to i16
  %incdec.ptr.6.1.i = getelementptr inbounds i16, ptr %tmp, i32 15
  %47 = ptrtoint ptr %incdec.ptr.5.1.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv.6.1.i, ptr %incdec.ptr.5.1.i, align 2
  %add.ptr.6.1.i = getelementptr i8, ptr %add.ptr.5.1.i, i32 %input_step
  %48 = ptrtoint ptr %add.ptr.6.1.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %add.ptr.6.1.i, align 1
  %conv.7.1.i = zext i8 %49 to i16
  %incdec.ptr.7.1.i = getelementptr inbounds i16, ptr %tmp, i32 16
  %50 = ptrtoint ptr %incdec.ptr.6.1.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv.7.1.i, ptr %incdec.ptr.6.1.i, align 2
  %add.ptr.7.1.i = getelementptr i8, ptr %add.ptr.6.1.i, i32 %input_step
  %add.ptr4.1.i = getelementptr i8, ptr %add.ptr.7.1.i, i32 %sub.i
  %51 = ptrtoint ptr %add.ptr4.1.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %add.ptr4.1.i, align 1
  %conv.222.i = zext i8 %52 to i16
  %incdec.ptr.223.i = getelementptr inbounds i16, ptr %tmp, i32 17
  %53 = ptrtoint ptr %incdec.ptr.7.1.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv.222.i, ptr %incdec.ptr.7.1.i, align 2
  %add.ptr.224.i = getelementptr i8, ptr %add.ptr4.1.i, i32 %input_step
  %54 = ptrtoint ptr %add.ptr.224.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %add.ptr.224.i, align 1
  %conv.1.2.i = zext i8 %55 to i16
  %incdec.ptr.1.2.i = getelementptr inbounds i16, ptr %tmp, i32 18
  %56 = ptrtoint ptr %incdec.ptr.223.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv.1.2.i, ptr %incdec.ptr.223.i, align 2
  %add.ptr.1.2.i = getelementptr i8, ptr %add.ptr.224.i, i32 %input_step
  %57 = ptrtoint ptr %add.ptr.1.2.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %add.ptr.1.2.i, align 1
  %conv.2.2.i = zext i8 %58 to i16
  %incdec.ptr.2.2.i = getelementptr inbounds i16, ptr %tmp, i32 19
  %59 = ptrtoint ptr %incdec.ptr.1.2.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv.2.2.i, ptr %incdec.ptr.1.2.i, align 2
  %add.ptr.2.2.i = getelementptr i8, ptr %add.ptr.1.2.i, i32 %input_step
  %60 = ptrtoint ptr %add.ptr.2.2.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %add.ptr.2.2.i, align 1
  %conv.3.2.i = zext i8 %61 to i16
  %incdec.ptr.3.2.i = getelementptr inbounds i16, ptr %tmp, i32 20
  %62 = ptrtoint ptr %incdec.ptr.2.2.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv.3.2.i, ptr %incdec.ptr.2.2.i, align 2
  %add.ptr.3.2.i = getelementptr i8, ptr %add.ptr.2.2.i, i32 %input_step
  %63 = ptrtoint ptr %add.ptr.3.2.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %add.ptr.3.2.i, align 1
  %conv.4.2.i = zext i8 %64 to i16
  %incdec.ptr.4.2.i = getelementptr inbounds i16, ptr %tmp, i32 21
  %65 = ptrtoint ptr %incdec.ptr.3.2.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv.4.2.i, ptr %incdec.ptr.3.2.i, align 2
  %add.ptr.4.2.i = getelementptr i8, ptr %add.ptr.3.2.i, i32 %input_step
  %66 = ptrtoint ptr %add.ptr.4.2.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %add.ptr.4.2.i, align 1
  %conv.5.2.i = zext i8 %67 to i16
  %incdec.ptr.5.2.i = getelementptr inbounds i16, ptr %tmp, i32 22
  %68 = ptrtoint ptr %incdec.ptr.4.2.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv.5.2.i, ptr %incdec.ptr.4.2.i, align 2
  %add.ptr.5.2.i = getelementptr i8, ptr %add.ptr.4.2.i, i32 %input_step
  %69 = ptrtoint ptr %add.ptr.5.2.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %add.ptr.5.2.i, align 1
  %conv.6.2.i = zext i8 %70 to i16
  %incdec.ptr.6.2.i = getelementptr inbounds i16, ptr %tmp, i32 23
  %71 = ptrtoint ptr %incdec.ptr.5.2.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv.6.2.i, ptr %incdec.ptr.5.2.i, align 2
  %add.ptr.6.2.i = getelementptr i8, ptr %add.ptr.5.2.i, i32 %input_step
  %72 = ptrtoint ptr %add.ptr.6.2.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %add.ptr.6.2.i, align 1
  %conv.7.2.i = zext i8 %73 to i16
  %incdec.ptr.7.2.i = getelementptr inbounds i16, ptr %tmp, i32 24
  %74 = ptrtoint ptr %incdec.ptr.6.2.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv.7.2.i, ptr %incdec.ptr.6.2.i, align 2
  %add.ptr.7.2.i = getelementptr i8, ptr %add.ptr.6.2.i, i32 %input_step
  %add.ptr4.2.i = getelementptr i8, ptr %add.ptr.7.2.i, i32 %sub.i
  %75 = ptrtoint ptr %add.ptr4.2.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %add.ptr4.2.i, align 1
  %conv.325.i = zext i8 %76 to i16
  %incdec.ptr.326.i = getelementptr inbounds i16, ptr %tmp, i32 25
  %77 = ptrtoint ptr %incdec.ptr.7.2.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %conv.325.i, ptr %incdec.ptr.7.2.i, align 2
  %add.ptr.327.i = getelementptr i8, ptr %add.ptr4.2.i, i32 %input_step
  %78 = ptrtoint ptr %add.ptr.327.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %add.ptr.327.i, align 1
  %conv.1.3.i = zext i8 %79 to i16
  %incdec.ptr.1.3.i = getelementptr inbounds i16, ptr %tmp, i32 26
  %80 = ptrtoint ptr %incdec.ptr.326.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %conv.1.3.i, ptr %incdec.ptr.326.i, align 2
  %add.ptr.1.3.i = getelementptr i8, ptr %add.ptr.327.i, i32 %input_step
  %81 = ptrtoint ptr %add.ptr.1.3.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %add.ptr.1.3.i, align 1
  %conv.2.3.i = zext i8 %82 to i16
  %incdec.ptr.2.3.i = getelementptr inbounds i16, ptr %tmp, i32 27
  %83 = ptrtoint ptr %incdec.ptr.1.3.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %conv.2.3.i, ptr %incdec.ptr.1.3.i, align 2
  %add.ptr.2.3.i = getelementptr i8, ptr %add.ptr.1.3.i, i32 %input_step
  %84 = ptrtoint ptr %add.ptr.2.3.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %add.ptr.2.3.i, align 1
  %conv.3.3.i = zext i8 %85 to i16
  %incdec.ptr.3.3.i = getelementptr inbounds i16, ptr %tmp, i32 28
  %86 = ptrtoint ptr %incdec.ptr.2.3.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %conv.3.3.i, ptr %incdec.ptr.2.3.i, align 2
  %add.ptr.3.3.i = getelementptr i8, ptr %add.ptr.2.3.i, i32 %input_step
  %87 = ptrtoint ptr %add.ptr.3.3.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %add.ptr.3.3.i, align 1
  %conv.4.3.i = zext i8 %88 to i16
  %incdec.ptr.4.3.i = getelementptr inbounds i16, ptr %tmp, i32 29
  %89 = ptrtoint ptr %incdec.ptr.3.3.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv.4.3.i, ptr %incdec.ptr.3.3.i, align 2
  %add.ptr.4.3.i = getelementptr i8, ptr %add.ptr.3.3.i, i32 %input_step
  %90 = ptrtoint ptr %add.ptr.4.3.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %add.ptr.4.3.i, align 1
  %conv.5.3.i = zext i8 %91 to i16
  %incdec.ptr.5.3.i = getelementptr inbounds i16, ptr %tmp, i32 30
  %92 = ptrtoint ptr %incdec.ptr.4.3.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %conv.5.3.i, ptr %incdec.ptr.4.3.i, align 2
  %add.ptr.5.3.i = getelementptr i8, ptr %add.ptr.4.3.i, i32 %input_step
  %93 = ptrtoint ptr %add.ptr.5.3.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %add.ptr.5.3.i, align 1
  %conv.6.3.i = zext i8 %94 to i16
  %incdec.ptr.6.3.i = getelementptr inbounds i16, ptr %tmp, i32 31
  %95 = ptrtoint ptr %incdec.ptr.5.3.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %conv.6.3.i, ptr %incdec.ptr.5.3.i, align 2
  %add.ptr.6.3.i = getelementptr i8, ptr %add.ptr.5.3.i, i32 %input_step
  %96 = ptrtoint ptr %add.ptr.6.3.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %add.ptr.6.3.i, align 1
  %conv.7.3.i = zext i8 %97 to i16
  %incdec.ptr.7.3.i = getelementptr inbounds i16, ptr %tmp, i32 32
  %98 = ptrtoint ptr %incdec.ptr.6.3.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %conv.7.3.i, ptr %incdec.ptr.6.3.i, align 2
  %add.ptr.7.3.i = getelementptr i8, ptr %add.ptr.6.3.i, i32 %input_step
  %add.ptr4.3.i = getelementptr i8, ptr %add.ptr.7.3.i, i32 %sub.i
  %99 = ptrtoint ptr %add.ptr4.3.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %add.ptr4.3.i, align 1
  %conv.428.i = zext i8 %100 to i16
  %incdec.ptr.429.i = getelementptr inbounds i16, ptr %tmp, i32 33
  %101 = ptrtoint ptr %incdec.ptr.7.3.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %conv.428.i, ptr %incdec.ptr.7.3.i, align 2
  %add.ptr.430.i = getelementptr i8, ptr %add.ptr4.3.i, i32 %input_step
  %102 = ptrtoint ptr %add.ptr.430.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %add.ptr.430.i, align 1
  %conv.1.4.i = zext i8 %103 to i16
  %incdec.ptr.1.4.i = getelementptr inbounds i16, ptr %tmp, i32 34
  %104 = ptrtoint ptr %incdec.ptr.429.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %conv.1.4.i, ptr %incdec.ptr.429.i, align 2
  %add.ptr.1.4.i = getelementptr i8, ptr %add.ptr.430.i, i32 %input_step
  %105 = ptrtoint ptr %add.ptr.1.4.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %add.ptr.1.4.i, align 1
  %conv.2.4.i = zext i8 %106 to i16
  %incdec.ptr.2.4.i = getelementptr inbounds i16, ptr %tmp, i32 35
  %107 = ptrtoint ptr %incdec.ptr.1.4.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %conv.2.4.i, ptr %incdec.ptr.1.4.i, align 2
  %add.ptr.2.4.i = getelementptr i8, ptr %add.ptr.1.4.i, i32 %input_step
  %108 = ptrtoint ptr %add.ptr.2.4.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %add.ptr.2.4.i, align 1
  %conv.3.4.i = zext i8 %109 to i16
  %incdec.ptr.3.4.i = getelementptr inbounds i16, ptr %tmp, i32 36
  %110 = ptrtoint ptr %incdec.ptr.2.4.i to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %conv.3.4.i, ptr %incdec.ptr.2.4.i, align 2
  %add.ptr.3.4.i = getelementptr i8, ptr %add.ptr.2.4.i, i32 %input_step
  %111 = ptrtoint ptr %add.ptr.3.4.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %add.ptr.3.4.i, align 1
  %conv.4.4.i = zext i8 %112 to i16
  %incdec.ptr.4.4.i = getelementptr inbounds i16, ptr %tmp, i32 37
  %113 = ptrtoint ptr %incdec.ptr.3.4.i to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %conv.4.4.i, ptr %incdec.ptr.3.4.i, align 2
  %add.ptr.4.4.i = getelementptr i8, ptr %add.ptr.3.4.i, i32 %input_step
  %114 = ptrtoint ptr %add.ptr.4.4.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %add.ptr.4.4.i, align 1
  %conv.5.4.i = zext i8 %115 to i16
  %incdec.ptr.5.4.i = getelementptr inbounds i16, ptr %tmp, i32 38
  %116 = ptrtoint ptr %incdec.ptr.4.4.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %conv.5.4.i, ptr %incdec.ptr.4.4.i, align 2
  %add.ptr.5.4.i = getelementptr i8, ptr %add.ptr.4.4.i, i32 %input_step
  %117 = ptrtoint ptr %add.ptr.5.4.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %add.ptr.5.4.i, align 1
  %conv.6.4.i = zext i8 %118 to i16
  %incdec.ptr.6.4.i = getelementptr inbounds i16, ptr %tmp, i32 39
  %119 = ptrtoint ptr %incdec.ptr.5.4.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %conv.6.4.i, ptr %incdec.ptr.5.4.i, align 2
  %add.ptr.6.4.i = getelementptr i8, ptr %add.ptr.5.4.i, i32 %input_step
  %120 = ptrtoint ptr %add.ptr.6.4.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %add.ptr.6.4.i, align 1
  %conv.7.4.i = zext i8 %121 to i16
  %incdec.ptr.7.4.i = getelementptr inbounds i16, ptr %tmp, i32 40
  %122 = ptrtoint ptr %incdec.ptr.6.4.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %conv.7.4.i, ptr %incdec.ptr.6.4.i, align 2
  %add.ptr.7.4.i = getelementptr i8, ptr %add.ptr.6.4.i, i32 %input_step
  %add.ptr4.4.i = getelementptr i8, ptr %add.ptr.7.4.i, i32 %sub.i
  %123 = ptrtoint ptr %add.ptr4.4.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %add.ptr4.4.i, align 1
  %conv.531.i = zext i8 %124 to i16
  %incdec.ptr.532.i = getelementptr inbounds i16, ptr %tmp, i32 41
  %125 = ptrtoint ptr %incdec.ptr.7.4.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %conv.531.i, ptr %incdec.ptr.7.4.i, align 2
  %add.ptr.533.i = getelementptr i8, ptr %add.ptr4.4.i, i32 %input_step
  %126 = ptrtoint ptr %add.ptr.533.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %add.ptr.533.i, align 1
  %conv.1.5.i = zext i8 %127 to i16
  %incdec.ptr.1.5.i = getelementptr inbounds i16, ptr %tmp, i32 42
  %128 = ptrtoint ptr %incdec.ptr.532.i to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %conv.1.5.i, ptr %incdec.ptr.532.i, align 2
  %add.ptr.1.5.i = getelementptr i8, ptr %add.ptr.533.i, i32 %input_step
  %129 = ptrtoint ptr %add.ptr.1.5.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %add.ptr.1.5.i, align 1
  %conv.2.5.i = zext i8 %130 to i16
  %incdec.ptr.2.5.i = getelementptr inbounds i16, ptr %tmp, i32 43
  %131 = ptrtoint ptr %incdec.ptr.1.5.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %conv.2.5.i, ptr %incdec.ptr.1.5.i, align 2
  %add.ptr.2.5.i = getelementptr i8, ptr %add.ptr.1.5.i, i32 %input_step
  %132 = ptrtoint ptr %add.ptr.2.5.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %add.ptr.2.5.i, align 1
  %conv.3.5.i = zext i8 %133 to i16
  %incdec.ptr.3.5.i = getelementptr inbounds i16, ptr %tmp, i32 44
  %134 = ptrtoint ptr %incdec.ptr.2.5.i to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %conv.3.5.i, ptr %incdec.ptr.2.5.i, align 2
  %add.ptr.3.5.i = getelementptr i8, ptr %add.ptr.2.5.i, i32 %input_step
  %135 = ptrtoint ptr %add.ptr.3.5.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %add.ptr.3.5.i, align 1
  %conv.4.5.i = zext i8 %136 to i16
  %incdec.ptr.4.5.i = getelementptr inbounds i16, ptr %tmp, i32 45
  %137 = ptrtoint ptr %incdec.ptr.3.5.i to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %conv.4.5.i, ptr %incdec.ptr.3.5.i, align 2
  %add.ptr.4.5.i = getelementptr i8, ptr %add.ptr.3.5.i, i32 %input_step
  %138 = ptrtoint ptr %add.ptr.4.5.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %add.ptr.4.5.i, align 1
  %conv.5.5.i = zext i8 %139 to i16
  %incdec.ptr.5.5.i = getelementptr inbounds i16, ptr %tmp, i32 46
  %140 = ptrtoint ptr %incdec.ptr.4.5.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %conv.5.5.i, ptr %incdec.ptr.4.5.i, align 2
  %add.ptr.5.5.i = getelementptr i8, ptr %add.ptr.4.5.i, i32 %input_step
  %141 = ptrtoint ptr %add.ptr.5.5.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %add.ptr.5.5.i, align 1
  %conv.6.5.i = zext i8 %142 to i16
  %incdec.ptr.6.5.i = getelementptr inbounds i16, ptr %tmp, i32 47
  %143 = ptrtoint ptr %incdec.ptr.5.5.i to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 %conv.6.5.i, ptr %incdec.ptr.5.5.i, align 2
  %add.ptr.6.5.i = getelementptr i8, ptr %add.ptr.5.5.i, i32 %input_step
  %144 = ptrtoint ptr %add.ptr.6.5.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %add.ptr.6.5.i, align 1
  %conv.7.5.i = zext i8 %145 to i16
  %incdec.ptr.7.5.i = getelementptr inbounds i16, ptr %tmp, i32 48
  %146 = ptrtoint ptr %incdec.ptr.6.5.i to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %conv.7.5.i, ptr %incdec.ptr.6.5.i, align 2
  %add.ptr.7.5.i = getelementptr i8, ptr %add.ptr.6.5.i, i32 %input_step
  %add.ptr4.5.i = getelementptr i8, ptr %add.ptr.7.5.i, i32 %sub.i
  %147 = ptrtoint ptr %add.ptr4.5.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %add.ptr4.5.i, align 1
  %conv.634.i = zext i8 %148 to i16
  %incdec.ptr.635.i = getelementptr inbounds i16, ptr %tmp, i32 49
  %149 = ptrtoint ptr %incdec.ptr.7.5.i to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %conv.634.i, ptr %incdec.ptr.7.5.i, align 2
  %add.ptr.636.i = getelementptr i8, ptr %add.ptr4.5.i, i32 %input_step
  %150 = ptrtoint ptr %add.ptr.636.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %add.ptr.636.i, align 1
  %conv.1.6.i = zext i8 %151 to i16
  %incdec.ptr.1.6.i = getelementptr inbounds i16, ptr %tmp, i32 50
  %152 = ptrtoint ptr %incdec.ptr.635.i to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %conv.1.6.i, ptr %incdec.ptr.635.i, align 2
  %add.ptr.1.6.i = getelementptr i8, ptr %add.ptr.636.i, i32 %input_step
  %153 = ptrtoint ptr %add.ptr.1.6.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %add.ptr.1.6.i, align 1
  %conv.2.6.i = zext i8 %154 to i16
  %incdec.ptr.2.6.i = getelementptr inbounds i16, ptr %tmp, i32 51
  %155 = ptrtoint ptr %incdec.ptr.1.6.i to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 %conv.2.6.i, ptr %incdec.ptr.1.6.i, align 2
  %add.ptr.2.6.i = getelementptr i8, ptr %add.ptr.1.6.i, i32 %input_step
  %156 = ptrtoint ptr %add.ptr.2.6.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %add.ptr.2.6.i, align 1
  %conv.3.6.i = zext i8 %157 to i16
  %incdec.ptr.3.6.i = getelementptr inbounds i16, ptr %tmp, i32 52
  %158 = ptrtoint ptr %incdec.ptr.2.6.i to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %conv.3.6.i, ptr %incdec.ptr.2.6.i, align 2
  %add.ptr.3.6.i = getelementptr i8, ptr %add.ptr.2.6.i, i32 %input_step
  %159 = ptrtoint ptr %add.ptr.3.6.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %add.ptr.3.6.i, align 1
  %conv.4.6.i = zext i8 %160 to i16
  %incdec.ptr.4.6.i = getelementptr inbounds i16, ptr %tmp, i32 53
  %161 = ptrtoint ptr %incdec.ptr.3.6.i to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 %conv.4.6.i, ptr %incdec.ptr.3.6.i, align 2
  %add.ptr.4.6.i = getelementptr i8, ptr %add.ptr.3.6.i, i32 %input_step
  %162 = ptrtoint ptr %add.ptr.4.6.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %add.ptr.4.6.i, align 1
  %conv.5.6.i = zext i8 %163 to i16
  %incdec.ptr.5.6.i = getelementptr inbounds i16, ptr %tmp, i32 54
  %164 = ptrtoint ptr %incdec.ptr.4.6.i to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 %conv.5.6.i, ptr %incdec.ptr.4.6.i, align 2
  %add.ptr.5.6.i = getelementptr i8, ptr %add.ptr.4.6.i, i32 %input_step
  %165 = ptrtoint ptr %add.ptr.5.6.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %add.ptr.5.6.i, align 1
  %conv.6.6.i = zext i8 %166 to i16
  %incdec.ptr.6.6.i = getelementptr inbounds i16, ptr %tmp, i32 55
  %167 = ptrtoint ptr %incdec.ptr.5.6.i to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 %conv.6.6.i, ptr %incdec.ptr.5.6.i, align 2
  %add.ptr.6.6.i = getelementptr i8, ptr %add.ptr.5.6.i, i32 %input_step
  %168 = ptrtoint ptr %add.ptr.6.6.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %add.ptr.6.6.i, align 1
  %conv.7.6.i = zext i8 %169 to i16
  %incdec.ptr.7.6.i = getelementptr inbounds i16, ptr %tmp, i32 56
  %170 = ptrtoint ptr %incdec.ptr.6.6.i to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 %conv.7.6.i, ptr %incdec.ptr.6.6.i, align 2
  %add.ptr.7.6.i = getelementptr i8, ptr %add.ptr.6.6.i, i32 %input_step
  %add.ptr4.6.i = getelementptr i8, ptr %add.ptr.7.6.i, i32 %sub.i
  %171 = ptrtoint ptr %add.ptr4.6.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %add.ptr4.6.i, align 1
  %conv.737.i = zext i8 %172 to i16
  %incdec.ptr.738.i = getelementptr inbounds i16, ptr %tmp, i32 57
  %173 = ptrtoint ptr %incdec.ptr.7.6.i to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 %conv.737.i, ptr %incdec.ptr.7.6.i, align 2
  %add.ptr.739.i = getelementptr i8, ptr %add.ptr4.6.i, i32 %input_step
  %174 = ptrtoint ptr %add.ptr.739.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %add.ptr.739.i, align 1
  %conv.1.7.i = zext i8 %175 to i16
  %incdec.ptr.1.7.i = getelementptr inbounds i16, ptr %tmp, i32 58
  %176 = ptrtoint ptr %incdec.ptr.738.i to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 %conv.1.7.i, ptr %incdec.ptr.738.i, align 2
  %add.ptr.1.7.i = getelementptr i8, ptr %add.ptr.739.i, i32 %input_step
  %177 = ptrtoint ptr %add.ptr.1.7.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %add.ptr.1.7.i, align 1
  %conv.2.7.i = zext i8 %178 to i16
  %incdec.ptr.2.7.i = getelementptr inbounds i16, ptr %tmp, i32 59
  %179 = ptrtoint ptr %incdec.ptr.1.7.i to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 %conv.2.7.i, ptr %incdec.ptr.1.7.i, align 2
  %add.ptr.2.7.i = getelementptr i8, ptr %add.ptr.1.7.i, i32 %input_step
  %180 = ptrtoint ptr %add.ptr.2.7.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %add.ptr.2.7.i, align 1
  %conv.3.7.i = zext i8 %181 to i16
  %incdec.ptr.3.7.i = getelementptr inbounds i16, ptr %tmp, i32 60
  %182 = ptrtoint ptr %incdec.ptr.2.7.i to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 %conv.3.7.i, ptr %incdec.ptr.2.7.i, align 2
  %add.ptr.3.7.i = getelementptr i8, ptr %add.ptr.2.7.i, i32 %input_step
  %183 = ptrtoint ptr %add.ptr.3.7.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %add.ptr.3.7.i, align 1
  %conv.4.7.i = zext i8 %184 to i16
  %incdec.ptr.4.7.i = getelementptr inbounds i16, ptr %tmp, i32 61
  %185 = ptrtoint ptr %incdec.ptr.3.7.i to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 %conv.4.7.i, ptr %incdec.ptr.3.7.i, align 2
  %add.ptr.4.7.i = getelementptr i8, ptr %add.ptr.3.7.i, i32 %input_step
  %186 = ptrtoint ptr %add.ptr.4.7.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %add.ptr.4.7.i, align 1
  %conv.5.7.i = zext i8 %187 to i16
  %incdec.ptr.5.7.i = getelementptr inbounds i16, ptr %tmp, i32 62
  %188 = ptrtoint ptr %incdec.ptr.4.7.i to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 %conv.5.7.i, ptr %incdec.ptr.4.7.i, align 2
  %add.ptr.5.7.i = getelementptr i8, ptr %add.ptr.4.7.i, i32 %input_step
  %189 = ptrtoint ptr %add.ptr.5.7.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %add.ptr.5.7.i, align 1
  %conv.6.7.i = zext i8 %190 to i16
  %incdec.ptr.6.7.i = getelementptr inbounds i16, ptr %tmp, i32 63
  %191 = ptrtoint ptr %incdec.ptr.5.7.i to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 %conv.6.7.i, ptr %incdec.ptr.5.7.i, align 2
  %add.ptr.6.7.i = getelementptr i8, ptr %add.ptr.5.7.i, i32 %input_step
  %192 = ptrtoint ptr %add.ptr.6.7.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %add.ptr.6.7.i, align 1
  %conv.7.7.i = zext i8 %193 to i16
  %194 = ptrtoint ptr %incdec.ptr.6.7.i to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 %conv.7.7.i, ptr %incdec.ptr.6.7.i, align 2
  %195 = ptrtoint ptr %reference to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %reference, align 1
  %conv.i26 = zext i8 %196 to i16
  %incdec.ptr.i27 = getelementptr inbounds i16, ptr %old, i32 1
  %197 = ptrtoint ptr %old to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 %conv.i26, ptr %old, align 2
  %add.ptr.i28 = getelementptr i8, ptr %reference, i32 1
  %198 = ptrtoint ptr %add.ptr.i28 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %add.ptr.i28, align 1
  %conv.1.i29 = zext i8 %199 to i16
  %incdec.ptr.1.i30 = getelementptr inbounds i16, ptr %old, i32 2
  %200 = ptrtoint ptr %incdec.ptr.i27 to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 %conv.1.i29, ptr %incdec.ptr.i27, align 2
  %add.ptr.1.i31 = getelementptr i8, ptr %reference, i32 2
  %201 = ptrtoint ptr %add.ptr.1.i31 to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %add.ptr.1.i31, align 1
  %conv.2.i32 = zext i8 %202 to i16
  %incdec.ptr.2.i33 = getelementptr inbounds i16, ptr %old, i32 3
  %203 = ptrtoint ptr %incdec.ptr.1.i30 to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 %conv.2.i32, ptr %incdec.ptr.1.i30, align 2
  %add.ptr.2.i34 = getelementptr i8, ptr %reference, i32 3
  %204 = ptrtoint ptr %add.ptr.2.i34 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %add.ptr.2.i34, align 1
  %conv.3.i35 = zext i8 %205 to i16
  %incdec.ptr.3.i36 = getelementptr inbounds i16, ptr %old, i32 4
  %206 = ptrtoint ptr %incdec.ptr.2.i33 to i32
  call void @__asan_store2_noabort(i32 %206)
  store i16 %conv.3.i35, ptr %incdec.ptr.2.i33, align 2
  %add.ptr.3.i37 = getelementptr i8, ptr %reference, i32 4
  %207 = ptrtoint ptr %add.ptr.3.i37 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %add.ptr.3.i37, align 1
  %conv.4.i38 = zext i8 %208 to i16
  %incdec.ptr.4.i39 = getelementptr inbounds i16, ptr %old, i32 5
  %209 = ptrtoint ptr %incdec.ptr.3.i36 to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 %conv.4.i38, ptr %incdec.ptr.3.i36, align 2
  %add.ptr.4.i40 = getelementptr i8, ptr %reference, i32 5
  %210 = ptrtoint ptr %add.ptr.4.i40 to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %add.ptr.4.i40, align 1
  %conv.5.i41 = zext i8 %211 to i16
  %incdec.ptr.5.i42 = getelementptr inbounds i16, ptr %old, i32 6
  %212 = ptrtoint ptr %incdec.ptr.4.i39 to i32
  call void @__asan_store2_noabort(i32 %212)
  store i16 %conv.5.i41, ptr %incdec.ptr.4.i39, align 2
  %add.ptr.5.i43 = getelementptr i8, ptr %reference, i32 6
  %213 = ptrtoint ptr %add.ptr.5.i43 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %add.ptr.5.i43, align 1
  %conv.6.i44 = zext i8 %214 to i16
  %incdec.ptr.6.i45 = getelementptr inbounds i16, ptr %old, i32 7
  %215 = ptrtoint ptr %incdec.ptr.5.i42 to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 %conv.6.i44, ptr %incdec.ptr.5.i42, align 2
  %add.ptr.6.i46 = getelementptr i8, ptr %reference, i32 7
  %216 = ptrtoint ptr %add.ptr.6.i46 to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %add.ptr.6.i46, align 1
  %conv.7.i47 = zext i8 %217 to i16
  %incdec.ptr.7.i48 = getelementptr inbounds i16, ptr %old, i32 8
  %218 = ptrtoint ptr %incdec.ptr.6.i45 to i32
  call void @__asan_store2_noabort(i32 %218)
  store i16 %conv.7.i47, ptr %incdec.ptr.6.i45, align 2
  %add.ptr.7.i49 = getelementptr i8, ptr %reference, i32 8
  %219 = ptrtoint ptr %add.ptr.7.i49 to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %add.ptr.7.i49, align 1
  %conv.119.i50 = zext i8 %220 to i16
  %incdec.ptr.120.i51 = getelementptr inbounds i16, ptr %old, i32 9
  %221 = ptrtoint ptr %incdec.ptr.7.i48 to i32
  call void @__asan_store2_noabort(i32 %221)
  store i16 %conv.119.i50, ptr %incdec.ptr.7.i48, align 2
  %add.ptr.121.i52 = getelementptr i8, ptr %reference, i32 9
  %222 = ptrtoint ptr %add.ptr.121.i52 to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %add.ptr.121.i52, align 1
  %conv.1.1.i53 = zext i8 %223 to i16
  %incdec.ptr.1.1.i54 = getelementptr inbounds i16, ptr %old, i32 10
  %224 = ptrtoint ptr %incdec.ptr.120.i51 to i32
  call void @__asan_store2_noabort(i32 %224)
  store i16 %conv.1.1.i53, ptr %incdec.ptr.120.i51, align 2
  %add.ptr.1.1.i55 = getelementptr i8, ptr %reference, i32 10
  %225 = ptrtoint ptr %add.ptr.1.1.i55 to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %add.ptr.1.1.i55, align 1
  %conv.2.1.i56 = zext i8 %226 to i16
  %incdec.ptr.2.1.i57 = getelementptr inbounds i16, ptr %old, i32 11
  %227 = ptrtoint ptr %incdec.ptr.1.1.i54 to i32
  call void @__asan_store2_noabort(i32 %227)
  store i16 %conv.2.1.i56, ptr %incdec.ptr.1.1.i54, align 2
  %add.ptr.2.1.i58 = getelementptr i8, ptr %reference, i32 11
  %228 = ptrtoint ptr %add.ptr.2.1.i58 to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %add.ptr.2.1.i58, align 1
  %conv.3.1.i59 = zext i8 %229 to i16
  %incdec.ptr.3.1.i60 = getelementptr inbounds i16, ptr %old, i32 12
  %230 = ptrtoint ptr %incdec.ptr.2.1.i57 to i32
  call void @__asan_store2_noabort(i32 %230)
  store i16 %conv.3.1.i59, ptr %incdec.ptr.2.1.i57, align 2
  %add.ptr.3.1.i61 = getelementptr i8, ptr %reference, i32 12
  %231 = ptrtoint ptr %add.ptr.3.1.i61 to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %add.ptr.3.1.i61, align 1
  %conv.4.1.i62 = zext i8 %232 to i16
  %incdec.ptr.4.1.i63 = getelementptr inbounds i16, ptr %old, i32 13
  %233 = ptrtoint ptr %incdec.ptr.3.1.i60 to i32
  call void @__asan_store2_noabort(i32 %233)
  store i16 %conv.4.1.i62, ptr %incdec.ptr.3.1.i60, align 2
  %add.ptr.4.1.i64 = getelementptr i8, ptr %reference, i32 13
  %234 = ptrtoint ptr %add.ptr.4.1.i64 to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %add.ptr.4.1.i64, align 1
  %conv.5.1.i65 = zext i8 %235 to i16
  %incdec.ptr.5.1.i66 = getelementptr inbounds i16, ptr %old, i32 14
  %236 = ptrtoint ptr %incdec.ptr.4.1.i63 to i32
  call void @__asan_store2_noabort(i32 %236)
  store i16 %conv.5.1.i65, ptr %incdec.ptr.4.1.i63, align 2
  %add.ptr.5.1.i67 = getelementptr i8, ptr %reference, i32 14
  %237 = ptrtoint ptr %add.ptr.5.1.i67 to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %add.ptr.5.1.i67, align 1
  %conv.6.1.i68 = zext i8 %238 to i16
  %incdec.ptr.6.1.i69 = getelementptr inbounds i16, ptr %old, i32 15
  %239 = ptrtoint ptr %incdec.ptr.5.1.i66 to i32
  call void @__asan_store2_noabort(i32 %239)
  store i16 %conv.6.1.i68, ptr %incdec.ptr.5.1.i66, align 2
  %add.ptr.6.1.i70 = getelementptr i8, ptr %reference, i32 15
  %240 = ptrtoint ptr %add.ptr.6.1.i70 to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %add.ptr.6.1.i70, align 1
  %conv.7.1.i71 = zext i8 %241 to i16
  %incdec.ptr.7.1.i72 = getelementptr inbounds i16, ptr %old, i32 16
  %242 = ptrtoint ptr %incdec.ptr.6.1.i69 to i32
  call void @__asan_store2_noabort(i32 %242)
  store i16 %conv.7.1.i71, ptr %incdec.ptr.6.1.i69, align 2
  %add.ptr.7.1.i73 = getelementptr i8, ptr %reference, i32 16
  %243 = ptrtoint ptr %add.ptr.7.1.i73 to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %add.ptr.7.1.i73, align 1
  %conv.222.i74 = zext i8 %244 to i16
  %incdec.ptr.223.i75 = getelementptr inbounds i16, ptr %old, i32 17
  %245 = ptrtoint ptr %incdec.ptr.7.1.i72 to i32
  call void @__asan_store2_noabort(i32 %245)
  store i16 %conv.222.i74, ptr %incdec.ptr.7.1.i72, align 2
  %add.ptr.224.i76 = getelementptr i8, ptr %reference, i32 17
  %246 = ptrtoint ptr %add.ptr.224.i76 to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %add.ptr.224.i76, align 1
  %conv.1.2.i77 = zext i8 %247 to i16
  %incdec.ptr.1.2.i78 = getelementptr inbounds i16, ptr %old, i32 18
  %248 = ptrtoint ptr %incdec.ptr.223.i75 to i32
  call void @__asan_store2_noabort(i32 %248)
  store i16 %conv.1.2.i77, ptr %incdec.ptr.223.i75, align 2
  %add.ptr.1.2.i79 = getelementptr i8, ptr %reference, i32 18
  %249 = ptrtoint ptr %add.ptr.1.2.i79 to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %add.ptr.1.2.i79, align 1
  %conv.2.2.i80 = zext i8 %250 to i16
  %incdec.ptr.2.2.i81 = getelementptr inbounds i16, ptr %old, i32 19
  %251 = ptrtoint ptr %incdec.ptr.1.2.i78 to i32
  call void @__asan_store2_noabort(i32 %251)
  store i16 %conv.2.2.i80, ptr %incdec.ptr.1.2.i78, align 2
  %add.ptr.2.2.i82 = getelementptr i8, ptr %reference, i32 19
  %252 = ptrtoint ptr %add.ptr.2.2.i82 to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %add.ptr.2.2.i82, align 1
  %conv.3.2.i83 = zext i8 %253 to i16
  %incdec.ptr.3.2.i84 = getelementptr inbounds i16, ptr %old, i32 20
  %254 = ptrtoint ptr %incdec.ptr.2.2.i81 to i32
  call void @__asan_store2_noabort(i32 %254)
  store i16 %conv.3.2.i83, ptr %incdec.ptr.2.2.i81, align 2
  %add.ptr.3.2.i85 = getelementptr i8, ptr %reference, i32 20
  %255 = ptrtoint ptr %add.ptr.3.2.i85 to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %add.ptr.3.2.i85, align 1
  %conv.4.2.i86 = zext i8 %256 to i16
  %incdec.ptr.4.2.i87 = getelementptr inbounds i16, ptr %old, i32 21
  %257 = ptrtoint ptr %incdec.ptr.3.2.i84 to i32
  call void @__asan_store2_noabort(i32 %257)
  store i16 %conv.4.2.i86, ptr %incdec.ptr.3.2.i84, align 2
  %add.ptr.4.2.i88 = getelementptr i8, ptr %reference, i32 21
  %258 = ptrtoint ptr %add.ptr.4.2.i88 to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %add.ptr.4.2.i88, align 1
  %conv.5.2.i89 = zext i8 %259 to i16
  %incdec.ptr.5.2.i90 = getelementptr inbounds i16, ptr %old, i32 22
  %260 = ptrtoint ptr %incdec.ptr.4.2.i87 to i32
  call void @__asan_store2_noabort(i32 %260)
  store i16 %conv.5.2.i89, ptr %incdec.ptr.4.2.i87, align 2
  %add.ptr.5.2.i91 = getelementptr i8, ptr %reference, i32 22
  %261 = ptrtoint ptr %add.ptr.5.2.i91 to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %add.ptr.5.2.i91, align 1
  %conv.6.2.i92 = zext i8 %262 to i16
  %incdec.ptr.6.2.i93 = getelementptr inbounds i16, ptr %old, i32 23
  %263 = ptrtoint ptr %incdec.ptr.5.2.i90 to i32
  call void @__asan_store2_noabort(i32 %263)
  store i16 %conv.6.2.i92, ptr %incdec.ptr.5.2.i90, align 2
  %add.ptr.6.2.i94 = getelementptr i8, ptr %reference, i32 23
  %264 = ptrtoint ptr %add.ptr.6.2.i94 to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %add.ptr.6.2.i94, align 1
  %conv.7.2.i95 = zext i8 %265 to i16
  %incdec.ptr.7.2.i96 = getelementptr inbounds i16, ptr %old, i32 24
  %266 = ptrtoint ptr %incdec.ptr.6.2.i93 to i32
  call void @__asan_store2_noabort(i32 %266)
  store i16 %conv.7.2.i95, ptr %incdec.ptr.6.2.i93, align 2
  %add.ptr.7.2.i97 = getelementptr i8, ptr %reference, i32 24
  %267 = ptrtoint ptr %add.ptr.7.2.i97 to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %add.ptr.7.2.i97, align 1
  %conv.325.i98 = zext i8 %268 to i16
  %incdec.ptr.326.i99 = getelementptr inbounds i16, ptr %old, i32 25
  %269 = ptrtoint ptr %incdec.ptr.7.2.i96 to i32
  call void @__asan_store2_noabort(i32 %269)
  store i16 %conv.325.i98, ptr %incdec.ptr.7.2.i96, align 2
  %add.ptr.327.i100 = getelementptr i8, ptr %reference, i32 25
  %270 = ptrtoint ptr %add.ptr.327.i100 to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %add.ptr.327.i100, align 1
  %conv.1.3.i101 = zext i8 %271 to i16
  %incdec.ptr.1.3.i102 = getelementptr inbounds i16, ptr %old, i32 26
  %272 = ptrtoint ptr %incdec.ptr.326.i99 to i32
  call void @__asan_store2_noabort(i32 %272)
  store i16 %conv.1.3.i101, ptr %incdec.ptr.326.i99, align 2
  %add.ptr.1.3.i103 = getelementptr i8, ptr %reference, i32 26
  %273 = ptrtoint ptr %add.ptr.1.3.i103 to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %add.ptr.1.3.i103, align 1
  %conv.2.3.i104 = zext i8 %274 to i16
  %incdec.ptr.2.3.i105 = getelementptr inbounds i16, ptr %old, i32 27
  %275 = ptrtoint ptr %incdec.ptr.1.3.i102 to i32
  call void @__asan_store2_noabort(i32 %275)
  store i16 %conv.2.3.i104, ptr %incdec.ptr.1.3.i102, align 2
  %add.ptr.2.3.i106 = getelementptr i8, ptr %reference, i32 27
  %276 = ptrtoint ptr %add.ptr.2.3.i106 to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %add.ptr.2.3.i106, align 1
  %conv.3.3.i107 = zext i8 %277 to i16
  %incdec.ptr.3.3.i108 = getelementptr inbounds i16, ptr %old, i32 28
  %278 = ptrtoint ptr %incdec.ptr.2.3.i105 to i32
  call void @__asan_store2_noabort(i32 %278)
  store i16 %conv.3.3.i107, ptr %incdec.ptr.2.3.i105, align 2
  %add.ptr.3.3.i109 = getelementptr i8, ptr %reference, i32 28
  %279 = ptrtoint ptr %add.ptr.3.3.i109 to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %add.ptr.3.3.i109, align 1
  %conv.4.3.i110 = zext i8 %280 to i16
  %incdec.ptr.4.3.i111 = getelementptr inbounds i16, ptr %old, i32 29
  %281 = ptrtoint ptr %incdec.ptr.3.3.i108 to i32
  call void @__asan_store2_noabort(i32 %281)
  store i16 %conv.4.3.i110, ptr %incdec.ptr.3.3.i108, align 2
  %add.ptr.4.3.i112 = getelementptr i8, ptr %reference, i32 29
  %282 = ptrtoint ptr %add.ptr.4.3.i112 to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %add.ptr.4.3.i112, align 1
  %conv.5.3.i113 = zext i8 %283 to i16
  %incdec.ptr.5.3.i114 = getelementptr inbounds i16, ptr %old, i32 30
  %284 = ptrtoint ptr %incdec.ptr.4.3.i111 to i32
  call void @__asan_store2_noabort(i32 %284)
  store i16 %conv.5.3.i113, ptr %incdec.ptr.4.3.i111, align 2
  %add.ptr.5.3.i115 = getelementptr i8, ptr %reference, i32 30
  %285 = ptrtoint ptr %add.ptr.5.3.i115 to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %add.ptr.5.3.i115, align 1
  %conv.6.3.i116 = zext i8 %286 to i16
  %incdec.ptr.6.3.i117 = getelementptr inbounds i16, ptr %old, i32 31
  %287 = ptrtoint ptr %incdec.ptr.5.3.i114 to i32
  call void @__asan_store2_noabort(i32 %287)
  store i16 %conv.6.3.i116, ptr %incdec.ptr.5.3.i114, align 2
  %add.ptr.6.3.i118 = getelementptr i8, ptr %reference, i32 31
  %288 = ptrtoint ptr %add.ptr.6.3.i118 to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %add.ptr.6.3.i118, align 1
  %conv.7.3.i119 = zext i8 %289 to i16
  %incdec.ptr.7.3.i120 = getelementptr inbounds i16, ptr %old, i32 32
  %290 = ptrtoint ptr %incdec.ptr.6.3.i117 to i32
  call void @__asan_store2_noabort(i32 %290)
  store i16 %conv.7.3.i119, ptr %incdec.ptr.6.3.i117, align 2
  %add.ptr.7.3.i121 = getelementptr i8, ptr %reference, i32 32
  %291 = ptrtoint ptr %add.ptr.7.3.i121 to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %add.ptr.7.3.i121, align 1
  %conv.428.i122 = zext i8 %292 to i16
  %incdec.ptr.429.i123 = getelementptr inbounds i16, ptr %old, i32 33
  %293 = ptrtoint ptr %incdec.ptr.7.3.i120 to i32
  call void @__asan_store2_noabort(i32 %293)
  store i16 %conv.428.i122, ptr %incdec.ptr.7.3.i120, align 2
  %add.ptr.430.i124 = getelementptr i8, ptr %reference, i32 33
  %294 = ptrtoint ptr %add.ptr.430.i124 to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %add.ptr.430.i124, align 1
  %conv.1.4.i125 = zext i8 %295 to i16
  %incdec.ptr.1.4.i126 = getelementptr inbounds i16, ptr %old, i32 34
  %296 = ptrtoint ptr %incdec.ptr.429.i123 to i32
  call void @__asan_store2_noabort(i32 %296)
  store i16 %conv.1.4.i125, ptr %incdec.ptr.429.i123, align 2
  %add.ptr.1.4.i127 = getelementptr i8, ptr %reference, i32 34
  %297 = ptrtoint ptr %add.ptr.1.4.i127 to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %add.ptr.1.4.i127, align 1
  %conv.2.4.i128 = zext i8 %298 to i16
  %incdec.ptr.2.4.i129 = getelementptr inbounds i16, ptr %old, i32 35
  %299 = ptrtoint ptr %incdec.ptr.1.4.i126 to i32
  call void @__asan_store2_noabort(i32 %299)
  store i16 %conv.2.4.i128, ptr %incdec.ptr.1.4.i126, align 2
  %add.ptr.2.4.i130 = getelementptr i8, ptr %reference, i32 35
  %300 = ptrtoint ptr %add.ptr.2.4.i130 to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %add.ptr.2.4.i130, align 1
  %conv.3.4.i131 = zext i8 %301 to i16
  %incdec.ptr.3.4.i132 = getelementptr inbounds i16, ptr %old, i32 36
  %302 = ptrtoint ptr %incdec.ptr.2.4.i129 to i32
  call void @__asan_store2_noabort(i32 %302)
  store i16 %conv.3.4.i131, ptr %incdec.ptr.2.4.i129, align 2
  %add.ptr.3.4.i133 = getelementptr i8, ptr %reference, i32 36
  %303 = ptrtoint ptr %add.ptr.3.4.i133 to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %add.ptr.3.4.i133, align 1
  %conv.4.4.i134 = zext i8 %304 to i16
  %incdec.ptr.4.4.i135 = getelementptr inbounds i16, ptr %old, i32 37
  %305 = ptrtoint ptr %incdec.ptr.3.4.i132 to i32
  call void @__asan_store2_noabort(i32 %305)
  store i16 %conv.4.4.i134, ptr %incdec.ptr.3.4.i132, align 2
  %add.ptr.4.4.i136 = getelementptr i8, ptr %reference, i32 37
  %306 = ptrtoint ptr %add.ptr.4.4.i136 to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %add.ptr.4.4.i136, align 1
  %conv.5.4.i137 = zext i8 %307 to i16
  %incdec.ptr.5.4.i138 = getelementptr inbounds i16, ptr %old, i32 38
  %308 = ptrtoint ptr %incdec.ptr.4.4.i135 to i32
  call void @__asan_store2_noabort(i32 %308)
  store i16 %conv.5.4.i137, ptr %incdec.ptr.4.4.i135, align 2
  %add.ptr.5.4.i139 = getelementptr i8, ptr %reference, i32 38
  %309 = ptrtoint ptr %add.ptr.5.4.i139 to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %add.ptr.5.4.i139, align 1
  %conv.6.4.i140 = zext i8 %310 to i16
  %incdec.ptr.6.4.i141 = getelementptr inbounds i16, ptr %old, i32 39
  %311 = ptrtoint ptr %incdec.ptr.5.4.i138 to i32
  call void @__asan_store2_noabort(i32 %311)
  store i16 %conv.6.4.i140, ptr %incdec.ptr.5.4.i138, align 2
  %add.ptr.6.4.i142 = getelementptr i8, ptr %reference, i32 39
  %312 = ptrtoint ptr %add.ptr.6.4.i142 to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %add.ptr.6.4.i142, align 1
  %conv.7.4.i143 = zext i8 %313 to i16
  %incdec.ptr.7.4.i144 = getelementptr inbounds i16, ptr %old, i32 40
  %314 = ptrtoint ptr %incdec.ptr.6.4.i141 to i32
  call void @__asan_store2_noabort(i32 %314)
  store i16 %conv.7.4.i143, ptr %incdec.ptr.6.4.i141, align 2
  %add.ptr.7.4.i145 = getelementptr i8, ptr %reference, i32 40
  %315 = ptrtoint ptr %add.ptr.7.4.i145 to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %add.ptr.7.4.i145, align 1
  %conv.531.i146 = zext i8 %316 to i16
  %incdec.ptr.532.i147 = getelementptr inbounds i16, ptr %old, i32 41
  %317 = ptrtoint ptr %incdec.ptr.7.4.i144 to i32
  call void @__asan_store2_noabort(i32 %317)
  store i16 %conv.531.i146, ptr %incdec.ptr.7.4.i144, align 2
  %add.ptr.533.i148 = getelementptr i8, ptr %reference, i32 41
  %318 = ptrtoint ptr %add.ptr.533.i148 to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %add.ptr.533.i148, align 1
  %conv.1.5.i149 = zext i8 %319 to i16
  %incdec.ptr.1.5.i150 = getelementptr inbounds i16, ptr %old, i32 42
  %320 = ptrtoint ptr %incdec.ptr.532.i147 to i32
  call void @__asan_store2_noabort(i32 %320)
  store i16 %conv.1.5.i149, ptr %incdec.ptr.532.i147, align 2
  %add.ptr.1.5.i151 = getelementptr i8, ptr %reference, i32 42
  %321 = ptrtoint ptr %add.ptr.1.5.i151 to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %add.ptr.1.5.i151, align 1
  %conv.2.5.i152 = zext i8 %322 to i16
  %incdec.ptr.2.5.i153 = getelementptr inbounds i16, ptr %old, i32 43
  %323 = ptrtoint ptr %incdec.ptr.1.5.i150 to i32
  call void @__asan_store2_noabort(i32 %323)
  store i16 %conv.2.5.i152, ptr %incdec.ptr.1.5.i150, align 2
  %add.ptr.2.5.i154 = getelementptr i8, ptr %reference, i32 43
  %324 = ptrtoint ptr %add.ptr.2.5.i154 to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %add.ptr.2.5.i154, align 1
  %conv.3.5.i155 = zext i8 %325 to i16
  %incdec.ptr.3.5.i156 = getelementptr inbounds i16, ptr %old, i32 44
  %326 = ptrtoint ptr %incdec.ptr.2.5.i153 to i32
  call void @__asan_store2_noabort(i32 %326)
  store i16 %conv.3.5.i155, ptr %incdec.ptr.2.5.i153, align 2
  %add.ptr.3.5.i157 = getelementptr i8, ptr %reference, i32 44
  %327 = ptrtoint ptr %add.ptr.3.5.i157 to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %add.ptr.3.5.i157, align 1
  %conv.4.5.i158 = zext i8 %328 to i16
  %incdec.ptr.4.5.i159 = getelementptr inbounds i16, ptr %old, i32 45
  %329 = ptrtoint ptr %incdec.ptr.3.5.i156 to i32
  call void @__asan_store2_noabort(i32 %329)
  store i16 %conv.4.5.i158, ptr %incdec.ptr.3.5.i156, align 2
  %add.ptr.4.5.i160 = getelementptr i8, ptr %reference, i32 45
  %330 = ptrtoint ptr %add.ptr.4.5.i160 to i32
  call void @__asan_load1_noabort(i32 %330)
  %331 = load i8, ptr %add.ptr.4.5.i160, align 1
  %conv.5.5.i161 = zext i8 %331 to i16
  %incdec.ptr.5.5.i162 = getelementptr inbounds i16, ptr %old, i32 46
  %332 = ptrtoint ptr %incdec.ptr.4.5.i159 to i32
  call void @__asan_store2_noabort(i32 %332)
  store i16 %conv.5.5.i161, ptr %incdec.ptr.4.5.i159, align 2
  %add.ptr.5.5.i163 = getelementptr i8, ptr %reference, i32 46
  %333 = ptrtoint ptr %add.ptr.5.5.i163 to i32
  call void @__asan_load1_noabort(i32 %333)
  %334 = load i8, ptr %add.ptr.5.5.i163, align 1
  %conv.6.5.i164 = zext i8 %334 to i16
  %incdec.ptr.6.5.i165 = getelementptr inbounds i16, ptr %old, i32 47
  %335 = ptrtoint ptr %incdec.ptr.5.5.i162 to i32
  call void @__asan_store2_noabort(i32 %335)
  store i16 %conv.6.5.i164, ptr %incdec.ptr.5.5.i162, align 2
  %add.ptr.6.5.i166 = getelementptr i8, ptr %reference, i32 47
  %336 = ptrtoint ptr %add.ptr.6.5.i166 to i32
  call void @__asan_load1_noabort(i32 %336)
  %337 = load i8, ptr %add.ptr.6.5.i166, align 1
  %conv.7.5.i167 = zext i8 %337 to i16
  %incdec.ptr.7.5.i168 = getelementptr inbounds i16, ptr %old, i32 48
  %338 = ptrtoint ptr %incdec.ptr.6.5.i165 to i32
  call void @__asan_store2_noabort(i32 %338)
  store i16 %conv.7.5.i167, ptr %incdec.ptr.6.5.i165, align 2
  %add.ptr.7.5.i169 = getelementptr i8, ptr %reference, i32 48
  %339 = ptrtoint ptr %add.ptr.7.5.i169 to i32
  call void @__asan_load1_noabort(i32 %339)
  %340 = load i8, ptr %add.ptr.7.5.i169, align 1
  %conv.634.i170 = zext i8 %340 to i16
  %incdec.ptr.635.i171 = getelementptr inbounds i16, ptr %old, i32 49
  %341 = ptrtoint ptr %incdec.ptr.7.5.i168 to i32
  call void @__asan_store2_noabort(i32 %341)
  store i16 %conv.634.i170, ptr %incdec.ptr.7.5.i168, align 2
  %add.ptr.636.i172 = getelementptr i8, ptr %reference, i32 49
  %342 = ptrtoint ptr %add.ptr.636.i172 to i32
  call void @__asan_load1_noabort(i32 %342)
  %343 = load i8, ptr %add.ptr.636.i172, align 1
  %conv.1.6.i173 = zext i8 %343 to i16
  %incdec.ptr.1.6.i174 = getelementptr inbounds i16, ptr %old, i32 50
  %344 = ptrtoint ptr %incdec.ptr.635.i171 to i32
  call void @__asan_store2_noabort(i32 %344)
  store i16 %conv.1.6.i173, ptr %incdec.ptr.635.i171, align 2
  %add.ptr.1.6.i175 = getelementptr i8, ptr %reference, i32 50
  %345 = ptrtoint ptr %add.ptr.1.6.i175 to i32
  call void @__asan_load1_noabort(i32 %345)
  %346 = load i8, ptr %add.ptr.1.6.i175, align 1
  %conv.2.6.i176 = zext i8 %346 to i16
  %incdec.ptr.2.6.i177 = getelementptr inbounds i16, ptr %old, i32 51
  %347 = ptrtoint ptr %incdec.ptr.1.6.i174 to i32
  call void @__asan_store2_noabort(i32 %347)
  store i16 %conv.2.6.i176, ptr %incdec.ptr.1.6.i174, align 2
  %add.ptr.2.6.i178 = getelementptr i8, ptr %reference, i32 51
  %348 = ptrtoint ptr %add.ptr.2.6.i178 to i32
  call void @__asan_load1_noabort(i32 %348)
  %349 = load i8, ptr %add.ptr.2.6.i178, align 1
  %conv.3.6.i179 = zext i8 %349 to i16
  %incdec.ptr.3.6.i180 = getelementptr inbounds i16, ptr %old, i32 52
  %350 = ptrtoint ptr %incdec.ptr.2.6.i177 to i32
  call void @__asan_store2_noabort(i32 %350)
  store i16 %conv.3.6.i179, ptr %incdec.ptr.2.6.i177, align 2
  %add.ptr.3.6.i181 = getelementptr i8, ptr %reference, i32 52
  %351 = ptrtoint ptr %add.ptr.3.6.i181 to i32
  call void @__asan_load1_noabort(i32 %351)
  %352 = load i8, ptr %add.ptr.3.6.i181, align 1
  %conv.4.6.i182 = zext i8 %352 to i16
  %incdec.ptr.4.6.i183 = getelementptr inbounds i16, ptr %old, i32 53
  %353 = ptrtoint ptr %incdec.ptr.3.6.i180 to i32
  call void @__asan_store2_noabort(i32 %353)
  store i16 %conv.4.6.i182, ptr %incdec.ptr.3.6.i180, align 2
  %add.ptr.4.6.i184 = getelementptr i8, ptr %reference, i32 53
  %354 = ptrtoint ptr %add.ptr.4.6.i184 to i32
  call void @__asan_load1_noabort(i32 %354)
  %355 = load i8, ptr %add.ptr.4.6.i184, align 1
  %conv.5.6.i185 = zext i8 %355 to i16
  %incdec.ptr.5.6.i186 = getelementptr inbounds i16, ptr %old, i32 54
  %356 = ptrtoint ptr %incdec.ptr.4.6.i183 to i32
  call void @__asan_store2_noabort(i32 %356)
  store i16 %conv.5.6.i185, ptr %incdec.ptr.4.6.i183, align 2
  %add.ptr.5.6.i187 = getelementptr i8, ptr %reference, i32 54
  %357 = ptrtoint ptr %add.ptr.5.6.i187 to i32
  call void @__asan_load1_noabort(i32 %357)
  %358 = load i8, ptr %add.ptr.5.6.i187, align 1
  %conv.6.6.i188 = zext i8 %358 to i16
  %incdec.ptr.6.6.i189 = getelementptr inbounds i16, ptr %old, i32 55
  %359 = ptrtoint ptr %incdec.ptr.5.6.i186 to i32
  call void @__asan_store2_noabort(i32 %359)
  store i16 %conv.6.6.i188, ptr %incdec.ptr.5.6.i186, align 2
  %add.ptr.6.6.i190 = getelementptr i8, ptr %reference, i32 55
  %360 = ptrtoint ptr %add.ptr.6.6.i190 to i32
  call void @__asan_load1_noabort(i32 %360)
  %361 = load i8, ptr %add.ptr.6.6.i190, align 1
  %conv.7.6.i191 = zext i8 %361 to i16
  %incdec.ptr.7.6.i192 = getelementptr inbounds i16, ptr %old, i32 56
  %362 = ptrtoint ptr %incdec.ptr.6.6.i189 to i32
  call void @__asan_store2_noabort(i32 %362)
  store i16 %conv.7.6.i191, ptr %incdec.ptr.6.6.i189, align 2
  %add.ptr.7.6.i193 = getelementptr i8, ptr %reference, i32 56
  %363 = ptrtoint ptr %add.ptr.7.6.i193 to i32
  call void @__asan_load1_noabort(i32 %363)
  %364 = load i8, ptr %add.ptr.7.6.i193, align 1
  %conv.737.i194 = zext i8 %364 to i16
  %incdec.ptr.738.i195 = getelementptr inbounds i16, ptr %old, i32 57
  %365 = ptrtoint ptr %incdec.ptr.7.6.i192 to i32
  call void @__asan_store2_noabort(i32 %365)
  store i16 %conv.737.i194, ptr %incdec.ptr.7.6.i192, align 2
  %add.ptr.739.i196 = getelementptr i8, ptr %reference, i32 57
  %366 = ptrtoint ptr %add.ptr.739.i196 to i32
  call void @__asan_load1_noabort(i32 %366)
  %367 = load i8, ptr %add.ptr.739.i196, align 1
  %conv.1.7.i197 = zext i8 %367 to i16
  %incdec.ptr.1.7.i198 = getelementptr inbounds i16, ptr %old, i32 58
  %368 = ptrtoint ptr %incdec.ptr.738.i195 to i32
  call void @__asan_store2_noabort(i32 %368)
  store i16 %conv.1.7.i197, ptr %incdec.ptr.738.i195, align 2
  %add.ptr.1.7.i199 = getelementptr i8, ptr %reference, i32 58
  %369 = ptrtoint ptr %add.ptr.1.7.i199 to i32
  call void @__asan_load1_noabort(i32 %369)
  %370 = load i8, ptr %add.ptr.1.7.i199, align 1
  %conv.2.7.i200 = zext i8 %370 to i16
  %incdec.ptr.2.7.i201 = getelementptr inbounds i16, ptr %old, i32 59
  %371 = ptrtoint ptr %incdec.ptr.1.7.i198 to i32
  call void @__asan_store2_noabort(i32 %371)
  store i16 %conv.2.7.i200, ptr %incdec.ptr.1.7.i198, align 2
  %add.ptr.2.7.i202 = getelementptr i8, ptr %reference, i32 59
  %372 = ptrtoint ptr %add.ptr.2.7.i202 to i32
  call void @__asan_load1_noabort(i32 %372)
  %373 = load i8, ptr %add.ptr.2.7.i202, align 1
  %conv.3.7.i203 = zext i8 %373 to i16
  %incdec.ptr.3.7.i204 = getelementptr inbounds i16, ptr %old, i32 60
  %374 = ptrtoint ptr %incdec.ptr.2.7.i201 to i32
  call void @__asan_store2_noabort(i32 %374)
  store i16 %conv.3.7.i203, ptr %incdec.ptr.2.7.i201, align 2
  %add.ptr.3.7.i205 = getelementptr i8, ptr %reference, i32 60
  %375 = ptrtoint ptr %add.ptr.3.7.i205 to i32
  call void @__asan_load1_noabort(i32 %375)
  %376 = load i8, ptr %add.ptr.3.7.i205, align 1
  %conv.4.7.i206 = zext i8 %376 to i16
  %incdec.ptr.4.7.i207 = getelementptr inbounds i16, ptr %old, i32 61
  %377 = ptrtoint ptr %incdec.ptr.3.7.i204 to i32
  call void @__asan_store2_noabort(i32 %377)
  store i16 %conv.4.7.i206, ptr %incdec.ptr.3.7.i204, align 2
  %add.ptr.4.7.i208 = getelementptr i8, ptr %reference, i32 61
  %378 = ptrtoint ptr %add.ptr.4.7.i208 to i32
  call void @__asan_load1_noabort(i32 %378)
  %379 = load i8, ptr %add.ptr.4.7.i208, align 1
  %conv.5.7.i209 = zext i8 %379 to i16
  %incdec.ptr.5.7.i210 = getelementptr inbounds i16, ptr %old, i32 62
  %380 = ptrtoint ptr %incdec.ptr.4.7.i207 to i32
  call void @__asan_store2_noabort(i32 %380)
  store i16 %conv.5.7.i209, ptr %incdec.ptr.4.7.i207, align 2
  %add.ptr.5.7.i211 = getelementptr i8, ptr %reference, i32 62
  %381 = ptrtoint ptr %add.ptr.5.7.i211 to i32
  call void @__asan_load1_noabort(i32 %381)
  %382 = load i8, ptr %add.ptr.5.7.i211, align 1
  %conv.6.7.i212 = zext i8 %382 to i16
  %incdec.ptr.6.7.i213 = getelementptr inbounds i16, ptr %old, i32 63
  %383 = ptrtoint ptr %incdec.ptr.5.7.i210 to i32
  call void @__asan_store2_noabort(i32 %383)
  store i16 %conv.6.7.i212, ptr %incdec.ptr.5.7.i210, align 2
  %add.ptr.6.7.i214 = getelementptr i8, ptr %reference, i32 63
  %384 = ptrtoint ptr %add.ptr.6.7.i214 to i32
  call void @__asan_load1_noabort(i32 %384)
  %385 = load i8, ptr %add.ptr.6.7.i214, align 1
  %conv.7.7.i215 = zext i8 %385 to i16
  %386 = ptrtoint ptr %incdec.ptr.6.7.i213 to i32
  call void @__asan_store2_noabort(i32 %386)
  store i16 %conv.7.7.i215, ptr %incdec.ptr.6.7.i213, align 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.034.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %tmp.033.i = phi ptr [ %tmp, %entry ], [ %incdec.ptr.i217, %for.body.i.for.body.i_crit_edge ]
  %mean.032.i = phi i32 [ 0, %entry ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %387 = ptrtoint ptr %tmp.033.i to i32
  call void @__asan_load2_noabort(i32 %387)
  %388 = load i16, ptr %tmp.033.i, align 2
  %conv.i216 = sext i16 %388 to i32
  %add.i = add i32 %mean.032.i, %conv.i216
  %inc.i = add nuw nsw i32 %i.034.i, 1
  %incdec.ptr.i217 = getelementptr i16, ptr %tmp.033.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %div.neg.i = sdiv i32 %add.i, -64
  br label %for.body4.i

for.body4.i:                                      ; preds = %for.body4.i.for.body4.i_crit_edge, %for.end.i
  %i.137.i = phi i32 [ 0, %for.end.i ], [ %inc15.i, %for.body4.i.for.body4.i_crit_edge ]
  %tmp.136.i = phi ptr [ %tmp, %for.end.i ], [ %incdec.ptr16.i, %for.body4.i.for.body4.i_crit_edge ]
  %ret.035.i = phi i32 [ 0, %for.end.i ], [ %add13.i, %for.body4.i.for.body4.i_crit_edge ]
  %389 = ptrtoint ptr %tmp.136.i to i32
  call void @__asan_load2_noabort(i32 %389)
  %390 = load i16, ptr %tmp.136.i, align 2
  %conv5.i = sext i16 %390 to i32
  %sub.i218 = add i32 %div.neg.i, %conv5.i
  %391 = tail call i32 @llvm.abs.i32(i32 %sub.i218, i1 false) #8
  %add13.i = add i32 %391, %ret.035.i
  %inc15.i = add nuw nsw i32 %i.137.i, 1
  %incdec.ptr16.i = getelementptr i16, ptr %tmp.136.i, i32 1
  %exitcond38.not.i = icmp eq i32 %inc15.i, 64
  br i1 %exitcond38.not.i, label %for.body4.i.for.cond4.preheader_crit_edge, label %for.body4.i.for.body4.i_crit_edge

for.body4.i.for.body4.i_crit_edge:                ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body4.i

for.body4.i.for.cond4.preheader_crit_edge:        ; preds = %for.body4.i
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.cond4.preheader.for.cond4.preheader_crit_edge, %for.body4.i.for.cond4.preheader_crit_edge
  %k.0234 = phi i32 [ %inc12, %for.cond4.preheader.for.cond4.preheader_crit_edge ], [ 0, %for.body4.i.for.cond4.preheader_crit_edge ]
  %work.0233 = phi ptr [ %incdec.ptr9.7, %for.cond4.preheader.for.cond4.preheader_crit_edge ], [ %tmp, %for.body4.i.for.cond4.preheader_crit_edge ]
  %reference.addr.0232 = phi ptr [ %incdec.ptr10.7, %for.cond4.preheader.for.cond4.preheader_crit_edge ], [ %reference, %for.body4.i.for.cond4.preheader_crit_edge ]
  %deltablock.addr.0231 = phi ptr [ %incdec.ptr.7, %for.cond4.preheader.for.cond4.preheader_crit_edge ], [ %deltablock, %for.body4.i.for.cond4.preheader_crit_edge ]
  %392 = ptrtoint ptr %work.0233 to i32
  call void @__asan_load2_noabort(i32 %392)
  %393 = load i16, ptr %work.0233, align 2
  %394 = ptrtoint ptr %reference.addr.0232 to i32
  call void @__asan_load1_noabort(i32 %394)
  %395 = load i8, ptr %reference.addr.0232, align 1
  %conv7 = zext i8 %395 to i16
  %sub = sub i16 %393, %conv7
  %396 = ptrtoint ptr %deltablock.addr.0231 to i32
  call void @__asan_store2_noabort(i32 %396)
  store i16 %sub, ptr %deltablock.addr.0231, align 2
  %incdec.ptr = getelementptr i16, ptr %deltablock.addr.0231, i32 1
  %incdec.ptr9 = getelementptr i16, ptr %work.0233, i32 1
  %incdec.ptr10 = getelementptr i8, ptr %reference.addr.0232, i32 1
  %397 = ptrtoint ptr %incdec.ptr9 to i32
  call void @__asan_load2_noabort(i32 %397)
  %398 = load i16, ptr %incdec.ptr9, align 2
  %399 = ptrtoint ptr %incdec.ptr10 to i32
  call void @__asan_load1_noabort(i32 %399)
  %400 = load i8, ptr %incdec.ptr10, align 1
  %conv7.1 = zext i8 %400 to i16
  %sub.1 = sub i16 %398, %conv7.1
  %401 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store2_noabort(i32 %401)
  store i16 %sub.1, ptr %incdec.ptr, align 2
  %incdec.ptr.1 = getelementptr i16, ptr %deltablock.addr.0231, i32 2
  %incdec.ptr9.1 = getelementptr i16, ptr %work.0233, i32 2
  %incdec.ptr10.1 = getelementptr i8, ptr %reference.addr.0232, i32 2
  %402 = ptrtoint ptr %incdec.ptr9.1 to i32
  call void @__asan_load2_noabort(i32 %402)
  %403 = load i16, ptr %incdec.ptr9.1, align 2
  %404 = ptrtoint ptr %incdec.ptr10.1 to i32
  call void @__asan_load1_noabort(i32 %404)
  %405 = load i8, ptr %incdec.ptr10.1, align 1
  %conv7.2 = zext i8 %405 to i16
  %sub.2 = sub i16 %403, %conv7.2
  %406 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_store2_noabort(i32 %406)
  store i16 %sub.2, ptr %incdec.ptr.1, align 2
  %incdec.ptr.2 = getelementptr i16, ptr %deltablock.addr.0231, i32 3
  %incdec.ptr9.2 = getelementptr i16, ptr %work.0233, i32 3
  %incdec.ptr10.2 = getelementptr i8, ptr %reference.addr.0232, i32 3
  %407 = ptrtoint ptr %incdec.ptr9.2 to i32
  call void @__asan_load2_noabort(i32 %407)
  %408 = load i16, ptr %incdec.ptr9.2, align 2
  %409 = ptrtoint ptr %incdec.ptr10.2 to i32
  call void @__asan_load1_noabort(i32 %409)
  %410 = load i8, ptr %incdec.ptr10.2, align 1
  %conv7.3 = zext i8 %410 to i16
  %sub.3 = sub i16 %408, %conv7.3
  %411 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_store2_noabort(i32 %411)
  store i16 %sub.3, ptr %incdec.ptr.2, align 2
  %incdec.ptr.3 = getelementptr i16, ptr %deltablock.addr.0231, i32 4
  %incdec.ptr9.3 = getelementptr i16, ptr %work.0233, i32 4
  %incdec.ptr10.3 = getelementptr i8, ptr %reference.addr.0232, i32 4
  %412 = ptrtoint ptr %incdec.ptr9.3 to i32
  call void @__asan_load2_noabort(i32 %412)
  %413 = load i16, ptr %incdec.ptr9.3, align 2
  %414 = ptrtoint ptr %incdec.ptr10.3 to i32
  call void @__asan_load1_noabort(i32 %414)
  %415 = load i8, ptr %incdec.ptr10.3, align 1
  %conv7.4 = zext i8 %415 to i16
  %sub.4 = sub i16 %413, %conv7.4
  %416 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_store2_noabort(i32 %416)
  store i16 %sub.4, ptr %incdec.ptr.3, align 2
  %incdec.ptr.4 = getelementptr i16, ptr %deltablock.addr.0231, i32 5
  %incdec.ptr9.4 = getelementptr i16, ptr %work.0233, i32 5
  %incdec.ptr10.4 = getelementptr i8, ptr %reference.addr.0232, i32 5
  %417 = ptrtoint ptr %incdec.ptr9.4 to i32
  call void @__asan_load2_noabort(i32 %417)
  %418 = load i16, ptr %incdec.ptr9.4, align 2
  %419 = ptrtoint ptr %incdec.ptr10.4 to i32
  call void @__asan_load1_noabort(i32 %419)
  %420 = load i8, ptr %incdec.ptr10.4, align 1
  %conv7.5 = zext i8 %420 to i16
  %sub.5 = sub i16 %418, %conv7.5
  %421 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_store2_noabort(i32 %421)
  store i16 %sub.5, ptr %incdec.ptr.4, align 2
  %incdec.ptr.5 = getelementptr i16, ptr %deltablock.addr.0231, i32 6
  %incdec.ptr9.5 = getelementptr i16, ptr %work.0233, i32 6
  %incdec.ptr10.5 = getelementptr i8, ptr %reference.addr.0232, i32 6
  %422 = ptrtoint ptr %incdec.ptr9.5 to i32
  call void @__asan_load2_noabort(i32 %422)
  %423 = load i16, ptr %incdec.ptr9.5, align 2
  %424 = ptrtoint ptr %incdec.ptr10.5 to i32
  call void @__asan_load1_noabort(i32 %424)
  %425 = load i8, ptr %incdec.ptr10.5, align 1
  %conv7.6 = zext i8 %425 to i16
  %sub.6 = sub i16 %423, %conv7.6
  %426 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_store2_noabort(i32 %426)
  store i16 %sub.6, ptr %incdec.ptr.5, align 2
  %incdec.ptr.6 = getelementptr i16, ptr %deltablock.addr.0231, i32 7
  %incdec.ptr9.6 = getelementptr i16, ptr %work.0233, i32 7
  %incdec.ptr10.6 = getelementptr i8, ptr %reference.addr.0232, i32 7
  %427 = ptrtoint ptr %incdec.ptr9.6 to i32
  call void @__asan_load2_noabort(i32 %427)
  %428 = load i16, ptr %incdec.ptr9.6, align 2
  %429 = ptrtoint ptr %incdec.ptr10.6 to i32
  call void @__asan_load1_noabort(i32 %429)
  %430 = load i8, ptr %incdec.ptr10.6, align 1
  %conv7.7 = zext i8 %430 to i16
  %sub.7 = sub i16 %428, %conv7.7
  %431 = ptrtoint ptr %incdec.ptr.6 to i32
  call void @__asan_store2_noabort(i32 %431)
  store i16 %sub.7, ptr %incdec.ptr.6, align 2
  %incdec.ptr.7 = getelementptr i16, ptr %deltablock.addr.0231, i32 8
  %incdec.ptr9.7 = getelementptr i16, ptr %work.0233, i32 8
  %incdec.ptr10.7 = getelementptr i8, ptr %reference.addr.0232, i32 8
  %inc12 = add nuw nsw i32 %k.0234, 1
  %exitcond.not = icmp eq i32 %inc12, 8
  br i1 %exitcond.not, label %for.cond4.preheader.for.body.i225_crit_edge, label %for.cond4.preheader.for.cond4.preheader_crit_edge

for.cond4.preheader.for.cond4.preheader_crit_edge: ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond4.preheader

for.cond4.preheader.for.body.i225_crit_edge:      ; preds = %for.cond4.preheader
  br label %for.body.i225

for.body.i225:                                    ; preds = %for.body.i225.for.body.i225_crit_edge, %for.cond4.preheader.for.body.i225_crit_edge
  %i.023.i = phi i32 [ %inc.i222, %for.body.i225.for.body.i225_crit_edge ], [ 0, %for.cond4.preheader.for.body.i225_crit_edge ]
  %ret.022.i = phi i32 [ %add.i221, %for.body.i225.for.body.i225_crit_edge ], [ 0, %for.cond4.preheader.for.body.i225_crit_edge ]
  %new.addr.021.i = phi ptr [ %incdec.ptr11.i, %for.body.i225.for.body.i225_crit_edge ], [ %tmp, %for.cond4.preheader.for.body.i225_crit_edge ]
  %old.addr.020.i = phi ptr [ %incdec.ptr.i223, %for.body.i225.for.body.i225_crit_edge ], [ %old, %for.cond4.preheader.for.body.i225_crit_edge ]
  %432 = ptrtoint ptr %old.addr.020.i to i32
  call void @__asan_load2_noabort(i32 %432)
  %433 = load i16, ptr %old.addr.020.i, align 2
  %conv.i219 = sext i16 %433 to i32
  %434 = ptrtoint ptr %new.addr.021.i to i32
  call void @__asan_load2_noabort(i32 %434)
  %435 = load i16, ptr %new.addr.021.i, align 2
  %conv1.i = sext i16 %435 to i32
  %sub.i220 = sub nsw i32 %conv.i219, %conv1.i
  %436 = tail call i32 @llvm.abs.i32(i32 %sub.i220, i1 true) #8
  %add.i221 = add i32 %436, %ret.022.i
  %inc.i222 = add nuw nsw i32 %i.023.i, 1
  %incdec.ptr.i223 = getelementptr i16, ptr %old.addr.020.i, i32 1
  %incdec.ptr11.i = getelementptr i16, ptr %new.addr.021.i, i32 1
  %exitcond.not.i224 = icmp eq i32 %inc.i222, 64
  br i1 %exitcond.not.i224, label %var_inter.exit, label %for.body.i225.for.body.i225_crit_edge

for.body.i225.for.body.i225_crit_edge:            ; preds = %for.body.i225
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i225

var_inter.exit:                                   ; preds = %for.body.i225
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_cmp4(i32 %add13.i, i32 %add.i221)
  %cmp17.not = icmp sle i32 %add13.i, %add.i221
  %cond = zext i1 %cmp17.not to i32
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %old) #8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tmp) #8
  ret i32 %cond
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fwht(ptr noundef readonly %block, ptr nocapture noundef %output_block, i32 noundef %stride, i32 noundef %input_step) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %entry
  %i.04 = phi i32 [ 0, %entry ], [ %inc, %sw.epilog.for.body_crit_edge ]
  %out.03 = phi ptr [ %output_block, %entry ], [ %add.ptr280, %sw.epilog.for.body_crit_edge ]
  %tmp.01 = phi ptr [ %block, %entry ], [ %add.ptr, %sw.epilog.for.body_crit_edge ]
  %0 = zext i32 %input_step to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %input_step, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb50
    i32 3, label %sw.bb103
  ]

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %tmp.01 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %tmp.01, align 1
  %conv = zext i8 %2 to i32
  %arrayidx1 = getelementptr i8, ptr %tmp.01, i32 1
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %4 to i32
  %add3 = add nuw nsw i32 %conv2, %conv
  %sub9 = sub nsw i32 %conv, %conv2
  %arrayidx11 = getelementptr i8, ptr %tmp.01, i32 2
  %5 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %6 to i32
  %arrayidx13 = getelementptr i8, ptr %tmp.01, i32 3
  %7 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %8 to i32
  %add15 = add nuw nsw i32 %conv14, %conv12
  %sub22 = sub nsw i32 %conv12, %conv14
  %arrayidx24 = getelementptr i8, ptr %tmp.01, i32 4
  %9 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %10 to i32
  %arrayidx26 = getelementptr i8, ptr %tmp.01, i32 5
  %11 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %12 to i32
  %add28 = add nuw nsw i32 %conv27, %conv25
  %sub35 = sub nsw i32 %conv25, %conv27
  %arrayidx37 = getelementptr i8, ptr %tmp.01, i32 6
  %13 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %14 to i32
  %arrayidx39 = getelementptr i8, ptr %tmp.01, i32 7
  %15 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %16 to i32
  %add41 = add nuw nsw i32 %conv40, %conv38
  %sub48 = sub nsw i32 %conv38, %conv40
  br label %sw.epilog

sw.bb50:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %tmp.01 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %tmp.01, align 1
  %conv52 = zext i8 %18 to i32
  %arrayidx53 = getelementptr i8, ptr %tmp.01, i32 2
  %19 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %20 to i32
  %add55 = add nuw nsw i32 %conv54, %conv52
  %sub62 = sub nsw i32 %conv52, %conv54
  %arrayidx64 = getelementptr i8, ptr %tmp.01, i32 4
  %21 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx64, align 1
  %conv65 = zext i8 %22 to i32
  %arrayidx66 = getelementptr i8, ptr %tmp.01, i32 6
  %23 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx66, align 1
  %conv67 = zext i8 %24 to i32
  %add68 = add nuw nsw i32 %conv67, %conv65
  %sub75 = sub nsw i32 %conv65, %conv67
  %arrayidx77 = getelementptr i8, ptr %tmp.01, i32 8
  %25 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx77, align 1
  %conv78 = zext i8 %26 to i32
  %arrayidx79 = getelementptr i8, ptr %tmp.01, i32 10
  %27 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx79, align 1
  %conv80 = zext i8 %28 to i32
  %add81 = add nuw nsw i32 %conv80, %conv78
  %sub88 = sub nsw i32 %conv78, %conv80
  %arrayidx90 = getelementptr i8, ptr %tmp.01, i32 12
  %29 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx90, align 1
  %conv91 = zext i8 %30 to i32
  %arrayidx92 = getelementptr i8, ptr %tmp.01, i32 14
  %31 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx92, align 1
  %conv93 = zext i8 %32 to i32
  %add94 = add nuw nsw i32 %conv93, %conv91
  %sub101 = sub nsw i32 %conv91, %conv93
  br label %sw.epilog

sw.bb103:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %tmp.01 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %tmp.01, align 1
  %conv105 = zext i8 %34 to i32
  %arrayidx106 = getelementptr i8, ptr %tmp.01, i32 3
  %35 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx106, align 1
  %conv107 = zext i8 %36 to i32
  %add108 = add nuw nsw i32 %conv107, %conv105
  %sub115 = sub nsw i32 %conv105, %conv107
  %arrayidx117 = getelementptr i8, ptr %tmp.01, i32 6
  %37 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx117, align 1
  %conv118 = zext i8 %38 to i32
  %arrayidx119 = getelementptr i8, ptr %tmp.01, i32 9
  %39 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx119, align 1
  %conv120 = zext i8 %40 to i32
  %add121 = add nuw nsw i32 %conv120, %conv118
  %sub128 = sub nsw i32 %conv118, %conv120
  %arrayidx130 = getelementptr i8, ptr %tmp.01, i32 12
  %41 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx130, align 1
  %conv131 = zext i8 %42 to i32
  %arrayidx132 = getelementptr i8, ptr %tmp.01, i32 15
  %43 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx132, align 1
  %conv133 = zext i8 %44 to i32
  %add134 = add nuw nsw i32 %conv133, %conv131
  %sub141 = sub nsw i32 %conv131, %conv133
  %arrayidx143 = getelementptr i8, ptr %tmp.01, i32 18
  %45 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx143, align 1
  %conv144 = zext i8 %46 to i32
  %arrayidx145 = getelementptr i8, ptr %tmp.01, i32 21
  %47 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx145, align 1
  %conv146 = zext i8 %48 to i32
  %add147 = add nuw nsw i32 %conv146, %conv144
  %sub154 = sub nsw i32 %conv144, %conv146
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %tmp.01 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %tmp.01, align 1
  %conv157 = zext i8 %50 to i32
  %arrayidx158 = getelementptr i8, ptr %tmp.01, i32 4
  %51 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx158, align 1
  %conv159 = zext i8 %52 to i32
  %add160 = add nuw nsw i32 %conv159, %conv157
  %sub167 = sub nsw i32 %conv157, %conv159
  %arrayidx169 = getelementptr i8, ptr %tmp.01, i32 8
  %53 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx169, align 1
  %conv170 = zext i8 %54 to i32
  %arrayidx171 = getelementptr i8, ptr %tmp.01, i32 12
  %55 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx171, align 1
  %conv172 = zext i8 %56 to i32
  %add173 = add nuw nsw i32 %conv172, %conv170
  %sub180 = sub nsw i32 %conv170, %conv172
  %arrayidx182 = getelementptr i8, ptr %tmp.01, i32 16
  %57 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx182, align 1
  %conv183 = zext i8 %58 to i32
  %arrayidx184 = getelementptr i8, ptr %tmp.01, i32 20
  %59 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx184, align 1
  %conv185 = zext i8 %60 to i32
  %add186 = add nuw nsw i32 %conv185, %conv183
  %sub193 = sub nsw i32 %conv183, %conv185
  %arrayidx195 = getelementptr i8, ptr %tmp.01, i32 24
  %61 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx195, align 1
  %conv196 = zext i8 %62 to i32
  %arrayidx197 = getelementptr i8, ptr %tmp.01, i32 28
  %63 = ptrtoint ptr %arrayidx197 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx197, align 1
  %conv198 = zext i8 %64 to i32
  %add199 = add nuw nsw i32 %conv198, %conv196
  %sub206 = sub nsw i32 %conv196, %conv198
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb103, %sw.bb50, %sw.bb
  %workspace1.sroa.72.0 = phi i32 [ %sub206, %sw.default ], [ %sub154, %sw.bb103 ], [ %sub101, %sw.bb50 ], [ %sub48, %sw.bb ]
  %workspace1.sroa.62.0.in = phi i32 [ %add199, %sw.default ], [ %add147, %sw.bb103 ], [ %add94, %sw.bb50 ], [ %add41, %sw.bb ]
  %workspace1.sroa.52.0 = phi i32 [ %sub193, %sw.default ], [ %sub141, %sw.bb103 ], [ %sub88, %sw.bb50 ], [ %sub35, %sw.bb ]
  %workspace1.sroa.42.0.in = phi i32 [ %add186, %sw.default ], [ %add134, %sw.bb103 ], [ %add81, %sw.bb50 ], [ %add28, %sw.bb ]
  %workspace1.sroa.32.0 = phi i32 [ %sub180, %sw.default ], [ %sub128, %sw.bb103 ], [ %sub75, %sw.bb50 ], [ %sub22, %sw.bb ]
  %workspace1.sroa.22.0.in = phi i32 [ %add173, %sw.default ], [ %add121, %sw.bb103 ], [ %add68, %sw.bb50 ], [ %add15, %sw.bb ]
  %workspace1.sroa.12.0 = phi i32 [ %sub167, %sw.default ], [ %sub115, %sw.bb103 ], [ %sub62, %sw.bb50 ], [ %sub9, %sw.bb ]
  %workspace1.sroa.0.0.in = phi i32 [ %add160, %sw.default ], [ %add108, %sw.bb103 ], [ %add55, %sw.bb50 ], [ %add3, %sw.bb ]
  %workspace1.sroa.62.0 = add nsw i32 %workspace1.sroa.62.0.in, -256
  %workspace1.sroa.42.0 = add nsw i32 %workspace1.sroa.42.0.in, -256
  %workspace1.sroa.22.0 = add nsw i32 %workspace1.sroa.22.0.in, -256
  %workspace1.sroa.0.0 = add nsw i32 %workspace1.sroa.0.0.in, -256
  %add210 = add nsw i32 %workspace1.sroa.0.0, %workspace1.sroa.22.0
  %sub214 = sub nsw i32 %workspace1.sroa.0.0, %workspace1.sroa.22.0
  %sub218 = sub nsw i32 %workspace1.sroa.12.0, %workspace1.sroa.32.0
  %add222 = add nsw i32 %workspace1.sroa.12.0, %workspace1.sroa.32.0
  %add226 = add nsw i32 %workspace1.sroa.42.0, %workspace1.sroa.62.0
  %sub230 = sub nsw i32 %workspace1.sroa.42.0, %workspace1.sroa.62.0
  %sub234 = sub nsw i32 %workspace1.sroa.52.0, %workspace1.sroa.72.0
  %add238 = add nsw i32 %workspace1.sroa.52.0, %workspace1.sroa.72.0
  %add242 = add nsw i32 %add210, %add226
  %conv243 = trunc i32 %add242 to i16
  %65 = ptrtoint ptr %out.03 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv243, ptr %out.03, align 2
  %sub247 = sub nsw i32 %add210, %add226
  %conv248 = trunc i32 %sub247 to i16
  %arrayidx249 = getelementptr i16, ptr %out.03, i32 1
  %66 = ptrtoint ptr %arrayidx249 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv248, ptr %arrayidx249, align 2
  %sub252 = sub nsw i32 %sub214, %sub230
  %conv253 = trunc i32 %sub252 to i16
  %arrayidx254 = getelementptr i16, ptr %out.03, i32 2
  %67 = ptrtoint ptr %arrayidx254 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv253, ptr %arrayidx254, align 2
  %add257 = add nsw i32 %sub214, %sub230
  %conv258 = trunc i32 %add257 to i16
  %arrayidx259 = getelementptr i16, ptr %out.03, i32 3
  %68 = ptrtoint ptr %arrayidx259 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv258, ptr %arrayidx259, align 2
  %add262 = add nsw i32 %sub218, %sub234
  %conv263 = trunc i32 %add262 to i16
  %arrayidx264 = getelementptr i16, ptr %out.03, i32 4
  %69 = ptrtoint ptr %arrayidx264 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv263, ptr %arrayidx264, align 2
  %sub267 = sub nsw i32 %sub218, %sub234
  %conv268 = trunc i32 %sub267 to i16
  %arrayidx269 = getelementptr i16, ptr %out.03, i32 5
  %70 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv268, ptr %arrayidx269, align 2
  %sub272 = sub nsw i32 %add222, %add238
  %conv273 = trunc i32 %sub272 to i16
  %arrayidx274 = getelementptr i16, ptr %out.03, i32 6
  %71 = ptrtoint ptr %arrayidx274 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv273, ptr %arrayidx274, align 2
  %add277 = add nsw i32 %add222, %add238
  %conv278 = trunc i32 %add277 to i16
  %arrayidx279 = getelementptr i16, ptr %out.03, i32 7
  %72 = ptrtoint ptr %arrayidx279 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv278, ptr %arrayidx279, align 2
  %inc = add nuw nsw i32 %i.04, 1
  %add.ptr = getelementptr i8, ptr %tmp.01, i32 %stride
  %add.ptr280 = getelementptr i16, ptr %out.03, i32 8
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %sw.epilog.for.body284_crit_edge, label %sw.epilog.for.body_crit_edge

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

sw.epilog.for.body284_crit_edge:                  ; preds = %sw.epilog
  br label %for.body284

for.body284:                                      ; preds = %for.body284.for.body284_crit_edge, %sw.epilog.for.body284_crit_edge
  %i.16 = phi i32 [ %inc406, %for.body284.for.body284_crit_edge ], [ 0, %sw.epilog.for.body284_crit_edge ]
  %out.15 = phi ptr [ %incdec.ptr, %for.body284.for.body284_crit_edge ], [ %output_block, %sw.epilog.for.body284_crit_edge ]
  %73 = ptrtoint ptr %out.15 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %out.15, align 2
  %conv2868 = zext i16 %74 to i32
  %arrayidx287 = getelementptr i16, ptr %out.15, i32 8
  %75 = ptrtoint ptr %arrayidx287 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %arrayidx287, align 2
  %conv2889 = zext i16 %76 to i32
  %add289 = add nuw nsw i32 %conv2889, %conv2868
  %sub295 = sub nsw i32 %conv2868, %conv2889
  %arrayidx297 = getelementptr i16, ptr %out.15, i32 16
  %77 = ptrtoint ptr %arrayidx297 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %arrayidx297, align 2
  %conv29810 = zext i16 %78 to i32
  %arrayidx299 = getelementptr i16, ptr %out.15, i32 24
  %79 = ptrtoint ptr %arrayidx299 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %arrayidx299, align 2
  %conv30011 = zext i16 %80 to i32
  %add301 = add nuw nsw i32 %conv30011, %conv29810
  %sub307 = sub nsw i32 %conv29810, %conv30011
  %arrayidx309 = getelementptr i16, ptr %out.15, i32 32
  %81 = ptrtoint ptr %arrayidx309 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %arrayidx309, align 2
  %conv31012 = zext i16 %82 to i32
  %arrayidx311 = getelementptr i16, ptr %out.15, i32 40
  %83 = ptrtoint ptr %arrayidx311 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %arrayidx311, align 2
  %conv31213 = zext i16 %84 to i32
  %add313 = add nuw nsw i32 %conv31213, %conv31012
  %sub319 = sub nsw i32 %conv31012, %conv31213
  %arrayidx321 = getelementptr i16, ptr %out.15, i32 48
  %85 = ptrtoint ptr %arrayidx321 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %arrayidx321, align 2
  %conv32214 = zext i16 %86 to i32
  %arrayidx323 = getelementptr i16, ptr %out.15, i32 56
  %87 = ptrtoint ptr %arrayidx323 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %arrayidx323, align 2
  %conv32415 = zext i16 %88 to i32
  %add325 = add nuw nsw i32 %conv32415, %conv32214
  %sub331 = sub nsw i32 %conv32214, %conv32415
  %add335 = add nuw nsw i32 %add301, %add289
  %sub339 = sub nsw i32 %add289, %add301
  %sub343 = sub nsw i32 %sub295, %sub307
  %add347 = add nsw i32 %sub307, %sub295
  %add351 = add nuw nsw i32 %add325, %add313
  %sub355 = sub nsw i32 %add313, %add325
  %sub359 = sub nsw i32 %sub319, %sub331
  %add363 = add nsw i32 %sub331, %sub319
  %add367 = add nuw nsw i32 %add351, %add335
  %conv368 = trunc i32 %add367 to i16
  store i16 %conv368, ptr %out.15, align 2
  %sub372 = sub nsw i32 %add335, %add351
  %conv373 = trunc i32 %sub372 to i16
  store i16 %conv373, ptr %arrayidx287, align 2
  %sub377 = sub nsw i32 %sub339, %sub355
  %conv378 = trunc i32 %sub377 to i16
  store i16 %conv378, ptr %arrayidx297, align 2
  %add382 = add nsw i32 %sub355, %sub339
  %conv383 = trunc i32 %add382 to i16
  store i16 %conv383, ptr %arrayidx299, align 2
  %add387 = add nsw i32 %sub359, %sub343
  %conv388 = trunc i32 %add387 to i16
  store i16 %conv388, ptr %arrayidx309, align 2
  %sub392 = sub nsw i32 %sub343, %sub359
  %conv393 = trunc i32 %sub392 to i16
  store i16 %conv393, ptr %arrayidx311, align 2
  %sub397 = sub nsw i32 %add347, %add363
  %conv398 = trunc i32 %sub397 to i16
  store i16 %conv398, ptr %arrayidx321, align 2
  %add402 = add nsw i32 %add363, %add347
  %conv403 = trunc i32 %add402 to i16
  store i16 %conv403, ptr %arrayidx323, align 2
  %inc406 = add nuw nsw i32 %i.16, 1
  %incdec.ptr = getelementptr i16, ptr %out.15, i32 1
  %exitcond7.not = icmp eq i32 %inc406, 8
  br i1 %exitcond7.not, label %for.end407, label %for.body284.for.body284_crit_edge

for.body284.for.body284_crit_edge:                ; preds = %for.body284
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body284

for.end407:                                       ; preds = %for.body284
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fwht16(ptr nocapture noundef readonly %block, ptr nocapture noundef %output_block) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.03 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %out.02 = phi ptr [ %output_block, %entry ], [ %add.ptr117, %for.body.for.body_crit_edge ]
  %tmp.01 = phi ptr [ %block, %entry ], [ %add.ptr, %for.body.for.body_crit_edge ]
  %0 = ptrtoint ptr %tmp.01 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %tmp.01, align 2
  %conv7 = zext i16 %1 to i32
  %arrayidx1 = getelementptr i16, ptr %tmp.01, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx1, align 2
  %conv28 = zext i16 %3 to i32
  %add = add nuw nsw i32 %conv28, %conv7
  %sub = sub nsw i32 %conv7, %conv28
  %arrayidx9 = getelementptr i16, ptr %tmp.01, i32 2
  %4 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx9, align 2
  %conv109 = zext i16 %5 to i32
  %arrayidx11 = getelementptr i16, ptr %tmp.01, i32 3
  %6 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx11, align 2
  %conv1210 = zext i16 %7 to i32
  %add13 = add nuw nsw i32 %conv1210, %conv109
  %sub19 = sub nsw i32 %conv109, %conv1210
  %arrayidx21 = getelementptr i16, ptr %tmp.01, i32 4
  %8 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx21, align 2
  %conv2211 = zext i16 %9 to i32
  %arrayidx23 = getelementptr i16, ptr %tmp.01, i32 5
  %10 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx23, align 2
  %conv2412 = zext i16 %11 to i32
  %add25 = add nuw nsw i32 %conv2412, %conv2211
  %sub31 = sub nsw i32 %conv2211, %conv2412
  %arrayidx33 = getelementptr i16, ptr %tmp.01, i32 6
  %12 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx33, align 2
  %conv3413 = zext i16 %13 to i32
  %arrayidx35 = getelementptr i16, ptr %tmp.01, i32 7
  %14 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx35, align 2
  %conv3614 = zext i16 %15 to i32
  %add37 = add nuw nsw i32 %conv3614, %conv3413
  %sub43 = sub nsw i32 %conv3413, %conv3614
  %add47 = add nuw nsw i32 %add13, %add
  %sub51 = sub nsw i32 %add, %add13
  %sub55 = sub nsw i32 %sub, %sub19
  %add59 = add nsw i32 %sub19, %sub
  %add63 = add nuw nsw i32 %add37, %add25
  %sub67 = sub nsw i32 %add25, %add37
  %sub71 = sub nsw i32 %sub31, %sub43
  %add75 = add nsw i32 %sub43, %sub31
  %add79 = add nuw nsw i32 %add63, %add47
  %conv80 = trunc i32 %add79 to i16
  %16 = ptrtoint ptr %out.02 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv80, ptr %out.02, align 2
  %sub84 = sub nsw i32 %add47, %add63
  %conv85 = trunc i32 %sub84 to i16
  %arrayidx86 = getelementptr i16, ptr %out.02, i32 1
  %17 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv85, ptr %arrayidx86, align 2
  %sub89 = sub nsw i32 %sub51, %sub67
  %conv90 = trunc i32 %sub89 to i16
  %arrayidx91 = getelementptr i16, ptr %out.02, i32 2
  %18 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv90, ptr %arrayidx91, align 2
  %add94 = add nsw i32 %sub67, %sub51
  %conv95 = trunc i32 %add94 to i16
  %arrayidx96 = getelementptr i16, ptr %out.02, i32 3
  %19 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv95, ptr %arrayidx96, align 2
  %add99 = add nsw i32 %sub71, %sub55
  %conv100 = trunc i32 %add99 to i16
  %arrayidx101 = getelementptr i16, ptr %out.02, i32 4
  %20 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv100, ptr %arrayidx101, align 2
  %sub104 = sub nsw i32 %sub55, %sub71
  %conv105 = trunc i32 %sub104 to i16
  %arrayidx106 = getelementptr i16, ptr %out.02, i32 5
  %21 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv105, ptr %arrayidx106, align 2
  %sub109 = sub nsw i32 %add59, %add75
  %conv110 = trunc i32 %sub109 to i16
  %arrayidx111 = getelementptr i16, ptr %out.02, i32 6
  %22 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv110, ptr %arrayidx111, align 2
  %add114 = add nsw i32 %add75, %add59
  %conv115 = trunc i32 %add114 to i16
  %arrayidx116 = getelementptr i16, ptr %out.02, i32 7
  %23 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv115, ptr %arrayidx116, align 2
  %inc = add nuw nsw i32 %i.03, 1
  %add.ptr = getelementptr i16, ptr %tmp.01, i32 8
  %add.ptr117 = getelementptr i16, ptr %out.02, i32 8
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.body.for.body121_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.body121_crit_edge:                   ; preds = %for.body
  br label %for.body121

for.body121:                                      ; preds = %for.body121.for.body121_crit_edge, %for.body.for.body121_crit_edge
  %i.15 = phi i32 [ %inc243, %for.body121.for.body121_crit_edge ], [ 0, %for.body.for.body121_crit_edge ]
  %out.14 = phi ptr [ %incdec.ptr, %for.body121.for.body121_crit_edge ], [ %output_block, %for.body.for.body121_crit_edge ]
  %24 = ptrtoint ptr %out.14 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %out.14, align 2
  %conv12315 = zext i16 %25 to i32
  %arrayidx124 = getelementptr i16, ptr %out.14, i32 8
  %26 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx124, align 2
  %conv12516 = zext i16 %27 to i32
  %add126 = add nuw nsw i32 %conv12516, %conv12315
  %sub132 = sub nsw i32 %conv12315, %conv12516
  %arrayidx134 = getelementptr i16, ptr %out.14, i32 16
  %28 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx134, align 2
  %conv13517 = zext i16 %29 to i32
  %arrayidx136 = getelementptr i16, ptr %out.14, i32 24
  %30 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx136, align 2
  %conv13718 = zext i16 %31 to i32
  %add138 = add nuw nsw i32 %conv13718, %conv13517
  %sub144 = sub nsw i32 %conv13517, %conv13718
  %arrayidx146 = getelementptr i16, ptr %out.14, i32 32
  %32 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx146, align 2
  %conv14719 = zext i16 %33 to i32
  %arrayidx148 = getelementptr i16, ptr %out.14, i32 40
  %34 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx148, align 2
  %conv14920 = zext i16 %35 to i32
  %add150 = add nuw nsw i32 %conv14920, %conv14719
  %sub156 = sub nsw i32 %conv14719, %conv14920
  %arrayidx158 = getelementptr i16, ptr %out.14, i32 48
  %36 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx158, align 2
  %conv15921 = zext i16 %37 to i32
  %arrayidx160 = getelementptr i16, ptr %out.14, i32 56
  %38 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx160, align 2
  %conv16122 = zext i16 %39 to i32
  %add162 = add nuw nsw i32 %conv16122, %conv15921
  %sub168 = sub nsw i32 %conv15921, %conv16122
  %add172 = add nuw nsw i32 %add138, %add126
  %sub176 = sub nsw i32 %add126, %add138
  %sub180 = sub nsw i32 %sub132, %sub144
  %add184 = add nsw i32 %sub144, %sub132
  %add188 = add nuw nsw i32 %add162, %add150
  %sub192 = sub nsw i32 %add150, %add162
  %sub196 = sub nsw i32 %sub156, %sub168
  %add200 = add nsw i32 %sub168, %sub156
  %add204 = add nuw nsw i32 %add188, %add172
  %conv205 = trunc i32 %add204 to i16
  store i16 %conv205, ptr %out.14, align 2
  %sub209 = sub nsw i32 %add172, %add188
  %conv210 = trunc i32 %sub209 to i16
  store i16 %conv210, ptr %arrayidx124, align 2
  %sub214 = sub nsw i32 %sub176, %sub192
  %conv215 = trunc i32 %sub214 to i16
  store i16 %conv215, ptr %arrayidx134, align 2
  %add219 = add nsw i32 %sub192, %sub176
  %conv220 = trunc i32 %add219 to i16
  store i16 %conv220, ptr %arrayidx136, align 2
  %add224 = add nsw i32 %sub196, %sub180
  %conv225 = trunc i32 %add224 to i16
  store i16 %conv225, ptr %arrayidx146, align 2
  %sub229 = sub nsw i32 %sub180, %sub196
  %conv230 = trunc i32 %sub229 to i16
  store i16 %conv230, ptr %arrayidx148, align 2
  %sub234 = sub nsw i32 %add184, %add200
  %conv235 = trunc i32 %sub234 to i16
  store i16 %conv235, ptr %arrayidx158, align 2
  %add239 = add nsw i32 %add200, %add184
  %conv240 = trunc i32 %add239 to i16
  store i16 %conv240, ptr %arrayidx160, align 2
  %inc243 = add nuw nsw i32 %i.15, 1
  %incdec.ptr = getelementptr i16, ptr %out.14, i32 1
  %exitcond6.not = icmp eq i32 %inc243, 8
  br i1 %exitcond6.not, label %for.end244, label %for.body121.for.body121_crit_edge

for.body121.for.body121_crit_edge:                ; preds = %for.body121
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body121

for.end244:                                       ; preds = %for.body121
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ifwht(ptr nocapture noundef readonly %block, ptr nocapture noundef %output_block, i32 noundef %intra) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0450 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %out.0449 = phi ptr [ %output_block, %entry ], [ %add.ptr117, %for.body.for.body_crit_edge ]
  %tmp.0448 = phi ptr [ %block, %entry ], [ %add.ptr, %for.body.for.body_crit_edge ]
  %0 = ptrtoint ptr %tmp.0448 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %tmp.0448, align 2
  %conv460 = zext i16 %1 to i32
  %arrayidx1 = getelementptr i16, ptr %tmp.0448, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx1, align 2
  %conv2461 = zext i16 %3 to i32
  %add = add nuw nsw i32 %conv2461, %conv460
  %sub = sub nsw i32 %conv460, %conv2461
  %arrayidx9 = getelementptr i16, ptr %tmp.0448, i32 2
  %4 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx9, align 2
  %conv10462 = zext i16 %5 to i32
  %arrayidx11 = getelementptr i16, ptr %tmp.0448, i32 3
  %6 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx11, align 2
  %conv12463 = zext i16 %7 to i32
  %add13 = add nuw nsw i32 %conv12463, %conv10462
  %sub19 = sub nsw i32 %conv10462, %conv12463
  %arrayidx21 = getelementptr i16, ptr %tmp.0448, i32 4
  %8 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx21, align 2
  %conv22464 = zext i16 %9 to i32
  %arrayidx23 = getelementptr i16, ptr %tmp.0448, i32 5
  %10 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx23, align 2
  %conv24465 = zext i16 %11 to i32
  %add25 = add nuw nsw i32 %conv24465, %conv22464
  %sub31 = sub nsw i32 %conv22464, %conv24465
  %arrayidx33 = getelementptr i16, ptr %tmp.0448, i32 6
  %12 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx33, align 2
  %conv34466 = zext i16 %13 to i32
  %arrayidx35 = getelementptr i16, ptr %tmp.0448, i32 7
  %14 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx35, align 2
  %conv36467 = zext i16 %15 to i32
  %add37 = add nuw nsw i32 %conv36467, %conv34466
  %sub43 = sub nsw i32 %conv34466, %conv36467
  %add47 = add nuw nsw i32 %add13, %add
  %sub51 = sub nsw i32 %add, %add13
  %sub55 = sub nsw i32 %sub, %sub19
  %add59 = add nsw i32 %sub19, %sub
  %add63 = add nuw nsw i32 %add37, %add25
  %sub67 = sub nsw i32 %add25, %add37
  %sub71 = sub nsw i32 %sub31, %sub43
  %add75 = add nsw i32 %sub43, %sub31
  %add79 = add nuw nsw i32 %add63, %add47
  %conv80 = trunc i32 %add79 to i16
  %16 = ptrtoint ptr %out.0449 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv80, ptr %out.0449, align 2
  %sub84 = sub nsw i32 %add47, %add63
  %conv85 = trunc i32 %sub84 to i16
  %arrayidx86 = getelementptr i16, ptr %out.0449, i32 1
  %17 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv85, ptr %arrayidx86, align 2
  %sub89 = sub nsw i32 %sub51, %sub67
  %conv90 = trunc i32 %sub89 to i16
  %arrayidx91 = getelementptr i16, ptr %out.0449, i32 2
  %18 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv90, ptr %arrayidx91, align 2
  %add94 = add nsw i32 %sub67, %sub51
  %conv95 = trunc i32 %add94 to i16
  %arrayidx96 = getelementptr i16, ptr %out.0449, i32 3
  %19 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv95, ptr %arrayidx96, align 2
  %add99 = add nsw i32 %sub71, %sub55
  %conv100 = trunc i32 %add99 to i16
  %arrayidx101 = getelementptr i16, ptr %out.0449, i32 4
  %20 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv100, ptr %arrayidx101, align 2
  %sub104 = sub nsw i32 %sub55, %sub71
  %conv105 = trunc i32 %sub104 to i16
  %arrayidx106 = getelementptr i16, ptr %out.0449, i32 5
  %21 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv105, ptr %arrayidx106, align 2
  %sub109 = sub nsw i32 %add59, %add75
  %conv110 = trunc i32 %sub109 to i16
  %arrayidx111 = getelementptr i16, ptr %out.0449, i32 6
  %22 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv110, ptr %arrayidx111, align 2
  %add114 = add nsw i32 %add75, %add59
  %conv115 = trunc i32 %add114 to i16
  %arrayidx116 = getelementptr i16, ptr %out.0449, i32 7
  %23 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv115, ptr %arrayidx116, align 2
  %inc = add nuw nsw i32 %i.0450, 1
  %add.ptr = getelementptr i16, ptr %tmp.0448, i32 8
  %add.ptr117 = getelementptr i16, ptr %out.0449, i32 8
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.body121.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body121.preheader:                            ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %intra)
  %tobool.not = icmp eq i32 %intra, 0
  br label %for.body121

for.body121:                                      ; preds = %for.inc311.for.body121_crit_edge, %for.body121.preheader
  %i.1455 = phi i32 [ %inc312, %for.inc311.for.body121_crit_edge ], [ 0, %for.body121.preheader ]
  %out.1453 = phi ptr [ %incdec.ptr, %for.inc311.for.body121_crit_edge ], [ %output_block, %for.body121.preheader ]
  %24 = ptrtoint ptr %out.1453 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %out.1453, align 2
  %conv123468 = zext i16 %25 to i32
  %arrayidx124 = getelementptr i16, ptr %out.1453, i32 8
  %26 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx124, align 2
  %conv125469 = zext i16 %27 to i32
  %add126 = add nuw nsw i32 %conv125469, %conv123468
  %sub132 = sub nsw i32 %conv123468, %conv125469
  %arrayidx134 = getelementptr i16, ptr %out.1453, i32 16
  %28 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx134, align 2
  %conv135470 = zext i16 %29 to i32
  %arrayidx136 = getelementptr i16, ptr %out.1453, i32 24
  %30 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx136, align 2
  %conv137471 = zext i16 %31 to i32
  %add138 = add nuw nsw i32 %conv137471, %conv135470
  %sub144 = sub nsw i32 %conv135470, %conv137471
  %arrayidx146 = getelementptr i16, ptr %out.1453, i32 32
  %32 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx146, align 2
  %conv147472 = zext i16 %33 to i32
  %arrayidx148 = getelementptr i16, ptr %out.1453, i32 40
  %34 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx148, align 2
  %conv149473 = zext i16 %35 to i32
  %add150 = add nuw nsw i32 %conv149473, %conv147472
  %sub156 = sub nsw i32 %conv147472, %conv149473
  %arrayidx158 = getelementptr i16, ptr %out.1453, i32 48
  %36 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx158, align 2
  %conv159474 = zext i16 %37 to i32
  %arrayidx160 = getelementptr i16, ptr %out.1453, i32 56
  %38 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx160, align 2
  %conv161475 = zext i16 %39 to i32
  %add162 = add nuw nsw i32 %conv161475, %conv159474
  %sub168 = sub nsw i32 %conv159474, %conv161475
  %add172 = add nuw nsw i32 %add138, %add126
  %sub176 = sub nsw i32 %add126, %add138
  %sub180 = sub nsw i32 %sub132, %sub144
  %add184 = add nsw i32 %sub144, %sub132
  %add188 = add nuw nsw i32 %add162, %add150
  %sub192 = sub nsw i32 %add150, %add162
  %sub196 = sub nsw i32 %sub156, %sub168
  %add200 = add nsw i32 %sub168, %sub156
  %add205 = add nuw nsw i32 %add188, %add172
  %conv206 = trunc i32 %add205 to i16
  %sub210 = sub nsw i32 %add172, %add188
  %conv211 = trunc i32 %sub210 to i16
  %sub215 = sub nsw i32 %sub176, %sub192
  %conv216 = trunc i32 %sub215 to i16
  %add220 = add nsw i32 %sub192, %sub176
  %conv221 = trunc i32 %add220 to i16
  %add225 = add nsw i32 %sub196, %sub180
  %conv226 = trunc i32 %add225 to i16
  %sub230 = sub nsw i32 %sub180, %sub196
  %conv231 = trunc i32 %sub230 to i16
  %sub235 = sub nsw i32 %add184, %add200
  %conv236 = trunc i32 %sub235 to i16
  %add240 = add nsw i32 %add200, %add184
  %conv241 = trunc i32 %add240 to i16
  %40 = ashr i16 %conv206, 6
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %for.body121
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %out.1453 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %out.1453, align 2
  %42 = ashr i16 %conv211, 6
  %43 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %arrayidx124, align 2
  %44 = ashr i16 %conv216, 6
  %45 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %arrayidx134, align 2
  %46 = ashr i16 %conv221, 6
  %47 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %arrayidx136, align 2
  %48 = ashr i16 %conv226, 6
  %49 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %arrayidx146, align 2
  %50 = ashr i16 %conv231, 6
  %51 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %arrayidx148, align 2
  %52 = ashr i16 %conv236, 6
  %53 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %arrayidx158, align 2
  %54 = ashr i16 %conv241, 6
  br label %for.inc311

if.else:                                          ; preds = %for.body121
  call void @__sanitizer_cov_trace_pc() #10
  %narrow = add nsw i16 %40, 128
  %55 = ptrtoint ptr %out.1453 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %narrow, ptr %out.1453, align 2
  %56 = ashr i16 %conv211, 6
  %narrow.1 = add nsw i16 %56, 128
  %57 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %narrow.1, ptr %arrayidx124, align 2
  %58 = ashr i16 %conv216, 6
  %narrow.2 = add nsw i16 %58, 128
  %59 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %narrow.2, ptr %arrayidx134, align 2
  %60 = ashr i16 %conv221, 6
  %narrow.3 = add nsw i16 %60, 128
  %61 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %narrow.3, ptr %arrayidx136, align 2
  %62 = ashr i16 %conv226, 6
  %narrow.4 = add nsw i16 %62, 128
  %63 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %narrow.4, ptr %arrayidx146, align 2
  %64 = ashr i16 %conv231, 6
  %narrow.5 = add nsw i16 %64, 128
  %65 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %narrow.5, ptr %arrayidx148, align 2
  %66 = ashr i16 %conv236, 6
  %narrow.6 = add nsw i16 %66, 128
  %67 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %narrow.6, ptr %arrayidx158, align 2
  %68 = ashr i16 %conv241, 6
  %narrow.7 = add nsw i16 %68, 128
  br label %for.inc311

for.inc311:                                       ; preds = %if.else, %if.then
  %storemerge = phi i16 [ %narrow.7, %if.else ], [ %54, %if.then ]
  %69 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %storemerge, ptr %arrayidx160, align 2
  %inc312 = add nuw nsw i32 %i.1455, 1
  %incdec.ptr = getelementptr i16, ptr %out.1453, i32 1
  %exitcond459.not = icmp eq i32 %inc312, 8
  br i1 %exitcond459.not, label %for.end313, label %for.inc311.for.body121_crit_edge

for.inc311.for.body121_crit_edge:                 ; preds = %for.inc311
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body121

for.end313:                                       ; preds = %for.inc311
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @add_deltas(ptr nocapture noundef %deltas, ptr nocapture noundef readonly %ref, i32 noundef %stride, i32 noundef %ref_step) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mul.neg = mul i32 %ref_step, -8
  %sub = add i32 %mul.neg, %stride
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %if.end13.7.for.cond1.preheader_crit_edge, %entry
  %k.034 = phi i32 [ 0, %entry ], [ %inc16, %if.end13.7.for.cond1.preheader_crit_edge ]
  %deltas.addr.033 = phi ptr [ %deltas, %entry ], [ %incdec.ptr.7, %if.end13.7.for.cond1.preheader_crit_edge ]
  %ref.addr.032 = phi ptr [ %ref, %entry ], [ %add.ptr14, %if.end13.7.for.cond1.preheader_crit_edge ]
  %0 = ptrtoint ptr %ref.addr.032 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ref.addr.032, align 1
  %conv = zext i8 %1 to i16
  %2 = ptrtoint ptr %deltas.addr.033 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %deltas.addr.033, align 2
  %add = add i16 %3, %conv
  store i16 %add, ptr %deltas.addr.033, align 2
  %add.ptr = getelementptr i8, ptr %ref.addr.032, i32 %ref_step
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add)
  %cmp7 = icmp slt i16 %add, 0
  br i1 %cmp7, label %for.cond1.preheader.if.end13.sink.split_crit_edge, label %if.else

for.cond1.preheader.if.end13.sink.split_crit_edge: ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.sink.split

if.else:                                          ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %add)
  %cmp10 = icmp ugt i16 %add, 255
  br i1 %cmp10, label %if.else.if.end13.sink.split_crit_edge, label %if.else.if.end13_crit_edge

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.else.if.end13.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.sink.split

if.end13.sink.split:                              ; preds = %if.else.if.end13.sink.split_crit_edge, %for.cond1.preheader.if.end13.sink.split_crit_edge
  %.sink = phi i16 [ 0, %for.cond1.preheader.if.end13.sink.split_crit_edge ], [ 255, %if.else.if.end13.sink.split_crit_edge ]
  %4 = ptrtoint ptr %deltas.addr.033 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %.sink, ptr %deltas.addr.033, align 2
  br label %if.end13

if.end13:                                         ; preds = %if.end13.sink.split, %if.else.if.end13_crit_edge
  %incdec.ptr = getelementptr i16, ptr %deltas.addr.033, i32 1
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %add.ptr, align 1
  %conv.1 = zext i8 %6 to i16
  %7 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %incdec.ptr, align 2
  %add.1 = add i16 %8, %conv.1
  store i16 %add.1, ptr %incdec.ptr, align 2
  %add.ptr.1 = getelementptr i8, ptr %add.ptr, i32 %ref_step
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add.1)
  %cmp7.1 = icmp slt i16 %add.1, 0
  br i1 %cmp7.1, label %if.end13.if.end13.1.sink.split_crit_edge, label %if.else.1

if.end13.if.end13.1.sink.split_crit_edge:         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.1.sink.split

if.else.1:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %add.1)
  %cmp10.1 = icmp ugt i16 %add.1, 255
  br i1 %cmp10.1, label %if.else.1.if.end13.1.sink.split_crit_edge, label %if.else.1.if.end13.1_crit_edge

if.else.1.if.end13.1_crit_edge:                   ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.1

if.else.1.if.end13.1.sink.split_crit_edge:        ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.1.sink.split

if.end13.1.sink.split:                            ; preds = %if.else.1.if.end13.1.sink.split_crit_edge, %if.end13.if.end13.1.sink.split_crit_edge
  %.sink35 = phi i16 [ 255, %if.else.1.if.end13.1.sink.split_crit_edge ], [ 0, %if.end13.if.end13.1.sink.split_crit_edge ]
  %9 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %.sink35, ptr %incdec.ptr, align 2
  br label %if.end13.1

if.end13.1:                                       ; preds = %if.end13.1.sink.split, %if.else.1.if.end13.1_crit_edge
  %incdec.ptr.1 = getelementptr i16, ptr %deltas.addr.033, i32 2
  %10 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr.1, align 1
  %conv.2 = zext i8 %11 to i16
  %12 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %incdec.ptr.1, align 2
  %add.2 = add i16 %13, %conv.2
  store i16 %add.2, ptr %incdec.ptr.1, align 2
  %add.ptr.2 = getelementptr i8, ptr %add.ptr.1, i32 %ref_step
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add.2)
  %cmp7.2 = icmp slt i16 %add.2, 0
  br i1 %cmp7.2, label %if.end13.1.if.end13.2.sink.split_crit_edge, label %if.else.2

if.end13.1.if.end13.2.sink.split_crit_edge:       ; preds = %if.end13.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.2.sink.split

if.else.2:                                        ; preds = %if.end13.1
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %add.2)
  %cmp10.2 = icmp ugt i16 %add.2, 255
  br i1 %cmp10.2, label %if.else.2.if.end13.2.sink.split_crit_edge, label %if.else.2.if.end13.2_crit_edge

if.else.2.if.end13.2_crit_edge:                   ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.2

if.else.2.if.end13.2.sink.split_crit_edge:        ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.2.sink.split

if.end13.2.sink.split:                            ; preds = %if.else.2.if.end13.2.sink.split_crit_edge, %if.end13.1.if.end13.2.sink.split_crit_edge
  %.sink36 = phi i16 [ 255, %if.else.2.if.end13.2.sink.split_crit_edge ], [ 0, %if.end13.1.if.end13.2.sink.split_crit_edge ]
  %14 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %.sink36, ptr %incdec.ptr.1, align 2
  br label %if.end13.2

if.end13.2:                                       ; preds = %if.end13.2.sink.split, %if.else.2.if.end13.2_crit_edge
  %incdec.ptr.2 = getelementptr i16, ptr %deltas.addr.033, i32 3
  %15 = ptrtoint ptr %add.ptr.2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %add.ptr.2, align 1
  %conv.3 = zext i8 %16 to i16
  %17 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %incdec.ptr.2, align 2
  %add.3 = add i16 %18, %conv.3
  store i16 %add.3, ptr %incdec.ptr.2, align 2
  %add.ptr.3 = getelementptr i8, ptr %add.ptr.2, i32 %ref_step
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add.3)
  %cmp7.3 = icmp slt i16 %add.3, 0
  br i1 %cmp7.3, label %if.end13.2.if.end13.3.sink.split_crit_edge, label %if.else.3

if.end13.2.if.end13.3.sink.split_crit_edge:       ; preds = %if.end13.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.3.sink.split

if.else.3:                                        ; preds = %if.end13.2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %add.3)
  %cmp10.3 = icmp ugt i16 %add.3, 255
  br i1 %cmp10.3, label %if.else.3.if.end13.3.sink.split_crit_edge, label %if.else.3.if.end13.3_crit_edge

if.else.3.if.end13.3_crit_edge:                   ; preds = %if.else.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.3

if.else.3.if.end13.3.sink.split_crit_edge:        ; preds = %if.else.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.3.sink.split

if.end13.3.sink.split:                            ; preds = %if.else.3.if.end13.3.sink.split_crit_edge, %if.end13.2.if.end13.3.sink.split_crit_edge
  %.sink37 = phi i16 [ 255, %if.else.3.if.end13.3.sink.split_crit_edge ], [ 0, %if.end13.2.if.end13.3.sink.split_crit_edge ]
  %19 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %.sink37, ptr %incdec.ptr.2, align 2
  br label %if.end13.3

if.end13.3:                                       ; preds = %if.end13.3.sink.split, %if.else.3.if.end13.3_crit_edge
  %incdec.ptr.3 = getelementptr i16, ptr %deltas.addr.033, i32 4
  %20 = ptrtoint ptr %add.ptr.3 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %add.ptr.3, align 1
  %conv.4 = zext i8 %21 to i16
  %22 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %incdec.ptr.3, align 2
  %add.4 = add i16 %23, %conv.4
  store i16 %add.4, ptr %incdec.ptr.3, align 2
  %add.ptr.4 = getelementptr i8, ptr %add.ptr.3, i32 %ref_step
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add.4)
  %cmp7.4 = icmp slt i16 %add.4, 0
  br i1 %cmp7.4, label %if.end13.3.if.end13.4.sink.split_crit_edge, label %if.else.4

if.end13.3.if.end13.4.sink.split_crit_edge:       ; preds = %if.end13.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.4.sink.split

if.else.4:                                        ; preds = %if.end13.3
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %add.4)
  %cmp10.4 = icmp ugt i16 %add.4, 255
  br i1 %cmp10.4, label %if.else.4.if.end13.4.sink.split_crit_edge, label %if.else.4.if.end13.4_crit_edge

if.else.4.if.end13.4_crit_edge:                   ; preds = %if.else.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.4

if.else.4.if.end13.4.sink.split_crit_edge:        ; preds = %if.else.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.4.sink.split

if.end13.4.sink.split:                            ; preds = %if.else.4.if.end13.4.sink.split_crit_edge, %if.end13.3.if.end13.4.sink.split_crit_edge
  %.sink38 = phi i16 [ 255, %if.else.4.if.end13.4.sink.split_crit_edge ], [ 0, %if.end13.3.if.end13.4.sink.split_crit_edge ]
  %24 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %.sink38, ptr %incdec.ptr.3, align 2
  br label %if.end13.4

if.end13.4:                                       ; preds = %if.end13.4.sink.split, %if.else.4.if.end13.4_crit_edge
  %incdec.ptr.4 = getelementptr i16, ptr %deltas.addr.033, i32 5
  %25 = ptrtoint ptr %add.ptr.4 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %add.ptr.4, align 1
  %conv.5 = zext i8 %26 to i16
  %27 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %incdec.ptr.4, align 2
  %add.5 = add i16 %28, %conv.5
  store i16 %add.5, ptr %incdec.ptr.4, align 2
  %add.ptr.5 = getelementptr i8, ptr %add.ptr.4, i32 %ref_step
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add.5)
  %cmp7.5 = icmp slt i16 %add.5, 0
  br i1 %cmp7.5, label %if.end13.4.if.end13.5.sink.split_crit_edge, label %if.else.5

if.end13.4.if.end13.5.sink.split_crit_edge:       ; preds = %if.end13.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.5.sink.split

if.else.5:                                        ; preds = %if.end13.4
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %add.5)
  %cmp10.5 = icmp ugt i16 %add.5, 255
  br i1 %cmp10.5, label %if.else.5.if.end13.5.sink.split_crit_edge, label %if.else.5.if.end13.5_crit_edge

if.else.5.if.end13.5_crit_edge:                   ; preds = %if.else.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.5

if.else.5.if.end13.5.sink.split_crit_edge:        ; preds = %if.else.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.5.sink.split

if.end13.5.sink.split:                            ; preds = %if.else.5.if.end13.5.sink.split_crit_edge, %if.end13.4.if.end13.5.sink.split_crit_edge
  %.sink39 = phi i16 [ 255, %if.else.5.if.end13.5.sink.split_crit_edge ], [ 0, %if.end13.4.if.end13.5.sink.split_crit_edge ]
  %29 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %.sink39, ptr %incdec.ptr.4, align 2
  br label %if.end13.5

if.end13.5:                                       ; preds = %if.end13.5.sink.split, %if.else.5.if.end13.5_crit_edge
  %incdec.ptr.5 = getelementptr i16, ptr %deltas.addr.033, i32 6
  %30 = ptrtoint ptr %add.ptr.5 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %add.ptr.5, align 1
  %conv.6 = zext i8 %31 to i16
  %32 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %incdec.ptr.5, align 2
  %add.6 = add i16 %33, %conv.6
  store i16 %add.6, ptr %incdec.ptr.5, align 2
  %add.ptr.6 = getelementptr i8, ptr %add.ptr.5, i32 %ref_step
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add.6)
  %cmp7.6 = icmp slt i16 %add.6, 0
  br i1 %cmp7.6, label %if.end13.5.if.end13.6.sink.split_crit_edge, label %if.else.6

if.end13.5.if.end13.6.sink.split_crit_edge:       ; preds = %if.end13.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.6.sink.split

if.else.6:                                        ; preds = %if.end13.5
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %add.6)
  %cmp10.6 = icmp ugt i16 %add.6, 255
  br i1 %cmp10.6, label %if.else.6.if.end13.6.sink.split_crit_edge, label %if.else.6.if.end13.6_crit_edge

if.else.6.if.end13.6_crit_edge:                   ; preds = %if.else.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.6

if.else.6.if.end13.6.sink.split_crit_edge:        ; preds = %if.else.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.6.sink.split

if.end13.6.sink.split:                            ; preds = %if.else.6.if.end13.6.sink.split_crit_edge, %if.end13.5.if.end13.6.sink.split_crit_edge
  %.sink40 = phi i16 [ 255, %if.else.6.if.end13.6.sink.split_crit_edge ], [ 0, %if.end13.5.if.end13.6.sink.split_crit_edge ]
  %34 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %.sink40, ptr %incdec.ptr.5, align 2
  br label %if.end13.6

if.end13.6:                                       ; preds = %if.end13.6.sink.split, %if.else.6.if.end13.6_crit_edge
  %incdec.ptr.6 = getelementptr i16, ptr %deltas.addr.033, i32 7
  %35 = ptrtoint ptr %add.ptr.6 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %add.ptr.6, align 1
  %conv.7 = zext i8 %36 to i16
  %37 = ptrtoint ptr %incdec.ptr.6 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %incdec.ptr.6, align 2
  %add.7 = add i16 %38, %conv.7
  store i16 %add.7, ptr %incdec.ptr.6, align 2
  %add.ptr.7 = getelementptr i8, ptr %add.ptr.6, i32 %ref_step
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add.7)
  %cmp7.7 = icmp slt i16 %add.7, 0
  br i1 %cmp7.7, label %if.end13.6.if.end13.7.sink.split_crit_edge, label %if.else.7

if.end13.6.if.end13.7.sink.split_crit_edge:       ; preds = %if.end13.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.7.sink.split

if.else.7:                                        ; preds = %if.end13.6
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %add.7)
  %cmp10.7 = icmp ugt i16 %add.7, 255
  br i1 %cmp10.7, label %if.else.7.if.end13.7.sink.split_crit_edge, label %if.else.7.if.end13.7_crit_edge

if.else.7.if.end13.7_crit_edge:                   ; preds = %if.else.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.7

if.else.7.if.end13.7.sink.split_crit_edge:        ; preds = %if.else.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.7.sink.split

if.end13.7.sink.split:                            ; preds = %if.else.7.if.end13.7.sink.split_crit_edge, %if.end13.6.if.end13.7.sink.split_crit_edge
  %.sink41 = phi i16 [ 255, %if.else.7.if.end13.7.sink.split_crit_edge ], [ 0, %if.end13.6.if.end13.7.sink.split_crit_edge ]
  %39 = ptrtoint ptr %incdec.ptr.6 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %.sink41, ptr %incdec.ptr.6, align 2
  br label %if.end13.7

if.end13.7:                                       ; preds = %if.end13.7.sink.split, %if.else.7.if.end13.7_crit_edge
  %incdec.ptr.7 = getelementptr i16, ptr %deltas.addr.033, i32 8
  %add.ptr14 = getelementptr i8, ptr %add.ptr.7, i32 %sub
  %inc16 = add nuw nsw i32 %k.034, 1
  %exitcond.not = icmp eq i32 %inc16, 8
  br i1 %exitcond.not, label %for.end17, label %if.end13.7.for.cond1.preheader_crit_edge

if.end13.7.for.cond1.preheader_crit_edge:         ; preds = %if.end13.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond1.preheader

for.end17:                                        ; preds = %if.end13.7
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rlc(ptr nocapture noundef readonly %in, ptr nocapture noundef writeonly %output, i32 noundef %blocktype) unnamed_addr #3 align 64 {
entry:
  %block = alloca [64 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %block) #8
  %0 = ptrtoint ptr %in to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %in, align 2
  %2 = ptrtoint ptr %block to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %block, align 2
  %incdec.ptr = getelementptr inbounds i16, ptr %block, i32 1
  %arrayidx.1 = getelementptr i16, ptr %in, i32 1
  %3 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx.1, align 2
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %incdec.ptr, align 2
  %incdec.ptr.1 = getelementptr inbounds i16, ptr %block, i32 2
  %arrayidx.2 = getelementptr i16, ptr %in, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.2, align 2
  %8 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %incdec.ptr.1, align 2
  %incdec.ptr.2 = getelementptr inbounds i16, ptr %block, i32 3
  %arrayidx.3 = getelementptr i16, ptr %in, i32 3
  %9 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx.3, align 2
  %11 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %incdec.ptr.2, align 2
  %incdec.ptr.3 = getelementptr inbounds i16, ptr %block, i32 4
  %arrayidx.4 = getelementptr i16, ptr %in, i32 4
  %12 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.4, align 2
  %14 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %incdec.ptr.3, align 2
  %incdec.ptr.4 = getelementptr inbounds i16, ptr %block, i32 5
  %arrayidx.5 = getelementptr i16, ptr %in, i32 5
  %15 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx.5, align 2
  %17 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %incdec.ptr.4, align 2
  %incdec.ptr.5 = getelementptr inbounds i16, ptr %block, i32 6
  %arrayidx.6 = getelementptr i16, ptr %in, i32 6
  %18 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.6, align 2
  %20 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %incdec.ptr.5, align 2
  %incdec.ptr.6 = getelementptr inbounds i16, ptr %block, i32 7
  %arrayidx.7 = getelementptr i16, ptr %in, i32 7
  %21 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx.7, align 2
  %23 = ptrtoint ptr %incdec.ptr.6 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %incdec.ptr.6, align 2
  %incdec.ptr.7 = getelementptr inbounds i16, ptr %block, i32 8
  %arrayidx.187 = getelementptr i16, ptr %in, i32 8
  %24 = ptrtoint ptr %arrayidx.187 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx.187, align 2
  %26 = ptrtoint ptr %incdec.ptr.7 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %incdec.ptr.7, align 2
  %incdec.ptr.188 = getelementptr inbounds i16, ptr %block, i32 9
  %arrayidx.1.1 = getelementptr i16, ptr %in, i32 9
  %27 = ptrtoint ptr %arrayidx.1.1 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx.1.1, align 2
  %29 = ptrtoint ptr %incdec.ptr.188 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %incdec.ptr.188, align 2
  %incdec.ptr.1.1 = getelementptr inbounds i16, ptr %block, i32 10
  %arrayidx.2.1 = getelementptr i16, ptr %in, i32 10
  %30 = ptrtoint ptr %arrayidx.2.1 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx.2.1, align 2
  %32 = ptrtoint ptr %incdec.ptr.1.1 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %incdec.ptr.1.1, align 2
  %incdec.ptr.2.1 = getelementptr inbounds i16, ptr %block, i32 11
  %arrayidx.3.1 = getelementptr i16, ptr %in, i32 11
  %33 = ptrtoint ptr %arrayidx.3.1 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx.3.1, align 2
  %35 = ptrtoint ptr %incdec.ptr.2.1 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %incdec.ptr.2.1, align 2
  %incdec.ptr.3.1 = getelementptr inbounds i16, ptr %block, i32 12
  %arrayidx.4.1 = getelementptr i16, ptr %in, i32 12
  %36 = ptrtoint ptr %arrayidx.4.1 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx.4.1, align 2
  %38 = ptrtoint ptr %incdec.ptr.3.1 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %incdec.ptr.3.1, align 2
  %incdec.ptr.4.1 = getelementptr inbounds i16, ptr %block, i32 13
  %arrayidx.5.1 = getelementptr i16, ptr %in, i32 13
  %39 = ptrtoint ptr %arrayidx.5.1 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx.5.1, align 2
  %41 = ptrtoint ptr %incdec.ptr.4.1 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %incdec.ptr.4.1, align 2
  %incdec.ptr.5.1 = getelementptr inbounds i16, ptr %block, i32 14
  %arrayidx.6.1 = getelementptr i16, ptr %in, i32 14
  %42 = ptrtoint ptr %arrayidx.6.1 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx.6.1, align 2
  %44 = ptrtoint ptr %incdec.ptr.5.1 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %incdec.ptr.5.1, align 2
  %incdec.ptr.6.1 = getelementptr inbounds i16, ptr %block, i32 15
  %arrayidx.7.1 = getelementptr i16, ptr %in, i32 15
  %45 = ptrtoint ptr %arrayidx.7.1 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx.7.1, align 2
  %47 = ptrtoint ptr %incdec.ptr.6.1 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %incdec.ptr.6.1, align 2
  %incdec.ptr.7.1 = getelementptr inbounds i16, ptr %block, i32 16
  %arrayidx.289 = getelementptr i16, ptr %in, i32 16
  %48 = ptrtoint ptr %arrayidx.289 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx.289, align 2
  %50 = ptrtoint ptr %incdec.ptr.7.1 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %incdec.ptr.7.1, align 2
  %incdec.ptr.290 = getelementptr inbounds i16, ptr %block, i32 17
  %arrayidx.1.2 = getelementptr i16, ptr %in, i32 17
  %51 = ptrtoint ptr %arrayidx.1.2 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx.1.2, align 2
  %53 = ptrtoint ptr %incdec.ptr.290 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %incdec.ptr.290, align 2
  %incdec.ptr.1.2 = getelementptr inbounds i16, ptr %block, i32 18
  %arrayidx.2.2 = getelementptr i16, ptr %in, i32 18
  %54 = ptrtoint ptr %arrayidx.2.2 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx.2.2, align 2
  %56 = ptrtoint ptr %incdec.ptr.1.2 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %incdec.ptr.1.2, align 2
  %incdec.ptr.2.2 = getelementptr inbounds i16, ptr %block, i32 19
  %arrayidx.3.2 = getelementptr i16, ptr %in, i32 19
  %57 = ptrtoint ptr %arrayidx.3.2 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx.3.2, align 2
  %59 = ptrtoint ptr %incdec.ptr.2.2 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %incdec.ptr.2.2, align 2
  %incdec.ptr.3.2 = getelementptr inbounds i16, ptr %block, i32 20
  %arrayidx.4.2 = getelementptr i16, ptr %in, i32 20
  %60 = ptrtoint ptr %arrayidx.4.2 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx.4.2, align 2
  %62 = ptrtoint ptr %incdec.ptr.3.2 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %incdec.ptr.3.2, align 2
  %incdec.ptr.4.2 = getelementptr inbounds i16, ptr %block, i32 21
  %arrayidx.5.2 = getelementptr i16, ptr %in, i32 21
  %63 = ptrtoint ptr %arrayidx.5.2 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %arrayidx.5.2, align 2
  %65 = ptrtoint ptr %incdec.ptr.4.2 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %incdec.ptr.4.2, align 2
  %incdec.ptr.5.2 = getelementptr inbounds i16, ptr %block, i32 22
  %arrayidx.6.2 = getelementptr i16, ptr %in, i32 22
  %66 = ptrtoint ptr %arrayidx.6.2 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx.6.2, align 2
  %68 = ptrtoint ptr %incdec.ptr.5.2 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %incdec.ptr.5.2, align 2
  %incdec.ptr.6.2 = getelementptr inbounds i16, ptr %block, i32 23
  %arrayidx.7.2 = getelementptr i16, ptr %in, i32 23
  %69 = ptrtoint ptr %arrayidx.7.2 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %arrayidx.7.2, align 2
  %71 = ptrtoint ptr %incdec.ptr.6.2 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %incdec.ptr.6.2, align 2
  %incdec.ptr.7.2 = getelementptr inbounds i16, ptr %block, i32 24
  %arrayidx.391 = getelementptr i16, ptr %in, i32 24
  %72 = ptrtoint ptr %arrayidx.391 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %arrayidx.391, align 2
  %74 = ptrtoint ptr %incdec.ptr.7.2 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %incdec.ptr.7.2, align 2
  %incdec.ptr.392 = getelementptr inbounds i16, ptr %block, i32 25
  %arrayidx.1.3 = getelementptr i16, ptr %in, i32 25
  %75 = ptrtoint ptr %arrayidx.1.3 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %arrayidx.1.3, align 2
  %77 = ptrtoint ptr %incdec.ptr.392 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %incdec.ptr.392, align 2
  %incdec.ptr.1.3 = getelementptr inbounds i16, ptr %block, i32 26
  %arrayidx.2.3 = getelementptr i16, ptr %in, i32 26
  %78 = ptrtoint ptr %arrayidx.2.3 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %arrayidx.2.3, align 2
  %80 = ptrtoint ptr %incdec.ptr.1.3 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %incdec.ptr.1.3, align 2
  %incdec.ptr.2.3 = getelementptr inbounds i16, ptr %block, i32 27
  %arrayidx.3.3 = getelementptr i16, ptr %in, i32 27
  %81 = ptrtoint ptr %arrayidx.3.3 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %arrayidx.3.3, align 2
  %83 = ptrtoint ptr %incdec.ptr.2.3 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %82, ptr %incdec.ptr.2.3, align 2
  %incdec.ptr.3.3 = getelementptr inbounds i16, ptr %block, i32 28
  %arrayidx.4.3 = getelementptr i16, ptr %in, i32 28
  %84 = ptrtoint ptr %arrayidx.4.3 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %arrayidx.4.3, align 2
  %86 = ptrtoint ptr %incdec.ptr.3.3 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %85, ptr %incdec.ptr.3.3, align 2
  %incdec.ptr.4.3 = getelementptr inbounds i16, ptr %block, i32 29
  %arrayidx.5.3 = getelementptr i16, ptr %in, i32 29
  %87 = ptrtoint ptr %arrayidx.5.3 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %arrayidx.5.3, align 2
  %89 = ptrtoint ptr %incdec.ptr.4.3 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %88, ptr %incdec.ptr.4.3, align 2
  %incdec.ptr.5.3 = getelementptr inbounds i16, ptr %block, i32 30
  %arrayidx.6.3 = getelementptr i16, ptr %in, i32 30
  %90 = ptrtoint ptr %arrayidx.6.3 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %arrayidx.6.3, align 2
  %92 = ptrtoint ptr %incdec.ptr.5.3 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %91, ptr %incdec.ptr.5.3, align 2
  %incdec.ptr.6.3 = getelementptr inbounds i16, ptr %block, i32 31
  %arrayidx.7.3 = getelementptr i16, ptr %in, i32 31
  %93 = ptrtoint ptr %arrayidx.7.3 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %arrayidx.7.3, align 2
  %95 = ptrtoint ptr %incdec.ptr.6.3 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %94, ptr %incdec.ptr.6.3, align 2
  %incdec.ptr.7.3 = getelementptr inbounds i16, ptr %block, i32 32
  %arrayidx.493 = getelementptr i16, ptr %in, i32 32
  %96 = ptrtoint ptr %arrayidx.493 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %arrayidx.493, align 2
  %98 = ptrtoint ptr %incdec.ptr.7.3 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %97, ptr %incdec.ptr.7.3, align 2
  %incdec.ptr.494 = getelementptr inbounds i16, ptr %block, i32 33
  %arrayidx.1.4 = getelementptr i16, ptr %in, i32 33
  %99 = ptrtoint ptr %arrayidx.1.4 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %arrayidx.1.4, align 2
  %101 = ptrtoint ptr %incdec.ptr.494 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %100, ptr %incdec.ptr.494, align 2
  %incdec.ptr.1.4 = getelementptr inbounds i16, ptr %block, i32 34
  %arrayidx.2.4 = getelementptr i16, ptr %in, i32 34
  %102 = ptrtoint ptr %arrayidx.2.4 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %arrayidx.2.4, align 2
  %104 = ptrtoint ptr %incdec.ptr.1.4 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %103, ptr %incdec.ptr.1.4, align 2
  %incdec.ptr.2.4 = getelementptr inbounds i16, ptr %block, i32 35
  %arrayidx.3.4 = getelementptr i16, ptr %in, i32 35
  %105 = ptrtoint ptr %arrayidx.3.4 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %arrayidx.3.4, align 2
  %107 = ptrtoint ptr %incdec.ptr.2.4 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %106, ptr %incdec.ptr.2.4, align 2
  %incdec.ptr.3.4 = getelementptr inbounds i16, ptr %block, i32 36
  %arrayidx.4.4 = getelementptr i16, ptr %in, i32 36
  %108 = ptrtoint ptr %arrayidx.4.4 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %arrayidx.4.4, align 2
  %110 = ptrtoint ptr %incdec.ptr.3.4 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %109, ptr %incdec.ptr.3.4, align 2
  %incdec.ptr.4.4 = getelementptr inbounds i16, ptr %block, i32 37
  %arrayidx.5.4 = getelementptr i16, ptr %in, i32 37
  %111 = ptrtoint ptr %arrayidx.5.4 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %arrayidx.5.4, align 2
  %113 = ptrtoint ptr %incdec.ptr.4.4 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %112, ptr %incdec.ptr.4.4, align 2
  %incdec.ptr.5.4 = getelementptr inbounds i16, ptr %block, i32 38
  %arrayidx.6.4 = getelementptr i16, ptr %in, i32 38
  %114 = ptrtoint ptr %arrayidx.6.4 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %arrayidx.6.4, align 2
  %116 = ptrtoint ptr %incdec.ptr.5.4 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %115, ptr %incdec.ptr.5.4, align 2
  %incdec.ptr.6.4 = getelementptr inbounds i16, ptr %block, i32 39
  %arrayidx.7.4 = getelementptr i16, ptr %in, i32 39
  %117 = ptrtoint ptr %arrayidx.7.4 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %arrayidx.7.4, align 2
  %119 = ptrtoint ptr %incdec.ptr.6.4 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %118, ptr %incdec.ptr.6.4, align 2
  %incdec.ptr.7.4 = getelementptr inbounds i16, ptr %block, i32 40
  %arrayidx.595 = getelementptr i16, ptr %in, i32 40
  %120 = ptrtoint ptr %arrayidx.595 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %arrayidx.595, align 2
  %122 = ptrtoint ptr %incdec.ptr.7.4 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %121, ptr %incdec.ptr.7.4, align 2
  %incdec.ptr.596 = getelementptr inbounds i16, ptr %block, i32 41
  %arrayidx.1.5 = getelementptr i16, ptr %in, i32 41
  %123 = ptrtoint ptr %arrayidx.1.5 to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %arrayidx.1.5, align 2
  %125 = ptrtoint ptr %incdec.ptr.596 to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %124, ptr %incdec.ptr.596, align 2
  %incdec.ptr.1.5 = getelementptr inbounds i16, ptr %block, i32 42
  %arrayidx.2.5 = getelementptr i16, ptr %in, i32 42
  %126 = ptrtoint ptr %arrayidx.2.5 to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %arrayidx.2.5, align 2
  %128 = ptrtoint ptr %incdec.ptr.1.5 to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %127, ptr %incdec.ptr.1.5, align 2
  %incdec.ptr.2.5 = getelementptr inbounds i16, ptr %block, i32 43
  %arrayidx.3.5 = getelementptr i16, ptr %in, i32 43
  %129 = ptrtoint ptr %arrayidx.3.5 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %arrayidx.3.5, align 2
  %131 = ptrtoint ptr %incdec.ptr.2.5 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %130, ptr %incdec.ptr.2.5, align 2
  %incdec.ptr.3.5 = getelementptr inbounds i16, ptr %block, i32 44
  %arrayidx.4.5 = getelementptr i16, ptr %in, i32 44
  %132 = ptrtoint ptr %arrayidx.4.5 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %arrayidx.4.5, align 2
  %134 = ptrtoint ptr %incdec.ptr.3.5 to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %133, ptr %incdec.ptr.3.5, align 2
  %incdec.ptr.4.5 = getelementptr inbounds i16, ptr %block, i32 45
  %arrayidx.5.5 = getelementptr i16, ptr %in, i32 45
  %135 = ptrtoint ptr %arrayidx.5.5 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %arrayidx.5.5, align 2
  %137 = ptrtoint ptr %incdec.ptr.4.5 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %136, ptr %incdec.ptr.4.5, align 2
  %incdec.ptr.5.5 = getelementptr inbounds i16, ptr %block, i32 46
  %arrayidx.6.5 = getelementptr i16, ptr %in, i32 46
  %138 = ptrtoint ptr %arrayidx.6.5 to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %arrayidx.6.5, align 2
  %140 = ptrtoint ptr %incdec.ptr.5.5 to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %139, ptr %incdec.ptr.5.5, align 2
  %incdec.ptr.6.5 = getelementptr inbounds i16, ptr %block, i32 47
  %arrayidx.7.5 = getelementptr i16, ptr %in, i32 47
  %141 = ptrtoint ptr %arrayidx.7.5 to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %arrayidx.7.5, align 2
  %143 = ptrtoint ptr %incdec.ptr.6.5 to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 %142, ptr %incdec.ptr.6.5, align 2
  %incdec.ptr.7.5 = getelementptr inbounds i16, ptr %block, i32 48
  %arrayidx.697 = getelementptr i16, ptr %in, i32 48
  %144 = ptrtoint ptr %arrayidx.697 to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %arrayidx.697, align 2
  %146 = ptrtoint ptr %incdec.ptr.7.5 to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %145, ptr %incdec.ptr.7.5, align 2
  %incdec.ptr.698 = getelementptr inbounds i16, ptr %block, i32 49
  %arrayidx.1.6 = getelementptr i16, ptr %in, i32 49
  %147 = ptrtoint ptr %arrayidx.1.6 to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %arrayidx.1.6, align 2
  %149 = ptrtoint ptr %incdec.ptr.698 to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %148, ptr %incdec.ptr.698, align 2
  %incdec.ptr.1.6 = getelementptr inbounds i16, ptr %block, i32 50
  %arrayidx.2.6 = getelementptr i16, ptr %in, i32 50
  %150 = ptrtoint ptr %arrayidx.2.6 to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %arrayidx.2.6, align 2
  %152 = ptrtoint ptr %incdec.ptr.1.6 to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %151, ptr %incdec.ptr.1.6, align 2
  %incdec.ptr.2.6 = getelementptr inbounds i16, ptr %block, i32 51
  %arrayidx.3.6 = getelementptr i16, ptr %in, i32 51
  %153 = ptrtoint ptr %arrayidx.3.6 to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %arrayidx.3.6, align 2
  %155 = ptrtoint ptr %incdec.ptr.2.6 to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 %154, ptr %incdec.ptr.2.6, align 2
  %incdec.ptr.3.6 = getelementptr inbounds i16, ptr %block, i32 52
  %arrayidx.4.6 = getelementptr i16, ptr %in, i32 52
  %156 = ptrtoint ptr %arrayidx.4.6 to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %arrayidx.4.6, align 2
  %158 = ptrtoint ptr %incdec.ptr.3.6 to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %157, ptr %incdec.ptr.3.6, align 2
  %incdec.ptr.4.6 = getelementptr inbounds i16, ptr %block, i32 53
  %arrayidx.5.6 = getelementptr i16, ptr %in, i32 53
  %159 = ptrtoint ptr %arrayidx.5.6 to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %arrayidx.5.6, align 2
  %161 = ptrtoint ptr %incdec.ptr.4.6 to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 %160, ptr %incdec.ptr.4.6, align 2
  %incdec.ptr.5.6 = getelementptr inbounds i16, ptr %block, i32 54
  %arrayidx.6.6 = getelementptr i16, ptr %in, i32 54
  %162 = ptrtoint ptr %arrayidx.6.6 to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %arrayidx.6.6, align 2
  %164 = ptrtoint ptr %incdec.ptr.5.6 to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 %163, ptr %incdec.ptr.5.6, align 2
  %incdec.ptr.6.6 = getelementptr inbounds i16, ptr %block, i32 55
  %arrayidx.7.6 = getelementptr i16, ptr %in, i32 55
  %165 = ptrtoint ptr %arrayidx.7.6 to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %arrayidx.7.6, align 2
  %167 = ptrtoint ptr %incdec.ptr.6.6 to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 %166, ptr %incdec.ptr.6.6, align 2
  %incdec.ptr.7.6 = getelementptr inbounds i16, ptr %block, i32 56
  %arrayidx.799 = getelementptr i16, ptr %in, i32 56
  %168 = ptrtoint ptr %arrayidx.799 to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %arrayidx.799, align 2
  %170 = ptrtoint ptr %incdec.ptr.7.6 to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 %169, ptr %incdec.ptr.7.6, align 2
  %incdec.ptr.7100 = getelementptr inbounds i16, ptr %block, i32 57
  %arrayidx.1.7 = getelementptr i16, ptr %in, i32 57
  %171 = ptrtoint ptr %arrayidx.1.7 to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %arrayidx.1.7, align 2
  %173 = ptrtoint ptr %incdec.ptr.7100 to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 %172, ptr %incdec.ptr.7100, align 2
  %incdec.ptr.1.7 = getelementptr inbounds i16, ptr %block, i32 58
  %arrayidx.2.7 = getelementptr i16, ptr %in, i32 58
  %174 = ptrtoint ptr %arrayidx.2.7 to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %arrayidx.2.7, align 2
  %176 = ptrtoint ptr %incdec.ptr.1.7 to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 %175, ptr %incdec.ptr.1.7, align 2
  %incdec.ptr.2.7 = getelementptr inbounds i16, ptr %block, i32 59
  %arrayidx.3.7 = getelementptr i16, ptr %in, i32 59
  %177 = ptrtoint ptr %arrayidx.3.7 to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %arrayidx.3.7, align 2
  %179 = ptrtoint ptr %incdec.ptr.2.7 to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 %178, ptr %incdec.ptr.2.7, align 2
  %incdec.ptr.3.7 = getelementptr inbounds i16, ptr %block, i32 60
  %arrayidx.4.7 = getelementptr i16, ptr %in, i32 60
  %180 = ptrtoint ptr %arrayidx.4.7 to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %arrayidx.4.7, align 2
  %182 = ptrtoint ptr %incdec.ptr.3.7 to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 %181, ptr %incdec.ptr.3.7, align 2
  %incdec.ptr.4.7 = getelementptr inbounds i16, ptr %block, i32 61
  %arrayidx.5.7 = getelementptr i16, ptr %in, i32 61
  %183 = ptrtoint ptr %arrayidx.5.7 to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %arrayidx.5.7, align 2
  %185 = ptrtoint ptr %incdec.ptr.4.7 to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 %184, ptr %incdec.ptr.4.7, align 2
  %incdec.ptr.5.7 = getelementptr inbounds i16, ptr %block, i32 62
  %arrayidx.6.7 = getelementptr i16, ptr %in, i32 62
  %186 = ptrtoint ptr %arrayidx.6.7 to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %arrayidx.6.7, align 2
  %188 = ptrtoint ptr %incdec.ptr.5.7 to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 %187, ptr %incdec.ptr.5.7, align 2
  %incdec.ptr.6.7 = getelementptr inbounds i16, ptr %block, i32 63
  %arrayidx.7.7 = getelementptr i16, ptr %in, i32 63
  %189 = ptrtoint ptr %arrayidx.7.7 to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %arrayidx.7.7, align 2
  %191 = ptrtoint ptr %incdec.ptr.6.7 to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 %190, ptr %incdec.ptr.6.7, align 2
  br label %land.rhs

land.rhs:                                         ; preds = %for.body11.land.rhs_crit_edge, %entry
  %lastzero_run.079 = phi i32 [ %inc12, %for.body11.land.rhs_crit_edge ], [ 0, %entry ]
  %i.078 = phi i32 [ %dec, %for.body11.land.rhs_crit_edge ], [ 63, %entry ]
  %arrayidx9 = getelementptr [64 x i8], ptr @zigzag, i32 0, i32 %i.078
  %192 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %arrayidx9, align 1
  %idxprom = zext i8 %193 to i32
  %arrayidx10 = getelementptr [64 x i16], ptr %block, i32 0, i32 %idxprom
  %194 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %arrayidx10, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %195)
  %tobool.not = icmp eq i16 %195, 0
  br i1 %tobool.not, label %for.body11, label %land.rhs.for.end14_crit_edge

land.rhs.for.end14_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end14

for.body11:                                       ; preds = %land.rhs
  %inc12 = add nuw nsw i32 %lastzero_run.079, 1
  %dec = add nsw i32 %i.078, -1
  %exitcond.not = icmp eq i32 %inc12, 64
  br i1 %exitcond.not, label %for.body11.for.end14_crit_edge, label %for.body11.land.rhs_crit_edge

for.body11.land.rhs_crit_edge:                    ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

for.body11.for.end14_crit_edge:                   ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end14

for.end14:                                        ; preds = %for.body11.for.end14_crit_edge, %land.rhs.for.end14_crit_edge
  %lastzero_run.0.lcssa = phi i32 [ 64, %for.body11.for.end14_crit_edge ], [ %lastzero_run.079, %land.rhs.for.end14_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blocktype)
  %cmp15 = icmp eq i32 %blocktype, 0
  %conv = select i1 %cmp15, i16 -32768, i16 0
  %196 = ptrtoint ptr %output to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 %conv, ptr %output, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %lastzero_run.0.lcssa)
  %cmp18 = icmp ugt i32 %lastzero_run.0.lcssa, 14
  %lastzero_run.0.op = sub nsw i32 64, %lastzero_run.0.lcssa
  %sub = select i1 %cmp18, i32 %lastzero_run.0.op, i32 64
  %output.addr.080 = getelementptr i16, ptr %output, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp2181 = icmp sgt i32 %sub, 0
  br i1 %cmp2181, label %for.end14.while.cond23.preheader_crit_edge, label %for.end14.while.end44_crit_edge

for.end14.while.end44_crit_edge:                  ; preds = %for.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end44

for.end14.while.cond23.preheader_crit_edge:       ; preds = %for.end14
  br label %while.cond23.preheader

while.cond23.preheader:                           ; preds = %while.end.while.cond23.preheader_crit_edge, %for.end14.while.cond23.preheader_crit_edge
  %output.addr.084 = phi ptr [ %output.addr.0, %while.end.while.cond23.preheader_crit_edge ], [ %output.addr.080, %for.end14.while.cond23.preheader_crit_edge ]
  %ret.083 = phi i32 [ %inc43, %while.end.while.cond23.preheader_crit_edge ], [ 1, %for.end14.while.cond23.preheader_crit_edge ]
  %i.182 = phi i32 [ %inc42, %while.end.while.cond23.preheader_crit_edge ], [ 0, %for.end14.while.cond23.preheader_crit_edge ]
  %197 = xor i32 %i.182, -1
  %198 = add i32 %sub, %197
  br label %while.cond23

while.cond23:                                     ; preds = %while.body34.while.cond23_crit_edge, %while.cond23.preheader
  %i.2 = phi i32 [ %inc36, %while.body34.while.cond23_crit_edge ], [ %i.182, %while.cond23.preheader ]
  %cnt.0 = phi i32 [ %inc35, %while.body34.while.cond23_crit_edge ], [ 0, %while.cond23.preheader ]
  %arrayidx24 = getelementptr [64 x i8], ptr @zigzag, i32 0, i32 %i.2
  %199 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %arrayidx24, align 1
  %idxprom25 = zext i8 %200 to i32
  %arrayidx26 = getelementptr [64 x i16], ptr %block, i32 0, i32 %idxprom25
  %201 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %arrayidx26, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %202)
  %cmp28 = icmp eq i16 %202, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %cnt.0)
  %cmp31 = icmp ult i32 %cnt.0, 14
  %or.cond = select i1 %cmp28, i1 %cmp31, i1 false
  br i1 %or.cond, label %while.body34, label %while.cond23.while.end_crit_edge

while.cond23.while.end_crit_edge:                 ; preds = %while.cond23
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body34:                                     ; preds = %while.cond23
  %inc35 = add nuw nsw i32 %cnt.0, 1
  %inc36 = add i32 %i.2, 1
  %cmp37 = icmp eq i32 %inc36, %sub
  br i1 %cmp37, label %while.body34.while.end_crit_edge, label %while.body34.while.cond23_crit_edge

while.body34.while.cond23_crit_edge:              ; preds = %while.body34
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond23

while.body34.while.end_crit_edge:                 ; preds = %while.body34
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body34.while.end_crit_edge, %while.cond23.while.end_crit_edge
  %cnt.0.lcssa = phi i32 [ %198, %while.body34.while.end_crit_edge ], [ %cnt.0, %while.cond23.while.end_crit_edge ]
  %.lcssa = phi i16 [ 0, %while.body34.while.end_crit_edge ], [ %202, %while.cond23.while.end_crit_edge ]
  %i.3 = phi i32 [ %sub, %while.body34.while.end_crit_edge ], [ %i.2, %while.cond23.while.end_crit_edge ]
  %conv27.le = sext i16 %.lcssa to i32
  %shl = shl nsw i32 %conv27.le, 4
  %or = or i32 %shl, %cnt.0.lcssa
  %conv40 = trunc i32 %or to i16
  %203 = ptrtoint ptr %output.addr.084 to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 %conv40, ptr %output.addr.084, align 2
  %inc42 = add i32 %i.3, 1
  %inc43 = add i32 %ret.083, 1
  %output.addr.0 = getelementptr i16, ptr %output.addr.084, i32 1
  %cmp21 = icmp slt i32 %inc42, %sub
  br i1 %cmp21, label %while.end.while.cond23.preheader_crit_edge, label %while.end.while.end44_crit_edge

while.end.while.end44_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end44

while.end.while.cond23.preheader_crit_edge:       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond23.preheader

while.end44:                                      ; preds = %while.end.while.end44_crit_edge, %for.end14.while.end44_crit_edge
  %ret.0.lcssa = phi i32 [ 1, %for.end14.while.end44_crit_edge ], [ %inc43, %while.end.while.end44_crit_edge ]
  %output.addr.0.lcssa = phi ptr [ %output.addr.080, %for.end14.while.end44_crit_edge ], [ %output.addr.0, %while.end.while.end44_crit_edge ]
  br i1 %cmp18, label %if.then47, label %while.end44.if.end49_crit_edge

while.end44.if.end49_crit_edge:                   ; preds = %while.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then47:                                        ; preds = %while.end44
  call void @__sanitizer_cov_trace_pc() #10
  %204 = ptrtoint ptr %output.addr.0.lcssa to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 15, ptr %output.addr.0.lcssa, align 2
  %inc48 = add i32 %ret.0.lcssa, 1
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %while.end44.if.end49_crit_edge
  %ret.1 = phi i32 [ %inc48, %if.then47 ], [ %ret.0.lcssa, %while.end44.if.end49_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %block) #8
  ret i32 %ret.1
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @derlc(ptr nocapture noundef %rlc_in, ptr nocapture noundef writeonly %dwht_out, ptr noundef readnone %end_of_input) unnamed_addr #3 align 64 {
entry:
  %block = alloca [80 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rlc_in to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rlc_in, align 4
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %block) #8
  %2 = call ptr @memset(ptr %block, i32 255, i32 160)
  %cmp = icmp ugt ptr %1, %end_of_input
  br i1 %cmp, label %entry.cleanup39_crit_edge, label %if.end

entry.cleanup39_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup39

if.end:                                           ; preds = %entry
  %incdec.ptr = getelementptr i16, ptr %1, i32 1
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %1, align 2
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end
  %input.089 = phi ptr [ %incdec.ptr, %if.end ], [ %incdec.ptr5, %cleanup.while.body_crit_edge ]
  %wp.088 = phi ptr [ %block, %if.end ], [ %incdec.ptr23, %cleanup.while.body_crit_edge ]
  %dec_count.087 = phi i32 [ 0, %if.end ], [ %add24, %cleanup.while.body_crit_edge ]
  %cmp2 = icmp ugt ptr %input.089, %end_of_input
  br i1 %cmp2, label %while.body.cleanup39_crit_edge, label %if.end4

while.body.cleanup39_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup39

if.end4:                                          ; preds = %while.body
  %incdec.ptr5 = getelementptr i16, ptr %input.089, i32 1
  %5 = ptrtoint ptr %input.089 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %input.089, align 2
  %7 = and i16 %6, 15
  %and = zext i16 %7 to i32
  %shr = ashr i16 %6, 4
  %trunc = trunc i16 %6 to i4
  %8 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.1)
  switch i4 %trunc, label %for.body17.preheader [
    i4 -1, label %for.cond.preheader
    i4 0, label %if.end4.cleanup_crit_edge
  ]

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body17.preheader:                             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %9 = shl nuw nsw i32 %and, 1
  %10 = call ptr @memset(ptr %wp.088, i32 0, i32 %9)
  %uglygep = getelementptr i8, ptr %wp.088, i32 %9
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end4
  %notsub = add i32 %dec_count.087, -65
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %notsub)
  %cmp1090 = icmp slt i32 %notsub, -1
  br i1 %cmp1090, label %for.body.preheader, label %for.cond.preheader.for.body31.preheader_crit_edge

for.cond.preheader.for.body31.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body31.preheader

for.body.preheader:                               ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %.neg = mul i32 %dec_count.087, -2
  %11 = add i32 %.neg, 128
  %12 = call ptr @memset(ptr %wp.088, i32 0, i32 %11)
  br label %for.body31.preheader

cleanup:                                          ; preds = %for.body17.preheader, %if.end4.cleanup_crit_edge
  %wp.2.lcssa = phi ptr [ %uglygep, %for.body17.preheader ], [ %wp.088, %if.end4.cleanup_crit_edge ]
  %incdec.ptr23 = getelementptr i16, ptr %wp.2.lcssa, i32 1
  %13 = ptrtoint ptr %wp.2.lcssa to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %shr, ptr %wp.2.lcssa, align 2
  %add = add i32 %dec_count.087, 1
  %add24 = add i32 %add, %and
  %cmp1 = icmp slt i32 %add24, 64
  br i1 %cmp1, label %cleanup.while.body_crit_edge, label %cleanup.for.body31.preheader_crit_edge

cleanup.for.body31.preheader_crit_edge:           ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body31.preheader

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

for.body31.preheader:                             ; preds = %cleanup.for.body31.preheader_crit_edge, %for.body.preheader, %for.cond.preheader.for.body31.preheader_crit_edge
  br label %for.body31

for.body31:                                       ; preds = %for.body31.for.body31_crit_edge, %for.body31.preheader
  %i.294 = phi i32 [ %inc37, %for.body31.for.body31_crit_edge ], [ 0, %for.body31.preheader ]
  %wp.493 = phi ptr [ %incdec.ptr33, %for.body31.for.body31_crit_edge ], [ %block, %for.body31.preheader ]
  %arrayidx = getelementptr [64 x i8], ptr @zigzag, i32 0, i32 %i.294
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %conv32 = zext i8 %15 to i32
  %incdec.ptr33 = getelementptr i16, ptr %wp.493, i32 1
  %16 = ptrtoint ptr %wp.493 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %wp.493, align 2
  %arrayidx35 = getelementptr i16, ptr %dwht_out, i32 %conv32
  %18 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %arrayidx35, align 2
  %inc37 = add nuw nsw i32 %i.294, 1
  %exitcond.not = icmp eq i32 %inc37, 64
  br i1 %exitcond.not, label %for.end38, label %for.body31.for.body31_crit_edge

for.body31.for.body31_crit_edge:                  ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body31

for.end38:                                        ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %rlc_in to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %incdec.ptr5, ptr %rlc_in, align 4
  br label %cleanup39

cleanup39:                                        ; preds = %for.end38, %while.body.cleanup39_crit_edge, %entry.cleanup39_crit_edge
  %retval.2 = phi i16 [ %4, %for.end38 ], [ 16384, %entry.cleanup39_crit_edge ], [ 16384, %while.body.cleanup39_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %block) #8
  ret i16 %retval.2
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree noinline nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @quant_table, !1, !"quant_table", i1 false, i1 false}
!1 = !{!"../drivers/media/test-drivers/vicodec/codec-fwht.c", i32 174, i32 18}
!2 = !{ptr @quant_table_p, !3, !"quant_table_p", i1 false, i1 false}
!3 = !{!"../drivers/media/test-drivers/vicodec/codec-fwht.c", i32 185, i32 18}
!4 = !{ptr @zigzag, !5, !"zigzag", i1 false, i1 false}
!5 = !{!"../drivers/media/test-drivers/vicodec/codec-fwht.c", i32 32, i32 22}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
