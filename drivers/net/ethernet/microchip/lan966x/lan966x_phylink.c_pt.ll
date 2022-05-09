; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/microchip/lan966x/lan966x_phylink.c_pt.bc'
source_filename = "../drivers/net/ethernet/microchip/lan966x/lan966x_phylink.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.phylink_mac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phylink_pcs_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.lan966x = type { ptr, i8, ptr, [66 x ptr], i32, [6 x i8], ptr, i16, i16, %struct.list_head, %struct.spinlock, [4096 x i16], [128 x i32], ptr, i32, %struct.mutex, ptr, %struct.delayed_work, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.lan966x_port_config = type { i32, ptr, i32, i32, i32, i8, i8 }

@lan966x_phylink_mac_ops = dso_local constant { %struct.phylink_mac_ops, [60 x i8] } { %struct.phylink_mac_ops { ptr @phylink_generic_validate, ptr null, ptr null, ptr @lan966x_phylink_mac_prepare, ptr @lan966x_phylink_mac_config, ptr null, ptr null, ptr @lan966x_phylink_mac_link_down, ptr @lan966x_phylink_mac_link_up }, [60 x i8] zeroinitializer }, align 32
@lan966x_phylink_pcs_ops = dso_local constant { %struct.phylink_pcs_ops, [44 x i8] } { %struct.phylink_pcs_ops { ptr null, ptr @lan966x_pcs_get_state, ptr @lan966x_pcs_config, ptr @lan966x_pcs_aneg_restart, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Could not set mode of SerDes\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/net/ethernet/microchip/lan966x/lan966x_main.h\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"port PCS config failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [24 x i8] c"lan966x_phylink_mac_ops\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 115, i32 30 }
@___asan_gen_.6 = private unnamed_addr constant [24 x i8] c"lan966x_phylink_pcs_ops\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 123, i32 30 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 30, i32 8 }
@___asan_gen_.13 = private unnamed_addr constant [57 x i8] c"../drivers/net/ethernet/microchip/lan966x/lan966x_main.h\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 238, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private constant [60 x i8] c"../drivers/net/ethernet/microchip/lan966x/lan966x_phylink.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 105, i32 25 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @lan966x_phylink_mac_ops, ptr @lan966x_phylink_pcs_ops, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_phylink_mac_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_phylink_pcs_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_generic_validate(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan966x_phylink_mac_prepare(ptr nocapture noundef readonly %config, i32 noundef %mode, i32 noundef %iface) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %serdes = getelementptr i8, ptr %1, i32 1276
  %2 = ptrtoint ptr %serdes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serdes, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @phy_set_mode_ext(ptr noundef nonnull %3, i32 noundef 15, i32 noundef %iface) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.then4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config, align 4
  %add.ptr8 = getelementptr i8, ptr %5, i32 -1104
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %add.ptr8, ptr noundef nonnull @.str) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then4 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @lan966x_phylink_mac_config(ptr nocapture noundef %config, i32 noundef %mode, ptr nocapture noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lan966x_phylink_mac_link_down(ptr nocapture noundef readonly %config, i32 noundef %mode, i32 noundef %interface) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1200
  %lan966x1 = getelementptr i8, ptr %1, i32 1204
  %2 = ptrtoint ptr %lan966x1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lan966x1, align 4
  tail call void @lan966x_port_config_down(ptr noundef %add.ptr.i) #5
  %chip_port = getelementptr i8, ptr %1, i32 1208
  %4 = ptrtoint ptr %chip_port to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %chip_port, align 4
  %conv = zext i8 %5 to i32
  %regs.i = getelementptr inbounds %struct.lan966x, ptr %3, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %5)
  %cmp.i.i = icmp ugt i8 %5, 7
  br i1 %cmp.i.i, label %do.end.i.i, label %entry.lan_addr.exit.i_crit_edge, !prof !19

entry.lan_addr.exit.i_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %lan_addr.exit.i

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 238, i32 noundef 9, ptr noundef null) #5
  br label %lan_addr.exit.i

lan_addr.exit.i:                                  ; preds = %do.end.i.i, %entry.lan_addr.exit.i_crit_edge
  %add.i.i = add nuw nsw i32 %conv, 13
  %arrayidx.i.i = getelementptr ptr, ptr %regs.i, i32 %add.i.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  br i1 %cmp.i.i, label %do.end.i2.i, label %lan_addr.exit.i.lan_rmw.exit_crit_edge, !prof !19

