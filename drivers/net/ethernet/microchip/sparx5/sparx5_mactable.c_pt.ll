; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/microchip/sparx5/sparx5_mactable.c_pt.bc'
source_filename = "../drivers/net/ethernet/microchip/sparx5/sparx5_mactable.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.sparx5_rx = type { ptr, ptr, [64 x [15 x ptr]], i32, i32, i32, %struct.napi_struct, i32, ptr, i64 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.sparx5_tx = type { ptr, ptr, %struct.list_head, i32, i32, i64, i64 }
%struct.switchdev_notifier_fdb_info = type { %struct.switchdev_notifier_info, ptr, i16, i8 }
%struct.switchdev_notifier_info = type { ptr, ptr, ptr }
%struct.sparx5_port = type { ptr, ptr, ptr, ptr, %struct.sparx5_port_config, %struct.phylink_config, ptr, %struct.phylink_pcs, i16, i16, i16, i8, i8, i8, i8, i32, i32, i32, [9 x i32], i8, %struct.hrtimer }
%struct.sparx5_port_config = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.phylink_pcs = type { ptr, i8 }
%struct.sparx5_mact_entry = type { %struct.list_head, [6 x i8], i32, i16, i16 }

@sparx5_mact_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&sparx5->lock\00", [18 x i8] zeroinitializer }, align 32
@sparx5_mact_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 497, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MAC flush error\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sparx5_mact_init\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"drivers/net/ethernet/microchip/sparx5/sparx5_mactable.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sparx5_mact_init._entry_ptr = internal global ptr @sparx5_mact_init._entry, section ".printk_index", align 4
@sparx5_mact_handle_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 385, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Entry move: %d -> %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sparx5_mact_handle_entry\00", [39 x i8] zeroinitializer }, align 32
@sparx5_mact_handle_entry._entry_ptr = internal global ptr @sparx5_mact_handle_entry._entry, section ".printk_index", align 4
@___asan_gen_.9 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 489, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 497, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.40 = private constant [59 x i8] c"../drivers/net/ethernet/microchip/sparx5/sparx5_mactable.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 384, i32 5 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @sparx5_mact_handle_entry._entry, ptr @sparx5_mact_handle_entry._entry_ptr, ptr @sparx5_mact_init._entry, ptr @sparx5_mact_init._entry_ptr, ptr @sparx5_mact_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_mact_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_mact_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_mact_handle_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sparx5_mact_learn(ptr noundef %sparx5, i32 noundef %pgid, ptr nocapture noundef readonly %mac, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %conv.i = zext i16 %vid to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mac, align 1
  %conv1.i = zext i8 %1 to i32
  %shl2.i = shl nuw nsw i32 %conv1.i, 8
  %or3.i = or i32 %shl2.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %mac, i32 1
  %2 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %3 to i32
  %or7.i = or i32 %or3.i, %conv5.i
  %arrayidx8.i = getelementptr i8, ptr %mac, i32 2
  %4 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %5 to i32
  %shl10.i = shl nuw i32 %conv9.i, 24
  %arrayidx12.i = getelementptr i8, ptr %mac, i32 3
  %6 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx12.i, align 1
  %conv13.i = zext i8 %7 to i32
  %shl14.i = shl nuw nsw i32 %conv13.i, 16
  %or15.i = or i32 %shl14.i, %shl10.i
  %arrayidx16.i = getelementptr i8, ptr %mac, i32 4
  %8 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %9 to i32
  %shl18.i = shl nuw nsw i32 %conv17.i, 8
  %or19.i = or i32 %or15.i, %shl18.i
  %arrayidx20.i = getelementptr i8, ptr %mac, i32 5
  %10 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx20.i, align 1
  %conv21.i = zext i8 %11 to i32
  %or23.i = or i32 %or19.i, %conv21.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %12 = tail call i32 @llvm.bswap.i32(i32 %or7.i) #5
  %arrayidx.i.i.i = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 122
  %13 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i.i = getelementptr i8, ptr %14, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i.i, i32 %12) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %15 = tail call i32 @llvm.bswap.i32(i32 %or23.i) #5
  %16 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i38.i = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i38.i, i32 %15) #5, !srcloc !28
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %pgid)
  %cmp = icmp slt i32 %pgid, 65
  %div = sdiv i32 %pgid, 32
  %shl = shl nsw i32 %div, 5
  %18 = mul i32 %div, 32
  %rem.decomposed = sub i32 %pgid, %18
  %add = add i32 %shl, %rem.decomposed
  %sub = add i32 %pgid, 4031
  %addr.0 = select i1 %cmp, i32 %add, i32 %sub
  %and16 = and i32 %addr.0, 4095
  %or = select i1 %cmp, i32 98304, i32 110592
  %or74 = or i32 %or, %and16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %19 = tail call i32 @llvm.bswap.i32(i32 %or74) #5
  %20 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i = getelementptr i8, ptr %21, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i, i32 %19) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %22 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i124 = getelementptr i8, ptr %23, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i124, i32 0) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %24 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 16777216) #5, !srcloc !28
  %call = tail call fastcc i32 @sparx5_mact_wait_for_completion(ptr noundef %sparx5)
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sparx5_mact_wait_for_completion(ptr nocapture noundef readonly %sparx5) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #5
  %add.i = add i64 %call, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 56) #5
  %arrayidx.i.i.i = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 122
  %0 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2467 = icmp eq i32 %3, 0
  br i1 %cmp2467, label %entry.do.end52.thread_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.do.end52.thread_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end52.thread

land.lhs.true:                                    ; preds = %if.then34.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call27 = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call27, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call27, %add.i
  br i1 %cmp3.i, label %do.end52, label %if.then34

if.then34:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #5
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  %7 = and i32 %6, 16777216
  %cmp24 = icmp eq i32 %7, 0
  br i1 %cmp24, label %if.then34.do.end52.thread_crit_edge, label %if.then34.land.lhs.true_crit_edge

if.then34.land.lhs.true_crit_edge:                ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

if.then34.do.end52.thread_crit_edge:              ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end52.thread

