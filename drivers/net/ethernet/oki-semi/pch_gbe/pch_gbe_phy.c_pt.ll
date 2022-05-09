; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_phy.c_pt.bc'
source_filename = "../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_phy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pch_gbe_hw = type { ptr, ptr, %struct.spinlock, %struct.pch_gbe_mac_info, %struct.pch_gbe_phy_info }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pch_gbe_mac_info = type { [6 x i8], i8, i8, i8, i32, i32, i8, i16, i16 }
%struct.pch_gbe_phy_info = type { i32, i32, i32, i32, i16 }
%struct.ethtool_cmd = type { i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i32, i32, i16, i8, i8, i32, [2 x i32] }

@pch_gbe_phy_get_id.__UNIQUE_ID_ddebug596 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pch_gbe\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pch_gbe_phy_get_id\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_phy.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"phy->id : 0x%08x  phy->revision : 0x%08x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"PHY Address %d is out of range\0A\00", [32 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error: mii_ethtool_sset\0A\00", [39 x i8] zeroinitializer }, align 32
@pch_gbe_phy_disable_hibernate.__UNIQUE_ID_ddebug598 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pch_gbe_phy_disable_hibernate\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Disabling hibernation for AR803X PHY\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Unknown PHY (%x), could not disable hibernation\0A\00", [47 x i8] zeroinitializer }, align 32
@pch_gbe_phy_tx_clk_delay.__UNIQUE_ID_ddebug597 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 67, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pch_gbe_phy_tx_clk_delay\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Configuring AR803X PHY for 2ns TX clock delay\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Unknown PHY (%x), could not set TX clock delay\0A\00", [48 x i8] zeroinitializer }, align 32
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 116, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 138, i32 31 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 313, i32 31 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 341, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 355, i32 7 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 267, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [55 x i8] c"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_phy.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 282, i32 7 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pch_gbe_phy_get_id(ptr noundef %hw) local_unnamed_addr #0 align 64 {
if.end5:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %phy1.i = getelementptr inbounds %struct.pch_gbe_hw, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %phy1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy1.i, align 4
  %call.i = tail call zeroext i16 @pch_gbe_mac_ctrl_miim(ptr noundef %hw, i32 noundef %1, i32 noundef 0, i32 noundef 2, i16 noundef zeroext 0) #4
  %2 = ptrtoint ptr %phy1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy1.i, align 4
  %call.i40 = tail call zeroext i16 @pch_gbe_mac_ctrl_miim(ptr noundef %hw, i32 noundef %3, i32 noundef 0, i32 noundef 3, i16 noundef zeroext 0) #4
  %conv = zext i16 %call.i to i32
  %id = getelementptr inbounds %struct.pch_gbe_hw, ptr %hw, i32 0, i32 4, i32 1
  %shl = shl nuw nsw i32 %conv, 6
  %4 = lshr i16 %call.i40, 10
  %5 = zext i16 %4 to i32
  %or = or i32 %shl, %5
  %6 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %id, align 4
  %7 = and i16 %call.i40, 15
  %and10 = zext i16 %7 to i32
  %revision = getelementptr inbounds %struct.pch_gbe_hw, ptr %hw, i32 0, i32 4, i32 2
  %8 = ptrtoint ptr %revision to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and10, ptr %revision, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_phy_get_id.__UNIQUE_ID_ddebug596, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_phy_get_id, %if.then17)) #4
          to label %cleanup [label %if.then17], !srcloc !35

