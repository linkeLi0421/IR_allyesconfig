; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/tegra/mipi-phy.c_pt.bc'
source_filename = "../drivers/gpu/drm/tegra/mipi-phy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mipi_dphy_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @mipi_dphy_timing_get_default(ptr noundef writeonly %timing, i32 noundef %period) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %timing to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %timing, align 4
  %mul = mul i32 %period, 52
  %add = add i32 %mul, 70
  %clkpost = getelementptr inbounds %struct.mipi_dphy_timing, ptr %timing, i32 0, i32 1
  %1 = ptrtoint ptr %clkpost to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %add, ptr %clkpost, align 4
  %clkpre = getelementptr inbounds %struct.mipi_dphy_timing, ptr %timing, i32 0, i32 2
  %2 = ptrtoint ptr %clkpre to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 8, ptr %clkpre, align 4
  %clkprepare = getelementptr inbounds %struct.mipi_dphy_timing, ptr %timing, i32 0, i32 3
  %3 = ptrtoint ptr %clkprepare to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 65, ptr %clkprepare, align 4
  %clksettle = getelementptr inbounds %struct.mipi_dphy_timing, ptr %timing, i32 0, i32 4
  %4 = ptrtoint ptr %clksettle to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 95, ptr %clksettle, align 4
  %clktermen = getelementptr inbounds %struct.mipi_dphy_timing, ptr %timing, i32 0, i32 5
  %5 = ptrtoint ptr %clktermen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %clktermen, align 4
  %clktrail = getelementptr inbounds %struct.mipi_dphy_timing, ptr %timing, i32 0, i32 6
  %6 = ptrtoint ptr %clktrail to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 80, ptr %clktrail, align 4
  %clkzero = getelementptr inbounds %struct.mipi_dphy_timing, ptr %timing, i32 0, i32 7
  %7 = ptrtoint ptr %clkzero to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 260, ptr %clkzero, align 4
  %dtermen = getelementptr inbounds %struct.mipi_dphy_timing, ptr %timing, i32 0, i32 8
  %8 = ptrtoint ptr %dtermen to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %dtermen, align 4
  %eot = getelementptr inbounds %struct.mipi_dphy_timing, ptr %timing, i32 0, i32 9
  %9 = ptrtoint ptr %eot to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %eot, align 4
  %hsexit = getelementptr inbounds %struct.mipi_dphy_timing, ptr %timing, i32 0, i32 10
  %10 = ptrtoint ptr %hsexit to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 120, ptr %hsexit, align 4
  %mul1 = mul i32 %period, 5
  %add2 = add i32 %mul1, 65
  %hsprepare = getelementptr inbounds %struct.mipi_dphy_timing, ptr %timing, i32 0, i32 11
  %11 = ptrtoint ptr %hsprepare to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add2, ptr %hsprepare, align 4
  %add4 = add i32 %mul1, 145
  %hszero = getelementptr inbounds %struct.mipi_dphy_timing, ptr %timing, i32 0, i32 12
  %12 = ptrtoint ptr %hszero to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add4, ptr %hszero, align 4
  %mul5 = mul i32 %period, 6
  %add6 = add i32 %mul5, 85
  %hssettle = getelementptr inbounds %struct.mipi_dphy_timing, ptr %timing, i32 0, i32 13
  %13 = ptrtoint ptr %hssettle to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add6, ptr %hssettle, align 4
  %hsskip = getelementptr inbounds %struct.mipi_dphy_timing, ptr %timing, i32 0, i32 14
  %14 = ptrtoint ptr %hsskip to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 40, ptr %hsskip, align 4
  %mul7 = shl i32 %period, 5
  %mul8 = shl i32 %period, 4
  %add9 = add i32 %mul8, 60
  %15 = tail call i32 @llvm.umax.i32(i32 %mul7, i32 %add9)
  %hstrail = getelementptr inbounds %struct.mipi_dphy_timing, ptr %timing, i32 0, i32 15
  %16 = ptrtoint ptr %hstrail to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %hstrail, align 4
  %init = getelementptr inbounds %struct.mipi_dphy_timing, ptr %timing, i32 0, i32 16
  %17 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 100000, ptr %init, align 4
  %lpx = getelementptr inbounds %struct.mipi_dphy_timing, ptr %timing, i32 0, i32 17
  %18 = ptrtoint ptr %lpx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 60, ptr %lpx, align 4
  %taget = getelementptr inbounds %struct.mipi_dphy_timing, ptr %timing, i32 0, i32 18
  %19 = ptrtoint ptr %taget to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 300, ptr %taget, align 4
  %tago = getelementptr inbounds %struct.mipi_dphy_timing, ptr %timing, i32 0, i32 19
  %20 = ptrtoint ptr %tago to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 240, ptr %tago, align 4
  %tasure = getelementptr inbounds %struct.mipi_dphy_timing, ptr %timing, i32 0, i32 20
  %21 = ptrtoint ptr %tasure to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 120, ptr %tasure, align 4
  %wakeup = getelementptr inbounds %struct.mipi_dphy_timing, ptr %timing, i32 0, i32 21
  %22 = ptrtoint ptr %wakeup to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1000000, ptr %wakeup, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mipi_dphy_timing_validate(ptr noundef readonly %timing, i32 noundef %period) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %1)
  %cmp = icmp ugt i32 %1, 60
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  %clkpost = getelementptr inbounds %struct.mipi_dphy_timing, ptr %timing, i32 0, i32 1
  %2 = ptrtoint ptr %clkpost to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clkpost, align 4
  %mul = mul i32 %period, 52
  %add = add i32 %mul, 60
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add)
  %cmp1 = icmp ult i32 %3, %add
  br i1 %cmp1, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end3:                                          ; preds = %if.end
  %clkpre = getelementptr inbounds %struct.mipi_dphy_timing, ptr %timing, i32 0, i32 2
  %4 = ptrtoint ptr %clkpre to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clkpre, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %cmp4 = icmp ult i32 %5, 8
  br i1 %cmp4, label %if.end3.return_crit_edge, label %if.end6

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end6:                                          ; preds = %if.end3
  %clkprepare = getelementptr inbounds %struct.mipi_dphy_timing, ptr %timing, i32 0, i32 3
  %6 = ptrtoint ptr %clkprepare to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clkprepare, align 4
  %8 = add i32 %7, -96
  call void @__sanitizer_cov_trace_const_cmp4(i32 -58, i32 %8)
  %9 = icmp ult i32 %8, -58
  br i1 %9, label %if.end6.return_crit_edge, label %if.end11

