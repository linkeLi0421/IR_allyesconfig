; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/altera/altera_msgdma.c_pt.bc'
source_filename = "../drivers/net/ethernet/altera/altera_msgdma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.altera_tse_private = type { ptr, ptr, %struct.napi_struct, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tse_buffer = type { %struct.list_head, ptr, i32, i32, i32 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"TSE Rx mSGDMA resetting bit never cleared!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"TSE Tx mSGDMA resetting bit never cleared!\0A\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 45, i32 3 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [47 x i8] c"../drivers/net/ethernet/altera/altera_msgdma.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 67, i32 3 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @msgdma_initialize(ptr nocapture noundef readnone %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @msgdma_uninitialize(ptr nocapture noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @msgdma_start_rxdma(ptr nocapture noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msgdma_reset(ptr nocapture noundef readonly %priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_dma_csr = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %rx_dma_csr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_dma_csr, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 -16580608) #5, !srcloc !14
  %2 = ptrtoint ptr %rx_dma_csr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_dma_csr, align 8
  %4 = ptrtoint ptr %3 to i32
  %add.i = add i32 %4, 4
  %5 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 33554432) #5, !srcloc !14
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry
  %inc49 = phi i32 [ 1, %entry ], [ %inc, %if.end.while.body_crit_edge ]
  %6 = ptrtoint ptr %rx_dma_csr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_dma_csr, align 8
  %call = tail call i32 @tse_bit_is_clear(ptr noundef %7, i32 noundef 0, i32 noundef 64) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %while.end

if.end:                                           ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #5
  %inc = add nuw nsw i32 %inc49, 1
  %exitcond.not = icmp eq i32 %inc, 10001
  br i1 %exitcond.not, label %if.end.do.body_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999, i32 %inc49)
  %cmp3 = icmp ugt i32 %inc49, 9999
  br i1 %cmp3, label %while.end.do.body_crit_edge, label %while.end.if.end8_crit_edge

while.end.if.end8_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %if.end.do.body_crit_edge
  %msg_enable = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 44
  %9 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_enable, align 4
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.body.if.end8_crit_edge, label %if.then6

do.body.if.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %12, ptr noundef nonnull @.str) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %do.body.if.end8_crit_edge, %while.end.if.end8_crit_edge
  %13 = ptrtoint ptr %rx_dma_csr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_dma_csr, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 -16580608) #5, !srcloc !14
  %tx_dma_csr = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 8
  %15 = ptrtoint ptr %tx_dma_csr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tx_dma_csr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 -16580608) #5, !srcloc !14
  %17 = ptrtoint ptr %tx_dma_csr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tx_dma_csr, align 4
  %19 = ptrtoint ptr %18 to i32
  %add.i48 = add i32 %19, 4
  %20 = inttoptr i32 %add.i48 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 33554432) #5, !srcloc !14
  br label %while.body14

while.body14:                                     ; preds = %if.end19.while.body14_crit_edge, %if.end8
  %inc1250 = phi i32 [ 1, %if.end8 ], [ %inc12, %if.end19.while.body14_crit_edge ]
  %21 = ptrtoint ptr %tx_dma_csr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tx_dma_csr, align 4
  %call16 = tail call i32 @tse_bit_is_clear(ptr noundef %22, i32 noundef 0, i32 noundef 64) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %while.end20

if.end19:                                         ; preds = %while.body14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #5
  %inc12 = add nuw nsw i32 %inc1250, 1
  %exitcond51.not = icmp eq i32 %inc12, 10001
  br i1 %exitcond51.not, label %if.end19.do.body23_crit_edge, label %if.end19.while.body14_crit_edge

if.end19.while.body14_crit_edge:                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body14

if.end19.do.body23_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body23

while.end20:                                      ; preds = %while.body14
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999, i32 %inc1250)
  %cmp21 = icmp ugt i32 %inc1250, 9999
  br i1 %cmp21, label %while.end20.do.body23_crit_edge, label %while.end20.if.end32_crit_edge

while.end20.if.end32_crit_edge:                   ; preds = %while.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

while.end20.do.body23_crit_edge:                  ; preds = %while.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body23

do.body23:                                        ; preds = %while.end20.do.body23_crit_edge, %if.end19.do.body23_crit_edge
  %msg_enable24 = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 44
  %24 = ptrtoint ptr %msg_enable24 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %msg_enable24, align 4
  %and25 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.body23.if.end32_crit_edge, label %if.then27

