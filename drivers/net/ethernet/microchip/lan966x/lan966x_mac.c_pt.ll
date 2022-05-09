; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/microchip/lan966x/lan966x_mac.c_pt.bc'
source_filename = "../drivers/net/ethernet/microchip/lan966x/lan966x_mac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.switchdev_notifier_fdb_info = type { %struct.switchdev_notifier_info, ptr, i16, i8 }
%struct.switchdev_notifier_info = type { ptr, ptr, ptr }
%struct.lan966x_port = type { ptr, ptr, i8, i16, i16, i8, i8, %struct.phylink_config, %struct.phylink_pcs, %struct.lan966x_port_config, ptr, ptr, ptr }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.phylink_pcs = type { ptr, i8 }
%struct.lan966x_port_config = type { i32, ptr, i32, i32, i32, i8, i8 }
%struct.lan966x_mac_entry = type { %struct.list_head, [6 x i8], i16, i16, i32 }
%struct.lan966x_mac_raw_entry = type { i32, i32, i32, i8 }

@.str = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/ethernet/microchip/lan966x/lan966x_mac.c\00", [43 x i8] zeroinitializer }, align 32
@lan966x_mac_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&lan966x->mac_lock\00", [45 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 101, i32 2 }
@___asan_gen_.6 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private constant [56 x i8] c"../drivers/net/ethernet/microchip/lan966x/lan966x_mac.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 155, i32 2 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @lan966x_mac_init.__key, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_mac_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lan966x_mac_ip_learn(ptr nocapture noundef readonly %lan966x, i1 noundef zeroext %cpu_copy, ptr nocapture noundef readonly %mac, i32 noundef %vid, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %type, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %0)
  %1 = icmp ult i32 %0, -2
  br i1 %1, label %do.end, label %entry.if.end_crit_edge, !prof !16

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 101, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call = tail call fastcc i32 @__lan966x_mac_learn(ptr noundef %lan966x, i32 noundef 0, i1 noundef zeroext %cpu_copy, ptr noundef %mac, i32 noundef %vid, i32 noundef %type)
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__lan966x_mac_learn(ptr nocapture noundef readonly %lan966x, i32 noundef %pgid, i1 noundef zeroext %cpu_copy, ptr nocapture noundef readonly %mac, i32 noundef %vid, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %shl.i = shl i32 %vid, 16
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mac, align 1
  %conv.i = zext i8 %1 to i32
  %shl1.i = shl nuw nsw i32 %conv.i, 8
  %or2.i = or i32 %shl1.i, %shl.i
  %arrayidx3.i = getelementptr i8, ptr %mac, i32 1
  %2 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %3 to i32
  %or6.i = or i32 %or2.i, %conv4.i
  %arrayidx7.i = getelementptr i8, ptr %mac, i32 2
  %4 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %5 to i32
  %shl9.i = shl nuw i32 %conv8.i, 24
  %arrayidx11.i = getelementptr i8, ptr %mac, i32 3
  %6 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx11.i, align 1
  %conv12.i = zext i8 %7 to i32
  %shl13.i = shl nuw nsw i32 %conv12.i, 16
  %or14.i = or i32 %shl13.i, %shl9.i
  %arrayidx15.i = getelementptr i8, ptr %mac, i32 4
  %8 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx15.i, align 1
  %conv16.i = zext i8 %9 to i32
  %shl17.i = shl nuw nsw i32 %conv16.i, 8
  %or18.i = or i32 %or14.i, %shl17.i
  %arrayidx19.i = getelementptr i8, ptr %mac, i32 5
  %10 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx19.i, align 1
  %conv20.i = zext i8 %11 to i32
  %or22.i = or i32 %or18.i, %conv20.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %12 = tail call i32 @llvm.bswap.i32(i32 %or22.i) #5
  %arrayidx.i.i.i = getelementptr %struct.lan966x, ptr %lan966x, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i.i = getelementptr i8, ptr %14, i32 27564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i.i, i32 %12) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %15 = tail call i32 @llvm.bswap.i32(i32 %or6.i) #5
  %16 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i38.i = getelementptr i8, ptr %17, i32 27560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i38.i, i32 %15) #5, !srcloc !18
  %or36 = select i1 %cpu_copy, i32 69632, i32 4096
  %shl54 = shl i32 %pgid, 4
  %and55 = and i32 %shl54, 1008
  %shl74 = shl i32 %type, 10
  %and75 = and i32 %shl74, 3072
  %or56 = or i32 %and55, %or36
  %or76 = or i32 %or56, %and75
  %or88 = or i32 %or76, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %18 = tail call i32 @llvm.bswap.i32(i32 %or88) #5
  %19 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i = getelementptr i8, ptr %20, i32 27568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i, i32 %18) #5, !srcloc !18
  %call.i = tail call i64 @ktime_get() #5
  %add.i.i = add i64 %call.i, 100000000
  %21 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i.i59.i = getelementptr i8, ptr %22, i32 27568
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i59.i) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %24 = and i32 %23, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp61.i = icmp eq i32 %24, 0
  br i1 %cmp61.i, label %entry.do.end43.thread.i_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.do.end43.thread.i_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end43.thread.i

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call15.i = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call15.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call15.i, %add.i.i
  br i1 %cmp3.i.i, label %do.end43.i, label %cond.false.i

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 2147480) #5
  %26 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i.i.i = getelementptr i8, ptr %27, i32 27568
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i.i) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %29 = and i32 %28, 251658240
  %cmp.i = icmp eq i32 %29, 0
  br i1 %cmp.i, label %cond.false.i.do.end43.thread.i_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

cond.false.i.do.end43.thread.i_crit_edge:         ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end43.thread.i

do.end43.i:                                       ; preds = %land.lhs.true.i
  %30 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i.i56.i = getelementptr i8, ptr %31, i32 27568
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i56.i) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %33 = and i32 %32, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp47.i = icmp eq i32 %33, 0
  br i1 %cmp47.i, label %do.end43.i.do.end43.thread.i_crit_edge, label %do.end43.i.lan966x_mac_wait_for_completion.exit_crit_edge

do.end43.i.lan966x_mac_wait_for_completion.exit_crit_edge: ; preds = %do.end43.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lan966x_mac_wait_for_completion.exit

do.end43.i.do.end43.thread.i_crit_edge:           ; preds = %do.end43.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end43.thread.i

do.end43.thread.i:                                ; preds = %do.end43.i.do.end43.thread.i_crit_edge, %cond.false.i.do.end43.thread.i_crit_edge, %entry.do.end43.thread.i_crit_edge
  br label %lan966x_mac_wait_for_completion.exit

