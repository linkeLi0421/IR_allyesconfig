; ModuleID = '/llk/IR_all_yes/drivers/staging/most/dim2/hal.c_pt.bc'
source_filename = "../drivers/staging/most/dim2/hal.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lld_global_vars_t = type { i8, i8, ptr, %struct.async_tx_dbr, i32, [2 x i32] }
%struct.async_tx_dbr = type { i8, i16, i16, i16, [32 x i16] }
%struct.dim_channel = type { %struct.int_ch_state, i8, i16, i16, i16, i16, i16 }
%struct.int_ch_state = type { i32, i32, i8, i8, i8 }
%struct.dim2_regs = type { i32, [1 x i32], i32, i32, [1 x i32], i32, [2 x i32], i32, i32, [1 x i32], i32, [1 x i32], i32, i32, i32, [16 x i32], i32, [1 x i32], i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [182 x i32], i32, [3 x i32], i32, i32, i32, i32 }
%struct.dim_ch_state_t = type { i8, i16 }

@g = internal global { %struct.lld_global_vars_t, [36 x i8] } zeroinitializer, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DIM is not initialized\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Bad channels\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Bad channel\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Bad buffer size\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Bad control/async buffer size\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Bad isochronous buffer size\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Bad synchronous buffer size\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Channel overflow\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Channel underflow\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 84, i32 33 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 910, i32 9 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 915, i32 48 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 963, i32 9 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 650, i32 48 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 655, i32 9 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 660, i32 9 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 665, i32 9 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 668, i32 41 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private constant [35 x i8] c"../drivers/staging/most/dim2/hal.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 704, i32 42 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @g, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @dim_dbr_space(ptr nocapture noundef readonly %ch) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.dim_channel, ptr %ch, i32 0, i32 1
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %addr, align 4
  %2 = load i8, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %2)
  %cmp.not = icmp eq i8 %1, %2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv.i = zext i8 %1 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !29
  tail call void @arm_heavy_mb() #9
  %3 = shl nuw i32 %conv.i, 24
  %4 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %MADR.i.i.i = getelementptr inbounds %struct.dim2_regs, ptr %4, i32 0, i32 34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MADR.i.i.i, i32 %3) #9, !srcloc !30
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %while.cond.i.i.i.while.cond.i.i.i_crit_edge, %if.end
  %5 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %MCTL.i.i.i = getelementptr inbounds %struct.dim2_regs, ptr %5, i32 0, i32 33
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %MCTL.i.i.i) #9, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !32
  %7 = and i32 %6, 16777216
  %cmp.not.not.i.i.i = icmp eq i32 %7, 0
  br i1 %cmp.not.not.i.i.i, label %while.cond.i.i.i.while.cond.i.i.i_crit_edge, label %dim2_rpc.exit

while.cond.i.i.i.while.cond.i.i.i_crit_edge:      ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i.i

dim2_rpc.exit:                                    ; preds = %while.cond.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  tail call void @arm_heavy_mb() #9
  %8 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %MCTL4.i.i.i = getelementptr inbounds %struct.dim2_regs, ptr %8, i32 0, i32 33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MCTL4.i.i.i, i32 0) #9, !srcloc !30
  %9 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %MDAT0.i.i = getelementptr inbounds %struct.dim2_regs, ptr %9, i32 0, i32 25
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %MDAT0.i.i) #9, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  %11 = trunc i32 %10 to i16
  %12 = lshr i16 %11, 3
  %conv1.i = and i16 %12, 31
  %.promoted = load i16, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 3, i32 1), align 2
  %13 = and i16 %.promoted, 31
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %conv1.i)
  %cmp7.not37 = icmp eq i16 %13, %conv1.i
  br i1 %cmp7.not37, label %dim2_rpc.exit.while.end_crit_edge, label %while.body.preheader

dim2_rpc.exit.while.end_crit_edge:                ; preds = %dim2_rpc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.preheader:                             ; preds = %dim2_rpc.exit
  %.promoted36 = load i16, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 3, i32 3), align 2
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %14 = phi i16 [ %18, %while.body.while.body_crit_edge ], [ %13, %while.body.preheader ]
  %inc3538 = phi i16 [ %inc, %while.body.while.body_crit_edge ], [ %.promoted, %while.body.preheader ]
  %15 = phi i16 [ %add, %while.body.while.body_crit_edge ], [ %.promoted36, %while.body.preheader ]
  %idxprom = zext i16 %14 to i32
  %arrayidx = getelementptr %struct.lld_global_vars_t, ptr @g, i32 0, i32 3, i32 4, i32 %idxprom
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx, align 2
  %add = add i16 %15, %17
  %inc = add i16 %inc3538, 1
  %18 = and i16 %inc, 31
  %cmp7.not = icmp eq i16 %18, %conv1.i
  br i1 %cmp7.not, label %while.cond.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  store i16 %add, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 3, i32 3), align 2
  store i16 %inc, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 3, i32 1), align 2
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %dim2_rpc.exit.while.end_crit_edge
  %.lcssa = phi i16 [ %inc, %while.cond.while.end_crit_edge ], [ %.promoted, %dim2_rpc.exit.while.end_crit_edge ]
  %19 = load i16, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 3, i32 2), align 4
  %sub = sub i16 %19, %.lcssa
  call void @__sanitizer_cov_trace_const_cmp2(i16 30, i16 %sub)
  %cmp20 = icmp ugt i16 %sub, 30
  br i1 %cmp20, label %while.end.cleanup_crit_edge, label %if.end23

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %20 = load i16, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 3, i32 3), align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %while.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %20, %if.end23 ], [ -1, %entry.cleanup_crit_edge ], [ 0, %while.end.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @dim_norm_ctrl_async_buffer_size(i16 noundef zeroext %buf_size) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i16 @llvm.umin.i16(i16 %buf_size, i16 2048)
  ret i16 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @dim_startup(ptr noundef %dim_base_address, i32 noundef %mlb_clock, i32 noundef %fcnt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  store i8 0, ptr @g, align 4
  %tobool.not = icmp eq ptr %dim_base_address, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %mlb_clock)
  %cmp = icmp ugt i32 %mlb_clock, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %fcnt)
  %cmp3 = icmp ugt i32 %fcnt, 6
  %or.cond = or i1 %cmp, %cmp3
  br i1 %or.cond, label %if.end.return_crit_edge, label %if.end5

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %dim_base_address, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  store i32 %fcnt, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 4), align 4
  store i32 0, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 5), align 4
  store i32 0, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 5, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mlb_clock)
  %cmp6 = icmp ugt i32 %mlb_clock, 2
  tail call fastcc void @dim2_cleanup() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !35
  tail call void @arm_heavy_mb() #9
  %shl.i = select i1 %cmp6, i32 32, i32 0
  %conv1.i = shl nuw nsw i32 %mlb_clock, 2
  %shl2.i = and i32 %conv1.i, 1020
  %or.i = or i32 %shl.i, %shl2.i
  %0 = load i32, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 4), align 4
  %shl3.i = shl i32 %0, 15
  %or4.i = or i32 %shl3.i, %or.i
  %or5.i = or i32 %or4.i, 1
  %1 = tail call i32 @llvm.bswap.i32(i32 %or5.i) #9
  %2 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %1) #9, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !36
  tail call void @arm_heavy_mb() #9
  %3 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %HCMR0.i = getelementptr inbounds %struct.dim2_regs, ptr %3, i32 0, i32 18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %HCMR0.i, i32 -1) #9, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  tail call void @arm_heavy_mb() #9
  %4 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %HCMR1.i = getelementptr inbounds %struct.dim2_regs, ptr %4, i32 0, i32 19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %HCMR1.i, i32 -1) #9, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !38
  tail call void @arm_heavy_mb() #9
  %5 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %HCTL.i = getelementptr inbounds %struct.dim2_regs, ptr %5, i32 0, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %HCTL.i, i32 8388608) #9, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !39
  tail call void @arm_heavy_mb() #9
  %6 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %ACTL.i = getelementptr inbounds %struct.dim2_regs, ptr %6, i32 0, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ACTL.i, i32 83886080) #9, !srcloc !30
  store i8 1, ptr @g, align 4
  br label %return

return:                                           ; preds = %if.end5, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i8 [ 0, %if.end5 ], [ 16, %entry.return_crit_edge ], [ 17, %if.end.return_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dim_shutdown() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  store i8 0, ptr @g, align 4
  tail call fastcc void @dim2_cleanup()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dim2_cleanup() unnamed_addr #0 align 64 {
entry:
  %mask.i.i.i = alloca [4 x i32], align 4
  %value.i.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !40
  tail call void @arm_heavy_mb() #9
  %0 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 0) #9, !srcloc !30
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %ctr_addr.03.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %value.i.i) #9
  %1 = call ptr @memset(ptr %value.i.i, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mask.i.i.i) #9
  %2 = call ptr @memset(ptr %mask.i.i.i, i32 255, i32 16)
  call fastcc void @dim2_write_ctr_mask(i32 noundef %ctr_addr.03.i, ptr noundef nonnull %mask.i.i.i, ptr noundef nonnull %value.i.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %value.i.i) #9
  %inc.i = add nuw nsw i32 %ctr_addr.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 144
  br i1 %exitcond.not.i, label %dim2_clear_ctram.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

dim2_clear_ctram.exit:                            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !41
  tail call void @arm_heavy_mb() #9
  %3 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %MIEN = getelementptr inbounds %struct.dim2_regs, ptr %3, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MIEN, i32 0) #9, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !42
  tail call void @arm_heavy_mb() #9
  %4 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %ACSR0 = getelementptr inbounds %struct.dim2_regs, ptr %4, i32 0, i32 38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ACSR0, i32 -1) #9, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !43
  tail call void @arm_heavy_mb() #9
  %5 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %ACSR1 = getelementptr inbounds %struct.dim2_regs, ptr %5, i32 0, i32 39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ACSR1, i32 -1) #9, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !44
  tail call void @arm_heavy_mb() #9
  %6 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %ACMR0 = getelementptr inbounds %struct.dim2_regs, ptr %6, i32 0, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ACMR0, i32 0) #9, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !45
  tail call void @arm_heavy_mb() #9
  %7 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %ACMR1 = getelementptr inbounds %struct.dim2_regs, ptr %7, i32 0, i32 41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ACMR1, i32 0) #9, !srcloc !30
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dim_get_lock_state() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %MLBC1.i = getelementptr inbounds %struct.dim2_regs, ptr %0, i32 0, i32 14
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %MLBC1.i) #9, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !47
  tail call void @arm_heavy_mb() #9
  %and.i = and i32 %1, 16711680
  %2 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %MLBC15.i = getelementptr inbounds %struct.dim2_regs, ptr %2, i32 0, i32 14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MLBC15.i, i32 %and.i) #9, !srcloc !30
  %3 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %MLBC18.i = getelementptr inbounds %struct.dim2_regs, ptr %3, i32 0, i32 14
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %MLBC18.i) #9, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !48
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %4)
  %cmp.i = icmp ult i32 %4, 1073741824
  br i1 %cmp.i, label %land.rhs.i, label %entry.dim2_is_mlb_locked.exit_crit_edge

entry.dim2_is_mlb_locked.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dim2_is_mlb_locked.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp19.i = icmp slt i32 %6, 0
  br label %dim2_is_mlb_locked.exit

dim2_is_mlb_locked.exit:                          ; preds = %land.rhs.i, %entry.dim2_is_mlb_locked.exit_crit_edge
  %7 = phi i1 [ false, %entry.dim2_is_mlb_locked.exit_crit_edge ], [ %cmp19.i, %land.rhs.i ]
  ret i1 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dim_service_mlb_int_irq() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !50
  tail call void @arm_heavy_mb() #9
  %0 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %MS0 = getelementptr inbounds %struct.dim2_regs, ptr %0, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MS0, i32 0) #9, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  tail call void @arm_heavy_mb() #9
  %1 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %MS1 = getelementptr inbounds %struct.dim2_regs, ptr %1, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MS1, i32 0) #9, !srcloc !30
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @dim_norm_isoc_buffer_size(i16 noundef zeroext %buf_size, i16 noundef zeroext %packet_length) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %packet_length to i32
  %0 = add nsw i32 %conv, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %0)
  %1 = icmp ult i32 %0, 512
  br i1 %1, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = tail call i16 @llvm.umin.i16(i16 %buf_size, i16 8192) #9
  %3 = udiv i16 %2, %packet_length
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %3)
  %cmp6.i = icmp ult i16 %3, 2
  %mul.i = mul i16 %3, %packet_length
  %retval.0.i = select i1 %cmp6.i, i16 0, i16 %mul.i
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i16 [ %retval.0.i, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @dim_norm_sync_buffer_size(i16 noundef zeroext %buf_size, i16 noundef zeroext %bytes_per_frame) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %bytes_per_frame to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bytes_per_frame)
  %cmp.i = icmp eq i16 %bytes_per_frame, 0
  br i1 %cmp.i, label %entry.return_crit_edge, label %check_bytes_per_frame.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

check_bytes_per_frame.exit:                       ; preds = %entry
  %0 = load i32, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 4), align 4
  %conv.i = add i32 %0, 2
  %conv1.i = and i32 %conv.i, 65535
  %shr.i = lshr i32 4096, %conv1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %conv)
  %cmp5.i.not = icmp ult i32 %shr.i, %conv
  br i1 %cmp5.i.not, label %check_bytes_per_frame.exit.return_crit_edge, label %if.end