do.end52:                                         ; preds = %land.lhs.true
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i.i, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp56 = icmp eq i32 %11, 0
  br i1 %cmp56, label %do.end52.do.end52.thread_crit_edge, label %do.end52._crit_edge

do.end52._crit_edge:                              ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %12

do.end52.do.end52.thread_crit_edge:               ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end52.thread

do.end52.thread:                                  ; preds = %do.end52.do.end52.thread_crit_edge, %if.then34.do.end52.thread_crit_edge, %entry.do.end52.thread_crit_edge
  br label %12

12:                                               ; preds = %do.end52.thread, %do.end52._crit_edge
  %13 = phi i32 [ 0, %do.end52.thread ], [ -110, %do.end52._crit_edge ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sparx5_mc_unsync(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sparx51 = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %sparx51 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sparx51, align 4
  %pvid = getelementptr i8, ptr %dev, i32 2398
  %2 = ptrtoint ptr %pvid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pvid, align 2
  %call2 = tail call i32 @sparx5_mact_forget(ptr noundef %1, ptr noundef %addr, i16 noundef zeroext %3)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sparx5_mact_forget(ptr noundef %sparx5, ptr nocapture noundef readonly %mac, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %conv.i = zext i16 %vid to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mac, align 1
  %conv1.i = zext i8 %1 to i32
  %shl2.i = shl nuw nsw i32 %conv1.i, 8
  %or3.i = or i32 %shl2.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %mac, i32 1
  %2 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %3 to i32
  %or7.i = or i32 %or3.i, %conv5.i
  %arrayidx8.i = getelementptr i8, ptr %mac, i32 2
  %4 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %5 to i32
  %shl10.i = shl nuw i32 %conv9.i, 24
  %arrayidx12.i = getelementptr i8, ptr %mac, i32 3
  %6 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx12.i, align 1
  %conv13.i = zext i8 %7 to i32
  %shl14.i = shl nuw nsw i32 %conv13.i, 16
  %or15.i = or i32 %shl14.i, %shl10.i
  %arrayidx16.i = getelementptr i8, ptr %mac, i32 4
  %8 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %9 to i32
  %shl18.i = shl nuw nsw i32 %conv17.i, 8
  %or19.i = or i32 %or15.i, %shl18.i
  %arrayidx20.i = getelementptr i8, ptr %mac, i32 5
  %10 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx20.i, align 1
  %conv21.i = zext i8 %11 to i32
  %or23.i = or i32 %or19.i, %conv21.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %12 = tail call i32 @llvm.bswap.i32(i32 %or7.i) #5
  %arrayidx.i.i.i = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 122
  %13 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i.i = getelementptr i8, ptr %14, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i.i, i32 %12) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %15 = tail call i32 @llvm.bswap.i32(i32 %or23.i) #5
  %16 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i38.i = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i38.i, i32 %15) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 50331648) #5, !srcloc !28
  %call = tail call fastcc i32 @sparx5_mact_wait_for_completion(ptr noundef %sparx5)
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sparx5_mc_sync(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sparx51 = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %sparx51 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sparx51, align 4
  %pvid = getelementptr i8, ptr %dev, i32 2398
  %2 = ptrtoint ptr %pvid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pvid, align 2
  %call2 = tail call i32 @sparx5_mact_learn(ptr noundef %1, i32 noundef 72, ptr noundef %addr, i16 noundef zeroext %3)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @sparx5_mact_getnext(ptr noundef %sparx5, ptr nocapture noundef %mac, ptr nocapture noundef %vid, ptr nocapture noundef writeonly %pcfg2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %0 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vid, align 2
  %conv.i = zext i16 %1 to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %2 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mac, align 1
  %conv1.i = zext i8 %3 to i32
  %shl2.i = shl nuw nsw i32 %conv1.i, 8
  %or3.i = or i32 %shl2.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %mac, i32 1
  %4 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %5 to i32
  %or7.i = or i32 %or3.i, %conv5.i
  %arrayidx8.i = getelementptr i8, ptr %mac, i32 2
  %6 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %7 to i32
  %shl10.i = shl nuw i32 %conv9.i, 24
  %arrayidx12.i = getelementptr i8, ptr %mac, i32 3
  %8 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx12.i, align 1
  %conv13.i = zext i8 %9 to i32
  %shl14.i = shl nuw nsw i32 %conv13.i, 16
  %or15.i = or i32 %shl14.i, %shl10.i
  %arrayidx16.i = getelementptr i8, ptr %mac, i32 4
  %10 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %11 to i32
  %shl18.i = shl nuw nsw i32 %conv17.i, 8
  %or19.i = or i32 %or15.i, %shl18.i
  %arrayidx20.i = getelementptr i8, ptr %mac, i32 5
  %12 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx20.i, align 1
  %conv21.i = zext i8 %13 to i32
  %or23.i = or i32 %or19.i, %conv21.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %14 = tail call i32 @llvm.bswap.i32(i32 %or7.i) #5
  %arrayidx.i.i.i = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 122
  %15 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i.i = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i.i, i32 %14) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %17 = tail call i32 @llvm.bswap.i32(i32 %or23.i) #5
  %18 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i38.i = getelementptr i8, ptr %19, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i38.i, i32 %17) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %20 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i = getelementptr i8, ptr %21, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i, i32 -2147221504) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %22 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 218103808) #5, !srcloc !28
  %call = tail call fastcc i32 @sparx5_mact_wait_for_completion(ptr noundef %sparx5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end65_crit_edge

entry.if.end65_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65

if.then:                                          ; preds = %entry
  %24 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i.i80 = getelementptr i8, ptr %25, i32 12
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i80) #5, !srcloc !29
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  %28 = and i32 %27, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %if.then.if.end65_crit_edge, label %if.then64

if.then.if.end65_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65

