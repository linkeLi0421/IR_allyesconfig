; ModuleID = '/llk/IR_all_yes/lib/mpi/mpi-div.c_pt.bc'
source_filename = "../lib/mpi/mpi-div.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gcry_mpi = type { i32, i32, i32, i32, i32, ptr }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpi_fdiv_r(ptr noundef %rem, ptr noundef %dividend, ptr noundef %divisor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sign = getelementptr inbounds %struct.gcry_mpi, ptr %divisor, i32 0, i32 3
  %0 = ptrtoint ptr %sign to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sign, align 4
  %cmp = icmp eq ptr %rem, %divisor
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call ptr @mpi_copy(ptr noundef %divisor) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %divisor.addr.0 = phi ptr [ %call, %if.then ], [ %divisor, %entry.if.end_crit_edge ]
  %temp_divisor.0 = phi ptr [ %call, %if.then ], [ null, %entry.if.end_crit_edge ]
  tail call void @mpi_tdiv_qr(ptr noundef null, ptr noundef %rem, ptr noundef %dividend, ptr noundef %divisor.addr.0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp ne i32 %1, 0
  %sign1 = getelementptr inbounds %struct.gcry_mpi, ptr %dividend, i32 0, i32 3
  %2 = ptrtoint ptr %sign1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sign1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp ne i32 %3, 0
  %xor22 = xor i1 %tobool.not, %tobool2.not
  br i1 %xor22, label %land.lhs.true, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %rem, i32 0, i32 1
  %4 = ptrtoint ptr %nlimbs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nlimbs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not = icmp eq i32 %5, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end7_crit_edge, label %if.then6

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mpi_add(ptr noundef %rem, ptr noundef %rem, ptr noundef %divisor.addr.0) #4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %tobool8.not = icmp eq ptr %temp_divisor.0, null
  br i1 %tobool8.not, label %if.end7.if.end10_crit_edge, label %if.then9

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mpi_free(ptr noundef nonnull %temp_divisor.0) #4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end7.if.end10_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpi_tdiv_r(ptr noundef %rem, ptr noundef %num, ptr nocapture noundef readonly %den) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mpi_tdiv_qr(ptr noundef null, ptr noundef %rem, ptr noundef %num, ptr noundef %den)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpi_fdiv_q(ptr noundef %quot, ptr noundef %dividend, ptr noundef %divisor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %quot, i32 0, i32 1
  %0 = ptrtoint ptr %nlimbs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nlimbs, align 4
  %call = tail call ptr @mpi_alloc(i32 noundef %1) #4
  tail call void @mpi_fdiv_qr(ptr noundef %quot, ptr noundef %call, ptr noundef %dividend, ptr noundef %divisor)
  tail call void @mpi_free(ptr noundef %call) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpi_fdiv_qr(ptr noundef %quot, ptr noundef %rem, ptr noundef %dividend, ptr noundef %divisor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sign = getelementptr inbounds %struct.gcry_mpi, ptr %divisor, i32 0, i32 3
  %0 = ptrtoint ptr %sign to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sign, align 4
  %cmp = icmp eq ptr %quot, %divisor
  %cmp1 = icmp eq ptr %rem, %divisor
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call ptr @mpi_copy(ptr noundef %divisor) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %divisor.addr.0 = phi ptr [ %call, %if.then ], [ %divisor, %entry.if.end_crit_edge ]
  %temp_divisor.0 = phi ptr [ %call, %if.then ], [ null, %entry.if.end_crit_edge ]
  tail call void @mpi_tdiv_qr(ptr noundef %quot, ptr noundef %rem, ptr noundef %dividend, ptr noundef %divisor.addr.0)
  %sign2 = getelementptr inbounds %struct.gcry_mpi, ptr %dividend, i32 0, i32 3
  %2 = ptrtoint ptr %sign2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sign2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %tobool.not = icmp eq i32 %1, %3
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %rem, i32 0, i32 1
  %4 = ptrtoint ptr %nlimbs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nlimbs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end6_crit_edge, label %if.then4

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %call5 = tail call i32 @mpi_sub_ui(ptr noundef %quot, ptr noundef %quot, i32 noundef 1) #4
  tail call void @mpi_add(ptr noundef %rem, ptr noundef %rem, ptr noundef %divisor.addr.0) #4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %tobool7.not = icmp eq ptr %temp_divisor.0, null
  br i1 %tobool7.not, label %if.end6.if.end9_crit_edge, label %if.then8

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mpi_free(ptr noundef nonnull %temp_divisor.0) #4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpi_tdiv_qr(ptr noundef %quot, ptr noundef %rem, ptr noundef readonly %num, ptr nocapture noundef readonly %den) local_unnamed_addr #0 align 64 {
entry:
  %marker = alloca [5 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %num, i32 0, i32 1
  %0 = ptrtoint ptr %nlimbs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nlimbs, align 4
  %nlimbs1 = getelementptr inbounds %struct.gcry_mpi, ptr %den, i32 0, i32 1
  %2 = ptrtoint ptr %nlimbs1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nlimbs1, align 4
  %sign = getelementptr inbounds %struct.gcry_mpi, ptr %num, i32 0, i32 3
  %4 = ptrtoint ptr %sign to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sign, align 4
  %sign3 = getelementptr inbounds %struct.gcry_mpi, ptr %den, i32 0, i32 3
  %6 = ptrtoint ptr %sign3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sign3, align 4
  %xor = xor i32 %7, %5
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %marker) #4
  %add = add i32 %1, 1
  %8 = call ptr @memset(ptr %marker, i32 255, i32 20)
  %call = tail call i32 @mpi_resize(ptr noundef %rem, i32 noundef %add) #4
  %sub = sub i32 %add, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp = icmp slt i32 %sub, 1
  br i1 %cmp, label %if.then, label %if.end17

if.then:                                          ; preds = %entry
  %cmp4.not = icmp eq ptr %num, %rem
  br i1 %cmp4.not, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then5:                                         ; preds = %if.then
  %9 = ptrtoint ptr %nlimbs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nlimbs, align 4
  %nlimbs7 = getelementptr inbounds %struct.gcry_mpi, ptr %rem, i32 0, i32 1
  %11 = ptrtoint ptr %nlimbs7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %nlimbs7, align 4
  %12 = ptrtoint ptr %sign to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sign, align 4
  %sign9 = getelementptr inbounds %struct.gcry_mpi, ptr %rem, i32 0, i32 3
  %14 = ptrtoint ptr %sign9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %sign9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp10332 = icmp sgt i32 %1, 0
  br i1 %cmp10332, label %for.body.lr.ph, label %if.then5.if.end_crit_edge

if.then5.if.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

for.body.lr.ph:                                   ; preds = %if.then5
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %num, i32 0, i32 5
  %d11 = getelementptr inbounds %struct.gcry_mpi, ptr %rem, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %_i.0333 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %15 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d, align 4
  %arrayidx = getelementptr i32, ptr %16, i32 %_i.0333
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %19 = ptrtoint ptr %d11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %d11, align 4
  %arrayidx12 = getelementptr i32, ptr %20, i32 %_i.0333
  %21 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %18, ptr %arrayidx12, align 4
  %inc = add nuw nsw i32 %_i.0333, 1
  %exitcond337.not = icmp eq i32 %inc, %1
  br i1 %exitcond337.not, label %for.body.if.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %for.body.if.end_crit_edge, %if.then5.if.end_crit_edge, %if.then.if.end_crit_edge
  %tobool.not = icmp eq ptr %quot, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end17:                                         ; preds = %entry
  %tobool18.not = icmp eq ptr %quot, null
  br i1 %tobool18.not, label %if.end21, label %if.end21.thread

if.end21:                                         ; preds = %if.end17
  %d22 = getelementptr inbounds %struct.gcry_mpi, ptr %num, i32 0, i32 5
  %22 = ptrtoint ptr %d22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %d22, align 4
  %d23 = getelementptr inbounds %struct.gcry_mpi, ptr %den, i32 0, i32 5
  %24 = ptrtoint ptr %d23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %d23, align 4
  %d24 = getelementptr inbounds %struct.gcry_mpi, ptr %rem, i32 0, i32 5
  %26 = ptrtoint ptr %d24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %d24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp25 = icmp eq i32 %3, 1
  br i1 %cmp25, label %if.else, label %if.else70

if.end21.thread:                                  ; preds = %if.end17
  %call20 = tail call i32 @mpi_resize(ptr noundef nonnull %quot, i32 noundef %sub) #4
  %d22320 = getelementptr inbounds %struct.gcry_mpi, ptr %num, i32 0, i32 5
  %28 = ptrtoint ptr %d22320 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %d22320, align 4
  %d23321 = getelementptr inbounds %struct.gcry_mpi, ptr %den, i32 0, i32 5
  %30 = ptrtoint ptr %d23321 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %d23321, align 4
  %d24322 = getelementptr inbounds %struct.gcry_mpi, ptr %rem, i32 0, i32 5
  %32 = ptrtoint ptr %d24322 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %d24322, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp25323 = icmp eq i32 %3, 1
  %d29 = getelementptr inbounds %struct.gcry_mpi, ptr %quot, i32 0, i32 5
  %34 = ptrtoint ptr %d29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %d29, align 4
  br i1 %cmp25323, label %if.then28, label %if.then48

if.then28:                                        ; preds = %if.end21.thread
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %31, align 4
  %call31 = tail call i32 @mpihelp_divmod_1(ptr noundef %35, ptr noundef %29, i32 noundef %1, i32 noundef %37) #4
  %sub32 = add nsw i32 %sub, -1
  %arrayidx33 = getelementptr i32, ptr %35, i32 %sub32
  %38 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp34 = icmp eq i32 %39, 0
  %conv.neg = sext i1 %cmp34 to i32
  %sub35 = add nsw i32 %sub, %conv.neg
  %nlimbs36 = getelementptr inbounds %struct.gcry_mpi, ptr %quot, i32 0, i32 1
  %40 = ptrtoint ptr %nlimbs36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %sub35, ptr %nlimbs36, align 4
  %sign37 = getelementptr inbounds %struct.gcry_mpi, ptr %quot, i32 0, i32 3
  %41 = ptrtoint ptr %sign37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %xor, ptr %sign37, align 4
  br label %if.end40

if.else:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  %42 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %25, align 4
  %call39 = tail call i32 @mpihelp_mod_1(ptr noundef %23, i32 noundef %1, i32 noundef %43) #4
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then28
  %44 = phi ptr [ %33, %if.then28 ], [ %27, %if.else ]
  %rlimb.0 = phi i32 [ %call31, %if.then28 ], [ %call39, %if.else ]
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %rlimb.0, ptr %44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rlimb.0)
  %cmp42.not = icmp ne i32 %rlimb.0, 0
  %cond = zext i1 %cmp42.not to i32
  br label %cleanup.sink.split

if.then48:                                        ; preds = %if.end21.thread
  %cmp50 = icmp eq ptr %35, %29
  br i1 %cmp50, label %if.then52, label %if.then48.if.end71_crit_edge

if.then48.if.end71_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end71

if.then52:                                        ; preds = %if.then48
  %call53 = tail call ptr @mpi_alloc_limb_space(i32 noundef %1) #4
  %46 = ptrtoint ptr %marker to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call53, ptr %marker, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp59324 = icmp sgt i32 %1, 0
  br i1 %cmp59324, label %if.then52.for.body61_crit_edge, label %if.then52.if.end71_crit_edge

if.then52.if.end71_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end71

if.then52.for.body61_crit_edge:                   ; preds = %if.then52
  br label %for.body61

for.body61:                                       ; preds = %for.body61.for.body61_crit_edge, %if.then52.for.body61_crit_edge
  %_i57.0325 = phi i32 [ %inc65, %for.body61.for.body61_crit_edge ], [ 0, %if.then52.for.body61_crit_edge ]
  %arrayidx62 = getelementptr i32, ptr %29, i32 %_i57.0325
  %47 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx62, align 4
  %arrayidx63 = getelementptr i32, ptr %call53, i32 %_i57.0325
  %49 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %arrayidx63, align 4
  %inc65 = add nuw nsw i32 %_i57.0325, 1
  %exitcond.not = icmp eq i32 %inc65, %1
  br i1 %exitcond.not, label %for.body61.if.end71_crit_edge, label %for.body61.for.body61_crit_edge

for.body61.for.body61_crit_edge:                  ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body61

for.body61.if.end71_crit_edge:                    ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end71

if.else70:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr = getelementptr i32, ptr %27, i32 %3
  br label %if.end71

if.end71:                                         ; preds = %if.else70, %for.body61.if.end71_crit_edge, %if.then52.if.end71_crit_edge, %if.then48.if.end71_crit_edge
  %50 = phi ptr [ %31, %if.then48.if.end71_crit_edge ], [ %25, %if.else70 ], [ %31, %if.then52.if.end71_crit_edge ], [ %31, %for.body61.if.end71_crit_edge ]
  %51 = phi ptr [ %33, %if.then48.if.end71_crit_edge ], [ %27, %if.else70 ], [ %33, %if.then52.if.end71_crit_edge ], [ %33, %for.body61.if.end71_crit_edge ]
  %qp.0 = phi ptr [ %35, %if.then48.if.end71_crit_edge ], [ %add.ptr, %if.else70 ], [ %29, %if.then52.if.end71_crit_edge ], [ %29, %for.body61.if.end71_crit_edge ]
  %markidx.0 = phi i32 [ 0, %if.then48.if.end71_crit_edge ], [ 0, %if.else70 ], [ 1, %if.then52.if.end71_crit_edge ], [ 1, %for.body61.if.end71_crit_edge ]
  %np.0 = phi ptr [ %29, %if.then48.if.end71_crit_edge ], [ %23, %if.else70 ], [ %call53, %if.then52.if.end71_crit_edge ], [ %call53, %for.body61.if.end71_crit_edge ]
  %sub72 = add i32 %3, -1
  %arrayidx73 = getelementptr i32, ptr %50, i32 %sub72
  %52 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx73, align 4
  %54 = tail call i32 @llvm.ctlz.i32(i32 %53, i1 false) #4, !range !9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool75.not = icmp eq i32 %54, 0
  br i1 %tobool75.not, label %if.else88, label %if.then76

if.then76:                                        ; preds = %if.end71
  %call77 = tail call ptr @mpi_alloc_limb_space(i32 noundef %3) #4
  %inc78 = add nuw nsw i32 %markidx.0, 1
  %arrayidx79 = getelementptr [5 x ptr], ptr %marker, i32 0, i32 %markidx.0
  %55 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call77, ptr %arrayidx79, align 4
  %call80 = tail call i32 @mpihelp_lshift(ptr noundef %call77, ptr noundef %50, i32 noundef %3, i32 noundef %54) #4
  %call81 = tail call i32 @mpihelp_lshift(ptr noundef %51, ptr noundef %np.0, i32 noundef %1, i32 noundef %54) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.then76.if.end130_crit_edge, label %if.then83

if.then76.if.end130_crit_edge:                    ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end130

if.then83:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx84 = getelementptr i32, ptr %51, i32 %1
  %56 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call81, ptr %arrayidx84, align 4
  br label %if.end130

if.else88:                                        ; preds = %if.end71
  %cmp89 = icmp eq ptr %50, %51
  br i1 %cmp89, label %if.else88.if.then94_crit_edge, label %lor.lhs.false

if.else88.if.then94_crit_edge:                    ; preds = %if.else88
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then94

lor.lhs.false:                                    ; preds = %if.else88
  %tobool18.not.not = xor i1 %tobool18.not, true
  %cmp92 = icmp eq ptr %50, %qp.0
  %or.cond = select i1 %tobool18.not.not, i1 %cmp92, i1 false
  br i1 %or.cond, label %lor.lhs.false.if.then94_crit_edge, label %lor.lhs.false.if.end112_crit_edge

lor.lhs.false.if.end112_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end112

lor.lhs.false.if.then94_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then94

if.then94:                                        ; preds = %lor.lhs.false.if.then94_crit_edge, %if.else88.if.then94_crit_edge
  %call96 = tail call ptr @mpi_alloc_limb_space(i32 noundef %3) #4
  %inc97 = add nuw nsw i32 %markidx.0, 1
  %arrayidx98 = getelementptr [5 x ptr], ptr %marker, i32 0, i32 %markidx.0
  %57 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call96, ptr %arrayidx98, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp102326 = icmp sgt i32 %3, 0
  br i1 %cmp102326, label %if.then94.for.body104_crit_edge, label %if.then94.if.end112_crit_edge

if.then94.if.end112_crit_edge:                    ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end112

if.then94.for.body104_crit_edge:                  ; preds = %if.then94
  br label %for.body104

for.body104:                                      ; preds = %for.body104.for.body104_crit_edge, %if.then94.for.body104_crit_edge
  %_i100.0327 = phi i32 [ %inc108, %for.body104.for.body104_crit_edge ], [ 0, %if.then94.for.body104_crit_edge ]
  %arrayidx105 = getelementptr i32, ptr %50, i32 %_i100.0327
  %58 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx105, align 4
  %arrayidx106 = getelementptr i32, ptr %call96, i32 %_i100.0327
  %60 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %arrayidx106, align 4
  %inc108 = add nuw nsw i32 %_i100.0327, 1
  %exitcond335.not = icmp eq i32 %inc108, %3
  br i1 %exitcond335.not, label %for.body104.if.end112_crit_edge, label %for.body104.for.body104_crit_edge

for.body104.for.body104_crit_edge:                ; preds = %for.body104
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body104

for.body104.if.end112_crit_edge:                  ; preds = %for.body104
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end112

if.end112:                                        ; preds = %for.body104.if.end112_crit_edge, %if.then94.if.end112_crit_edge, %lor.lhs.false.if.end112_crit_edge
  %dp.0 = phi ptr [ %50, %lor.lhs.false.if.end112_crit_edge ], [ %call96, %if.then94.if.end112_crit_edge ], [ %call96, %for.body104.if.end112_crit_edge ]
  %markidx.1 = phi i32 [ %markidx.0, %lor.lhs.false.if.end112_crit_edge ], [ %inc97, %if.then94.if.end112_crit_edge ], [ %inc97, %for.body104.if.end112_crit_edge ]
  %cmp113.not = icmp ne ptr %51, %np.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp119328 = icmp sgt i32 %1, 0
  %or.cond334 = select i1 %cmp113.not, i1 %cmp119328, i1 false
  br i1 %or.cond334, label %if.end112.for.body121_crit_edge, label %if.end112.if.end130_crit_edge

if.end112.if.end130_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end130

if.end112.for.body121_crit_edge:                  ; preds = %if.end112
  br label %for.body121

for.body121:                                      ; preds = %for.body121.for.body121_crit_edge, %if.end112.for.body121_crit_edge
  %_i117.0329 = phi i32 [ %inc125, %for.body121.for.body121_crit_edge ], [ 0, %if.end112.for.body121_crit_edge ]
  %arrayidx122 = getelementptr i32, ptr %np.0, i32 %_i117.0329
  %61 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx122, align 4
  %arrayidx123 = getelementptr i32, ptr %51, i32 %_i117.0329
  %63 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %arrayidx123, align 4
  %inc125 = add nuw nsw i32 %_i117.0329, 1
  %exitcond336.not = icmp eq i32 %inc125, %1
  br i1 %exitcond336.not, label %for.body121.if.end130_crit_edge, label %for.body121.for.body121_crit_edge

for.body121.for.body121_crit_edge:                ; preds = %for.body121
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body121

for.body121.if.end130_crit_edge:                  ; preds = %for.body121
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end130

if.end130:                                        ; preds = %for.body121.if.end130_crit_edge, %if.end112.if.end130_crit_edge, %if.then83, %if.then76.if.end130_crit_edge
  %dp.1 = phi ptr [ %call77, %if.then76.if.end130_crit_edge ], [ %call77, %if.then83 ], [ %dp.0, %if.end112.if.end130_crit_edge ], [ %dp.0, %for.body121.if.end130_crit_edge ]
  %rsize.1 = phi i32 [ %1, %if.then76.if.end130_crit_edge ], [ %add, %if.then83 ], [ %1, %if.end112.if.end130_crit_edge ], [ %1, %for.body121.if.end130_crit_edge ]
  %markidx.2 = phi i32 [ %inc78, %if.then76.if.end130_crit_edge ], [ %inc78, %if.then83 ], [ %markidx.1, %if.end112.if.end130_crit_edge ], [ %markidx.1, %for.body121.if.end130_crit_edge ]
  %call131 = tail call i32 @mpihelp_divrem(ptr noundef %qp.0, i32 noundef 0, ptr noundef %51, i32 noundef %rsize.1, ptr noundef %dp.1, i32 noundef %3) #4
  br i1 %tobool18.not, label %if.end130.if.end142_crit_edge, label %if.then133

if.end130.if.end142_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end142

if.then133:                                       ; preds = %if.end130
  %sub134 = sub i32 %rsize.1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool135.not = icmp eq i32 %call131, 0
  br i1 %tobool135.not, label %if.then133.if.end139_crit_edge, label %if.then136

if.then133.if.end139_crit_edge:                   ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end139

if.then136:                                       ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx137 = getelementptr i32, ptr %qp.0, i32 %sub134
  %64 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %call131, ptr %arrayidx137, align 4
  %add138 = add i32 %sub134, 1
  br label %if.end139

if.end139:                                        ; preds = %if.then136, %if.then133.if.end139_crit_edge
  %qsize.0 = phi i32 [ %add138, %if.then136 ], [ %sub134, %if.then133.if.end139_crit_edge ]
  %nlimbs140 = getelementptr inbounds %struct.gcry_mpi, ptr %quot, i32 0, i32 1
  %65 = ptrtoint ptr %nlimbs140 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %qsize.0, ptr %nlimbs140, align 4
  %sign141 = getelementptr inbounds %struct.gcry_mpi, ptr %quot, i32 0, i32 3
  %66 = ptrtoint ptr %sign141 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %xor, ptr %sign141, align 4
  br label %if.end142

if.end142:                                        ; preds = %if.end139, %if.end130.if.end142_crit_edge
  %smin = call i32 @llvm.smin.i32(i32 %3, i32 0)
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.end142
  %rsize.2 = phi i32 [ %3, %if.end142 ], [ %sub146, %while.body.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rsize.2)
  %cmp144 = icmp sgt i32 %rsize.2, 0
  br i1 %cmp144, label %while.body, label %while.cond.do.end152_crit_edge

while.cond.do.end152_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end152

while.body:                                       ; preds = %while.cond
  %sub146 = add nsw i32 %rsize.2, -1
  %arrayidx147 = getelementptr i32, ptr %51, i32 %sub146
  %67 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx147, align 4
  %tobool148.not = icmp eq i32 %68, 0
  br i1 %tobool148.not, label %while.body.while.cond_crit_edge, label %while.body.do.end152_crit_edge

while.body.do.end152_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end152

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

do.end152:                                        ; preds = %while.body.do.end152_crit_edge, %while.cond.do.end152_crit_edge
  %rsize.2.lcssa = phi i32 [ %rsize.2, %while.body.do.end152_crit_edge ], [ %smin, %while.cond.do.end152_crit_edge ]
  br i1 %tobool75.not, label %do.end152.if.end164_crit_edge, label %land.lhs.true154

do.end152.if.end164_crit_edge:                    ; preds = %do.end152
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end164

land.lhs.true154:                                 ; preds = %do.end152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rsize.2.lcssa)
  %tobool155.not = icmp eq i32 %rsize.2.lcssa, 0
  br i1 %tobool155.not, label %land.lhs.true154.if.end164_crit_edge, label %if.then156