check_bytes_per_frame.exit.return_crit_edge:      ; preds = %check_bytes_per_frame.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %check_bytes_per_frame.exit
  %1 = load i32, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 4), align 4
  %shl.i = shl i32 %conv, %1
  %2 = tail call i16 @llvm.umin.i16(i16 %buf_size, i16 8192) #9
  %conv3.i = zext i16 %2 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %conv3.i)
  %cmp6.i = icmp ugt i32 %shl.i, %conv3.i
  br i1 %cmp6.i, label %if.end.return_crit_edge, label %if.end9.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end9.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %3 = urem i32 %conv3.i, %shl.i
  %4 = trunc i32 %3 to i16
  %conv11.i = sub nsw i16 %2, %4
  br label %return

return:                                           ; preds = %if.end9.i, %if.end.return_crit_edge, %check_bytes_per_frame.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i16 [ 0, %check_bytes_per_frame.exit.return_crit_edge ], [ %conv11.i, %if.end9.i ], [ 0, %if.end.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @dim_init_control(ptr noundef %ch, i8 noundef zeroext %is_tx, i16 noundef zeroext %ch_address, i16 noundef zeroext %max_buffer_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc zeroext i8 @init_ctrl_async(ptr noundef %ch, i8 noundef zeroext 1, i8 noundef zeroext %is_tx, i16 noundef zeroext %ch_address, i16 noundef zeroext %max_buffer_size)
  ret i8 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @init_ctrl_async(ptr noundef %ch, i8 noundef zeroext %type, i8 noundef zeroext %is_tx, i16 noundef zeroext %ch_address, i16 noundef zeroext %hw_buffer_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @g, align 4, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  %tobool1.not = icmp eq ptr %ch, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %conv = zext i16 %ch_address to i32
  %rem.i = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp1.i = icmp eq i32 %rem.i, 0
  %1 = add nsw i32 %conv, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %1)
  %2 = icmp ult i32 %1, 127
  %3 = and i1 %2, %cmp1.i
  br i1 %3, label %if.end3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end3:                                          ; preds = %if.end
  %dbr_size = getelementptr inbounds %struct.dim_channel, ptr %ch, i32 0, i32 3
  %4 = ptrtoint ptr %dbr_size to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dbr_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool4.not = icmp eq i16 %5, 0
  br i1 %tobool4.not, label %if.end9, label %if.end3.if.end.i_crit_edge

if.end3.if.end.i_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end9:                                          ; preds = %if.end3
  %sub = add i16 %hw_buffer_size, 255
  %div33 = and i16 %sub, -256
  %6 = ptrtoint ptr %dbr_size to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %div33, ptr %dbr_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %div33)
  %cmp.i = icmp eq i16 %div33, 0
  br i1 %cmp.i, label %if.end9.alloc_dbr.exit.thread_crit_edge, label %if.end9.if.end.i_crit_edge

if.end9.if.end.i_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end9.alloc_dbr.exit.thread_crit_edge:          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %alloc_dbr.exit.thread

if.end.i:                                         ; preds = %if.end9.if.end.i_crit_edge, %if.end3.if.end.i_crit_edge
  %7 = phi i16 [ %div33, %if.end9.if.end.i_crit_edge ], [ %5, %if.end3.if.end.i_crit_edge ]
  %conv.i37 = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %7)
  %cmp1.not.i.i = icmp ugt i16 %7, 256
  br i1 %cmp1.not.i.i, label %for.inc.i.i, label %if.end.i.dbr_get_mask_size.exit.i_crit_edge

if.end.i.dbr_get_mask_size.exit.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dbr_get_mask_size.exit.i

for.inc.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %7)
  %cmp1.not.1.i.i = icmp ugt i16 %7, 512
  br i1 %cmp1.not.1.i.i, label %for.inc.1.i.i, label %for.inc.i.i.dbr_get_mask_size.exit.i_crit_edge

for.inc.i.i.dbr_get_mask_size.exit.i_crit_edge:   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dbr_get_mask_size.exit.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %7)
  %cmp1.not.2.i.i = icmp ugt i16 %7, 1024
  br i1 %cmp1.not.2.i.i, label %for.inc.2.i.i, label %for.inc.1.i.i.dbr_get_mask_size.exit.i_crit_edge

for.inc.1.i.i.dbr_get_mask_size.exit.i_crit_edge: ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dbr_get_mask_size.exit.i

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %7)
  %cmp1.not.3.i.i = icmp ugt i16 %7, 2048
  br i1 %cmp1.not.3.i.i, label %for.inc.3.i.i, label %for.inc.2.i.i.dbr_get_mask_size.exit.i_crit_edge

for.inc.2.i.i.dbr_get_mask_size.exit.i_crit_edge: ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dbr_get_mask_size.exit.i

for.inc.3.i.i:                                    ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %7)
  %cmp1.not.4.i.i = icmp ugt i16 %7, 4096
  br i1 %cmp1.not.4.i.i, label %for.inc.4.i.i, label %for.inc.3.i.i.dbr_get_mask_size.exit.i_crit_edge

for.inc.3.i.i.dbr_get_mask_size.exit.i_crit_edge: ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dbr_get_mask_size.exit.i

for.inc.4.i.i:                                    ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %7)
  %cmp1.not.5.i.i = icmp ugt i16 %7, 8192
  br i1 %cmp1.not.5.i.i, label %for.inc.4.i.i.alloc_dbr.exit.thread_crit_edge, label %for.inc.4.i.i.dbr_get_mask_size.exit.i_crit_edge

for.inc.4.i.i.dbr_get_mask_size.exit.i_crit_edge: ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dbr_get_mask_size.exit.i

for.inc.4.i.i.alloc_dbr.exit.thread_crit_edge:    ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alloc_dbr.exit.thread

dbr_get_mask_size.exit.i:                         ; preds = %for.inc.4.i.i.dbr_get_mask_size.exit.i_crit_edge, %for.inc.3.i.i.dbr_get_mask_size.exit.i_crit_edge, %for.inc.2.i.i.dbr_get_mask_size.exit.i_crit_edge, %for.inc.1.i.i.dbr_get_mask_size.exit.i_crit_edge, %for.inc.i.i.dbr_get_mask_size.exit.i_crit_edge, %if.end.i.dbr_get_mask_size.exit.i_crit_edge
  %i.08.lcssa.i.i = phi i32 [ 0, %if.end.i.dbr_get_mask_size.exit.i_crit_edge ], [ 1, %for.inc.i.i.dbr_get_mask_size.exit.i_crit_edge ], [ 2, %for.inc.1.i.i.dbr_get_mask_size.exit.i_crit_edge ], [ 3, %for.inc.2.i.i.dbr_get_mask_size.exit.i_crit_edge ], [ 4, %for.inc.3.i.i.dbr_get_mask_size.exit.i_crit_edge ], [ 5, %for.inc.4.i.i.dbr_get_mask_size.exit.i_crit_edge ]
  %shl3.i.i = shl nuw nsw i32 1, %i.08.lcssa.i.i
  %sub.i = add nuw nsw i32 %conv.i37, 255
  %div35.i = lshr i32 %sub.i, 8
  %shl.i = shl nsw i32 -1, %div35.i
  %neg.i = xor i32 %shl.i, -1
  %sub15.i = add nsw i32 %shl3.i.i, -1
  %8 = load i32, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 5, i32 0), align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.end13.i.do.body.i_crit_edge, %dbr_get_mask_size.exit.i
  %block_idx.1.i = phi i32 [ 0, %dbr_get_mask_size.exit.i ], [ %add14.i, %if.end13.i.do.body.i_crit_edge ]
  %mask.0.i = phi i32 [ %neg.i, %dbr_get_mask_size.exit.i ], [ %shl17.i, %if.end13.i.do.body.i_crit_edge ]
  %and.i = and i32 %mask.0.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp9.i = icmp eq i32 %and.i, 0
  br i1 %cmp9.i, label %do.body.i.alloc_dbr.exit_crit_edge, label %if.end13.i

do.body.i.alloc_dbr.exit_crit_edge:               ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alloc_dbr.exit

if.end13.i:                                       ; preds = %do.body.i
  %add14.i = add i32 %block_idx.1.i, %shl3.i.i
  %shl16.i = shl i32 %mask.0.i, %sub15.i
  %shl17.i = shl i32 %shl16.i, 1
  %cmp18.not.i = icmp eq i32 %shl17.i, 0
  br i1 %cmp18.not.i, label %for.inc.i, label %if.end13.i.do.body.i_crit_edge

if.end13.i.do.body.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

for.inc.i:                                        ; preds = %if.end13.i
  %9 = load i32, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 5, i32 1), align 4
  br label %do.body.1.i

do.body.1.i:                                      ; preds = %if.end13.1.i.do.body.1.i_crit_edge, %for.inc.i
  %block_idx.1.1.i = phi i32 [ %add14.i, %for.inc.i ], [ %add14.1.i, %if.end13.1.i.do.body.1.i_crit_edge ]
  %mask.0.1.i = phi i32 [ %neg.i, %for.inc.i ], [ %shl17.1.i, %if.end13.1.i.do.body.1.i_crit_edge ]
  %and.1.i = and i32 %mask.0.1.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %cmp9.1.i = icmp eq i32 %and.1.i, 0
  br i1 %cmp9.1.i, label %do.body.1.i.alloc_dbr.exit_crit_edge, label %if.end13.1.i

do.body.1.i.alloc_dbr.exit_crit_edge:             ; preds = %do.body.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alloc_dbr.exit

if.end13.1.i:                                     ; preds = %do.body.1.i
  %add14.1.i = add i32 %block_idx.1.1.i, %shl3.i.i
  %shl16.1.i = shl i32 %mask.0.1.i, %sub15.i
  %shl17.1.i = shl i32 %shl16.1.i, 1
  %cmp18.not.1.i = icmp eq i32 %shl17.1.i, 0
  br i1 %cmp18.not.1.i, label %if.end13.1.i.alloc_dbr.exit.thread_crit_edge, label %if.end13.1.i.do.body.1.i_crit_edge

if.end13.1.i.do.body.1.i_crit_edge:               ; preds = %if.end13.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.1.i

if.end13.1.i.alloc_dbr.exit.thread_crit_edge:     ; preds = %if.end13.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alloc_dbr.exit.thread

alloc_dbr.exit.thread:                            ; preds = %if.end13.1.i.alloc_dbr.exit.thread_crit_edge, %for.inc.4.i.i.alloc_dbr.exit.thread_crit_edge, %if.end9.alloc_dbr.exit.thread_crit_edge
  %dbr_addr40 = getelementptr inbounds %struct.dim_channel, ptr %ch, i32 0, i32 2
  %10 = ptrtoint ptr %dbr_addr40 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 16384, ptr %dbr_addr40, align 2
  br label %return

alloc_dbr.exit:                                   ; preds = %do.body.1.i.alloc_dbr.exit_crit_edge, %do.body.i.alloc_dbr.exit_crit_edge
  %arrayidx.lcssa.i = phi ptr [ getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 5, i32 1), %do.body.1.i.alloc_dbr.exit_crit_edge ], [ getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 5, i32 0), %do.body.i.alloc_dbr.exit_crit_edge ]
  %.lcssa.i = phi i32 [ %9, %do.body.1.i.alloc_dbr.exit_crit_edge ], [ %8, %do.body.i.alloc_dbr.exit_crit_edge ]
  %block_idx.1.lcssa.i = phi i32 [ %block_idx.1.1.i, %do.body.1.i.alloc_dbr.exit_crit_edge ], [ %block_idx.1.i, %do.body.i.alloc_dbr.exit_crit_edge ]
  %mask.0.lcssa.i = phi i32 [ %mask.0.1.i, %do.body.1.i.alloc_dbr.exit_crit_edge ], [ %mask.0.i, %do.body.i.alloc_dbr.exit_crit_edge ]
  %or.i = or i32 %mask.0.lcssa.i, %.lcssa.i
  %11 = ptrtoint ptr %arrayidx.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or.i, ptr %arrayidx.lcssa.i, align 4
  %block_idx.1.lcssa.i.tr = trunc i32 %block_idx.1.lcssa.i to i16
  %conv12 = shl i16 %block_idx.1.lcssa.i.tr, 8
  %dbr_addr = getelementptr inbounds %struct.dim_channel, ptr %ch, i32 0, i32 2
  %12 = ptrtoint ptr %dbr_addr to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv12, ptr %dbr_addr, align 2
  %13 = and i32 %block_idx.1.lcssa.i, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not = icmp eq i32 %13, 0
  br i1 %cmp.not, label %if.end17, label %alloc_dbr.exit.return_crit_edge

