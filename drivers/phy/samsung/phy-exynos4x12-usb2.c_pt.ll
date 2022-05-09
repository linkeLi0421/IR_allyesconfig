; ModuleID = '/llk/IR_all_yes/drivers/phy/samsung/phy-exynos4x12-usb2.c_pt.bc'
source_filename = "../drivers/phy/samsung/phy-exynos4x12-usb2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.samsung_usb2_common_phy = type { ptr, ptr, i32, ptr }
%struct.samsung_usb2_phy_config = type { ptr, ptr, i32, i8, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.samsung_usb2_phy_instance = type { ptr, ptr, ptr, i32, i32 }
%struct.samsung_usb2_phy_driver = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, %struct.spinlock, [0 x %struct.samsung_usb2_phy_instance] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@exynos4x12_phys = internal constant { [4 x %struct.samsung_usb2_common_phy], [32 x i8] } { [4 x %struct.samsung_usb2_common_phy] [%struct.samsung_usb2_common_phy { ptr @exynos4x12_power_on, ptr @exynos4x12_power_off, i32 0, ptr @.str }, %struct.samsung_usb2_common_phy { ptr @exynos4x12_power_on, ptr @exynos4x12_power_off, i32 1, ptr @.str.1 }, %struct.samsung_usb2_common_phy { ptr @exynos4x12_power_on, ptr @exynos4x12_power_off, i32 2, ptr @.str.2 }, %struct.samsung_usb2_common_phy { ptr @exynos4x12_power_on, ptr @exynos4x12_power_off, i32 3, ptr @.str.3 }], [32 x i8] zeroinitializer }, align 32
@exynos3250_usb2_phy_config = dso_local constant { %struct.samsung_usb2_phy_config, [16 x i8] } { %struct.samsung_usb2_phy_config { ptr @exynos4x12_phys, ptr @exynos4x12_rate_to_clk, i32 1, i8 0, i8 1 }, [16 x i8] zeroinitializer }, align 32
@exynos4x12_usb2_phy_config = dso_local constant { %struct.samsung_usb2_phy_config, [16 x i8] } { %struct.samsung_usb2_phy_config { ptr @exynos4x12_phys, ptr @exynos4x12_rate_to_clk, i32 4, i8 1, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"device\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"host\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hsic0\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hsic1\00", [26 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@switch.table.exynos4x12_power_on_int = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1796, i32 1796, i32 1800, i32 1804], [16 x i8] zeroinitializer }, align 32
@switch.table.exynos4x12_power_on_int.4 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 -58, i32 -449, i32 -3585, i32 -28673], [16 x i8] zeroinitializer }, align 32
@switch.table.exynos4x12_power_on_int.5 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 1048, i32 576, i32 544], [16 x i8] zeroinitializer }, align 32
@switch.table.exynos4x12_power_off_int = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1796, i32 1796, i32 1800, i32 1804], [16 x i8] zeroinitializer }, align 32
@switch.table.exynos4x12_power_off_int.6 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 57, i32 448, i32 3584, i32 28672], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 9600000, i64 10000000, i64 12000000, i64 19200000, i64 20000000, i64 24000000, i64 50000000]
@___asan_gen_.7 = private unnamed_addr constant [16 x i8] c"exynos4x12_phys\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 336, i32 45 }
@___asan_gen_.10 = private unnamed_addr constant [27 x i8] c"exynos3250_usb2_phy_config\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 363, i32 38 }
@___asan_gen_.13 = private unnamed_addr constant [27 x i8] c"exynos4x12_usb2_phy_config\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 370, i32 38 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 338, i32 13 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 344, i32 13 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 350, i32 13 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private constant [45 x i8] c"../drivers/phy/samsung/phy-exynos4x12-usb2.c\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 356, i32 13 }
@___asan_gen_.28 = private unnamed_addr constant [37 x i8] c"switch.table.exynos4x12_power_on_int\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [39 x i8] c"switch.table.exynos4x12_power_on_int.4\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [39 x i8] c"switch.table.exynos4x12_power_on_int.5\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [38 x i8] c"switch.table.exynos4x12_power_off_int\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [40 x i8] c"switch.table.exynos4x12_power_off_int.6\00", align 1
@llvm.compiler.used = appending global [12 x ptr] [ptr @exynos4x12_phys, ptr @exynos3250_usb2_phy_config, ptr @exynos4x12_usb2_phy_config, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @switch.table.exynos4x12_power_on_int, ptr @switch.table.exynos4x12_power_on_int.4, ptr @switch.table.exynos4x12_power_on_int.5, ptr @switch.table.exynos4x12_power_off_int, ptr @switch.table.exynos4x12_power_off_int.6], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos4x12_phys to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos3250_usb2_phy_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos4x12_usb2_phy_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.exynos4x12_power_on_int to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.exynos4x12_power_on_int.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.exynos4x12_power_on_int.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.exynos4x12_power_off_int to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.exynos4x12_power_off_int.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @exynos4x12_rate_to_clk(i32 noundef %rate, ptr nocapture noundef writeonly %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %rate, label %entry.return_crit_edge [
    i32 9600000, label %entry.return.sink.split_crit_edge
    i32 10000000, label %sw.bb1
    i32 12000000, label %sw.bb2
    i32 19200000, label %sw.bb3
    i32 20000000, label %sw.bb4
    i32 24000000, label %sw.bb5
    i32 50000000, label %sw.bb6
  ]

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return.sink.split

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return.sink.split

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return.sink.split

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return.sink.split

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return.sink.split

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return.sink.split

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return.sink.split_crit_edge
  %.sink = phi i32 [ 1, %sw.bb1 ], [ 2, %sw.bb2 ], [ 3, %sw.bb3 ], [ 4, %sw.bb4 ], [ 5, %sw.bb5 ], [ 7, %sw.bb6 ], [ 0, %entry.return.sink.split_crit_edge ]
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %.sink, ptr %reg, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos4x12_power_on(ptr nocapture noundef %inst) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %drv1 = getelementptr inbounds %struct.samsung_usb2_phy_instance, ptr %inst, i32 0, i32 2
  %0 = ptrtoint ptr %drv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv1, align 4
  %ext_cnt = getelementptr inbounds %struct.samsung_usb2_phy_instance, ptr %inst, i32 0, i32 4
  %2 = ptrtoint ptr %ext_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ext_cnt, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %ext_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %inst, align 4
  %id = getelementptr inbounds %struct.samsung_usb2_common_phy, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp2 = icmp eq i32 %7, 1
  br i1 %cmp2, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %reg_sys = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %reg_sys to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_sys, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 540, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %instances = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %1, i32 0, i32 11
  tail call fastcc void @exynos4x12_power_on_int(ptr noundef %instances)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %10 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %inst, align 4
  %id6 = getelementptr inbounds %struct.samsung_usb2_common_phy, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %id6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp7 = icmp eq i32 %13, 0
  br i1 %cmp7, label %land.lhs.true, label %if.end4.if.end12_crit_edge

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %has_mode_switch = getelementptr inbounds %struct.samsung_usb2_phy_config, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %has_mode_switch to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %has_mode_switch, align 4, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %land.lhs.true.if.end12_crit_edge, label %if.then9

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %reg_sys10 = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %reg_sys10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_sys10, align 4
  %call.i36 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 540, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %land.lhs.true.if.end12_crit_edge, %if.end4.if.end12_crit_edge
  %20 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %inst, align 4
  %id14 = getelementptr inbounds %struct.samsung_usb2_common_phy, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %id14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id14, align 4
  %24 = and i32 %23, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %switch = icmp eq i32 %24, 2
  br i1 %switch, label %if.then19, label %if.end12.if.end24_crit_edge

if.end12.if.end24_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

if.then19:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %instances20 = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %1, i32 0, i32 11
  tail call fastcc void @exynos4x12_power_on_int(ptr noundef %instances20)
  %arrayidx23 = getelementptr %struct.samsung_usb2_phy_driver, ptr %1, i32 1, i32 5
  tail call fastcc void @exynos4x12_power_on_int(ptr noundef %arrayidx23)
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %if.end12.if.end24_crit_edge
  tail call fastcc void @exynos4x12_power_on_int(ptr noundef %inst)
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos4x12_power_off(ptr nocapture noundef %inst) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %drv1 = getelementptr inbounds %struct.samsung_usb2_phy_instance, ptr %inst, i32 0, i32 2
  %0 = ptrtoint ptr %drv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv1, align 4
  %ext_cnt = getelementptr inbounds %struct.samsung_usb2_phy_instance, ptr %inst, i32 0, i32 4
  %2 = ptrtoint ptr %ext_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ext_cnt, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %ext_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp sgt i32 %3, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %inst, align 4
  %id = getelementptr inbounds %struct.samsung_usb2_common_phy, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2 = icmp eq i32 %7, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %has_mode_switch = getelementptr inbounds %struct.samsung_usb2_phy_config, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %has_mode_switch to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %has_mode_switch, align 4, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %land.lhs.true.if.end5_crit_edge, label %if.then4

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %reg_sys = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %reg_sys to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_sys, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 540, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %14 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %inst, align 4
  %id7 = getelementptr inbounds %struct.samsung_usb2_common_phy, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %id7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp8 = icmp eq i32 %17, 1
  br i1 %cmp8, label %if.then9, label %if.end5.if.end10_crit_edge

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %instances = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %1, i32 0, i32 11
  tail call fastcc void @exynos4x12_power_off_int(ptr noundef %instances)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end5.if.end10_crit_edge
  %18 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %inst, align 4
  %id12 = getelementptr inbounds %struct.samsung_usb2_common_phy, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %id12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id12, align 4
  %22 = and i32 %21, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %switch = icmp eq i32 %22, 2
  br i1 %switch, label %if.then17, label %if.end10.if.end22_crit_edge

if.end10.if.end22_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.then17:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %instances18 = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %1, i32 0, i32 11
  tail call fastcc void @exynos4x12_power_off_int(ptr noundef %instances18)
  %arrayidx21 = getelementptr %struct.samsung_usb2_phy_driver, ptr %1, i32 1, i32 5
  tail call fastcc void @exynos4x12_power_off_int(ptr noundef %arrayidx21)
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %if.end10.if.end22_crit_edge
  tail call fastcc void @exynos4x12_power_off_int(ptr noundef %inst)
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @exynos4x12_power_on_int(ptr nocapture noundef %inst) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %int_cnt = getelementptr inbounds %struct.samsung_usb2_phy_instance, ptr %inst, i32 0, i32 3
  %0 = ptrtoint ptr %int_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %int_cnt, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %int_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  %drv1.i = getelementptr inbounds %struct.samsung_usb2_phy_instance, ptr %inst, i32 0, i32 2
  %2 = ptrtoint ptr %drv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv1.i, align 4
  %reg_phy.i = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %reg_phy.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_phy.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  %7 = and i32 %6, -117440513
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %has_refclk_sel.i = getelementptr inbounds %struct.samsung_usb2_phy_config, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %has_refclk_sel.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %has_refclk_sel.i, align 1, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  %spec.store.select.i = select i1 %tobool.not.i, i32 %8, i32 512
  %ref_reg_val.i = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %3, i32 0, i32 5
  %13 = ptrtoint ptr %ref_reg_val.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ref_reg_val.i, align 4
  %or.i = or i32 %14, %spec.store.select.i
  %or3.i = or i32 %or.i, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !26
  tail call void @arm_heavy_mb() #4
  %15 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #4
  %16 = ptrtoint ptr %reg_phy.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_phy.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %15) #4, !srcloc !27
  %18 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %inst, align 4
  %id.i = getelementptr inbounds %struct.samsung_usb2_common_phy, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %21)
  %22 = icmp ult i32 %21, 4
  br i1 %22, label %switch.lookup, label %if.end.exynos4x12_isol.exit_crit_edge