if.then64:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i53.i = getelementptr i8, ptr %30, i32 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i53.i) #5, !srcloc !29
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  %33 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i55.i = getelementptr i8, ptr %34, i32 8
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i55.i) #5, !srcloc !29
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  %shr15.i = lshr i32 %32, 8
  %conv.i81 = trunc i32 %shr15.i to i8
  %37 = ptrtoint ptr %mac to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv.i81, ptr %mac, align 1
  %conv19.i = trunc i32 %32 to i8
  %38 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv19.i, ptr %arrayidx4.i, align 1
  %shr21.i = lshr i32 %36, 24
  %conv23.i = trunc i32 %shr21.i to i8
  %39 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv23.i, ptr %arrayidx8.i, align 1
  %shr25.i = lshr i32 %36, 16
  %conv27.i = trunc i32 %shr25.i to i8
  %40 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv27.i, ptr %arrayidx12.i, align 1
  %shr29.i = lshr i32 %36, 8
  %conv31.i = trunc i32 %shr29.i to i8
  %41 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv31.i, ptr %arrayidx16.i, align 1
  %conv35.i = trunc i32 %36 to i8
  %42 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv35.i, ptr %arrayidx20.i, align 1
  %shr37.i = lshr i32 %32, 16
  %conv38.i = trunc i32 %shr37.i to i16
  %43 = ptrtoint ptr %vid to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv38.i, ptr %vid, align 2
  %44 = ptrtoint ptr %pcfg2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %27, ptr %pcfg2, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %if.then.if.end65_crit_edge, %entry.if.end65_crit_edge
  %ret.0 = phi i32 [ 0, %if.then64 ], [ %call, %entry.if.end65_crit_edge ], [ -2, %if.then.if.end65_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp67 = icmp eq i32 %ret.0, 0
  ret i1 %cmp67
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sparx5_add_mact_entry(ptr noundef %sparx5, ptr nocapture noundef readonly %port, ptr noundef %addr, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  %info.i = alloca %struct.switchdev_notifier_fdb_info, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #5
  %conv.i.i = zext i16 %vid to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 16
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %addr, align 1
  %conv1.i.i = zext i8 %1 to i32
  %shl2.i.i = shl nuw nsw i32 %conv1.i.i, 8
  %or3.i.i = or i32 %shl2.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr i8, ptr %addr, i32 1
  %2 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %3 to i32
  %or7.i.i = or i32 %or3.i.i, %conv5.i.i
  %arrayidx8.i.i = getelementptr i8, ptr %addr, i32 2
  %4 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i = zext i8 %5 to i32
  %shl10.i.i = shl nuw i32 %conv9.i.i, 24
  %arrayidx12.i.i = getelementptr i8, ptr %addr, i32 3
  %6 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx12.i.i, align 1
  %conv13.i.i = zext i8 %7 to i32
  %shl14.i.i = shl nuw nsw i32 %conv13.i.i, 16
  %or15.i.i = or i32 %shl14.i.i, %shl10.i.i
  %arrayidx16.i.i = getelementptr i8, ptr %addr, i32 4
  %8 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx16.i.i, align 1
  %conv17.i.i = zext i8 %9 to i32
  %shl18.i.i = shl nuw nsw i32 %conv17.i.i, 8
  %or19.i.i = or i32 %or15.i.i, %shl18.i.i
  %arrayidx20.i.i = getelementptr i8, ptr %addr, i32 5
  %10 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx20.i.i, align 1
  %conv21.i.i = zext i8 %11 to i32
  %or23.i.i = or i32 %or19.i.i, %conv21.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %12 = tail call i32 @llvm.bswap.i32(i32 %or7.i.i) #5
  %arrayidx.i.i.i.i = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 122
  %13 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr82.i.i.i.i = getelementptr i8, ptr %14, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i.i.i, i32 %12) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %15 = tail call i32 @llvm.bswap.i32(i32 %or23.i.i) #5
  %16 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr82.i.i38.i.i = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i38.i.i, i32 %15) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 83886080) #5, !srcloc !28
  %call.i = tail call fastcc i32 @sparx5_mact_wait_for_completion(ptr noundef %sparx5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sparx5_mact_lookup.exit, label %sparx5_mact_lookup.exit.thread

sparx5_mact_lookup.exit.thread:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_unlock(ptr noundef %lock.i) #5
  br label %cleanup

sparx5_mact_lookup.exit:                          ; preds = %entry
  %20 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr82.i.i.i = getelementptr i8, ptr %21, i32 12
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @mutex_unlock(ptr noundef %lock.i) #5
  %23 = and i32 %22, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not = icmp eq i32 %23, 0
  br i1 %tobool.not, label %if.end, label %sparx5_mact_lookup.exit.cleanup_crit_edge

sparx5_mact_lookup.exit.cleanup_crit_edge:        ; preds = %sparx5_mact_lookup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sparx5_mact_lookup.exit
  %portno = getelementptr inbounds %struct.sparx5_port, ptr %port, i32 0, i32 8
  %24 = ptrtoint ptr %portno to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %portno, align 4
  %mact_lock.i = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %mact_lock.i, i32 noundef 0) #5
  %mact_entries.i = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 25
  %26 = ptrtoint ptr %mact_entries.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %mact_entry.027.i = load ptr, ptr %mact_entries.i, align 4
  %cmp.not28.i = icmp eq ptr %mact_entry.027.i, %mact_entries.i
  br i1 %cmp.not28.i, label %if.end.find_mact_entry.exit.thread_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.find_mact_entry.exit.thread_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_mact_entry.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %mact_entry.029.i = phi ptr [ %mact_entry.0.i, %for.inc.i.for.body.i_crit_edge ], [ %mact_entry.027.i, %if.end.for.body.i_crit_edge ]
  %vid2.i = getelementptr inbounds %struct.sparx5_mact_entry, ptr %mact_entry.029.i, i32 0, i32 3
  %27 = ptrtoint ptr %vid2.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %vid2.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %28, i16 %vid)
  %cmp4.i = icmp eq i16 %28, %vid
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %mac6.i = getelementptr inbounds %struct.sparx5_mact_entry, ptr %mact_entry.029.i, i32 0, i32 1
  %29 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %addr, align 4
  %31 = ptrtoint ptr %mac6.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mac6.i, align 4
  %xor.i.i = xor i32 %32, %30
  %33 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx16.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.sparx5_mact_entry, ptr %mact_entry.029.i, i32 0, i32 1, i32 4
  %35 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %36, %34
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true8.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %port.i = getelementptr inbounds %struct.sparx5_mact_entry, ptr %mact_entry.029.i, i32 0, i32 4
  %37 = ptrtoint ptr %port.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %port.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %38, i16 %25)
  %cmp11.i = icmp eq i16 %38, %25
  br i1 %cmp11.i, label %find_mact_entry.exit, label %land.lhs.true8.i.for.inc.i_crit_edge

