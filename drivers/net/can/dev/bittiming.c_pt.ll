; ModuleID = '/llk/IR_all_yes/drivers/net/can/dev/bittiming.c_pt.bc'
source_filename = "../drivers/net/can/dev/bittiming.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_bittiming_const = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_tdc_const = type { i32, i32, i32, i32, i32, i32 }
%struct.can_tdc = type { i32, i32, i32 }

@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bitrate error %d.%d%% too high\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bitrate error %d.%d%%\0A\00", [41 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 138, i32 8 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [35 x i8] c"../drivers/net/can/dev/bittiming.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 142, i32 20 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @can_calc_bittiming(ptr noundef %dev, ptr nocapture noundef %bt, ptr nocapture noundef readonly %btc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sample_point = getelementptr inbounds %struct.can_bittiming, ptr %bt, i32 0, i32 1
  %0 = ptrtoint ptr %sample_point to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sample_point, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.else:                                          ; preds = %entry
  %2 = ptrtoint ptr %bt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 800000, i32 %3)
  %cmp = icmp ugt i32 %3, 800000
  br i1 %cmp, label %if.else.if.end10_crit_edge, label %if.else4

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.else4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %3)
  %cmp6 = icmp ugt i32 %3, 500000
  %. = select i1 %cmp6, i32 800, i32 875
  br label %if.end10

if.end10:                                         ; preds = %if.else4, %if.else.if.end10_crit_edge, %entry.if.end10_crit_edge
  %sample_point_nominal.0 = phi i32 [ %1, %entry.if.end10_crit_edge ], [ 750, %if.else.if.end10_crit_edge ], [ %., %if.else4 ]
  %tseg1_max = getelementptr inbounds %struct.can_bittiming_const, ptr %btc, i32 0, i32 2
  %4 = ptrtoint ptr %tseg1_max to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tseg1_max, align 4
  %tseg2_max = getelementptr inbounds %struct.can_bittiming_const, ptr %btc, i32 0, i32 4
  %6 = ptrtoint ptr %tseg2_max to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tseg2_max, align 4
  %add = add i32 %7, %5
  %mul = shl i32 %add, 1
  %add11 = or i32 %mul, 1
  %tseg1_min = getelementptr inbounds %struct.can_bittiming_const, ptr %btc, i32 0, i32 1
  %8 = ptrtoint ptr %tseg1_min to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tseg1_min, align 4
  %tseg2_min = getelementptr inbounds %struct.can_bittiming_const, ptr %btc, i32 0, i32 3
  %10 = ptrtoint ptr %tseg2_min to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tseg2_min, align 4
  %add12 = add i32 %11, %9
  %mul13 = shl i32 %add12, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add11, i32 %mul13)
  %cmp14.not879 = icmp ult i32 %add11, %mul13
  br i1 %cmp14.not879, label %if.end10.if.then51_crit_edge, label %for.body.lr.ph

if.end10.if.then51_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then51

for.body.lr.ph:                                   ; preds = %if.end10
  %clock = getelementptr i8, ptr %dev, i32 2440
  %12 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %clock, align 4
  %14 = ptrtoint ptr %bt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bt, align 4
  %brp_inc = getelementptr inbounds %struct.can_bittiming_const, ptr %btc, i32 0, i32 8
  %16 = ptrtoint ptr %brp_inc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %brp_inc, align 4
  %brp_min = getelementptr inbounds %struct.can_bittiming_const, ptr %btc, i32 0, i32 6
  %18 = ptrtoint ptr %brp_min to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %brp_min, align 4
  %brp_max = getelementptr inbounds %struct.can_bittiming_const, ptr %btc, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %best_bitrate_error.0886 = phi i32 [ -1, %for.body.lr.ph ], [ %best_bitrate_error.1, %for.inc.for.body_crit_edge ]
  %tseg.0885 = phi i32 [ %add11, %for.body.lr.ph ], [ %dec, %for.inc.for.body_crit_edge ]
  %best_brp.0884 = phi i32 [ 0, %for.body.lr.ph ], [ %best_brp.1, %for.inc.for.body_crit_edge ]
  %best_tseg.0883 = phi i32 [ 0, %for.body.lr.ph ], [ %best_tseg.1, %for.inc.for.body_crit_edge ]
  %best_sample_point_error.0882 = phi i32 [ -1, %for.body.lr.ph ], [ %best_sample_point_error.2, %for.inc.for.body_crit_edge ]
  %tseg2.0881 = phi i32 [ 0, %for.body.lr.ph ], [ %tseg2.3, %for.inc.for.body_crit_edge ]
  %tseg1.0880 = phi i32 [ 0, %for.body.lr.ph ], [ %tseg1.3, %for.inc.for.body_crit_edge ]
  %div771 = lshr i32 %tseg.0885, 1
  %add15 = add nuw i32 %div771, 1
  %mul17 = mul i32 %15, %add15
  %div18 = udiv i32 %13, %mul17
  %rem = and i32 %tseg.0885, 1
  %add19 = add i32 %div18, %rem
  %20 = urem i32 %add19, %17
  %mul22 = sub i32 %add19, %20
  call void @__sanitizer_cov_trace_cmp4(i32 %mul22, i32 %19)
  %cmp23 = icmp ult i32 %mul22, %19
  br i1 %cmp23, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %21 = ptrtoint ptr %brp_max to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %brp_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul22, i32 %22)
  %cmp24 = icmp ugt i32 %mul22, %22
  br i1 %cmp24, label %lor.lhs.false.for.inc_crit_edge, label %if.end26

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end26:                                         ; preds = %lor.lhs.false
  %mul29 = mul i32 %mul22, %add15
  %div30 = udiv i32 %13, %mul29
  %sub = sub i32 %15, %div30
  %23 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %best_bitrate_error.0886)
  %cmp34 = icmp ugt i32 %23, %best_bitrate_error.0886
  br i1 %cmp34, label %if.end26.for.inc_crit_edge, label %if.end36

