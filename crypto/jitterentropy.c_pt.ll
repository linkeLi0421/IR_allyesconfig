; ModuleID = '/llk/IR_all_yes/crypto/jitterentropy.c_pt.bc'
source_filename = "../crypto/jitterentropy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

%struct.rand_data = type { i64, i64, i64, i64, i64, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8 }

@__sancov_lowest_stack = external thread_local(initialexec) global i32

; Function Attrs: noinline nounwind null_pointer_is_valid optnone sspstrong uwtable(sync)
define dso_local i32 @jent_read_entropy(ptr noundef %ec, ptr noundef %data, i32 noundef %len) #0 align 64 {
entry:
  %retval = alloca i32, align 4
  %ec.addr = alloca ptr, align 4
  %data.addr = alloca ptr, align 4
  %len.addr = alloca i32, align 4
  %p = alloca ptr, align 4
  %tocopy = alloca i32, align 4
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %ec, ptr %ec.addr, align 4
  store ptr %data, ptr %data.addr, align 4
  store i32 %len, ptr %len.addr, align 4
  store ptr inttoptr (i32 -1 to ptr), ptr %p, align 4, !annotation !9
  %0 = load ptr, ptr %data.addr, align 4
  store ptr %0, ptr %p, align 4
  %1 = load ptr, ptr %ec.addr, align 4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end18, %if.end
  %2 = load i32, ptr %len.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp ugt i32 %2, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 -1, ptr %tocopy, align 4, !annotation !9
  %3 = load ptr, ptr %ec.addr, align 4
  call void @jent_gen_entropy(ptr noundef %3) #5
  %4 = load ptr, ptr %ec.addr, align 4
  %call = call i32 @jent_health_failure(ptr noundef %4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then2, label %if.end14

if.then2:                                         ; preds = %while.body
  store i32 -1, ptr %ret, align 4, !annotation !9
  %5 = load ptr, ptr %ec.addr, align 4
  %call3 = call i32 @jent_rct_failure(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #4
  store i32 -2, ptr %ret, align 4
  br label %if.end6

if.else:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #4
  store i32 -3, ptr %ret, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then5
  %call7 = call i32 @jent_entropy_init() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #4
  %6 = load i32, ptr %ret, align 4
  store i32 %6, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #4
  %7 = load ptr, ptr %ec.addr, align 4
  call void @jent_apt_reset(ptr noundef %7, i32 noundef 0) #5
  %8 = load ptr, ptr %ec.addr, align 4
  %apt_base_set = getelementptr inbounds %struct.rand_data, ptr %8, i32 0, i32 15
  %bf.load = load i8, ptr %apt_base_set, align 8
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, 0
  store i8 %bf.set, ptr %apt_base_set, align 8
  %9 = load ptr, ptr %ec.addr, align 4
  %rct_count = getelementptr inbounds %struct.rand_data, ptr %9, i32 0, i32 11
  store i32 0, ptr %rct_count, align 8
  %10 = load ptr, ptr %ec.addr, align 4
  %health_failure = getelementptr inbounds %struct.rand_data, ptr %10, i32 0, i32 15
  %bf.load11 = load i8, ptr %health_failure, align 8
  %bf.clear12 = and i8 %bf.load11, -65
  %bf.set13 = or i8 %bf.clear12, 0
  store i8 %bf.set13, ptr %health_failure, align 8
  %11 = load i32, ptr %ret, align 4
  store i32 %11, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %while.body
  %12 = load i32, ptr %len.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %12)
  %cmp15 = icmp ult i32 8, %12
  br i1 %cmp15, label %if.then16, label %if.else17

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #4
  store i32 8, ptr %tocopy, align 4
  br label %if.end18

if.else17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #4
  %13 = load i32, ptr %len.addr, align 4
  store i32 %13, ptr %tocopy, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.else17, %if.then16
  %14 = load ptr, ptr %p, align 4
  %15 = load ptr, ptr %ec.addr, align 4
  %data19 = getelementptr inbounds %struct.rand_data, ptr %15, i32 0, i32 0
  %16 = load i32, ptr %tocopy, align 4
  call void @jent_memcpy(ptr noundef %14, ptr noundef %data19, i32 noundef %16) #5
  %17 = load i32, ptr %tocopy, align 4
  %18 = load i32, ptr %len.addr, align 4
  %sub = sub i32 %18, %17
  store i32 %sub, ptr %len.addr, align 4
  %19 = load i32, ptr %tocopy, align 4
  %20 = load ptr, ptr %p, align 4
  %add.ptr = getelementptr i8, ptr %20, i32 %19
  store ptr %add.ptr, ptr %p, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.end10, %if.then9, %if.then
  %21 = load i32, ptr %retval, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone sspstrong uwtable(sync)
define internal void @jent_gen_entropy(ptr noundef %ec) #0 align 64 {
entry:
  %ec.addr = alloca ptr, align 4
  %k = alloca i32, align 4
  %safety_factor = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %ec, ptr %ec.addr, align 4
  store i32 -1, ptr %k, align 4, !annotation !9
  store i32 0, ptr %k, align 4
  store i32 -1, ptr %safety_factor, align 4, !annotation !9
  store i32 0, ptr %safety_factor, align 4
  %0 = load ptr, ptr %ec.addr, align 4
  %call = call i32 @jent_measure_jitter(ptr noundef %0) #5
  br label %while.cond

while.cond:                                       ; preds = %if.end5, %if.then, %entry
  %1 = load ptr, ptr %ec.addr, align 4
  %call1 = call i32 @jent_health_failure(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %ec.addr, align 4
  %call2 = call i32 @jent_measure_jitter(ptr noundef %2) #5
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.cond

if.end:                                           ; preds = %while.body
  %3 = load i32, ptr %k, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %k, align 4
  %4 = load i32, ptr %safety_factor, align 4
  %add = add i32 64, %4
  %5 = load ptr, ptr %ec.addr, align 4
  %osr = getelementptr inbounds %struct.rand_data, ptr %5, i32 0, i32 5
  %6 = load i32, ptr %osr, align 8
  %mul = mul i32 %add, %6
  %cmp = icmp uge i32 %inc, %mul
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.cond

while.end:                                        ; preds = %if.then4, %while.cond.while.end_crit_edge
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone sspstrong uwtable(sync)
define internal i32 @jent_health_failure(ptr noundef %ec) #0 align 64 {
entry:
  %ec.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %ec, ptr %ec.addr, align 4
  %0 = load ptr, ptr %ec.addr, align 4
  %health_failure = getelementptr inbounds %struct.rand_data, ptr %0, i32 0, i32 15
  %bf.load = load i8, ptr %health_failure, align 8
  %bf.lshr = lshr i8 %bf.load, 6
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  ret i32 %bf.cast
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone sspstrong uwtable(sync)
define internal i32 @jent_rct_failure(ptr noundef %ec) #0 align 64 {
entry:
  %retval = alloca i32, align 4
  %ec.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %ec, ptr %ec.addr, align 4
  %0 = load ptr, ptr %ec.addr, align 4
  %rct_count = getelementptr inbounds %struct.rand_data, ptr %0, i32 0, i32 11
  %1 = load i32, ptr %rct_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone sspstrong uwtable(sync)
define dso_local i32 @jent_entropy_init() #0 align 64 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %delta_sum = alloca i64, align 8
  %old_delta = alloca i64, align 8
  %nonstuck = alloca i32, align 4
  %time_backwards = alloca i32, align 4
  %count_mod = alloca i32, align 4
  %count_stuck = alloca i32, align 4
  %ec = alloca %struct.rand_data, align 8
  %time = alloca i64, align 8
  %time2 = alloca i64, align 8
  %delta = alloca i64, align 8
  %lowdelta = alloca i32, align 4
  %stuck = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 -1, ptr %i, align 4, !annotation !9
  store i64 -1, ptr %delta_sum, align 8, !annotation !9
  store i64 0, ptr %delta_sum, align 8
  store i64 -1, ptr %old_delta, align 8, !annotation !9
  store i64 0, ptr %old_delta, align 8
  store i32 -1, ptr %nonstuck, align 4, !annotation !9
  store i32 0, ptr %nonstuck, align 4
  store i32 -1, ptr %time_backwards, align 4, !annotation !9
  store i32 0, ptr %time_backwards, align 4
  store i32 -1, ptr %count_mod, align 4, !annotation !9
  store i32 0, ptr %count_mod, align 4
  store i32 -1, ptr %count_stuck, align 4, !annotation !9
  store i32 0, ptr %count_stuck, align 4
  call void @llvm.memset.p0.i32(ptr align 8 %ec, i8 0, i32 88, i1 false)
  %osr = getelementptr inbounds %struct.rand_data, ptr %ec, i32 0, i32 5
  store i32 1, ptr %osr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1124, i32 %0)
  %cmp = icmp sgt i32 1124, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i64 -1, ptr %time, align 8, !annotation !9
  store i64 0, ptr %time, align 8
  store i64 -1, ptr %time2, align 8, !annotation !9
  store i64 0, ptr %time2, align 8
  store i64 -1, ptr %delta, align 8, !annotation !9
  store i64 0, ptr %delta, align 8
  store i32 -1, ptr %lowdelta, align 4, !annotation !9
  store i32 0, ptr %lowdelta, align 4
  store i32 -1, ptr %stuck, align 4, !annotation !9
  call void @jent_get_nstime(ptr noundef %time) #5
  %1 = load i64, ptr %time, align 8
  %prev_time = getelementptr inbounds %struct.rand_data, ptr %ec, i32 0, i32 2
  store i64 %1, ptr %prev_time, align 8
  %2 = load i64, ptr %time, align 8
  call void @jent_lfsr_time(ptr noundef %ec, i64 noundef %2, i64 noundef 0, i32 noundef 0) #5
  call void @jent_get_nstime(ptr noundef %time2) #5
  %3 = load i64, ptr %time, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool = icmp ne i64 %3, 0
  br i1 %tobool, label %lor.lhs.false, label %for.body.if.then_crit_edge

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %4 = load i64, ptr %time2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool1 = icmp ne i64 %4, 0
  br i1 %tobool1, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %for.body.if.then_crit_edge
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i64, ptr %time, align 8
  %6 = load i64, ptr %time2, align 8
  %call = call i64 @jent_delta(i64 noundef %5, i64 noundef %6) #5
  store i64 %call, ptr %delta, align 8
  %7 = load i64, ptr %delta, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool2 = icmp ne i64 %7, 0
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  store i32 2, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %8 = load i64, ptr %delta, align 8
  %call5 = call i32 @jent_stuck(ptr noundef %ec, i64 noundef %8) #5
  store i32 %call5, ptr %stuck, align 4
  %9 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %9)
  %cmp6 = icmp slt i32 %9, 100
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc

