; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_afmt.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_afmt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amdgpu_afmt_acr = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@amdgpu_afmt_predefined_acr = internal constant { [10 x %struct.amdgpu_afmt_acr], [72 x i8] } { [10 x %struct.amdgpu_afmt_acr] [%struct.amdgpu_afmt_acr { i32 25175, i32 4096, i32 25175, i32 28224, i32 125875, i32 6144, i32 25175 }, %struct.amdgpu_afmt_acr { i32 25200, i32 4096, i32 25200, i32 6272, i32 28000, i32 6144, i32 25200 }, %struct.amdgpu_afmt_acr { i32 27000, i32 4096, i32 27000, i32 6272, i32 30000, i32 6144, i32 27000 }, %struct.amdgpu_afmt_acr { i32 27027, i32 4096, i32 27027, i32 6272, i32 30030, i32 6144, i32 27027 }, %struct.amdgpu_afmt_acr { i32 54000, i32 4096, i32 54000, i32 6272, i32 60000, i32 6144, i32 54000 }, %struct.amdgpu_afmt_acr { i32 54054, i32 4096, i32 54054, i32 6272, i32 60060, i32 6144, i32 54054 }, %struct.amdgpu_afmt_acr { i32 74176, i32 4096, i32 74176, i32 5733, i32 75335, i32 6144, i32 74176 }, %struct.amdgpu_afmt_acr { i32 74250, i32 4096, i32 74250, i32 6272, i32 82500, i32 6144, i32 74250 }, %struct.amdgpu_afmt_acr { i32 148352, i32 4096, i32 148352, i32 5733, i32 150670, i32 6144, i32 148352 }, %struct.amdgpu_afmt_acr { i32 148500, i32 4096, i32 148500, i32 6272, i32 165000, i32 6144, i32 148500 }], [72 x i8] zeroinitializer }, align 32
@amdgpu_afmt_calc_cts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\014amdgpu: Calculated ACR N value is too small. You may experience audio problems.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"amdgpu_afmt_calc_cts\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/amd/amdgpu/amdgpu_afmt.c\00", [55 x i8] zeroinitializer }, align 32
@amdgpu_afmt_calc_cts._entry_ptr = internal global ptr @amdgpu_afmt_calc_cts._entry, section ".printk_index", align 4
@amdgpu_afmt_calc_cts._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\014amdgpu: Calculated ACR N value is too large. You may experience audio problems.\0A\00", [45 x i8] zeroinitializer }, align 32
@amdgpu_afmt_calc_cts._entry_ptr.5 = internal global ptr @amdgpu_afmt_calc_cts._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Calculated ACR timing N=%d CTS=%d for frequency %d\0A\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 25175, i64 25200, i64 27000, i64 27027, i64 54000, i64 54054, i64 74176, i64 74250, i64 148352, i64 148500]
@___asan_gen_.7 = private unnamed_addr constant [27 x i8] c"amdgpu_afmt_predefined_acr\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 32, i32 37 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 77, i32 3 }
@___asan_gen_.22 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 79, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private constant [44 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_afmt.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 84, i32 2 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @amdgpu_afmt_calc_cts._entry, ptr @amdgpu_afmt_calc_cts._entry.3, ptr @amdgpu_afmt_calc_cts._entry_ptr, ptr @amdgpu_afmt_calc_cts._entry_ptr.5, ptr @amdgpu_afmt_predefined_acr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_afmt_predefined_acr to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_afmt_calc_cts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_afmt_calc_cts._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_afmt_acr(ptr noalias nocapture writeonly sret(%struct.amdgpu_afmt_acr) align 4 %agg.result, i32 noundef %clock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %clock to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %clock, label %for.cond.9 [
    i32 25175, label %entry.if.then_crit_edge
    i32 25200, label %if.then.fold.split
    i32 27000, label %if.then.fold.split54
    i32 27027, label %if.then.fold.split55
    i32 54000, label %if.then.fold.split56
    i32 54054, label %if.then.fold.split57
    i32 74176, label %if.then.fold.split58
    i32 74250, label %if.then.fold.split59
    i32 148352, label %if.then.fold.split60
    i32 148500, label %if.then.fold.split61
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.cond.9:                                       ; preds = %entry
  %mul2.i = mul i32 %clock, 1000
  %call.i = tail call i32 @gcd(i32 noundef 4096000, i32 noundef %mul2.i) #7
  %div3.i = udiv i32 4096000, %call.i
  %add.i = add nuw nsw i32 %div3.i, 4095
  %div7.i49 = udiv i32 %add.i, %div3.i
  %mul8.i = mul i32 %div7.i49, %div3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2730, i32 %mul8.i)
  %cmp.i = icmp slt i32 %mul8.i, 2730
  br i1 %cmp.i, label %for.cond.9.amdgpu_afmt_calc_cts.exit.sink.split_crit_edge, label %if.end.i

for.cond.9.amdgpu_afmt_calc_cts.exit.sink.split_crit_edge: ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_afmt_calc_cts.exit.sink.split

if.then.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then.fold.split54:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then.fold.split55:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then.fold.split56:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then.fold.split57:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then.fold.split58:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then.fold.split59:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then.fold.split60:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then.fold.split61:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %if.then.fold.split61, %if.then.fold.split60, %if.then.fold.split59, %if.then.fold.split58, %if.then.fold.split57, %if.then.fold.split56, %if.then.fold.split55, %if.then.fold.split54, %if.then.fold.split, %entry.if.then_crit_edge
  %arrayidx.lcssa = phi ptr [ @amdgpu_afmt_predefined_acr, %entry.if.then_crit_edge ], [ getelementptr inbounds ([10 x %struct.amdgpu_afmt_acr], ptr @amdgpu_afmt_predefined_acr, i32 0, i32 1), %if.then.fold.split ], [ getelementptr inbounds ([10 x %struct.amdgpu_afmt_acr], ptr @amdgpu_afmt_predefined_acr, i32 0, i32 2), %if.then.fold.split54 ], [ getelementptr inbounds ([10 x %struct.amdgpu_afmt_acr], ptr @amdgpu_afmt_predefined_acr, i32 0, i32 3), %if.then.fold.split55 ], [ getelementptr inbounds ([10 x %struct.amdgpu_afmt_acr], ptr @amdgpu_afmt_predefined_acr, i32 0, i32 4), %if.then.fold.split56 ], [ getelementptr inbounds ([10 x %struct.amdgpu_afmt_acr], ptr @amdgpu_afmt_predefined_acr, i32 0, i32 5), %if.then.fold.split57 ], [ getelementptr inbounds ([10 x %struct.amdgpu_afmt_acr], ptr @amdgpu_afmt_predefined_acr, i32 0, i32 6), %if.then.fold.split58 ], [ getelementptr inbounds ([10 x %struct.amdgpu_afmt_acr], ptr @amdgpu_afmt_predefined_acr, i32 0, i32 7), %if.then.fold.split59 ], [ getelementptr inbounds ([10 x %struct.amdgpu_afmt_acr], ptr @amdgpu_afmt_predefined_acr, i32 0, i32 8), %if.then.fold.split60 ], [ getelementptr inbounds ([10 x %struct.amdgpu_afmt_acr], ptr @amdgpu_afmt_predefined_acr, i32 0, i32 9), %if.then.fold.split61 ]
  %1 = call ptr @memcpy(ptr %agg.result, ptr %arrayidx.lcssa, i32 28)
  br label %cleanup

if.end.i:                                         ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_const_cmp4(i32 13653, i32 %mul8.i)
  %cmp15.i = icmp ugt i32 %mul8.i, 13653
  br i1 %cmp15.i, label %if.end.i.amdgpu_afmt_calc_cts.exit.sink.split_crit_edge, label %if.end.i.amdgpu_afmt_calc_cts.exit_crit_edge

if.end.i.amdgpu_afmt_calc_cts.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_afmt_calc_cts.exit

if.end.i.amdgpu_afmt_calc_cts.exit.sink.split_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_afmt_calc_cts.exit.sink.split

amdgpu_afmt_calc_cts.exit.sink.split:             ; preds = %if.end.i.amdgpu_afmt_calc_cts.exit.sink.split_crit_edge, %for.cond.9.amdgpu_afmt_calc_cts.exit.sink.split_crit_edge
  %.str.sink = phi ptr [ @.str, %for.cond.9.amdgpu_afmt_calc_cts.exit.sink.split_crit_edge ], [ @.str.4, %if.end.i.amdgpu_afmt_calc_cts.exit.sink.split_crit_edge ]
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.sink) #8
  br label %amdgpu_afmt_calc_cts.exit

amdgpu_afmt_calc_cts.exit:                        ; preds = %amdgpu_afmt_calc_cts.exit.sink.split, %if.end.i.amdgpu_afmt_calc_cts.exit_crit_edge
  %div4.i = udiv i32 %mul2.i, %call.i
  %mul9.i = mul i32 %div4.i, %div7.i49
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef %mul8.i, i32 noundef %mul9.i, i32 noundef 32000) #4
  %call.i15 = tail call i32 @gcd(i32 noundef 5644800, i32 noundef %mul2.i) #7
  %div3.i16 = udiv i32 5644800, %call.i15
  %add.i17 = add nuw nsw i32 %div3.i16, 5643
  %div7.i1850 = udiv i32 %add.i17, %div3.i16
  %mul8.i19 = mul i32 %div7.i1850, %div3.i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3763, i32 %mul8.i19)
  %cmp.i20 = icmp slt i32 %mul8.i19, 3763
  br i1 %cmp.i20, label %amdgpu_afmt_calc_cts.exit.amdgpu_afmt_calc_cts.exit29.sink.split_crit_edge, label %if.end.i24

