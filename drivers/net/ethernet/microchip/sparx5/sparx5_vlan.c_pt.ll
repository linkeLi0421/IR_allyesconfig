; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/microchip/sparx5/sparx5_vlan.c_pt.bc'
source_filename = "../drivers/net/ethernet/microchip/sparx5/sparx5_vlan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sparx5 = type { ptr, ptr, i32, i32, [332 x ptr], i32, %struct.mutex, [65 x ptr], i32, i32, i32, ptr, ptr, %struct.mutex, %struct.delayed_work, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, [6 x i8], ptr, [3 x i32], [3 x i32], [3 x i32], [4096 x [3 x i32]], %struct.list_head, %struct.mutex, %struct.delayed_work, ptr, i8, i32, i32, %struct.sparx5_rx, %struct.sparx5_tx }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.sparx5_rx = type { ptr, ptr, [64 x [15 x ptr]], i32, i32, i32, %struct.napi_struct, i32, ptr, i64 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.sparx5_tx = type { ptr, ptr, %struct.list_head, i32, i32, i64, i64 }
%struct.sparx5_port = type { ptr, ptr, ptr, ptr, %struct.sparx5_port_config, %struct.phylink_config, ptr, %struct.phylink_pcs, i16, i16, i16, i8, i8, i8, i8, i32, i32, i32, [9 x i32], i8, %struct.hrtimer }
%struct.sparx5_port_config = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.phylink_pcs = type { ptr, i8 }

@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Port already has a native VLAN: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid port no: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/ethernet/microchip/sparx5/sparx5_main.h\00", [44 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 65, i32 8 }
@___asan_gen_.7 = private constant [55 x i8] c"../drivers/net/ethernet/microchip/sparx5/sparx5_vlan.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 137, i32 26 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private unnamed_addr constant [55 x i8] c"../drivers/net/ethernet/microchip/sparx5/sparx5_main.h\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 346, i32 2 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sparx5_vlan_init(ptr nocapture noundef readonly %sparx5) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i = getelementptr i8, ptr %1, i32 493636
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i) #5, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %3 = or i32 %2, 16777216
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i7.i = getelementptr i8, ptr %5, i32 493636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i7.i, i32 %3) #5, !srcloc !18
  br label %spx5_rmw.exit

spx5_rmw.exit:                                    ; preds = %spx5_rmw.exit.spx5_rmw.exit_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %spx5_rmw.exit.spx5_rmw.exit_crit_edge ]
  %shl = shl nuw nsw i32 %indvars.iv, 8
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  %mul.i.i = shl nuw nsw i32 %indvars.iv, 6
  %add.ptr81.i.i = getelementptr i8, ptr %7, i32 8
  %add.ptr82.i.i42 = getelementptr i8, ptr %add.ptr81.i.i, i32 %mul.i.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i42) #5, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %9 = and i32 %8, -16719617
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %or.i44 = or i32 %10, %shl
  %11 = tail call i32 @llvm.bswap.i32(i32 %or.i44) #5
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr81.i6.i = getelementptr i8, ptr %13, i32 8
  %add.ptr82.i7.i45 = getelementptr i8, ptr %add.ptr81.i6.i, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i7.i45, i32 %11) #5, !srcloc !18
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 4096
  br i1 %exitcond.not, label %for.end, label %spx5_rmw.exit.spx5_rmw.exit_crit_edge

spx5_rmw.exit.spx5_rmw.exit_crit_edge:            ; preds = %spx5_rmw.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_rmw.exit

for.end:                                          ; preds = %spx5_rmw.exit
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sparx5_vlan_port_setup(ptr nocapture noundef readonly %sparx5, i32 noundef %portno) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 7, i32 %portno
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %pvid = getelementptr inbounds %struct.sparx5_port, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %pvid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pvid, align 2
  %portno33 = getelementptr inbounds %struct.sparx5_port, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %portno33 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %portno33, align 4
  %conv34 = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 70, i16 %5)
  %cmp20.not.i.i = icmp ult i16 %5, 70
  br i1 %cmp20.not.i.i, label %entry.spx5_addr.exit.i_crit_edge, label %do.end36.i.i, !prof !19

entry.spx5_addr.exit.i_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_addr.exit.i

do.end36.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 347, i32 noundef 9, ptr noundef null) #5
  br label %spx5_addr.exit.i

spx5_addr.exit.i:                                 ; preds = %do.end36.i.i, %entry.spx5_addr.exit.i_crit_edge
  %arrayidx.i.i = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 6
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 131072
  %mul.i.i = shl nuw nsw i32 %conv34, 9
  %add.ptr81.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %add.ptr82.i.i = getelementptr i8, ptr %add.ptr81.i.i, i32 32
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i) #5, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  br i1 %cmp20.not.i.i, label %spx5_addr.exit.i.spx5_rmw.exit_crit_edge, label %do.end36.i2.i, !prof !19

