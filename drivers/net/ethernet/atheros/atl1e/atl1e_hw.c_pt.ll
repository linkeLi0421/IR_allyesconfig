; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/atheros/atl1e/atl1e_hw.c_pt.bc'
source_filename = "../drivers/net/ethernet/atheros/atl1e/atl1e_hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.atl1e_hw = type { ptr, i32, ptr, i32, i16, i16, i16, i16, i8, i16, [6 x i8], [6 x i8], i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8 }
%struct.atl1e_adapter = type { ptr, ptr, %struct.napi_struct, %struct.mii_if_info, %struct.atl1e_hw, %struct.atl1e_hw_stats, i32, i16, i16, %struct.spinlock, %struct.atomic_t, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.timer_list, i32, ptr, i32, %struct.atl1e_tx_ring, %struct.atl1e_rx_ring, i32, i32, i32, [16 x i32], ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.atl1e_hw_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.atl1e_tx_ring = type { ptr, i32, i16, %struct.rwlock_t, i16, %struct.atomic_t, ptr, i32, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.atl1e_rx_ring = type { ptr, i32, i32, i32, i32, [4 x %struct.atl1e_rx_page_desc] }
%struct.atl1e_rx_page_desc = type { [2 x %struct.atl1e_rx_page], i8, i16 }
%struct.atl1e_rx_page = type { i32, ptr, i32, ptr, i32 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"pcie linkdown at least for 25ms\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pcie linkup after %d ms\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error enable PHY linkChange Interrupt\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Error Setting up Auto-Negotiation\0A\00", [61 x i8] zeroinitializer }, align 32
@atl1e_phy_init.__UNIQUE_ID_ddebug498 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, i8 0, i8 121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"atl1e\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"atl1e_phy_init\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/ethernet/atheros/atl1e/atl1e_hw.c\00", [50 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Restarting Auto-Negotiation\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error resetting the phy\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"MAC state machine can't be idle since disabled for 10ms second\0A\00", [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 16384, i64 32768]
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 398, i32 8 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 402, i32 31 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 474, i32 7 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 481, i32 7 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 485, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 488, i32 31 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private constant [49 x i8] c"../drivers/net/ethernet/atheros/atl1e/atl1e_hw.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 543, i32 7 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atl1e_check_eeprom_exist(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 512
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !27
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !28
  %and = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and2 = and i32 %3, -8193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !29
  tail call void @arm_heavy_mb() #8
  %4 = tail call i32 @llvm.bswap.i32(i32 %and2)
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %4) #8, !srcloc !30
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %add.ptr8 = getelementptr i8, ptr %8, i32 88
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr8) #8, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !32
  %.mask = and i16 %9, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 108, i16 %.mask)
  %cmp = icmp ne i16 %.mask, 108
  %cond = zext i1 %cmp to i32
  ret i32 %cond
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @atl1e_hw_set_mac_addr(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_addr = getelementptr inbounds %struct.atl1e_hw, ptr %hw, i32 0, i32 10
  %arrayidx = getelementptr %struct.atl1e_hw, ptr %hw, i32 0, i32 10, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 2
  %conv = zext i8 %1 to i32
  %shl = shl nuw i32 %conv, 24
  %arrayidx2 = getelementptr %struct.atl1e_hw, ptr %hw, i32 0, i32 10, i32 3
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %3 to i32
  %shl4 = shl nuw nsw i32 %conv3, 16
  %or = or i32 %shl4, %shl
  %arrayidx6 = getelementptr %struct.atl1e_hw, ptr %hw, i32 0, i32 10, i32 4
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx6, align 4
  %conv7 = zext i8 %5 to i32
  %shl8 = shl nuw nsw i32 %conv7, 8
  %or9 = or i32 %or, %shl8
  %arrayidx11 = getelementptr %struct.atl1e_hw, ptr %hw, i32 0, i32 10, i32 5
  %6 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %7 to i32
  %or13 = or i32 %or9, %conv12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !33
  tail call void @arm_heavy_mb() #8
  %8 = tail call i32 @llvm.bswap.i32(i32 %or13)
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 5256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #8, !srcloc !30
  %11 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mac_addr, align 4
  %conv17 = zext i8 %12 to i32
  %shl18 = shl nuw nsw i32 %conv17, 8
  %arrayidx20 = getelementptr %struct.atl1e_hw, ptr %hw, i32 0, i32 10, i32 1
  %13 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %14 to i32
  %or22 = or i32 %shl18, %conv21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !34
  tail call void @arm_heavy_mb() #8
  %15 = tail call i32 @llvm.bswap.i32(i32 %or22)
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 4
  %add.ptr28 = getelementptr i8, ptr %17, i32 5260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %15) #8, !srcloc !30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @atl1e_write_eeprom(ptr nocapture noundef readnone %hw, i32 noundef %offset, i32 noundef %value) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @atl1e_read_eeprom(ptr nocapture noundef readonly %hw, i32 noundef %offset, ptr nocapture noundef writeonly %p_value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %offset, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !35
  tail call void @arm_heavy_mb() #8
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !30
  %and1 = shl i32 %offset, 16
  %shl = and i32 %and1, 2147418112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !36
  tail call void @arm_heavy_mb() #8
  %2 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %add.ptr6 = getelementptr i8, ptr %4, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %2) #8, !srcloc !30
  tail call void @msleep(i32 noundef 2) #8
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %add.ptr8 = getelementptr i8, ptr %6, i32 108
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #8, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !37
  %.mask = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool11.not = icmp eq i32 %.mask, 0
  br i1 %tobool11.not, label %for.cond, label %do.body.if.then16_crit_edge

do.body.if.then16_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

for.cond:                                         ; preds = %do.body
  tail call void @msleep(i32 noundef 2) #8
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  %add.ptr8.1 = getelementptr i8, ptr %9, i32 108
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.1) #8, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !37
  %.mask.1 = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.1)
  %tobool11.not.1 = icmp eq i32 %.mask.1, 0
  br i1 %tobool11.not.1, label %for.cond.1, label %for.cond.if.then16_crit_edge

for.cond.if.then16_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

for.cond.1:                                       ; preds = %for.cond
  tail call void @msleep(i32 noundef 2) #8
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %add.ptr8.2 = getelementptr i8, ptr %12, i32 108
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.2) #8, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !37
  %.mask.2 = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.2)
  %tobool11.not.2 = icmp eq i32 %.mask.2, 0
  br i1 %tobool11.not.2, label %for.cond.2, label %for.cond.1.if.then16_crit_edge

for.cond.1.if.then16_crit_edge:                   ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

for.cond.2:                                       ; preds = %for.cond.1
  tail call void @msleep(i32 noundef 2) #8
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 4
  %add.ptr8.3 = getelementptr i8, ptr %15, i32 108
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.3) #8, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !37
  %.mask.3 = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.3)
  %tobool11.not.3 = icmp eq i32 %.mask.3, 0
  br i1 %tobool11.not.3, label %for.cond.3, label %for.cond.2.if.then16_crit_edge

for.cond.2.if.then16_crit_edge:                   ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