if.then17:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %netdev = getelementptr i8, ptr %hw, i32 -244
  %9 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev, align 4
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 4
  %13 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %revision, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_phy_get_id.__UNIQUE_ID_ddebug596, ptr noundef %10, ptr noundef nonnull @.str.3, i32 noundef %12, i32 noundef %14) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pch_gbe_phy_read_reg_miic(ptr noundef %hw, i32 noundef %offset, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %offset)
  %cmp = icmp ugt i32 %offset, 31
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %netdev = getelementptr i8, ptr %hw, i32 -244
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %offset) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %phy1 = getelementptr inbounds %struct.pch_gbe_hw, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy1, align 4
  %call = tail call zeroext i16 @pch_gbe_mac_ctrl_miim(ptr noundef %hw, i32 noundef %3, i32 noundef 0, i32 noundef %offset, i16 noundef zeroext 0) #4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %call, ptr %data, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @pch_gbe_mac_ctrl_miim(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pch_gbe_phy_write_reg_miic(ptr noundef %hw, i32 noundef %offset, i16 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %offset)
  %cmp = icmp ugt i32 %offset, 31
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %netdev = getelementptr i8, ptr %hw, i32 -244
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %offset) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %phy1 = getelementptr inbounds %struct.pch_gbe_hw, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy1, align 4
  %call = tail call zeroext i16 @pch_gbe_mac_ctrl_miim(ptr noundef %hw, i32 noundef %3, i32 noundef 67108864, i32 noundef %offset, i16 noundef zeroext %data) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pch_gbe_phy_hw_reset(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %phy1.i = getelementptr inbounds %struct.pch_gbe_hw, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %phy1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy1.i, align 4
  %call.i = tail call zeroext i16 @pch_gbe_mac_ctrl_miim(ptr noundef %hw, i32 noundef %1, i32 noundef 67108864, i32 noundef 0, i16 noundef zeroext 4416) #4
  %2 = ptrtoint ptr %phy1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy1.i, align 4
  %call.i10 = tail call zeroext i16 @pch_gbe_mac_ctrl_miim(ptr noundef %hw, i32 noundef %3, i32 noundef 67108864, i32 noundef 4, i16 noundef zeroext 480) #4
  %4 = ptrtoint ptr %phy1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phy1.i, align 4
  %call.i12 = tail call zeroext i16 @pch_gbe_mac_ctrl_miim(ptr noundef %hw, i32 noundef %5, i32 noundef 67108864, i32 noundef 7, i16 noundef zeroext 8193) #4
  %6 = ptrtoint ptr %phy1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phy1.i, align 4
  %call.i14 = tail call zeroext i16 @pch_gbe_mac_ctrl_miim(ptr noundef %hw, i32 noundef %7, i32 noundef 67108864, i32 noundef 9, i16 noundef zeroext 768) #4
  %8 = ptrtoint ptr %phy1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %phy1.i, align 4
  %call.i16 = tail call zeroext i16 @pch_gbe_mac_ctrl_miim(ptr noundef %hw, i32 noundef %9, i32 noundef 67108864, i32 noundef 16, i16 noundef zeroext 494) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pch_gbe_phy_power_up(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %phy1.i = getelementptr inbounds %struct.pch_gbe_hw, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %phy1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy1.i, align 4
  %call.i = tail call zeroext i16 @pch_gbe_mac_ctrl_miim(ptr noundef %hw, i32 noundef %1, i32 noundef 0, i32 noundef 0, i16 noundef zeroext 0) #4
  %2 = and i16 %call.i, -2049
  %3 = ptrtoint ptr %phy1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %phy1.i, align 4
  %call.i5 = tail call zeroext i16 @pch_gbe_mac_ctrl_miim(ptr noundef %hw, i32 noundef %4, i32 noundef 67108864, i32 noundef 0, i16 noundef zeroext %2) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pch_gbe_phy_power_down(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %phy1.i = getelementptr inbounds %struct.pch_gbe_hw, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %phy1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy1.i, align 4
  %call.i = tail call zeroext i16 @pch_gbe_mac_ctrl_miim(ptr noundef %hw, i32 noundef %1, i32 noundef 0, i32 noundef 0, i16 noundef zeroext 0) #4
  %2 = or i16 %call.i, 2048
  %3 = ptrtoint ptr %phy1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %phy1.i, align 4
  %call.i5 = tail call zeroext i16 @pch_gbe_mac_ctrl_miim(ptr noundef %hw, i32 noundef %4, i32 noundef 67108864, i32 noundef 0, i16 noundef zeroext %2) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pch_gbe_phy_set_rgmii(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %phy1.i.i = getelementptr inbounds %struct.pch_gbe_hw, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %phy1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy1.i.i, align 4
  %call.i.i = tail call zeroext i16 @pch_gbe_mac_ctrl_miim(ptr noundef %hw, i32 noundef %1, i32 noundef 0, i32 noundef 0, i16 noundef zeroext 0) #4
  %2 = or i16 %call.i.i, -32768
  %3 = ptrtoint ptr %phy1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %phy1.i.i, align 4
  %call.i5.i = tail call zeroext i16 @pch_gbe_mac_ctrl_miim(ptr noundef %hw, i32 noundef %4, i32 noundef 67108864, i32 noundef 0, i16 noundef zeroext %2) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pch_gbe_phy_init_setting(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.ethtool_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %cmd) #4
  %0 = getelementptr inbounds i8, ptr %cmd, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 40)
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %cmd, align 4
  %mii = getelementptr i8, ptr %hw, i32 244
  call void @mii_ethtool_gset(ptr noundef %mii, ptr noundef nonnull %cmd) #4
  %link_speed = getelementptr inbounds %struct.pch_gbe_hw, ptr %hw, i32 0, i32 3, i32 7
  %3 = ptrtoint ptr %link_speed to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %link_speed, align 2
  %speed1.i = getelementptr inbounds %struct.ethtool_cmd, ptr %cmd, i32 0, i32 3
  %5 = ptrtoint ptr %speed1.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %speed1.i, align 4
  %speed_hi.i = getelementptr inbounds %struct.ethtool_cmd, ptr %cmd, i32 0, i32 12
  %6 = ptrtoint ptr %speed_hi.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %speed_hi.i, align 4
  %link_duplex = getelementptr inbounds %struct.pch_gbe_hw, ptr %hw, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %link_duplex to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %link_duplex, align 4
  %conv2 = trunc i16 %8 to i8
  %duplex = getelementptr inbounds %struct.ethtool_cmd, ptr %cmd, i32 0, i32 4
  %9 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv2, ptr %duplex, align 2
  %autoneg_advertised = getelementptr inbounds %struct.pch_gbe_hw, ptr %hw, i32 0, i32 4, i32 4
  %10 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %autoneg_advertised, align 4
  %conv3 = zext i16 %11 to i32
  %advertising = getelementptr inbounds %struct.ethtool_cmd, ptr %cmd, i32 0, i32 2
  %12 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv3, ptr %advertising, align 4
  %autoneg = getelementptr inbounds %struct.pch_gbe_hw, ptr %hw, i32 0, i32 3, i32 6
  %13 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %autoneg, align 4
  %autoneg5 = getelementptr inbounds %struct.ethtool_cmd, ptr %cmd, i32 0, i32 8
  %15 = ptrtoint ptr %autoneg5 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %autoneg5, align 2
  %phy1.i = getelementptr inbounds %struct.pch_gbe_hw, ptr %hw, i32 0, i32 4
  %16 = ptrtoint ptr %phy1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %phy1.i, align 4
  %call.i = call zeroext i16 @pch_gbe_mac_ctrl_miim(ptr noundef %hw, i32 noundef %17, i32 noundef 67108864, i32 noundef 0, i16 noundef zeroext -32768) #4
  %call7 = call i32 @mii_ethtool_sset(ptr noundef %mii, ptr noundef nonnull %cmd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %netdev = getelementptr i8, ptr %hw, i32 -244
  %18 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %19, ptr noundef nonnull @.str.5) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %20 = ptrtoint ptr %phy1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %phy1.i, align 4
  %call.i.i = call zeroext i16 @pch_gbe_mac_ctrl_miim(ptr noundef %hw, i32 noundef %21, i32 noundef 0, i32 noundef 0, i16 noundef zeroext 0) #4
  %22 = or i16 %call.i.i, -32768
  %23 = ptrtoint ptr %phy1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %phy1.i, align 4
  %call.i5.i = call zeroext i16 @pch_gbe_mac_ctrl_miim(ptr noundef %hw, i32 noundef %24, i32 noundef 67108864, i32 noundef 0, i16 noundef zeroext %22) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %25(i32 noundef 214748) #4
  %26 = ptrtoint ptr %phy1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %phy1.i, align 4
  %call.i33 = call zeroext i16 @pch_gbe_mac_ctrl_miim(ptr noundef %hw, i32 noundef %27, i32 noundef 0, i32 noundef 16, i16 noundef zeroext 0) #4
  %28 = or i16 %call.i33, 2048
  %29 = ptrtoint ptr %phy1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %phy1.i, align 4
  %call.i35 = call zeroext i16 @pch_gbe_mac_ctrl_miim(ptr noundef %hw, i32 noundef %30, i32 noundef 67108864, i32 noundef 16, i16 noundef zeroext %28) #4
  %pdata = getelementptr i8, ptr %hw, i32 368
  %31 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdata, align 8
  %tobool12.not = icmp eq ptr %32, null
  br i1 %tobool12.not, label %if.end.if.end18_crit_edge, label %land.lhs.true

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 4, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool14.not = icmp eq i8 %34, 0
  br i1 %tobool14.not, label %land.lhs.true.if.end18_crit_edge, label %if.then16

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @pch_gbe_phy_tx_clk_delay(ptr noundef %hw)
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %land.lhs.true.if.end18_crit_edge, %if.end.if.end18_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cmd) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mii_ethtool_gset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_ethtool_sset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pch_gbe_phy_tx_clk_delay(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.pch_gbe_hw, ptr %hw, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4980, i32 %1)
  %cond = icmp eq i32 %1, 4980
  br i1 %cond, label %do.body1, label %sw.default

do.body1:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_phy_tx_clk_delay.__UNIQUE_ID_ddebug597, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_phy_tx_clk_delay, %if.then)) #4
          to label %sw.epilog [label %if.then], !srcloc !35