spx5_addr.exit.i.spx5_rmw.exit_crit_edge:         ; preds = %spx5_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_rmw.exit

do.end36.i2.i:                                    ; preds = %spx5_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 347, i32 noundef 9, ptr noundef null) #5
  br label %spx5_rmw.exit

spx5_rmw.exit:                                    ; preds = %do.end36.i2.i, %spx5_addr.exit.i.spx5_rmw.exit_crit_edge
  %9 = and i32 %8, 15792127
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = and i16 %3, 4095
  %and3.i = zext i16 %11 to i32
  %or.i = or i32 %10, %and3.i
  %12 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %14, i32 131072
  %add.ptr81.i6.i = getelementptr i8, ptr %add.ptr.i4.i, i32 %mul.i.i
  %add.ptr82.i7.i = getelementptr i8, ptr %add.ptr81.i6.i, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i7.i, i32 %12) #5, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sparx5_vlan_vid_add(ptr nocapture noundef %port, i16 noundef zeroext %vid, i1 noundef zeroext %pvid, i1 noundef zeroext %untagged) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sparx52 = getelementptr inbounds %struct.sparx5_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %sparx52 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sparx52, align 4
  br i1 %untagged, label %land.lhs.true, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

land.lhs.true:                                    ; preds = %entry
  %vid3 = getelementptr inbounds %struct.sparx5_port, ptr %port, i32 0, i32 10
  %2 = ptrtoint ptr %vid3 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vid3, align 8
  %conv = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %vid)
  %cmp.not = icmp eq i16 %3, %vid
  br i1 %cmp.not, label %land.lhs.true.if.end12_crit_edge, label %if.then

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool7.not = icmp eq i16 %3, 0
  br i1 %tobool7.not, label %if.end, label %if.then8

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str, i32 noundef %conv) #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %vid3 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %vid, ptr %vid3, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.end, %land.lhs.true.if.end12_crit_edge, %entry.if.end12_crit_edge
  %portno = getelementptr inbounds %struct.sparx5_port, ptr %port, i32 0, i32 8
  %7 = ptrtoint ptr %portno to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %portno, align 4
  %conv13 = zext i16 %8 to i32
  %idxprom = zext i16 %vid to i32
  %arrayidx = getelementptr %struct.sparx5, ptr %1, i32 0, i32 24, i32 %idxprom
  tail call void @_set_bit(i32 noundef %conv13, ptr noundef %arrayidx) #5
  tail call fastcc void @sparx5_vlant_set_mask(ptr noundef %1, i16 noundef zeroext %vid)
  br i1 %pvid, label %if.then18, label %if.end12.if.end20_crit_edge

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then18:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %pvid19 = getelementptr inbounds %struct.sparx5_port, ptr %port, i32 0, i32 9
  %9 = ptrtoint ptr %pvid19 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %vid, ptr %pvid19, align 2
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end12.if.end20_crit_edge
  tail call void @sparx5_vlan_port_apply(ptr noundef %1, ptr noundef %port)
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then8
  %retval.0 = phi i32 [ -16, %if.then8 ], [ 0, %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sparx5_vlant_set_mask(ptr nocapture noundef readonly %sparx5, i16 noundef zeroext %vid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i16 %vid to i32
  %arrayidx = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 24, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %mask.sroa.0.0.copyload = load i32, ptr %arrayidx, align 4
  %mask.sroa.5.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 4
  %1 = ptrtoint ptr %mask.sroa.5.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %1)
  %mask.sroa.5.0.copyload = load i32, ptr %mask.sroa.5.0.arrayidx.sroa_idx, align 4
  %mask.sroa.7.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 8
  %2 = ptrtoint ptr %mask.sroa.7.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %mask.sroa.7.0.copyload = load i32, ptr %mask.sroa.7.0.arrayidx.sroa_idx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 5120, i16 %vid)
  %cmp20.not.i.i = icmp ult i16 %vid, 5120
  br i1 %cmp20.not.i.i, label %entry.spx5_wr.exit_crit_edge, label %do.end36.i.i, !prof !19

entry.spx5_wr.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_wr.exit

do.end36.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 347, i32 noundef 9, ptr noundef null) #5
  br label %spx5_wr.exit

spx5_wr.exit:                                     ; preds = %do.end36.i.i, %entry.spx5_wr.exit_crit_edge
  %3 = tail call i32 @llvm.bswap.i32(i32 %mask.sroa.0.0.copyload) #5
  %arrayidx.i.i = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %mul.i.i = shl nuw nsw i32 %idxprom, 6
  %add.ptr81.i.i = getelementptr i8, ptr %5, i32 %mul.i.i
  %add.ptr82.i.i = getelementptr i8, ptr %add.ptr81.i.i, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i, i32 %3) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  br i1 %cmp20.not.i.i, label %spx5_wr.exit16.critedge, label %do.end36.i.i2, !prof !19