if.end8:                                          ; preds = %if.end4
  %10 = load i32, ptr %stuck, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool9 = icmp ne i32 %10, 0
  br i1 %tobool9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #4
  %11 = load i32, ptr %count_stuck, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %count_stuck, align 4
  br label %if.end19

if.else:                                          ; preds = %if.end8
  %12 = load i32, ptr %nonstuck, align 4
  %inc11 = add i32 %12, 1
  store i32 %inc11, ptr %nonstuck, align 4
  %13 = load i32, ptr %nonstuck, align 4
  %rem = urem i32 %13, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp12 = icmp eq i32 %rem, 0
  br i1 %cmp12, label %if.then13, label %if.else.if.end18_crit_edge

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end18

if.then13:                                        ; preds = %if.else
  %14 = load i64, ptr %delta, align 8
  %and = and i64 %14, 15
  %conv = trunc i64 %and to i32
  call void @jent_apt_reset(ptr noundef %ec, i32 noundef %conv) #5
  %call14 = call i32 @jent_health_failure(ptr noundef %ec) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #4
  store i32 9, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.else.if.end18_crit_edge
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then10
  %call20 = call i32 @jent_rct_failure(ptr noundef %ec) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #4
  store i32 10, ptr %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.end19
  %15 = load i64, ptr %time2, align 8
  %16 = load i64, ptr %time, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %16)
  %cmp24 = icmp ugt i64 %15, %16
  br i1 %cmp24, label %if.end23.if.end28_crit_edge, label %if.then26

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end28

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #4
  %17 = load i32, ptr %time_backwards, align 4
  %inc27 = add i32 %17, 1
  store i32 %inc27, ptr %time_backwards, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end23.if.end28_crit_edge
  %18 = load i64, ptr %time2, align 8
  %19 = load i64, ptr %time, align 8
  %sub = sub i64 %18, %19
  %conv29 = trunc i64 %sub to i32
  store i32 %conv29, ptr %lowdelta, align 4
  %20 = load i32, ptr %lowdelta, align 4
  %rem30 = urem i32 %20, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem30)
  %tobool31 = icmp ne i32 %rem30, 0
  br i1 %tobool31, label %if.end28.if.end34_crit_edge, label %if.then32

