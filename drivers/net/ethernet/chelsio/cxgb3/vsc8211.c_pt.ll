; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/cxgb3/vsc8211.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/cxgb3/vsc8211.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cphy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.cphy = type { i8, i16, i32, ptr, ptr, i32, ptr, %struct.mdio_if_info, [1628 x i16] }
%struct.mdio_if_info = type { i32, i32, i32, ptr, ptr, ptr }
%struct.mdio_ops = type { ptr, ptr, i32 }

@vsc8211_ops = internal constant { %struct.cphy_ops, [44 x i8] } { %struct.cphy_ops { ptr @vsc8211_reset, ptr @vsc8211_intr_enable, ptr @vsc8211_intr_disable, ptr @vsc8211_intr_clear, ptr @vsc8211_intr_handler, ptr @vsc8211_autoneg_enable, ptr @vsc8211_autoneg_restart, ptr @t3_phy_advertise, ptr null, ptr @t3_set_phy_speed_duplex, ptr @vsc8211_get_link_status, ptr @vsc8211_power_down, i32 0 }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"10/100/1000BASE-T\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"1000BASE-X\00", [21 x i8] zeroinitializer }, align 32
@vsc8211_fiber_ops = internal constant { %struct.cphy_ops, [44 x i8] } { %struct.cphy_ops { ptr @vsc8211_reset, ptr @vsc8211_intr_enable, ptr @vsc8211_intr_disable, ptr @vsc8211_intr_clear, ptr @vsc8211_intr_handler, ptr @vsc8211_autoneg_enable, ptr @vsc8211_autoneg_restart, ptr @t3_phy_advertise_fiber, ptr null, ptr @t3_set_phy_speed_duplex, ptr @vsc8211_get_link_status_fiber, ptr @vsc8211_power_down, i32 0 }, [44 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.2 = private unnamed_addr constant [12 x i8] c"vsc8211_ops\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 339, i32 30 }
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 376, i32 35 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 390, i32 14 }
@___asan_gen_.11 = private unnamed_addr constant [18 x i8] c"vsc8211_fiber_ops\00", align 1
@___asan_gen_.12 = private constant [48 x i8] c"../drivers/net/ethernet/chelsio/cxgb3/vsc8211.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 353, i32 30 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @vsc8211_ops, ptr @.str, ptr @.str.1, ptr @vsc8211_fiber_ops], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc8211_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc8211_fiber_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_vsc8211_phy_prep(ptr noundef %phy, ptr noundef %adapter, i32 noundef %phy_addr, ptr noundef readonly %mdio_ops) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %caps1.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 2
  %0 = ptrtoint ptr %caps1.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 16777962, ptr %caps1.i, align 4
  %adapter2.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 3
  %1 = ptrtoint ptr %adapter2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %adapter, ptr %adapter2.i, align 4
  %desc3.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 4
  %2 = ptrtoint ptr %desc3.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str, ptr %desc3.i, align 4
  %ops.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 6
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @vsc8211_ops, ptr %ops.i, align 4
  %tobool.not.i = icmp eq ptr %mdio_ops, null
  br i1 %tobool.not.i, label %entry.cphy_init.exit_crit_edge, label %if.then.i

entry.cphy_init.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cphy_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %mdio.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %4 = ptrtoint ptr %mdio.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %phy_addr, ptr %mdio.i, align 4
  %mmds5.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 1
  %5 = ptrtoint ptr %mmds5.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %mmds5.i, align 4
  %mode_support.i = getelementptr inbounds %struct.mdio_ops, ptr %mdio_ops, i32 0, i32 2
  %6 = ptrtoint ptr %mode_support.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode_support.i, align 4
  %mode_support7.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 2
  %8 = ptrtoint ptr %mode_support7.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %mode_support7.i, align 4
  %9 = ptrtoint ptr %mdio_ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mdio_ops, align 4
  %mdio_read.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 4
  %11 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %mdio_read.i, align 4
  %write.i = getelementptr inbounds %struct.mdio_ops, ptr %mdio_ops, i32 0, i32 1
  %12 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write.i, align 4
  %mdio_write.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 5
  %14 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %mdio_write.i, align 4
  br label %cphy_init.exit

cphy_init.exit:                                   ; preds = %if.then.i, %entry.cphy_init.exit_crit_edge
  tail call void @msleep(i32 noundef 20) #3
  %mdio.i47 = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %mdio_read.i48 = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 4
  %15 = ptrtoint ptr %mdio_read.i48 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mdio_read.i48, align 4
  %dev.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 3
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  %19 = ptrtoint ptr %mdio.i47 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mdio.i47, align 4
  %call.i = tail call i32 %16(ptr noundef %18, i32 noundef %20, i32 noundef -1, i16 noundef zeroext 23) #3
  %21 = tail call i32 @llvm.smax.i32(i32 %call.i, i32 -1) #3
  %22 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool.not = icmp sgt i32 %call.i, -1
  br i1 %tobool.not, label %if.end, label %cphy_init.exit.cleanup_crit_edge

cphy_init.exit.cleanup_crit_edge:                 ; preds = %cphy_init.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %cphy_init.exit
  %and = and i32 %21, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %mdio_write.i50 = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 5
  %23 = ptrtoint ptr %mdio_write.i50 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mdio_write.i50, align 4
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 4
  %27 = ptrtoint ptr %mdio.i47 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mdio.i47, align 4
  %call.i52 = tail call i32 %24(ptr noundef %26, i32 noundef %28, i32 noundef -1, i16 noundef zeroext 27, i16 noundef zeroext 256) #3
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %29 = ptrtoint ptr %caps1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 16778848, ptr %caps1.i, align 4
  %30 = ptrtoint ptr %desc3.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @.str.1, ptr %desc3.i, align 4
  %31 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @vsc8211_fiber_ops, ptr %ops.i, align 4
  %mdio_write.i54 = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 5
  %32 = ptrtoint ptr %mdio_write.i54 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mdio_write.i54, align 4
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 4
  %36 = ptrtoint ptr %mdio.i47 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mdio.i47, align 4
  %call.i56 = tail call i32 %33(ptr noundef %35, i32 noundef %37, i32 noundef -1, i16 noundef zeroext 31, i16 noundef zeroext 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %tobool6.not = icmp eq i32 %call.i56, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %38 = ptrtoint ptr %mdio_write.i54 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mdio_write.i54, align 4
  %40 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i, align 4
  %42 = ptrtoint ptr %mdio.i47 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mdio.i47, align 4
  %call.i60 = tail call i32 %39(ptr noundef %41, i32 noundef %43, i32 noundef -1, i16 noundef zeroext 19, i16 noundef zeroext 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %tobool10.not = icmp eq i32 %call.i60, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %44 = ptrtoint ptr %mdio_write.i54 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mdio_write.i54, align 4
  %46 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i, align 4
  %48 = ptrtoint ptr %mdio.i47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mdio.i47, align 4
  %call.i64 = tail call i32 %45(ptr noundef %47, i32 noundef %49, i32 noundef -1, i16 noundef zeroext 31, i16 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %tobool14.not = icmp eq i32 %call.i64, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %50 = ptrtoint ptr %mdio_write.i54 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mdio_write.i54, align 4
  %52 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i, align 4
  %54 = ptrtoint ptr %mdio.i47 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mdio.i47, align 4
  %56 = trunc i32 %21 to i16
  %conv3.i = or i16 %56, 16
  %call.i68 = tail call i32 %51(ptr noundef %53, i32 noundef %55, i32 noundef -1, i16 noundef zeroext 23, i16 noundef zeroext %conv3.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %tobool18.not = icmp eq i32 %call.i68, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %call.i69 = tail call i32 @t3_phy_reset(ptr noundef %phy, i32 noundef -1, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %tobool22.not = icmp eq i32 %call.i69, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 1073740) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end20.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.then2, %cphy_init.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i52, %if.then2 ], [ 0, %if.end24 ], [ %22, %cphy_init.exit.cleanup_crit_edge ], [ %call.i56, %if.end4.cleanup_crit_edge ], [ %call.i60, %if.end8.cleanup_crit_edge ], [ %call.i64, %if.end12.cleanup_crit_edge ], [ %call.i68, %if.end16.cleanup_crit_edge ], [ %call.i69, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc8211_reset(ptr noundef %cphy, i32 noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @t3_phy_reset(ptr noundef %cphy, i32 noundef -1, i32 noundef 0) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc8211_intr_enable(ptr nocapture noundef readonly %cphy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 7
  %mdio_write.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 7, i32 5
  %0 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_write.i, align 4
  %dev.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i, align 4
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef -1, i16 noundef zeroext 25, i16 noundef zeroext -928) #3
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc8211_intr_disable(ptr nocapture noundef readonly %cphy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 7
  %mdio_write.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 7, i32 5
  %0 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_write.i, align 4
  %dev.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i, align 4
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef -1, i16 noundef zeroext 25, i16 noundef zeroext 0) #3
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc8211_intr_clear(ptr nocapture noundef readonly %cphy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 7
  %mdio_read.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 7, i32 4
  %0 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_read.i, align 4
  %dev.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i, align 4
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef -1, i16 noundef zeroext 26) #3
  %6 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #3
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc8211_intr_handler(ptr nocapture noundef readonly %cphy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 7
  %mdio_read.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 7, i32 4
  %0 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_read.i, align 4
  %dev.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i, align 4
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef -1, i16 noundef zeroext 26) #3
  %6 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool.not = icmp sgt i32 %call.i, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %and1 = and i32 %call.i, 31744
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp ne i32 %and1, 0
  %spec.select = zext i1 %tobool2.not to i32
  %and5 = and i32 %call.i, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %or8 = or i32 %spec.select, 2
  %cphy_cause.1 = select i1 %tobool6.not, i32 %spec.select, i32 %or8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cphy_cause.1, %if.end ], [ %6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc8211_autoneg_enable(ptr noundef %cphy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @t3_mdio_change_bits(ptr noundef %cphy, i32 noundef -1, i32 noundef 0, i32 noundef 3072, i32 noundef 4608) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc8211_autoneg_restart(ptr noundef %cphy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @t3_mdio_change_bits(ptr noundef %cphy, i32 noundef -1, i32 noundef 0, i32 noundef 3072, i32 noundef 512) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_phy_advertise(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_set_phy_speed_duplex(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc8211_get_link_status(ptr nocapture noundef readonly %cphy, ptr noundef writeonly %link_ok, ptr noundef writeonly %speed, ptr noundef writeonly %duplex, ptr noundef writeonly %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 7
  %mdio_read.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 7, i32 4
  %0 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_read.i, align 4
  %dev.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i, align 4
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef -1, i16 noundef zeroext 0) #3
  %6 = tail call i32 @llvm.smax.i32(i32 %call.i, i32 -1) #3
  %7 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool.not = icmp sgt i32 %call.i, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdio_read.i, align 4
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %12 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mdio.i, align 4
  %call.i135 = tail call i32 %9(ptr noundef %11, i32 noundef %13, i32 noundef -1, i16 noundef zeroext 1) #3
  %14 = tail call i32 @llvm.smax.i32(i32 %call.i135, i32 -1) #3
  %15 = tail call i32 @llvm.smin.i32(i32 %call.i135, i32 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i135)
  %tobool2.not = icmp sgt i32 %call.i135, -1
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %tobool5.not = icmp eq ptr %link_ok, null
  br i1 %tobool5.not, label %if.end4.if.end15_crit_edge, label %if.then6

if.end4.if.end15_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end15

if.then6:                                         ; preds = %if.end4
  %and = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end10, label %if.then6.if.end13_crit_edge

if.then6.if.end13_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

if.end10:                                         ; preds = %if.then6
  %16 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mdio_read.i, align 4
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  %20 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mdio.i, align 4
  %call.i139 = tail call i32 %17(ptr noundef %19, i32 noundef %21, i32 noundef -1, i16 noundef zeroext 1) #3
  %22 = tail call i32 @llvm.smax.i32(i32 %call.i139, i32 -1) #3
  %23 = tail call i32 @llvm.smin.i32(i32 %call.i139, i32 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i139)
  %tobool11.not = icmp sgt i32 %call.i139, -1
  br i1 %tobool11.not, label %if.end10.if.end13_crit_edge, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

if.end13:                                         ; preds = %if.end10.if.end13_crit_edge, %if.then6.if.end13_crit_edge
  %status.1163 = phi i32 [ %22, %if.end10.if.end13_crit_edge ], [ %14, %if.then6.if.end13_crit_edge ]
  %and14 = lshr i32 %status.1163, 2
  %and14.lobit = and i32 %and14, 1
  %24 = ptrtoint ptr %link_ok to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and14.lobit, ptr %link_ok, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end13, %if.end4.if.end15_crit_edge
  %status.2 = phi i32 [ %14, %if.end4.if.end15_crit_edge ], [ %status.1163, %if.end13 ]
  %and16 = and i32 %6, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.then18, label %if.else30

if.then18:                                        ; preds = %if.end15
  %and19 = lshr i32 %6, 8
  %and19.lobit = and i32 %and19, 1
  %and21 = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.else, label %if.then18.if.end90_crit_edge

if.then18.if.end90_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end90

if.else:                                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #5
  %and24 = and i32 %6, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  %. = select i1 %tobool25.not, i32 10, i32 100
  br label %if.end90

if.else30:                                        ; preds = %if.end15
  %and31 = and i32 %status.2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.else30.if.end90_crit_edge, label %if.then33

if.else30.if.end90_crit_edge:                     ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end90

if.then33:                                        ; preds = %if.else30
  %25 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mdio_read.i, align 4
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 4
  %29 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mdio.i, align 4
  %call.i143 = tail call i32 %26(ptr noundef %28, i32 noundef %30, i32 noundef -1, i16 noundef zeroext 28) #3
  %31 = tail call i32 @llvm.smin.i32(i32 %call.i143, i32 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i143)
  %tobool35.not = icmp sgt i32 %call.i143, -1
  br i1 %tobool35.not, label %if.end37, label %if.then33.cleanup_crit_edge

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end37:                                         ; preds = %if.then33
  %and38 = and i32 %call.i143, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  %not.tobool39.not = xor i1 %tobool39.not, true
  %cond40 = zext i1 %not.tobool39.not to i32
  %shr = lshr i32 %call.i143, 3
  %and41 = and i32 %shr, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and41)
  %switch.selectcmp = icmp eq i32 %and41, 1
  %switch.select = select i1 %switch.selectcmp, i32 100, i32 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %switch.selectcmp130 = icmp eq i32 %and41, 0
  %switch.select131 = select i1 %switch.selectcmp130, i32 10, i32 %switch.select
  %tobool52.not = icmp eq ptr %fc, null
  %brmerge = select i1 %tobool52.not, i1 true, i1 %tobool39.not
  br i1 %brmerge, label %if.end37.if.end90_crit_edge, label %if.then55

if.end37.if.end90_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end90

if.then55:                                        ; preds = %if.end37
  %32 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mdio_read.i, align 4
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 4
  %36 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mdio.i, align 4
  %call.i147 = tail call i32 %33(ptr noundef %35, i32 noundef %37, i32 noundef -1, i16 noundef zeroext 5) #3
  %38 = tail call i32 @llvm.smax.i32(i32 %call.i147, i32 -1) #3
  %39 = tail call i32 @llvm.smin.i32(i32 %call.i147, i32 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i147)
  %tobool57.not = icmp sgt i32 %call.i147, -1
  br i1 %tobool57.not, label %if.end60, label %if.then55.cleanup_crit_edge

if.then55.cleanup_crit_edge:                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end60:                                         ; preds = %if.then55
  %40 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mdio_read.i, align 4
  %42 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i, align 4
  %44 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mdio.i, align 4
  %call.i151 = tail call i32 %41(ptr noundef %43, i32 noundef %45, i32 noundef -1, i16 noundef zeroext 4) #3
  %46 = tail call i32 @llvm.smax.i32(i32 %call.i151, i32 -1) #3
  %47 = tail call i32 @llvm.smin.i32(i32 %call.i151, i32 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i151)
  %tobool61.not = icmp sgt i32 %call.i151, -1
  br i1 %tobool61.not, label %if.end63, label %if.end60.cleanup_crit_edge

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end63:                                         ; preds = %if.end60
  %and64 = and i32 %38, 1024
  %and65 = and i32 %and64, %46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.else68, label %if.end63.if.end90_crit_edge

if.end63.if.end90_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end90

if.else68:                                        ; preds = %if.end63
  %and72 = and i32 %38, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  %48 = and i32 %38, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072, i32 %48)
  %49 = icmp eq i32 %48, 3072
  %and75 = and i32 %46, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp ne i32 %and75, 0
  %or.cond129 = select i1 %49, i1 %tobool76.not, i1 false
  %brmerge167 = select i1 %or.cond129, i1 true, i1 %tobool73.not
  %.mux = select i1 %or.cond129, i32 2, i32 0
  br i1 %brmerge167, label %if.else68.if.end90_crit_edge, label %land.lhs.true81

if.else68.if.end90_crit_edge:                     ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end90

land.lhs.true81:                                  ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #5
  %and82 = lshr i32 %46, 10
  %and82.lobit = and i32 %and82, 1
  br label %if.end90

if.end90:                                         ; preds = %land.lhs.true81, %if.else68.if.end90_crit_edge, %if.end63.if.end90_crit_edge, %if.end37.if.end90_crit_edge, %if.else30.if.end90_crit_edge, %if.else, %if.then18.if.end90_crit_edge
  %sp.1 = phi i32 [ %switch.select131, %if.end37.if.end90_crit_edge ], [ -1, %if.else30.if.end90_crit_edge ], [ 1000, %if.then18.if.end90_crit_edge ], [ %., %if.else ], [ %switch.select131, %if.end63.if.end90_crit_edge ], [ %switch.select131, %if.else68.if.end90_crit_edge ], [ %switch.select131, %land.lhs.true81 ]
  %dplx.0 = phi i32 [ %cond40, %if.end37.if.end90_crit_edge ], [ -1, %if.else30.if.end90_crit_edge ], [ %and19.lobit, %if.then18.if.end90_crit_edge ], [ %and19.lobit, %if.else ], [ %cond40, %if.end63.if.end90_crit_edge ], [ %cond40, %if.else68.if.end90_crit_edge ], [ %cond40, %land.lhs.true81 ]
  %pause.0 = phi i32 [ 0, %if.end37.if.end90_crit_edge ], [ 0, %if.else30.if.end90_crit_edge ], [ 0, %if.then18.if.end90_crit_edge ], [ 0, %if.else ], [ 3, %if.end63.if.end90_crit_edge ], [ %.mux, %if.else68.if.end90_crit_edge ], [ %and82.lobit, %land.lhs.true81 ]
  %tobool91.not = icmp eq ptr %speed, null
  br i1 %tobool91.not, label %if.end90.if.end93_crit_edge, label %if.then92

if.end90.if.end93_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end93

if.then92:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #5
  %50 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %sp.1, ptr %speed, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then92, %if.end90.if.end93_crit_edge
  %tobool94.not = icmp eq ptr %duplex, null
  br i1 %tobool94.not, label %if.end93.if.end96_crit_edge, label %if.then95

if.end93.if.end96_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end96

if.then95:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #5
  %51 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %dplx.0, ptr %duplex, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.then95, %if.end93.if.end96_crit_edge
  %tobool97.not = icmp eq ptr %fc, null
  br i1 %tobool97.not, label %if.end96.cleanup_crit_edge, label %if.then98

if.end96.cleanup_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then98:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #5
  %52 = ptrtoint ptr %fc to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %pause.0, ptr %fc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then98, %if.end96.cleanup_crit_edge, %if.end60.cleanup_crit_edge, %if.then55.cleanup_crit_edge, %if.then33.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %15, %if.end.cleanup_crit_edge ], [ %23, %if.end10.cleanup_crit_edge ], [ %31, %if.then33.cleanup_crit_edge ], [ %47, %if.end60.cleanup_crit_edge ], [ 0, %if.then98 ], [ 0, %if.end96.cleanup_crit_edge ], [ %7, %entry.cleanup_crit_edge ], [ %39, %if.then55.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc8211_power_down(ptr noundef %cphy, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %cond = select i1 %tobool.not, i32 0, i32 2048
  %call = tail call i32 @t3_mdio_change_bits(ptr noundef %cphy, i32 noundef 0, i32 noundef 0, i32 noundef 2048, i32 noundef %cond) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_mdio_change_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_phy_advertise_fiber(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc8211_get_link_status_fiber(ptr nocapture noundef readonly %cphy, ptr noundef writeonly %link_ok, ptr noundef writeonly %speed, ptr noundef writeonly %duplex, ptr noundef writeonly %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 7
  %mdio_read.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 7, i32 4
  %0 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_read.i, align 4
  %dev.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i, align 4
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef -1, i16 noundef zeroext 0) #3
  %6 = tail call i32 @llvm.smax.i32(i32 %call.i, i32 -1) #3
  %7 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool.not = icmp sgt i32 %call.i, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdio_read.i, align 4
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %12 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mdio.i, align 4
  %call.i120 = tail call i32 %9(ptr noundef %11, i32 noundef %13, i32 noundef -1, i16 noundef zeroext 1) #3
  %14 = tail call i32 @llvm.smax.i32(i32 %call.i120, i32 -1) #3
  %15 = tail call i32 @llvm.smin.i32(i32 %call.i120, i32 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i120)
  %tobool2.not = icmp sgt i32 %call.i120, -1
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %tobool5.not = icmp eq ptr %link_ok, null
  br i1 %tobool5.not, label %if.end4.if.end15_crit_edge, label %if.then6

if.end4.if.end15_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end15

if.then6:                                         ; preds = %if.end4
  %and = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end10, label %if.then6.if.end13_crit_edge

if.then6.if.end13_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

if.end10:                                         ; preds = %if.then6
  %16 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mdio_read.i, align 4
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  %20 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mdio.i, align 4
  %call.i124 = tail call i32 %17(ptr noundef %19, i32 noundef %21, i32 noundef -1, i16 noundef zeroext 1) #3
  %22 = tail call i32 @llvm.smax.i32(i32 %call.i124, i32 -1) #3
  %23 = tail call i32 @llvm.smin.i32(i32 %call.i124, i32 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i124)
  %tobool11.not = icmp sgt i32 %call.i124, -1
  br i1 %tobool11.not, label %if.end10.if.end13_crit_edge, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

if.end13:                                         ; preds = %if.end10.if.end13_crit_edge, %if.then6.if.end13_crit_edge
  %status.1145 = phi i32 [ %22, %if.end10.if.end13_crit_edge ], [ %14, %if.then6.if.end13_crit_edge ]
  %and14 = lshr i32 %status.1145, 2
  %and14.lobit = and i32 %and14, 1
  %24 = ptrtoint ptr %link_ok to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and14.lobit, ptr %link_ok, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end13, %if.end4.if.end15_crit_edge
  %status.2 = phi i32 [ %14, %if.end4.if.end15_crit_edge ], [ %status.1145, %if.end13 ]
  %and16 = and i32 %6, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.then18, label %if.else30

if.then18:                                        ; preds = %if.end15
  %and19 = lshr i32 %6, 8
  %and19.lobit = and i32 %and19, 1
  %and21 = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.else, label %if.then18.if.end81_crit_edge

if.then18.if.end81_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end81

if.else:                                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #5
  %and24 = and i32 %6, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  %. = select i1 %tobool25.not, i32 10, i32 100
  br label %if.end81

if.else30:                                        ; preds = %if.end15
  %and31 = and i32 %status.2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.else30.if.end81_crit_edge, label %if.then33

if.else30.if.end81_crit_edge:                     ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end81

if.then33:                                        ; preds = %if.else30
  %25 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mdio_read.i, align 4
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 4
  %29 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mdio.i, align 4
  %call.i128 = tail call i32 %26(ptr noundef %28, i32 noundef %30, i32 noundef -1, i16 noundef zeroext 5) #3
  %31 = tail call i32 @llvm.smax.i32(i32 %call.i128, i32 -1) #3
  %32 = tail call i32 @llvm.smin.i32(i32 %call.i128, i32 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i128)
  %tobool35.not = icmp sgt i32 %call.i128, -1
  br i1 %tobool35.not, label %if.end38, label %if.then33.cleanup_crit_edge

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end38:                                         ; preds = %if.then33
  %33 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mdio_read.i, align 4
  %35 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i, align 4
  %37 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mdio.i, align 4
  %call.i132 = tail call i32 %34(ptr noundef %36, i32 noundef %38, i32 noundef -1, i16 noundef zeroext 4) #3
  %39 = tail call i32 @llvm.smax.i32(i32 %call.i132, i32 -1) #3
  %40 = tail call i32 @llvm.smin.i32(i32 %call.i132, i32 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i132)
  %tobool39.not = icmp sgt i32 %call.i132, -1
  br i1 %tobool39.not, label %if.end41, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end41:                                         ; preds = %if.end38
  %and42 = and i32 %39, %31
  %and43 = and i32 %and42, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  %and48 = lshr i32 %and42, 6
  %41 = and i32 %and48, 1
  %sext = add nsw i32 %41, -1
  %42 = and i32 %and42, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %43 = icmp eq i32 %42, 0
  %sp.0 = select i1 %43, i32 -1, i32 1000
  %dplx.0 = select i1 %tobool44.not, i32 %sext, i32 1
  %tobool53.not = icmp eq ptr %fc, null
  %brmerge = select i1 %tobool53.not, i1 true, i1 %tobool44.not
  br i1 %brmerge, label %if.end41.if.end81_crit_edge, label %if.then56

if.end41.if.end81_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end81

if.then56:                                        ; preds = %if.end41
  %and58 = and i32 %and42, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.else61, label %if.then56.if.end81_crit_edge

if.then56.if.end81_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end81

if.else61:                                        ; preds = %if.then56
  %and62 = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  %and66 = and i32 %and42, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  %or.cond = select i1 %tobool63.not, i1 true, i1 %tobool67.not
  br i1 %or.cond, label %if.else69, label %if.else61.if.end81_crit_edge

if.else61.if.end81_crit_edge:                     ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end81

if.else69:                                        ; preds = %if.else61
  %and70 = and i32 %31, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.else69.if.end81_crit_edge, label %land.lhs.true72

if.else69.if.end81_crit_edge:                     ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end81

land.lhs.true72:                                  ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #5
  %and73 = lshr i32 %39, 7
  %and73.lobit = and i32 %and73, 1
  br label %if.end81

if.end81:                                         ; preds = %land.lhs.true72, %if.else69.if.end81_crit_edge, %if.else61.if.end81_crit_edge, %if.then56.if.end81_crit_edge, %if.end41.if.end81_crit_edge, %if.else30.if.end81_crit_edge, %if.else, %if.then18.if.end81_crit_edge
  %sp.1 = phi i32 [ %sp.0, %if.else69.if.end81_crit_edge ], [ %sp.0, %if.end41.if.end81_crit_edge ], [ -1, %if.else30.if.end81_crit_edge ], [ 1000, %if.then18.if.end81_crit_edge ], [ %., %if.else ], [ %sp.0, %if.then56.if.end81_crit_edge ], [ %sp.0, %if.else61.if.end81_crit_edge ], [ %sp.0, %land.lhs.true72 ]
  %dplx.1 = phi i32 [ 1, %if.else69.if.end81_crit_edge ], [ %dplx.0, %if.end41.if.end81_crit_edge ], [ -1, %if.else30.if.end81_crit_edge ], [ %and19.lobit, %if.then18.if.end81_crit_edge ], [ %and19.lobit, %if.else ], [ 1, %if.then56.if.end81_crit_edge ], [ 1, %if.else61.if.end81_crit_edge ], [ 1, %land.lhs.true72 ]
  %pause.0 = phi i32 [ 0, %if.else69.if.end81_crit_edge ], [ 0, %if.end41.if.end81_crit_edge ], [ 0, %if.else30.if.end81_crit_edge ], [ 0, %if.then18.if.end81_crit_edge ], [ 0, %if.else ], [ 3, %if.then56.if.end81_crit_edge ], [ 2, %if.else61.if.end81_crit_edge ], [ %and73.lobit, %land.lhs.true72 ]
  %tobool82.not = icmp eq ptr %speed, null
  br i1 %tobool82.not, label %if.end81.if.end84_crit_edge, label %if.then83

if.end81.if.end84_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end84

if.then83:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #5
  %44 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %sp.1, ptr %speed, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %if.end81.if.end84_crit_edge
  %tobool85.not = icmp eq ptr %duplex, null
  br i1 %tobool85.not, label %if.end84.if.end87_crit_edge, label %if.then86

if.end84.if.end87_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end87

if.then86:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #5
  %45 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %dplx.1, ptr %duplex, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then86, %if.end84.if.end87_crit_edge
  %tobool88.not = icmp eq ptr %fc, null
  br i1 %tobool88.not, label %if.end87.cleanup_crit_edge, label %if.then89

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then89:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #5
  %46 = ptrtoint ptr %fc to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %pause.0, ptr %fc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then89, %if.end87.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.then33.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %15, %if.end.cleanup_crit_edge ], [ %23, %if.end10.cleanup_crit_edge ], [ %40, %if.end38.cleanup_crit_edge ], [ 0, %if.then89 ], [ 0, %if.end87.cleanup_crit_edge ], [ %7, %entry.cleanup_crit_edge ], [ %32, %if.then33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_phy_reset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/chelsio/cxgb3/vsc8211.c", i32 376, i32 35}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/chelsio/cxgb3/vsc8211.c", i32 390, i32 14}
!4 = !{ptr @vsc8211_ops, !5, !"vsc8211_ops", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/chelsio/cxgb3/vsc8211.c", i32 339, i32 30}
!6 = !{ptr @vsc8211_fiber_ops, !7, !"vsc8211_fiber_ops", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/chelsio/cxgb3/vsc8211.c", i32 353, i32 30}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