do.end36.i.i2:                                    ; preds = %spx5_wr.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 347, i32 noundef 9, ptr noundef null) #5
  %6 = tail call i32 @llvm.bswap.i32(i32 %mask.sroa.5.0.copyload) #5
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr81.i.i6.c18 = getelementptr i8, ptr %8, i32 %mul.i.i
  %add.ptr82.i.i7.c19 = getelementptr i8, ptr %add.ptr81.i.i6.c18, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i7.c19, i32 %6) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 347, i32 noundef 9, ptr noundef null) #5
  br label %spx5_wr.exit16

spx5_wr.exit16.critedge:                          ; preds = %spx5_wr.exit
  call void @__sanitizer_cov_trace_pc() #7
  %9 = tail call i32 @llvm.bswap.i32(i32 %mask.sroa.5.0.copyload) #5
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr81.i.i6.c = getelementptr i8, ptr %11, i32 %mul.i.i
  %add.ptr82.i.i7.c = getelementptr i8, ptr %add.ptr81.i.i6.c, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i7.c, i32 %9) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  br label %spx5_wr.exit16

spx5_wr.exit16:                                   ; preds = %spx5_wr.exit16.critedge, %do.end36.i.i2
  %and1.i = shl i32 %mask.sroa.7.0.copyload, 24
  %12 = and i32 %and1.i, 16777216
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr81.i.i14 = getelementptr i8, ptr %14, i32 %mul.i.i
  %add.ptr82.i.i15 = getelementptr i8, ptr %add.ptr81.i.i14, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i15, i32 %12) #5, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sparx5_vlan_port_apply(ptr nocapture noundef readonly %sparx5, ptr nocapture noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vlan_aware = getelementptr inbounds %struct.sparx5_port, ptr %port, i32 0, i32 19
  %pvid = getelementptr inbounds %struct.sparx5_port, ptr %port, i32 0, i32 9
  %0 = ptrtoint ptr %pvid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pvid, align 2
  %2 = ptrtoint ptr %vlan_aware to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vlan_aware, align 8, !range !21
  %4 = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %4, 19
  %shl50 = shl nuw nsw i32 %4, 17
  %5 = and i16 %1, 4095
  %and79 = zext i16 %5 to i32
  %or = or i32 %shl50, %and79
  %or80 = or i32 %or, %shl
  %portno = getelementptr inbounds %struct.sparx5_port, ptr %port, i32 0, i32 8
  %6 = ptrtoint ptr %portno to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %portno, align 4
  %conv81 = zext i16 %7 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 70, i16 %7)
  %cmp20.not.i.i = icmp ult i16 %7, 70
  br i1 %cmp20.not.i.i, label %entry.spx5_wr.exit_crit_edge, label %do.end36.i.i, !prof !19

entry.spx5_wr.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_wr.exit

do.end36.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 347, i32 noundef 9, ptr noundef null) #5
  br label %spx5_wr.exit

spx5_wr.exit:                                     ; preds = %do.end36.i.i, %entry.spx5_wr.exit_crit_edge
  %8 = tail call i32 @llvm.bswap.i32(i32 %or80) #5
  %arrayidx.i.i = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 6
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 131072
  %mul.i.i = shl nuw nsw i32 %conv81, 9
  %add.ptr81.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %add.ptr82.i.i = getelementptr i8, ptr %add.ptr81.i.i, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i, i32 %8) #5, !srcloc !18
  %11 = ptrtoint ptr %vlan_aware to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %vlan_aware, align 8, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool83.not = icmp eq i8 %12, 0
  br i1 %tobool83.not, label %spx5_wr.exit.if.end138_crit_edge, label %land.lhs.true

spx5_wr.exit.if.end138_crit_edge:                 ; preds = %spx5_wr.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end138

land.lhs.true:                                    ; preds = %spx5_wr.exit
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %pvid to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %pvid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool86.not = icmp eq i16 %14, 0
  %spec.select = select i1 %tobool86.not, i32 1664, i32 0
  br label %if.end138

if.end138:                                        ; preds = %land.lhs.true, %spx5_wr.exit.if.end138_crit_edge
  %val.0 = phi i32 [ 0, %spx5_wr.exit.if.end138_crit_edge ], [ %spec.select, %land.lhs.true ]
  %15 = ptrtoint ptr %portno to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %portno, align 4
  %conv140 = zext i16 %16 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 70, i16 %16)
  %cmp20.not.i.i259 = icmp ult i16 %16, 70
  br i1 %cmp20.not.i.i259, label %if.end138.spx5_wr.exit267_crit_edge, label %do.end36.i.i260, !prof !19

if.end138.spx5_wr.exit267_crit_edge:              ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_wr.exit267

do.end36.i.i260:                                  ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 347, i32 noundef 9, ptr noundef null) #5
  br label %spx5_wr.exit267