for.cond.3:                                       ; preds = %for.cond.2
  tail call void @msleep(i32 noundef 2) #8
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 4
  %add.ptr8.4 = getelementptr i8, ptr %18, i32 108
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.4) #8, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !37
  %.mask.4 = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.4)
  %tobool11.not.4 = icmp eq i32 %.mask.4, 0
  br i1 %tobool11.not.4, label %for.cond.4, label %for.cond.3.if.then16_crit_edge

for.cond.3.if.then16_crit_edge:                   ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

for.cond.4:                                       ; preds = %for.cond.3
  tail call void @msleep(i32 noundef 2) #8
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 4
  %add.ptr8.5 = getelementptr i8, ptr %21, i32 108
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.5) #8, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !37
  %.mask.5 = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.5)
  %tobool11.not.5 = icmp eq i32 %.mask.5, 0
  br i1 %tobool11.not.5, label %for.cond.5, label %for.cond.4.if.then16_crit_edge

for.cond.4.if.then16_crit_edge:                   ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

for.cond.5:                                       ; preds = %for.cond.4
  tail call void @msleep(i32 noundef 2) #8
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw, align 4
  %add.ptr8.6 = getelementptr i8, ptr %24, i32 108
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.6) #8, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !37
  %.mask.6 = and i32 %25, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.6)
  %tobool11.not.6 = icmp eq i32 %.mask.6, 0
  br i1 %tobool11.not.6, label %for.cond.6, label %for.cond.5.if.then16_crit_edge

for.cond.5.if.then16_crit_edge:                   ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

for.cond.6:                                       ; preds = %for.cond.5
  tail call void @msleep(i32 noundef 2) #8
  %26 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw, align 4
  %add.ptr8.7 = getelementptr i8, ptr %27, i32 108
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.7) #8, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !37
  %.mask.7 = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.7)
  %tobool11.not.7 = icmp eq i32 %.mask.7, 0
  br i1 %tobool11.not.7, label %for.cond.7, label %for.cond.6.if.then16_crit_edge

for.cond.6.if.then16_crit_edge:                   ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

for.cond.7:                                       ; preds = %for.cond.6
  tail call void @msleep(i32 noundef 2) #8
  %29 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw, align 4
  %add.ptr8.8 = getelementptr i8, ptr %30, i32 108
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.8) #8, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !37
  %.mask.8 = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.8)
  %tobool11.not.8 = icmp eq i32 %.mask.8, 0
  br i1 %tobool11.not.8, label %for.cond.8, label %for.cond.7.if.then16_crit_edge

for.cond.7.if.then16_crit_edge:                   ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

for.cond.8:                                       ; preds = %for.cond.7
  tail call void @msleep(i32 noundef 2) #8
  %32 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw, align 4
  %add.ptr8.9 = getelementptr i8, ptr %33, i32 108
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.9) #8, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !37
  %.mask.9 = and i32 %34, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.9)
  %tobool11.not.9 = icmp eq i32 %.mask.9, 0
  br i1 %tobool11.not.9, label %for.cond.8.cleanup_crit_edge, label %for.cond.8.if.then16_crit_edge

for.cond.8.if.then16_crit_edge:                   ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

for.cond.8.cleanup_crit_edge:                     ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then16:                                        ; preds = %for.cond.8.if.then16_crit_edge, %for.cond.7.if.then16_crit_edge, %for.cond.6.if.then16_crit_edge, %for.cond.5.if.then16_crit_edge, %for.cond.4.if.then16_crit_edge, %for.cond.3.if.then16_crit_edge, %for.cond.2.if.then16_crit_edge, %for.cond.1.if.then16_crit_edge, %for.cond.if.then16_crit_edge, %do.body.if.then16_crit_edge
  %35 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw, align 4
  %add.ptr20 = getelementptr i8, ptr %36, i32 112
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #8, !srcloc !27
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !38
  %39 = ptrtoint ptr %p_value to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %p_value, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %for.cond.8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.then16 ], [ false, %entry.cleanup_crit_edge ], [ false, %for.cond.8.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @atl1e_force_ps(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !39
  tail call void @arm_heavy_mb() #8
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 5132
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 -32386) #8, !srcloc !40
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atl1e_read_mac_addr(ptr nocapture noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %eth_addr.i = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %eth_addr.i)
  %perm_mac_addr.i = getelementptr inbounds %struct.atl1e_hw, ptr %hw, i32 0, i32 11
  %0 = ptrtoint ptr %perm_mac_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %perm_mac_addr.i, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i.i, label %is_valid_ether_addr.exit.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

is_valid_ether_addr.exit.i:                       ; preds = %entry
  %add.ptr.i.i.i = getelementptr %struct.atl1e_hw, ptr %hw, i32 0, i32 11, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i.i.i, align 2
  %conv.i.i.i = zext i16 %4 to i32
  %or.i.i.i = or i32 %1, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %is_valid_ether_addr.exit.i.if.end.i_crit_edge, label %is_valid_ether_addr.exit.i.if.end_crit_edge

is_valid_ether_addr.exit.i.if.end_crit_edge:      ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

is_valid_ether_addr.exit.i.if.end.i_crit_edge:    ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %is_valid_ether_addr.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 512
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !27
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !28
  %and.i.i = and i32 %8, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.atl1e_check_eeprom_exist.exit.i_crit_edge, label %if.then.i.i

if.end.i.atl1e_check_eeprom_exist.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %atl1e_check_eeprom_exist.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %and2.i.i = and i32 %8, -8193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !29
  tail call void @arm_heavy_mb() #8
  %9 = tail call i32 @llvm.bswap.i32(i32 %and2.i.i) #8
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %11, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %9) #8, !srcloc !30
  br label %atl1e_check_eeprom_exist.exit.i

atl1e_check_eeprom_exist.exit.i:                  ; preds = %if.then.i.i, %if.end.i.atl1e_check_eeprom_exist.exit.i_crit_edge
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %13, i32 88
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr8.i.i) #8, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !32
  %.mask.i.i = and i16 %14, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 108, i16 %.mask.i.i)
  %cmp.i.not.i = icmp eq i16 %.mask.i.i, 108
  br i1 %cmp.i.not.i, label %if.then3.i, label %atl1e_check_eeprom_exist.exit.i.if.end21.i_crit_edge