if.end28.if.end34_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end34

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #4
  %21 = load i32, ptr %count_mod, align 4
  %inc33 = add i32 %21, 1
  store i32 %inc33, ptr %count_mod, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end28.if.end34_crit_edge
  %22 = load i64, ptr %delta, align 8
  %23 = load i64, ptr %old_delta, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %23)
  %cmp35 = icmp ugt i64 %22, %23
  br i1 %cmp35, label %if.then37, label %if.else39

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #4
  %24 = load i64, ptr %delta, align 8
  %25 = load i64, ptr %old_delta, align 8
  %sub38 = sub i64 %24, %25
  %26 = load i64, ptr %delta_sum, align 8
  %add = add i64 %26, %sub38
  store i64 %add, ptr %delta_sum, align 8
  br label %if.end42

if.else39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #4
  %27 = load i64, ptr %old_delta, align 8
  %28 = load i64, ptr %delta, align 8
  %sub40 = sub i64 %27, %28
  %29 = load i64, ptr %delta_sum, align 8
  %add41 = add i64 %29, %sub40
  store i64 %add41, ptr %delta_sum, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.else39, %if.then37
  %30 = load i64, ptr %delta, align 8
  store i64 %30, ptr %old_delta, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end42, %if.then7
  %31 = load i32, ptr %i, align 4
  %inc43 = add i32 %31, 1
  store i32 %inc43, ptr %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load i32, ptr %time_backwards, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %32)
  %cmp44 = icmp sgt i32 %32, 3
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #4
  store i32 3, ptr %retval, align 4
  br label %return

if.end47:                                         ; preds = %for.end
  %33 = load i64, ptr %delta_sum, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %33)
  %cmp48 = icmp ule i64 %33, 1
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #4
  store i32 5, ptr %retval, align 4
  br label %return

if.end51:                                         ; preds = %if.end47
  %34 = load i32, ptr %count_mod, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 918, i32 %34)
  %cmp52 = icmp slt i32 918, %34
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #4
  store i32 2, ptr %retval, align 4
  br label %return

if.end55:                                         ; preds = %if.end51
  %35 = load i32, ptr %count_stuck, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 918, i32 %35)
  %cmp56 = icmp slt i32 918, %35
  br i1 %cmp56, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #4
  store i32 8, ptr %retval, align 4
  br label %return