spx5_wr.exit267:                                  ; preds = %do.end36.i.i260, %if.end138.spx5_wr.exit267_crit_edge
  %17 = tail call i32 @llvm.bswap.i32(i32 %val.0) #5
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i263 = getelementptr i8, ptr %19, i32 131072
  %mul.i.i264 = shl nuw nsw i32 %conv140, 9
  %add.ptr81.i.i265 = getelementptr i8, ptr %add.ptr.i.i263, i32 %mul.i.i264
  %add.ptr82.i.i266 = getelementptr i8, ptr %add.ptr81.i.i265, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i266, i32 %17) #5, !srcloc !18
  %20 = ptrtoint ptr %vlan_aware to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %vlan_aware, align 8, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool158.not = icmp eq i8 %21, 0
  br i1 %tobool158.not, label %spx5_wr.exit267.if.end197_crit_edge, label %if.then159

spx5_wr.exit267.if.end197_crit_edge:              ; preds = %spx5_wr.exit267
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end197

if.then159:                                       ; preds = %spx5_wr.exit267
  call void @__sanitizer_cov_trace_pc() #7
  %vid = getelementptr inbounds %struct.sparx5_port, ptr %port, i32 0, i32 10
  %22 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vid, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool160.not = icmp eq i16 %23, 0
  %. = select i1 %tobool160.not, i32 1572864, i32 524288
  br label %if.end197

if.end197:                                        ; preds = %if.then159, %spx5_wr.exit267.if.end197_crit_edge
  %val.1 = phi i32 [ 0, %spx5_wr.exit267.if.end197_crit_edge ], [ %., %if.then159 ]
  %24 = ptrtoint ptr %portno to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %portno, align 4
  %conv199 = zext i16 %25 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 70, i16 %25)
  %cmp20.not.i.i268 = icmp ult i16 %25, 70
  br i1 %cmp20.not.i.i268, label %if.end197.spx5_wr.exit276_crit_edge, label %do.end36.i.i269, !prof !19

if.end197.spx5_wr.exit276_crit_edge:              ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_wr.exit276

do.end36.i.i269:                                  ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 347, i32 noundef 9, ptr noundef null) #5
  br label %spx5_wr.exit276

spx5_wr.exit276:                                  ; preds = %do.end36.i.i269, %if.end197.spx5_wr.exit276_crit_edge
  %arrayidx.i.i271 = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 179
  %26 = ptrtoint ptr %arrayidx.i.i271 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i.i271, align 4
  %add.ptr.i.i272 = getelementptr i8, ptr %27, i32 360448
  %mul.i.i273 = shl nuw nsw i32 %conv199, 8
  %add.ptr81.i.i274 = getelementptr i8, ptr %add.ptr.i.i272, i32 %mul.i.i273
  %add.ptr82.i.i275 = getelementptr i8, ptr %add.ptr81.i.i274, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i275, i32 %val.1) #5, !srcloc !18
  %vid207 = getelementptr inbounds %struct.sparx5_port, ptr %port, i32 0, i32 10
  %28 = ptrtoint ptr %vid207 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vid207, align 8
  %30 = ptrtoint ptr %portno to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %portno, align 4
  %conv230 = zext i16 %31 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 70, i16 %31)
  %cmp20.not.i.i278 = icmp ult i16 %31, 70
  br i1 %cmp20.not.i.i278, label %spx5_wr.exit276.spx5_addr.exit.i_crit_edge, label %do.end36.i.i279, !prof !19

spx5_wr.exit276.spx5_addr.exit.i_crit_edge:       ; preds = %spx5_wr.exit276
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_addr.exit.i

do.end36.i.i279:                                  ; preds = %spx5_wr.exit276
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 347, i32 noundef 9, ptr noundef null) #5
  br label %spx5_addr.exit.i

spx5_addr.exit.i:                                 ; preds = %do.end36.i.i279, %spx5_wr.exit276.spx5_addr.exit.i_crit_edge
  %32 = ptrtoint ptr %arrayidx.i.i271 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i.i271, align 4
  %add.ptr.i.i281 = getelementptr i8, ptr %33, i32 360448
  %mul.i.i282 = shl nuw nsw i32 %conv230, 8
  %add.ptr81.i.i283 = getelementptr i8, ptr %add.ptr.i.i281, i32 %mul.i.i282
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81.i.i283) #5, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  br i1 %cmp20.not.i.i278, label %spx5_addr.exit.i.spx5_rmw.exit_crit_edge, label %do.end36.i2.i, !prof !19

spx5_addr.exit.i.spx5_rmw.exit_crit_edge:         ; preds = %spx5_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_rmw.exit

do.end36.i2.i:                                    ; preds = %spx5_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 347, i32 noundef 9, ptr noundef null) #5
  br label %spx5_rmw.exit