alloc_dbr.exit.return_crit_edge:                  ; preds = %alloc_dbr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end17:                                         ; preds = %alloc_dbr.exit
  call void @__sanitizer_cov_trace_pc() #11
  %div1934 = lshr i16 %ch_address, 1
  %conv20 = trunc i16 %div1934 to i8
  %14 = ptrtoint ptr %ch to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 0, ptr %ch, align 4
  %service_counter.i.i = getelementptr inbounds %struct.int_ch_state, ptr %ch, i32 0, i32 1
  %15 = ptrtoint ptr %service_counter.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 0, ptr %service_counter.i.i, align 4
  %idx1.i.i = getelementptr inbounds %struct.int_ch_state, ptr %ch, i32 0, i32 2
  %16 = ptrtoint ptr %idx1.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %idx1.i.i, align 4
  %idx2.i.i = getelementptr inbounds %struct.int_ch_state, ptr %ch, i32 0, i32 3
  %17 = ptrtoint ptr %idx2.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %idx2.i.i, align 1
  %level.i.i = getelementptr inbounds %struct.int_ch_state, ptr %ch, i32 0, i32 4
  %18 = ptrtoint ptr %level.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %level.i.i, align 2
  %addr.i = getelementptr inbounds %struct.dim_channel, ptr %ch, i32 0, i32 1
  %19 = ptrtoint ptr %addr.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv20, ptr %addr.i, align 4
  %packet_length.i = getelementptr inbounds %struct.dim_channel, ptr %ch, i32 0, i32 4
  %20 = ptrtoint ptr %packet_length.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %packet_length.i, align 2
  %bytes_per_frame.i = getelementptr inbounds %struct.dim_channel, ptr %ch, i32 0, i32 5
  %21 = ptrtoint ptr %bytes_per_frame.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %bytes_per_frame.i, align 4
  %done_sw_buffers_number.i = getelementptr inbounds %struct.dim_channel, ptr %ch, i32 0, i32 6
  %22 = ptrtoint ptr %done_sw_buffers_number.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %done_sw_buffers_number.i, align 2
  tail call fastcc void @dim2_configure_channel(i8 noundef zeroext %conv20, i8 noundef zeroext %type, i8 noundef zeroext %is_tx, i16 noundef zeroext %conv12, i16 noundef zeroext %7, i16 noundef zeroext 0)
  br label %return

return:                                           ; preds = %if.end17, %alloc_dbr.exit.return_crit_edge, %alloc_dbr.exit.thread, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i8 [ 0, %if.end17 ], [ 32, %entry.return_crit_edge ], [ 18, %if.end.return_crit_edge ], [ 19, %alloc_dbr.exit.return_crit_edge ], [ 19, %alloc_dbr.exit.thread ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @dim_init_async(ptr noundef %ch, i8 noundef zeroext %is_tx, i16 noundef zeroext %ch_address, i16 noundef zeroext %max_buffer_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc zeroext i8 @init_ctrl_async(ptr noundef %ch, i8 noundef zeroext 2, i8 noundef zeroext %is_tx, i16 noundef zeroext %ch_address, i16 noundef zeroext %max_buffer_size)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %is_tx)
  %tobool.not = icmp eq i8 %is_tx, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %0 = load i8, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool1.not = icmp eq i8 %0, 0
  br i1 %tobool1.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %addr = getelementptr inbounds %struct.dim_channel, ptr %ch, i32 0, i32 1
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %addr, align 4
  store i8 %2, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 3), align 4
  %dbr_size = getelementptr inbounds %struct.dim_channel, ptr %ch, i32 0, i32 3
  %3 = ptrtoint ptr %dbr_size to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %dbr_size, align 4
  store i16 %4, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 3, i32 3), align 2
  %conv.i.i = zext i8 %2 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !29
  tail call void @arm_heavy_mb() #9
  %5 = shl nuw i32 %conv.i.i, 24
  %6 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %MADR.i.i.i.i = getelementptr inbounds %struct.dim2_regs, ptr %6, i32 0, i32 34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MADR.i.i.i.i, i32 %5) #9, !srcloc !30
  br label %while.cond.i.i.i.i

while.cond.i.i.i.i:                               ; preds = %while.cond.i.i.i.i.while.cond.i.i.i.i_crit_edge, %if.then
  %7 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %MCTL.i.i.i.i = getelementptr inbounds %struct.dim2_regs, ptr %7, i32 0, i32 33
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %MCTL.i.i.i.i) #9, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !32
  %9 = and i32 %8, 16777216
  %cmp.not.not.i.i.i.i = icmp eq i32 %9, 0
  br i1 %cmp.not.not.i.i.i.i, label %while.cond.i.i.i.i.while.cond.i.i.i.i_crit_edge, label %dbrcnt_init.exit

while.cond.i.i.i.i.while.cond.i.i.i.i_crit_edge:  ; preds = %while.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i.i.i

dbrcnt_init.exit:                                 ; preds = %while.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  tail call void @arm_heavy_mb() #9
  %10 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %MCTL4.i.i.i.i = getelementptr inbounds %struct.dim2_regs, ptr %10, i32 0, i32 33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MCTL4.i.i.i.i, i32 0) #9, !srcloc !30
  %11 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %MDAT0.i.i.i = getelementptr inbounds %struct.dim2_regs, ptr %11, i32 0, i32 25
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %MDAT0.i.i.i) #9, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  %13 = trunc i32 %12 to i16
  %14 = lshr i16 %13, 3
  %conv1.i.i = and i16 %14, 31
  store i16 %conv1.i.i, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 3, i32 1), align 2
  store i16 %conv1.i.i, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 3, i32 2), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !53
  tail call void @arm_heavy_mb() #9
  %15 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %MIEN = getelementptr inbounds %struct.dim2_regs, ptr %15, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MIEN, i32 4096) #9, !srcloc !30
  br label %if.end

if.end:                                           ; preds = %dbrcnt_init.exit, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i8 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @dim_init_isoc(ptr noundef %ch, i8 noundef zeroext %is_tx, i16 noundef zeroext %ch_address, i16 noundef zeroext %packet_length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @g, align 4, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  %tobool1.not = icmp eq ptr %ch, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %conv = zext i16 %ch_address to i32
  %rem.i = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp1.i = icmp eq i32 %rem.i, 0
  %1 = add nsw i32 %conv, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %1)
  %2 = icmp ult i32 %1, 127
  %3 = and i1 %2, %cmp1.i
  br i1 %3, label %if.end3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end3:                                          ; preds = %if.end
  %conv4 = zext i16 %packet_length to i32
  %4 = add nsw i32 %conv4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %4)
  %5 = icmp ult i32 %4, 512
  br i1 %5, label %if.end7, label %if.end3.return_crit_edge

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end7:                                          ; preds = %if.end3
  %dbr_size = getelementptr inbounds %struct.dim_channel, ptr %ch, i32 0, i32 3
  %6 = ptrtoint ptr %dbr_size to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %dbr_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool8.not = icmp eq i16 %7, 0
  br i1 %tobool8.not, label %if.end13, label %if.end7.if.end.i_crit_edge

if.end7.if.end.i_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end13:                                         ; preds = %if.end7
  %mul = mul i16 %packet_length, 3
  %8 = ptrtoint ptr %dbr_size to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %mul, ptr %dbr_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %mul)
  %cmp.i = icmp eq i16 %mul, 0
  br i1 %cmp.i, label %if.end13.alloc_dbr.exit.thread_crit_edge, label %if.end13.if.end.i_crit_edge

if.end13.if.end.i_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end13.alloc_dbr.exit.thread_crit_edge:         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %alloc_dbr.exit.thread

if.end.i:                                         ; preds = %if.end13.if.end.i_crit_edge, %if.end7.if.end.i_crit_edge
  %9 = phi i16 [ %mul, %if.end13.if.end.i_crit_edge ], [ %7, %if.end7.if.end.i_crit_edge ]
  %conv.i42 = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %9)
  %cmp1.not.i.i = icmp ugt i16 %9, 256
  br i1 %cmp1.not.i.i, label %for.inc.i.i, label %if.end.i.dbr_get_mask_size.exit.i_crit_edge

if.end.i.dbr_get_mask_size.exit.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dbr_get_mask_size.exit.i

for.inc.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %9)
  %cmp1.not.1.i.i = icmp ugt i16 %9, 512
  br i1 %cmp1.not.1.i.i, label %for.inc.1.i.i, label %for.inc.i.i.dbr_get_mask_size.exit.i_crit_edge

for.inc.i.i.dbr_get_mask_size.exit.i_crit_edge:   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dbr_get_mask_size.exit.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %9)
  %cmp1.not.2.i.i = icmp ugt i16 %9, 1024
  br i1 %cmp1.not.2.i.i, label %for.inc.2.i.i, label %for.inc.1.i.i.dbr_get_mask_size.exit.i_crit_edge

for.inc.1.i.i.dbr_get_mask_size.exit.i_crit_edge: ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dbr_get_mask_size.exit.i

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %9)
  %cmp1.not.3.i.i = icmp ugt i16 %9, 2048
  br i1 %cmp1.not.3.i.i, label %for.inc.3.i.i, label %for.inc.2.i.i.dbr_get_mask_size.exit.i_crit_edge

for.inc.2.i.i.dbr_get_mask_size.exit.i_crit_edge: ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dbr_get_mask_size.exit.i

for.inc.3.i.i:                                    ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %9)
  %cmp1.not.4.i.i = icmp ugt i16 %9, 4096
  br i1 %cmp1.not.4.i.i, label %for.inc.4.i.i, label %for.inc.3.i.i.dbr_get_mask_size.exit.i_crit_edge

for.inc.3.i.i.dbr_get_mask_size.exit.i_crit_edge: ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dbr_get_mask_size.exit.i

for.inc.4.i.i:                                    ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %9)
  %cmp1.not.5.i.i = icmp ugt i16 %9, 8192
  br i1 %cmp1.not.5.i.i, label %for.inc.4.i.i.alloc_dbr.exit.thread_crit_edge, label %for.inc.4.i.i.dbr_get_mask_size.exit.i_crit_edge

for.inc.4.i.i.dbr_get_mask_size.exit.i_crit_edge: ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dbr_get_mask_size.exit.i

for.inc.4.i.i.alloc_dbr.exit.thread_crit_edge:    ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alloc_dbr.exit.thread

dbr_get_mask_size.exit.i:                         ; preds = %for.inc.4.i.i.dbr_get_mask_size.exit.i_crit_edge, %for.inc.3.i.i.dbr_get_mask_size.exit.i_crit_edge, %for.inc.2.i.i.dbr_get_mask_size.exit.i_crit_edge, %for.inc.1.i.i.dbr_get_mask_size.exit.i_crit_edge, %for.inc.i.i.dbr_get_mask_size.exit.i_crit_edge, %if.end.i.dbr_get_mask_size.exit.i_crit_edge
  %i.08.lcssa.i.i = phi i32 [ 0, %if.end.i.dbr_get_mask_size.exit.i_crit_edge ], [ 1, %for.inc.i.i.dbr_get_mask_size.exit.i_crit_edge ], [ 2, %for.inc.1.i.i.dbr_get_mask_size.exit.i_crit_edge ], [ 3, %for.inc.2.i.i.dbr_get_mask_size.exit.i_crit_edge ], [ 4, %for.inc.3.i.i.dbr_get_mask_size.exit.i_crit_edge ], [ 5, %for.inc.4.i.i.dbr_get_mask_size.exit.i_crit_edge ]
  %shl3.i.i = shl nuw nsw i32 1, %i.08.lcssa.i.i
  %sub.i = add nuw nsw i32 %conv.i42, 255
  %div35.i = lshr i32 %sub.i, 8
  %shl.i = shl nsw i32 -1, %div35.i
  %neg.i = xor i32 %shl.i, -1
  %sub15.i = add nsw i32 %shl3.i.i, -1
  %10 = load i32, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 5, i32 0), align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.end13.i.do.body.i_crit_edge, %dbr_get_mask_size.exit.i
  %block_idx.1.i = phi i32 [ 0, %dbr_get_mask_size.exit.i ], [ %add14.i, %if.end13.i.do.body.i_crit_edge ]
  %mask.0.i = phi i32 [ %neg.i, %dbr_get_mask_size.exit.i ], [ %shl17.i, %if.end13.i.do.body.i_crit_edge ]
  %and.i = and i32 %mask.0.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp9.i = icmp eq i32 %and.i, 0
  br i1 %cmp9.i, label %do.body.i.alloc_dbr.exit_crit_edge, label %if.end13.i

do.body.i.alloc_dbr.exit_crit_edge:               ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alloc_dbr.exit

if.end13.i:                                       ; preds = %do.body.i
  %add14.i = add i32 %block_idx.1.i, %shl3.i.i
  %shl16.i = shl i32 %mask.0.i, %sub15.i
  %shl17.i = shl i32 %shl16.i, 1
  %cmp18.not.i = icmp eq i32 %shl17.i, 0
  br i1 %cmp18.not.i, label %for.inc.i, label %if.end13.i.do.body.i_crit_edge

if.end13.i.do.body.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

for.inc.i:                                        ; preds = %if.end13.i
  %11 = load i32, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 5, i32 1), align 4
  br label %do.body.1.i

do.body.1.i:                                      ; preds = %if.end13.1.i.do.body.1.i_crit_edge, %for.inc.i
  %block_idx.1.1.i = phi i32 [ %add14.i, %for.inc.i ], [ %add14.1.i, %if.end13.1.i.do.body.1.i_crit_edge ]
  %mask.0.1.i = phi i32 [ %neg.i, %for.inc.i ], [ %shl17.1.i, %if.end13.1.i.do.body.1.i_crit_edge ]
  %and.1.i = and i32 %mask.0.1.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %cmp9.1.i = icmp eq i32 %and.1.i, 0
  br i1 %cmp9.1.i, label %do.body.1.i.alloc_dbr.exit_crit_edge, label %if.end13.1.i

do.body.1.i.alloc_dbr.exit_crit_edge:             ; preds = %do.body.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alloc_dbr.exit

if.end13.1.i:                                     ; preds = %do.body.1.i
  %add14.1.i = add i32 %block_idx.1.1.i, %shl3.i.i
  %shl16.1.i = shl i32 %mask.0.1.i, %sub15.i
  %shl17.1.i = shl i32 %shl16.1.i, 1
  %cmp18.not.1.i = icmp eq i32 %shl17.1.i, 0
  br i1 %cmp18.not.1.i, label %if.end13.1.i.alloc_dbr.exit.thread_crit_edge, label %if.end13.1.i.do.body.1.i_crit_edge