land.lhs.true8.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true8.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %39 = ptrtoint ptr %mact_entry.029.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %mact_entry.0.i = load ptr, ptr %mact_entry.029.i, align 4
  %cmp.not.i = icmp eq ptr %mact_entry.0.i, %mact_entries.i
  br i1 %cmp.not.i, label %for.inc.i.find_mact_entry.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.find_mact_entry.exit.thread_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_mact_entry.exit.thread

find_mact_entry.exit.thread:                      ; preds = %for.inc.i.find_mact_entry.exit.thread_crit_edge, %if.end.find_mact_entry.exit.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %mact_lock.i) #5
  br label %if.end4

find_mact_entry.exit:                             ; preds = %land.lhs.true8.i
  tail call void @mutex_unlock(ptr noundef %mact_lock.i) #5
  %tobool2.not = icmp eq ptr %mact_entry.029.i, null
  br i1 %tobool2.not, label %find_mact_entry.exit.if.end4_crit_edge, label %find_mact_entry.exit.update_hw_crit_edge

find_mact_entry.exit.update_hw_crit_edge:         ; preds = %find_mact_entry.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %update_hw

find_mact_entry.exit.if.end4_crit_edge:           ; preds = %find_mact_entry.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.end4:                                          ; preds = %find_mact_entry.exit.if.end4_crit_edge, %find_mact_entry.exit.thread
  %40 = ptrtoint ptr %portno to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %portno, align 4
  %dev.i = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 1
  %42 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i, align 4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %43, i32 noundef 24, i32 noundef 2848) #5
  %tobool.not.i40 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i40, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %mac1.i = getelementptr inbounds %struct.sparx5_mact_entry, ptr %call.i.i, i32 0, i32 1
  %44 = call ptr @memcpy(ptr %mac1.i, ptr %addr, i32 6)
  %vid2.i41 = getelementptr inbounds %struct.sparx5_mact_entry, ptr %call.i.i, i32 0, i32 3
  %45 = ptrtoint ptr %vid2.i41 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %vid, ptr %vid2.i41, align 4
  %port.i42 = getelementptr inbounds %struct.sparx5_mact_entry, ptr %call.i.i, i32 0, i32 4
  %46 = ptrtoint ptr %port.i42 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %41, ptr %port.i42, align 2
  tail call void @mutex_lock_nested(ptr noundef %mact_lock.i, i32 noundef 0) #5
  %prev.i = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 25, i32 1
  %47 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i, align 4
  %call.i.i43 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i, ptr noundef %48, ptr noundef %mact_entries.i) #5
  br i1 %call.i.i43, label %if.end.i.i, label %if.end9.list_add_tail.exit_crit_edge

if.end9.list_add_tail.exit_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i.i, ptr %prev.i, align 4
  %50 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %mact_entries.i, ptr %call.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i, i32 0, i32 1
  %51 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev3.i.i, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %call.i.i, ptr %48, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end9.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mact_lock.i) #5
  br label %update_hw

update_hw:                                        ; preds = %list_add_tail.exit, %find_mact_entry.exit.update_hw_crit_edge
  %mact_entry.0 = phi ptr [ %mact_entry.029.i, %find_mact_entry.exit.update_hw_crit_edge ], [ %call.i.i, %list_add_tail.exit ]
  %53 = ptrtoint ptr %portno to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %portno, align 4
  %conv = zext i16 %54 to i32
  %call12 = tail call i32 @sparx5_mact_learn(ptr noundef %sparx5, i32 noundef %conv, ptr noundef %addr, i16 noundef zeroext %vid)
  %flags = getelementptr inbounds %struct.sparx5_mact_entry, ptr %mact_entry.0, i32 0, i32 2
  %55 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp = icmp eq i32 %56, 0
  br i1 %cmp, label %if.then14, label %update_hw.cleanup_crit_edge