if.end6.return_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end11:                                         ; preds = %if.end6
  %clksettle = getelementptr inbounds %struct.mipi_dphy_timing, ptr %timing, i32 0, i32 4
  %10 = ptrtoint ptr %clksettle to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %clksettle, align 4
  %12 = add i32 %11, -301
  call void @__sanitizer_cov_trace_const_cmp4(i32 -206, i32 %12)
  %13 = icmp ult i32 %12, -206
  br i1 %13, label %if.end11.return_crit_edge, label %if.end17

if.end11.return_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end17:                                         ; preds = %if.end11
  %clktermen = getelementptr inbounds %struct.mipi_dphy_timing, ptr %timing, i32 0, i32 5
  %14 = ptrtoint ptr %clktermen to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %clktermen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %15)
  %cmp18 = icmp ugt i32 %15, 38
  br i1 %cmp18, label %if.end17.return_crit_edge, label %if.end20

if.end17.return_crit_edge:                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end20:                                         ; preds = %if.end17
  %clktrail = getelementptr inbounds %struct.mipi_dphy_timing, ptr %timing, i32 0, i32 6
  %16 = ptrtoint ptr %clktrail to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %clktrail, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %17)
  %cmp21 = icmp ult i32 %17, 60
  br i1 %cmp21, label %if.end20.return_crit_edge, label %if.end23

if.end20.return_crit_edge:                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end23:                                         ; preds = %if.end20
  %clkzero = getelementptr inbounds %struct.mipi_dphy_timing, ptr %timing, i32 0, i32 7
  %18 = ptrtoint ptr %clkzero to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %clkzero, align 4
  %add25 = add i32 %19, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 300, i32 %add25)
  %cmp26 = icmp ult i32 %add25, 300
  br i1 %cmp26, label %if.end23.return_crit_edge, label %if.end28

if.end23.return_crit_edge:                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end28:                                         ; preds = %if.end23
  %dtermen = getelementptr inbounds %struct.mipi_dphy_timing, ptr %timing, i32 0, i32 8
  %20 = ptrtoint ptr %dtermen to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dtermen, align 4
  %mul29 = shl i32 %period, 2
  %add30 = add i32 %mul29, 35
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %add30)
  %cmp31 = icmp ugt i32 %21, %add30
  br i1 %cmp31, label %if.end28.return_crit_edge, label %if.end33