lan_addr.exit.i.lan_rmw.exit_crit_edge:           ; preds = %lan_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lan_rmw.exit

do.end.i2.i:                                      ; preds = %lan_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 238, i32 noundef 9, ptr noundef null) #5
  br label %lan_rmw.exit

lan_rmw.exit:                                     ; preds = %do.end.i2.i, %lan_addr.exit.i.lan_rmw.exit_crit_edge
  %9 = and i32 %8, -805306369
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #5, !srcloc !23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lan966x_phylink_mac_link_up(ptr nocapture noundef readonly %config, ptr nocapture noundef readnone %phy, i32 noundef %mode, i32 noundef %interface, i32 noundef %speed, i32 noundef %duplex, i1 noundef zeroext %tx_pause, i1 noundef zeroext %rx_pause) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1200
  %duplex3 = getelementptr i8, ptr %1, i32 1260
  %2 = ptrtoint ptr %duplex3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %duplex, ptr %duplex3, align 4
  %speed4 = getelementptr i8, ptr %1, i32 1256
  %3 = ptrtoint ptr %speed4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %speed, ptr %speed4, align 4
  %pause = getelementptr i8, ptr %1, i32 1264
  %cond = select i1 %tx_pause, i32 2, i32 0
  %cond7 = zext i1 %rx_pause to i32
  %or9 = or i32 %cond, %cond7
  %4 = ptrtoint ptr %pause to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or9, ptr %pause, align 4
  tail call void @lan966x_port_config_up(ptr noundef %add.ptr.i) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lan966x_pcs_get_state(ptr noundef %pcs, ptr noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %pcs, i32 -40
  tail call void @lan966x_port_status_get(ptr noundef %add.ptr.i, ptr noundef %state) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan966x_pcs_config(ptr noundef %pcs, i32 noundef %mode, i32 noundef %interface, ptr noundef %advertising, i1 noundef zeroext %permit_pause_to_mac) #1 align 64 {
entry:
  %config = alloca %struct.lan966x_port_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %pcs, i32 -40
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #5
  %config1 = getelementptr i8, ptr %pcs, i32 8
  %0 = call ptr @memcpy(ptr %config, ptr %config1, i32 24)
  %1 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %interface, ptr %config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %cmp.i = icmp eq i32 %mode, 2
  %inband = getelementptr inbounds %struct.lan966x_port_config, ptr %config, i32 0, i32 5
  %frombool3 = zext i1 %cmp.i to i8
  %2 = ptrtoint ptr %inband to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool3, ptr %inband, align 4
  %3 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %advertising, align 4
  %autoneg = getelementptr inbounds %struct.lan966x_port_config, ptr %config, i32 0, i32 6
  %5 = trunc i32 %4 to i8
  %6 = lshr i8 %5, 6
  %7 = and i8 %6, 1
  %8 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %autoneg, align 1
  %advertising6 = getelementptr inbounds %struct.lan966x_port_config, ptr %config, i32 0, i32 1
  %9 = ptrtoint ptr %advertising6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %advertising, ptr %advertising6, align 4
  %call7 = call i32 @lan966x_port_pcs_set(ptr noundef %add.ptr.i, ptr noundef nonnull %config) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %11, ptr noundef nonnull @.str.2, i32 noundef %call7) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #5
  ret i32 %call7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @lan966x_pcs_aneg_restart(ptr nocapture noundef %pcs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_mode_ext(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lan966x_port_config_down(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lan966x_port_config_up(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lan966x_port_status_get(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lan966x_port_pcs_set(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @lan966x_phylink_mac_ops, !1, !"lan966x_phylink_mac_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_phylink.c", i32 115, i32 30}
!2 = !{ptr @lan966x_phylink_pcs_ops, !3, !"lan966x_phylink_pcs_ops", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_phylink.c", i32 123, i32 30}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_phylink.c", i32 30, i32 8}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_main.h", i32 238, i32 2}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_phylink.c", i32 105, i32 25}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{i64 6463693}
!21 = !{i64 2158111850}
!22 = !{i64 2158112153}
!23 = !{i64 6463275}