lan966x_mac_wait_for_completion.exit:             ; preds = %do.end43.thread.i, %do.end43.i.lan966x_mac_wait_for_completion.exit_crit_edge
  %34 = phi i32 [ 0, %do.end43.thread.i ], [ -110, %do.end43.i.lan966x_mac_wait_for_completion.exit_crit_edge ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lan966x_mac_learn(ptr nocapture noundef readonly %lan966x, i32 noundef %port, ptr nocapture noundef readonly %mac, i32 noundef %vid, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %0 = icmp ugt i32 %type, 1
  br i1 %0, label %do.end, label %entry.if.end_crit_edge, !prof !16

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 111, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call = tail call fastcc i32 @__lan966x_mac_learn(ptr noundef %lan966x, i32 noundef %port, i1 noundef zeroext false, ptr noundef %mac, i32 noundef %vid, i32 noundef %type)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lan966x_mac_forget(ptr nocapture noundef readonly %lan966x, ptr nocapture noundef readonly %mac, i32 noundef %vid, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %shl.i = shl i32 %vid, 16
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mac, align 1
  %conv.i = zext i8 %1 to i32
  %shl1.i = shl nuw nsw i32 %conv.i, 8
  %or2.i = or i32 %shl1.i, %shl.i
  %arrayidx3.i = getelementptr i8, ptr %mac, i32 1
  %2 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %3 to i32
  %or6.i = or i32 %or2.i, %conv4.i
  %arrayidx7.i = getelementptr i8, ptr %mac, i32 2
  %4 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %5 to i32
  %shl9.i = shl nuw i32 %conv8.i, 24
  %arrayidx11.i = getelementptr i8, ptr %mac, i32 3
  %6 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx11.i, align 1
  %conv12.i = zext i8 %7 to i32
  %shl13.i = shl nuw nsw i32 %conv12.i, 16
  %or14.i = or i32 %shl13.i, %shl9.i
  %arrayidx15.i = getelementptr i8, ptr %mac, i32 4
  %8 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx15.i, align 1
  %conv16.i = zext i8 %9 to i32
  %shl17.i = shl nuw nsw i32 %conv16.i, 8
  %or18.i = or i32 %or14.i, %shl17.i
  %arrayidx19.i = getelementptr i8, ptr %mac, i32 5
  %10 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx19.i, align 1
  %conv20.i = zext i8 %11 to i32
  %or22.i = or i32 %or18.i, %conv20.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %12 = tail call i32 @llvm.bswap.i32(i32 %or22.i) #5
  %arrayidx.i.i.i = getelementptr %struct.lan966x, ptr %lan966x, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i.i = getelementptr i8, ptr %14, i32 27564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i.i, i32 %12) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %15 = tail call i32 @llvm.bswap.i32(i32 %or6.i) #5
  %16 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i38.i = getelementptr i8, ptr %17, i32 27560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i38.i, i32 %15) #5, !srcloc !18
  %shl = shl i32 %type, 10
  %and9 = and i32 %shl, 3072
  %or = or i32 %and9, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %18 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %19 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i = getelementptr i8, ptr %20, i32 27568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i, i32 %18) #5, !srcloc !18
  %call.i = tail call i64 @ktime_get() #5
  %add.i.i = add i64 %call.i, 100000000
  %21 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i.i59.i = getelementptr i8, ptr %22, i32 27568
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i59.i) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %24 = and i32 %23, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp61.i = icmp eq i32 %24, 0
  br i1 %cmp61.i, label %entry.do.end43.thread.i_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.do.end43.thread.i_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end43.thread.i

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call15.i = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call15.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call15.i, %add.i.i
  br i1 %cmp3.i.i, label %do.end43.i, label %cond.false.i

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 2147480) #5
  %26 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i.i.i = getelementptr i8, ptr %27, i32 27568
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i.i) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %29 = and i32 %28, 251658240
  %cmp.i = icmp eq i32 %29, 0
  br i1 %cmp.i, label %cond.false.i.do.end43.thread.i_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

cond.false.i.do.end43.thread.i_crit_edge:         ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end43.thread.i

do.end43.i:                                       ; preds = %land.lhs.true.i
  %30 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i.i56.i = getelementptr i8, ptr %31, i32 27568
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i56.i) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %33 = and i32 %32, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp47.i = icmp eq i32 %33, 0
  br i1 %cmp47.i, label %do.end43.i.do.end43.thread.i_crit_edge, label %do.end43.i.lan966x_mac_wait_for_completion.exit_crit_edge

do.end43.i.lan966x_mac_wait_for_completion.exit_crit_edge: ; preds = %do.end43.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lan966x_mac_wait_for_completion.exit

do.end43.i.do.end43.thread.i_crit_edge:           ; preds = %do.end43.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end43.thread.i

do.end43.thread.i:                                ; preds = %do.end43.i.do.end43.thread.i_crit_edge, %cond.false.i.do.end43.thread.i_crit_edge, %entry.do.end43.thread.i_crit_edge
  br label %lan966x_mac_wait_for_completion.exit

lan966x_mac_wait_for_completion.exit:             ; preds = %do.end43.thread.i, %do.end43.i.lan966x_mac_wait_for_completion.exit_crit_edge
  %34 = phi i32 [ 0, %do.end43.thread.i ], [ -110, %do.end43.i.lan966x_mac_wait_for_completion.exit_crit_edge ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lan966x_mac_cpu_learn(ptr nocapture noundef readonly %lan966x, ptr nocapture noundef readonly %addr, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %vid to i32
  %call.i = tail call fastcc i32 @__lan966x_mac_learn(ptr noundef %lan966x, i32 noundef 58, i1 noundef zeroext false, ptr noundef %addr, i32 noundef %conv, i32 noundef 1) #5
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lan966x_mac_cpu_forget(ptr nocapture noundef readonly %lan966x, ptr nocapture noundef readonly %addr, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %vid to i32
  %call = tail call i32 @lan966x_mac_forget(ptr noundef %lan966x, ptr noundef %addr, i32 noundef %conv, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lan966x_mac_set_ageing(ptr nocapture noundef readonly %lan966x, i32 noundef %ageing) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and11 = and i32 %ageing, 2097150
  %arrayidx.i.i = getelementptr %struct.lan966x, ptr %lan966x, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i = getelementptr i8, ptr %1, i32 29868
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !21
  %3 = and i32 %2, 16834815
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %or.i = or i32 %4, %and11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %5 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i3.i = getelementptr i8, ptr %7, i32 29868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i3.i, i32 %5) #5, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lan966x_mac_init(ptr noundef %lan966x) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %arrayidx.i.i = getelementptr %struct.lan966x, ptr %lan966x, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i = getelementptr i8, ptr %1, i32 27568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i, i32 83886080) #5, !srcloc !18
  %call.i = tail call i64 @ktime_get() #5
  %add.i.i = add i64 %call.i, 100000000
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i.i59.i = getelementptr i8, ptr %3, i32 27568
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i59.i) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %5 = and i32 %4, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp61.i = icmp eq i32 %5, 0
  br i1 %cmp61.i, label %entry.lan966x_mac_wait_for_completion.exit_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.lan966x_mac_wait_for_completion.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %lan966x_mac_wait_for_completion.exit

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call15.i = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call15.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call15.i, %add.i.i
  br i1 %cmp3.i.i, label %do.end43.i, label %cond.false.i

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 2147480) #5
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i.i.i = getelementptr i8, ptr %8, i32 27568
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i.i) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %10 = and i32 %9, 251658240
  %cmp.i = icmp eq i32 %10, 0
  br i1 %cmp.i, label %cond.false.i.lan966x_mac_wait_for_completion.exit_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