if.end28.return_crit_edge:                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end33:                                         ; preds = %if.end28
  %eot = getelementptr inbounds %struct.mipi_dphy_timing, ptr %timing, i32 0, i32 9
  %22 = ptrtoint ptr %eot to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %eot, align 4
  %mul34 = mul i32 %period, 12
  %add35 = add i32 %mul34, 105
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %add35)
  %cmp36 = icmp ugt i32 %23, %add35
  br i1 %cmp36, label %if.end33.return_crit_edge, label %if.end38

if.end33.return_crit_edge:                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end38:                                         ; preds = %if.end33
  %hsexit = getelementptr inbounds %struct.mipi_dphy_timing, ptr %timing, i32 0, i32 10
  %24 = ptrtoint ptr %hsexit to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hsexit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %25)
  %cmp39 = icmp ult i32 %25, 100
  br i1 %cmp39, label %if.end38.return_crit_edge, label %if.end41

if.end38.return_crit_edge:                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end41:                                         ; preds = %if.end38
  %hsprepare = getelementptr inbounds %struct.mipi_dphy_timing, ptr %timing, i32 0, i32 11
  %26 = ptrtoint ptr %hsprepare to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hsprepare, align 4
  %add43 = add i32 %mul29, 40
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %add43)
  %cmp44 = icmp ult i32 %27, %add43
  br i1 %cmp44, label %if.end41.return_crit_edge, label %lor.lhs.false45

if.end41.return_crit_edge:                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

lor.lhs.false45:                                  ; preds = %if.end41
  %mul47 = mul i32 %period, 6
  %add48 = add i32 %mul47, 85
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %add48)
  %cmp49 = icmp ugt i32 %27, %add48
  br i1 %cmp49, label %lor.lhs.false45.return_crit_edge, label %if.end51

lor.lhs.false45.return_crit_edge:                 ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end51:                                         ; preds = %lor.lhs.false45
  %hszero = getelementptr inbounds %struct.mipi_dphy_timing, ptr %timing, i32 0, i32 12
  %28 = ptrtoint ptr %hszero to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hszero, align 4
  %add53 = add i32 %29, %27
  %mul54 = mul i32 %period, 10
  %add55 = add i32 %mul54, 145
  call void @__sanitizer_cov_trace_cmp4(i32 %add53, i32 %add55)
  %cmp56 = icmp ult i32 %add53, %add55
  br i1 %cmp56, label %if.end51.return_crit_edge, label %if.end58

if.end51.return_crit_edge:                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end58:                                         ; preds = %if.end51
  %hssettle = getelementptr inbounds %struct.mipi_dphy_timing, ptr %timing, i32 0, i32 13
  %30 = ptrtoint ptr %hssettle to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hssettle, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %add48)
  %cmp61 = icmp ult i32 %31, %add48
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %add55)
  %cmp66 = icmp ugt i32 %31, %add55
  %or.cond164 = or i1 %cmp61, %cmp66
  br i1 %or.cond164, label %if.end58.return_crit_edge, label %if.end68

if.end58.return_crit_edge:                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end68:                                         ; preds = %if.end58
  %hsskip = getelementptr inbounds %struct.mipi_dphy_timing, ptr %timing, i32 0, i32 14
  %32 = ptrtoint ptr %hsskip to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hsskip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %33)
  %cmp69 = icmp ult i32 %33, 40
  %add73 = add i32 %mul29, 55
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %add73)
  %cmp74 = icmp ugt i32 %33, %add73
  %or.cond165 = or i1 %cmp69, %cmp74
  br i1 %or.cond165, label %if.end68.return_crit_edge, label %if.end76

if.end68.return_crit_edge:                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end76:                                         ; preds = %if.end68
  %hstrail = getelementptr inbounds %struct.mipi_dphy_timing, ptr %timing, i32 0, i32 15
  %34 = ptrtoint ptr %hstrail to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %hstrail, align 4
  %mul77 = shl i32 %period, 3
  %add79 = add i32 %mul29, 60
  %36 = tail call i32 @llvm.umax.i32(i32 %mul77, i32 %add79)
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %36)
  %cmp81 = icmp ult i32 %35, %36
  br i1 %cmp81, label %if.end76.return_crit_edge, label %if.end83