update_hw.cleanup_crit_edge:                      ; preds = %update_hw
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then14:                                        ; preds = %update_hw
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 4, ptr %flags, align 4
  %58 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %port, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %info.i) #5
  %60 = call ptr @memset(ptr %info.i, i32 0, i32 20)
  %addr.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info.i, i32 0, i32 1
  %61 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %addr, ptr %addr.i, align 4
  %vid1.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info.i, i32 0, i32 2
  %62 = ptrtoint ptr %vid1.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %vid, ptr %vid1.i, align 4
  %offloaded2.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info.i, i32 0, i32 3
  %63 = ptrtoint ptr %offloaded2.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 32, ptr %offloaded2.i, align 2
  %call.i44 = call i32 @call_switchdev_notifiers(i32 noundef 1, ptr noundef %59, ptr noundef nonnull %info.i, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %info.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %update_hw.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %sparx5_mact_lookup.exit.cleanup_crit_edge, %sparx5_mact_lookup.exit.thread
  %retval.0 = phi i32 [ 0, %sparx5_mact_lookup.exit.cleanup_crit_edge ], [ %call12, %if.then14 ], [ %call12, %update_hw.cleanup_crit_edge ], [ 0, %sparx5_mact_lookup.exit.thread ], [ -12, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sparx5_del_mact_entry(ptr noundef %sparx5, ptr nocapture noundef readonly %addr, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mact_lock = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %mact_lock, i32 noundef 0) #5
  %mact_entries = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 25
  %0 = ptrtoint ptr %mact_entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mact_entries, align 8
  %cmp.not40 = icmp eq ptr %1, %mact_entries
  br i1 %cmp.not40, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vid)
  %cmp8 = icmp eq i16 %vid, 0
  %add.ptr.i = getelementptr i8, ptr %addr, i32 4
  %dev = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %mact_entry.041 = phi ptr [ %1, %for.body.lr.ph ], [ %tmp.043, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %mact_entry.041 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.043 = load ptr, ptr %mact_entry.041, align 4
  br i1 %cmp8, label %for.body.land.lhs.true_crit_edge, label %lor.lhs.false

for.body.land.lhs.true_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %for.body
  %vid10 = getelementptr inbounds %struct.sparx5_mact_entry, ptr %mact_entry.041, i32 0, i32 3
  %3 = ptrtoint ptr %vid10 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %vid10, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %vid)
  %cmp13 = icmp eq i16 %4, %vid
  br i1 %cmp13, label %lor.lhs.false.land.lhs.true_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %for.body.land.lhs.true_crit_edge
  %mac = getelementptr inbounds %struct.sparx5_mact_entry, ptr %mact_entry.041, i32 0, i32 1
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
  %add.ptr1.i = getelementptr %struct.sparx5_mact_entry, ptr %mact_entry.041, i32 0, i32 1, i32 4
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
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mact_entry.041) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mact_entry.041, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %mact_entry.041 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mact_entry.041, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %19 = ptrtoint ptr %mact_entry.041 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %mact_entry.041, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %mact_entry.041, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  tail call void @devm_kfree(ptr noundef %22, ptr noundef %mact_entry.041) #5
  %vid17 = getelementptr inbounds %struct.sparx5_mact_entry, ptr %mact_entry.041, i32 0, i32 3
  %23 = ptrtoint ptr %vid17 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vid17, align 4
  %call18 = tail call i32 @sparx5_mact_forget(ptr noundef %sparx5, ptr noundef %addr, i16 noundef zeroext %24)
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %land.lhs.true.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge
  %cmp.not = icmp eq ptr %tmp.043, %mact_entries
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mact_lock) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sparx5_mact_pull_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %info.i = alloca %struct.switchdev_notifier_fdb_info, align 4
  %info.i.i = alloca %struct.switchdev_notifier_fdb_info, align 4
  %mac = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -51252
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac) #5
  %0 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 5
  %mact_lock = getelementptr i8, ptr %work, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %mact_lock, i32 noundef 0) #5
  %mact_entries = getelementptr i8, ptr %work, i32 -100
  %5 = ptrtoint ptr %mact_entries to i32
  call void @__asan_load4_noabort(i32 %5)
  %mact_entry.0159 = load ptr, ptr %mact_entries, align 4
  %cmp.not160 = icmp eq ptr %mact_entry.0159, %mact_entries
  br i1 %cmp.not160, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %mact_entry.0161 = phi ptr [ %mact_entry.0, %for.body.for.body_crit_edge ], [ %mact_entry.0159, %entry.for.body_crit_edge ]
  %flags = getelementptr inbounds %struct.sparx5_mact_entry, ptr %mact_entry.0161, i32 0, i32 2
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 4
  store i32 %and, ptr %flags, align 4
  %8 = ptrtoint ptr %mact_entry.0161 to i32
  call void @__asan_load4_noabort(i32 %8)
  %mact_entry.0 = load ptr, ptr %mact_entry.0161, align 4
  %cmp.not = icmp eq ptr %mact_entry.0, %mact_entries
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mact_lock) #5
  %9 = call ptr @memset(ptr %mac, i32 0, i32 6)
  %lock = getelementptr i8, ptr %work, i32 -49904
  %arrayidx.i.i.i = getelementptr i8, ptr %work, i32 -50748
  %bridge_mask.i = getelementptr i8, ptr %work, i32 -49288
  %dev.i = getelementptr i8, ptr %work, i32 -51248
  %prev.i.i = getelementptr i8, ptr %work, i32 -96
  %addr.i.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info.i.i, i32 0, i32 1
  %vid1.i.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info.i.i, i32 0, i32 2
  %offloaded2.i.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info.i.i, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %do.body.backedge, %for.end
  %vid.0 = phi i32 [ 0, %for.end ], [ %shr37.i, %do.body.backedge ]
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %shl.i = shl nuw i32 %vid.0, 16
  %10 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mac, align 4
  %conv1.i = zext i8 %11 to i32
  %shl2.i = shl nuw nsw i32 %conv1.i, 8
  %or3.i = or i32 %shl2.i, %shl.i
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %0, align 1
  %conv5.i = zext i8 %13 to i32
  %or7.i = or i32 %or3.i, %conv5.i
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %1, align 2
  %conv9.i = zext i8 %15 to i32
  %shl10.i = shl nuw i32 %conv9.i, 24
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %2, align 1
  %conv13.i = zext i8 %17 to i32
  %shl14.i = shl nuw nsw i32 %conv13.i, 16
  %or15.i = or i32 %shl14.i, %shl10.i
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %3, align 4
  %conv17.i = zext i8 %19 to i32
  %shl18.i = shl nuw nsw i32 %conv17.i, 8
  %or19.i = or i32 %or15.i, %shl18.i
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %4, align 1
  %conv21.i = zext i8 %21 to i32
  %or23.i = or i32 %or19.i, %conv21.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  call void @arm_heavy_mb() #5
  %22 = call i32 @llvm.bswap.i32(i32 %or7.i) #5
  %23 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i.i = getelementptr i8, ptr %24, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i.i, i32 %22) #5, !srcloc !28
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  call void @arm_heavy_mb() #5
  %25 = call i32 @llvm.bswap.i32(i32 %or23.i) #5
  %26 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i38.i = getelementptr i8, ptr %27, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i38.i, i32 %25) #5, !srcloc !28
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  call void @arm_heavy_mb() #5
  %28 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i = getelementptr i8, ptr %29, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i, i32 262144) #5, !srcloc !28
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  call void @arm_heavy_mb() #5
  %30 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 218103808) #5, !srcloc !28
  %call59 = call fastcc i32 @sparx5_mact_wait_for_completion(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp eq i32 %call59, 0
  br i1 %cmp60, label %if.then, label %do.body.do.end70.critedge_crit_edge

do.body.do.end70.critedge_crit_edge:              ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end70.critedge

if.then:                                          ; preds = %do.body
  %32 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i.i139 = getelementptr i8, ptr %33, i32 12
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i139) #5, !srcloc !29
  %35 = call i32 @llvm.bswap.i32(i32 %34) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  %36 = and i32 %35, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i, label %if.then.do.end70.critedge_crit_edge, label %if.then65