if.then:                                          ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #6
  %netdev = getelementptr i8, ptr %hw, i32 -244
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_phy_tx_clk_delay.__UNIQUE_ID_ddebug597, ptr noundef %3, ptr noundef nonnull @.str.11) #4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %netdev15 = getelementptr i8, ptr %hw, i32 -244
  %4 = ptrtoint ptr %netdev15 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev15, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.12, i32 noundef %1) #7
  br label %cleanup

sw.epilog:                                        ; preds = %if.then, %do.body1
  %phy1.i = getelementptr inbounds %struct.pch_gbe_hw, ptr %hw, i32 0, i32 4
  %6 = ptrtoint ptr %phy1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phy1.i, align 4
  %call.i = tail call zeroext i16 @pch_gbe_mac_ctrl_miim(ptr noundef %hw, i32 noundef %7, i32 noundef 0, i32 noundef 29, i16 noundef zeroext 0) #4
  %8 = ptrtoint ptr %phy1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %phy1.i, align 4
  %call.i3 = tail call zeroext i16 @pch_gbe_mac_ctrl_miim(ptr noundef %hw, i32 noundef %9, i32 noundef 67108864, i32 noundef 29, i16 noundef zeroext 5) #4
  %10 = ptrtoint ptr %phy1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %phy1.i, align 4
  %call.i6 = tail call zeroext i16 @pch_gbe_mac_ctrl_miim(ptr noundef %hw, i32 noundef %11, i32 noundef 0, i32 noundef 30, i16 noundef zeroext 0) #4
  %12 = or i16 %call.i6, 256
  %13 = ptrtoint ptr %phy1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %phy1.i, align 4
  %call.i9 = tail call zeroext i16 @pch_gbe_mac_ctrl_miim(ptr noundef %hw, i32 noundef %14, i32 noundef 67108864, i32 noundef 30, i16 noundef zeroext %12) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pch_gbe_phy_disable_hibernate(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.pch_gbe_hw, ptr %hw, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4980, i32 %1)
  %cond = icmp eq i32 %1, 4980
  br i1 %cond, label %do.body1, label %sw.default