if.end13.1.i.do.body.1.i_crit_edge:               ; preds = %if.end13.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.1.i

if.end13.1.i.alloc_dbr.exit.thread_crit_edge:     ; preds = %if.end13.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alloc_dbr.exit.thread

alloc_dbr.exit.thread:                            ; preds = %if.end13.1.i.alloc_dbr.exit.thread_crit_edge, %for.inc.4.i.i.alloc_dbr.exit.thread_crit_edge, %if.end13.alloc_dbr.exit.thread_crit_edge
  %dbr_addr45 = getelementptr inbounds %struct.dim_channel, ptr %ch, i32 0, i32 2
  %12 = ptrtoint ptr %dbr_addr45 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 16384, ptr %dbr_addr45, align 2
  br label %return

alloc_dbr.exit:                                   ; preds = %do.body.1.i.alloc_dbr.exit_crit_edge, %do.body.i.alloc_dbr.exit_crit_edge
  %arrayidx.lcssa.i = phi ptr [ getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 5, i32 1), %do.body.1.i.alloc_dbr.exit_crit_edge ], [ getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 5, i32 0), %do.body.i.alloc_dbr.exit_crit_edge ]
  %.lcssa.i = phi i32 [ %11, %do.body.1.i.alloc_dbr.exit_crit_edge ], [ %10, %do.body.i.alloc_dbr.exit_crit_edge ]
  %block_idx.1.lcssa.i = phi i32 [ %block_idx.1.1.i, %do.body.1.i.alloc_dbr.exit_crit_edge ], [ %block_idx.1.i, %do.body.i.alloc_dbr.exit_crit_edge ]
  %mask.0.lcssa.i = phi i32 [ %mask.0.1.i, %do.body.1.i.alloc_dbr.exit_crit_edge ], [ %mask.0.i, %do.body.i.alloc_dbr.exit_crit_edge ]
  %or.i = or i32 %mask.0.lcssa.i, %.lcssa.i
  %13 = ptrtoint ptr %arrayidx.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or.i, ptr %arrayidx.lcssa.i, align 4
  %block_idx.1.lcssa.i.tr = trunc i32 %block_idx.1.lcssa.i to i16
  %conv16 = shl i16 %block_idx.1.lcssa.i.tr, 8
  %dbr_addr = getelementptr inbounds %struct.dim_channel, ptr %ch, i32 0, i32 2
  %14 = ptrtoint ptr %dbr_addr to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv16, ptr %dbr_addr, align 2
  %15 = and i32 %block_idx.1.lcssa.i, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not = icmp eq i32 %15, 0
  br i1 %cmp.not, label %if.end21, label %alloc_dbr.exit.return_crit_edge

alloc_dbr.exit.return_crit_edge:                  ; preds = %alloc_dbr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end21:                                         ; preds = %alloc_dbr.exit
  call void @__sanitizer_cov_trace_pc() #11
  %div39 = lshr i16 %ch_address, 1
  %conv23 = trunc i16 %div39 to i8
  %16 = ptrtoint ptr %ch to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 0, ptr %ch, align 4
  %service_counter.i.i = getelementptr inbounds %struct.int_ch_state, ptr %ch, i32 0, i32 1
  %17 = ptrtoint ptr %service_counter.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 0, ptr %service_counter.i.i, align 4
  %idx1.i.i = getelementptr inbounds %struct.int_ch_state, ptr %ch, i32 0, i32 2
  %18 = ptrtoint ptr %idx1.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %idx1.i.i, align 4
  %idx2.i.i = getelementptr inbounds %struct.int_ch_state, ptr %ch, i32 0, i32 3
  %19 = ptrtoint ptr %idx2.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %idx2.i.i, align 1
  %level.i.i = getelementptr inbounds %struct.int_ch_state, ptr %ch, i32 0, i32 4
  %20 = ptrtoint ptr %level.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %level.i.i, align 2
  %addr.i = getelementptr inbounds %struct.dim_channel, ptr %ch, i32 0, i32 1
  %21 = ptrtoint ptr %addr.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv23, ptr %addr.i, align 4
  %packet_length1.i = getelementptr inbounds %struct.dim_channel, ptr %ch, i32 0, i32 4
  %22 = ptrtoint ptr %packet_length1.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %packet_length, ptr %packet_length1.i, align 2
  %bytes_per_frame.i = getelementptr inbounds %struct.dim_channel, ptr %ch, i32 0, i32 5
  %23 = ptrtoint ptr %bytes_per_frame.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %bytes_per_frame.i, align 4
  %done_sw_buffers_number.i = getelementptr inbounds %struct.dim_channel, ptr %ch, i32 0, i32 6
  %24 = ptrtoint ptr %done_sw_buffers_number.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %done_sw_buffers_number.i, align 2
  tail call fastcc void @dim2_configure_channel(i8 noundef zeroext %conv23, i8 noundef zeroext 3, i8 noundef zeroext %is_tx, i16 noundef zeroext %conv16, i16 noundef zeroext %9, i16 noundef zeroext %packet_length)
  br label %return

return:                                           ; preds = %if.end21, %alloc_dbr.exit.return_crit_edge, %alloc_dbr.exit.thread, %if.end3.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i8 [ 0, %if.end21 ], [ 32, %entry.return_crit_edge ], [ 18, %if.end.return_crit_edge ], [ 33, %if.end3.return_crit_edge ], [ 19, %alloc_dbr.exit.return_crit_edge ], [ 19, %alloc_dbr.exit.thread ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dim2_configure_channel(i8 noundef zeroext %ch_addr, i8 noundef zeroext %type, i8 noundef zeroext %is_tx, i16 noundef zeroext %dbr_address, i16 noundef zeroext %hw_buffer_size, i16 noundef zeroext %packet_length) unnamed_addr #0 align 64 {
entry:
  %mask.i20 = alloca [4 x i32], align 4
  %value.i21 = alloca [4 x i32], align 4
  %mask.i.i17 = alloca [4 x i32], align 4
  %adt.i = alloca [4 x i32], align 4
  %mask.i = alloca [4 x i32], align 4
  %value.i = alloca [4 x i32], align 4
  %mask.i.i = alloca [4 x i32], align 4
  %cdt.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cdt.i) #9
  %0 = call ptr @memset(ptr %cdt.i, i32 0, i32 12)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %packet_length)
  %tobool.not.i = icmp eq i16 %packet_length, 0
  br i1 %tobool.not.i, label %entry.dim2_configure_cdt.exit_crit_edge, label %if.then.i

entry.dim2_configure_cdt.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dim2_configure_cdt.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i16 %packet_length to i32
  %sub.i = add nsw i32 %conv.i, -1
  %arrayidx.i = getelementptr inbounds [4 x i32], ptr %cdt.i, i32 0, i32 1
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %sub.i, ptr %arrayidx.i, align 4
  br label %dim2_configure_cdt.exit

dim2_configure_cdt.exit:                          ; preds = %if.then.i, %entry.dim2_configure_cdt.exit_crit_edge
  %conv1.i = zext i16 %hw_buffer_size to i32
  %sub2.i = add nsw i32 %conv1.i, -1
  %conv4.i = zext i16 %dbr_address to i32
  %shl5.i = shl nuw i32 %conv4.i, 16
  %or.i = or i32 %sub2.i, %shl5.i
  %arrayidx6.i = getelementptr inbounds [4 x i32], ptr %cdt.i, i32 0, i32 3
  %2 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or.i, ptr %arrayidx6.i, align 4
  %conv7.i = zext i8 %ch_addr to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mask.i.i) #9
  %3 = call ptr @memset(ptr %mask.i.i, i32 255, i32 16)
  call fastcc void @dim2_write_ctr_mask(i32 noundef %conv7.i, ptr noundef nonnull %mask.i.i, ptr noundef nonnull %cdt.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask.i.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cdt.i) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %is_tx)
  %tobool.not = icmp eq i8 %is_tx, 0
  %conv.i15 = zext i8 %type to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %type)
  %cmp.i = icmp eq i8 %type, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %type)
  %cmp4.i = icmp eq i8 %type, 0
  %shl.i = select i1 %tobool.not, i32 0, i32 4096
  %shl9.i = shl nuw nsw i32 %conv.i15, 8
  %shl15.i = select i1 %cmp.i, i32 16384, i32 0
  %shl19.i = select i1 %cmp4.i, i32 16384, i32 0
  %div49.i = lshr i8 %ch_addr, 3
  %add.i = or i8 %div49.i, -128
  %rem.i = lshr i8 %ch_addr, 1
  %div2850.i = and i8 %rem.i, 3
  %rem31.i = shl i8 %ch_addr, 4
  %mul.i = and i8 %rem31.i, 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mask.i) #9
  %4 = call ptr @memset(ptr %mask.i, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %value.i) #9
  %5 = call ptr @memset(ptr %value.i, i32 0, i32 16)
  %conv33.i = zext i8 %mul.i to i32
  %shl34.i = shl nuw i32 65535, %conv33.i
  %idxprom.i = zext i8 %div2850.i to i32
  %arrayidx.i16 = getelementptr [4 x i32], ptr %mask.i, i32 0, i32 %idxprom.i
  %6 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shl34.i, ptr %arrayidx.i16, align 4
  %or.masked.i = or i32 %shl15.i, %conv7.i
  %or12.masked.i = or i32 %or.masked.i, %shl19.i
  %or16.masked.i = or i32 %or12.masked.i, %shl9.i
  %conv23.i = or i32 %or16.masked.i, %shl.i
  %conv35.i = or i32 %conv23.i, 2048
  %shl37.i = shl i32 %conv35.i, %conv33.i
  %arrayidx39.i = getelementptr [4 x i32], ptr %value.i, i32 0, i32 %idxprom.i
  %7 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shl37.i, ptr %arrayidx39.i, align 4
  %conv40.i = zext i8 %add.i to i32
  call fastcc void @dim2_write_ctr_mask(i32 noundef %conv40.i, ptr noundef nonnull %mask.i, ptr noundef nonnull %value.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %value.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask.i) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %adt.i) #9
  %8 = getelementptr inbounds i8, ptr %adt.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 12)
  %10 = ptrtoint ptr %adt.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 49152, ptr %adt.i, align 4
  %add.i19 = add nuw nsw i32 %conv7.i, 64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mask.i.i17) #9
  %11 = call ptr @memset(ptr %mask.i.i17, i32 255, i32 16)
  call fastcc void @dim2_write_ctr_mask(i32 noundef %add.i19, ptr noundef nonnull %mask.i.i17, ptr noundef nonnull %adt.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask.i.i17) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %adt.i) #9
  %shl.i25 = select i1 %tobool.not, i32 4096, i32 0
  %add.i31 = add nuw nsw i8 %div49.i, -120
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mask.i20) #9
  %12 = call ptr @memset(ptr %mask.i20, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %value.i21) #9
  %13 = call ptr @memset(ptr %value.i21, i32 0, i32 16)
  %arrayidx.i39 = getelementptr [4 x i32], ptr %mask.i20, i32 0, i32 %idxprom.i
  %14 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shl34.i, ptr %arrayidx.i39, align 4
  %conv23.i43 = or i32 %or16.masked.i, %shl.i25
  %conv35.i44 = or i32 %conv23.i43, 2048
  %shl37.i45 = shl i32 %conv35.i44, %conv33.i
  %arrayidx39.i46 = getelementptr [4 x i32], ptr %value.i21, i32 0, i32 %idxprom.i
  %15 = ptrtoint ptr %arrayidx39.i46 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %shl37.i45, ptr %arrayidx39.i46, align 4
  %conv40.i47 = zext i8 %add.i31 to i32
  call fastcc void @dim2_write_ctr_mask(i32 noundef %conv40.i47, ptr noundef nonnull %mask.i20, ptr noundef nonnull %value.i21) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %value.i21) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask.i20) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !54
  tail call void @arm_heavy_mb() #9
  %16 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %ACMR0 = getelementptr inbounds %struct.dim2_regs, ptr %16, i32 0, i32 40
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ACMR0) #9, !srcloc !31
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !55
  %shl.i49 = shl nuw i32 1, %conv7.i
  %or = or i32 %18, %shl.i49
  %19 = tail call i32 @llvm.bswap.i32(i32 %or)
  %20 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %ACMR08 = getelementptr inbounds %struct.dim2_regs, ptr %20, i32 0, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ACMR08, i32 %19) #9, !srcloc !30
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @dim_init_sync(ptr noundef %ch, i8 noundef zeroext %is_tx, i16 noundef zeroext %ch_address, i16 noundef zeroext %bytes_per_frame) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 4), align 4
  %conv = add i32 %0, 2
  %1 = load i8, ptr @g, align 4, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %tobool1.not = icmp eq ptr %ch, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv2 = zext i16 %ch_address to i32
  %rem.i = and i32 %conv2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp1.i = icmp eq i32 %rem.i, 0
  %2 = add nsw i32 %conv2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %2)
  %3 = icmp ult i32 %2, 127
  %4 = and i1 %3, %cmp1.i
  br i1 %4, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %conv5 = zext i16 %bytes_per_frame to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bytes_per_frame)
  %cmp.i = icmp eq i16 %bytes_per_frame, 0
  br i1 %cmp.i, label %if.end4.cleanup_crit_edge, label %check_bytes_per_frame.exit

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

check_bytes_per_frame.exit:                       ; preds = %if.end4
  %conv1.i = and i32 %conv, 65535
  %shr.i = lshr i32 4096, %conv1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %conv5)
  %cmp5.i.not = icmp ult i32 %shr.i, %conv5
  br i1 %cmp5.i.not, label %check_bytes_per_frame.exit.cleanup_crit_edge, label %if.end8