land.lhs.true154.if.end164_crit_edge:             ; preds = %land.lhs.true154
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end164

if.then156:                                       ; preds = %land.lhs.true154
  call void @__sanitizer_cov_trace_pc() #6
  %call157 = tail call i32 @mpihelp_rshift(ptr noundef %51, ptr noundef %51, i32 noundef %rsize.2.lcssa, i32 noundef %54) #4
  %sub158 = add i32 %rsize.2.lcssa, -1
  %arrayidx159 = getelementptr i32, ptr %51, i32 %sub158
  %69 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx159, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp160 = icmp eq i32 %70, 0
  %cond162.neg = sext i1 %cmp160 to i32
  %sub163 = add i32 %rsize.2.lcssa, %cond162.neg
  br label %if.end164

if.end164:                                        ; preds = %if.then156, %land.lhs.true154.if.end164_crit_edge, %do.end152.if.end164_crit_edge
  %rsize.3 = phi i32 [ %sub163, %if.then156 ], [ 0, %land.lhs.true154.if.end164_crit_edge ], [ %rsize.2.lcssa, %do.end152.if.end164_crit_edge ]
  %nlimbs165 = getelementptr inbounds %struct.gcry_mpi, ptr %rem, i32 0, i32 1
  %71 = ptrtoint ptr %nlimbs165 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %rsize.3, ptr %nlimbs165, align 4
  %sign166 = getelementptr inbounds %struct.gcry_mpi, ptr %rem, i32 0, i32 3
  %72 = ptrtoint ptr %sign166 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %5, ptr %sign166, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %markidx.2)
  %tobool168.not330 = icmp eq i32 %markidx.2, 0
  br i1 %tobool168.not330, label %if.end164.cleanup_crit_edge, label %while.body169