if.end59:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end59, %if.then58, %if.then54, %if.then50, %if.then46, %if.then22, %if.then16, %if.then3, %if.then
  %36 = load i32, ptr %retval, align 4
  ret i32 %36
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone sspstrong uwtable(sync)
define internal void @jent_apt_reset(ptr noundef %ec, i32 noundef %delta_masked) #0 align 64 {
entry:
  %ec.addr = alloca ptr, align 4
  %delta_masked.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %ec, ptr %ec.addr, align 4
  store i32 %delta_masked, ptr %delta_masked.addr, align 4
  %0 = load ptr, ptr %ec.addr, align 4
  %apt_count = getelementptr inbounds %struct.rand_data, ptr %0, i32 0, i32 13
  store i32 0, ptr %apt_count, align 8
  %1 = load i32, ptr %delta_masked.addr, align 4
  %2 = load ptr, ptr %ec.addr, align 4
  %apt_base = getelementptr inbounds %struct.rand_data, ptr %2, i32 0, i32 14
  store i32 %1, ptr %apt_base, align 4
  %3 = load ptr, ptr %ec.addr, align 4
  %apt_observations = getelementptr inbounds %struct.rand_data, ptr %3, i32 0, i32 12
  store i32 0, ptr %apt_observations, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @jent_memcpy(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind null_pointer_is_valid optnone sspstrong uwtable(sync)
define dso_local ptr @jent_entropy_collector_alloc(i32 noundef %osr, i32 noundef %flags) #0 align 64 {
entry:
  %retval = alloca ptr, align 4
  %osr.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %entropy_collector = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 %osr, ptr %osr.addr, align 4
  store i32 %flags, ptr %flags.addr, align 4
  store ptr inttoptr (i32 -1 to ptr), ptr %entropy_collector, align 4, !annotation !9
  %call = call ptr @jent_zalloc(i32 noundef 88) #5
  store ptr %call, ptr %entropy_collector, align 4
  %0 = load ptr, ptr %entropy_collector, align 4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  store ptr null, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.end.if.end8_crit_edge, label %if.then2

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end8

if.then2:                                         ; preds = %if.end
  %call3 = call ptr @jent_zalloc(i32 noundef 2048) #5
  %2 = load ptr, ptr %entropy_collector, align 4
  %mem = getelementptr inbounds %struct.rand_data, ptr %2, i32 0, i32 6
  store ptr %call3, ptr %mem, align 4
  %3 = load ptr, ptr %entropy_collector, align 4
  %mem4 = getelementptr inbounds %struct.rand_data, ptr %3, i32 0, i32 6
  %4 = load ptr, ptr %mem4, align 4
  %tobool5 = icmp ne ptr %4, null
  br i1 %tobool5, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #4
  %5 = load ptr, ptr %entropy_collector, align 4
  call void @jent_zfree(ptr noundef %5) #5
  store ptr null, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #4
  %6 = load ptr, ptr %entropy_collector, align 4
  %memblocksize = getelementptr inbounds %struct.rand_data, ptr %6, i32 0, i32 9
  store i32 32, ptr %memblocksize, align 8
  %7 = load ptr, ptr %entropy_collector, align 4
  %memblocks = getelementptr inbounds %struct.rand_data, ptr %7, i32 0, i32 8
  store i32 64, ptr %memblocks, align 4
  %8 = load ptr, ptr %entropy_collector, align 4
  %memaccessloops = getelementptr inbounds %struct.rand_data, ptr %8, i32 0, i32 10
  store i32 128, ptr %memaccessloops, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.end.if.end8_crit_edge
  %9 = load i32, ptr %osr.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then9, label %if.end8.if.end10_crit_edge

if.end8.if.end10_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end10

if.then9:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #4
  store i32 1, ptr %osr.addr, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end8.if.end10_crit_edge
  %10 = load i32, ptr %osr.addr, align 4
  %11 = load ptr, ptr %entropy_collector, align 4
  %osr11 = getelementptr inbounds %struct.rand_data, ptr %11, i32 0, i32 5
  store i32 %10, ptr %osr11, align 8
  %12 = load ptr, ptr %entropy_collector, align 4
  call void @jent_gen_entropy(ptr noundef %12) #5
  %13 = load ptr, ptr %entropy_collector, align 4
  store ptr %13, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end10, %if.then6, %if.then
  %14 = load ptr, ptr %retval, align 4
  ret ptr %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jent_zalloc(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @jent_zfree(ptr noundef) #1

; Function Attrs: noinline nounwind null_pointer_is_valid optnone sspstrong uwtable(sync)
define dso_local void @jent_entropy_collector_free(ptr noundef %entropy_collector) #0 align 64 {
entry:
  %entropy_collector.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %entropy_collector, ptr %entropy_collector.addr, align 4
  %0 = load ptr, ptr %entropy_collector.addr, align 4
  %mem = getelementptr inbounds %struct.rand_data, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %mem, align 4
  call void @jent_zfree(ptr noundef %1) #5
  %2 = load ptr, ptr %entropy_collector.addr, align 4
  %mem1 = getelementptr inbounds %struct.rand_data, ptr %2, i32 0, i32 6
  store ptr null, ptr %mem1, align 4
  %3 = load ptr, ptr %entropy_collector.addr, align 4
  call void @jent_zfree(ptr noundef %3) #5
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jent_get_nstime(ptr noundef) #1

; Function Attrs: noinline nounwind null_pointer_is_valid optnone sspstrong uwtable(sync)
define internal void @jent_lfsr_time(ptr noundef %ec, i64 noundef %time, i64 noundef %loop_cnt, i32 noundef %stuck) #0 align 64 {
entry:
  %ec.addr = alloca ptr, align 4
  %time.addr = alloca i64, align 8
  %loop_cnt.addr = alloca i64, align 8
  %stuck.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i64, align 8
  %new = alloca i64, align 8
  %fold_loop_cnt = alloca i64, align 8
  %tmp = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %ec, ptr %ec.addr, align 4
  store i64 %time, ptr %time.addr, align 8
  store i64 %loop_cnt, ptr %loop_cnt.addr, align 8
  store i32 %stuck, ptr %stuck.addr, align 4
  store i32 -1, ptr %i, align 4, !annotation !9
  store i64 -1, ptr %j, align 8, !annotation !9
  store i64 0, ptr %j, align 8
  store i64 -1, ptr %new, align 8, !annotation !9
  store i64 0, ptr %new, align 8
  store i64 -1, ptr %fold_loop_cnt, align 8, !annotation !9
  %0 = load ptr, ptr %ec.addr, align 4
  %call = call i64 @jent_loop_shuffle(ptr noundef %0, i32 noundef 4, i32 noundef 0) #5
  store i64 %call, ptr %fold_loop_cnt, align 8
  %1 = load i64, ptr %loop_cnt.addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool = icmp ne i64 %1, 0
  br i1 %tobool, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %2 = load i64, ptr %loop_cnt.addr, align 8
  store i64 %2, ptr %fold_loop_cnt, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  store i64 0, ptr %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc22, %if.end
  %3 = load i64, ptr %j, align 8
  %4 = load i64, ptr %fold_loop_cnt, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %4)
  %cmp = icmp ult i64 %3, %4
  br i1 %cmp, label %for.body, label %for.end24

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %ec.addr, align 4
  %data = getelementptr inbounds %struct.rand_data, ptr %5, i32 0, i32 0
  %6 = load i64, ptr %data, align 8
  store i64 %6, ptr %new, align 8
  store i32 1, ptr %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %7 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %7)
  %cmp2 = icmp uge i32 64, %7
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  store i64 -1, ptr %tmp, align 8, !annotation !9
  %8 = load i64, ptr %time.addr, align 8
  %9 = load i32, ptr %i, align 4
  %sub = sub i32 64, %9
  %sh_prom = zext i32 %sub to i64
  %shl = shl i64 %8, %sh_prom
  store i64 %shl, ptr %tmp, align 8
  %10 = load i64, ptr %tmp, align 8
  %shr = lshr i64 %10, 63
  store i64 %shr, ptr %tmp, align 8
  %11 = load i64, ptr %new, align 8
  %shr4 = lshr i64 %11, 63
  %and = and i64 %shr4, 1
  %12 = load i64, ptr %tmp, align 8
  %xor = xor i64 %12, %and
  store i64 %xor, ptr %tmp, align 8
  %13 = load i64, ptr %new, align 8
  %shr5 = lshr i64 %13, 60
  %and6 = and i64 %shr5, 1
  %14 = load i64, ptr %tmp, align 8
  %xor7 = xor i64 %14, %and6
  store i64 %xor7, ptr %tmp, align 8
  %15 = load i64, ptr %new, align 8
  %shr8 = lshr i64 %15, 55
  %and9 = and i64 %shr8, 1
  %16 = load i64, ptr %tmp, align 8
  %xor10 = xor i64 %16, %and9
  store i64 %xor10, ptr %tmp, align 8
  %17 = load i64, ptr %new, align 8
  %shr11 = lshr i64 %17, 30
  %and12 = and i64 %shr11, 1
  %18 = load i64, ptr %tmp, align 8
  %xor13 = xor i64 %18, %and12
  store i64 %xor13, ptr %tmp, align 8
  %19 = load i64, ptr %new, align 8
  %shr14 = lshr i64 %19, 27
  %and15 = and i64 %shr14, 1
  %20 = load i64, ptr %tmp, align 8
  %xor16 = xor i64 %20, %and15
  store i64 %xor16, ptr %tmp, align 8
  %21 = load i64, ptr %new, align 8
  %shr17 = lshr i64 %21, 22
  %and18 = and i64 %shr17, 1
  %22 = load i64, ptr %tmp, align 8
  %xor19 = xor i64 %22, %and18
  store i64 %xor19, ptr %tmp, align 8
  %23 = load i64, ptr %new, align 8
  %shl20 = shl i64 %23, 1
  store i64 %shl20, ptr %new, align 8
  %24 = load i64, ptr %tmp, align 8
  %25 = load i64, ptr %new, align 8
  %xor21 = xor i64 %25, %24
  store i64 %xor21, ptr %new, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #4
  %26 = load i32, ptr %i, align 4
  %inc = add i32 %26, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc22

