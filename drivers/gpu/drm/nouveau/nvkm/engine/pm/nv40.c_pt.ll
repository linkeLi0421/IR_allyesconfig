; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/pm/nv40.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/pm/nv40.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_funcdom = type { ptr, ptr, ptr }
%struct.nvkm_pm_func = type { ptr }
%struct.nvkm_specdom = type { i16, ptr, ptr }
%struct.nvkm_specsig = type { i8, ptr, ptr }
%struct.nvkm_pm = type { ptr, %struct.nvkm_engine, %struct.anon.136, %struct.list_head, %struct.list_head, i32 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.135 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.135 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.136 = type { %struct.spinlock, ptr }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_perfctr = type { %struct.list_head, i8, [4 x i8], [4 x [8 x i64]], i32, i32, i32 }
%struct.nvkm_perfdom = type { %struct.nvkm_object, ptr, %struct.list_head, %struct.list_head, ptr, [4 x ptr], [32 x i8], i32, i8, i32, i16, [0 x %struct.nvkm_perfsig] }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_perfsig = type { ptr, [8 x i8] }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.133, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.133 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nv40_pm = type { %struct.nvkm_pm, i32 }

@nv40_perfctr_func = dso_local constant { %struct.nvkm_funcdom, [20 x i8] } { %struct.nvkm_funcdom { ptr @nv40_perfctr_init, ptr @nv40_perfctr_read, ptr @nv40_perfctr_next }, [20 x i8] zeroinitializer }, align 32
@nv40_pm_ = internal constant { %struct.nvkm_pm_func, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"pc\00", [29 x i8] zeroinitializer }, align 32
@nv40_pm = internal constant { [6 x %struct.nvkm_specdom], [56 x i8] } { [6 x %struct.nvkm_specdom] [%struct.nvkm_specdom { i16 32, ptr @.compoundliteral, ptr @nv40_perfctr_func }, %struct.nvkm_specdom { i16 32, ptr @.compoundliteral.1, ptr @nv40_perfctr_func }, %struct.nvkm_specdom { i16 32, ptr @.compoundliteral.2, ptr @nv40_perfctr_func }, %struct.nvkm_specdom { i16 32, ptr @.compoundliteral.3, ptr @nv40_perfctr_func }, %struct.nvkm_specdom { i16 32, ptr @.compoundliteral.4, ptr @nv40_perfctr_func }, %struct.nvkm_specdom zeroinitializer], [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.compoundliteral = internal constant { [1 x %struct.nvkm_specsig], [20 x i8] } zeroinitializer, align 32
@.compoundliteral.1 = internal constant { [1 x %struct.nvkm_specsig], [20 x i8] } zeroinitializer, align 32
@.compoundliteral.2 = internal constant { [1 x %struct.nvkm_specsig], [20 x i8] } zeroinitializer, align 32
@.compoundliteral.3 = internal constant { [1 x %struct.nvkm_specsig], [20 x i8] } zeroinitializer, align 32
@.compoundliteral.4 = internal constant { [1 x %struct.nvkm_specsig], [20 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.5 = private unnamed_addr constant [18 x i8] c"nv40_perfctr_func\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 71, i32 1 }
@___asan_gen_.8 = private unnamed_addr constant [9 x i8] c"nv40_pm_\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 78, i32 1 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 96, i32 37 }
@___asan_gen_.14 = private unnamed_addr constant [8 x i8] c"nv40_pm\00", align 1
@___asan_gen_.15 = private constant [49 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/pm/nv40.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 100, i32 1 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [19 x i8] c".compoundliteral.1\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [19 x i8] c".compoundliteral.2\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [19 x i8] c".compoundliteral.3\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [19 x i8] c".compoundliteral.4\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @nv40_perfctr_func, ptr @nv40_pm_, ptr @.str, ptr @nv40_pm, ptr @.compoundliteral, ptr @.compoundliteral.1, ptr @.compoundliteral.2, ptr @.compoundliteral.3, ptr @.compoundliteral.4], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv40_perfctr_func to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv40_pm_ to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv40_pm to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv40_perfctr_init(ptr nocapture noundef readonly %pm, ptr nocapture noundef readonly %dom, ptr nocapture noundef readonly %ctr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_pm, ptr %pm, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %logic_op = getelementptr inbounds %struct.nvkm_perfctr, ptr %ctr, i32 0, i32 5
  %2 = ptrtoint ptr %logic_op to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %logic_op, align 4
  %arrayidx = getelementptr %struct.nvkm_perfctr, ptr %ctr, i32 0, i32 2, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %arrayidx.1 = getelementptr %struct.nvkm_perfctr, ptr %ctr, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = zext i8 %7 to i32
  %shl.1 = shl nuw nsw i32 %conv.1, 8
  %or.1 = or i32 %shl.1, %conv
  %arrayidx.2 = getelementptr %struct.nvkm_perfctr, ptr %ctr, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.2, align 1
  %conv.2 = zext i8 %9 to i32
  %shl.2 = shl nuw nsw i32 %conv.2, 16
  %or.2 = or i32 %shl.2, %or.1
  %arrayidx.3 = getelementptr %struct.nvkm_perfctr, ptr %ctr, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.3, align 1
  %conv.3 = zext i8 %11 to i32
  %shl.3 = shl nuw i32 %conv.3, 24
  %or.3 = or i32 %shl.3, %or.2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void @arm_heavy_mb() #3
  %mode = getelementptr inbounds %struct.nvkm_perfdom, ptr %dom, i32 0, i32 8
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mode, align 4
  %conv2 = zext i8 %13 to i32
  %shl3 = shl nuw nsw i32 %conv2, 4
  %or4 = or i32 %shl3, 1
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %addr = getelementptr inbounds %struct.nvkm_perfdom, ptr %dom, i32 0, i32 7
  %16 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr, align 8
  %add = add i32 %17, 42944
  %add.ptr = getelementptr i8, ptr %15, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %or4) #3, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !19
  tail call void @arm_heavy_mb() #3
  %18 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri, align 4
  %20 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr, align 8
  %add10 = add i32 %21, 41984
  %slot = getelementptr inbounds %struct.nvkm_perfctr, ptr %ctr, i32 0, i32 4
  %22 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %slot, align 8
  %mul11 = shl i32 %23, 6
  %add12 = add i32 %add10, %mul11
  %add.ptr13 = getelementptr i8, ptr %19, i32 %add12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %or.3) #3, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !20
  tail call void @arm_heavy_mb() #3
  %24 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pri, align 4
  %26 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr, align 8
  %add19 = add i32 %27, 42016
  %28 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %slot, align 8
  %mul21 = shl i32 %29, 6
  %add22 = add i32 %add19, %mul21
  %add.ptr23 = getelementptr i8, ptr %25, i32 %add22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %3) #3, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv40_perfctr_read(ptr nocapture noundef readonly %pm, ptr nocapture noundef %dom, ptr nocapture noundef %ctr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_pm, ptr %pm, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %slot = getelementptr inbounds %struct.nvkm_perfctr, ptr %ctr, i32 0, i32 4
  %2 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %slot, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb12
    i32 3, label %sw.bb21
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %addr = getelementptr inbounds %struct.nvkm_perfdom, ptr %dom, i32 0, i32 7
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr, align 8
  %add = add i32 %8, 42752
  %add.ptr = getelementptr i8, ptr %6, i32 %add
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  br label %sw.epilog.sink.split

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %pri5 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %pri5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri5, align 4
  %addr6 = getelementptr inbounds %struct.nvkm_perfdom, ptr %dom, i32 0, i32 7
  %12 = ptrtoint ptr %addr6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr6, align 8
  %add7 = add i32 %13, 42688
  %add.ptr8 = getelementptr i8, ptr %11, i32 %add7
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #3, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  br label %sw.epilog.sink.split

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %pri14 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %15 = ptrtoint ptr %pri14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri14, align 4
  %addr15 = getelementptr inbounds %struct.nvkm_perfdom, ptr %dom, i32 0, i32 7
  %17 = ptrtoint ptr %addr15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr15, align 8
  %add16 = add i32 %18, 42624
  %add.ptr17 = getelementptr i8, ptr %16, i32 %add16
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #3, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  br label %sw.epilog.sink.split

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %pri23 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %20 = ptrtoint ptr %pri23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri23, align 4
  %addr24 = getelementptr inbounds %struct.nvkm_perfdom, ptr %dom, i32 0, i32 7
  %22 = ptrtoint ptr %addr24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr24, align 8
  %add25 = add i32 %23, 42816
  %add.ptr26 = getelementptr i8, ptr %21, i32 %add25
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #3, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb21, %sw.bb12, %sw.bb3, %sw.bb
  %.sink = phi i32 [ %24, %sw.bb21 ], [ %19, %sw.bb12 ], [ %14, %sw.bb3 ], [ %9, %sw.bb ]
  %ctr29 = getelementptr inbounds %struct.nvkm_perfctr, ptr %ctr, i32 0, i32 6
  %25 = ptrtoint ptr %ctr29 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink, ptr %ctr29, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %pri31 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %26 = ptrtoint ptr %pri31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pri31, align 4
  %addr32 = getelementptr inbounds %struct.nvkm_perfdom, ptr %dom, i32 0, i32 7
  %28 = ptrtoint ptr %addr32 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %addr32, align 8
  %add33 = add i32 %29, 42496
  %add.ptr34 = getelementptr i8, ptr %27, i32 %add33
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #3, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  %clk = getelementptr inbounds %struct.nvkm_perfdom, ptr %dom, i32 0, i32 9
  %31 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %clk, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv40_perfctr_next(ptr nocapture noundef %pm, ptr nocapture noundef readnone %dom) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %sequence = getelementptr inbounds %struct.nv40_pm, ptr %pm, i32 0, i32 1
  %0 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sequence, align 4
  %sequence2 = getelementptr inbounds %struct.nvkm_pm, ptr %pm, i32 0, i32 5
  %2 = ptrtoint ptr %sequence2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sequence2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %device1 = getelementptr inbounds %struct.nvkm_pm, ptr %pm, i32 0, i32 1, i32 1, i32 1
  %4 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %7, i32 4194436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 32) #3, !srcloc !18
  %8 = ptrtoint ptr %sequence2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sequence2, align 4
  %10 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %sequence, align 4
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv40_pm_new_(ptr noundef %doms, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %ppm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 276) #6
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %ppm to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %ppm, align 4
  %call2 = tail call i32 @nvkm_pm_ctor(ptr noundef nonnull @nv40_pm_, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef nonnull %call7.i.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call7 = tail call i32 @nvkm_perfdom_new(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef %doms) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end5 ], [ -12, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_pm_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_perfdom_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv40_pm_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %ppm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 276) #6
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.nv40_pm_new_.exit_crit_edge, label %if.end.i

entry.nv40_pm_new_.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %nv40_pm_new_.exit

if.end.i:                                         ; preds = %entry
  %1 = ptrtoint ptr %ppm to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %ppm, align 4
  %call2.i = tail call i32 @nvkm_pm_ctor(ptr noundef nonnull @nv40_pm_, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef nonnull %call7.i.i.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.nv40_pm_new_.exit_crit_edge

if.end.i.nv40_pm_new_.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %nv40_pm_new_.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %call7.i = tail call i32 @nvkm_perfdom_new(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef nonnull @nv40_pm) #3
  br label %nv40_pm_new_.exit

nv40_pm_new_.exit:                                ; preds = %if.end5.i, %if.end.i.nv40_pm_new_.exit_crit_edge, %entry.nv40_pm_new_.exit_crit_edge
  %retval.0.i = phi i32 [ %call7.i, %if.end5.i ], [ -12, %entry.nv40_pm_new_.exit_crit_edge ], [ %call2.i, %if.end.i.nv40_pm_new_.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @nv40_perfctr_func, !1, !"nv40_perfctr_func", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/nv40.c", i32 71, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/nv40.c", i32 96, i32 37}
!4 = !{ptr @nv40_pm_, !5, !"nv40_pm_", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/nv40.c", i32 78, i32 1}
!6 = !{ptr @nv40_pm, !7, !"nv40_pm", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/nv40.c", i32 100, i32 1}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i64 2156227837}
!18 = !{i64 5388850}
!19 = !{i64 2156228321}
!20 = !{i64 2156228779}
!21 = !{i64 5389268}
!22 = !{i64 2156229264}
!23 = !{i64 2156229685}
!24 = !{i64 2156230106}
!25 = !{i64 2156230527}
!26 = !{i64 2156230948}
!27 = !{i64 2156232398}