if.end164.cleanup_crit_edge:                      ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.body169:                                    ; preds = %if.end164
  %dec170 = add nsw i32 %markidx.2, -1
  %arrayidx171 = getelementptr [5 x ptr], ptr %marker, i32 0, i32 %dec170
  %73 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx171, align 4
  tail call void @mpi_free_limb_space(ptr noundef %74) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec170)
  %tobool168.not = icmp eq i32 %dec170, 0
  br i1 %tobool168.not, label %while.body169.cleanup_crit_edge, label %while.body169.1

while.body169.cleanup_crit_edge:                  ; preds = %while.body169
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.body169.1:                                  ; preds = %while.body169
  call void @__sanitizer_cov_trace_pc() #6
  %dec170.1 = add nsw i32 %markidx.2, -2
  %arrayidx171.1 = getelementptr [5 x ptr], ptr %marker, i32 0, i32 %dec170.1
  %75 = ptrtoint ptr %arrayidx171.1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx171.1, align 4
  tail call void @mpi_free_limb_space(ptr noundef %76) #4
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end40, %if.end.cleanup.sink.split_crit_edge
  %quot.sink339 = phi ptr [ %rem, %if.end40 ], [ %quot, %if.end.cleanup.sink.split_crit_edge ]
  %.sink338 = phi i32 [ %cond, %if.end40 ], [ 0, %if.end.cleanup.sink.split_crit_edge ]
  %.sink = phi i32 [ %5, %if.end40 ], [ 0, %if.end.cleanup.sink.split_crit_edge ]
  %nlimbs14 = getelementptr inbounds %struct.gcry_mpi, ptr %quot.sink339, i32 0, i32 1
  %77 = ptrtoint ptr %nlimbs14 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %.sink338, ptr %nlimbs14, align 4
  %sign15 = getelementptr inbounds %struct.gcry_mpi, ptr %quot.sink339, i32 0, i32 3
  %78 = ptrtoint ptr %sign15 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %.sink, ptr %sign15, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %while.body169.1, %while.body169.cleanup_crit_edge, %if.end164.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %marker) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_sub_ui(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_resize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_divmod_1(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_mod_1(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_alloc_limb_space(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_lshift(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_divrem(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_rshift(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_free_limb_space(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

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
!9 = !{i32 0, i32 33}