atl1e_check_eeprom_exist.exit.i.if.end21.i_crit_edge: ; preds = %atl1e_check_eeprom_exist.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.then3.i:                                       ; preds = %atl1e_check_eeprom_exist.exit.i
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 536
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !41
  %18 = or i32 %17, 524288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !42
  tail call void @arm_heavy_mb() #8
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw, align 4
  %add.ptr7.i = getelementptr i8, ptr %20, i32 536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %18) #8, !srcloc !30
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.073.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %for.cond.i.atl1e_get_permanent_address.exit.thread_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.atl1e_get_permanent_address.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %atl1e_get_permanent_address.exit.thread

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.then3.i
  %i.073.i = phi i32 [ 0, %if.then3.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  tail call void @msleep(i32 noundef 10) #8
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw, align 4
  %add.ptr11.i = getelementptr i8, ptr %22, i32 536
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #8, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !43
  %24 = and i32 %23, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp15.i = icmp eq i32 %24, 0
  br i1 %cmp15.i, label %for.body.i.if.end21.i_crit_edge, label %for.cond.i

for.body.i.if.end21.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.end21.i:                                       ; preds = %for.body.i.if.end21.i_crit_edge, %atl1e_check_eeprom_exist.exit.i.if.end21.i_crit_edge
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw, align 4
  %add.ptr25.i = getelementptr i8, ptr %26, i32 5256
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25.i) #8, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !44
  %28 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw, align 4
  %add.ptr34.i = getelementptr i8, ptr %29, i32 5260
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i) #8, !srcloc !27
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !45
  %eth_addr.i.2.eth_addr.i.2.eth_addr.2.eth_addr.2..sroa_idx = getelementptr inbounds i8, ptr %eth_addr.i, i32 2
  %32 = ptrtoint ptr %eth_addr.i.2.eth_addr.i.2.eth_addr.2.eth_addr.2..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %27, ptr %eth_addr.i.2.eth_addr.i.2.eth_addr.2.eth_addr.2..sroa_idx, align 2
  %addr.sroa.6.4.extract.shift.i = lshr i32 %31, 16
  %addr.sroa.6.4.extract.trunc.i = trunc i32 %addr.sroa.6.4.extract.shift.i to i16
  %33 = tail call i16 @llvm.bswap.i16(i16 %addr.sroa.6.4.extract.trunc.i) #8
  %34 = ptrtoint ptr %eth_addr.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %eth_addr.i, align 4
  %eth_addr.i.0.eth_addr.i.0.eth_addr.0.eth_addr.0..i = load i32, ptr %eth_addr.i, align 4
  %35 = and i32 %eth_addr.i.0.eth_addr.i.0.eth_addr.0.eth_addr.0..i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.i.not.i64.i = icmp eq i32 %35, 0
  br i1 %tobool.i.not.i64.i, label %is_valid_ether_addr.exit70.i, label %if.end21.i.atl1e_get_permanent_address.exit.thread_crit_edge

if.end21.i.atl1e_get_permanent_address.exit.thread_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %atl1e_get_permanent_address.exit.thread

is_valid_ether_addr.exit70.i:                     ; preds = %if.end21.i
  %eth_addr.i.4.eth_addr.i.4.eth_addr.4.eth_addr.4..sroa_idx = getelementptr inbounds i8, ptr %eth_addr.i, i32 4
  %36 = ptrtoint ptr %eth_addr.i.4.eth_addr.i.4.eth_addr.4.eth_addr.4..sroa_idx to i32
  call void @__asan_load2_noabort(i32 %36)
  %eth_addr.i.4.eth_addr.i.4.eth_addr.4.eth_addr.4..i = load i16, ptr %eth_addr.i.4.eth_addr.i.4.eth_addr.4.eth_addr.4..sroa_idx, align 4
  %conv.i.i66.i = zext i16 %eth_addr.i.4.eth_addr.i.4.eth_addr.4.eth_addr.4..i to i32
  %or.i.i67.i = or i32 %eth_addr.i.0.eth_addr.i.0.eth_addr.0.eth_addr.0..i, %conv.i.i66.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i67.i)
  %cmp.i.i68.not.i = icmp eq i32 %or.i.i67.i, 0
  br i1 %cmp.i.i68.not.i, label %is_valid_ether_addr.exit70.i.atl1e_get_permanent_address.exit.thread_crit_edge, label %if.then45.i

is_valid_ether_addr.exit70.i.atl1e_get_permanent_address.exit.thread_crit_edge: ; preds = %is_valid_ether_addr.exit70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %atl1e_get_permanent_address.exit.thread

if.then45.i:                                      ; preds = %is_valid_ether_addr.exit70.i
  call void @__sanitizer_cov_trace_pc() #10
  %37 = call ptr @memcpy(ptr %perm_mac_addr.i, ptr %eth_addr.i, i32 6)
  br label %if.end

atl1e_get_permanent_address.exit.thread:          ; preds = %is_valid_ether_addr.exit70.i.atl1e_get_permanent_address.exit.thread_crit_edge, %if.end21.i.atl1e_get_permanent_address.exit.thread_crit_edge, %for.cond.i.atl1e_get_permanent_address.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %eth_addr.i)
  br label %cleanup

if.end:                                           ; preds = %if.then45.i, %is_valid_ether_addr.exit.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %eth_addr.i)
  %mac_addr = getelementptr inbounds %struct.atl1e_hw, ptr %hw, i32 0, i32 10
  %38 = call ptr @memcpy(ptr %mac_addr, ptr %perm_mac_addr.i, i32 6)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %atl1e_get_permanent_address.exit.thread
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %atl1e_get_permanent_address.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atl1e_hash_mc_addr(ptr nocapture noundef readnone %hw, ptr noundef %mc_addr) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %mc_addr, i32 noundef 6) #11
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.06 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %value.05 = phi i32 [ 0, %entry ], [ %or, %for.body.for.body_crit_edge ]
  %shr = lshr i32 %call, %i.06
  %and = and i32 %shr, 1
  %sub = sub nuw nsw i32 31, %i.06
  %shl = shl nuw i32 %and, %sub
  %or = or i32 %shl, %value.05
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  ret i32 %or
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @atl1e_hash_set(ptr nocapture noundef readonly %hw, i32 noundef %hash_value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %shr1 = lshr i32 %hash_value, 26
  %and2 = and i32 %shr1, 31
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 5264
  %2 = lshr i32 %hash_value, 29
  %shl = and i32 %2, 4
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 %shl
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #8, !srcloc !27
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !46
  %shl5 = shl nuw i32 1, %and2
  %or = or i32 %4, %shl5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !47
  tail call void @arm_heavy_mb() #8
  %5 = tail call i32 @llvm.bswap.i32(i32 %or)
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %add.ptr7 = getelementptr i8, ptr %7, i32 5264
  %add.ptr9 = getelementptr i8, ptr %add.ptr7, i32 %shl
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %5) #8, !srcloc !30
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atl1e_read_phy_reg(ptr nocapture noundef readonly %hw, i16 noundef zeroext %reg_addr, ptr nocapture noundef writeonly %phy_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = shl i16 %reg_addr, 8
  %1 = or i16 %0, -8192
  %or2 = zext i16 %1 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !48
  tail call void @arm_heavy_mb() #8
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 5140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %or2) #8, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !49
  tail call void @arm_heavy_mb() #8
  br label %for.body

for.body:                                         ; preds = %do.body12.for.body_crit_edge, %entry
  %i.026 = phi i32 [ 0, %entry ], [ %inc, %do.body12.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 429496) #8
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %add.ptr9 = getelementptr i8, ptr %6, i32 5140
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #8, !srcloc !27
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !50
  %and11 = and i32 %8, 142606336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool.not = icmp eq i32 %and11, 0
  br i1 %tobool.not, label %if.then17, label %do.body12