if.end26.for.inc_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end36:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %best_bitrate_error.0886)
  %cmp37 = icmp ult i32 %23, %best_bitrate_error.0886
  %spec.select = select i1 %cmp37, i32 -1, i32 %best_sample_point_error.0882
  %mul.i = mul i32 %add15, %sample_point_nominal.0
  %div.i = udiv i32 %mul.i, 1000
  %sub2.i = sub i32 %add15, %div.i
  %24 = tail call i32 @llvm.umax.i32(i32 %sub2.i, i32 %11) #4
  %25 = tail call i32 @llvm.umin.i32(i32 %24, i32 %7) #4
  %sub10.i = sub i32 %div771, %25
  call void @__sanitizer_cov_trace_cmp4(i32 %sub10.i, i32 %5)
  %cmp11.i = icmp ugt i32 %sub10.i, %5
  %sub13.i = sub i32 %div771, %5
  %tseg2.0.i = select i1 %cmp11.i, i32 %sub13.i, i32 %25
  %sub15.i = sub i32 %add15, %tseg2.0.i
  %mul16.i = mul i32 %sub15.i, 1000
  %div18.i = udiv i32 %mul16.i, %add15
  call void @__sanitizer_cov_trace_cmp4(i32 %sample_point_nominal.0, i32 %div18.i)
  %cmp27.not.not.i = icmp ult i32 %sample_point_nominal.0, %div18.i
  br i1 %cmp27.not.not.i, label %if.end36.for.inc.i_crit_edge, label %if.then29.i

if.end36.for.inc.i_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.then29.i:                                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  %sub19.i = sub i32 %sample_point_nominal.0, %div18.i
  %26 = tail call i32 @llvm.abs.i32(i32 %sub19.i, i1 false) #4
  %27 = tail call i32 @llvm.umin.i32(i32 %sub10.i, i32 %5) #4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then29.i, %if.end36.for.inc.i_crit_edge
  %tseg1.1 = phi i32 [ %tseg1.0880, %if.end36.for.inc.i_crit_edge ], [ %27, %if.then29.i ]
  %tseg2.1 = phi i32 [ %tseg2.0881, %if.end36.for.inc.i_crit_edge ], [ %tseg2.0.i, %if.then29.i ]
  %best_sample_point_error.1.i = phi i32 [ -1, %if.end36.for.inc.i_crit_edge ], [ %26, %if.then29.i ]
  %sub2.1.i = sub nsw i32 %div771, %div.i
  %28 = tail call i32 @llvm.umax.i32(i32 %sub2.1.i, i32 %11) #4
  %29 = tail call i32 @llvm.umin.i32(i32 %28, i32 %7) #4
  %sub10.1.i = sub i32 %div771, %29
  call void @__sanitizer_cov_trace_cmp4(i32 %sub10.1.i, i32 %5)
  %cmp11.1.i = icmp ugt i32 %sub10.1.i, %5
  %tseg2.0.1.i = select i1 %cmp11.1.i, i32 %sub13.i, i32 %29
  %sub15.1.i = sub i32 %add15, %tseg2.0.1.i
  %mul16.1.i = mul i32 %sub15.1.i, 1000
  %div18.1.i = udiv i32 %mul16.1.i, %add15
  %sub19.1.i = sub i32 %sample_point_nominal.0, %div18.1.i
  %30 = tail call i32 @llvm.abs.i32(i32 %sub19.1.i, i1 false) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %sample_point_nominal.0, i32 %div18.1.i)
  %cmp27.not.1.i = icmp uge i32 %sample_point_nominal.0, %div18.1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %best_sample_point_error.1.i)
  %cmp28.1.i = icmp ult i32 %30, %best_sample_point_error.1.i
  %or.cond.1.i = select i1 %cmp27.not.1.i, i1 %cmp28.1.i, i1 false
  %31 = tail call i32 @llvm.umin.i32(i32 %sub10.1.i, i32 %5) #4
  %tseg1.2 = select i1 %or.cond.1.i, i32 %31, i32 %tseg1.1
  %tseg2.2 = select i1 %or.cond.1.i, i32 %tseg2.0.1.i, i32 %tseg2.1
  %best_sample_point_error.1.1.i = select i1 %or.cond.1.i, i32 %30, i32 %best_sample_point_error.1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %best_sample_point_error.1.1.i, i32 %spec.select)
  %cmp42 = icmp ugt i32 %best_sample_point_error.1.1.i, %spec.select
  br i1 %cmp42, label %for.inc.i.for.inc_crit_edge, label %if.end44

for.inc.i.for.inc_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end44:                                         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %div30)
  %cmp46 = icmp eq i32 %15, %div30
  br i1 %cmp46, label %land.lhs.true, label %if.end44.for.inc_crit_edge