if.then.do.end70.critedge_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end70.critedge

if.then65:                                        ; preds = %if.then
  %37 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i53.i = getelementptr i8, ptr %38, i32 4
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i53.i) #5, !srcloc !29
  %40 = call i32 @llvm.bswap.i32(i32 %39) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  %41 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i55.i = getelementptr i8, ptr %42, i32 8
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i55.i) #5, !srcloc !29
  %44 = call i32 @llvm.bswap.i32(i32 %43) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  %shr15.i = lshr i32 %40, 8
  %conv.i140 = trunc i32 %shr15.i to i8
  %45 = ptrtoint ptr %mac to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv.i140, ptr %mac, align 4
  %conv19.i = trunc i32 %40 to i8
  %46 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv19.i, ptr %0, align 1
  %shr21.i = lshr i32 %44, 24
  %conv23.i = trunc i32 %shr21.i to i8
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv23.i, ptr %1, align 2
  %shr25.i = lshr i32 %44, 16
  %conv27.i = trunc i32 %shr25.i to i8
  %48 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv27.i, ptr %2, align 1
  %shr29.i = lshr i32 %44, 8
  %conv31.i = trunc i32 %shr29.i to i8
  %49 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv31.i, ptr %3, align 4
  %conv35.i = trunc i32 %44 to i8
  %50 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv35.i, ptr %4, align 1
  %shr37.i = lshr i32 %40, 16
  %conv38.i = trunc i32 %shr37.i to i16
  call void @mutex_unlock(ptr noundef %lock) #5
  %51 = and i32 %35, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp.not.i = icmp eq i32 %51, 0
  br i1 %cmp.not.i, label %do.end27.i, label %if.then65.do.body.backedge_crit_edge

if.then65.do.body.backedge_crit_edge:             ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.backedge

do.body.backedge:                                 ; preds = %if.end96.i, %if.end83.critedge.i.do.body.backedge_crit_edge, %land.lhs.true78.i.do.body.backedge_crit_edge, %if.end35.i.do.body.backedge_crit_edge, %do.end27.i.do.body.backedge_crit_edge, %if.then65.do.body.backedge_crit_edge
  br label %do.body

do.end27.i:                                       ; preds = %if.then65
  %52 = trunc i32 %35 to i16
  %conv.i142 = and i16 %52, 4095
  %conv31.i143 = zext i16 %conv.i142 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %conv.i142)
  %cmp32.i = icmp ugt i16 %conv.i142, 64
  br i1 %cmp32.i, label %do.end27.i.do.body.backedge_crit_edge, label %if.end35.i

do.end27.i.do.body.backedge_crit_edge:            ; preds = %do.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.backedge

if.end35.i:                                       ; preds = %do.end27.i
  %div3.i.i = lshr i32 %conv31.i143, 5
  %arrayidx.i.i144 = getelementptr i32, ptr %bridge_mask.i, i32 %div3.i.i
  %53 = ptrtoint ptr %arrayidx.i.i144 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %arrayidx.i.i144, align 4
  %and.i.i = and i32 %conv31.i143, 31
  %55 = shl nuw i32 1, %and.i.i
  %56 = and i32 %54, %55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i145 = icmp eq i32 %56, 0
  br i1 %tobool.not.i145, label %if.end35.i.do.body.backedge_crit_edge, label %if.end38.i

if.end35.i.do.body.backedge_crit_edge:            ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.backedge

if.end38.i:                                       ; preds = %if.end35.i
  call void @mutex_lock_nested(ptr noundef %mact_lock, i32 noundef 0) #5
  %57 = ptrtoint ptr %mact_entries to i32
  call void @__asan_load4_noabort(i32 %57)
  %mact_entry.0136.i = load ptr, ptr %mact_entries, align 4
  %cmp41.not137.i = icmp eq ptr %mact_entry.0136.i, %mact_entries
  br i1 %cmp41.not137.i, label %if.end38.i.if.end83.critedge.i_crit_edge, label %if.end38.i.for.body.i_crit_edge

if.end38.i.for.body.i_crit_edge:                  ; preds = %if.end38.i
  br label %for.body.i

if.end38.i.if.end83.critedge.i_crit_edge:         ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end83.critedge.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end38.i.for.body.i_crit_edge
  %mact_entry.0138.i = phi ptr [ %mact_entry.0.i, %for.inc.i.for.body.i_crit_edge ], [ %mact_entry.0136.i, %if.end38.i.for.body.i_crit_edge ]
  %vid43.i = getelementptr inbounds %struct.sparx5_mact_entry, ptr %mact_entry.0138.i, i32 0, i32 3
  %58 = ptrtoint ptr %vid43.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %vid43.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %59, i16 %conv38.i)
  %cmp46.i = icmp eq i16 %59, %conv38.i
  br i1 %cmp46.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %mac48.i = getelementptr inbounds %struct.sparx5_mact_entry, ptr %mact_entry.0138.i, i32 0, i32 1
  %60 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %mac, align 4
  %62 = ptrtoint ptr %mac48.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mac48.i, align 4
  %xor.i.i = xor i32 %63, %61
  %64 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %3, align 4
  %add.ptr1.i.i = getelementptr %struct.sparx5_mact_entry, ptr %mact_entry.0138.i, i32 0, i32 1, i32 4
  %66 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %67, %65
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.then52.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then52.i:                                      ; preds = %land.lhs.true.i
  %flags.i = getelementptr inbounds %struct.sparx5_mact_entry, ptr %mact_entry.0138.i, i32 0, i32 2
  %68 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %69, 1
  store i32 %or.i, ptr %flags.i, align 4
  %port53.i = getelementptr inbounds %struct.sparx5_mact_entry, ptr %mact_entry.0138.i, i32 0, i32 4
  %70 = ptrtoint ptr %port53.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %port53.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %71, i16 %conv.i142)
  %cmp56.not.i = icmp eq i16 %71, %conv.i142
  br i1 %cmp56.not.i, label %if.then52.i.land.lhs.true78.i_crit_edge, label %do.end61.i