cond.false.i.lan966x_mac_wait_for_completion.exit_crit_edge: ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lan966x_mac_wait_for_completion.exit

do.end43.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i.i56.i = getelementptr i8, ptr %12, i32 27568
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i56.i) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  br label %lan966x_mac_wait_for_completion.exit

lan966x_mac_wait_for_completion.exit:             ; preds = %do.end43.i, %cond.false.i.lan966x_mac_wait_for_completion.exit_crit_edge, %entry.lan966x_mac_wait_for_completion.exit_crit_edge
  %mac_lock = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %mac_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @lan966x_mac_init.__key, i16 noundef signext 3) #5
  %mac_entries = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 9
  %14 = ptrtoint ptr %mac_entries to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %mac_entries, ptr %mac_entries, align 4
  %prev.i = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 9, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %mac_entries, ptr %prev.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lan966x_mac_add_entry(ptr noundef %lan966x, ptr nocapture noundef readonly %port, ptr noundef %addr, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  %info.i = alloca %struct.switchdev_notifier_fdb_info, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %vid to i32
  %shl.i.i = shl nuw i32 %conv, 16
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %addr, align 1
  %conv.i.i = zext i8 %1 to i32
  %shl1.i.i = shl nuw nsw i32 %conv.i.i, 8
  %or2.i.i = or i32 %shl1.i.i, %shl.i.i
  %arrayidx3.i.i = getelementptr i8, ptr %addr, i32 1
  %2 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx3.i.i, align 1
  %conv4.i.i = zext i8 %3 to i32
  %or6.i.i = or i32 %or2.i.i, %conv4.i.i
  %arrayidx7.i.i = getelementptr i8, ptr %addr, i32 2
  %4 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx7.i.i, align 1
  %conv8.i.i = zext i8 %5 to i32
  %shl9.i.i = shl nuw i32 %conv8.i.i, 24
  %arrayidx11.i.i = getelementptr i8, ptr %addr, i32 3
  %6 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx11.i.i, align 1
  %conv12.i.i = zext i8 %7 to i32
  %shl13.i.i = shl nuw nsw i32 %conv12.i.i, 16
  %or14.i.i = or i32 %shl13.i.i, %shl9.i.i
  %arrayidx15.i.i = getelementptr i8, ptr %addr, i32 4
  %8 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx15.i.i, align 1
  %conv16.i.i = zext i8 %9 to i32
  %shl17.i.i = shl nuw nsw i32 %conv16.i.i, 8
  %or18.i.i = or i32 %or14.i.i, %shl17.i.i
  %arrayidx19.i.i = getelementptr i8, ptr %addr, i32 5
  %10 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx19.i.i, align 1
  %conv20.i.i = zext i8 %11 to i32
  %or22.i.i = or i32 %or18.i.i, %conv20.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %12 = tail call i32 @llvm.bswap.i32(i32 %or22.i.i) #5
  %arrayidx.i.i.i.i = getelementptr %struct.lan966x, ptr %lan966x, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr82.i.i.i.i = getelementptr i8, ptr %14, i32 27564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i.i.i, i32 %12) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %15 = tail call i32 @llvm.bswap.i32(i32 %or6.i.i) #5
  %16 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr82.i.i38.i.i = getelementptr i8, ptr %17, i32 27560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i38.i.i, i32 %15) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr82.i.i.i = getelementptr i8, ptr %19, i32 27568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i.i, i32 101711872) #5, !srcloc !18
  %call.i.i = tail call i64 @ktime_get() #5
  %add.i.i.i = add i64 %call.i.i, 100000000
  %20 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr82.i.i.i59.i.i = getelementptr i8, ptr %21, i32 27568
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i59.i.i) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %23 = and i32 %22, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp61.i.i = icmp eq i32 %23, 0
  br i1 %cmp61.i.i, label %entry.lan966x_mac_lookup.exit_crit_edge, label %entry.land.lhs.true.i.i_crit_edge

entry.land.lhs.true.i.i_crit_edge:                ; preds = %entry
  br label %land.lhs.true.i.i

entry.lan966x_mac_lookup.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %lan966x_mac_lookup.exit

land.lhs.true.i.i:                                ; preds = %cond.false.i.i.land.lhs.true.i.i_crit_edge, %entry.land.lhs.true.i.i_crit_edge
  %call15.i.i = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call15.i.i, i64 %add.i.i.i)
  %cmp3.i.i.i = icmp sgt i64 %call15.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %do.end43.i.i, label %cond.false.i.i

cond.false.i.i:                                   ; preds = %land.lhs.true.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 2147480) #5
  %25 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr82.i.i.i.i.i = getelementptr i8, ptr %26, i32 27568
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i.i.i) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %28 = and i32 %27, 251658240
  %cmp.i.i = icmp eq i32 %28, 0
  br i1 %cmp.i.i, label %cond.false.i.i.lan966x_mac_lookup.exit_crit_edge, label %cond.false.i.i.land.lhs.true.i.i_crit_edge

cond.false.i.i.land.lhs.true.i.i_crit_edge:       ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i.i

cond.false.i.i.lan966x_mac_lookup.exit_crit_edge: ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lan966x_mac_lookup.exit

do.end43.i.i:                                     ; preds = %land.lhs.true.i.i
  %29 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr82.i.i.i56.i.i = getelementptr i8, ptr %30, i32 27568
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i56.i.i) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %32 = and i32 %31, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp47.i.i = icmp eq i32 %32, 0
  br i1 %cmp47.i.i, label %do.end43.i.i.lan966x_mac_lookup.exit_crit_edge, label %do.end43.i.i.cleanup_crit_edge

do.end43.i.i.cleanup_crit_edge:                   ; preds = %do.end43.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end43.i.i.lan966x_mac_lookup.exit_crit_edge:   ; preds = %do.end43.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lan966x_mac_lookup.exit

lan966x_mac_lookup.exit:                          ; preds = %do.end43.i.i.lan966x_mac_lookup.exit_crit_edge, %cond.false.i.i.lan966x_mac_lookup.exit_crit_edge, %entry.lan966x_mac_lookup.exit_crit_edge
  %33 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr82.i.i3.i = getelementptr i8, ptr %34, i32 27568
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i3.i) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %36 = and i32 %35, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not = icmp eq i32 %36, 0
  br i1 %tobool.not, label %if.end, label %lan966x_mac_lookup.exit.cleanup_crit_edge

