; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/disp/mdp_format.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/mdp_format.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mdp_format = type { %struct.msm_format, i32, i32, i32, i32, [4 x i8], i8, i8, i8, i8, i32, i32, i8 }
%struct.msm_format = type { i32 }
%struct.csc_cfg = type { i32, [9 x i32], [3 x i32], [3 x i32], [6 x i32], [6 x i32] }

@formats = internal constant { [22 x %struct.mdp_format], [208 x i8] } { [22 x %struct.mdp_format] [%struct.mdp_format { %struct.msm_format { i32 875713089 }, i32 3, i32 3, i32 3, i32 3, [4 x i8] c"\01\00\02\03", i8 1, i8 1, i8 4, i8 4, i32 0, i32 0, i8 0 }, %struct.mdp_format { %struct.msm_format { i32 875708993 }, i32 3, i32 3, i32 3, i32 3, [4 x i8] c"\02\00\01\03", i8 1, i8 1, i8 4, i8 4, i32 0, i32 0, i8 0 }, %struct.mdp_format { %struct.msm_format { i32 875708754 }, i32 3, i32 3, i32 3, i32 3, [4 x i8] c"\03\01\00\02", i8 1, i8 1, i8 4, i8 4, i32 0, i32 0, i8 0 }, %struct.mdp_format { %struct.msm_format { i32 875708738 }, i32 3, i32 3, i32 3, i32 3, [4 x i8] c"\03\02\00\01", i8 1, i8 1, i8 4, i8 4, i32 0, i32 0, i8 0 }, %struct.mdp_format { %struct.msm_format { i32 875713112 }, i32 3, i32 3, i32 3, i32 3, [4 x i8] c"\01\00\02\03", i8 0, i8 1, i8 4, i8 4, i32 0, i32 0, i8 0 }, %struct.mdp_format { %struct.msm_format { i32 875709016 }, i32 3, i32 3, i32 3, i32 3, [4 x i8] c"\02\00\01\03", i8 0, i8 1, i8 4, i8 4, i32 0, i32 0, i8 0 }, %struct.mdp_format { %struct.msm_format { i32 875714642 }, i32 3, i32 3, i32 3, i32 3, [4 x i8] c"\03\01\00\02", i8 0, i8 1, i8 4, i8 4, i32 0, i32 0, i8 0 }, %struct.mdp_format { %struct.msm_format { i32 875714626 }, i32 3, i32 3, i32 3, i32 3, [4 x i8] c"\03\02\00\01", i8 0, i8 1, i8 4, i8 4, i32 0, i32 0, i8 0 }, %struct.mdp_format { %struct.msm_format { i32 875710290 }, i32 3, i32 3, i32 3, i32 0, [4 x i8] c"\01\00\02\00", i8 0, i8 1, i8 3, i8 3, i32 0, i32 0, i8 0 }, %struct.mdp_format { %struct.msm_format { i32 875710274 }, i32 3, i32 3, i32 3, i32 0, [4 x i8] c"\02\00\01\00", i8 0, i8 1, i8 3, i8 3, i32 0, i32 0, i8 0 }, %struct.mdp_format { %struct.msm_format { i32 909199186 }, i32 1, i32 2, i32 1, i32 0, [4 x i8] c"\01\00\02\00", i8 0, i8 1, i8 2, i8 3, i32 0, i32 0, i8 0 }, %struct.mdp_format { %struct.msm_format { i32 909199170 }, i32 1, i32 2, i32 1, i32 0, [4 x i8] c"\02\00\01\00", i8 0, i8 1, i8 2, i8 3, i32 0, i32 0, i8 0 }, %struct.mdp_format { %struct.msm_format { i32 842094158 }, i32 3, i32 3, i32 3, i32 0, [4 x i8] c"\01\02\00\00", i8 0, i8 1, i8 2, i8 2, i32 2, i32 3, i8 1 }, %struct.mdp_format { %struct.msm_format { i32 825382478 }, i32 3, i32 3, i32 3, i32 0, [4 x i8] c"\02\01\00\00", i8 0, i8 1, i8 2, i8 2, i32 2, i32 3, i8 1 }, %struct.mdp_format { %struct.msm_format { i32 909203022 }, i32 3, i32 3, i32 3, i32 0, [4 x i8] c"\01\02\00\00", i8 0, i8 1, i8 2, i8 2, i32 2, i32 1, i8 1 }, %struct.mdp_format { %struct.msm_format { i32 825644622 }, i32 3, i32 3, i32 3, i32 0, [4 x i8] c"\02\01\00\00", i8 0, i8 1, i8 2, i8 2, i32 2, i32 1, i8 1 }, %struct.mdp_format { %struct.msm_format { i32 1498765654 }, i32 3, i32 3, i32 3, i32 0, [4 x i8] c"\02\00\01\00", i8 0, i8 1, i8 2, i8 4, i32 0, i32 1, i8 1 }, %struct.mdp_format { %struct.msm_format { i32 1498831189 }, i32 3, i32 3, i32 3, i32 0, [4 x i8] c"\01\00\02\00", i8 0, i8 1, i8 2, i8 4, i32 0, i32 1, i8 1 }, %struct.mdp_format { %struct.msm_format { i32 1448695129 }, i32 3, i32 3, i32 3, i32 0, [4 x i8] c"\00\01\00\02", i8 0, i8 1, i8 2, i8 4, i32 0, i32 1, i8 1 }, %struct.mdp_format { %struct.msm_format { i32 1431918169 }, i32 3, i32 3, i32 3, i32 0, [4 x i8] c"\00\02\00\01", i8 0, i8 1, i8 2, i8 4, i32 0, i32 1, i8 1 }, %struct.mdp_format { %struct.msm_format { i32 842093913 }, i32 3, i32 3, i32 3, i32 0, [4 x i8] c"\02\01\00\00", i8 0, i8 1, i8 1, i8 1, i32 1, i32 3, i8 1 }, %struct.mdp_format { %struct.msm_format { i32 842094169 }, i32 3, i32 3, i32 3, i32 0, [4 x i8] c"\01\02\00\00", i8 0, i8 1, i8 1, i8 1, i32 1, i32 3, i8 1 }], [208 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/msm/disp/mdp_format.c\00", [58 x i8] zeroinitializer }, align 32
@csc_convert = internal global { [4 x %struct.csc_cfg], [96 x i8] } { [4 x %struct.csc_cfg] [%struct.csc_cfg { i32 0, [9 x i32] [i32 512, i32 0, i32 0, i32 0, i32 512, i32 0, i32 0, i32 0, i32 512], [3 x i32] zeroinitializer, [3 x i32] zeroinitializer, [6 x i32] [i32 0, i32 255, i32 0, i32 255, i32 0, i32 255], [6 x i32] [i32 0, i32 255, i32 0, i32 255, i32 0, i32 255] }, %struct.csc_cfg { i32 1, [9 x i32] [i32 596, i32 0, i32 817, i32 596, i32 65335, i32 65120, i32 596, i32 1033, i32 0], [3 x i32] [i32 65520, i32 65408, i32 65408], [3 x i32] zeroinitializer, [6 x i32] [i32 0, i32 255, i32 0, i32 255, i32 0, i32 255], [6 x i32] [i32 0, i32 255, i32 0, i32 255, i32 0, i32 255] }, %struct.csc_cfg { i32 2, [9 x i32] [i32 131, i32 258, i32 50, i32 8117, i32 8044, i32 225, i32 225, i32 8005, i32 8156], [3 x i32] zeroinitializer, [3 x i32] [i32 16, i32 128, i32 128], [6 x i32] [i32 0, i32 255, i32 0, i32 255, i32 0, i32 255], [6 x i32] [i32 16, i32 235, i32 16, i32 240, i32 16, i32 240] }, %struct.csc_cfg { i32 3, [9 x i32] [i32 512, i32 0, i32 0, i32 0, i32 512, i32 0, i32 0, i32 0, i32 512], [3 x i32] zeroinitializer, [3 x i32] zeroinitializer, [6 x i32] [i32 0, i32 255, i32 0, i32 255, i32 0, i32 255], [6 x i32] [i32 0, i32 255, i32 0, i32 255, i32 0, i32 255] }], [96 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [24 x i64] [i64 22, i64 32, i64 825382478, i64 825644622, i64 842093913, i64 842094158, i64 842094169, i64 875708738, i64 875708754, i64 875708993, i64 875709016, i64 875710274, i64 875710290, i64 875713089, i64 875713112, i64 875714626, i64 875714642, i64 909199170, i64 909199186, i64 909203022, i64 1431918169, i64 1448695129, i64 1498765654, i64 1498831189]
@___asan_gen_.1 = private unnamed_addr constant [8 x i8] c"formats\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 85, i32 32 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 177, i32 6 }
@___asan_gen_.7 = private unnamed_addr constant [12 x i8] c"csc_convert\00", align 1
@___asan_gen_.8 = private constant [41 x i8] c"../drivers/gpu/drm/msm/disp/mdp_format.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 12, i32 23 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @formats, ptr @.str, ptr @csc_convert], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @formats to i32), i32 880, i32 1088, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csc_convert to i32), i32 448, i32 544, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local i32 @mdp_get_formats(ptr nocapture noundef writeonly %pixel_formats, i32 noundef %max_formats, i1 noundef zeroext %rgb_only) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rgb_only.not = xor i1 %rgb_only, true
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.015 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [22 x %struct.mdp_format], ptr @formats, i32 0, i32 %i.015
  call void @__sanitizer_cov_trace_cmp4(i32 %i.015, i32 %max_formats)
  %cmp1 = icmp eq i32 %i.015, %max_formats
  br i1 %cmp1, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end:                                           ; preds = %for.body
  %0 = and i32 %i.015, 536870908
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %0)
  %tobool2.not = icmp ult i32 %0, 12
  %or.cond = select i1 %rgb_only.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %for.inc, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc:                                          ; preds = %if.end
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %arrayidx5 = getelementptr i32, ptr %pixel_formats, i32 %i.015
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %arrayidx5, align 4
  %inc = add nuw nsw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc, 22
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge, %for.body.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %i.015, %if.end.for.end_crit_edge ], [ %max_formats, %for.body.for.end_crit_edge ], [ 22, %for.inc.for.end_crit_edge ]
  ret i32 %i.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mdp_get_format(ptr nocapture noundef readnone %kms, i32 noundef %format, i64 noundef %modifier) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %format to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %format, label %for.cond.21 [
    i32 875713089, label %entry.cleanup3_crit_edge
    i32 875708993, label %cleanup3.fold.split
    i32 875708754, label %cleanup3.fold.split8
    i32 875708738, label %cleanup3.fold.split9
    i32 875713112, label %cleanup3.fold.split10
    i32 875709016, label %cleanup3.fold.split11
    i32 875714642, label %cleanup3.fold.split12
    i32 875714626, label %cleanup3.fold.split13
    i32 875710290, label %cleanup3.fold.split14
    i32 875710274, label %cleanup3.fold.split15
    i32 909199186, label %cleanup3.fold.split16
    i32 909199170, label %cleanup3.fold.split17
    i32 842094158, label %cleanup3.fold.split18
    i32 825382478, label %cleanup3.fold.split19
    i32 909203022, label %cleanup3.fold.split20
    i32 825644622, label %cleanup3.fold.split21
    i32 1498765654, label %cleanup3.fold.split22
    i32 1498831189, label %cleanup3.fold.split23
    i32 1448695129, label %cleanup3.fold.split24
    i32 1431918169, label %cleanup3.fold.split25
    i32 842093913, label %cleanup3.fold.split26
    i32 842094169, label %cleanup3.fold.split27
  ]

entry.cleanup3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup3

for.cond.21:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup3

cleanup3.fold.split:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup3

cleanup3.fold.split8:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup3

cleanup3.fold.split9:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup3

cleanup3.fold.split10:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup3

cleanup3.fold.split11:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup3

cleanup3.fold.split12:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup3

cleanup3.fold.split13:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup3

cleanup3.fold.split14:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup3

cleanup3.fold.split15:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup3

cleanup3.fold.split16:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup3

cleanup3.fold.split17:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup3

cleanup3.fold.split18:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup3

cleanup3.fold.split19:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup3

cleanup3.fold.split20:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup3

cleanup3.fold.split21:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup3

cleanup3.fold.split22:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup3

cleanup3.fold.split23:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup3

cleanup3.fold.split24:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup3

cleanup3.fold.split25:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup3

cleanup3.fold.split26:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup3

cleanup3.fold.split27:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup3

cleanup3:                                         ; preds = %cleanup3.fold.split27, %cleanup3.fold.split26, %cleanup3.fold.split25, %cleanup3.fold.split24, %cleanup3.fold.split23, %cleanup3.fold.split22, %cleanup3.fold.split21, %cleanup3.fold.split20, %cleanup3.fold.split19, %cleanup3.fold.split18, %cleanup3.fold.split17, %cleanup3.fold.split16, %cleanup3.fold.split15, %cleanup3.fold.split14, %cleanup3.fold.split13, %cleanup3.fold.split12, %cleanup3.fold.split11, %cleanup3.fold.split10, %cleanup3.fold.split9, %cleanup3.fold.split8, %cleanup3.fold.split, %for.cond.21, %entry.cleanup3_crit_edge
  %retval.2 = phi ptr [ @formats, %entry.cleanup3_crit_edge ], [ null, %for.cond.21 ], [ getelementptr inbounds ([22 x %struct.mdp_format], ptr @formats, i32 0, i32 1), %cleanup3.fold.split ], [ getelementptr inbounds ([22 x %struct.mdp_format], ptr @formats, i32 0, i32 2), %cleanup3.fold.split8 ], [ getelementptr inbounds ([22 x %struct.mdp_format], ptr @formats, i32 0, i32 3), %cleanup3.fold.split9 ], [ getelementptr inbounds ([22 x %struct.mdp_format], ptr @formats, i32 0, i32 4), %cleanup3.fold.split10 ], [ getelementptr inbounds ([22 x %struct.mdp_format], ptr @formats, i32 0, i32 5), %cleanup3.fold.split11 ], [ getelementptr inbounds ([22 x %struct.mdp_format], ptr @formats, i32 0, i32 6), %cleanup3.fold.split12 ], [ getelementptr inbounds ([22 x %struct.mdp_format], ptr @formats, i32 0, i32 7), %cleanup3.fold.split13 ], [ getelementptr inbounds ([22 x %struct.mdp_format], ptr @formats, i32 0, i32 8), %cleanup3.fold.split14 ], [ getelementptr inbounds ([22 x %struct.mdp_format], ptr @formats, i32 0, i32 9), %cleanup3.fold.split15 ], [ getelementptr inbounds ([22 x %struct.mdp_format], ptr @formats, i32 0, i32 10), %cleanup3.fold.split16 ], [ getelementptr inbounds ([22 x %struct.mdp_format], ptr @formats, i32 0, i32 11), %cleanup3.fold.split17 ], [ getelementptr inbounds ([22 x %struct.mdp_format], ptr @formats, i32 0, i32 12), %cleanup3.fold.split18 ], [ getelementptr inbounds ([22 x %struct.mdp_format], ptr @formats, i32 0, i32 13), %cleanup3.fold.split19 ], [ getelementptr inbounds ([22 x %struct.mdp_format], ptr @formats, i32 0, i32 14), %cleanup3.fold.split20 ], [ getelementptr inbounds ([22 x %struct.mdp_format], ptr @formats, i32 0, i32 15), %cleanup3.fold.split21 ], [ getelementptr inbounds ([22 x %struct.mdp_format], ptr @formats, i32 0, i32 16), %cleanup3.fold.split22 ], [ getelementptr inbounds ([22 x %struct.mdp_format], ptr @formats, i32 0, i32 17), %cleanup3.fold.split23 ], [ getelementptr inbounds ([22 x %struct.mdp_format], ptr @formats, i32 0, i32 18), %cleanup3.fold.split24 ], [ getelementptr inbounds ([22 x %struct.mdp_format], ptr @formats, i32 0, i32 19), %cleanup3.fold.split25 ], [ getelementptr inbounds ([22 x %struct.mdp_format], ptr @formats, i32 0, i32 20), %cleanup3.fold.split26 ], [ getelementptr inbounds ([22 x %struct.mdp_format], ptr @formats, i32 0, i32 21), %cleanup3.fold.split27 ]
  ret ptr %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mdp_get_default_csc_cfg(i32 noundef %type) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type)
  %cmp = icmp ugt i32 %type, 3
  br i1 %cmp, label %do.end, label %if.end21, !prof !15

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 177, i32 noundef 9, ptr noundef null) #4
  br label %return

if.end21:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx = getelementptr [4 x %struct.csc_cfg], ptr @csc_convert, i32 0, i32 %type
  br label %return

return:                                           ; preds = %if.end21, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %arrayidx, %if.end21 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/disp/mdp_format.c", i32 177, i32 6}
!2 = !{ptr @formats, !3, !"formats", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/disp/mdp_format.c", i32 85, i32 32}
!4 = !{ptr @csc_convert, !5, !"csc_convert", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/disp/mdp_format.c", i32 12, i32 23}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"branch_weights", i32 1, i32 2000}