check_bytes_per_frame.exit.cleanup_crit_edge:     ; preds = %check_bytes_per_frame.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %check_bytes_per_frame.exit
  %dbr_size = getelementptr inbounds %struct.dim_channel, ptr %ch, i32 0, i32 3
  %5 = ptrtoint ptr %dbr_size to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %dbr_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool9.not = icmp eq i16 %6, 0
  br i1 %tobool9.not, label %if.end15, label %if.end8.if.end.i47_crit_edge

if.end8.if.end.i47_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i47

if.end15:                                         ; preds = %if.end8
  %shl = shl i32 %conv5, %conv1.i
  %conv13 = trunc i32 %shl to i16
  %7 = ptrtoint ptr %dbr_size to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv13, ptr %dbr_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv13)
  %cmp.i46 = icmp eq i16 %conv13, 0
  br i1 %cmp.i46, label %if.end15.alloc_dbr.exit.thread_crit_edge, label %if.end15.if.end.i47_crit_edge

if.end15.if.end.i47_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i47

if.end15.alloc_dbr.exit.thread_crit_edge:         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %alloc_dbr.exit.thread

if.end.i47:                                       ; preds = %if.end15.if.end.i47_crit_edge, %if.end8.if.end.i47_crit_edge
  %8 = phi i16 [ %conv13, %if.end15.if.end.i47_crit_edge ], [ %6, %if.end8.if.end.i47_crit_edge ]
  %conv.i4551 = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %8)
  %cmp1.not.i.i = icmp ugt i16 %8, 256
  br i1 %cmp1.not.i.i, label %for.inc.i.i, label %if.end.i47.dbr_get_mask_size.exit.i_crit_edge

if.end.i47.dbr_get_mask_size.exit.i_crit_edge:    ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #11
  br label %dbr_get_mask_size.exit.i

for.inc.i.i:                                      ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %8)
  %cmp1.not.1.i.i = icmp ugt i16 %8, 512
  br i1 %cmp1.not.1.i.i, label %for.inc.1.i.i, label %for.inc.i.i.dbr_get_mask_size.exit.i_crit_edge

for.inc.i.i.dbr_get_mask_size.exit.i_crit_edge:   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dbr_get_mask_size.exit.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %8)
  %cmp1.not.2.i.i = icmp ugt i16 %8, 1024
  br i1 %cmp1.not.2.i.i, label %for.inc.2.i.i, label %for.inc.1.i.i.dbr_get_mask_size.exit.i_crit_edge

for.inc.1.i.i.dbr_get_mask_size.exit.i_crit_edge: ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dbr_get_mask_size.exit.i

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %8)
  %cmp1.not.3.i.i = icmp ugt i16 %8, 2048
  br i1 %cmp1.not.3.i.i, label %for.inc.3.i.i, label %for.inc.2.i.i.dbr_get_mask_size.exit.i_crit_edge

for.inc.2.i.i.dbr_get_mask_size.exit.i_crit_edge: ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dbr_get_mask_size.exit.i

for.inc.3.i.i:                                    ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %8)
  %cmp1.not.4.i.i = icmp ugt i16 %8, 4096
  br i1 %cmp1.not.4.i.i, label %for.inc.4.i.i, label %for.inc.3.i.i.dbr_get_mask_size.exit.i_crit_edge

for.inc.3.i.i.dbr_get_mask_size.exit.i_crit_edge: ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dbr_get_mask_size.exit.i

for.inc.4.i.i:                                    ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %8)
  %cmp1.not.5.i.i = icmp ugt i16 %8, 8192
  br i1 %cmp1.not.5.i.i, label %for.inc.4.i.i.alloc_dbr.exit.thread_crit_edge, label %for.inc.4.i.i.dbr_get_mask_size.exit.i_crit_edge

for.inc.4.i.i.dbr_get_mask_size.exit.i_crit_edge: ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dbr_get_mask_size.exit.i

for.inc.4.i.i.alloc_dbr.exit.thread_crit_edge:    ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alloc_dbr.exit.thread

dbr_get_mask_size.exit.i:                         ; preds = %for.inc.4.i.i.dbr_get_mask_size.exit.i_crit_edge, %for.inc.3.i.i.dbr_get_mask_size.exit.i_crit_edge, %for.inc.2.i.i.dbr_get_mask_size.exit.i_crit_edge, %for.inc.1.i.i.dbr_get_mask_size.exit.i_crit_edge, %for.inc.i.i.dbr_get_mask_size.exit.i_crit_edge, %if.end.i47.dbr_get_mask_size.exit.i_crit_edge
  %i.08.lcssa.i.i = phi i32 [ 0, %if.end.i47.dbr_get_mask_size.exit.i_crit_edge ], [ 1, %for.inc.i.i.dbr_get_mask_size.exit.i_crit_edge ], [ 2, %for.inc.1.i.i.dbr_get_mask_size.exit.i_crit_edge ], [ 3, %for.inc.2.i.i.dbr_get_mask_size.exit.i_crit_edge ], [ 4, %for.inc.3.i.i.dbr_get_mask_size.exit.i_crit_edge ], [ 5, %for.inc.4.i.i.dbr_get_mask_size.exit.i_crit_edge ]
  %shl3.i.i = shl nuw nsw i32 1, %i.08.lcssa.i.i
  %sub.i = add nuw nsw i32 %conv.i4551, 255
  %div35.i = lshr i32 %sub.i, 8
  %shl.i = shl nsw i32 -1, %div35.i
  %neg.i = xor i32 %shl.i, -1
  %sub15.i = add nsw i32 %shl3.i.i, -1
  %9 = load i32, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 5, i32 0), align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.end13.i.do.body.i_crit_edge, %dbr_get_mask_size.exit.i
  %block_idx.1.i = phi i32 [ 0, %dbr_get_mask_size.exit.i ], [ %add14.i, %if.end13.i.do.body.i_crit_edge ]
  %mask.0.i = phi i32 [ %neg.i, %dbr_get_mask_size.exit.i ], [ %shl17.i, %if.end13.i.do.body.i_crit_edge ]
  %and.i = and i32 %mask.0.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp9.i = icmp eq i32 %and.i, 0
  br i1 %cmp9.i, label %do.body.i.alloc_dbr.exit_crit_edge, label %if.end13.i

do.body.i.alloc_dbr.exit_crit_edge:               ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alloc_dbr.exit

if.end13.i:                                       ; preds = %do.body.i
  %add14.i = add i32 %block_idx.1.i, %shl3.i.i
  %shl16.i = shl i32 %mask.0.i, %sub15.i
  %shl17.i = shl i32 %shl16.i, 1
  %cmp18.not.i = icmp eq i32 %shl17.i, 0
  br i1 %cmp18.not.i, label %for.inc.i, label %if.end13.i.do.body.i_crit_edge

if.end13.i.do.body.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

for.inc.i:                                        ; preds = %if.end13.i
  %10 = load i32, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 5, i32 1), align 4
  br label %do.body.1.i

do.body.1.i:                                      ; preds = %if.end13.1.i.do.body.1.i_crit_edge, %for.inc.i
  %block_idx.1.1.i = phi i32 [ %add14.i, %for.inc.i ], [ %add14.1.i, %if.end13.1.i.do.body.1.i_crit_edge ]
  %mask.0.1.i = phi i32 [ %neg.i, %for.inc.i ], [ %shl17.1.i, %if.end13.1.i.do.body.1.i_crit_edge ]
  %and.1.i = and i32 %mask.0.1.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %cmp9.1.i = icmp eq i32 %and.1.i, 0
  br i1 %cmp9.1.i, label %do.body.1.i.alloc_dbr.exit_crit_edge, label %if.end13.1.i

do.body.1.i.alloc_dbr.exit_crit_edge:             ; preds = %do.body.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alloc_dbr.exit

if.end13.1.i:                                     ; preds = %do.body.1.i
  %add14.1.i = add i32 %block_idx.1.1.i, %shl3.i.i
  %shl16.1.i = shl i32 %mask.0.1.i, %sub15.i
  %shl17.1.i = shl i32 %shl16.1.i, 1
  %cmp18.not.1.i = icmp eq i32 %shl17.1.i, 0
  br i1 %cmp18.not.1.i, label %if.end13.1.i.alloc_dbr.exit.thread_crit_edge, label %if.end13.1.i.do.body.1.i_crit_edge

if.end13.1.i.do.body.1.i_crit_edge:               ; preds = %if.end13.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.1.i

if.end13.1.i.alloc_dbr.exit.thread_crit_edge:     ; preds = %if.end13.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alloc_dbr.exit.thread

alloc_dbr.exit.thread:                            ; preds = %if.end13.1.i.alloc_dbr.exit.thread_crit_edge, %for.inc.4.i.i.alloc_dbr.exit.thread_crit_edge, %if.end15.alloc_dbr.exit.thread_crit_edge
  %dbr_addr54 = getelementptr inbounds %struct.dim_channel, ptr %ch, i32 0, i32 2
  %11 = ptrtoint ptr %dbr_addr54 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 16384, ptr %dbr_addr54, align 2
  br label %cleanup

alloc_dbr.exit:                                   ; preds = %do.body.1.i.alloc_dbr.exit_crit_edge, %do.body.i.alloc_dbr.exit_crit_edge
  %arrayidx.lcssa.i = phi ptr [ getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 5, i32 1), %do.body.1.i.alloc_dbr.exit_crit_edge ], [ getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 5, i32 0), %do.body.i.alloc_dbr.exit_crit_edge ]
  %.lcssa.i = phi i32 [ %10, %do.body.1.i.alloc_dbr.exit_crit_edge ], [ %9, %do.body.i.alloc_dbr.exit_crit_edge ]
  %block_idx.1.lcssa.i = phi i32 [ %block_idx.1.1.i, %do.body.1.i.alloc_dbr.exit_crit_edge ], [ %block_idx.1.i, %do.body.i.alloc_dbr.exit_crit_edge ]
  %mask.0.lcssa.i = phi i32 [ %mask.0.1.i, %do.body.1.i.alloc_dbr.exit_crit_edge ], [ %mask.0.i, %do.body.i.alloc_dbr.exit_crit_edge ]
  %or.i = or i32 %mask.0.lcssa.i, %.lcssa.i
  %12 = ptrtoint ptr %arrayidx.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or.i, ptr %arrayidx.lcssa.i, align 4
  %mul.i = shl i32 %block_idx.1.lcssa.i, 8
  %conv18 = trunc i32 %mul.i to i16
  %dbr_addr = getelementptr inbounds %struct.dim_channel, ptr %ch, i32 0, i32 2
  %13 = ptrtoint ptr %dbr_addr to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv18, ptr %dbr_addr, align 2
  %14 = and i32 %block_idx.1.lcssa.i, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not = icmp eq i32 %14, 0
  br i1 %cmp.not, label %if.end23, label %alloc_dbr.exit.cleanup_crit_edge

alloc_dbr.exit.cleanup_crit_edge:                 ; preds = %alloc_dbr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %alloc_dbr.exit
  %div44 = lshr i16 %ch_address, 1
  %conv25 = trunc i16 %div44 to i8
  %15 = ptrtoint ptr %ch to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 0, ptr %ch, align 4
  %service_counter.i.i = getelementptr inbounds %struct.int_ch_state, ptr %ch, i32 0, i32 1
  %16 = ptrtoint ptr %service_counter.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 0, ptr %service_counter.i.i, align 4
  %idx1.i.i = getelementptr inbounds %struct.int_ch_state, ptr %ch, i32 0, i32 2
  %17 = ptrtoint ptr %idx1.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %idx1.i.i, align 4
  %idx2.i.i = getelementptr inbounds %struct.int_ch_state, ptr %ch, i32 0, i32 3
  %18 = ptrtoint ptr %idx2.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %idx2.i.i, align 1
  %level.i.i = getelementptr inbounds %struct.int_ch_state, ptr %ch, i32 0, i32 4
  %19 = ptrtoint ptr %level.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %level.i.i, align 2
  %addr.i = getelementptr inbounds %struct.dim_channel, ptr %ch, i32 0, i32 1
  %20 = ptrtoint ptr %addr.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv25, ptr %addr.i, align 4
  %packet_length.i = getelementptr inbounds %struct.dim_channel, ptr %ch, i32 0, i32 4
  %21 = ptrtoint ptr %packet_length.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %packet_length.i, align 2
  %bytes_per_frame1.i = getelementptr inbounds %struct.dim_channel, ptr %ch, i32 0, i32 5
  %22 = ptrtoint ptr %bytes_per_frame1.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %bytes_per_frame, ptr %bytes_per_frame1.i, align 4
  %done_sw_buffers_number.i = getelementptr inbounds %struct.dim_channel, ptr %ch, i32 0, i32 6
  %23 = ptrtoint ptr %done_sw_buffers_number.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %done_sw_buffers_number.i, align 2
  %add.i = add i16 %8, %conv18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !56
  tail call void @arm_heavy_mb() #9
  %24 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %MCTL.i = getelementptr inbounds %struct.dim2_regs, ptr %24, i32 0, i32 33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MCTL.i, i32 0) #9, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !57
  tail call void @arm_heavy_mb() #9
  %25 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %MDAT0.i = getelementptr inbounds %struct.dim2_regs, ptr %25, i32 0, i32 25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MDAT0.i, i32 0) #9, !srcloc !30
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i, i16 %conv18)
  %cmp15.i = icmp ugt i16 %add.i, %conv18
  br i1 %cmp15.i, label %for.body.preheader.i, label %if.end23.dim2_clear_dbr.exit_crit_edge