do.body12:                                        ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  tail call void @arm_heavy_mb() #8
  %inc = add nuw nsw i32 %i.026, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %do.body12.cleanup_crit_edge, label %do.body12.for.body_crit_edge

do.body12.for.body_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.body12.cleanup_crit_edge:                      ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv18 = trunc i32 %8 to i16
  %9 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv18, ptr %phy_data, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %do.body12.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then17 ], [ 2, %do.body12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atl1e_write_phy_reg(ptr nocapture noundef readonly %hw, i32 noundef %reg_addr, i16 noundef zeroext %phy_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %phy_data to i32
  %and1 = shl i32 %reg_addr, 16
  %shl2 = and i32 %and1, 2031616
  %or = or i32 %shl2, %conv
  %or4 = or i32 %or, 12582912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !52
  tail call void @arm_heavy_mb() #8
  %0 = tail call i32 @llvm.bswap.i32(i32 %or4)
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 5140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #8, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !53
  tail call void @arm_heavy_mb() #8
  br label %for.body

for.body:                                         ; preds = %do.body14.for.body_crit_edge, %entry
  %i.026 = phi i32 [ 0, %entry ], [ %inc, %do.body14.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 429496) #8
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %add.ptr11 = getelementptr i8, ptr %5, i32 5140
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #8, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  %7 = and i32 %6, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %do.body14

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.body14:                                        ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !55
  tail call void @arm_heavy_mb() #8
  %inc = add nuw nsw i32 %i.026, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %do.body14.for.end_crit_edge, label %do.body14.for.body_crit_edge

do.body14.for.body_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.body14.for.end_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %do.body14.for.end_crit_edge, %for.body.for.end_crit_edge
  %. = phi i32 [ 0, %for.body.for.end_crit_edge ], [ 2, %do.body14.for.end_crit_edge ]
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atl1e_phy_commit(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.atl1e_hw, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !52
  tail call void @arm_heavy_mb() #8
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 5140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 9617408) #8, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !53
  tail call void @arm_heavy_mb() #8
  br label %for.body.i

for.body.i:                                       ; preds = %do.body14.i.for.body.i_crit_edge, %entry
  %i.026.i = phi i32 [ 0, %entry ], [ %inc.i, %do.body14.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 429496) #8
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %add.ptr11.i = getelementptr i8, ptr %6, i32 5140
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #8, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  %8 = and i32 %7, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %for.body.i.cleanup13_crit_edge, label %do.body14.i

for.body.i.cleanup13_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup13

do.body14.i:                                      ; preds = %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !55
  tail call void @arm_heavy_mb() #8
  %inc.i = add nuw nsw i32 %i.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %do.body14.i.for.body_crit_edge, label %do.body14.i.for.body.i_crit_edge

do.body14.i.for.body.i_crit_edge:                 ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

do.body14.i.for.body_crit_edge:                   ; preds = %do.body14.i
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body14.i.for.body_crit_edge
  %i.025 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %do.body14.i.for.body_crit_edge ]
  tail call void @msleep(i32 noundef 1) #8
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 5140
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !56
  %12 = and i32 %11, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool4.not = icmp eq i32 %12, 0
  br i1 %tobool4.not, label %if.end9, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.025, 1
  %exitcond.not = icmp eq i32 %inc, 25
  br i1 %exitcond.not, label %if.then8, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.then8:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %14, ptr noundef nonnull @.str) #12
  br label %cleanup13

if.end9:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %16, ptr noundef nonnull @.str.1, i32 noundef %i.025) #12
  br label %cleanup13

cleanup13:                                        ; preds = %if.end9, %if.then8, %for.body.i.cleanup13_crit_edge
  %retval.1 = phi i32 [ 2, %if.then8 ], [ 0, %if.end9 ], [ 0, %for.body.i.cleanup13_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atl1e_phy_init(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.atl1e_hw, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 4
  %phy_configured = getelementptr inbounds %struct.atl1e_hw, ptr %hw, i32 0, i32 35
  %2 = ptrtoint ptr %phy_configured to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %phy_configured, align 2, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  %re_autoneg = getelementptr inbounds %struct.atl1e_hw, ptr %hw, i32 0, i32 36
  %4 = ptrtoint ptr %re_autoneg to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %re_autoneg, align 1, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %if.then3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %re_autoneg to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %re_autoneg, align 1
  %call = tail call i32 @atl1e_restart_autoneg(ptr noundef %hw)
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !58
  tail call void @arm_heavy_mb() #8
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 5132
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 60) #8, !srcloc !40
  tail call void @msleep(i32 noundef 2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !59
  tail call void @arm_heavy_mb() #8
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  %add.ptr10 = getelementptr i8, ptr %10, i32 5132
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr10, i16 316) #8, !srcloc !40
  tail call void @msleep(i32 noundef 2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !52
  tail call void @arm_heavy_mb() #8
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 5140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 184605952) #8, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !53
  tail call void @arm_heavy_mb() #8
  br label %for.body.i

for.body.i:                                       ; preds = %do.body14.i.for.body.i_crit_edge, %do.body
  %i.026.i = phi i32 [ 0, %do.body ], [ %inc.i, %do.body14.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 429496) #8
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 4
  %add.ptr11.i = getelementptr i8, ptr %15, i32 5140
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #8, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  %17 = and i32 %16, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i, label %if.end14, label %do.body14.i

do.body14.i:                                      ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %do.body14.i.cleanup_crit_edge, label %do.body14.i.for.body.i_crit_edge

do.body14.i.for.body.i_crit_edge:                 ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

do.body14.i.cleanup_crit_edge:                    ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %for.body.i
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 4
  %add.ptr.i129 = getelementptr i8, ptr %19, i32 5140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i129, i32 12377600) #8, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !53
  tail call void @arm_heavy_mb() #8
  br label %for.body.i133

for.body.i133:                                    ; preds = %do.body14.i136.for.body.i133_crit_edge, %if.end14
  %i.026.i130 = phi i32 [ 0, %if.end14 ], [ %inc.i134, %do.body14.i136.for.body.i133_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 429496) #8
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw, align 4
  %add.ptr11.i131 = getelementptr i8, ptr %22, i32 5140
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i131) #8, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  %24 = and i32 %23, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i132 = icmp eq i32 %24, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i132, label %if.end18, label %do.body14.i136

do.body14.i136:                                   ; preds = %for.body.i133
  %inc.i134 = add nuw nsw i32 %i.026.i130, 1
  %exitcond.not.i135 = icmp eq i32 %inc.i134, 10
  br i1 %exitcond.not.i135, label %do.body14.i136.cleanup_crit_edge, label %do.body14.i136.for.body.i133_crit_edge

do.body14.i136.for.body.i133_crit_edge:           ; preds = %do.body14.i136
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i133

do.body14.i136.cleanup_crit_edge:                 ; preds = %do.body14.i136
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %for.body.i133
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw, align 4
  %add.ptr.i139 = getelementptr i8, ptr %26, i32 5140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i139, i32 56576) #8, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !53
  tail call void @arm_heavy_mb() #8
  br label %for.body.i143