for.inc22:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #4
  %27 = load i64, ptr %j, align 8
  %inc23 = add i64 %27, 1
  store i64 %inc23, ptr %j, align 8
  br label %for.cond

for.end24:                                        ; preds = %for.cond
  %28 = load i32, ptr %stuck.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool25 = icmp ne i32 %28, 0
  br i1 %tobool25, label %for.end24.if.end28_crit_edge, label %if.then26

for.end24.if.end28_crit_edge:                     ; preds = %for.end24
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end28

if.then26:                                        ; preds = %for.end24
  call void @__sanitizer_cov_trace_pc() #4
  %29 = load i64, ptr %new, align 8
  %30 = load ptr, ptr %ec.addr, align 4
  %data27 = getelementptr inbounds %struct.rand_data, ptr %30, i32 0, i32 0
  store i64 %29, ptr %data27, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %for.end24.if.end28_crit_edge
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone sspstrong uwtable(sync)
define internal i64 @jent_delta(i64 noundef %prev, i64 noundef %next) #0 align 64 {
entry:
  %prev.addr = alloca i64, align 8
  %next.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #4
  store i64 %prev, ptr %prev.addr, align 8
  store i64 %next, ptr %next.addr, align 8
  %0 = load i64, ptr %prev.addr, align 8
  %1 = load i64, ptr %next.addr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %0, i64 %1)
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %2 = load i64, ptr %next.addr, align 8
  %3 = load i64, ptr %prev.addr, align 8
  %sub = sub i64 %2, %3
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %4 = load i64, ptr %prev.addr, align 8
  %sub1 = sub i64 -1, %4
  %add = add i64 %sub1, 1
  %5 = load i64, ptr %next.addr, align 8
  %add2 = add i64 %add, %5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ %add2, %cond.false ]
  ret i64 %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone sspstrong uwtable(sync)
define internal i32 @jent_stuck(ptr noundef %ec, i64 noundef %current_delta) #0 align 64 {
entry:
  %retval = alloca i32, align 4
  %ec.addr = alloca ptr, align 4
  %current_delta.addr = alloca i64, align 8
  %delta2 = alloca i64, align 8
  %delta3 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %ec, ptr %ec.addr, align 4
  store i64 %current_delta, ptr %current_delta.addr, align 8
  store i64 -1, ptr %delta2, align 8, !annotation !9
  %0 = load ptr, ptr %ec.addr, align 4
  %last_delta = getelementptr inbounds %struct.rand_data, ptr %0, i32 0, i32 3
  %1 = load i64, ptr %last_delta, align 8
  %2 = load i64, ptr %current_delta.addr, align 8
  %call = call i64 @jent_delta(i64 noundef %1, i64 noundef %2) #5
  store i64 %call, ptr %delta2, align 8
  store i64 -1, ptr %delta3, align 8, !annotation !9
  %3 = load ptr, ptr %ec.addr, align 4
  %last_delta2 = getelementptr inbounds %struct.rand_data, ptr %3, i32 0, i32 4
  %4 = load i64, ptr %last_delta2, align 8
  %5 = load i64, ptr %delta2, align 8
  %call1 = call i64 @jent_delta(i64 noundef %4, i64 noundef %5) #5
  store i64 %call1, ptr %delta3, align 8
  %6 = load i64, ptr %current_delta.addr, align 8
  %7 = load ptr, ptr %ec.addr, align 4
  %last_delta3 = getelementptr inbounds %struct.rand_data, ptr %7, i32 0, i32 3
  store i64 %6, ptr %last_delta3, align 8
  %8 = load i64, ptr %delta2, align 8
  %9 = load ptr, ptr %ec.addr, align 4
  %last_delta24 = getelementptr inbounds %struct.rand_data, ptr %9, i32 0, i32 4
  store i64 %8, ptr %last_delta24, align 8
  %10 = load ptr, ptr %ec.addr, align 4
  %11 = load i64, ptr %current_delta.addr, align 8
  %conv = trunc i64 %11 to i32
  call void @jent_apt_insert(ptr noundef %10, i32 noundef %conv) #5
  %12 = load i64, ptr %current_delta.addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %tobool = icmp ne i64 %12, 0
  br i1 %tobool, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %13 = load i64, ptr %delta2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %tobool5 = icmp ne i64 %13, 0
  br i1 %tobool5, label %lor.lhs.false6, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %14 = load i64, ptr %delta3, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %tobool7 = icmp ne i64 %14, 0
  br i1 %tobool7, label %if.end, label %lor.lhs.false6.if.then_crit_edge