spx5_rmw.exit:                                    ; preds = %do.end36.i2.i, %spx5_addr.exit.i.spx5_rmw.exit_crit_edge
  %35 = and i32 %34, 15794175
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %37 = and i16 %29, 4095
  %and3.i = zext i16 %37 to i32
  %or.i = or i32 %36, %and3.i
  %38 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %39 = ptrtoint ptr %arrayidx.i.i271 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i.i271, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %40, i32 360448
  %add.ptr81.i6.i = getelementptr i8, ptr %add.ptr.i4.i, i32 %mul.i.i282
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i6.i, i32 %38) #5, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sparx5_vlan_vid_del(ptr nocapture noundef %port, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sparx51 = getelementptr inbounds %struct.sparx5_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %sparx51 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sparx51, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vid)
  %cmp = icmp eq i16 %vid, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %vid to i32
  %portno = getelementptr inbounds %struct.sparx5_port, ptr %port, i32 0, i32 8
  %2 = ptrtoint ptr %portno to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %portno, align 4
  %conv3 = zext i16 %3 to i32
  %arrayidx = getelementptr %struct.sparx5, ptr %1, i32 0, i32 24, i32 %conv
  tail call void @_clear_bit(i32 noundef %conv3, ptr noundef %arrayidx) #5
  tail call fastcc void @sparx5_vlant_set_mask(ptr noundef %1, i16 noundef zeroext %vid)
  %pvid = getelementptr inbounds %struct.sparx5_port, ptr %port, i32 0, i32 9
  %4 = ptrtoint ptr %pvid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pvid, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %vid)
  %cmp8 = icmp eq i16 %5, %vid
  br i1 %cmp8, label %if.then10, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %pvid to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %pvid, align 2
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end.if.end12_crit_edge
  %vid13 = getelementptr inbounds %struct.sparx5_port, ptr %port, i32 0, i32 10
  %7 = ptrtoint ptr %vid13 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %vid13, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %vid)
  %cmp16 = icmp eq i16 %8, %vid
  br i1 %cmp16, label %if.then18, label %if.end12.if.end20_crit_edge

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then18:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %vid13 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %vid13, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end12.if.end20_crit_edge
  tail call void @sparx5_vlan_port_apply(ptr noundef %1, ptr noundef %port)
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sparx5_pgid_update_mask(ptr nocapture noundef readonly %port, i32 noundef %pgid, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sparx51 = getelementptr inbounds %struct.sparx5_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %sparx51 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sparx51, align 4
  %portno = getelementptr inbounds %struct.sparx5_port, ptr %port, i32 0, i32 8
  %2 = ptrtoint ptr %portno to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %portno, align 4
  %conv = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %3)
  %cmp = icmp ult i16 %3, 32
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %shl = shl nuw i32 1, %conv
  %spec.select = select i1 %enable, i32 %shl, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3290, i32 %pgid)
  %cmp20.not.i.i = icmp slt i32 %pgid, 3290
  br i1 %cmp20.not.i.i, label %if.then.spx5_addr.exit.i_crit_edge, label %do.end36.i.i, !prof !19

if.then.spx5_addr.exit.i_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_addr.exit.i

do.end36.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 347, i32 noundef 9, ptr noundef null) #5
  br label %spx5_addr.exit.i

spx5_addr.exit.i:                                 ; preds = %do.end36.i.i, %if.then.spx5_addr.exit.i_crit_edge
  %arrayidx.i.i = getelementptr %struct.sparx5, ptr %1, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 786432
  %mul.i.i = shl i32 %pgid, 4
  %add.ptr81.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81.i.i) #5, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  br i1 %cmp20.not.i.i, label %spx5_addr.exit.i.spx5_rmw.exit_crit_edge, label %do.end36.i2.i, !prof !19

spx5_addr.exit.i.spx5_rmw.exit_crit_edge:         ; preds = %spx5_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_rmw.exit

do.end36.i2.i:                                    ; preds = %spx5_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 347, i32 noundef 9, ptr noundef null) #5
  br label %spx5_rmw.exit

spx5_rmw.exit:                                    ; preds = %do.end36.i2.i, %spx5_addr.exit.i.spx5_rmw.exit_crit_edge
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  %neg.i = xor i32 %shl, -1
  %and.i = and i32 %7, %neg.i
  %or.i = or i32 %and.i, %spec.select
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %10, i32 786432
  %add.ptr81.i6.i = getelementptr i8, ptr %add.ptr.i4.i, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i6.i, i32 %8) #5, !srcloc !18
  br label %if.end40

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %3)
  %cmp8 = icmp ult i16 %3, 64
  br i1 %cmp8, label %if.then10, label %if.else20

if.then10:                                        ; preds = %if.else
  %sub = add nsw i32 %conv, -32
  %shl13 = shl nuw i32 1, %sub
  %spec.select62 = select i1 %enable, i32 %shl13, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3290, i32 %pgid)
  %cmp20.not.i.i65 = icmp slt i32 %pgid, 3290
  br i1 %cmp20.not.i.i65, label %if.then10.spx5_addr.exit.i71_crit_edge, label %do.end36.i.i66, !prof !19