for.body.i143:                                    ; preds = %do.body14.i146.for.body.i143_crit_edge, %if.end18
  %i.026.i140 = phi i32 [ 0, %if.end18 ], [ %inc.i144, %do.body14.i146.for.body.i143_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 429496) #8
  %28 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw, align 4
  %add.ptr11.i141 = getelementptr i8, ptr %29, i32 5140
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i141) #8, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  %31 = and i32 %30, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i142 = icmp eq i32 %31, 0
  br i1 %tobool.not.i142, label %if.end22, label %do.body14.i146

do.body14.i146:                                   ; preds = %for.body.i143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !55
  tail call void @arm_heavy_mb() #8
  %inc.i144 = add nuw nsw i32 %i.026.i140, 1
  %exitcond.not.i145 = icmp eq i32 %inc.i144, 10
  br i1 %exitcond.not.i145, label %do.body14.i146.cleanup_crit_edge, label %do.body14.i146.for.body.i143_crit_edge

do.body14.i146.for.body.i143_crit_edge:           ; preds = %do.body14.i146
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i143

do.body14.i146.cleanup_crit_edge:                 ; preds = %do.body14.i146
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %for.body.i143
  %call23 = tail call i32 @atl1e_write_phy_reg(ptr noundef %hw, i32 noundef 30, i16 noundef zeroext 751)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %call27 = tail call i32 @atl1e_write_phy_reg(ptr noundef %hw, i32 noundef 29, i16 noundef zeroext 18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  %call31 = tail call i32 @atl1e_write_phy_reg(ptr noundef %hw, i32 noundef 30, i16 noundef zeroext 19460)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  %call35 = tail call i32 @atl1e_write_phy_reg(ptr noundef %hw, i32 noundef 29, i16 noundef zeroext 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end38:                                         ; preds = %if.end34
  %call39 = tail call i32 @atl1e_write_phy_reg(ptr noundef %hw, i32 noundef 30, i16 noundef zeroext -29765)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end42:                                         ; preds = %if.end38
  %call43 = tail call i32 @atl1e_write_phy_reg(ptr noundef %hw, i32 noundef 29, i16 noundef zeroext 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end46:                                         ; preds = %if.end42
  %call47 = tail call i32 @atl1e_write_phy_reg(ptr noundef %hw, i32 noundef 30, i16 noundef zeroext 11334)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end50:                                         ; preds = %if.end46
  tail call void @msleep(i32 noundef 1) #8
  %call51 = tail call i32 @atl1e_write_phy_reg(ptr noundef %hw, i32 noundef 18, i16 noundef zeroext 3072)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.then53

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %33, ptr noundef nonnull @.str.2) #12
  br label %cleanup

if.end54:                                         ; preds = %if.end50
  %call55 = tail call fastcc i32 @atl1e_phy_setup_autoneg_adv(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %do.body61, label %if.then57

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %35, ptr noundef nonnull @.str.3) #12
  br label %cleanup

do.body61:                                        ; preds = %if.end54
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atl1e_phy_init.__UNIQUE_ID_ddebug498, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atl1e_phy_init, %if.then66)) #8
          to label %do.end72 [label %if.then66], !srcloc !60

if.then66:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @atl1e_phy_init.__UNIQUE_ID_ddebug498, ptr noundef %37, ptr noundef nonnull @.str.7) #8
  br label %do.end72

do.end72:                                         ; preds = %if.then66, %do.body61
  %call73 = tail call i32 @atl1e_phy_commit(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end77, label %if.then75

if.then75:                                        ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %39, ptr noundef nonnull @.str.8) #12
  br label %cleanup

if.end77:                                         ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %phy_configured to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %phy_configured, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %if.then75, %if.then57, %if.then53, %if.end46.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %do.body14.i146.cleanup_crit_edge, %do.body14.i136.cleanup_crit_edge, %do.body14.i.cleanup_crit_edge, %if.then3, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then3 ], [ %call51, %if.then53 ], [ %call55, %if.then57 ], [ %call73, %if.then75 ], [ 0, %if.end77 ], [ 0, %if.then.cleanup_crit_edge ], [ %call23, %if.end22.cleanup_crit_edge ], [ %call27, %if.end26.cleanup_crit_edge ], [ %call31, %if.end30.cleanup_crit_edge ], [ %call35, %if.end34.cleanup_crit_edge ], [ %call39, %if.end38.cleanup_crit_edge ], [ %call43, %if.end42.cleanup_crit_edge ], [ %call47, %if.end46.cleanup_crit_edge ], [ 2, %do.body14.i146.cleanup_crit_edge ], [ 2, %do.body14.i136.cleanup_crit_edge ], [ 2, %do.body14.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atl1e_restart_autoneg(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mii_autoneg_adv_reg = getelementptr inbounds %struct.atl1e_hw, ptr %hw, i32 0, i32 18
  %0 = ptrtoint ptr %mii_autoneg_adv_reg to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mii_autoneg_adv_reg, align 4
  %conv.i = zext i16 %1 to i32
  %or4.i = or i32 %conv.i, 12845056
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !52
  tail call void @arm_heavy_mb() #8
  %2 = tail call i32 @llvm.bswap.i32(i32 %or4.i) #8
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 5140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #8, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !53
  tail call void @arm_heavy_mb() #8
  br label %for.body.i

for.body.i:                                       ; preds = %do.body14.i.for.body.i_crit_edge, %entry
  %i.026.i = phi i32 [ 0, %entry ], [ %inc.i, %do.body14.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 429496) #8
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %add.ptr11.i = getelementptr i8, ptr %7, i32 5140
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #8, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  %9 = and i32 %8, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.end, label %do.body14.i

do.body14.i:                                      ; preds = %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !55
  tail call void @arm_heavy_mb() #8
  %inc.i = add nuw nsw i32 %i.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %do.body14.i.cleanup_crit_edge, label %do.body14.i.for.body.i_crit_edge

do.body14.i.for.body.i_crit_edge:                 ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

do.body14.i.cleanup_crit_edge:                    ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body.i
  %nic_type = getelementptr inbounds %struct.atl1e_hw, ptr %hw, i32 0, i32 3
  %10 = ptrtoint ptr %nic_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nic_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %switch = icmp ult i32 %11, 2
  br i1 %switch, label %if.then3, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then3:                                         ; preds = %if.end
  %mii_1000t_ctrl_reg = getelementptr inbounds %struct.atl1e_hw, ptr %hw, i32 0, i32 19
  %12 = ptrtoint ptr %mii_1000t_ctrl_reg to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %mii_1000t_ctrl_reg, align 2
  %conv.i20 = zext i16 %13 to i32
  %or4.i22 = or i32 %conv.i20, 13172736
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !52
  tail call void @arm_heavy_mb() #8
  %14 = tail call i32 @llvm.bswap.i32(i32 %or4.i22) #8
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 4
  %add.ptr.i23 = getelementptr i8, ptr %16, i32 5140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 %14) #8, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !53
  tail call void @arm_heavy_mb() #8
  br label %for.body.i27

for.body.i27:                                     ; preds = %do.body14.i30.for.body.i27_crit_edge, %if.then3
  %i.026.i24 = phi i32 [ 0, %if.then3 ], [ %inc.i28, %do.body14.i30.for.body.i27_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 429496) #8
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 4
  %add.ptr11.i25 = getelementptr i8, ptr %19, i32 5140
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i25) #8, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  %21 = and i32 %20, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i26 = icmp eq i32 %21, 0
  br i1 %tobool.not.i26, label %for.body.i27.if.end8_crit_edge, label %do.body14.i30