if.end44.for.inc_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_sample_point_error.1.1.i)
  %cmp47 = icmp eq i32 %best_sample_point_error.1.1.i, 0
  br i1 %cmp47, label %land.lhs.true.if.end261_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true.if.end261_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end261

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %if.end44.for.inc_crit_edge, %for.inc.i.for.inc_crit_edge, %if.end26.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %tseg1.3 = phi i32 [ %tseg1.0880, %for.body.for.inc_crit_edge ], [ %tseg1.0880, %lor.lhs.false.for.inc_crit_edge ], [ %tseg1.0880, %if.end26.for.inc_crit_edge ], [ %tseg1.2, %for.inc.i.for.inc_crit_edge ], [ %tseg1.2, %land.lhs.true.for.inc_crit_edge ], [ %tseg1.2, %if.end44.for.inc_crit_edge ]
  %tseg2.3 = phi i32 [ %tseg2.0881, %for.body.for.inc_crit_edge ], [ %tseg2.0881, %lor.lhs.false.for.inc_crit_edge ], [ %tseg2.0881, %if.end26.for.inc_crit_edge ], [ %tseg2.2, %for.inc.i.for.inc_crit_edge ], [ %tseg2.2, %land.lhs.true.for.inc_crit_edge ], [ %tseg2.2, %if.end44.for.inc_crit_edge ]
  %best_sample_point_error.2 = phi i32 [ %best_sample_point_error.0882, %for.body.for.inc_crit_edge ], [ %best_sample_point_error.0882, %lor.lhs.false.for.inc_crit_edge ], [ %best_sample_point_error.0882, %if.end26.for.inc_crit_edge ], [ %best_sample_point_error.0882, %for.inc.i.for.inc_crit_edge ], [ %best_sample_point_error.1.1.i, %land.lhs.true.for.inc_crit_edge ], [ %best_sample_point_error.1.1.i, %if.end44.for.inc_crit_edge ]
  %best_tseg.1 = phi i32 [ %best_tseg.0883, %for.body.for.inc_crit_edge ], [ %best_tseg.0883, %lor.lhs.false.for.inc_crit_edge ], [ %best_tseg.0883, %if.end26.for.inc_crit_edge ], [ %best_tseg.0883, %for.inc.i.for.inc_crit_edge ], [ %div771, %land.lhs.true.for.inc_crit_edge ], [ %div771, %if.end44.for.inc_crit_edge ]
  %best_brp.1 = phi i32 [ %best_brp.0884, %for.body.for.inc_crit_edge ], [ %best_brp.0884, %lor.lhs.false.for.inc_crit_edge ], [ %best_brp.0884, %if.end26.for.inc_crit_edge ], [ %best_brp.0884, %for.inc.i.for.inc_crit_edge ], [ %mul22, %land.lhs.true.for.inc_crit_edge ], [ %mul22, %if.end44.for.inc_crit_edge ]
  %best_bitrate_error.1 = phi i32 [ %best_bitrate_error.0886, %for.body.for.inc_crit_edge ], [ %best_bitrate_error.0886, %lor.lhs.false.for.inc_crit_edge ], [ %best_bitrate_error.0886, %if.end26.for.inc_crit_edge ], [ %best_bitrate_error.0886, %for.inc.i.for.inc_crit_edge ], [ 0, %land.lhs.true.for.inc_crit_edge ], [ %23, %if.end44.for.inc_crit_edge ]
  %dec = add i32 %tseg.0885, -1
  %cmp14.not = icmp ult i32 %dec, %mul13
  br i1 %cmp14.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_bitrate_error.1)
  %tobool50.not = icmp eq i32 %best_bitrate_error.1, 0
  br i1 %tobool50.not, label %for.end.if.end261_crit_edge, label %for.end.if.then51_crit_edge

for.end.if.then51_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then51

for.end.if.end261_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end261

if.then51:                                        ; preds = %for.end.if.then51_crit_edge, %if.end10.if.then51_crit_edge
  %best_bitrate_error.0.lcssa903 = phi i32 [ %best_bitrate_error.1, %for.end.if.then51_crit_edge ], [ -1, %if.end10.if.then51_crit_edge ]
  %best_brp.0.lcssa902 = phi i32 [ %best_brp.1, %for.end.if.then51_crit_edge ], [ 0, %if.end10.if.then51_crit_edge ]
  %best_tseg.0.lcssa901 = phi i32 [ %best_tseg.1, %for.end.if.then51_crit_edge ], [ 0, %if.end10.if.then51_crit_edge ]
  %tseg2.0.lcssa900 = phi i32 [ %tseg2.3, %for.end.if.then51_crit_edge ], [ 0, %if.end10.if.then51_crit_edge ]
  %tseg1.0.lcssa899 = phi i32 [ %tseg1.3, %for.end.if.then51_crit_edge ], [ 0, %if.end10.if.then51_crit_edge ]
  %conv = zext i32 %best_bitrate_error.0.lcssa903 to i64
  %mul52 = mul nuw nsw i64 %conv, 1000
  %32 = ptrtoint ptr %bt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bt, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul52)
  %cmp236 = icmp ult i64 %mul52, 4294967296
  br i1 %cmp236, label %if.then240, label %if.else246, !prof !13

if.then240:                                       ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #6
  %conv241 = trunc i64 %mul52 to i32
  %div244 = udiv i32 %conv241, %33
  br label %if.end250

if.else246:                                       ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #6
  %34 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %33, i64 %mul52) #7, !srcloc !14
  %asmresult1.i = extractvalue { i64, i64 } %34, 1
  %extract.t869 = trunc i64 %asmresult1.i to i32
  br label %if.end250

if.end250:                                        ; preds = %if.else246, %if.then240
  %v64.0.off0 = phi i32 [ %div244, %if.then240 ], [ %extract.t869, %if.else246 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %v64.0.off0)
  %cmp253 = icmp ugt i32 %v64.0.off0, 50
  br i1 %cmp253, label %if.then255, label %if.end258

if.then255:                                       ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #6
  %v64.0.off0.frozen = freeze i32 %v64.0.off0
  %div256 = udiv i32 %v64.0.off0.frozen, 10
  %35 = mul i32 %div256, 10
  %rem257.decomposed = sub i32 %v64.0.off0.frozen, %35
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %div256, i32 noundef %rem257.decomposed) #8
  br label %cleanup