if.then10.spx5_addr.exit.i71_crit_edge:           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_addr.exit.i71

do.end36.i.i66:                                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 347, i32 noundef 9, ptr noundef null) #5
  br label %spx5_addr.exit.i71

spx5_addr.exit.i71:                               ; preds = %do.end36.i.i66, %if.then10.spx5_addr.exit.i71_crit_edge
  %arrayidx.i.i67 = getelementptr %struct.sparx5, ptr %1, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %arrayidx.i.i67 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i.i67, align 4
  %add.ptr.i.i68 = getelementptr i8, ptr %12, i32 786432
  %mul.i.i69 = shl i32 %pgid, 4
  %add.ptr81.i.i70 = getelementptr i8, ptr %add.ptr.i.i68, i32 %mul.i.i69
  %add.ptr82.i.i = getelementptr i8, ptr %add.ptr81.i.i70, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i) #5, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  br i1 %cmp20.not.i.i65, label %spx5_addr.exit.i71.spx5_rmw.exit78_crit_edge, label %do.end36.i2.i72, !prof !19

spx5_addr.exit.i71.spx5_rmw.exit78_crit_edge:     ; preds = %spx5_addr.exit.i71
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_rmw.exit78

do.end36.i2.i72:                                  ; preds = %spx5_addr.exit.i71
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 347, i32 noundef 9, ptr noundef null) #5
  br label %spx5_rmw.exit78

spx5_rmw.exit78:                                  ; preds = %do.end36.i2.i72, %spx5_addr.exit.i71.spx5_rmw.exit78_crit_edge
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #5
  %neg.i73 = xor i32 %shl13, -1
  %and.i74 = and i32 %14, %neg.i73
  %or.i75 = or i32 %and.i74, %spec.select62
  %15 = tail call i32 @llvm.bswap.i32(i32 %or.i75) #5
  %16 = ptrtoint ptr %arrayidx.i.i67 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i67, align 4
  %add.ptr.i4.i76 = getelementptr i8, ptr %17, i32 786432
  %add.ptr81.i6.i77 = getelementptr i8, ptr %add.ptr.i4.i76, i32 %mul.i.i69
  %add.ptr82.i7.i = getelementptr i8, ptr %add.ptr81.i6.i77, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i7.i, i32 %15) #5, !srcloc !18
  br label %if.end40

if.else20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %3)
  %cmp23 = icmp eq i16 %3, 64
  br i1 %cmp23, label %if.then25, label %if.else36

if.then25:                                        ; preds = %if.else20
  %spec.select63 = zext i1 %enable to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 3290, i32 %pgid)
  %cmp20.not.i.i80 = icmp slt i32 %pgid, 3290
  br i1 %cmp20.not.i.i80, label %if.then25.spx5_addr.exit.i87_crit_edge, label %do.end36.i.i81, !prof !19

if.then25.spx5_addr.exit.i87_crit_edge:           ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_addr.exit.i87

do.end36.i.i81:                                   ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 347, i32 noundef 9, ptr noundef null) #5
  br label %spx5_addr.exit.i87

spx5_addr.exit.i87:                               ; preds = %do.end36.i.i81, %if.then25.spx5_addr.exit.i87_crit_edge
  %arrayidx.i.i82 = getelementptr %struct.sparx5, ptr %1, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %arrayidx.i.i82 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i82, align 4
  %add.ptr.i.i83 = getelementptr i8, ptr %19, i32 786432
  %mul.i.i84 = shl i32 %pgid, 4
  %add.ptr81.i.i85 = getelementptr i8, ptr %add.ptr.i.i83, i32 %mul.i.i84
  %add.ptr82.i.i86 = getelementptr i8, ptr %add.ptr81.i.i85, i32 8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i86) #5, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  br i1 %cmp20.not.i.i80, label %spx5_addr.exit.i87.spx5_rmw.exit94_crit_edge, label %do.end36.i2.i88, !prof !19

spx5_addr.exit.i87.spx5_rmw.exit94_crit_edge:     ; preds = %spx5_addr.exit.i87
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_rmw.exit94

do.end36.i2.i88:                                  ; preds = %spx5_addr.exit.i87
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 347, i32 noundef 9, ptr noundef null) #5
  br label %spx5_rmw.exit94

spx5_rmw.exit94:                                  ; preds = %do.end36.i2.i88, %spx5_addr.exit.i87.spx5_rmw.exit94_crit_edge
  %21 = and i32 %20, -16777217
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %or.i90 = or i32 %22, %spec.select63
  %23 = tail call i32 @llvm.bswap.i32(i32 %or.i90) #5
  %24 = ptrtoint ptr %arrayidx.i.i82 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i.i82, align 4
  %add.ptr.i4.i91 = getelementptr i8, ptr %25, i32 786432
  %add.ptr81.i6.i92 = getelementptr i8, ptr %add.ptr.i4.i91, i32 %mul.i.i84
  %add.ptr82.i7.i93 = getelementptr i8, ptr %add.ptr81.i6.i92, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i7.i93, i32 %23) #5, !srcloc !18
  br label %if.end40