amdgpu_afmt_calc_cts.exit.amdgpu_afmt_calc_cts.exit29.sink.split_crit_edge: ; preds = %amdgpu_afmt_calc_cts.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_afmt_calc_cts.exit29.sink.split

if.end.i24:                                       ; preds = %amdgpu_afmt_calc_cts.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 18816, i32 %mul8.i19)
  %cmp15.i23 = icmp ugt i32 %mul8.i19, 18816
  br i1 %cmp15.i23, label %if.end.i24.amdgpu_afmt_calc_cts.exit29.sink.split_crit_edge, label %if.end.i24.amdgpu_afmt_calc_cts.exit29_crit_edge

if.end.i24.amdgpu_afmt_calc_cts.exit29_crit_edge: ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_afmt_calc_cts.exit29

if.end.i24.amdgpu_afmt_calc_cts.exit29.sink.split_crit_edge: ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_afmt_calc_cts.exit29.sink.split

amdgpu_afmt_calc_cts.exit29.sink.split:           ; preds = %if.end.i24.amdgpu_afmt_calc_cts.exit29.sink.split_crit_edge, %amdgpu_afmt_calc_cts.exit.amdgpu_afmt_calc_cts.exit29.sink.split_crit_edge
  %.str.sink62 = phi ptr [ @.str, %amdgpu_afmt_calc_cts.exit.amdgpu_afmt_calc_cts.exit29.sink.split_crit_edge ], [ @.str.4, %if.end.i24.amdgpu_afmt_calc_cts.exit29.sink.split_crit_edge ]
  %call12.i21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.sink62) #8
  br label %amdgpu_afmt_calc_cts.exit29