if.then52.i.land.lhs.true78.i_crit_edge:          ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true78.i

do.end61.i:                                       ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv54.i = zext i16 %71 to i32
  %72 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %73, ptr noundef nonnull @.str.7, i32 noundef %conv54.i, i32 noundef %conv31.i143) #8
  %74 = ptrtoint ptr %port53.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv.i142, ptr %port53.i, align 2
  %75 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flags.i, align 4
  %or67.i = or i32 %76, 2
  store i32 %or67.i, ptr %flags.i, align 4
  br label %land.lhs.true78.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %77 = ptrtoint ptr %mact_entry.0138.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %mact_entry.0.i = load ptr, ptr %mact_entry.0138.i, align 4
  %cmp41.not.i = icmp eq ptr %mact_entry.0.i, %mact_entries
  br i1 %cmp41.not.i, label %for.inc.i.if.end83.critedge.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.if.end83.critedge.i_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end83.critedge.i

land.lhs.true78.i:                                ; preds = %do.end61.i, %if.then52.i.land.lhs.true78.i_crit_edge
  call void @mutex_unlock(ptr noundef %mact_lock) #5
  %78 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flags.i, align 4
  %and80.i = and i32 %79, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80.i)
  %tobool81.not.i = icmp eq i32 %and80.i, 0
  br i1 %tobool81.not.i, label %land.lhs.true78.i.do.body.backedge_crit_edge, label %land.lhs.true78.i.if.end96.i_crit_edge

land.lhs.true78.i.if.end96.i_crit_edge:           ; preds = %land.lhs.true78.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end96.i

land.lhs.true78.i.do.body.backedge_crit_edge:     ; preds = %land.lhs.true78.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.backedge

if.end83.critedge.i:                              ; preds = %for.inc.i.if.end83.critedge.i_crit_edge, %if.end38.i.if.end83.critedge.i_crit_edge
  call void @mutex_unlock(ptr noundef %mact_lock) #5
  %80 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev.i, align 4
  %call.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %81, i32 noundef 24, i32 noundef 2848) #5
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end83.critedge.i.do.body.backedge_crit_edge, label %if.end89.i

if.end83.critedge.i.do.body.backedge_crit_edge:   ; preds = %if.end83.critedge.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.backedge

if.end89.i:                                       ; preds = %if.end83.critedge.i
  %mac1.i.i = getelementptr inbounds %struct.sparx5_mact_entry, ptr %call.i.i.i, i32 0, i32 1
  %82 = call ptr @memcpy(ptr %mac1.i.i, ptr %mac, i32 6)
  %vid2.i.i = getelementptr inbounds %struct.sparx5_mact_entry, ptr %call.i.i.i, i32 0, i32 3
  %83 = ptrtoint ptr %vid2.i.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %conv38.i, ptr %vid2.i.i, align 4
  %port.i.i = getelementptr inbounds %struct.sparx5_mact_entry, ptr %call.i.i.i, i32 0, i32 4
  %84 = ptrtoint ptr %port.i.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv.i142, ptr %port.i.i, align 2
  %flags90.i = getelementptr inbounds %struct.sparx5_mact_entry, ptr %call.i.i.i, i32 0, i32 2
  %85 = ptrtoint ptr %flags90.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags90.i, align 4
  %or91.i = or i32 %86, 1
  store i32 %or91.i, ptr %flags90.i, align 4
  call void @mutex_lock_nested(ptr noundef %mact_lock, i32 noundef 0) #5
  %87 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %prev.i.i, align 4
  %call.i.i134.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i.i, ptr noundef %88, ptr noundef %mact_entries) #5
  br i1 %call.i.i134.i, label %if.end.i.i.i, label %if.end89.i.list_add_tail.exit.i_crit_edge

if.end89.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #7
  %89 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call.i.i.i, ptr %prev.i.i, align 4
  %90 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %mact_entries, ptr %call.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i.i, i32 0, i32 1
  %91 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %88, ptr %prev3.i.i.i, align 4
  %92 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %call.i.i.i, ptr %88, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end89.i.list_add_tail.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %mact_lock) #5
  br label %if.end96.i

if.end96.i:                                       ; preds = %list_add_tail.exit.i, %land.lhs.true78.i.if.end96.i_crit_edge
  %arrayidx.i = getelementptr %struct.sparx5, ptr %add.ptr, i32 0, i32 7, i32 %conv31.i143
  %93 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx.i, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %info.i.i) #5
  %97 = call ptr @memset(ptr %info.i.i, i32 0, i32 20)
  %98 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %mac, ptr %addr.i.i, align 4
  %99 = ptrtoint ptr %vid1.i.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %conv38.i, ptr %vid1.i.i, align 4
  %100 = ptrtoint ptr %offloaded2.i.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 32, ptr %offloaded2.i.i, align 2
  %call.i.i = call i32 @call_switchdev_notifiers(i32 noundef 1, ptr noundef %96, ptr noundef nonnull %info.i.i, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %info.i.i) #5
  br label %do.body.backedge

do.end70.critedge:                                ; preds = %if.then.do.end70.critedge_crit_edge, %do.body.do.end70.critedge_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #5
  call void @mutex_lock_nested(ptr noundef %mact_lock, i32 noundef 0) #5
  %101 = ptrtoint ptr %mact_entries to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %mact_entries, align 8
  %cmp85.not163 = icmp eq ptr %102, %mact_entries
  br i1 %cmp85.not163, label %do.end70.critedge.for.end102_crit_edge, label %for.body87.lr.ph

do.end70.critedge.for.end102_crit_edge:           ; preds = %do.end70.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end102

for.body87.lr.ph:                                 ; preds = %do.end70.critedge
  %ports = getelementptr i8, ptr %work, i32 -49812
  %addr.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info.i, i32 0, i32 1
  %vid1.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info.i, i32 0, i32 2
  %offloaded2.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info.i, i32 0, i32 3
  br label %for.body87