if.end.exynos4x12_isol.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %exynos4x12_isol.exit

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %drv1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %drv1.i, align 4
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.exynos4x12_power_on_int, i32 0, i32 %21
  %25 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %25)
  %switch.load = load i32, ptr %switch.gep, align 4
  %reg_pmu.i = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %24, i32 0, i32 8
  %26 = ptrtoint ptr %reg_pmu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_pmu.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef %switch.load, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %exynos4x12_isol.exit

exynos4x12_isol.exit:                             ; preds = %switch.lookup, %if.end.exynos4x12_isol.exit_crit_edge
  %28 = ptrtoint ptr %drv1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %drv1.i, align 4
  %30 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %inst, align 4
  %id.i6 = getelementptr inbounds %struct.samsung_usb2_common_phy, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %id.i6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %id.i6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %33)
  %34 = icmp ult i32 %33, 4
  br i1 %34, label %switch.lookup12, label %exynos4x12_isol.exit.exynos4x12_phy_pwr.exit_crit_edge

exynos4x12_isol.exit.exynos4x12_phy_pwr.exit_crit_edge: ; preds = %exynos4x12_isol.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %exynos4x12_phy_pwr.exit

switch.lookup12:                                  ; preds = %exynos4x12_isol.exit
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep13 = getelementptr inbounds [4 x i32], ptr @switch.table.exynos4x12_power_on_int.4, i32 0, i32 %33
  %35 = ptrtoint ptr %switch.gep13 to i32
  call void @__asan_load4_noabort(i32 %35)
  %switch.load14 = load i32, ptr %switch.gep13, align 4
  %switch.gep15 = getelementptr inbounds [4 x i32], ptr @switch.table.exynos4x12_power_on_int.5, i32 0, i32 %33
  %36 = ptrtoint ptr %switch.gep15 to i32
  call void @__asan_load4_noabort(i32 %36)
  %switch.load16 = load i32, ptr %switch.gep15, align 4
  br label %exynos4x12_phy_pwr.exit