if.end258:                                        ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #6
  %div259.lhs.trunc = trunc i32 %v64.0.off0 to i8
  %div259.lhs.trunc.frozen = freeze i8 %div259.lhs.trunc
  %div259860 = udiv i8 %div259.lhs.trunc.frozen, 10
  %div259.zext = zext i8 %div259860 to i32
  %36 = mul i8 %div259860, 10
  %rem260861.decomposed = sub i8 %div259.lhs.trunc.frozen, %36
  %rem260.zext = zext i8 %rem260861.decomposed to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %div259.zext, i32 noundef %rem260.zext) #8
  br label %if.end261

if.end261:                                        ; preds = %if.end258, %for.end.if.end261_crit_edge, %land.lhs.true.if.end261_crit_edge
  %best_brp.2837 = phi i32 [ %best_brp.0.lcssa902, %if.end258 ], [ %best_brp.1, %for.end.if.end261_crit_edge ], [ %mul22, %land.lhs.true.if.end261_crit_edge ]
  %best_tseg.2836 = phi i32 [ %best_tseg.0.lcssa901, %if.end258 ], [ %best_tseg.1, %for.end.if.end261_crit_edge ], [ %div771, %land.lhs.true.if.end261_crit_edge ]
  %tseg2.4835 = phi i32 [ %tseg2.0.lcssa900, %if.end258 ], [ %tseg2.3, %for.end.if.end261_crit_edge ], [ %tseg2.2, %land.lhs.true.if.end261_crit_edge ]
  %tseg1.4834 = phi i32 [ %tseg1.0.lcssa899, %if.end258 ], [ %tseg1.3, %for.end.if.end261_crit_edge ], [ %tseg1.2, %land.lhs.true.if.end261_crit_edge ]
  %add.i773 = add i32 %best_tseg.2836, 1
  %mul.i774 = mul i32 %add.i773, %sample_point_nominal.0
  %div.i775 = udiv i32 %mul.i774, 1000
  %sub2.i779 = sub i32 %add.i773, %div.i775
  %37 = ptrtoint ptr %tseg2_min to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tseg2_min, align 4
  %39 = tail call i32 @llvm.umax.i32(i32 %sub2.i779, i32 %38) #4
  %40 = ptrtoint ptr %tseg2_max to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tseg2_max, align 4
  %42 = tail call i32 @llvm.umin.i32(i32 %39, i32 %41) #4
  %sub10.i780 = sub i32 %best_tseg.2836, %42
  %43 = ptrtoint ptr %tseg1_max to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tseg1_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub10.i780, i32 %44)
  %cmp11.i781 = icmp ugt i32 %sub10.i780, %44
  %sub13.i782 = sub i32 %best_tseg.2836, %44
  %tseg2.0.i783 = select i1 %cmp11.i781, i32 %sub13.i782, i32 %42
  %sub15.i784 = sub i32 %add.i773, %tseg2.0.i783
  %mul16.i785 = mul i32 %sub15.i784, 1000
  %div18.i786 = udiv i32 %mul16.i785, %add.i773
  call void @__sanitizer_cov_trace_cmp4(i32 %sample_point_nominal.0, i32 %div18.i786)
  %cmp27.not.not.i787 = icmp ult i32 %sample_point_nominal.0, %div18.i786
  br i1 %cmp27.not.not.i787, label %if.end261.for.inc.i804_crit_edge, label %if.then29.i789

if.end261.for.inc.i804_crit_edge:                 ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i804

if.then29.i789:                                   ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #6
  %sub19.i788 = sub i32 %sample_point_nominal.0, %div18.i786
  %45 = tail call i32 @llvm.abs.i32(i32 %sub19.i788, i1 false) #4
  %46 = tail call i32 @llvm.umin.i32(i32 %sub10.i780, i32 %44) #4
  br label %for.inc.i804