if.end23.dim2_clear_dbr.exit_crit_edge:           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %dim2_clear_dbr.exit

for.body.preheader.i:                             ; preds = %if.end23
  %26 = and i32 %mul.i, 65280
  %wide.trip.count.i = zext i16 %add.i to i32
  br label %for.body.i

for.body.i:                                       ; preds = %dim2_transfer_madr.exit.i.for.body.i_crit_edge, %for.body.preheader.i
  %indvars.iv.i = phi i32 [ %26, %for.body.preheader.i ], [ %indvars.iv.next.i, %dim2_transfer_madr.exit.i.for.body.i_crit_edge ]
  %or11.i = or i32 %indvars.iv.i, -1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !29
  tail call void @arm_heavy_mb() #9
  %27 = tail call i32 @llvm.bswap.i32(i32 %or11.i) #9
  %28 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %MADR.i.i = getelementptr inbounds %struct.dim2_regs, ptr %28, i32 0, i32 34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MADR.i.i, i32 %27) #9, !srcloc !30
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %for.body.i
  %29 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %MCTL.i.i = getelementptr inbounds %struct.dim2_regs, ptr %29, i32 0, i32 33
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %MCTL.i.i) #9, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !32
  %31 = and i32 %30, 16777216
  %cmp.not.not.i.i = icmp eq i32 %31, 0
  br i1 %cmp.not.not.i.i, label %while.cond.i.i.while.cond.i.i_crit_edge, label %dim2_transfer_madr.exit.i

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i

dim2_transfer_madr.exit.i:                        ; preds = %while.cond.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  tail call void @arm_heavy_mb() #9
  %32 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %MCTL4.i.i = getelementptr inbounds %struct.dim2_regs, ptr %32, i32 0, i32 33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MCTL4.i.i, i32 0) #9, !srcloc !30
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %dim2_transfer_madr.exit.i.dim2_clear_dbr.exit_crit_edge, label %dim2_transfer_madr.exit.i.for.body.i_crit_edge

dim2_transfer_madr.exit.i.for.body.i_crit_edge:   ; preds = %dim2_transfer_madr.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

dim2_transfer_madr.exit.i.dim2_clear_dbr.exit_crit_edge: ; preds = %dim2_transfer_madr.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dim2_clear_dbr.exit

dim2_clear_dbr.exit:                              ; preds = %dim2_transfer_madr.exit.i.dim2_clear_dbr.exit_crit_edge, %if.end23.dim2_clear_dbr.exit_crit_edge
  %33 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %addr.i, align 4
  %35 = ptrtoint ptr %dbr_addr to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %dbr_addr, align 2
  %37 = ptrtoint ptr %dbr_size to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %dbr_size, align 4
  tail call fastcc void @dim2_configure_channel(i8 noundef zeroext %34, i8 noundef zeroext 0, i8 noundef zeroext %is_tx, i16 noundef zeroext %36, i16 noundef zeroext %38, i16 noundef zeroext 0)
  br label %cleanup

cleanup:                                          ; preds = %dim2_clear_dbr.exit, %alloc_dbr.exit.cleanup_crit_edge, %alloc_dbr.exit.thread, %check_bytes_per_frame.exit.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %dim2_clear_dbr.exit ], [ 32, %entry.cleanup_crit_edge ], [ 18, %if.end.cleanup_crit_edge ], [ 33, %check_bytes_per_frame.exit.cleanup_crit_edge ], [ 19, %alloc_dbr.exit.cleanup_crit_edge ], [ 19, %alloc_dbr.exit.thread ], [ 33, %if.end4.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @dim_destroy_channel(ptr noundef %ch) local_unnamed_addr #0 align 64 {
entry:
  %mask.i.i26.i = alloca [4 x i32], align 4
  %cdt.i.i = alloca [4 x i32], align 4
  %mask.i15.i = alloca [4 x i32], align 4
  %value.i16.i = alloca [4 x i32], align 4
  %mask.i.i.i = alloca [4 x i32], align 4
  %adt.i.i = alloca [4 x i32], align 4
  %mask.i.i = alloca [4 x i32], align 4
  %value.i.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @g, align 4, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  %tobool1.not = icmp eq ptr %ch, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %addr = getelementptr inbounds %struct.dim_channel, ptr %ch, i32 0, i32 1
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %addr, align 4
  %3 = load i8, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %3)
  %cmp = icmp eq i8 %2, %3
  br i1 %cmp, label %do.body, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !58
  tail call void @arm_heavy_mb() #9
  %4 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %MIEN = getelementptr inbounds %struct.dim2_regs, ptr %4, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MIEN, i32 0) #9, !srcloc !30
  store i8 0, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 3), align 4
  br label %if.end5

if.end5:                                          ; preds = %do.body, %if.end.if.end5_crit_edge
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !59
  tail call void @arm_heavy_mb() #9
  %7 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %ACMR0.i = getelementptr inbounds %struct.dim2_regs, ptr %7, i32 0, i32 40
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ACMR0.i) #9, !srcloc !31
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !60
  %conv.i.i = zext i8 %6 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %neg.i = xor i32 %shl.i.i, -1
  %and.i = and i32 %9, %neg.i
  %10 = tail call i32 @llvm.bswap.i32(i32 %and.i) #9
  %11 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %ACMR03.i = getelementptr inbounds %struct.dim2_regs, ptr %11, i32 0, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ACMR03.i, i32 %10) #9, !srcloc !30
  %div14.i.i = lshr i8 %6, 3
  %add.i.i = add nuw nsw i8 %div14.i.i, -120
  %rem.i.i = lshr i8 %6, 1
  %div415.i.i = and i8 %rem.i.i, 3
  %12 = shl i8 %6, 4
  %13 = and i8 %12, 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mask.i.i) #9
  %14 = call ptr @memset(ptr %mask.i.i, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %value.i.i) #9
  %15 = call ptr @memset(ptr %value.i.i, i32 0, i32 16)
  %conv9.i.i = zext i8 %13 to i32
  %shl.i12.i = shl nuw i32 65535, %conv9.i.i
  %idxprom.i.i = zext i8 %div415.i.i to i32
  %arrayidx.i.i = getelementptr [4 x i32], ptr %mask.i.i, i32 0, i32 %idxprom.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %shl.i12.i, ptr %arrayidx.i.i, align 4
  %conv10.i.i = zext i8 %add.i.i to i32
  call fastcc void @dim2_write_ctr_mask(i32 noundef %conv10.i.i, ptr noundef nonnull %mask.i.i, ptr noundef nonnull %value.i.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %value.i.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask.i.i) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %adt.i.i) #9
  %17 = call ptr @memset(ptr %adt.i.i, i32 0, i32 16)
  %add.i14.i = add nuw nsw i32 %conv.i.i, 64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mask.i.i.i) #9
  %18 = call ptr @memset(ptr %mask.i.i.i, i32 255, i32 16)
  call fastcc void @dim2_write_ctr_mask(i32 noundef %add.i14.i, ptr noundef nonnull %mask.i.i.i, ptr noundef nonnull %adt.i.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %adt.i.i) #9
  %add.i18.i = or i8 %div14.i.i, -128
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mask.i15.i) #9
  %19 = call ptr @memset(ptr %mask.i15.i, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %value.i16.i) #9
  %20 = call ptr @memset(ptr %value.i16.i, i32 0, i32 16)
  %arrayidx.i24.i = getelementptr [4 x i32], ptr %mask.i15.i, i32 0, i32 %idxprom.i.i
  %21 = ptrtoint ptr %arrayidx.i24.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shl.i12.i, ptr %arrayidx.i24.i, align 4
  %conv10.i25.i = zext i8 %add.i18.i to i32
  call fastcc void @dim2_write_ctr_mask(i32 noundef %conv10.i25.i, ptr noundef nonnull %mask.i15.i, ptr noundef nonnull %value.i16.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %value.i16.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask.i15.i) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cdt.i.i) #9
  %22 = call ptr @memset(ptr %cdt.i.i, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mask.i.i26.i) #9
  %23 = call ptr @memset(ptr %mask.i.i26.i, i32 255, i32 16)
  call fastcc void @dim2_write_ctr_mask(i32 noundef %conv.i.i, ptr noundef nonnull %mask.i.i26.i, ptr noundef nonnull %cdt.i.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask.i.i26.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cdt.i.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !61
  tail call void @arm_heavy_mb() #9
  %24 = tail call i32 @llvm.bswap.i32(i32 %shl.i.i) #9
  %25 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %ACSR0.i = getelementptr inbounds %struct.dim2_regs, ptr %25, i32 0, i32 38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ACSR0.i, i32 %24) #9, !srcloc !30
  %dbr_addr = getelementptr inbounds %struct.dim_channel, ptr %ch, i32 0, i32 2
  %26 = ptrtoint ptr %dbr_addr to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %dbr_addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %27)
  %cmp8 = icmp ult i16 %27, 16384
  br i1 %cmp8, label %if.then10, label %if.end5.if.end14_crit_edge

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %dbr_size = getelementptr inbounds %struct.dim_channel, ptr %ch, i32 0, i32 3
  %28 = ptrtoint ptr %dbr_size to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %dbr_size, align 4
  %conv13 = zext i16 %29 to i32
  %div.i242529 = lshr i16 %27, 8
  %sub.i = add nuw nsw i32 %conv13, 255
  %div1.i2630 = lshr i32 %sub.i, 8
  %shl.i = shl nsw i32 -1, %div1.i2630
  %neg.i22 = xor i32 %shl.i, -1
  %30 = and i16 %div.i242529, 31
  %rem7.i = zext i16 %30 to i32
  %shl2.i = shl i32 %neg.i22, %rem7.i
  %neg3.i = xor i32 %shl2.i, -1
  %div4.i272831 = lshr i16 %27, 13
  %div4.i27.zext = zext i16 %div4.i272831 to i32
  %arrayidx.i = getelementptr %struct.lld_global_vars_t, ptr @g, i32 0, i32 5, i32 %div4.i27.zext
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i, align 4
  %and.i23 = and i32 %32, %neg3.i
  store i32 %and.i23, ptr %arrayidx.i, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end5.if.end14_crit_edge
  %33 = ptrtoint ptr %dbr_addr to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 16384, ptr %dbr_addr, align 2
  br label %return

return:                                           ; preds = %if.end14, %entry.return_crit_edge
  %retval.0 = phi i8 [ 0, %if.end14 ], [ 32, %entry.return_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dim_service_ahb_int_irq(ptr noundef readonly %channels) local_unnamed_addr #0 align 64 {
entry:
  %mask.i.i = alloca [4 x i32], align 4
  %adt_w.i.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @g, align 4, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %channels, null
  br i1 %tobool1.not, label %if.end.cleanup.sink.split_crit_edge, label %do.body.preheader

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

do.body.preheader:                                ; preds = %if.end
  %arrayidx.i.i = getelementptr inbounds [4 x i32], ptr %mask.i.i, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %do.body.preheader
  %1 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %channels, align 4
  %tobool5.not16 = icmp eq ptr %2, null
  br i1 %tobool5.not16, label %do.body.cleanup_crit_edge, label %do.body.while.body_crit_edge

do.body.while.body_crit_edge:                     ; preds = %do.body
  br label %while.body

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body:                                       ; preds = %channel_service_interrupt.exit.while.body_crit_edge, %do.body.while.body_crit_edge
  %3 = phi ptr [ %32, %channel_service_interrupt.exit.while.body_crit_edge ], [ %2, %do.body.while.body_crit_edge ]
  %ch.018 = phi ptr [ %incdec.ptr, %channel_service_interrupt.exit.while.body_crit_edge ], [ %channels, %do.body.while.body_crit_edge ]
  %state_changed.0.off017 = phi i1 [ %or15, %channel_service_interrupt.exit.while.body_crit_edge ], [ false, %do.body.while.body_crit_edge ]
  %addr.i = getelementptr inbounds %struct.dim_channel, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %addr.i, align 4
  %idx2.i = getelementptr inbounds %struct.int_ch_state, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %idx2.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %idx2.i, align 1
  %conv2.i.i = zext i8 %5 to i32
  %add.i.i = add nuw nsw i32 %conv2.i.i, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !29
  tail call void @arm_heavy_mb() #9
  %8 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #9
  %9 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %MADR.i.i.i.i = getelementptr inbounds %struct.dim2_regs, ptr %9, i32 0, i32 34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MADR.i.i.i.i, i32 %8) #9, !srcloc !30
  br label %while.cond.i.i.i.i

while.cond.i.i.i.i:                               ; preds = %while.cond.i.i.i.i.while.cond.i.i.i.i_crit_edge, %while.body
  %10 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %MCTL.i.i.i.i = getelementptr inbounds %struct.dim2_regs, ptr %10, i32 0, i32 33
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %MCTL.i.i.i.i) #9, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !32
  %12 = and i32 %11, 16777216
  %cmp.not.not.i.i.i.i = icmp eq i32 %12, 0
  br i1 %cmp.not.not.i.i.i.i, label %while.cond.i.i.i.i.while.cond.i.i.i.i_crit_edge, label %dim2_read_ctr.exit.i.i

while.cond.i.i.i.i.while.cond.i.i.i.i_crit_edge:  ; preds = %while.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i.i.i