exynos4x12_phy_pwr.exit:                          ; preds = %switch.lookup12, %exynos4x12_isol.exit.exynos4x12_phy_pwr.exit_crit_edge
  %phypwr.0.i = phi i32 [ -1, %exynos4x12_isol.exit.exynos4x12_phy_pwr.exit_crit_edge ], [ %switch.load14, %switch.lookup12 ]
  %rstbits.0.i = phi i32 [ 0, %exynos4x12_isol.exit.exynos4x12_phy_pwr.exit_crit_edge ], [ %switch.load16, %switch.lookup12 ]
  %reg_phy.i9 = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %29, i32 0, i32 7
  %37 = ptrtoint ptr %reg_phy.i9 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg_phy.i9, align 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  %and.i = and i32 %40, %phypwr.0.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !28
  tail call void @arm_heavy_mb() #4
  %41 = tail call i32 @llvm.bswap.i32(i32 %and.i) #4
  %42 = ptrtoint ptr %reg_phy.i9 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg_phy.i9, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #4, !srcloc !27
  %44 = ptrtoint ptr %reg_phy.i9 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg_phy.i9, align 4
  %add.ptr11.i = getelementptr i8, ptr %45, i32 8
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #4, !srcloc !24
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  %or.i11 = or i32 %47, %rstbits.0.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %48 = tail call i32 @llvm.bswap.i32(i32 %or.i11) #4
  %49 = ptrtoint ptr %reg_phy.i9 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %reg_phy.i9, align 4
  %add.ptr19.i = getelementptr i8, ptr %50, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 %48) #4, !srcloc !27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 2147480) #4
  %neg20.i = xor i32 %rstbits.0.i, -1
  %and21.i = and i32 %47, %neg20.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %52 = tail call i32 @llvm.bswap.i32(i32 %and21.i) #4
  %53 = ptrtoint ptr %reg_phy.i9 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reg_phy.i9, align 4
  %add.ptr26.i = getelementptr i8, ptr %54, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i, i32 %52) #4, !srcloc !27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 17179840) #4
  br label %return