lor.lhs.false6.if.then_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false6.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %15 = load ptr, ptr %ec.addr, align 4
  call void @jent_rct_insert(ptr noundef %15, i32 noundef 1) #5
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #4
  %16 = load ptr, ptr %ec.addr, align 4
  call void @jent_rct_insert(ptr noundef %16, i32 noundef 0) #5
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone sspstrong uwtable(sync)
define internal i32 @jent_measure_jitter(ptr noundef %ec) #0 align 64 {
entry:
  %ec.addr = alloca ptr, align 4
  %time = alloca i64, align 8
  %current_delta = alloca i64, align 8
  %stuck = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %ec, ptr %ec.addr, align 4
  store i64 -1, ptr %time, align 8, !annotation !9
  store i64 0, ptr %time, align 8
  store i64 -1, ptr %current_delta, align 8, !annotation !9
  store i64 0, ptr %current_delta, align 8
  store i32 -1, ptr %stuck, align 4, !annotation !9
  %0 = load ptr, ptr %ec.addr, align 4
  call void @jent_memaccess(ptr noundef %0, i64 noundef 0) #5
  call void @jent_get_nstime(ptr noundef %time) #5
  %1 = load ptr, ptr %ec.addr, align 4
  %prev_time = getelementptr inbounds %struct.rand_data, ptr %1, i32 0, i32 2
  %2 = load i64, ptr %prev_time, align 8
  %3 = load i64, ptr %time, align 8
  %call = call i64 @jent_delta(i64 noundef %2, i64 noundef %3) #5
  store i64 %call, ptr %current_delta, align 8
  %4 = load i64, ptr %time, align 8
  %5 = load ptr, ptr %ec.addr, align 4
  %prev_time1 = getelementptr inbounds %struct.rand_data, ptr %5, i32 0, i32 2
  store i64 %4, ptr %prev_time1, align 8
  %6 = load ptr, ptr %ec.addr, align 4
  %7 = load i64, ptr %current_delta, align 8
  %call2 = call i32 @jent_stuck(ptr noundef %6, i64 noundef %7) #5
  store i32 %call2, ptr %stuck, align 4
  %8 = load ptr, ptr %ec.addr, align 4
  %9 = load i64, ptr %current_delta, align 8
  %10 = load i32, ptr %stuck, align 4
  call void @jent_lfsr_time(ptr noundef %8, i64 noundef %9, i64 noundef 0, i32 noundef %10) #5
  %11 = load i32, ptr %stuck, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone sspstrong uwtable(sync)
define internal void @jent_memaccess(ptr noundef %ec, i64 noundef %loop_cnt) #0 align 64 {
entry:
  %ec.addr = alloca ptr, align 4
  %loop_cnt.addr = alloca i64, align 8
  %wrap = alloca i32, align 4
  %i = alloca i64, align 8
  %acc_loop_cnt = alloca i64, align 8
  %tmpval = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %ec, ptr %ec.addr, align 4
  store i64 %loop_cnt, ptr %loop_cnt.addr, align 8
  store i32 -1, ptr %wrap, align 4, !annotation !9
  store i32 0, ptr %wrap, align 4
  store i64 -1, ptr %i, align 8, !annotation !9
  store i64 0, ptr %i, align 8
  store i64 -1, ptr %acc_loop_cnt, align 8, !annotation !9
  %0 = load ptr, ptr %ec.addr, align 4
  %call = call i64 @jent_loop_shuffle(ptr noundef %0, i32 noundef 7, i32 noundef 0) #5
  store i64 %call, ptr %acc_loop_cnt, align 8
  %1 = load ptr, ptr %ec.addr, align 4
  %cmp = icmp eq ptr null, %1
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %ec.addr, align 4
  %mem = getelementptr inbounds %struct.rand_data, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %mem, align 4
  %cmp1 = icmp eq ptr null, %3
  br i1 %cmp1, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %ec.addr, align 4
  %memblocksize = getelementptr inbounds %struct.rand_data, ptr %4, i32 0, i32 9
  %5 = load i32, ptr %memblocksize, align 8
  %6 = load ptr, ptr %ec.addr, align 4
  %memblocks = getelementptr inbounds %struct.rand_data, ptr %6, i32 0, i32 8
  %7 = load i32, ptr %memblocks, align 4
  %mul = mul i32 %5, %7
  store i32 %mul, ptr %wrap, align 4
  %8 = load i64, ptr %loop_cnt.addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool = icmp ne i64 %8, 0
  br i1 %tobool, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %9 = load i64, ptr %loop_cnt.addr, align 8
  store i64 %9, ptr %acc_loop_cnt, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end3
  %10 = load i64, ptr %i, align 8
  %11 = load ptr, ptr %ec.addr, align 4
  %memaccessloops = getelementptr inbounds %struct.rand_data, ptr %11, i32 0, i32 10
  %12 = load i32, ptr %memaccessloops, align 4
  %conv = zext i32 %12 to i64
  %13 = load i64, ptr %acc_loop_cnt, align 8
  %add = add i64 %conv, %13
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %add)
  %cmp4 = icmp ult i64 %10, %add
  br i1 %cmp4, label %for.body, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.body:                                         ; preds = %for.cond
  store ptr inttoptr (i32 -1 to ptr), ptr %tmpval, align 4, !annotation !9
  %14 = load ptr, ptr %ec.addr, align 4
  %mem6 = getelementptr inbounds %struct.rand_data, ptr %14, i32 0, i32 6
  %15 = load ptr, ptr %mem6, align 4
  %16 = load ptr, ptr %ec.addr, align 4
  %memlocation = getelementptr inbounds %struct.rand_data, ptr %16, i32 0, i32 7
  %17 = load i32, ptr %memlocation, align 8
  %add.ptr = getelementptr i8, ptr %15, i32 %17
  store ptr %add.ptr, ptr %tmpval, align 4
  %18 = load ptr, ptr %tmpval, align 4
  %19 = load i8, ptr %18, align 1
  %conv7 = zext i8 %19 to i32
  %add8 = add i32 %conv7, 1
  %and = and i32 %add8, 255
  %conv9 = trunc i32 %and to i8
  %20 = load ptr, ptr %tmpval, align 4
  store i8 %conv9, ptr %20, align 1
  %21 = load ptr, ptr %ec.addr, align 4
  %memlocation10 = getelementptr inbounds %struct.rand_data, ptr %21, i32 0, i32 7
  %22 = load i32, ptr %memlocation10, align 8
  %23 = load ptr, ptr %ec.addr, align 4
  %memblocksize11 = getelementptr inbounds %struct.rand_data, ptr %23, i32 0, i32 9
  %24 = load i32, ptr %memblocksize11, align 8
  %add12 = add i32 %22, %24
  %sub = sub i32 %add12, 1
  %25 = load ptr, ptr %ec.addr, align 4
  %memlocation13 = getelementptr inbounds %struct.rand_data, ptr %25, i32 0, i32 7
  store i32 %sub, ptr %memlocation13, align 8
  %26 = load ptr, ptr %ec.addr, align 4
  %memlocation14 = getelementptr inbounds %struct.rand_data, ptr %26, i32 0, i32 7
  %27 = load i32, ptr %memlocation14, align 8
  %28 = load i32, ptr %wrap, align 4
  %rem = urem i32 %27, %28
  %29 = load ptr, ptr %ec.addr, align 4
  %memlocation15 = getelementptr inbounds %struct.rand_data, ptr %29, i32 0, i32 7
  store i32 %rem, ptr %memlocation15, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  %30 = load i64, ptr %i, align 8
  %inc = add i64 %30, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone sspstrong uwtable(sync)