lan966x_mac_lookup.exit.cleanup_crit_edge:        ; preds = %lan966x_mac_lookup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lan966x_mac_lookup.exit
  %chip_port = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 2
  %37 = ptrtoint ptr %chip_port to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %chip_port, align 4
  %conv1 = zext i8 %38 to i16
  %mac_lock.i = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %mac_lock.i) #5
  %mac_entries.i = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 9
  %39 = ptrtoint ptr %mac_entries.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %mac_entry.028.i = load ptr, ptr %mac_entries.i, align 4
  %cmp.not29.i = icmp eq ptr %mac_entry.028.i, %mac_entries.i
  br i1 %cmp.not29.i, label %if.end.lan966x_mac_find_entry.exit.thread_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.lan966x_mac_find_entry.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %lan966x_mac_find_entry.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %mac_entry.030.i = phi ptr [ %mac_entry.0.i, %for.inc.i.for.body.i_crit_edge ], [ %mac_entry.028.i, %if.end.for.body.i_crit_edge ]
  %vid2.i = getelementptr inbounds %struct.lan966x_mac_entry, ptr %mac_entry.030.i, i32 0, i32 2
  %40 = ptrtoint ptr %vid2.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %vid2.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %41, i16 %vid)
  %cmp4.i = icmp eq i16 %41, %vid
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %mac6.i = getelementptr inbounds %struct.lan966x_mac_entry, ptr %mac_entry.030.i, i32 0, i32 1
  %42 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %addr, align 4
  %44 = ptrtoint ptr %mac6.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mac6.i, align 4
  %xor.i.i = xor i32 %45, %43
  %46 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx15.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.lan966x_mac_entry, ptr %mac_entry.030.i, i32 0, i32 1, i32 4
  %48 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %49, %47
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i43 = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i43, label %land.lhs.true8.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %port_index9.i = getelementptr inbounds %struct.lan966x_mac_entry, ptr %mac_entry.030.i, i32 0, i32 3
  %50 = ptrtoint ptr %port_index9.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %port_index9.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %51, i16 %conv1)
  %cmp12.i = icmp eq i16 %51, %conv1
  br i1 %cmp12.i, label %lan966x_mac_find_entry.exit, label %land.lhs.true8.i.for.inc.i_crit_edge

land.lhs.true8.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true8.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %52 = ptrtoint ptr %mac_entry.030.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %mac_entry.0.i = load ptr, ptr %mac_entry.030.i, align 4
  %cmp.not.i = icmp eq ptr %mac_entry.0.i, %mac_entries.i
  br i1 %cmp.not.i, label %for.inc.i.lan966x_mac_find_entry.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.lan966x_mac_find_entry.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lan966x_mac_find_entry.exit.thread

lan966x_mac_find_entry.exit.thread:               ; preds = %for.inc.i.lan966x_mac_find_entry.exit.thread_crit_edge, %if.end.lan966x_mac_find_entry.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %mac_lock.i) #5
  br label %if.end9

lan966x_mac_find_entry.exit:                      ; preds = %land.lhs.true8.i
  tail call void @_raw_spin_unlock(ptr noundef %mac_lock.i) #5
  %tobool3.not = icmp eq ptr %mac_entry.030.i, null
  br i1 %tobool3.not, label %lan966x_mac_find_entry.exit.if.end9_crit_edge, label %if.then4

lan966x_mac_find_entry.exit.if.end9_crit_edge:    ; preds = %lan966x_mac_find_entry.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then4:                                         ; preds = %lan966x_mac_find_entry.exit
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %chip_port to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %chip_port, align 4
  %conv6 = zext i8 %54 to i32
  %call.i = tail call fastcc i32 @__lan966x_mac_learn(ptr noundef %lan966x, i32 noundef %conv6, i1 noundef zeroext false, ptr noundef %addr, i32 noundef %conv, i32 noundef 1) #5
  br label %cleanup

if.end9:                                          ; preds = %lan966x_mac_find_entry.exit.if.end9_crit_edge, %lan966x_mac_find_entry.exit.thread
  %55 = ptrtoint ptr %chip_port to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %chip_port, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %57 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %57, i32 noundef 3520, i32 noundef 24) #8
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end9.cleanup_crit_edge, label %if.end15

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %conv11 = zext i8 %56 to i16
  %mac1.i = getelementptr inbounds %struct.lan966x_mac_entry, ptr %call7.i.i.i, i32 0, i32 1
  %58 = call ptr @memcpy(ptr %mac1.i, ptr %addr, i32 6)
  %vid2.i44 = getelementptr inbounds %struct.lan966x_mac_entry, ptr %call7.i.i.i, i32 0, i32 2
  %59 = ptrtoint ptr %vid2.i44 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %vid, ptr %vid2.i44, align 2
  %port_index3.i = getelementptr inbounds %struct.lan966x_mac_entry, ptr %call7.i.i.i, i32 0, i32 3
  %60 = ptrtoint ptr %port_index3.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv11, ptr %port_index3.i, align 8
  %row.i = getelementptr inbounds %struct.lan966x_mac_entry, ptr %call7.i.i.i, i32 0, i32 4
  %61 = ptrtoint ptr %row.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %row.i, align 4
  tail call void @_raw_spin_lock(ptr noundef %mac_lock.i) #5
  %prev.i = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 9, i32 1
  %62 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev.i, align 4
  %call.i.i45 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %63, ptr noundef %mac_entries.i) #5
  br i1 %call.i.i45, label %if.end.i.i, label %if.end15.list_add_tail.exit_crit_edge