amdgpu_afmt_calc_cts.exit29:                      ; preds = %amdgpu_afmt_calc_cts.exit29.sink.split, %if.end.i24.amdgpu_afmt_calc_cts.exit29_crit_edge
  %div4.i27 = udiv i32 %mul2.i, %call.i15
  %mul9.i28 = mul i32 %div4.i27, %div7.i1850
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef %mul8.i19, i32 noundef %mul9.i28, i32 noundef 44100) #4
  %call.i31 = tail call i32 @gcd(i32 noundef 6144000, i32 noundef %mul2.i) #7
  %div3.i32 = udiv i32 6144000, %call.i31
  %add.i33 = add nuw nsw i32 %div3.i32, 6143
  %div7.i3451 = udiv i32 %add.i33, %div3.i32
  %mul8.i35 = mul i32 %div7.i3451, %div3.i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %mul8.i35)
  %cmp.i36 = icmp slt i32 %mul8.i35, 4096
  br i1 %cmp.i36, label %amdgpu_afmt_calc_cts.exit29.amdgpu_afmt_calc_cts.exit45.sink.split_crit_edge, label %if.end.i40

amdgpu_afmt_calc_cts.exit29.amdgpu_afmt_calc_cts.exit45.sink.split_crit_edge: ; preds = %amdgpu_afmt_calc_cts.exit29
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_afmt_calc_cts.exit45.sink.split