for.inc.i804:                                     ; preds = %if.then29.i789, %if.end261.for.inc.i804_crit_edge
  %tseg1.5 = phi i32 [ %tseg1.4834, %if.end261.for.inc.i804_crit_edge ], [ %46, %if.then29.i789 ]
  %tseg2.5 = phi i32 [ %tseg2.4835, %if.end261.for.inc.i804_crit_edge ], [ %tseg2.0.i783, %if.then29.i789 ]
  %best_sample_point.1.i790 = phi i32 [ 0, %if.end261.for.inc.i804_crit_edge ], [ %div18.i786, %if.then29.i789 ]
  %best_sample_point_error.1.i791 = phi i32 [ -1, %if.end261.for.inc.i804_crit_edge ], [ %45, %if.then29.i789 ]
  %sub2.1.i792 = sub i32 %best_tseg.2836, %div.i775
  %47 = tail call i32 @llvm.umax.i32(i32 %sub2.1.i792, i32 %38) #4
  %48 = tail call i32 @llvm.umin.i32(i32 %47, i32 %41) #4
  %sub10.1.i793 = sub i32 %best_tseg.2836, %48
  call void @__sanitizer_cov_trace_cmp4(i32 %sub10.1.i793, i32 %44)
  %cmp11.1.i794 = icmp ugt i32 %sub10.1.i793, %44
  %tseg2.0.1.i796 = select i1 %cmp11.1.i794, i32 %sub13.i782, i32 %48
  %sub15.1.i797 = sub i32 %add.i773, %tseg2.0.1.i796
  %mul16.1.i798 = mul i32 %sub15.1.i797, 1000
  %div18.1.i799 = udiv i32 %mul16.1.i798, %add.i773
  %sub19.1.i800 = sub i32 %sample_point_nominal.0, %div18.1.i799
  %49 = tail call i32 @llvm.abs.i32(i32 %sub19.1.i800, i1 false) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %sample_point_nominal.0, i32 %div18.1.i799)
  %cmp27.not.1.i801 = icmp uge i32 %sample_point_nominal.0, %div18.1.i799
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %best_sample_point_error.1.i791)
  %cmp28.1.i802 = icmp ult i32 %49, %best_sample_point_error.1.i791
  %or.cond.1.i803 = select i1 %cmp27.not.1.i801, i1 %cmp28.1.i802, i1 false
  %50 = tail call i32 @llvm.umin.i32(i32 %sub10.1.i793, i32 %44) #4
  %tseg1.6 = select i1 %or.cond.1.i803, i32 %50, i32 %tseg1.5
  %tseg2.6 = select i1 %or.cond.1.i803, i32 %tseg2.0.1.i796, i32 %tseg2.5
  %best_sample_point.1.1.i806 = select i1 %or.cond.1.i803, i32 %div18.1.i799, i32 %best_sample_point.1.i790
  %51 = ptrtoint ptr %sample_point to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %best_sample_point.1.1.i806, ptr %sample_point, align 4
  %conv264 = zext i32 %best_brp.2837 to i64
  %mul267 = mul nuw nsw i64 %conv264, 1000000000
  %clock269 = getelementptr i8, ptr %dev, i32 2440
  %52 = ptrtoint ptr %clock269 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %clock269, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul267)
  %cmp471 = icmp ult i64 %mul267, 4294967296
  br i1 %cmp471, label %if.then479, label %if.else485, !prof !13

if.then479:                                       ; preds = %for.inc.i804
  call void @__sanitizer_cov_trace_pc() #6
  %conv480 = trunc i64 %mul267 to i32
  %div483 = udiv i32 %conv480, %53
  br label %if.end489

if.else485:                                       ; preds = %for.inc.i804
  call void @__sanitizer_cov_trace_pc() #6
  %54 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %53, i64 %mul267) #7, !srcloc !14
  %asmresult1.i815 = extractvalue { i64, i64 } %54, 1
  %extract.t865 = trunc i64 %asmresult1.i815 to i32
  br label %if.end489

if.end489:                                        ; preds = %if.else485, %if.then479
  %v64.1.off0 = phi i32 [ %div483, %if.then479 ], [ %extract.t865, %if.else485 ]
  %tq = getelementptr inbounds %struct.can_bittiming, ptr %bt, i32 0, i32 2
  %55 = ptrtoint ptr %tq to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %v64.1.off0, ptr %tq, align 4
  %div492768 = lshr i32 %tseg1.6, 1
  %prop_seg = getelementptr inbounds %struct.can_bittiming, ptr %bt, i32 0, i32 3
  %56 = ptrtoint ptr %prop_seg to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %div492768, ptr %prop_seg, align 4
  %sub494 = sub i32 %tseg1.6, %div492768
  %phase_seg1 = getelementptr inbounds %struct.can_bittiming, ptr %bt, i32 0, i32 4
  %57 = ptrtoint ptr %phase_seg1 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %sub494, ptr %phase_seg1, align 4
  %phase_seg2 = getelementptr inbounds %struct.can_bittiming, ptr %bt, i32 0, i32 5
  %58 = ptrtoint ptr %phase_seg2 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %tseg2.6, ptr %phase_seg2, align 4
  %sjw = getelementptr inbounds %struct.can_bittiming, ptr %bt, i32 0, i32 6
  %59 = ptrtoint ptr %sjw to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %sjw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool495.not = icmp eq i32 %60, 0
  br i1 %tobool495.not, label %if.end489.if.end515.sink.split_crit_edge, label %lor.lhs.false496

if.end489.if.end515.sink.split_crit_edge:         ; preds = %if.end489
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end515.sink.split

lor.lhs.false496:                                 ; preds = %if.end489
  %sjw_max = getelementptr inbounds %struct.can_bittiming_const, ptr %btc, i32 0, i32 5
  %61 = ptrtoint ptr %sjw_max to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %sjw_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool497.not = icmp eq i32 %62, 0
  br i1 %tobool497.not, label %lor.lhs.false496.if.end515.sink.split_crit_edge, label %if.else500

lor.lhs.false496.if.end515.sink.split_crit_edge:  ; preds = %lor.lhs.false496
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end515.sink.split

if.else500:                                       ; preds = %lor.lhs.false496
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp503 = icmp ugt i32 %60, %62
  br i1 %cmp503, label %if.then505, label %if.else500.if.end508_crit_edge

if.else500.if.end508_crit_edge:                   ; preds = %if.else500
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end508

if.then505:                                       ; preds = %if.else500
  call void @__sanitizer_cov_trace_pc() #6
  %63 = ptrtoint ptr %sjw to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %sjw, align 4
  br label %if.end508

if.end508:                                        ; preds = %if.then505, %if.else500.if.end508_crit_edge
  %64 = ptrtoint ptr %sjw to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %sjw, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %tseg2.6, i32 %65)
  %cmp510 = icmp ult i32 %tseg2.6, %65
  br i1 %cmp510, label %if.end508.if.end515.sink.split_crit_edge, label %if.end508.if.end515_crit_edge

if.end508.if.end515_crit_edge:                    ; preds = %if.end508
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end515

if.end508.if.end515.sink.split_crit_edge:         ; preds = %if.end508
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end515.sink.split