return:                                           ; preds = %exynos4x12_phy_pwr.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @exynos4x12_power_off_int(ptr nocapture noundef %inst) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %int_cnt = getelementptr inbounds %struct.samsung_usb2_phy_instance, ptr %inst, i32 0, i32 3
  %0 = ptrtoint ptr %int_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %int_cnt, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %int_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  %drv1.i = getelementptr inbounds %struct.samsung_usb2_phy_instance, ptr %inst, i32 0, i32 2
  %2 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inst, align 4
  %id.i = getelementptr inbounds %struct.samsung_usb2_common_phy, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %switch.lookup, label %if.end.exynos4x12_isol.exit_crit_edge

if.end.exynos4x12_isol.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %exynos4x12_isol.exit

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %drv1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %drv1.i, align 4
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.exynos4x12_power_off_int, i32 0, i32 %5
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  %reg_pmu.i = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %8, i32 0, i32 8
  %10 = ptrtoint ptr %reg_pmu.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_pmu.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %switch.load, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %exynos4x12_isol.exit

exynos4x12_isol.exit:                             ; preds = %switch.lookup, %if.end.exynos4x12_isol.exit_crit_edge
  %12 = ptrtoint ptr %drv1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %drv1.i, align 4
  %14 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %inst, align 4
  %id.i4 = getelementptr inbounds %struct.samsung_usb2_common_phy, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %id.i4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id.i4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %18 = icmp ult i32 %17, 4
  br i1 %18, label %switch.lookup8, label %exynos4x12_isol.exit.exynos4x12_phy_pwr.exit_crit_edge