if.end76.return_crit_edge:                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end83:                                         ; preds = %if.end76
  %init = getelementptr inbounds %struct.mipi_dphy_timing, ptr %timing, i32 0, i32 16
  %37 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %init, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %38)
  %cmp84 = icmp ult i32 %38, 100000
  br i1 %cmp84, label %if.end83.return_crit_edge, label %if.end86

if.end83.return_crit_edge:                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end86:                                         ; preds = %if.end83
  %lpx = getelementptr inbounds %struct.mipi_dphy_timing, ptr %timing, i32 0, i32 17
  %39 = ptrtoint ptr %lpx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %lpx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %40)
  %cmp87 = icmp ult i32 %40, 50
  br i1 %cmp87, label %if.end86.return_crit_edge, label %if.end89

if.end86.return_crit_edge:                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end89:                                         ; preds = %if.end86
  %taget = getelementptr inbounds %struct.mipi_dphy_timing, ptr %timing, i32 0, i32 18
  %41 = ptrtoint ptr %taget to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %taget, align 4
  %mul91 = mul i32 %40, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %mul91)
  %cmp92.not = icmp eq i32 %42, %mul91
  br i1 %cmp92.not, label %if.end94, label %if.end89.return_crit_edge

if.end89.return_crit_edge:                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end94:                                         ; preds = %if.end89
  %tago = getelementptr inbounds %struct.mipi_dphy_timing, ptr %timing, i32 0, i32 19
  %43 = ptrtoint ptr %tago to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tago, align 4
  %mul96 = shl i32 %40, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %mul96)
  %cmp97.not = icmp eq i32 %44, %mul96
  br i1 %cmp97.not, label %if.end99, label %if.end94.return_crit_edge

if.end94.return_crit_edge:                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end99:                                         ; preds = %if.end94
  %tasure = getelementptr inbounds %struct.mipi_dphy_timing, ptr %timing, i32 0, i32 20
  %45 = ptrtoint ptr %tasure to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tasure, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %40)
  %cmp101 = icmp ult i32 %46, %40
  %mul105 = shl i32 %40, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %mul105)
  %cmp106 = icmp ugt i32 %46, %mul105
  %or.cond166 = or i1 %cmp101, %cmp106
  br i1 %or.cond166, label %if.end99.return_crit_edge, label %if.end108

if.end99.return_crit_edge:                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end108:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #5
  %wakeup = getelementptr inbounds %struct.mipi_dphy_timing, ptr %timing, i32 0, i32 21
  %47 = ptrtoint ptr %wakeup to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %wakeup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %48)
  %cmp109 = icmp ult i32 %48, 1000000
  %. = select i1 %cmp109, i32 -22, i32 0
  br label %return

return:                                           ; preds = %if.end108, %if.end99.return_crit_edge, %if.end94.return_crit_edge, %if.end89.return_crit_edge, %if.end86.return_crit_edge, %if.end83.return_crit_edge, %if.end76.return_crit_edge, %if.end68.return_crit_edge, %if.end58.return_crit_edge, %if.end51.return_crit_edge, %lor.lhs.false45.return_crit_edge, %if.end41.return_crit_edge, %if.end38.return_crit_edge, %if.end33.return_crit_edge, %if.end28.return_crit_edge, %if.end23.return_crit_edge, %if.end20.return_crit_edge, %if.end17.return_crit_edge, %if.end11.return_crit_edge, %if.end6.return_crit_edge, %if.end3.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ -22, %if.end3.return_crit_edge ], [ -22, %if.end6.return_crit_edge ], [ -22, %if.end11.return_crit_edge ], [ -22, %if.end17.return_crit_edge ], [ -22, %if.end20.return_crit_edge ], [ -22, %if.end23.return_crit_edge ], [ -22, %if.end28.return_crit_edge ], [ -22, %if.end33.return_crit_edge ], [ -22, %if.end38.return_crit_edge ], [ -22, %lor.lhs.false45.return_crit_edge ], [ -22, %if.end41.return_crit_edge ], [ -22, %if.end51.return_crit_edge ], [ -22, %if.end58.return_crit_edge ], [ -22, %if.end68.return_crit_edge ], [ -22, %if.end76.return_crit_edge ], [ -22, %if.end83.return_crit_edge ], [ -22, %if.end86.return_crit_edge ], [ -22, %if.end89.return_crit_edge ], [ -22, %if.end94.return_crit_edge ], [ -22, %if.end99.return_crit_edge ], [ %., %if.end108 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

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