if.else36:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %port, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %27, ptr noundef nonnull @.str.1, i32 noundef %conv) #8
  br label %if.end40

if.end40:                                         ; preds = %if.else36, %spx5_rmw.exit94, %spx5_rmw.exit78, %spx5_rmw.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sparx5_update_fwd(ptr noundef %sparx5) local_unnamed_addr #0 align 64 {
entry:
  %workmask = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %workmask) #5
  %0 = ptrtoint ptr %workmask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %workmask, align 4, !annotation !22
  %1 = getelementptr inbounds [3 x i32], ptr %workmask, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !22
  %3 = getelementptr inbounds [3 x i32], ptr %workmask, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !22
  %bridge_fwd_mask = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 22
  %5 = ptrtoint ptr %bridge_fwd_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %mask.sroa.0.0.copyload = load i32, ptr %bridge_fwd_mask, align 4
  %mask.sroa.9.0.bridge_fwd_mask.sroa_idx = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 22, i32 1
  %6 = ptrtoint ptr %mask.sroa.9.0.bridge_fwd_mask.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %mask.sroa.9.0.copyload = load i32, ptr %mask.sroa.9.0.bridge_fwd_mask.sroa_idx, align 4
  %mask.sroa.13.0.bridge_fwd_mask.sroa_idx = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 22, i32 2
  %7 = ptrtoint ptr %mask.sroa.13.0.bridge_fwd_mask.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %mask.sroa.13.0.copyload = load i32, ptr %mask.sroa.13.0.bridge_fwd_mask.sroa_idx, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %mask.sroa.0.0.copyload) #5
  %arrayidx.i.i = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 1
  %9 = tail call i32 @llvm.bswap.i32(i32 %mask.sroa.9.0.copyload) #5
  %and1.i62 = shl i32 %mask.sroa.13.0.copyload, 24
  %10 = and i32 %and1.i62, 16777216
  br label %spx5_wr.exit79

spx5_wr.exit79:                                   ; preds = %spx5_wr.exit79.spx5_wr.exit79_crit_edge, %entry
  %port.0165 = phi i32 [ 65, %entry ], [ %inc, %spx5_wr.exit79.spx5_wr.exit79_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 786432
  %mul.i.i = shl i32 %port.0165, 4
  %add.ptr81.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i.i, i32 %8) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr81.i.i69 = getelementptr i8, ptr %14, i32 786436
  %add.ptr82.i.i = getelementptr i8, ptr %add.ptr81.i.i69, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i, i32 %9) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr81.i.i77 = getelementptr i8, ptr %16, i32 786440
  %add.ptr82.i.i78 = getelementptr i8, ptr %add.ptr81.i.i77, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i78, i32 %10) #5, !srcloc !18
  %inc = add nuw nsw i32 %port.0165, 1
  %exitcond.not = icmp eq i32 %inc, 72
  br i1 %exitcond.not, label %spx5_wr.exit79.for.body6_crit_edge, label %spx5_wr.exit79.spx5_wr.exit79_crit_edge

spx5_wr.exit79.spx5_wr.exit79_crit_edge:          ; preds = %spx5_wr.exit79
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_wr.exit79

spx5_wr.exit79.for.body6_crit_edge:               ; preds = %spx5_wr.exit79
  br label %for.body6

for.body6:                                        ; preds = %for.inc18.for.body6_crit_edge, %spx5_wr.exit79.for.body6_crit_edge
  %port.1166 = phi i32 [ %inc19, %for.inc18.for.body6_crit_edge ], [ 0, %spx5_wr.exit79.for.body6_crit_edge ]
  %div3.i = lshr i32 %port.1166, 5
  %arrayidx.i = getelementptr i32, ptr %bridge_fwd_mask, i32 %div3.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %port.1166, 31
  %19 = shl nuw i32 1, %and.i
  %20 = and i32 %18, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %spx5_wr.exit133, label %spx5_wr.exit107