if.end15.list_add_tail.exit_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %64 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call7.i.i.i, ptr %prev.i, align 4
  %65 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %mac_entries.i, ptr %call7.i.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %66 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev3.i.i, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %call7.i.i.i, ptr %63, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end15.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %mac_lock.i) #5
  %68 = ptrtoint ptr %chip_port to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %chip_port, align 4
  %conv18 = zext i8 %69 to i32
  %call.i46 = tail call fastcc i32 @__lan966x_mac_learn(ptr noundef %lan966x, i32 noundef %conv18, i1 noundef zeroext false, ptr noundef %addr, i32 noundef %conv, i32 noundef 1) #5
  %70 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %port, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %info.i) #5
  %72 = call ptr @memset(ptr %info.i, i32 0, i32 20)
  %addr.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info.i, i32 0, i32 1
  %73 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %addr, ptr %addr.i, align 4
  %vid1.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info.i, i32 0, i32 2
  %74 = ptrtoint ptr %vid1.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %vid, ptr %vid1.i, align 4
  %offloaded.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info.i, i32 0, i32 3
  %75 = ptrtoint ptr %offloaded.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 32, ptr %offloaded.i, align 2
  %call.i48 = call i32 @call_switchdev_notifiers(i32 noundef 5, ptr noundef %71, ptr noundef nonnull %info.i, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %info.i) #5
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.end9.cleanup_crit_edge, %if.then4, %lan966x_mac_lookup.exit.cleanup_crit_edge, %do.end43.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then4 ], [ 0, %list_add_tail.exit ], [ 0, %lan966x_mac_lookup.exit.cleanup_crit_edge ], [ 0, %do.end43.i.i.cleanup_crit_edge ], [ -12, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lan966x_mac_del_entry(ptr noundef %lan966x, ptr nocapture noundef readonly %addr, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_lock = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %mac_lock) #5
  %mac_entries = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 9
  %0 = ptrtoint ptr %mac_entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_entries, align 4
  %cmp.not38 = icmp eq ptr %1, %mac_entries
  br i1 %cmp.not38, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %addr, i32 4
  %conv16 = zext i16 %vid to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %mac_entry.039 = phi ptr [ %1, %for.body.lr.ph ], [ %tmp.041, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %mac_entry.039 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.041 = load ptr, ptr %mac_entry.039, align 4
  %vid8 = getelementptr inbounds %struct.lan966x_mac_entry, ptr %mac_entry.039, i32 0, i32 2
  %3 = ptrtoint ptr %vid8 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %vid8, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %vid)
  %cmp10 = icmp eq i16 %4, %vid
  br i1 %cmp10, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %mac = getelementptr inbounds %struct.lan966x_mac_entry, ptr %mac_entry.039, i32 0, i32 1
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr, align 4
  %7 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mac, align 4
  %xor.i = xor i32 %8, %6
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.lan966x_mac_entry, ptr %mac_entry.039, i32 0, i32 1, i32 4
  %11 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %12, %10
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %call17 = tail call i32 @lan966x_mac_forget(ptr noundef %lan966x, ptr noundef %mac, i32 noundef %conv16, i32 noundef 1)
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mac_entry.039) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mac_entry.039, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %mac_entry.039 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mac_entry.039, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %19 = ptrtoint ptr %mac_entry.039 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %mac_entry.039, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %mac_entry.039, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %mac_entry.039) #5
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %tmp.041, %mac_entries
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %mac_lock) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lan966x_mac_purge_entries(ptr noundef %lan966x) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_lock = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %mac_lock) #5
  %mac_entries = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 9
  %0 = ptrtoint ptr %mac_entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_entries, align 4
  %cmp.not25 = icmp eq ptr %1, %mac_entries
  br i1 %cmp.not25, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %mac_entry.026 = phi ptr [ %tmp.0, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %mac_entry.026 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0 = load ptr, ptr %mac_entry.026, align 4
  %mac = getelementptr inbounds %struct.lan966x_mac_entry, ptr %mac_entry.026, i32 0, i32 1
  %vid = getelementptr inbounds %struct.lan966x_mac_entry, ptr %mac_entry.026, i32 0, i32 2
  %3 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %vid, align 2
  %conv = zext i16 %4 to i32
  %call = tail call i32 @lan966x_mac_forget(ptr noundef %lan966x, ptr noundef %mac, i32 noundef %conv, i32 noundef 1)
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mac_entry.026) #5
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mac_entry.026, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %mac_entry.026 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mac_entry.026, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %11 = ptrtoint ptr %mac_entry.026 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %mac_entry.026, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %mac_entry.026, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %mac_entry.026) #5
  %cmp.not = icmp eq ptr %tmp.0, %mac_entries
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %mac_lock) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lan966x_mac_irq_handler(ptr noundef %lan966x) local_unnamed_addr #0 align 64 {
entry:
  %info.i.i252.i = alloca %struct.switchdev_notifier_fdb_info, align 4
  %info.i.i.i = alloca %struct.switchdev_notifier_fdb_info, align 4
  %mac.i = alloca [6 x i8], align 4
  %entry1 = alloca [4 x %struct.lan966x_mac_raw_entry], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %entry1) #5
  %0 = call ptr @memset(ptr %entry1, i32 0, i32 64)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %arrayidx.i.i = getelementptr %struct.lan966x, ptr %lan966x, i32 0, i32 3, i32 3
  %1 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i = getelementptr i8, ptr %2, i32 27572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i, i32 0) #5, !srcloc !18
  %3 = getelementptr inbounds [6 x i8], ptr %mac.i, i32 0, i32 1
  %4 = getelementptr inbounds [6 x i8], ptr %mac.i, i32 0, i32 2
  %5 = getelementptr inbounds [6 x i8], ptr %mac.i, i32 0, i32 3
  %6 = getelementptr inbounds [6 x i8], ptr %mac.i, i32 0, i32 4
  %7 = getelementptr inbounds [6 x i8], ptr %mac.i, i32 0, i32 5
  %mac_lock.i = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 10
  %mac_entries.i = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 9
  %num_phys_ports.i = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 1
  %ports.i = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 2
  %addr.i.i.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info.i.i.i, i32 0, i32 1
  %vid1.i.i.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info.i.i.i, i32 0, i32 2
  %offloaded.i.i.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info.i.i.i, i32 0, i32 3
  %prev.i249.i = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 9, i32 1
  %addr.i.i253.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info.i.i252.i, i32 0, i32 1
  %vid1.i.i254.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info.i.i252.i, i32 0, i32 2
  %offloaded.i.i255.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info.i.i252.i, i32 0, i32 3
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %stop.0.off0 = phi i1 [ true, %entry ], [ %stop.0.off0.be, %while.cond.backedge ]
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i134 = getelementptr i8, ptr %9, i32 27568
  %10 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i134) #5, !srcloc !19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !21
  %11 = and i32 %10, -251658241
  %12 = or i32 %11, 134217728
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @arm_heavy_mb() #5
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i3.i = getelementptr i8, ptr %14, i32 27568
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i3.i, i32 %12) #5, !srcloc !18
  %call.i = call i64 @ktime_get() #5
  %add.i.i = add i64 %call.i, 100000000
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i.i59.i = getelementptr i8, ptr %16, i32 27568
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i59.i) #5, !srcloc !19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %18 = and i32 %17, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp61.i = icmp eq i32 %18, 0
  br i1 %cmp61.i, label %while.cond.lan966x_mac_wait_for_completion.exit_crit_edge, label %while.cond.land.lhs.true.i_crit_edge

while.cond.land.lhs.true.i_crit_edge:             ; preds = %while.cond
  br label %land.lhs.true.i

while.cond.lan966x_mac_wait_for_completion.exit_crit_edge: ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %lan966x_mac_wait_for_completion.exit

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %while.cond.land.lhs.true.i_crit_edge
  %call15.i = call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call15.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call15.i, %add.i.i
  br i1 %cmp3.i.i, label %do.end43.i, label %cond.false.i

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %19(i32 noundef 2147480) #5
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i.i.i = getelementptr i8, ptr %21, i32 27568
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i.i) #5, !srcloc !19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %23 = and i32 %22, 251658240
  %cmp.i = icmp eq i32 %23, 0
  br i1 %cmp.i, label %cond.false.i.lan966x_mac_wait_for_completion.exit_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

cond.false.i.lan966x_mac_wait_for_completion.exit_crit_edge: ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lan966x_mac_wait_for_completion.exit

do.end43.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i.i56.i = getelementptr i8, ptr %25, i32 27568
  %26 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i56.i) #5, !srcloc !19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  br label %lan966x_mac_wait_for_completion.exit

lan966x_mac_wait_for_completion.exit:             ; preds = %do.end43.i, %cond.false.i.lan966x_mac_wait_for_completion.exit_crit_edge, %while.cond.lan966x_mac_wait_for_completion.exit_crit_edge
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i137 = getelementptr i8, ptr %28, i32 27572
  %29 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i137) #5, !srcloc !19
  %30 = call i32 @llvm.bswap.i32(i32 %29) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %and = and i32 %30, 2047
  %and79 = lshr i32 %30, 11
  %shr80 = and i32 %and79, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr80)
  %cmp81 = icmp ne i32 %shr80, 0
  %not.cmp = xor i1 %cmp, true
  %or.cond = select i1 %not.cmp, i1 true, i1 %cmp81
  %spec.select = select i1 %or.cond, i1 %stop.0.off0, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr80)
  %cmp82 = icmp eq i32 %shr80, 3
  %31 = select i1 %cmp82, i1 %cmp, i1 false
  %32 = select i1 %31, i1 %spec.select, i1 false
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i.i, align 4
  br i1 %32, label %do.end110, label %if.end87