if.end515.sink.split:                             ; preds = %if.end508.if.end515.sink.split_crit_edge, %lor.lhs.false496.if.end515.sink.split_crit_edge, %if.end489.if.end515.sink.split_crit_edge
  %tseg2.6.sink = phi i32 [ 1, %lor.lhs.false496.if.end515.sink.split_crit_edge ], [ 1, %if.end489.if.end515.sink.split_crit_edge ], [ %tseg2.6, %if.end508.if.end515.sink.split_crit_edge ]
  %66 = ptrtoint ptr %sjw to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %tseg2.6.sink, ptr %sjw, align 4
  br label %if.end515

if.end515:                                        ; preds = %if.end515.sink.split, %if.end508.if.end515_crit_edge
  %brp516 = getelementptr inbounds %struct.can_bittiming, ptr %bt, i32 0, i32 7
  %67 = ptrtoint ptr %brp516 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %best_brp.2837, ptr %brp516, align 4
  %68 = ptrtoint ptr %clock269 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %clock269, align 4
  %add520 = add i32 %tseg1.6, 1
  %add521 = add i32 %add520, %tseg2.6
  %mul522 = mul i32 %add521, %best_brp.2837
  %div523 = udiv i32 %69, %mul522
  %70 = ptrtoint ptr %bt to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %div523, ptr %bt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end515, %if.then255
  %retval.0 = phi i32 [ -33, %if.then255 ], [ 0, %if.end515 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @can_calc_tdco(ptr nocapture noundef writeonly %tdc, ptr noundef readonly %tdc_const, ptr nocapture noundef readonly %dbt, ptr nocapture noundef %ctrlmode, i32 noundef %ctrlmode_supported) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tdc_const, null
  %and = and i32 %ctrlmode_supported, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.if.end13_crit_edge, label %if.end

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctrlmode, align 4
  %and2 = and i32 %1, -1537
  store i32 %and2, ptr %ctrlmode, align 4
  %brp = getelementptr inbounds %struct.can_bittiming, ptr %dbt, i32 0, i32 7
  %2 = ptrtoint ptr %brp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %brp, align 4
  %.off = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then6, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then6:                                         ; preds = %if.end
  %prop_seg = getelementptr inbounds %struct.can_bittiming, ptr %dbt, i32 0, i32 3
  %4 = ptrtoint ptr %prop_seg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %prop_seg, align 4
  %add = add i32 %5, 1
  %phase_seg1 = getelementptr inbounds %struct.can_bittiming, ptr %dbt, i32 0, i32 4
  %6 = ptrtoint ptr %phase_seg1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phase_seg1, align 4
  %add7 = add i32 %add, %7
  %mul = mul i32 %add7, %3
  %tdco_min = getelementptr inbounds %struct.can_tdc_const, ptr %tdc_const, i32 0, i32 2
  %8 = ptrtoint ptr %tdco_min to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tdco_min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %9)
  %cmp9 = icmp ult i32 %mul, %9
  br i1 %cmp9, label %if.then6.if.end13_crit_edge, label %if.end11

if.then6.if.end13_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.end11:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  %tdco_max = getelementptr inbounds %struct.can_tdc_const, ptr %tdc_const, i32 0, i32 3
  %10 = ptrtoint ptr %tdco_max to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tdco_max, align 4
  %12 = tail call i32 @llvm.umin.i32(i32 %mul, i32 %11)
  %tdco = getelementptr inbounds %struct.can_tdc, ptr %tdc, i32 0, i32 1
  %13 = ptrtoint ptr %tdco to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %tdco, align 4
  %14 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ctrlmode, align 4
  %or = or i32 %15, 512
  store i32 %or, ptr %ctrlmode, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end11, %if.then6.if.end13_crit_edge, %if.end.if.end13_crit_edge, %entry.if.end13_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @can_get_bittiming(ptr noundef %dev, ptr nocapture noundef %bt, ptr noundef readonly %btc, ptr noundef readonly %bitrate_const, i32 noundef %bitrate_const_cnt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tq = getelementptr inbounds %struct.can_bittiming, ptr %bt, i32 0, i32 2
  %0 = ptrtoint ptr %tq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %2 = ptrtoint ptr %bt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bt, align 4
  br i1 %tobool.not, label %land.lhs.true, label %land.lhs.true6

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  %tobool3.not = icmp eq ptr %btc, null
  %or.cond = or i1 %tobool3.not, %tobool1.not
  br i1 %or.cond, label %land.lhs.true16, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @can_calc_bittiming(ptr noundef %dev, ptr noundef %bt, ptr noundef nonnull %btc)
  br label %if.end25

land.lhs.true6:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool8.not = icmp ne i32 %3, 0
  %tobool10.not = icmp eq ptr %btc, null
  %or.cond40 = or i1 %tobool10.not, %tobool8.not
  br i1 %or.cond40, label %land.lhs.true6.if.end25_crit_edge, label %if.then11

land.lhs.true6.if.end25_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then11:                                        ; preds = %land.lhs.true6
  %prop_seg.i = getelementptr inbounds %struct.can_bittiming, ptr %bt, i32 0, i32 3
  %4 = ptrtoint ptr %prop_seg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %prop_seg.i, align 4
  %phase_seg1.i = getelementptr inbounds %struct.can_bittiming, ptr %bt, i32 0, i32 4
  %6 = ptrtoint ptr %phase_seg1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phase_seg1.i, align 4
  %add.i = add i32 %7, %5
  %sjw.i = getelementptr inbounds %struct.can_bittiming, ptr %bt, i32 0, i32 6
  %8 = ptrtoint ptr %sjw.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sjw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then11.if.end.i_crit_edge

if.then11.if.end.i_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %sjw.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %sjw.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then11.if.end.i_crit_edge
  %11 = ptrtoint ptr %sjw.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sjw.i, align 4
  %sjw_max.i = getelementptr inbounds %struct.can_bittiming_const, ptr %btc, i32 0, i32 5
  %13 = ptrtoint ptr %sjw_max.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sjw_max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp.i = icmp ugt i32 %12, %14
  br i1 %cmp.i, label %if.end.i.if.end25_crit_edge, label %lor.lhs.false.i

if.end.i.if.end25_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

lor.lhs.false.i:                                  ; preds = %if.end.i
  %tseg1_min.i = getelementptr inbounds %struct.can_bittiming_const, ptr %btc, i32 0, i32 1
  %15 = ptrtoint ptr %tseg1_min.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tseg1_min.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %16)
  %cmp3.i = icmp ult i32 %add.i, %16
  br i1 %cmp3.i, label %lor.lhs.false.i.if.end25_crit_edge, label %lor.lhs.false4.i