for.body.i27.if.end8_crit_edge:                   ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

do.body14.i30:                                    ; preds = %for.body.i27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !55
  tail call void @arm_heavy_mb() #8
  %inc.i28 = add nuw nsw i32 %i.026.i24, 1
  %exitcond.not.i29 = icmp eq i32 %inc.i28, 10
  br i1 %exitcond.not.i29, label %do.body14.i30.cleanup_crit_edge, label %do.body14.i30.for.body.i27_crit_edge

do.body14.i30.for.body.i27_crit_edge:             ; preds = %do.body14.i30
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i27

do.body14.i30.cleanup_crit_edge:                  ; preds = %do.body14.i30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %for.body.i27.if.end8_crit_edge, %if.end.if.end8_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !52
  tail call void @arm_heavy_mb() #8
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw, align 4
  %add.ptr.i33 = getelementptr i8, ptr %23, i32 5140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 9617408) #8, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !53
  tail call void @arm_heavy_mb() #8
  br label %for.body.i37

for.body.i37:                                     ; preds = %do.body14.i40.for.body.i37_crit_edge, %if.end8
  %i.026.i34 = phi i32 [ 0, %if.end8 ], [ %inc.i38, %do.body14.i40.for.body.i37_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 429496) #8
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw, align 4
  %add.ptr11.i35 = getelementptr i8, ptr %26, i32 5140
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i35) #8, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  %28 = and i32 %27, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i36 = icmp eq i32 %28, 0
  br i1 %tobool.not.i36, label %for.body.i37.cleanup_crit_edge, label %do.body14.i40

for.body.i37.cleanup_crit_edge:                   ; preds = %for.body.i37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body14.i40:                                    ; preds = %for.body.i37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !55
  tail call void @arm_heavy_mb() #8
  %inc.i38 = add nuw nsw i32 %i.026.i34, 1
  %exitcond.not.i39 = icmp eq i32 %inc.i38, 10
  br i1 %exitcond.not.i39, label %do.body14.i40.cleanup_crit_edge, label %do.body14.i40.for.body.i37_crit_edge

do.body14.i40.for.body.i37_crit_edge:             ; preds = %do.body14.i40
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i37

do.body14.i40.cleanup_crit_edge:                  ; preds = %do.body14.i40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %do.body14.i40.cleanup_crit_edge, %for.body.i37.cleanup_crit_edge, %do.body14.i30.cleanup_crit_edge, %do.body14.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %do.body14.i40.cleanup_crit_edge ], [ 0, %for.body.i37.cleanup_crit_edge ], [ 2, %do.body14.i30.cleanup_crit_edge ], [ 2, %do.body14.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atl1e_phy_setup_autoneg_adv(ptr nocapture noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mii_autoneg_adv_reg1 = getelementptr inbounds %struct.atl1e_hw, ptr %hw, i32 0, i32 18
  %0 = ptrtoint ptr %mii_autoneg_adv_reg1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mii_autoneg_adv_reg1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.not = icmp eq i16 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %media_type = getelementptr inbounds %struct.atl1e_hw, ptr %hw, i32 0, i32 16
  %2 = ptrtoint ptr %media_type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %media_type, align 4
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %sw.default [
    i16 0, label %sw.bb
    i16 1, label %sw.bb22
    i16 2, label %sw.bb27
    i16 3, label %sw.bb32
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %autoneg_advertised = getelementptr inbounds %struct.atl1e_hw, ptr %hw, i32 0, i32 17
  %nic_type = getelementptr inbounds %struct.atl1e_hw, ptr %hw, i32 0, i32 3
  %5 = ptrtoint ptr %nic_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nic_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp11 = icmp eq i32 %6, 0
  %7 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 480, ptr %autoneg_advertised, align 2
  %spec.select = select i1 %cmp11, i16 512, i16 0
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %autoneg_advertised26 = getelementptr inbounds %struct.atl1e_hw, ptr %hw, i32 0, i32 17
  %8 = ptrtoint ptr %autoneg_advertised26 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 8, ptr %autoneg_advertised26, align 2
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %autoneg_advertised31 = getelementptr inbounds %struct.atl1e_hw, ptr %hw, i32 0, i32 17
  %9 = ptrtoint ptr %autoneg_advertised31 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 4, ptr %autoneg_advertised31, align 2
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %autoneg_advertised36 = getelementptr inbounds %struct.atl1e_hw, ptr %hw, i32 0, i32 17
  %10 = ptrtoint ptr %autoneg_advertised36 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 2, ptr %autoneg_advertised36, align 2
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %autoneg_advertised40 = getelementptr inbounds %struct.atl1e_hw, ptr %hw, i32 0, i32 17
  %11 = ptrtoint ptr %autoneg_advertised40 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %autoneg_advertised40, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb32, %sw.bb27, %sw.bb22, %sw.bb
  %mii_autoneg_adv_reg.0 = phi i16 [ 3073, %sw.default ], [ 3074, %sw.bb32 ], [ 3076, %sw.bb27 ], [ 3328, %sw.bb22 ], [ 3552, %sw.bb ]
  %mii_1000t_ctrl_reg.0 = phi i16 [ 0, %sw.default ], [ 0, %sw.bb32 ], [ 0, %sw.bb27 ], [ 0, %sw.bb22 ], [ %spec.select, %sw.bb ]
  %12 = ptrtoint ptr %mii_autoneg_adv_reg1 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %mii_autoneg_adv_reg.0, ptr %mii_autoneg_adv_reg1, align 4
  %mii_1000t_ctrl_reg45 = getelementptr inbounds %struct.atl1e_hw, ptr %hw, i32 0, i32 19
  %13 = ptrtoint ptr %mii_1000t_ctrl_reg45 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %mii_1000t_ctrl_reg.0, ptr %mii_1000t_ctrl_reg45, align 2
  %conv.i = zext i16 %mii_autoneg_adv_reg.0 to i32
  %or4.i = or i32 %conv.i, 12845056
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !52
  tail call void @arm_heavy_mb() #8
  %14 = tail call i32 @llvm.bswap.i32(i32 %or4.i) #8
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 5140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %14) #8, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !53
  tail call void @arm_heavy_mb() #8
  br label %for.body.i

for.body.i:                                       ; preds = %do.body14.i.for.body.i_crit_edge, %sw.epilog
  %i.026.i = phi i32 [ 0, %sw.epilog ], [ %inc.i, %do.body14.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 429496) #8
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 4
  %add.ptr11.i = getelementptr i8, ptr %19, i32 5140
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #8, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  %21 = and i32 %20, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %if.end47, label %do.body14.i

do.body14.i:                                      ; preds = %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !55
  tail call void @arm_heavy_mb() #8
  %inc.i = add nuw nsw i32 %i.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %do.body14.i.cleanup_crit_edge, label %do.body14.i.for.body.i_crit_edge

do.body14.i.for.body.i_crit_edge:                 ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

do.body14.i.cleanup_crit_edge:                    ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end47:                                         ; preds = %for.body.i
  %nic_type48 = getelementptr inbounds %struct.atl1e_hw, ptr %hw, i32 0, i32 3
  %22 = ptrtoint ptr %nic_type48 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nic_type48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %switch = icmp ult i32 %23, 2
  br i1 %switch, label %if.then54, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then54:                                        ; preds = %if.end47
  %conv.i90 = zext i16 %mii_1000t_ctrl_reg.0 to i32
  %or4.i92 = or i32 %conv.i90, 13172736
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !52
  tail call void @arm_heavy_mb() #8
  %24 = tail call i32 @llvm.bswap.i32(i32 %or4.i92) #8
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw, align 4
  %add.ptr.i93 = getelementptr i8, ptr %26, i32 5140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93, i32 %24) #8, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !53
  tail call void @arm_heavy_mb() #8
  br label %for.body.i97

for.body.i97:                                     ; preds = %do.body14.i100.for.body.i97_crit_edge, %if.then54
  %i.026.i94 = phi i32 [ 0, %if.then54 ], [ %inc.i98, %do.body14.i100.for.body.i97_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 429496) #8
  %28 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw, align 4
  %add.ptr11.i95 = getelementptr i8, ptr %29, i32 5140
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i95) #8, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  %31 = and i32 %30, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i96 = icmp eq i32 %31, 0
  br i1 %tobool.not.i96, label %for.body.i97.cleanup_crit_edge, label %do.body14.i100