define internal i64 @jent_loop_shuffle(ptr noundef %ec, i32 noundef %bits, i32 noundef %min) #0 align 64 {
entry:
  %ec.addr = alloca ptr, align 4
  %bits.addr = alloca i32, align 4
  %min.addr = alloca i32, align 4
  %time = alloca i64, align 8
  %shuffle = alloca i64, align 8
  %i = alloca i32, align 4
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %ec, ptr %ec.addr, align 4
  store i32 %bits, ptr %bits.addr, align 4
  store i32 %min, ptr %min.addr, align 4
  store i64 -1, ptr %time, align 8, !annotation !9
  store i64 0, ptr %time, align 8
  store i64 -1, ptr %shuffle, align 8, !annotation !9
  store i64 0, ptr %shuffle, align 8
  store i32 -1, ptr %i, align 4, !annotation !9
  store i32 0, ptr %i, align 4
  store i32 -1, ptr %mask, align 4, !annotation !9
  %0 = load i32, ptr %bits.addr, align 4
  %shl = shl i32 1, %0
  %sub = sub i32 %shl, 1
  store i32 %sub, ptr %mask, align 4
  call void @jent_get_nstime(ptr noundef %time) #5
  %1 = load ptr, ptr %ec.addr, align 4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %2 = load ptr, ptr %ec.addr, align 4
  %data = getelementptr inbounds %struct.rand_data, ptr %2, i32 0, i32 0
  %3 = load i64, ptr %data, align 8
  %4 = load i64, ptr %time, align 8
  %xor = xor i64 %4, %3
  store i64 %xor, ptr %time, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, ptr %bits.addr, align 4
  %add = add i32 64, %5
  %sub1 = sub i32 %add, 1
  %6 = load i32, ptr %bits.addr, align 4
  %div = udiv i32 %sub1, %6
  %7 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %7)
  %cmp = icmp ugt i32 %div, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i64, ptr %time, align 8
  %9 = load i32, ptr %mask, align 4
  %conv = zext i32 %9 to i64
  %and = and i64 %8, %conv
  %10 = load i64, ptr %shuffle, align 8
  %xor2 = xor i64 %10, %and
  store i64 %xor2, ptr %shuffle, align 8
  %11 = load i64, ptr %time, align 8
  %12 = load i32, ptr %bits.addr, align 4
  %sh_prom = zext i32 %12 to i64
  %shr = lshr i64 %11, %sh_prom
  store i64 %shr, ptr %time, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  %13 = load i32, ptr %i, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #4
  %14 = load i64, ptr %shuffle, align 8
  %15 = load i32, ptr %min.addr, align 4
  %shl3 = shl i32 1, %15
  %conv4 = sext i32 %shl3 to i64
  %add5 = add i64 %14, %conv4
  ret i64 %add5
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone sspstrong uwtable(sync)
define internal void @jent_apt_insert(ptr noundef %ec, i32 noundef %delta_masked) #0 align 64 {
entry:
  %ec.addr = alloca ptr, align 4
  %delta_masked.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %ec, ptr %ec.addr, align 4
  store i32 %delta_masked, ptr %delta_masked.addr, align 4
  %0 = load ptr, ptr %ec.addr, align 4
  %apt_base_set = getelementptr inbounds %struct.rand_data, ptr %0, i32 0, i32 15
  %bf.load = load i8, ptr %apt_base_set, align 8
  %bf.lshr = lshr i8 %bf.load, 7
  %bf.cast = zext i8 %bf.lshr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast)
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %1 = load i32, ptr %delta_masked.addr, align 4
  %2 = load ptr, ptr %ec.addr, align 4
  %apt_base = getelementptr inbounds %struct.rand_data, ptr %2, i32 0, i32 14
  store i32 %1, ptr %apt_base, align 4
  %3 = load ptr, ptr %ec.addr, align 4
  %apt_base_set1 = getelementptr inbounds %struct.rand_data, ptr %3, i32 0, i32 15
  %bf.load2 = load i8, ptr %apt_base_set1, align 8
  %bf.clear = and i8 %bf.load2, 127
  %bf.set = or i8 %bf.clear, -128
  store i8 %bf.set, ptr %apt_base_set1, align 8
  br label %if.end17

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %delta_masked.addr, align 4
  %5 = load ptr, ptr %ec.addr, align 4
  %apt_base3 = getelementptr inbounds %struct.rand_data, ptr %5, i32 0, i32 14
  %6 = load i32, ptr %apt_base3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp = icmp eq i32 %4, %6
  br i1 %cmp, label %if.then4, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end12

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %ec.addr, align 4
  %apt_count = getelementptr inbounds %struct.rand_data, ptr %7, i32 0, i32 13
  %8 = load i32, ptr %apt_count, align 8
  %inc = add i32 %8, 1
  store i32 %inc, ptr %apt_count, align 8
  %9 = load ptr, ptr %ec.addr, align 4
  %apt_count5 = getelementptr inbounds %struct.rand_data, ptr %9, i32 0, i32 13
  %10 = load i32, ptr %apt_count5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 325, i32 %10)
  %cmp6 = icmp uge i32 %10, 325
  br i1 %cmp6, label %if.then7, label %if.then4.if.end11_crit_edge