if.end87:                                         ; preds = %lan966x_mac_wait_for_completion.exit
  %add.ptr82.i.i140 = getelementptr i8, ptr %34, i32 27560
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i140) #5, !srcloc !19
  %36 = call i32 @llvm.bswap.i32(i32 %35) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %arrayidx = getelementptr [4 x %struct.lan966x_mac_raw_entry], ptr %entry1, i32 0, i32 %shr80
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx, align 4
  %38 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i143 = getelementptr i8, ptr %39, i32 27564
  %40 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i143) #5, !srcloc !19
  %41 = call i32 @llvm.bswap.i32(i32 %40) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %macl = getelementptr [4 x %struct.lan966x_mac_raw_entry], ptr %entry1, i32 0, i32 %shr80, i32 1
  %42 = ptrtoint ptr %macl to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %macl, align 4
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i146 = getelementptr i8, ptr %44, i32 27568
  %45 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i146) #5, !srcloc !19
  %46 = call i32 @llvm.bswap.i32(i32 %45) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %maca = getelementptr [4 x %struct.lan966x_mac_raw_entry], ptr %entry1, i32 0, i32 %shr80, i32 2
  %47 = ptrtoint ptr %maca to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %maca, align 4
  br i1 %cmp82, label %if.then94, label %if.end87.while.cond.backedge_crit_edge

if.end87.while.cond.backedge_crit_edge:           ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge

if.then94:                                        ; preds = %if.end87
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac.i) #5
  %48 = call ptr @memset(ptr %mac.i, i32 255, i32 6)
  call void @_raw_spin_lock(ptr noundef %mac_lock.i) #5
  %49 = ptrtoint ptr %mac_entries.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mac_entries.i, align 4
  %cmp.not267.i = icmp eq ptr %50, %mac_entries.i
  br i1 %cmp.not267.i, label %if.then94.for.end89.i_crit_edge, label %if.then94.for.body.i_crit_edge

if.then94.for.body.i_crit_edge:                   ; preds = %if.then94
  br label %for.body.i

if.then94.for.end89.i_crit_edge:                  ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end89.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.then94.for.body.i_crit_edge
  %mac_entry.0268.i = phi ptr [ %tmp.0270.i, %cleanup.i.for.body.i_crit_edge ], [ %50, %if.then94.for.body.i_crit_edge ]
  %51 = ptrtoint ptr %mac_entry.0268.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %tmp.0270.i = load ptr, ptr %mac_entry.0268.i, align 4
  %row8.i = getelementptr inbounds %struct.lan966x_mac_entry, ptr %mac_entry.0268.i, i32 0, i32 4
  %52 = ptrtoint ptr %row8.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %row8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %and)
  %cmp9.not.i = icmp eq i32 %53, %and
  br i1 %cmp9.not.i, label %for.cond10.preheader.i, label %for.body.i.cleanup.i_crit_edge

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

for.cond10.preheader.i:                           ; preds = %for.body.i
  %vid57.i = getelementptr inbounds %struct.lan966x_mac_entry, ptr %mac_entry.0268.i, i32 0, i32 2
  %mac62.i = getelementptr inbounds %struct.lan966x_mac_entry, ptr %mac_entry.0268.i, i32 0, i32 1
  %add.ptr.i.i147 = getelementptr %struct.lan966x_mac_entry, ptr %mac_entry.0268.i, i32 0, i32 1, i32 4
  %port_index.i = getelementptr inbounds %struct.lan966x_mac_entry, ptr %mac_entry.0268.i, i32 0, i32 3
  br label %do.end24.i

do.end24.i:                                       ; preds = %for.inc.i.do.end24.i_crit_edge, %for.cond10.preheader.i
  %column.0264.i = phi i32 [ 0, %for.cond10.preheader.i ], [ %inc.i, %for.inc.i.do.end24.i_crit_edge ]
  %maca.i = getelementptr %struct.lan966x_mac_raw_entry, ptr %entry1, i32 %column.0264.i, i32 2
  %54 = ptrtoint ptr %maca.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %maca.i, align 4
  %56 = and i32 %55, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i = icmp eq i32 %56, 0
  br i1 %tobool.not.i, label %do.end24.i.if.then74.i_crit_edge, label %if.end27.i

do.end24.i.if.then74.i_crit_edge:                 ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then74.i

if.end27.i:                                       ; preds = %do.end24.i
  %arrayidx.i = getelementptr %struct.lan966x_mac_raw_entry, ptr %entry1, i32 %column.0264.i
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.i, align 4
  %shr.i.i = lshr i32 %58, 8
  %conv.i.i = trunc i32 %shr.i.i to i8
  %59 = ptrtoint ptr %mac.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv.i.i, ptr %mac.i, align 4
  %conv4.i.i = trunc i32 %58 to i8
  %60 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv4.i.i, ptr %3, align 1
  %macl.i.i = getelementptr %struct.lan966x_mac_raw_entry, ptr %entry1, i32 %column.0264.i, i32 1
  %61 = ptrtoint ptr %macl.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %macl.i.i, align 4
  %shr6.i.i = lshr i32 %62, 24
  %conv8.i.i = trunc i32 %shr6.i.i to i8
  %63 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv8.i.i, ptr %4, align 2
  %shr11.i.i = lshr i32 %62, 16
  %conv13.i.i = trunc i32 %shr11.i.i to i8
  %64 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv13.i.i, ptr %5, align 1
  %shr16.i.i = lshr i32 %62, 8
  %conv18.i.i = trunc i32 %shr16.i.i to i8
  %65 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv18.i.i, ptr %6, align 4
  %conv23.i.i = trunc i32 %62 to i8
  %66 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv23.i.i, ptr %7, align 1
  %shr26.i.i = lshr i32 %58, 16
  %67 = trunc i32 %shr26.i.i to i16
  %conv28.i.i = and i16 %67, 4095
  %and37.i.i = lshr i32 %55, 4
  %shr38.i.i = and i32 %and37.i.i, 63
  %68 = ptrtoint ptr %num_phys_ports.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %num_phys_ports.i, align 4
  %conv.i = zext i8 %69 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr38.i.i, i32 %conv.i)
  %cmp29.i = icmp ugt i32 %shr38.i.i, %conv.i
  br i1 %cmp29.i, label %do.end43.i148, label %if.end27.i.if.end49.i_crit_edge, !prof !16

if.end27.i.if.end49.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49.i

do.end43.i148:                                    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 349, i32 noundef 9, ptr noundef null) #5
  br label %if.end49.i

if.end49.i:                                       ; preds = %do.end43.i148, %if.end27.i.if.end49.i_crit_edge
  %70 = ptrtoint ptr %vid57.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %vid57.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %71, i16 %conv28.i.i)
  %cmp60.i = icmp eq i16 %71, %conv28.i.i
  br i1 %cmp60.i, label %land.lhs.true.i149, label %if.end49.i.for.inc.i_crit_edge