exynos4x12_isol.exit.exynos4x12_phy_pwr.exit_crit_edge: ; preds = %exynos4x12_isol.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %exynos4x12_phy_pwr.exit

switch.lookup8:                                   ; preds = %exynos4x12_isol.exit
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep9 = getelementptr inbounds [4 x i32], ptr @switch.table.exynos4x12_power_off_int.6, i32 0, i32 %17
  %19 = ptrtoint ptr %switch.gep9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %switch.load10 = load i32, ptr %switch.gep9, align 4
  br label %exynos4x12_phy_pwr.exit

exynos4x12_phy_pwr.exit:                          ; preds = %switch.lookup8, %exynos4x12_isol.exit.exynos4x12_phy_pwr.exit_crit_edge
  %phypwr.0.i = phi i32 [ 0, %exynos4x12_isol.exit.exynos4x12_phy_pwr.exit_crit_edge ], [ %switch.load10, %switch.lookup8 ]
  %reg_phy.i = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %13, i32 0, i32 7
  %20 = ptrtoint ptr %reg_phy.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_phy.i, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  %or34.i = or i32 %23, %phypwr.0.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  %24 = tail call i32 @llvm.bswap.i32(i32 %or34.i) #4
  %25 = ptrtoint ptr %reg_phy.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_phy.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #4, !srcloc !27
  br label %return

return:                                           ; preds = %exynos4x12_phy_pwr.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @exynos3250_usb2_phy_config, !1, !"exynos3250_usb2_phy_config", i1 false, i1 false}
!1 = !{!"../drivers/phy/samsung/phy-exynos4x12-usb2.c", i32 363, i32 38}
!2 = !{ptr @exynos4x12_usb2_phy_config, !3, !"exynos4x12_usb2_phy_config", i1 false, i1 false}
!3 = !{!"../drivers/phy/samsung/phy-exynos4x12-usb2.c", i32 370, i32 38}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/phy/samsung/phy-exynos4x12-usb2.c", i32 338, i32 13}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/phy/samsung/phy-exynos4x12-usb2.c", i32 344, i32 13}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/phy/samsung/phy-exynos4x12-usb2.c", i32 350, i32 13}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/samsung/phy-exynos4x12-usb2.c", i32 356, i32 13}
!12 = !{ptr @exynos4x12_phys, !13, !"exynos4x12_phys", i1 false, i1 false}
!13 = !{!"../drivers/phy/samsung/phy-exynos4x12-usb2.c", i32 336, i32 45}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{i8 0, i8 2}
!24 = !{i64 2985017}
!25 = !{i64 2155120750}
!26 = !{i64 2155121075}
!27 = !{i64 2984599}
!28 = !{i64 2155124178}
!29 = !{i64 2155124848}
!30 = !{i64 2155125067}
!31 = !{i64 2155126004}
!32 = !{i64 2155127435}