do.body23.if.end32_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then27:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %27, ptr noundef nonnull @.str.1) #8
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %do.body23.if.end32_crit_edge, %while.end20.if.end32_crit_edge
  %28 = ptrtoint ptr %tx_dma_csr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tx_dma_csr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 -16580608) #5, !srcloc !14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tse_bit_is_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msgdma_disable_rxirq(ptr nocapture noundef readonly %priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_dma_csr = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %rx_dma_csr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_dma_csr, align 8
  tail call void @tse_clear_bit(ptr noundef %1, i32 noundef 4, i32 noundef 16) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tse_clear_bit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msgdma_enable_rxirq(ptr nocapture noundef readonly %priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_dma_csr = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %rx_dma_csr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_dma_csr, align 8
  tail call void @tse_set_bit(ptr noundef %1, i32 noundef 4, i32 noundef 16) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tse_set_bit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msgdma_disable_txirq(ptr nocapture noundef readonly %priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_dma_csr = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %tx_dma_csr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_dma_csr, align 4
  tail call void @tse_clear_bit(ptr noundef %1, i32 noundef 4, i32 noundef 16) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msgdma_enable_txirq(ptr nocapture noundef readonly %priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_dma_csr = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %tx_dma_csr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_dma_csr, align 4
  tail call void @tse_set_bit(ptr noundef %1, i32 noundef 4, i32 noundef 16) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msgdma_clear_rxirq(ptr nocapture noundef readonly %priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_dma_csr = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %rx_dma_csr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_dma_csr, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 131072) #5, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msgdma_clear_txirq(ptr nocapture noundef readonly %priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_dma_csr = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %tx_dma_csr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_dma_csr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 131072) #5, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msgdma_tx_buffer(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %buffer) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_addr = getelementptr inbounds %struct.tse_buffer, ptr %buffer, i32 0, i32 2
  %0 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_addr, align 4
  %tx_dma_desc = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 9
  %2 = ptrtoint ptr %tx_dma_desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_dma_desc, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %4 = tail call i32 @llvm.bswap.i32(i32 %1) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %4) #5, !srcloc !14
  %5 = ptrtoint ptr %tx_dma_desc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tx_dma_desc, align 8
  %7 = ptrtoint ptr %6 to i32
  %add.i = add i32 %7, 20
  %8 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #5, !srcloc !14
  %9 = ptrtoint ptr %tx_dma_desc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx_dma_desc, align 8
  %11 = ptrtoint ptr %10 to i32
  %add.i19 = add i32 %11, 4
  %12 = inttoptr i32 %add.i19 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #5, !srcloc !14
  %13 = ptrtoint ptr %tx_dma_desc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tx_dma_desc, align 8
  %15 = ptrtoint ptr %14 to i32
  %add.i20 = add i32 %15, 24
  %16 = inttoptr i32 %add.i20 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 0) #5, !srcloc !14
  %len = getelementptr inbounds %struct.tse_buffer, ptr %buffer, i32 0, i32 3
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  %19 = ptrtoint ptr %tx_dma_desc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tx_dma_desc, align 8
  %21 = ptrtoint ptr %20 to i32
  %add.i21 = add i32 %21, 8
  %22 = inttoptr i32 %add.i21 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %23 = tail call i32 @llvm.bswap.i32(i32 %18) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %23) #5, !srcloc !14
  %24 = ptrtoint ptr %tx_dma_desc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tx_dma_desc, align 8
  %26 = ptrtoint ptr %25 to i32
  %add.i22 = add i32 %26, 12
  %27 = inttoptr i32 %add.i22 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 0) #5, !srcloc !14
  %28 = ptrtoint ptr %tx_dma_desc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tx_dma_desc, align 8
  %30 = ptrtoint ptr %29 to i32
  %add.i23 = add i32 %30, 16
  %31 = inttoptr i32 %add.i23 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 16777472) #5, !srcloc !14
  %32 = ptrtoint ptr %tx_dma_desc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tx_dma_desc, align 8
  %34 = ptrtoint ptr %33 to i32
  %add.i24 = add i32 %34, 28
  %35 = inttoptr i32 %add.i24 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 4391040) #5, !srcloc !14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msgdma_tx_completions(ptr nocapture noundef readonly %priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_dma_csr = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %tx_dma_csr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_dma_csr, align 4
  %2 = ptrtoint ptr %1 to i32
  %add.i = add i32 %2, 8
  %3 = inttoptr i32 %add.i to ptr
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !16
  %5 = and i32 %4, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %tx_prod = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 16
  %7 = ptrtoint ptr %tx_prod to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_prod, align 4
  %tx_cons = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 17
  %9 = ptrtoint ptr %tx_cons to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_cons, align 8
  %11 = add i32 %10, %6
  %12 = xor i32 %11, -1
  %sub2 = add i32 %8, %12
  %13 = tail call i32 @llvm.smax.i32(i32 %sub2, i32 0)
  br label %if.end16