if.end49.i.for.inc.i_crit_edge:                   ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i149:                               ; preds = %if.end49.i
  %72 = ptrtoint ptr %mac62.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %mac62.i, align 4
  %74 = ptrtoint ptr %mac.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %mac.i, align 4
  %xor.i.i = xor i32 %75, %73
  %76 = ptrtoint ptr %add.ptr.i.i147 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %add.ptr.i.i147, align 2
  %78 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %6, align 4
  %xor37.i.i = xor i16 %79, %77
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true66.i, label %land.lhs.true.i149.for.inc.i_crit_edge

land.lhs.true.i149.for.inc.i_crit_edge:           ; preds = %land.lhs.true.i149
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true66.i:                                ; preds = %land.lhs.true.i149
  %80 = ptrtoint ptr %port_index.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %port_index.i, align 4
  %conv67.i = zext i16 %81 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr38.i.i, i32 %conv67.i)
  %cmp68.i = icmp eq i32 %shr38.i.i, %conv67.i
  br i1 %cmp68.i, label %if.then70.i, label %land.lhs.true66.i.for.inc.i_crit_edge

land.lhs.true66.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true66.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then70.i:                                      ; preds = %land.lhs.true66.i
  call void @__sanitizer_cov_trace_pc() #7
  %processed.i = getelementptr %struct.lan966x_mac_raw_entry, ptr %entry1, i32 %column.0264.i, i32 3
  %82 = ptrtoint ptr %processed.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %processed.i, align 4
  br label %cleanup.i

for.inc.i:                                        ; preds = %land.lhs.true66.i.for.inc.i_crit_edge, %land.lhs.true.i149.for.inc.i_crit_edge, %if.end49.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %column.0264.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4
  br i1 %exitcond.not.i, label %for.inc.i.if.then74.i_crit_edge, label %for.inc.i.do.end24.i_crit_edge

for.inc.i.do.end24.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end24.i

for.inc.i.if.then74.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then74.i

if.then74.i:                                      ; preds = %for.inc.i.if.then74.i_crit_edge, %do.end24.i.if.then74.i_crit_edge
  %83 = ptrtoint ptr %vid57.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %vid57.i, align 2
  %85 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ports.i, align 4
  %87 = ptrtoint ptr %port_index.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %port_index.i, align 4
  %idxprom.i = zext i16 %88 to i32
  %arrayidx80.i = getelementptr ptr, ptr %86, i32 %idxprom.i
  %89 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx80.i, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 4
  call void @rtnl_lock() #5
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %info.i.i.i) #5
  %93 = call ptr @memset(ptr %info.i.i.i, i32 0, i32 20)
  %94 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %mac62.i, ptr %addr.i.i.i, align 4
  %95 = ptrtoint ptr %vid1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %84, ptr %vid1.i.i.i, align 4
  %96 = ptrtoint ptr %offloaded.i.i.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 32, ptr %offloaded.i.i.i, align 2
  %call.i.i.i = call i32 @call_switchdev_notifiers(i32 noundef 2, ptr noundef %92, ptr noundef nonnull %info.i.i.i, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %info.i.i.i) #5
  call void @rtnl_unlock() #5
  %call.i.i227.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %mac_entry.0268.i) #5
  br i1 %call.i.i227.i, label %if.end.i.i.i, label %if.then74.i.list_del.exit.i_crit_edge

if.then74.i.list_del.exit.i_crit_edge:            ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %mac_entry.0268.i, i32 0, i32 1
  %97 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %prev.i.i.i, align 4
  %99 = ptrtoint ptr %mac_entry.0268.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mac_entry.0268.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %98, ptr %prev1.i.i.i.i, align 4
  %102 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile ptr %100, ptr %98, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then74.i.list_del.exit.i_crit_edge
  %103 = ptrtoint ptr %mac_entry.0268.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr inttoptr (i32 256 to ptr), ptr %mac_entry.0268.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mac_entry.0268.i, i32 0, i32 1
  %104 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @kfree(ptr noundef %mac_entry.0268.i) #5
  br label %cleanup.i

cleanup.i:                                        ; preds = %list_del.exit.i, %if.then70.i, %for.body.i.cleanup.i_crit_edge
  %cmp.not.i = icmp eq ptr %tmp.0270.i, %mac_entries.i
  br i1 %cmp.not.i, label %cleanup.i.for.end89.i_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

cleanup.i.for.end89.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end89.i

for.end89.i:                                      ; preds = %cleanup.i.for.end89.i_crit_edge, %if.then94.for.end89.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %mac_lock.i) #5
  br label %do.end109.i

do.end109.i:                                      ; preds = %for.inc175.i.do.end109.i_crit_edge, %for.end89.i
  %column.1271.i = phi i32 [ 0, %for.end89.i ], [ %inc176.i, %for.inc175.i.do.end109.i_crit_edge ]
  %arrayidx111.i = getelementptr %struct.lan966x_mac_raw_entry, ptr %entry1, i32 %column.1271.i
  %maca112.i = getelementptr %struct.lan966x_mac_raw_entry, ptr %entry1, i32 %column.1271.i, i32 2
  %105 = ptrtoint ptr %maca112.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %maca112.i, align 4
  %107 = and i32 %106, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool115.not.i = icmp eq i32 %107, 0
  br i1 %tobool115.not.i, label %do.end109.i.lan966x_mac_irq_process.exit_crit_edge, label %if.end117.i

do.end109.i.lan966x_mac_irq_process.exit_crit_edge: ; preds = %do.end109.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lan966x_mac_irq_process.exit

if.end117.i:                                      ; preds = %do.end109.i
  %processed119.i = getelementptr %struct.lan966x_mac_raw_entry, ptr %entry1, i32 %column.1271.i, i32 3
  %108 = ptrtoint ptr %processed119.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %processed119.i, align 4, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool120.not.i = icmp eq i8 %109, 0
  br i1 %tobool120.not.i, label %if.end122.i, label %if.end117.i.for.inc175.i_crit_edge

if.end117.i.for.inc175.i_crit_edge:               ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc175.i