spx5_wr.exit107:                                  ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #7
  %21 = call ptr @memcpy(ptr %workmask, ptr %bridge_fwd_mask, i32 12)
  call void @_clear_bit(i32 noundef %port.1166, ptr noundef nonnull %workmask) #5
  %22 = ptrtoint ptr %workmask to i32
  call void @__asan_load4_noabort(i32 %22)
  %mask.sroa.0.0.copyload150 = load i32, ptr %workmask, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %mask.sroa.9.0.copyload152 = load i32, ptr %1, align 4
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %mask.sroa.13.0.copyload157 = load i32, ptr %3, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  call void @arm_heavy_mb() #5
  %25 = call i32 @llvm.bswap.i32(i32 %mask.sroa.0.0.copyload150) #5
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i86 = getelementptr i8, ptr %27, i32 849920
  %mul.i.i87 = shl i32 %port.1166, 4
  %add.ptr81.i.i88 = getelementptr i8, ptr %add.ptr.i.i86, i32 %mul.i.i87
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i.i88, i32 %25) #5, !srcloc !18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  call void @arm_heavy_mb() #5
  %28 = call i32 @llvm.bswap.i32(i32 %mask.sroa.9.0.copyload152) #5
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr81.i.i96 = getelementptr i8, ptr %30, i32 849924
  %add.ptr82.i.i97 = getelementptr i8, ptr %add.ptr81.i.i96, i32 %mul.i.i87
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i97, i32 %28) #5, !srcloc !18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  call void @arm_heavy_mb() #5
  %and1.i81 = shl i32 %mask.sroa.13.0.copyload157, 24
  %31 = and i32 %and1.i81, 16777216
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr81.i.i105 = getelementptr i8, ptr %33, i32 849928
  %add.ptr82.i.i106 = getelementptr i8, ptr %add.ptr81.i.i105, i32 %mul.i.i87
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i106, i32 %31) #5, !srcloc !18
  br label %for.inc18

spx5_wr.exit133:                                  ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  call void @arm_heavy_mb() #5
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i112 = getelementptr i8, ptr %35, i32 849920
  %mul.i.i113 = shl i32 %port.1166, 4
  %add.ptr81.i.i114 = getelementptr i8, ptr %add.ptr.i.i112, i32 %mul.i.i113
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i.i114, i32 0) #5, !srcloc !18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  call void @arm_heavy_mb() #5
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr81.i.i122 = getelementptr i8, ptr %37, i32 849924
  %add.ptr82.i.i123 = getelementptr i8, ptr %add.ptr81.i.i122, i32 %mul.i.i113
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i123, i32 0) #5, !srcloc !18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  call void @arm_heavy_mb() #5
  %38 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr81.i.i131 = getelementptr i8, ptr %39, i32 849928
  %add.ptr82.i.i132 = getelementptr i8, ptr %add.ptr81.i.i131, i32 %mul.i.i113
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i132, i32 0) #5, !srcloc !18
  br label %for.inc18

for.inc18:                                        ; preds = %spx5_wr.exit133, %spx5_wr.exit107
  %inc19 = add nuw nsw i32 %port.1166, 1
  %exitcond168.not = icmp eq i32 %inc19, 65
  br i1 %exitcond168.not, label %for.end20, label %for.inc18.for.body6_crit_edge

for.inc18.for.body6_crit_edge:                    ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body6

for.end20:                                        ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #7
  %bridge_lrn_mask = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 23
  %call.i = call i32 @__bitmap_and(ptr noundef nonnull %workmask, ptr noundef %bridge_fwd_mask, ptr noundef %bridge_lrn_mask, i32 noundef 65) #5
  %40 = ptrtoint ptr %workmask to i32
  call void @__asan_load4_noabort(i32 %40)
  %mask.sroa.0.0.copyload151 = load i32, ptr %workmask, align 4
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %mask.sroa.9.0.copyload154 = load i32, ptr %1, align 4
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %mask.sroa.13.0.copyload159 = load i32, ptr %3, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  call void @arm_heavy_mb() #5
  %43 = call i32 @llvm.bswap.i32(i32 %mask.sroa.0.0.copyload151) #5
  %arrayidx.i.i137 = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 7
  %44 = ptrtoint ptr %arrayidx.i.i137 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i.i137, align 4
  %add.ptr82.i.i139 = getelementptr i8, ptr %45, i32 566048
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i139, i32 %43) #5, !srcloc !18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  call void @arm_heavy_mb() #5
  %46 = call i32 @llvm.bswap.i32(i32 %mask.sroa.9.0.copyload154) #5
  %47 = ptrtoint ptr %arrayidx.i.i137 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i.i137, align 4
  %add.ptr82.i.i143 = getelementptr i8, ptr %48, i32 566052
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i143, i32 %46) #5, !srcloc !18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  call void @arm_heavy_mb() #5
  %and1.i135 = shl i32 %mask.sroa.13.0.copyload159, 24
  %49 = and i32 %and1.i135, 16777216
  %50 = ptrtoint ptr %arrayidx.i.i137 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i.i137, align 4
  %add.ptr82.i.i147 = getelementptr i8, ptr %51, i32 566056
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i147, i32 %49) #5, !srcloc !18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %workmask) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_vlan.c", i32 65, i32 8}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_vlan.c", i32 137, i32 26}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_main.h", i32 346, i32 2}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i64 6178714}
!16 = !{i64 2157336651}
!17 = !{i64 2157336955}
!18 = !{i64 6178296}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{i64 2157334662}
!21 = !{i8 0, i8 2}
!22 = !{!"auto-init"}