lor.lhs.false.i.if.end25_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %tseg1_max.i = getelementptr inbounds %struct.can_bittiming_const, ptr %btc, i32 0, i32 2
  %17 = ptrtoint ptr %tseg1_max.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tseg1_max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %18)
  %cmp5.i = icmp ugt i32 %add.i, %18
  br i1 %cmp5.i, label %lor.lhs.false4.i.if.end25_crit_edge, label %lor.lhs.false6.i

lor.lhs.false4.i.if.end25_crit_edge:              ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false4.i
  %phase_seg2.i = getelementptr inbounds %struct.can_bittiming, ptr %bt, i32 0, i32 5
  %19 = ptrtoint ptr %phase_seg2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %phase_seg2.i, align 4
  %tseg2_min.i = getelementptr inbounds %struct.can_bittiming_const, ptr %btc, i32 0, i32 3
  %21 = ptrtoint ptr %tseg2_min.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tseg2_min.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp7.i = icmp ult i32 %20, %22
  br i1 %cmp7.i, label %lor.lhs.false6.i.if.end25_crit_edge, label %lor.lhs.false8.i

lor.lhs.false6.i.if.end25_crit_edge:              ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false6.i
  %tseg2_max.i = getelementptr inbounds %struct.can_bittiming_const, ptr %btc, i32 0, i32 4
  %23 = ptrtoint ptr %tseg2_max.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tseg2_max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %24)
  %cmp10.i = icmp ugt i32 %20, %24
  br i1 %cmp10.i, label %lor.lhs.false8.i.if.end25_crit_edge, label %if.end12.i

lor.lhs.false8.i.if.end25_crit_edge:              ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.end12.i:                                       ; preds = %lor.lhs.false8.i
  %clock.i = getelementptr i8, ptr %dev, i32 2440
  %25 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %clock.i, align 4
  %conv.i = zext i32 %26 to i64
  %conv13.i = zext i32 %1 to i64
  %mul.i = mul nuw i64 %conv.i, %conv13.i
  %brp_inc.i = getelementptr inbounds %struct.can_bittiming_const, ptr %btc, i32 0, i32 8
  %27 = ptrtoint ptr %brp_inc.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %brp_inc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp14.i = icmp ugt i32 %28, 1
  br i1 %cmp14.i, label %if.else188.i, label %if.end12.i.if.end427.i_crit_edge

if.end12.i.if.end427.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end427.i

if.else188.i:                                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i)
  %cmp190.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp190.i, label %if.then194.i, label %if.else200.i, !prof !13

if.then194.i:                                     ; preds = %if.else188.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv195.i = trunc i64 %mul.i to i32
  %div198.i = udiv i32 %conv195.i, %28
  %conv199.i = zext i32 %div198.i to i64
  br label %if.end427.i

if.else200.i:                                     ; preds = %if.else188.i
  call void @__sanitizer_cov_trace_pc() #6
  %29 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %28, i64 %mul.i) #7, !srcloc !14
  %asmresult1.i.i = extractvalue { i64, i64 } %29, 1
  br label %if.end427.i

if.end427.i:                                      ; preds = %if.else200.i, %if.then194.i, %if.end12.i.if.end427.i_crit_edge
  %brp64.0.i = phi i64 [ %conv199.i, %if.then194.i ], [ %asmresult1.i.i, %if.else200.i ], [ %mul.i, %if.end12.i.if.end427.i_crit_edge ]
  %add207.i = add i64 %brp64.0.i, 499999999
  %30 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %add207.i, i32 0) #7, !srcloc !15
  %asmresult.i.i = extractvalue { i64, i32 } %30, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %30, 1
  %31 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %add207.i, i64 %asmresult.i.i, i32 %asmresult4.i.i) #7, !srcloc !16
  %asmresult10.i.i = extractvalue { i64, i32 } %31, 0
  %storemerge.i = lshr i64 %asmresult10.i.i, 29
  %32 = tail call i32 @llvm.umax.i32(i32 %28, i32 1) #4
  %33 = trunc i64 %storemerge.i to i32
  %conv437.i = mul i32 %32, %33
  %brp.i = getelementptr inbounds %struct.can_bittiming, ptr %bt, i32 0, i32 7
  %34 = ptrtoint ptr %brp.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv437.i, ptr %brp.i, align 4
  %brp_min.i = getelementptr inbounds %struct.can_bittiming_const, ptr %btc, i32 0, i32 6
  %35 = ptrtoint ptr %brp_min.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %brp_min.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %conv437.i)
  %cmp439.i = icmp ugt i32 %36, %conv437.i
  br i1 %cmp439.i, label %if.end427.i.if.end25_crit_edge, label %lor.lhs.false441.i