if.end122.i:                                      ; preds = %if.end117.i
  %110 = ptrtoint ptr %arrayidx111.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx111.i, align 4
  %shr.i228.i = lshr i32 %111, 8
  %conv.i229.i = trunc i32 %shr.i228.i to i8
  %112 = ptrtoint ptr %mac.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %conv.i229.i, ptr %mac.i, align 4
  %conv4.i230.i = trunc i32 %111 to i8
  %113 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %conv4.i230.i, ptr %3, align 1
  %macl.i232.i = getelementptr %struct.lan966x_mac_raw_entry, ptr %entry1, i32 %column.1271.i, i32 1
  %114 = ptrtoint ptr %macl.i232.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %macl.i232.i, align 4
  %shr6.i233.i = lshr i32 %115, 24
  %conv8.i234.i = trunc i32 %shr6.i233.i to i8
  %116 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %conv8.i234.i, ptr %4, align 2
  %shr11.i236.i = lshr i32 %115, 16
  %conv13.i237.i = trunc i32 %shr11.i236.i to i8
  %117 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %conv13.i237.i, ptr %5, align 1
  %shr16.i239.i = lshr i32 %115, 8
  %conv18.i240.i = trunc i32 %shr16.i239.i to i8
  %118 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv18.i240.i, ptr %6, align 4
  %conv23.i242.i = trunc i32 %115 to i8
  %119 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv23.i242.i, ptr %7, align 1
  %shr26.i244.i = lshr i32 %111, 16
  %120 = trunc i32 %shr26.i244.i to i16
  %conv28.i245.i = and i16 %120, 4095
  %and37.i247.i = lshr i32 %106, 4
  %shr38.i248.i = and i32 %and37.i247.i, 63
  %121 = ptrtoint ptr %num_phys_ports.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %num_phys_ports.i, align 4
  %conv127.i = zext i8 %122 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr38.i248.i, i32 %conv127.i)
  %cmp128.i = icmp ugt i32 %shr38.i248.i, %conv127.i
  br i1 %cmp128.i, label %do.end145.i, label %if.end122.i.if.end151.i_crit_edge, !prof !16

if.end122.i.if.end151.i_crit_edge:                ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end151.i

do.end145.i:                                      ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 395, i32 noundef 9, ptr noundef null) #5
  br label %if.end151.i

if.end151.i:                                      ; preds = %do.end145.i, %if.end122.i.if.end151.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %123 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %123, i32 noundef 3520, i32 noundef 24) #8
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end151.i.lan966x_mac_irq_process.exit_crit_edge, label %if.end164.i

if.end151.i.lan966x_mac_irq_process.exit_crit_edge: ; preds = %if.end151.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lan966x_mac_irq_process.exit

if.end164.i:                                      ; preds = %if.end151.i
  %conv160.i = trunc i32 %shr38.i248.i to i16
  %mac1.i.i = getelementptr inbounds %struct.lan966x_mac_entry, ptr %call7.i.i.i.i, i32 0, i32 1
  %124 = call ptr @memcpy(ptr %mac1.i.i, ptr %mac.i, i32 6)
  %vid2.i.i = getelementptr inbounds %struct.lan966x_mac_entry, ptr %call7.i.i.i.i, i32 0, i32 2
  %125 = ptrtoint ptr %vid2.i.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %conv28.i245.i, ptr %vid2.i.i, align 2
  %port_index3.i.i = getelementptr inbounds %struct.lan966x_mac_entry, ptr %call7.i.i.i.i, i32 0, i32 3
  %126 = ptrtoint ptr %port_index3.i.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %conv160.i, ptr %port_index3.i.i, align 8
  %row165.i = getelementptr inbounds %struct.lan966x_mac_entry, ptr %call7.i.i.i.i, i32 0, i32 4
  %127 = ptrtoint ptr %row165.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %and, ptr %row165.i, align 4
  call void @_raw_spin_lock(ptr noundef %mac_lock.i) #5
  %128 = ptrtoint ptr %prev.i249.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %prev.i249.i, align 4
  %call.i.i250.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %129, ptr noundef %mac_entries.i) #5
  br i1 %call.i.i250.i, label %if.end.i.i251.i, label %if.end164.i.list_add_tail.exit.i_crit_edge

if.end164.i.list_add_tail.exit.i_crit_edge:       ; preds = %if.end164.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit.i

if.end.i.i251.i:                                  ; preds = %if.end164.i
  call void @__sanitizer_cov_trace_pc() #7
  %130 = ptrtoint ptr %prev.i249.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %call7.i.i.i.i, ptr %prev.i249.i, align 4
  %131 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %mac_entries.i, ptr %call7.i.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %132 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %129, ptr %prev3.i.i.i, align 4
  %133 = ptrtoint ptr %129 to i32
  call void @__asan_store4_noabort(i32 %133)
  store volatile ptr %call7.i.i.i.i, ptr %129, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i251.i, %if.end164.i.list_add_tail.exit.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %mac_lock.i) #5
  %134 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %ports.i, align 4
  %arrayidx173.i = getelementptr ptr, ptr %135, i32 %shr38.i248.i
  %136 = ptrtoint ptr %arrayidx173.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %arrayidx173.i, align 4
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %137, align 4
  call void @rtnl_lock() #5
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %info.i.i252.i) #5
  %140 = call ptr @memset(ptr %info.i.i252.i, i32 0, i32 20)
  %141 = ptrtoint ptr %addr.i.i253.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %mac.i, ptr %addr.i.i253.i, align 4
  %142 = ptrtoint ptr %vid1.i.i254.i to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 %conv28.i245.i, ptr %vid1.i.i254.i, align 4
  %143 = ptrtoint ptr %offloaded.i.i255.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 32, ptr %offloaded.i.i255.i, align 2
  %call.i.i256.i = call i32 @call_switchdev_notifiers(i32 noundef 1, ptr noundef %139, ptr noundef nonnull %info.i.i252.i, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %info.i.i252.i) #5
  call void @rtnl_unlock() #5
  br label %for.inc175.i

for.inc175.i:                                     ; preds = %list_add_tail.exit.i, %if.end117.i.for.inc175.i_crit_edge
  %inc176.i = add nuw nsw i32 %column.1271.i, 1
  %exitcond274.not.i = icmp eq i32 %inc176.i, 4
  br i1 %exitcond274.not.i, label %for.inc175.i.lan966x_mac_irq_process.exit_crit_edge, label %for.inc175.i.do.end109.i_crit_edge

for.inc175.i.do.end109.i_crit_edge:               ; preds = %for.inc175.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end109.i

for.inc175.i.lan966x_mac_irq_process.exit_crit_edge: ; preds = %for.inc175.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lan966x_mac_irq_process.exit

lan966x_mac_irq_process.exit:                     ; preds = %for.inc175.i.lan966x_mac_irq_process.exit_crit_edge, %if.end151.i.lan966x_mac_irq_process.exit_crit_edge, %do.end109.i.lan966x_mac_irq_process.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac.i) #5
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %lan966x_mac_irq_process.exit, %if.end87.while.cond.backedge_crit_edge
  %stop.0.off0.be = phi i1 [ true, %lan966x_mac_irq_process.exit ], [ %spec.select, %if.end87.while.cond.backedge_crit_edge ]
  br label %while.cond

do.end110:                                        ; preds = %lan966x_mac_wait_for_completion.exit
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr82.i.i152 = getelementptr i8, ptr %34, i32 29840
  %144 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i152) #5, !srcloc !19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !21
  %145 = and i32 %144, -33554433
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @arm_heavy_mb() #5
  %146 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i3.i155 = getelementptr i8, ptr %147, i32 29840
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i3.i155, i32 %145) #5, !srcloc !18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %entry1) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_switchdev_notifiers(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_mac.c", i32 101, i32 2}
!2 = !{ptr @lan966x_mac_init.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_mac.c", i32 155, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_main.h", i32 238, i32 2}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{i64 2157797228}
!18 = !{i64 6551701}
!19 = !{i64 6552119}
!20 = !{i64 2157796750}
!21 = !{i64 2157798505}
!22 = !{i64 2157798808}
!23 = !{i8 0, i8 2}