dim2_read_ctr.exit.i.i:                           ; preds = %while.cond.i.i.i.i
  %mul.i.i = shl i8 %7, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  tail call void @arm_heavy_mb() #9
  %13 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %MCTL4.i.i.i.i = getelementptr inbounds %struct.dim2_regs, ptr %13, i32 0, i32 33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MCTL4.i.i.i.i, i32 0) #9, !srcloc !30
  %14 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %add.ptr.i.i.i = getelementptr %struct.dim2_regs, ptr %14, i32 0, i32 26
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !31
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mask.i.i) #9
  %17 = call ptr @memset(ptr %mask.i.i, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %adt_w.i.i) #9
  %18 = call ptr @memset(ptr %adt_w.i.i, i32 0, i32 16)
  %19 = or i8 %mul.i.i, 14
  %add4.i.i = zext i8 %19 to i32
  %20 = shl nuw i32 1, %add4.i.i
  %21 = and i32 %16, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i.i = icmp eq i32 %21, 0
  br i1 %cmp.i.i, label %service_channel.exit.i, label %if.end.i

service_channel.exit.i:                           ; preds = %dim2_read_ctr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %adt_w.i.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask.i.i) #9
  br label %channel_service_interrupt.exit

if.end.i:                                         ; preds = %dim2_read_ctr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add11.i.i = or i8 %mul.i.i, 13
  %conv.i31.i.i = zext i8 %add11.i.i to i32
  %shl.i32.i.i = shl nuw i32 1, %conv.i31.i.i
  %or.i.i = or i32 %20, %shl.i32.i.i
  %add15.i.i = or i8 %mul.i.i, 15
  %conv.i33.i.i = zext i8 %add15.i.i to i32
  %shl.i34.i.i = shl nuw i32 1, %conv.i33.i.i
  %or18.i.i = or i32 %or.i.i, %shl.i34.i.i
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or18.i.i, ptr %arrayidx.i.i, align 4
  call fastcc void @dim2_write_ctr_mask(i32 noundef %add.i.i, ptr noundef nonnull %mask.i.i, ptr noundef nonnull %adt_w.i.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !62
  tail call void @arm_heavy_mb() #9
  %shl.i36.i.i = shl nuw i32 1, %conv2.i.i
  %23 = tail call i32 @llvm.bswap.i32(i32 %shl.i36.i.i) #9
  %24 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %ACSR0.i.i = getelementptr inbounds %struct.dim2_regs, ptr %24, i32 0, i32 38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ACSR0.i.i, i32 %23) #9, !srcloc !30
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %adt_w.i.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask.i.i) #9
  %25 = ptrtoint ptr %idx2.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %idx2.i, align 1
  %27 = xor i8 %26, 1
  store i8 %27, ptr %idx2.i, align 1
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %3, align 4
  %inc.i = add i32 %29, 1
  store volatile i32 %inc.i, ptr %3, align 4
  br label %channel_service_interrupt.exit

channel_service_interrupt.exit:                   ; preds = %if.end.i, %service_channel.exit.i
  %30 = xor i1 %cmp.i.i, true
  %or15 = or i1 %state_changed.0.off017, %30
  %incdec.ptr = getelementptr ptr, ptr %ch.018, i32 1
  %31 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %incdec.ptr, align 4
  %tobool5.not = icmp eq ptr %32, null
  br i1 %tobool5.not, label %while.end, label %channel_service_interrupt.exit.while.body_crit_edge

channel_service_interrupt.exit.while.body_crit_edge: ; preds = %channel_service_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %channel_service_interrupt.exit
  br i1 %or15, label %while.end.do.body_crit_edge, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.1.sink = phi ptr [ @.str, %entry.cleanup.sink.split_crit_edge ], [ @.str.1, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @dimcb_on_error(i8 noundef zeroext 32, ptr noundef nonnull %.str.1.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %while.end.cleanup_crit_edge, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @dim_service_channel(ptr noundef %ch) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @g, align 4, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  %tobool1.not = icmp eq ptr %ch, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %service_counter.i = getelementptr inbounds %struct.int_ch_state, ptr %ch, i32 0, i32 1
  %1 = ptrtoint ptr %service_counter.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %service_counter.i, align 4
  %3 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %ch, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp.not.i = icmp eq i32 %2, %4
  br i1 %cmp.not.i, label %if.end.return_crit_edge, label %if.then.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then.i:                                        ; preds = %if.end
  %5 = ptrtoint ptr %service_counter.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %service_counter.i, align 4
  %inc.i = add i32 %6, 1
  store volatile i32 %inc.i, ptr %service_counter.i, align 4
  %level.i = getelementptr inbounds %struct.int_ch_state, ptr %ch, i32 0, i32 4
  %7 = ptrtoint ptr %level.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %level.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp3.i = icmp eq i8 %8, 0
  br i1 %cmp3.i, label %if.then.i.return_crit_edge, label %if.end.i

if.then.i.return_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %dec.i = add i8 %8, -1
  %9 = ptrtoint ptr %level.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %dec.i, ptr %level.i, align 2
  %done_sw_buffers_number.i = getelementptr inbounds %struct.dim_channel, ptr %ch, i32 0, i32 6
  %10 = ptrtoint ptr %done_sw_buffers_number.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %done_sw_buffers_number.i, align 2
  %inc7.i = add i16 %11, 1
  store i16 %inc7.i, ptr %done_sw_buffers_number.i, align 2
  br label %return

return:                                           ; preds = %if.end.i, %if.then.i.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i8 [ 32, %entry.return_crit_edge ], [ 35, %if.then.i.return_crit_edge ], [ 0, %if.end.i ], [ 0, %if.end.return_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @dim_get_channel_state(ptr noundef readonly %ch, ptr noundef writeonly %state_ptr) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ch, null
  %tobool1.not = icmp eq ptr %state_ptr, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %level = getelementptr inbounds %struct.int_ch_state, ptr %ch, i32 0, i32 4
  %0 = ptrtoint ptr %level to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %level, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp ult i8 %1, 2
  %frombool = zext i1 %cmp to i8
  %2 = ptrtoint ptr %state_ptr to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %state_ptr, align 2
  %done_sw_buffers_number = getelementptr inbounds %struct.dim_channel, ptr %ch, i32 0, i32 6
  %3 = ptrtoint ptr %done_sw_buffers_number to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %done_sw_buffers_number, align 2
  %done_buffers = getelementptr inbounds %struct.dim_ch_state_t, ptr %state_ptr, i32 0, i32 1
  %5 = ptrtoint ptr %done_buffers to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %done_buffers, align 2
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ %state_ptr, %if.end ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dim_enqueue_buffer(ptr noundef %ch, i32 noundef %buffer_addr, i16 noundef zeroext %buffer_size) local_unnamed_addr #0 align 64 {
entry:
  %mask.i102.i = alloca [4 x i32], align 4
  %adt.i103.i = alloca [4 x i32], align 4
  %mask.i.i = alloca [4 x i32], align 4
  %adt.i.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ch, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dimcb_on_error(i8 noundef zeroext 32, ptr noundef nonnull @.str.2) #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %buffer_size)
  %cmp.i = icmp eq i16 %buffer_size, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dimcb_on_error(i8 noundef zeroext 34, ptr noundef nonnull @.str.3) #9
  br label %return

if.end.i:                                         ; preds = %if.end
  %packet_length.i = getelementptr inbounds %struct.dim_channel, ptr %ch, i32 0, i32 4
  %0 = ptrtoint ptr %packet_length.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %packet_length.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp4.i = icmp eq i16 %1, 0
  br i1 %cmp4.i, label %land.lhs.true.i, label %land.lhs.true20.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %bytes_per_frame.i = getelementptr inbounds %struct.dim_channel, ptr %ch, i32 0, i32 5
  %2 = ptrtoint ptr %bytes_per_frame.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %bytes_per_frame.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp7.i = icmp ne i16 %3, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 2049, i16 %buffer_size)
  %cmp13.not.i = icmp ult i16 %buffer_size, 2049
  %or.cond.i = or i1 %cmp13.not.i, %cmp7.i
  br i1 %or.cond.i, label %land.lhs.true.i.if.end29.i_crit_edge, label %if.then15.i

land.lhs.true.i.if.end29.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i

if.then15.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dimcb_on_error(i8 noundef zeroext 34, ptr noundef nonnull @.str.4) #9
  br label %return

land.lhs.true20.i:                                ; preds = %if.end.i
  %4 = tail call i16 @llvm.umin.i16(i16 %buffer_size, i16 8192) #9
  %5 = udiv i16 %4, %1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %5)
  %cmp6.i.i = icmp ult i16 %5, 2
  %mul.i.i = mul i16 %5, %1
  %retval.0.i.i = select i1 %cmp6.i.i, i16 0, i16 %mul.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %retval.0.i.i, i16 %buffer_size)
  %cmp25.not.i = icmp eq i16 %retval.0.i.i, %buffer_size
  br i1 %cmp25.not.i, label %land.lhs.true20.i.if.end29.i_crit_edge, label %if.then27.i

land.lhs.true20.i.if.end29.i_crit_edge:           ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i

if.then27.i:                                      ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dimcb_on_error(i8 noundef zeroext 34, ptr noundef nonnull @.str.5) #9
  br label %return

if.end29.i:                                       ; preds = %land.lhs.true20.i.if.end29.i_crit_edge, %land.lhs.true.i.if.end29.i_crit_edge
  %bytes_per_frame30.i = getelementptr inbounds %struct.dim_channel, ptr %ch, i32 0, i32 5
  %6 = ptrtoint ptr %bytes_per_frame30.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %bytes_per_frame30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool32.not.i = icmp eq i16 %7, 0
  br i1 %tobool32.not.i, label %if.end29.i.if.end42.i_crit_edge, label %land.lhs.true33.i

if.end29.i.if.end42.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

land.lhs.true33.i:                                ; preds = %if.end29.i
  %conv.i.i = zext i16 %7 to i32
  %8 = load i32, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 4), align 4
  %shl.i.i = shl i32 %conv.i.i, %8
  %9 = tail call i16 @llvm.umin.i16(i16 %buffer_size, i16 8192) #9
  %conv3.i.i = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.i, i32 %conv3.i.i)
  %cmp6.i96.i = icmp ugt i32 %shl.i.i, %conv3.i.i
  br i1 %cmp6.i96.i, label %land.lhs.true33.i.norm_sync_buffer_size.exit.i_crit_edge, label %if.end9.i.i

land.lhs.true33.i.norm_sync_buffer_size.exit.i_crit_edge: ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %norm_sync_buffer_size.exit.i

if.end9.i.i:                                      ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = urem i32 %conv3.i.i, %shl.i.i
  %11 = trunc i32 %10 to i16
  %conv11.i.i = sub nsw i16 %9, %11
  br label %norm_sync_buffer_size.exit.i

norm_sync_buffer_size.exit.i:                     ; preds = %if.end9.i.i, %land.lhs.true33.i.norm_sync_buffer_size.exit.i_crit_edge
  %retval.0.i97.i = phi i16 [ %conv11.i.i, %if.end9.i.i ], [ 0, %land.lhs.true33.i.norm_sync_buffer_size.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %retval.0.i97.i, i16 %buffer_size)
  %cmp38.not.i = icmp eq i16 %retval.0.i97.i, %buffer_size
  br i1 %cmp38.not.i, label %norm_sync_buffer_size.exit.i.if.end42.i_crit_edge, label %if.then40.i

norm_sync_buffer_size.exit.i.if.end42.i_crit_edge: ; preds = %norm_sync_buffer_size.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

if.then40.i:                                      ; preds = %norm_sync_buffer_size.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dimcb_on_error(i8 noundef zeroext 34, ptr noundef nonnull @.str.6) #9
  br label %return

if.end42.i:                                       ; preds = %norm_sync_buffer_size.exit.i.if.end42.i_crit_edge, %if.end29.i.if.end42.i_crit_edge
  %level.i = getelementptr inbounds %struct.int_ch_state, ptr %ch, i32 0, i32 4
  %12 = ptrtoint ptr %level.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %level.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp44.i = icmp ugt i8 %13, 1
  br i1 %cmp44.i, label %if.then46.i, label %if.end48.i

if.then46.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dimcb_on_error(i8 noundef zeroext 36, ptr noundef nonnull @.str.7) #9
  br label %return

if.end48.i:                                       ; preds = %if.end42.i
  %inc.i = add nuw nsw i8 %13, 1
  %14 = ptrtoint ptr %level.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %inc.i, ptr %level.i, align 2
  %addr.i = getelementptr inbounds %struct.dim_channel, ptr %ch, i32 0, i32 1
  %15 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %addr.i, align 4
  %17 = load i8, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %17)
  %cmp52.i = icmp eq i8 %16, %17
  br i1 %cmp52.i, label %if.then54.i, label %if.end48.i.if.end56.i_crit_edge

if.end48.i.if.end56.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56.i

if.then54.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  %18 = load i16, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 3, i32 3), align 2
  %conv1.i.i = sub i16 %18, %buffer_size
  store i16 %conv1.i.i, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 3, i32 3), align 2
  %19 = load i16, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 3, i32 2), align 4
  %20 = and i16 %19, 31
  %idxprom.i.i = zext i16 %20 to i32
  %arrayidx.i.i = getelementptr %struct.lld_global_vars_t, ptr @g, i32 0, i32 3, i32 4, i32 %idxprom.i.i
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %buffer_size, ptr %arrayidx.i.i, align 2
  %inc.i.i = add i16 %19, 1
  store i16 %inc.i.i, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 3, i32 2), align 4
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then54.i, %if.end48.i.if.end56.i_crit_edge
  %22 = select i1 %cmp4.i, i1 %tobool32.not.i, i1 false
  %idx166.i = getelementptr inbounds %struct.int_ch_state, ptr %ch, i32 0, i32 2
  %23 = ptrtoint ptr %idx166.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %idx166.i, align 4
  %conv.i104.i = zext i8 %24 to i32
  %mul.i105.i = shl i8 %24, 4
  br i1 %22, label %if.else.i, label %if.then63.i