for.body.i97.cleanup_crit_edge:                   ; preds = %for.body.i97
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body14.i100:                                   ; preds = %for.body.i97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !55
  tail call void @arm_heavy_mb() #8
  %inc.i98 = add nuw nsw i32 %i.026.i94, 1
  %exitcond.not.i99 = icmp eq i32 %inc.i98, 10
  br i1 %exitcond.not.i99, label %do.body14.i100.cleanup_crit_edge, label %do.body14.i100.for.body.i97_crit_edge

do.body14.i100.for.body.i97_crit_edge:            ; preds = %do.body14.i100
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i97

do.body14.i100.cleanup_crit_edge:                 ; preds = %do.body14.i100
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %do.body14.i100.cleanup_crit_edge, %for.body.i97.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %do.body14.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end47.cleanup_crit_edge ], [ 0, %for.body.i97.cleanup_crit_edge ], [ 2, %do.body14.i100.cleanup_crit_edge ], [ 2, %do.body14.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atl1e_reset_hw(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  %pci_cfg_cmd_word = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.atl1e_hw, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 4
  %pdev2 = getelementptr inbounds %struct.atl1e_adapter, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev2, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pci_cfg_cmd_word) #8
  %4 = ptrtoint ptr %pci_cfg_cmd_word to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %pci_cfg_cmd_word, align 2
  %call = call i32 @pci_read_config_word(ptr noundef %3, i32 noundef 4, ptr noundef nonnull %pci_cfg_cmd_word) #8
  %5 = ptrtoint ptr %pci_cfg_cmd_word to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %pci_cfg_cmd_word, align 2
  %7 = and i16 %6, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %7)
  %cmp.not = icmp eq i16 %7, 7
  br i1 %cmp.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i16 %6, 7
  %8 = ptrtoint ptr %pci_cfg_cmd_word to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %or, ptr %pci_cfg_cmd_word, align 2
  %call6 = call i32 @pci_write_config_word(ptr noundef %3, i32 noundef 4, i16 noundef zeroext %or) #8
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !61
  call void @arm_heavy_mb() #8
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 5120
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16908288) #8, !srcloc !30
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  call void @arm_heavy_mb() #8
  call void @msleep(i32 noundef 1) #8
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %add.ptr13 = getelementptr i8, ptr %12, i32 5136
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #8, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp16 = icmp eq i32 %13, 0
  br i1 %cmp16, label %do.body.cleanup_crit_edge, label %if.end19

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %do.body
  call void @msleep(i32 noundef 1) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !64
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !65
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 4
  %add.ptr13.1 = getelementptr i8, ptr %15, i32 5136
  %16 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.1) #8, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp16.1 = icmp eq i32 %16, 0
  br i1 %cmp16.1, label %if.end19.cleanup_crit_edge, label %if.end19.1

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19.1:                                       ; preds = %if.end19
  call void @msleep(i32 noundef 1) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !64
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !65
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 4
  %add.ptr13.2 = getelementptr i8, ptr %18, i32 5136
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.2) #8, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp16.2 = icmp eq i32 %19, 0
  br i1 %cmp16.2, label %if.end19.1.cleanup_crit_edge, label %if.end19.2

if.end19.1.cleanup_crit_edge:                     ; preds = %if.end19.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19.2:                                       ; preds = %if.end19.1
  call void @msleep(i32 noundef 1) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !64
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !65
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 4
  %add.ptr13.3 = getelementptr i8, ptr %21, i32 5136
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.3) #8, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp16.3 = icmp eq i32 %22, 0
  br i1 %cmp16.3, label %if.end19.2.cleanup_crit_edge, label %if.end19.3

if.end19.2.cleanup_crit_edge:                     ; preds = %if.end19.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19.3:                                       ; preds = %if.end19.2
  call void @msleep(i32 noundef 1) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !64
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !65
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw, align 4
  %add.ptr13.4 = getelementptr i8, ptr %24, i32 5136
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.4) #8, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp16.4 = icmp eq i32 %25, 0
  br i1 %cmp16.4, label %if.end19.3.cleanup_crit_edge, label %if.end19.4

if.end19.3.cleanup_crit_edge:                     ; preds = %if.end19.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19.4:                                       ; preds = %if.end19.3
  call void @msleep(i32 noundef 1) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !64
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !65
  %26 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw, align 4
  %add.ptr13.5 = getelementptr i8, ptr %27, i32 5136
  %28 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.5) #8, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp16.5 = icmp eq i32 %28, 0
  br i1 %cmp16.5, label %if.end19.4.cleanup_crit_edge, label %if.end19.5

if.end19.4.cleanup_crit_edge:                     ; preds = %if.end19.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19.5:                                       ; preds = %if.end19.4
  call void @msleep(i32 noundef 1) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !64
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !65
  %29 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw, align 4
  %add.ptr13.6 = getelementptr i8, ptr %30, i32 5136
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.6) #8, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp16.6 = icmp eq i32 %31, 0
  br i1 %cmp16.6, label %if.end19.5.cleanup_crit_edge, label %if.end19.6

if.end19.5.cleanup_crit_edge:                     ; preds = %if.end19.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19.6:                                       ; preds = %if.end19.5
  call void @msleep(i32 noundef 1) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !64
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !65
  %32 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw, align 4
  %add.ptr13.7 = getelementptr i8, ptr %33, i32 5136
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.7) #8, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp16.7 = icmp eq i32 %34, 0
  br i1 %cmp16.7, label %if.end19.6.cleanup_crit_edge, label %if.end19.7