if.end427.i.if.end25_crit_edge:                   ; preds = %if.end427.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

lor.lhs.false441.i:                               ; preds = %if.end427.i
  %brp_max.i = getelementptr inbounds %struct.can_bittiming_const, ptr %btc, i32 0, i32 7
  %37 = ptrtoint ptr %brp_max.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %brp_max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %conv437.i)
  %cmp443.i = icmp ult i32 %38, %conv437.i
  br i1 %cmp443.i, label %lor.lhs.false441.i.if.end25_crit_edge, label %if.end446.i

lor.lhs.false441.i.if.end25_crit_edge:            ; preds = %lor.lhs.false441.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.end446.i:                                      ; preds = %lor.lhs.false441.i
  call void @__sanitizer_cov_trace_pc() #6
  %add451.i = add i32 %add.i, 1
  %add452.i = add i32 %add451.i, %20
  %39 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %clock.i, align 4
  %mul456.i = mul i32 %conv437.i, %add452.i
  %div457.i = udiv i32 %40, %mul456.i
  %41 = ptrtoint ptr %bt to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %div457.i, ptr %bt, align 4
  %42 = mul i32 %add.i, 1000
  %mul459.i = add i32 %42, 1000
  %div460.i = udiv i32 %mul459.i, %add452.i
  %sample_point.i = getelementptr inbounds %struct.can_bittiming, ptr %bt, i32 0, i32 1
  %43 = ptrtoint ptr %sample_point.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %div460.i, ptr %sample_point.i, align 4
  br label %if.end25

land.lhs.true16:                                  ; preds = %land.lhs.true
  %44 = ptrtoint ptr %bt to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool18.not = icmp eq i32 %45, 0
  %tobool20.not = icmp eq ptr %bitrate_const, null
  %or.cond41 = or i1 %tobool20.not, %tobool18.not
  br i1 %or.cond41, label %land.lhs.true16.if.end25_crit_edge, label %if.then21

land.lhs.true16.if.end25_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then21:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bitrate_const_cnt)
  %cmp10.not.i = icmp eq i32 %bitrate_const_cnt, 0
  br i1 %cmp10.not.i, label %if.then21.can_validate_bitrate.exit_crit_edge, label %if.then21.for.body.i_crit_edge

if.then21.for.body.i_crit_edge:                   ; preds = %if.then21
  br label %for.body.i

if.then21.can_validate_bitrate.exit_crit_edge:    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  br label %can_validate_bitrate.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then21.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then21.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %bitrate_const, i32 %i.011.i
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp1.i = icmp eq i32 %45, %47
  br i1 %cmp1.i, label %for.body.i.can_validate_bitrate.exit_crit_edge, label %for.inc.i

for.body.i.can_validate_bitrate.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %can_validate_bitrate.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %bitrate_const_cnt
  br i1 %exitcond.not.i, label %for.inc.i.can_validate_bitrate.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.can_validate_bitrate.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %can_validate_bitrate.exit

can_validate_bitrate.exit:                        ; preds = %for.inc.i.can_validate_bitrate.exit_crit_edge, %for.body.i.can_validate_bitrate.exit_crit_edge, %if.then21.can_validate_bitrate.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.then21.can_validate_bitrate.exit_crit_edge ], [ %bitrate_const_cnt, %for.inc.i.can_validate_bitrate.exit_crit_edge ], [ %i.011.i, %for.body.i.can_validate_bitrate.exit_crit_edge ]
  %bitrate_const_cnt2.i = getelementptr i8, ptr %dev, i32 2420
  %48 = ptrtoint ptr %bitrate_const_cnt2.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bitrate_const_cnt2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %49)
  %cmp3.not.i = icmp ult i32 %i.0.lcssa.i, %49
  %..i = select i1 %cmp3.not.i, i32 0, i32 -22
  br label %if.end25

if.end25:                                         ; preds = %can_validate_bitrate.exit, %land.lhs.true16.if.end25_crit_edge, %if.end446.i, %lor.lhs.false441.i.if.end25_crit_edge, %if.end427.i.if.end25_crit_edge, %lor.lhs.false8.i.if.end25_crit_edge, %lor.lhs.false6.i.if.end25_crit_edge, %lor.lhs.false4.i.if.end25_crit_edge, %lor.lhs.false.i.if.end25_crit_edge, %if.end.i.if.end25_crit_edge, %land.lhs.true6.if.end25_crit_edge, %if.then
  %err.0 = phi i32 [ %..i, %can_validate_bitrate.exit ], [ %call, %if.then ], [ -22, %land.lhs.true16.if.end25_crit_edge ], [ 0, %if.end446.i ], [ -34, %lor.lhs.false8.i.if.end25_crit_edge ], [ -34, %lor.lhs.false6.i.if.end25_crit_edge ], [ -34, %lor.lhs.false4.i.if.end25_crit_edge ], [ -34, %lor.lhs.false.i.if.end25_crit_edge ], [ -34, %if.end.i.if.end25_crit_edge ], [ -22, %lor.lhs.false441.i.if.end25_crit_edge ], [ -22, %if.end427.i.if.end25_crit_edge ], [ -22, %land.lhs.true6.if.end25_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind readnone }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/can/dev/bittiming.c", i32 138, i32 8}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/can/dev/bittiming.c", i32 142, i32 20}
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
!14 = !{i64 2147989322, i64 2147989602, i64 2147989936, i64 2147990270}
!15 = !{i64 481594, i64 481621, i64 481643, i64 481671}
!16 = !{i64 482002, i64 482029, i64 482062, i64 482083, i64 482110, i64 482136}