if.then63.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mask.i.i) #9
  %25 = call ptr @memset(ptr %mask.i.i, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %adt.i.i) #9
  %26 = call ptr @memset(ptr %adt.i.i, i32 0, i32 16)
  %conv2.i.i = zext i8 %mul.i105.i to i32
  %add.i.i = or i32 %conv2.i.i, 15
  %shl.i.i.i = shl nuw i32 1, %add.i.i
  %shl.i100.i = shl i32 8191, %conv2.i.i
  %or.i.i = or i32 %shl.i.i.i, %shl.i100.i
  %arrayidx.i101.i = getelementptr inbounds [4 x i32], ptr %mask.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %arrayidx.i101.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i.i, ptr %arrayidx.i101.i, align 4
  %conv9.i.i = zext i16 %buffer_size to i32
  %sub.i.i = add nsw i32 %conv9.i.i, -1
  %shl12.i.i = shl i32 %sub.i.i, %conv2.i.i
  %or13.i.i = or i32 %shl.i.i.i, %shl12.i.i
  %arrayidx14.i.i = getelementptr inbounds [4 x i32], ptr %adt.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or13.i.i, ptr %arrayidx14.i.i, align 4
  %add16.i.i = add nuw nsw i32 %conv.i104.i, 2
  %arrayidx17.i.i = getelementptr [4 x i32], ptr %mask.i.i, i32 0, i32 %add16.i.i
  %29 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %arrayidx17.i.i, align 4
  %arrayidx20.i.i = getelementptr [4 x i32], ptr %adt.i.i, i32 0, i32 %add16.i.i
  %30 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %buffer_addr, ptr %arrayidx20.i.i, align 4
  %conv21.i.i = zext i8 %16 to i32
  %add22.i.i = add nuw nsw i32 %conv21.i.i, 64
  call fastcc void @dim2_write_ctr_mask(i32 noundef %add22.i.i, ptr noundef nonnull %mask.i.i, ptr noundef nonnull %adt.i.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %adt.i.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask.i.i) #9
  br label %if.end67.i

if.else.i:                                        ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mask.i102.i) #9
  %31 = call ptr @memset(ptr %mask.i102.i, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %adt.i103.i) #9
  %32 = call ptr @memset(ptr %adt.i103.i, i32 0, i32 16)
  %conv2.i106.i = zext i8 %mul.i105.i to i32
  %add.i107.i = or i32 %conv2.i106.i, 12
  %shl.i.i108.i = shl nuw i32 1, %add.i107.i
  %add5.i.i = or i32 %conv2.i106.i, 15
  %shl.i41.i.i = shl nuw i32 1, %add5.i.i
  %shl.i109.i = shl i32 2047, %conv2.i106.i
  %or.i110.i = or i32 %shl.i.i108.i, %shl.i41.i.i
  %or10.i.i = or i32 %or.i110.i, %shl.i109.i
  %arrayidx.i111.i = getelementptr inbounds [4 x i32], ptr %mask.i102.i, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx.i111.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or10.i.i, ptr %arrayidx.i111.i, align 4
  %conv18.i.i = zext i16 %buffer_size to i32
  %sub.i112.i = add nsw i32 %conv18.i.i, -1
  %shl21.i.i = shl i32 %sub.i112.i, %conv2.i106.i
  %or22.i.i = or i32 %or.i110.i, %shl21.i.i
  %arrayidx23.i.i = getelementptr inbounds [4 x i32], ptr %adt.i103.i, i32 0, i32 1
  %34 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or22.i.i, ptr %arrayidx23.i.i, align 4
  %add25.i.i = add nuw nsw i32 %conv.i104.i, 2
  %arrayidx26.i.i = getelementptr [4 x i32], ptr %mask.i102.i, i32 0, i32 %add25.i.i
  %35 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %arrayidx26.i.i, align 4
  %arrayidx29.i.i = getelementptr [4 x i32], ptr %adt.i103.i, i32 0, i32 %add25.i.i
  %36 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %buffer_addr, ptr %arrayidx29.i.i, align 4
  %conv30.i.i = zext i8 %16 to i32
  %add31.i.i = add nuw nsw i32 %conv30.i.i, 64
  call fastcc void @dim2_write_ctr_mask(i32 noundef %add31.i.i, ptr noundef nonnull %mask.i102.i, ptr noundef nonnull %adt.i103.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %adt.i103.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask.i102.i) #9
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.else.i, %if.then63.i
  %37 = ptrtoint ptr %idx166.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %idx166.i, align 4
  %39 = xor i8 %38, 1
  store i8 %39, ptr %idx166.i, align 4
  br label %return

return:                                           ; preds = %if.end67.i, %if.then46.i, %if.then40.i, %if.then27.i, %if.then15.i, %if.then.i, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ false, %if.then.i ], [ false, %if.then15.i ], [ false, %if.then27.i ], [ false, %if.then40.i ], [ false, %if.then46.i ], [ true, %if.end67.i ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dim_detach_buffers(ptr noundef %ch, i16 noundef zeroext %buffers_number) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ch, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dimcb_on_error(i8 noundef zeroext 32, ptr noundef nonnull @.str.2) #9
  br label %return

if.end:                                           ; preds = %entry
  %done_sw_buffers_number.i = getelementptr inbounds %struct.dim_channel, ptr %ch, i32 0, i32 6
  %0 = ptrtoint ptr %done_sw_buffers_number.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %done_sw_buffers_number.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %buffers_number)
  %cmp.i = icmp ult i16 %1, %buffers_number
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dimcb_on_error(i8 noundef zeroext 35, ptr noundef nonnull @.str.8) #9
  br label %channel_detach_buffers.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = sub i16 %1, %buffers_number
  %2 = ptrtoint ptr %done_sw_buffers_number.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %sub.i, ptr %done_sw_buffers_number.i, align 2
  br label %channel_detach_buffers.exit

channel_detach_buffers.exit:                      ; preds = %if.end.i, %if.then.i
  %3 = xor i1 %cmp.i, true
  br label %return

return:                                           ; preds = %channel_detach_buffers.exit, %if.then
  %retval.0 = phi i1 [ %3, %channel_detach_buffers.exit ], [ false, %if.then ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dim2_write_ctr_mask(i32 noundef %ctr_addr, ptr nocapture noundef readonly %mask, ptr nocapture noundef readonly %value) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !63
  tail call void @arm_heavy_mb() #9
  %0 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %MCTL = getelementptr inbounds %struct.dim2_regs, ptr %0, i32 0, i32 33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MCTL, i32 0) #9, !srcloc !30
  %1 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.body1

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !64
  tail call void @arm_heavy_mb() #9
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %MDAT0 = getelementptr inbounds %struct.dim2_regs, ptr %6, i32 0, i32 25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MDAT0, i32 %5) #9, !srcloc !30
  br label %if.end

if.end:                                           ; preds = %do.body1, %entry.if.end_crit_edge
  %arrayidx4 = getelementptr i32, ptr %mask, i32 1
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp5.not = icmp eq i32 %8, 0
  br i1 %cmp5.not, label %if.end.if.end10_crit_edge, label %do.body7

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

do.body7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !65
  tail call void @arm_heavy_mb() #9
  %arrayidx9 = getelementptr i32, ptr %value, i32 1
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx9, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %MDAT1 = getelementptr inbounds %struct.dim2_regs, ptr %12, i32 0, i32 26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MDAT1, i32 %11) #9, !srcloc !30
  br label %if.end10

if.end10:                                         ; preds = %do.body7, %if.end.if.end10_crit_edge
  %arrayidx11 = getelementptr i32, ptr %mask, i32 2
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp12.not = icmp eq i32 %14, 0
  br i1 %cmp12.not, label %if.end10.if.end17_crit_edge, label %do.body14

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

do.body14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !66
  tail call void @arm_heavy_mb() #9
  %arrayidx16 = getelementptr i32, ptr %value, i32 2
  %15 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx16, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %MDAT2 = getelementptr inbounds %struct.dim2_regs, ptr %18, i32 0, i32 27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MDAT2, i32 %17) #9, !srcloc !30
  br label %if.end17

if.end17:                                         ; preds = %do.body14, %if.end10.if.end17_crit_edge
  %arrayidx18 = getelementptr i32, ptr %mask, i32 3
  %19 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp19.not = icmp eq i32 %20, 0
  br i1 %cmp19.not, label %if.end17.do.body25_crit_edge, label %do.body21

if.end17.do.body25_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body25

do.body21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  tail call void @arm_heavy_mb() #9
  %arrayidx23 = getelementptr i32, ptr %value, i32 3
  %21 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx23, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %24 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %MDAT3 = getelementptr inbounds %struct.dim2_regs, ptr %24, i32 0, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MDAT3, i32 %23) #9, !srcloc !30
  br label %do.body25

do.body25:                                        ; preds = %do.body21, %if.end17.do.body25_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !68
  tail call void @arm_heavy_mb() #9
  %25 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mask, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %28 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %MDWE0 = getelementptr inbounds %struct.dim2_regs, ptr %28, i32 0, i32 29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MDWE0, i32 %27) #9, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !69
  tail call void @arm_heavy_mb() #9
  %29 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx4, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %32 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %MDWE1 = getelementptr inbounds %struct.dim2_regs, ptr %32, i32 0, i32 30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MDWE1, i32 %31) #9, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !70
  tail call void @arm_heavy_mb() #9
  %33 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx11, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %36 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %MDWE2 = getelementptr inbounds %struct.dim2_regs, ptr %36, i32 0, i32 31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MDWE2, i32 %35) #9, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !71
  tail call void @arm_heavy_mb() #9
  %37 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx18, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %40 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %MDWE3 = getelementptr inbounds %struct.dim2_regs, ptr %40, i32 0, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MDWE3, i32 %39) #9, !srcloc !30
  %or = or i32 %ctr_addr, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !29
  tail call void @arm_heavy_mb() #9
  %41 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  %42 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %MADR.i = getelementptr inbounds %struct.dim2_regs, ptr %42, i32 0, i32 34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MADR.i, i32 %41) #9, !srcloc !30
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %do.body25
  %43 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %MCTL.i = getelementptr inbounds %struct.dim2_regs, ptr %43, i32 0, i32 33
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %MCTL.i) #9, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !32
  %45 = and i32 %44, 16777216
  %cmp.not.not.i = icmp eq i32 %45, 0
  br i1 %cmp.not.not.i, label %while.cond.i.while.cond.i_crit_edge, label %dim2_transfer_madr.exit

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

dim2_transfer_madr.exit:                          ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  tail call void @arm_heavy_mb() #9
  %46 = load ptr, ptr getelementptr inbounds (%struct.lld_global_vars_t, ptr @g, i32 0, i32 2), align 4
  %MCTL4.i = getelementptr inbounds %struct.dim2_regs, ptr %46, i32 0, i32 33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MCTL4.i, i32 0) #9, !srcloc !30
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dimcb_on_error(i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/most/dim2/hal.c", i32 910, i32 9}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/staging/most/dim2/hal.c", i32 915, i32 48}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/staging/most/dim2/hal.c", i32 963, i32 9}
!6 = !{ptr @g, !7, !"g", i1 false, i1 false}
!7 = !{!"../drivers/staging/most/dim2/hal.c", i32 84, i32 33}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/most/dim2/hal.c", i32 650, i32 48}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/most/dim2/hal.c", i32 655, i32 9}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/most/dim2/hal.c", i32 660, i32 9}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/staging/most/dim2/hal.c", i32 665, i32 9}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/most/dim2/hal.c", i32 668, i32 41}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/most/dim2/hal.c", i32 704, i32 42}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{i64 2149378904}
!30 = !{i64 1274207}
!31 = !{i64 1274625}
!32 = !{i64 2149379545}
!33 = !{i64 2149379753}
!34 = !{i64 2149381192}
!35 = !{i64 2149393192}
!36 = !{i64 2149394005}
!37 = !{i64 2149394416}
!38 = !{i64 2149394837}
!39 = !{i64 2149395349}
!40 = !{i64 2149390660}
!41 = !{i64 2149391103}
!42 = !{i64 2149391486}
!43 = !{i64 2149391897}
!44 = !{i64 2149392299}
!45 = !{i64 2149392674}
!46 = !{i64 2149396225}
!47 = !{i64 2149396446}
!48 = !{i64 2149397122}
!49 = !{i64 2149397596}
!50 = !{i64 2149398691}
!51 = !{i64 2149399062}
!52 = !{i8 0, i8 2}
!53 = !{i64 2149399445}
!54 = !{i64 2149386102}
!55 = !{i64 2149387025}
!56 = !{i64 2149380126}
!57 = !{i64 2149380500}
!58 = !{i64 2149399878}
!59 = !{i64 2149388004}
!60 = !{i64 2149388929}
!61 = !{i64 2149389197}
!62 = !{i64 2149398000}
!63 = !{i64 2149381400}
!64 = !{i64 2149381781}
!65 = !{i64 2149382184}
!66 = !{i64 2149382587}
!67 = !{i64 2149382990}
!68 = !{i64 2149383392}
!69 = !{i64 2149383791}
!70 = !{i64 2149384190}
!71 = !{i64 2149384589}