if.end19.6.cleanup_crit_edge:                     ; preds = %if.end19.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19.7:                                       ; preds = %if.end19.6
  call void @msleep(i32 noundef 1) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !64
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !65
  %35 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw, align 4
  %add.ptr13.8 = getelementptr i8, ptr %36, i32 5136
  %37 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.8) #8, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp16.8 = icmp eq i32 %37, 0
  br i1 %cmp16.8, label %if.end19.7.cleanup_crit_edge, label %if.end19.8

if.end19.7.cleanup_crit_edge:                     ; preds = %if.end19.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19.8:                                       ; preds = %if.end19.7
  call void @msleep(i32 noundef 1) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !64
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !65
  %38 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw, align 4
  %add.ptr13.9 = getelementptr i8, ptr %39, i32 5136
  %40 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.9) #8, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp16.9 = icmp eq i32 %40, 0
  br i1 %cmp16.9, label %if.end19.8.cleanup_crit_edge, label %if.end19.9

if.end19.8.cleanup_crit_edge:                     ; preds = %if.end19.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19.9:                                       ; preds = %if.end19.8
  call void @__sanitizer_cov_trace_pc() #10
  call void @msleep(i32 noundef 1) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !64
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !65
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %42, ptr noundef nonnull @.str.9) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end19.9, %if.end19.8.cleanup_crit_edge, %if.end19.7.cleanup_crit_edge, %if.end19.6.cleanup_crit_edge, %if.end19.5.cleanup_crit_edge, %if.end19.4.cleanup_crit_edge, %if.end19.3.cleanup_crit_edge, %if.end19.2.cleanup_crit_edge, %if.end19.1.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 9, %if.end19.9 ], [ 0, %if.end19.8.cleanup_crit_edge ], [ 0, %if.end19.7.cleanup_crit_edge ], [ 0, %if.end19.6.cleanup_crit_edge ], [ 0, %if.end19.5.cleanup_crit_edge ], [ 0, %if.end19.4.cleanup_crit_edge ], [ 0, %if.end19.3.cleanup_crit_edge ], [ 0, %if.end19.2.cleanup_crit_edge ], [ 0, %if.end19.1.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pci_cfg_cmd_word) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atl1e_init_hw(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4104
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !66
  %3 = or i32 %2, 8388608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %add.ptr3.i = getelementptr i8, ptr %5, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %3) #8, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 5264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  %add.ptr6 = getelementptr i8, ptr %9, i32 5268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 0) #8, !srcloc !30
  %call = tail call i32 @atl1e_phy_init(ptr noundef %hw)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atl1e_get_speed_and_duplex(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %speed, ptr nocapture noundef writeonly %duplex) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !48
  tail call void @arm_heavy_mb() #8
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 5140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 61696) #8, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !49
  tail call void @arm_heavy_mb() #8
  br label %for.body.i

for.body.i:                                       ; preds = %do.body12.i.for.body.i_crit_edge, %entry
  %i.026.i = phi i32 [ 0, %entry ], [ %inc.i, %do.body12.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 429496) #8
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %add.ptr9.i = getelementptr i8, ptr %4, i32 5140
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #8, !srcloc !27
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !50
  %and11.i = and i32 %6, 142606336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool.not.i, label %if.end, label %do.body12.i

do.body12.i:                                      ; preds = %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  tail call void @arm_heavy_mb() #8
  %inc.i = add nuw nsw i32 %i.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %do.body12.i.cleanup_crit_edge, label %do.body12.i.for.body.i_crit_edge

do.body12.i.for.body.i_crit_edge:                 ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

do.body12.i.cleanup_crit_edge:                    ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body.i
  %conv18.i = trunc i32 %6 to i16
  %7 = and i16 %conv18.i, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool1.not = icmp eq i16 %7, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %and5 = and i16 %conv18.i, -16384
  %8 = zext i16 %and5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.10)
  switch i16 %and5, label %if.end3.cleanup_crit_edge [
    i16 -32768, label %if.end3.sw.epilog_crit_edge
    i16 16384, label %sw.bb6
    i16 0, label %sw.bb7
  ]

if.end3.sw.epilog_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb6:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb6, %if.end3.sw.epilog_crit_edge
  %.sink = phi i16 [ 10, %sw.bb7 ], [ 100, %sw.bb6 ], [ 1000, %if.end3.sw.epilog_crit_edge ]
  %9 = ptrtoint ptr %speed to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %.sink, ptr %speed, align 2
  %10 = and i16 %conv18.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool10.not = icmp eq i16 %10, 0
  %. = select i1 %tobool10.not, i16 1, i16 2
  %11 = ptrtoint ptr %duplex to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %., ptr %duplex, align 2
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.body12.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ 8, %if.end.cleanup_crit_edge ], [ 7, %if.end3.cleanup_crit_edge ], [ 2, %do.body12.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readonly willreturn }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_hw.c", i32 398, i32 8}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_hw.c", i32 402, i32 31}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_hw.c", i32 474, i32 7}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_hw.c", i32 481, i32 7}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_hw.c", i32 485, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @atl1e_phy_init.__UNIQUE_ID_ddebug498, !9, !"__UNIQUE_ID_ddebug498", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_hw.c", i32 488, i32 31}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_hw.c", i32 543, i32 7}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{i64 4994069}
!28 = !{i64 2158006477}
!29 = !{i64 2158006786}
!30 = !{i64 4993651}
!31 = !{i64 4993231}
!32 = !{i64 2158007539}
!33 = !{i64 2158007876}
!34 = !{i64 2158008433}
!35 = !{i64 2158011888}
!36 = !{i64 2158012383}
!37 = !{i64 2158013142}
!38 = !{i64 2158013716}
!39 = !{i64 2158014353}
!40 = !{i64 4993031}
!41 = !{i64 2158009213}
!42 = !{i64 2158009532}
!43 = !{i64 2158010323}
!44 = !{i64 2158010899}
!45 = !{i64 2158011483}
!46 = !{i64 2158015462}
!47 = !{i64 2158015809}
!48 = !{i64 2158016364}
!49 = !{i64 2158016709}
!50 = !{i64 2158017812}
!51 = !{i64 2158017979}
!52 = !{i64 2158018334}
!53 = !{i64 2158018679}
!54 = !{i64 2158019782}
!55 = !{i64 2158019949}
!56 = !{i64 2158022199}
!57 = !{i8 0, i8 2}
!58 = !{i64 2158022721}
!59 = !{i64 2158023508}
!60 = !{i64 2148499054, i64 2148499059, i64 2148499072, i64 2148499116, i64 2148499150, i64 2148499171}
!61 = !{i64 2158026594}
!62 = !{i64 2158026963}
!63 = !{i64 2158027530}
!64 = !{i64 2158027805}
!65 = !{i64 2158027647}
!66 = !{i64 2158020527}
!67 = !{i64 2158020818}
!68 = !{i64 2158028100}
!69 = !{i64 2158028620}