if.then4.if.end11_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end11

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #4
  %11 = load ptr, ptr %ec.addr, align 4
  %health_failure = getelementptr inbounds %struct.rand_data, ptr %11, i32 0, i32 15
  %bf.load8 = load i8, ptr %health_failure, align 8
  %bf.clear9 = and i8 %bf.load8, -65
  %bf.set10 = or i8 %bf.clear9, 64
  store i8 %bf.set10, ptr %health_failure, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.then4.if.end11_crit_edge
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end.if.end12_crit_edge
  %12 = load ptr, ptr %ec.addr, align 4
  %apt_observations = getelementptr inbounds %struct.rand_data, ptr %12, i32 0, i32 12
  %13 = load i32, ptr %apt_observations, align 4
  %inc13 = add i32 %13, 1
  store i32 %inc13, ptr %apt_observations, align 4
  %14 = load ptr, ptr %ec.addr, align 4
  %apt_observations14 = getelementptr inbounds %struct.rand_data, ptr %14, i32 0, i32 12
  %15 = load i32, ptr %apt_observations14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %15)
  %cmp15 = icmp uge i32 %15, 512
  br i1 %cmp15, label %if.then16, label %if.end12.if.end17_crit_edge

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end17

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #4
  %16 = load ptr, ptr %ec.addr, align 4
  %17 = load i32, ptr %delta_masked.addr, align 4
  call void @jent_apt_reset(ptr noundef %16, i32 noundef %17) #5
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end12.if.end17_crit_edge, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone sspstrong uwtable(sync)
define internal void @jent_rct_insert(ptr noundef %ec, i32 noundef %stuck) #0 align 64 {
entry:
  %ec.addr = alloca ptr, align 4
  %stuck.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %ec, ptr %ec.addr, align 4
  store i32 %stuck, ptr %stuck.addr, align 4
  %0 = load ptr, ptr %ec.addr, align 4
  %rct_count = getelementptr inbounds %struct.rand_data, ptr %0, i32 0, i32 11
  %1 = load i32, ptr %rct_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end9

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %stuck.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %3 = load ptr, ptr %ec.addr, align 4
  %rct_count2 = getelementptr inbounds %struct.rand_data, ptr %3, i32 0, i32 11
  %4 = load i32, ptr %rct_count2, align 8
  %inc = add i32 %4, 1
  store i32 %inc, ptr %rct_count2, align 8
  %5 = load ptr, ptr %ec.addr, align 4
  %rct_count3 = getelementptr inbounds %struct.rand_data, ptr %5, i32 0, i32 11
  %6 = load i32, ptr %rct_count3, align 8
  %7 = load ptr, ptr %ec.addr, align 4
  %osr = getelementptr inbounds %struct.rand_data, ptr %7, i32 0, i32 5
  %8 = load i32, ptr %osr, align 8
  %mul = mul i32 31, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %mul)
  %cmp4 = icmp uge i32 %6, %mul
  br i1 %cmp4, label %if.then5, label %if.then1.if.end7_crit_edge

if.then1.if.end7_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end7

if.then5:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #4
  %9 = load ptr, ptr %ec.addr, align 4
  %rct_count6 = getelementptr inbounds %struct.rand_data, ptr %9, i32 0, i32 11
  store i32 -1, ptr %rct_count6, align 8
  %10 = load ptr, ptr %ec.addr, align 4
  %health_failure = getelementptr inbounds %struct.rand_data, ptr %10, i32 0, i32 15
  %bf.load = load i8, ptr %health_failure, align 8
  %bf.clear = and i8 %bf.load, -65
  %bf.set = or i8 %bf.clear, 64
  store i8 %bf.set, ptr %health_failure, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then1.if.end7_crit_edge
  br label %if.end9

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %11 = load ptr, ptr %ec.addr, align 4
  %rct_count8 = getelementptr inbounds %struct.rand_data, ptr %11, i32 0, i32 11
  store i32 0, ptr %rct_count8, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.end7, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc_indir(i32)

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_load1(ptr)

declare void @__sanitizer_cov_load2(ptr)

declare void @__sanitizer_cov_load4(ptr)

declare void @__sanitizer_cov_load8(ptr)

declare void @__sanitizer_cov_load16(ptr)

declare void @__sanitizer_cov_store1(ptr)

declare void @__sanitizer_cov_store2(ptr)

declare void @__sanitizer_cov_store4(ptr)

declare void @__sanitizer_cov_store8(ptr)

declare void @__sanitizer_cov_store16(ptr)

declare void @__sanitizer_cov_trace_div4(i32 zeroext)

declare void @__sanitizer_cov_trace_div8(i64)

declare void @__sanitizer_cov_trace_gep(i32)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__sanitizer_cov_trace_pc_guard(ptr)

attributes #0 = { noinline nounwind null_pointer_is_valid optnone sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nounwind }
attributes #4 = { nomerge }
attributes #5 = { nobuiltin "no-builtins" }

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
!9 = !{!"auto-init"}