do.body1:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_phy_disable_hibernate.__UNIQUE_ID_ddebug598, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_phy_disable_hibernate, %if.then)) #4
          to label %sw.epilog [label %if.then], !srcloc !35

if.then:                                          ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #6
  %netdev = getelementptr i8, ptr %hw, i32 -244
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_phy_disable_hibernate.__UNIQUE_ID_ddebug598, ptr noundef %3, ptr noundef nonnull @.str.7) #4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %netdev14 = getelementptr i8, ptr %hw, i32 -244
  %4 = ptrtoint ptr %netdev14 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev14, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.8, i32 noundef %1) #7
  br label %cleanup

sw.epilog:                                        ; preds = %if.then, %do.body1
  %phy1.i = getelementptr inbounds %struct.pch_gbe_hw, ptr %hw, i32 0, i32 4
  %6 = ptrtoint ptr %phy1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phy1.i, align 4
  %call.i = tail call zeroext i16 @pch_gbe_mac_ctrl_miim(ptr noundef %hw, i32 noundef %7, i32 noundef 67108864, i32 noundef 29, i16 noundef zeroext 11) #4
  %8 = ptrtoint ptr %phy1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %phy1.i, align 4
  %call.i34 = tail call zeroext i16 @pch_gbe_mac_ctrl_miim(ptr noundef %hw, i32 noundef %9, i32 noundef 0, i32 noundef 30, i16 noundef zeroext 0) #4
  %10 = and i16 %call.i34, 32767
  %11 = ptrtoint ptr %phy1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %phy1.i, align 4
  %call.i37 = tail call zeroext i16 @pch_gbe_mac_ctrl_miim(ptr noundef %hw, i32 noundef %12, i32 noundef 67108864, i32 noundef 30, i16 noundef zeroext %10) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default
  %retval.0 = phi i32 [ -22, %sw.default ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !13, !14, !16, !18, !20, !21, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_phy.c", i32 116, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @pch_gbe_phy_get_id.__UNIQUE_ID_ddebug596, !1, !"__UNIQUE_ID_ddebug596", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_phy.c", i32 138, i32 31}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_phy.c", i32 313, i32 31}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_phy.c", i32 341, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @pch_gbe_phy_disable_hibernate.__UNIQUE_ID_ddebug598, !11, !"__UNIQUE_ID_ddebug598", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_phy.c", i32 355, i32 7}
!16 = distinct !{null, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_phy.c", i32 362, i32 7}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_phy.c", i32 267, i32 3}
!20 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @pch_gbe_phy_tx_clk_delay.__UNIQUE_ID_ddebug597, !19, !"__UNIQUE_ID_ddebug597", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_phy.c", i32 282, i32 7}
!24 = distinct !{null, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_phy.c", i32 289, i32 7}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i64 2148794634, i64 2148794639, i64 2148794652, i64 2148794696, i64 2148794730, i64 2148794751}
!36 = !{i8 0, i8 2}