for.body87:                                       ; preds = %for.inc96.for.body87_crit_edge, %for.body87.lr.ph
  %mact_entry.1164 = phi ptr [ %102, %for.body87.lr.ph ], [ %tmp1.0166, %for.inc96.for.body87_crit_edge ]
  %103 = ptrtoint ptr %mact_entry.1164 to i32
  call void @__asan_load4_noabort(i32 %103)
  %tmp1.0166 = load ptr, ptr %mact_entry.1164, align 4
  %flags88 = getelementptr inbounds %struct.sparx5_mact_entry, ptr %mact_entry.1164, i32 0, i32 2
  %104 = ptrtoint ptr %flags88 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %flags88, align 4
  %and89 = and i32 %105, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool.not = icmp eq i32 %and89, 0
  br i1 %tobool.not, label %if.end91, label %for.body87.for.inc96_crit_edge

for.body87.for.inc96_crit_edge:                   ; preds = %for.body87
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc96

if.end91:                                         ; preds = %for.body87
  %mac92 = getelementptr inbounds %struct.sparx5_mact_entry, ptr %mact_entry.1164, i32 0, i32 1
  %vid94 = getelementptr inbounds %struct.sparx5_mact_entry, ptr %mact_entry.1164, i32 0, i32 3
  %106 = ptrtoint ptr %vid94 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %vid94, align 4
  %port = getelementptr inbounds %struct.sparx5_mact_entry, ptr %mact_entry.1164, i32 0, i32 4
  %108 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %port, align 2
  %idxprom = zext i16 %109 to i32
  %arrayidx = getelementptr [65 x ptr], ptr %ports, i32 0, i32 %idxprom
  %110 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %info.i) #5
  %114 = call ptr @memset(ptr %info.i, i32 0, i32 20)
  %115 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %mac92, ptr %addr.i, align 4
  %116 = ptrtoint ptr %vid1.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %107, ptr %vid1.i, align 4
  %117 = ptrtoint ptr %offloaded2.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 32, ptr %offloaded2.i, align 2
  %call.i = call i32 @call_switchdev_notifiers(i32 noundef 2, ptr noundef %113, ptr noundef nonnull %info.i, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %info.i) #5
  %call.i.i146 = call zeroext i1 @__list_del_entry_valid(ptr noundef %mact_entry.1164) #5
  br i1 %call.i.i146, label %if.end.i.i, label %if.end91.list_del.exit_crit_edge

if.end91.list_del.exit_crit_edge:                 ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i147 = getelementptr inbounds %struct.list_head, ptr %mact_entry.1164, i32 0, i32 1
  %118 = ptrtoint ptr %prev.i.i147 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %prev.i.i147, align 4
  %120 = ptrtoint ptr %mact_entry.1164 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %mact_entry.1164, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %119, ptr %prev1.i.i.i, align 4
  %123 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile ptr %121, ptr %119, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end91.list_del.exit_crit_edge
  %124 = ptrtoint ptr %mact_entry.1164 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr inttoptr (i32 256 to ptr), ptr %mact_entry.1164, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %mact_entry.1164, i32 0, i32 1
  %125 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %126 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dev.i, align 4
  call void @devm_kfree(ptr noundef %127, ptr noundef %mact_entry.1164) #5
  br label %for.inc96

for.inc96:                                        ; preds = %list_del.exit, %for.body87.for.inc96_crit_edge
  %cmp85.not = icmp eq ptr %tmp1.0166, %mact_entries
  br i1 %cmp85.not, label %for.inc96.for.end102_crit_edge, label %for.inc96.for.body87_crit_edge

for.inc96.for.body87_crit_edge:                   ; preds = %for.inc96
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body87

for.inc96.for.end102_crit_edge:                   ; preds = %for.inc96
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end102

for.end102:                                       ; preds = %for.inc96.for.end102_crit_edge, %do.end70.critedge.for.end102_crit_edge
  call void @mutex_unlock(ptr noundef %mact_lock) #5
  %mact_queue = getelementptr i8, ptr %work, i32 100
  %128 = ptrtoint ptr %mact_queue to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %mact_queue, align 8
  %call.i148 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %129, ptr noundef %work, i32 noundef 200) #5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sparx5_set_ageing(ptr nocapture noundef readonly %sparx5, i32 noundef %msecs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %msecs)
  %cmp = icmp slt i32 %msecs, 10
  %phi.bo = sdiv i32 %msecs, 20
  %phi.bo.op = and i32 %phi.bo, 268435455
  %and35 = select i1 %cmp, i32 0, i32 %phi.bo.op
  %arrayidx.i.i = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 122
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i = getelementptr i8, ptr %1, i32 36
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i) #5, !srcloc !29
  %3 = shl i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %and.i = and i32 %3, -1073741824
  %or = or i32 %and35, %and.i
  %or.i = or i32 %or, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  %4 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i2.i = getelementptr i8, ptr %6, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i2.i, i32 %4) #5, !srcloc !28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sparx5_mact_init(ptr noundef %sparx5) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @sparx5_mact_init.__key) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %arrayidx.i.i = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 122
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 251658240) #5, !srcloc !28
  %call = tail call fastcc i32 @sparx5_mact_wait_for_completion(ptr noundef %sparx5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end23

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.1) #8
  br label %if.end

if.end:                                           ; preds = %do.end23, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i.i = getelementptr i8, ptr %5, i32 36
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i) #5, !srcloc !29
  %7 = shl i32 %6, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %and.i.i = and i32 %7, -1073741824
  %or.i.i = or i32 %and.i.i, 536885912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i2.i.i = getelementptr i8, ptr %10, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i2.i.i, i32 %8) #5, !srcloc !28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_switchdev_notifiers(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !11, !13, !15, !16, !17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @sparx5_mact_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_mactable.c", i32 489, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_mactable.c", i32 497, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !4, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @sparx5_mact_init._entry, !4, !"_entry", i1 false, i1 false}
!10 = !{ptr @sparx5_mact_init._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!11 = distinct !{null, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_main.h", i32 346, i32 2}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_mactable.c", i32 384, i32 5}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @sparx5_mact_handle_entry._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @sparx5_mact_handle_entry._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{i64 2158300813}
!28 = !{i64 6551956}
!29 = !{i64 6552374}
!30 = !{i64 2158299402}
!31 = !{i64 2158302802}
!32 = !{i64 2158303106}