if.end.i40:                                       ; preds = %amdgpu_afmt_calc_cts.exit29
  call void @__sanitizer_cov_trace_const_cmp4(i32 20480, i32 %mul8.i35)
  %cmp15.i39 = icmp ugt i32 %mul8.i35, 20480
  br i1 %cmp15.i39, label %if.end.i40.amdgpu_afmt_calc_cts.exit45.sink.split_crit_edge, label %if.end.i40.amdgpu_afmt_calc_cts.exit45_crit_edge

if.end.i40.amdgpu_afmt_calc_cts.exit45_crit_edge: ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_afmt_calc_cts.exit45

if.end.i40.amdgpu_afmt_calc_cts.exit45.sink.split_crit_edge: ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_afmt_calc_cts.exit45.sink.split

amdgpu_afmt_calc_cts.exit45.sink.split:           ; preds = %if.end.i40.amdgpu_afmt_calc_cts.exit45.sink.split_crit_edge, %amdgpu_afmt_calc_cts.exit29.amdgpu_afmt_calc_cts.exit45.sink.split_crit_edge
  %.str.sink63 = phi ptr [ @.str, %amdgpu_afmt_calc_cts.exit29.amdgpu_afmt_calc_cts.exit45.sink.split_crit_edge ], [ @.str.4, %if.end.i40.amdgpu_afmt_calc_cts.exit45.sink.split_crit_edge ]
  %call12.i37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.sink63) #8
  br label %amdgpu_afmt_calc_cts.exit45

amdgpu_afmt_calc_cts.exit45:                      ; preds = %amdgpu_afmt_calc_cts.exit45.sink.split, %if.end.i40.amdgpu_afmt_calc_cts.exit45_crit_edge
  %div4.i43 = udiv i32 %mul2.i, %call.i31
  %mul9.i44 = mul i32 %div4.i43, %div7.i3451
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef %mul8.i35, i32 noundef %mul9.i44, i32 noundef 48000) #4
  %2 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %agg.result, align 4
  %res.sroa.4.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 4
  %3 = ptrtoint ptr %res.sroa.4.0.agg.result.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %mul8.i, ptr %res.sroa.4.0.agg.result.sroa_idx, align 4
  %res.sroa.7.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 8
  %4 = ptrtoint ptr %res.sroa.7.0.agg.result.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mul9.i, ptr %res.sroa.7.0.agg.result.sroa_idx, align 4
  %res.sroa.9.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 12
  %5 = ptrtoint ptr %res.sroa.9.0.agg.result.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %mul8.i19, ptr %res.sroa.9.0.agg.result.sroa_idx, align 4
  %res.sroa.12.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 16
  %6 = ptrtoint ptr %res.sroa.12.0.agg.result.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %mul9.i28, ptr %res.sroa.12.0.agg.result.sroa_idx, align 4
  %res.sroa.14.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 20
  %7 = ptrtoint ptr %res.sroa.14.0.agg.result.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mul8.i35, ptr %res.sroa.14.0.agg.result.sroa_idx, align 4
  %res.sroa.17.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 24
  %8 = ptrtoint ptr %res.sroa.17.0.agg.result.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul9.i44, ptr %res.sroa.17.0.agg.result.sroa_idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %amdgpu_afmt_calc_cts.exit45, %if.then
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @gcd(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind readnone willreturn }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @amdgpu_afmt_predefined_acr, !1, !"amdgpu_afmt_predefined_acr", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_afmt.c", i32 32, i32 37}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_afmt.c", i32 77, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @amdgpu_afmt_calc_cts._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @amdgpu_afmt_calc_cts._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_afmt.c", i32 79, i32 3}
!10 = !{ptr @amdgpu_afmt_calc_cts._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @amdgpu_afmt_calc_cts._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_afmt.c", i32 84, i32 2}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