if.else:                                          ; preds = %entry
  %14 = ptrtoint ptr %tx_dma_csr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx_dma_csr, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #5, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !16
  %17 = and i32 %16, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool6.not = icmp eq i32 %17, 0
  %tx_prod13 = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 16
  %18 = ptrtoint ptr %tx_prod13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_prod13, align 4
  %tx_cons14 = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 17
  %20 = ptrtoint ptr %tx_cons14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_cons14, align 8
  br i1 %tobool6.not, label %if.else12, label %if.then7

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %22 = xor i32 %21, -1
  %sub11 = add i32 %19, %22
  br label %if.end16

if.else12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %sub15 = sub i32 %19, %21
  br label %if.end16

if.end16:                                         ; preds = %if.else12, %if.then7, %if.then
  %ready.0 = phi i32 [ %13, %if.then ], [ %sub11, %if.then7 ], [ %sub15, %if.else12 ]
  ret i32 %ready.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msgdma_add_rx_desc(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %rxbuffer) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_dma_buf_sz = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 14
  %0 = ptrtoint ptr %rx_dma_buf_sz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_dma_buf_sz, align 4
  %dma_addr1 = getelementptr inbounds %struct.tse_buffer, ptr %rxbuffer, i32 0, i32 2
  %2 = ptrtoint ptr %dma_addr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_addr1, align 4
  %rx_dma_desc = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 6
  %4 = ptrtoint ptr %rx_dma_desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_dma_desc, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #5, !srcloc !14
  %6 = ptrtoint ptr %rx_dma_desc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_dma_desc, align 4
  %8 = ptrtoint ptr %7 to i32
  %add.i = add i32 %8, 20
  %9 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #5, !srcloc !14
  %10 = ptrtoint ptr %rx_dma_desc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_dma_desc, align 4
  %12 = ptrtoint ptr %11 to i32
  %add.i19 = add i32 %12, 4
  %13 = inttoptr i32 %add.i19 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %14 = tail call i32 @llvm.bswap.i32(i32 %3) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %14) #5, !srcloc !14
  %15 = ptrtoint ptr %rx_dma_desc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx_dma_desc, align 4
  %17 = ptrtoint ptr %16 to i32
  %add.i20 = add i32 %17, 24
  %18 = inttoptr i32 %add.i20 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 0) #5, !srcloc !14
  %19 = ptrtoint ptr %rx_dma_desc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rx_dma_desc, align 4
  %21 = ptrtoint ptr %20 to i32
  %add.i21 = add i32 %21, 8
  %22 = inttoptr i32 %add.i21 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %23 = tail call i32 @llvm.bswap.i32(i32 %1) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %23) #5, !srcloc !14
  %24 = ptrtoint ptr %rx_dma_desc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rx_dma_desc, align 4
  %26 = ptrtoint ptr %25 to i32
  %add.i22 = add i32 %26, 12
  %27 = inttoptr i32 %add.i22 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 0) #5, !srcloc !14
  %28 = ptrtoint ptr %rx_dma_desc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rx_dma_desc, align 4
  %30 = ptrtoint ptr %29 to i32
  %add.i23 = add i32 %30, 16
  %31 = inttoptr i32 %add.i23 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 16777472) #5, !srcloc !14
  %32 = ptrtoint ptr %rx_dma_desc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rx_dma_desc, align 4
  %34 = ptrtoint ptr %33 to i32
  %add.i24 = add i32 %34, 28
  %35 = inttoptr i32 %add.i24 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 15794048) #5, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msgdma_rx_status(ptr nocapture noundef readonly %priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_dma_csr = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %rx_dma_csr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_dma_csr, align 8
  %2 = ptrtoint ptr %1 to i32
  %add.i = add i32 %2, 12
  %3 = inttoptr i32 %add.i to ptr
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !16
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %4)
  %tobool.not = icmp ult i32 %4, 65536
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %rx_dma_resp = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 7
  %5 = ptrtoint ptr %rx_dma_resp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx_dma_resp, align 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !16
  %8 = ptrtoint ptr %rx_dma_resp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_dma_resp, align 8
  %10 = ptrtoint ptr %9 to i32
  %add.i9 = add i32 %10, 4
  %11 = inttoptr i32 %add.i9 to ptr
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !15
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !16
  %shl = shl i32 %13, 16
  %14 = and i32 %7, -65536
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %or = or i32 %shl, %15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rxstatus.0 = phi i32 [ %or, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %rxstatus.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/altera/altera_msgdma.c", i32 45, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/altera/altera_msgdma.c", i32 67, i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i64 2156518700}
!14 = !{i64 6531097}
!15 = !{i64 6531515}
!16 = !{i64 2156517345}
