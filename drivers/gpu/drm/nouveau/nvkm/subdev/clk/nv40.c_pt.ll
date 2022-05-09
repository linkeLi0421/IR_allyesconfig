; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/clk/nv40.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/clk/nv40.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_domain = type { i32, i8, i8, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.nvkm_clk = type { ptr, %struct.nvkm_subdev, ptr, %struct.nvkm_pstate, %struct.list_head, i32, %struct.work_struct, %struct.wait_queue_head, %struct.atomic_t, %struct.nvkm_notify, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_pstate = type { %struct.list_head, %struct.list_head, %struct.nvkm_cstate, i8, i8, i32, i8 }
%struct.nvkm_cstate = type { %struct.list_head, i8, [29 x i32], i8 }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.136, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.136 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvbios_pll = type { i32, i32, i32, i8, i8, i8, i8, %struct.anon.137, %struct.anon.137 }
%struct.anon.137 = type { i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.nv40_clk = type { %struct.nvkm_clk, i32, i32, i32, i32 }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"shader\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"memory\00", [25 x i8] zeroinitializer }, align 32
@nv40_clk = internal constant { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [6 x %struct.nvkm_domain] }, [32 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [6 x %struct.nvkm_domain] } { ptr null, ptr null, ptr @nv40_clk_read, ptr @nv40_clk_calc, ptr @nv40_clk_prog, ptr @nv40_clk_tidy, ptr null, i32 0, [6 x %struct.nvkm_domain] [%struct.nvkm_domain { i32 0, i8 -1, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 1, i8 -1, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 15, i8 -1, i8 0, ptr @.str, i32 1000 }, %struct.nvkm_domain { i32 17, i8 -1, i8 0, ptr @.str.1, i32 1000 }, %struct.nvkm_domain { i32 18, i8 -1, i8 0, ptr @.str.2, i32 1000 }, %struct.nvkm_domain { i32 29, i8 0, i8 0, ptr null, i32 0 }] }, [32 x i8] zeroinitializer }, align 32
@nv40_clk_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 119, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: unknown clock source %d %08x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nv40_clk_read\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/clk/nv40.c\00", [49 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nv40_clk_read._entry_ptr = internal global ptr @nv40_clk_read._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 15, i64 17, i64 18]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 213, i32 34 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 214, i32 34 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 215, i32 34 }
@___asan_gen_.19 = private unnamed_addr constant [9 x i8] c"nv40_clk\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 205, i32 1 }
@___asan_gen_.22 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/nv40.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 119, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @nv40_clk_read._entry, ptr @nv40_clk_read._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @nv40_clk, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv40_clk to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv40_clk_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv40_clk_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pclk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 476) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pll_calc = getelementptr inbounds %struct.nvkm_clk, ptr %call7.i.i, i32 0, i32 21
  %1 = ptrtoint ptr %pll_calc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @nv04_clk_pll_calc, ptr %pll_calc, align 4
  %pll_prog = getelementptr inbounds %struct.nvkm_clk, ptr %call7.i.i, i32 0, i32 22
  %2 = ptrtoint ptr %pll_prog to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @nv04_clk_pll_prog, ptr %pll_prog, align 8
  %3 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %pclk, align 4
  %call4 = tail call i32 @nvkm_clk_ctor(ptr noundef nonnull @nv40_clk, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i1 noundef zeroext true, ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_clk_pll_calc(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_clk_pll_prog(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_clk_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv40_clk_read(ptr noundef %base, i32 noundef %src) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %device3 = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device3, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %3, i32 49216
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #6, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !26
  %5 = zext i32 %src to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %src, label %do.body [
    i32 0, label %sw.bb
    i32 1, label %entry.cleanup_crit_edge
    i32 15, label %sw.bb7
    i32 17, label %sw.bb9
    i32 18, label %sw.bb13
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %crystal = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %crystal to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %crystal, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and = and i32 %4, 3
  %call8 = tail call fastcc i32 @read_clk(ptr noundef %base, i32 noundef %and)
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and10 = lshr i32 %4, 4
  %shr11 = and i32 %and10, 3
  %call12 = tail call fastcc i32 @read_clk(ptr noundef %base, i32 noundef %shr11)
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  %8 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device3, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 16416
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  %13 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %14, i32 16420
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #6, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  %shr.i = lshr i32 %15, 24
  %and8.i = lshr i32 %15, 16
  %shr9.i = and i32 %and8.i, 255
  %and12.i = and i32 %15, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %tobool.not.i = icmp sgt i32 %12, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool17.not.i = icmp eq i32 %and12.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool17.not.i
  br i1 %or.cond.i, label %sw.bb13.read_pll_2.exit_crit_edge, label %if.then.i

sw.bb13.read_pll_2.exit_crit_edge:                ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_pll_2.exit

if.then.i:                                        ; preds = %sw.bb13
  %and10.i = lshr i32 %15, 8
  %shr11.i = and i32 %and10.i, 255
  %mul.i = mul nuw nsw i32 %shr11.i, 27000
  %div.i = udiv i32 %mul.i, %and12.i
  %and18.i = and i32 %12, 1073742080
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %and18.i)
  %cmp.i = icmp eq i32 %and18.i, 1073741824
  br i1 %cmp.i, label %if.then19.i, label %if.then.i.read_pll_2.exit_crit_edge

if.then.i.read_pll_2.exit_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_pll_2.exit

if.then19.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr9.i)
  %tobool20.not.i = icmp eq i32 %shr9.i, 0
  br i1 %tobool20.not.i, label %if.then19.i.read_pll_2.exit_crit_edge, label %if.then21.i

if.then19.i.read_pll_2.exit_crit_edge:            ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_pll_2.exit

if.then21.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul22.i = mul nuw nsw i32 %div.i, %shr.i
  %div23.i = udiv i32 %mul22.i, %shr9.i
  br label %read_pll_2.exit

read_pll_2.exit:                                  ; preds = %if.then21.i, %if.then19.i.read_pll_2.exit_crit_edge, %if.then.i.read_pll_2.exit_crit_edge, %sw.bb13.read_pll_2.exit_crit_edge
  %khz.0.i = phi i32 [ %div23.i, %if.then21.i ], [ %div.i, %if.then.i.read_pll_2.exit_crit_edge ], [ 0, %sw.bb13.read_pll_2.exit_crit_edge ], [ 0, %if.then19.i.read_pll_2.exit_crit_edge ]
  %and14.i = lshr i32 %12, 16
  %shr15.i = and i32 %and14.i, 7
  %shr26.i = lshr i32 %khz.0.i, %shr15.i
  br label %cleanup

do.body:                                          ; preds = %entry
  %debug = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 5
  %16 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp = icmp ugt i32 %17, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device3, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.4, ptr noundef %name, i32 noundef %src, i32 noundef %4) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %read_pll_2.exit, %sw.bb9, %sw.bb7, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %shr26.i, %read_pll_2.exit ], [ %call12, %sw.bb9 ], [ %call8, %sw.bb7 ], [ %7, %sw.bb ], [ 100000, %entry.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv40_clk_calc(ptr noundef %base, ptr nocapture noundef readonly %cstate) #0 align 64 {
entry:
  %pll.i57 = alloca %struct.nvbios_pll, align 4
  %pll.i = alloca %struct.nvbios_pll, align 4
  %N1 = alloca i32, align 4
  %M1 = alloca i32, align 4
  %N2 = alloca i32, align 4
  %M2 = alloca i32, align 4
  %log2P = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.nvkm_cstate, ptr %cstate, i32 0, i32 2, i32 15
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr %struct.nvkm_cstate, ptr %cstate, i32 0, i32 2, i32 17
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %N1) #6
  %4 = ptrtoint ptr %N1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %N1, align 4, !annotation !29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %M1) #6
  %5 = ptrtoint ptr %M1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %M1, align 4, !annotation !29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %N2) #6
  %6 = ptrtoint ptr %N2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %N2, align 4, !annotation !29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %M2) #6
  %7 = ptrtoint ptr %M2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %M2, align 4, !annotation !29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %log2P) #6
  %8 = ptrtoint ptr %log2P to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %log2P, align 4, !annotation !29
  %subdev1.i = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pll.i) #6
  %9 = call ptr @memset(ptr %pll.i, i32 255, i32 56)
  %device.i = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device.i, align 4
  %bios.i = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 21
  %12 = ptrtoint ptr %bios.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bios.i, align 8
  %call.i = call i32 @nvbios_pll_parse(ptr noundef %13, i32 noundef 16384, ptr noundef nonnull %pll.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.nv40_clk_calc_pll.exit_crit_edge

entry.nv40_clk_calc_pll.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %nv40_clk_calc_pll.exit

if.end.i:                                         ; preds = %entry
  %max_freq.i = getelementptr inbounds %struct.nvbios_pll, ptr %pll.i, i32 0, i32 7, i32 1
  %14 = ptrtoint ptr %max_freq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_freq.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %1)
  %cmp.i = icmp ugt i32 %15, %1
  br i1 %cmp.i, label %if.then2.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %max_freq3.i = getelementptr inbounds %struct.nvbios_pll, ptr %pll.i, i32 0, i32 8, i32 1
  %16 = ptrtoint ptr %max_freq3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %max_freq3.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %call5.i = call i32 @nv04_pll_calc(ptr noundef %subdev1.i, ptr noundef nonnull %pll.i, i32 noundef %1, ptr noundef nonnull %N1, ptr noundef nonnull %M1, ptr noundef nonnull %N2, ptr noundef nonnull %M2, ptr noundef nonnull %log2P) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp eq i32 %call5.i, 0
  br i1 %cmp6.i, label %nv40_clk_calc_pll.exit.thread, label %if.end4.i.nv40_clk_calc_pll.exit_crit_edge

if.end4.i.nv40_clk_calc_pll.exit_crit_edge:       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nv40_clk_calc_pll.exit

nv40_clk_calc_pll.exit.thread:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pll.i) #6
  br label %cleanup

nv40_clk_calc_pll.exit:                           ; preds = %if.end4.i.nv40_clk_calc_pll.exit_crit_edge, %entry.nv40_clk_calc_pll.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.nv40_clk_calc_pll.exit_crit_edge ], [ %call5.i, %if.end4.i.nv40_clk_calc_pll.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pll.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %nv40_clk_calc_pll.exit.cleanup_crit_edge, label %if.end

nv40_clk_calc_pll.exit.cleanup_crit_edge:         ; preds = %nv40_clk_calc_pll.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %nv40_clk_calc_pll.exit
  %17 = ptrtoint ptr %N2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %N2, align 4
  %19 = ptrtoint ptr %M2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %M2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp3 = icmp eq i32 %18, %20
  %21 = ptrtoint ptr %log2P to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %log2P, align 4
  %shl = shl i32 %22, 16
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %shl, -2147483392
  %23 = ptrtoint ptr %N1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %N1, align 4
  %shl5 = shl i32 %24, 8
  %25 = ptrtoint ptr %M1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %M1, align 4
  %or6 = or i32 %shl5, %26
  br label %if.end17

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %or8 = or i32 %shl, -1073741824
  %shl10 = shl i32 %18, 24
  %shl11 = shl i32 %20, 16
  %or12 = or i32 %shl11, %shl10
  %27 = ptrtoint ptr %N1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %N1, align 4
  %shl13 = shl i32 %28, 8
  %or14 = or i32 %or12, %shl13
  %29 = ptrtoint ptr %M1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %M1, align 4
  %or15 = or i32 %or14, %30
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then4
  %or8.sink = phi i32 [ %or, %if.then4 ], [ %or8, %if.else ]
  %or15.sink = phi i32 [ %or6, %if.then4 ], [ %or15, %if.else ]
  %31 = getelementptr inbounds %struct.nv40_clk, ptr %base, i32 0, i32 2
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or8.sink, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nv40_clk, ptr %base, i32 0, i32 3
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or15.sink, ptr %33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp18.not = icmp eq i32 %3, %1
  %or.cond = or i1 %tobool.not, %cmp18.not
  br i1 %or.cond, label %if.else29, label %if.then19

if.then19:                                        ; preds = %if.end17
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pll.i57) #6
  %35 = call ptr @memset(ptr %pll.i57, i32 255, i32 56)
  %36 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %device.i, align 4
  %bios.i60 = getelementptr inbounds %struct.nvkm_device, ptr %37, i32 0, i32 21
  %38 = ptrtoint ptr %bios.i60 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bios.i60, align 8
  %call.i61 = call i32 @nvbios_pll_parse(ptr noundef %39, i32 noundef 16392, ptr noundef nonnull %pll.i57) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %tobool.not.i62 = icmp eq i32 %call.i61, 0
  br i1 %tobool.not.i62, label %if.end.i65, label %if.then19.nv40_clk_calc_pll.exit73_crit_edge

if.then19.nv40_clk_calc_pll.exit73_crit_edge:     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %nv40_clk_calc_pll.exit73

if.end.i65:                                       ; preds = %if.then19
  %max_freq.i63 = getelementptr inbounds %struct.nvbios_pll, ptr %pll.i57, i32 0, i32 7, i32 1
  %40 = ptrtoint ptr %max_freq.i63 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %max_freq.i63, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %3)
  %cmp.i64 = icmp ugt i32 %41, %3
  br i1 %cmp.i64, label %if.then2.i67, label %if.end.i65.if.end4.i71_crit_edge

if.end.i65.if.end4.i71_crit_edge:                 ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i71

if.then2.i67:                                     ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #8
  %max_freq3.i66 = getelementptr inbounds %struct.nvbios_pll, ptr %pll.i57, i32 0, i32 8, i32 1
  %42 = ptrtoint ptr %max_freq3.i66 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %max_freq3.i66, align 4
  br label %if.end4.i71

if.end4.i71:                                      ; preds = %if.then2.i67, %if.end.i65.if.end4.i71_crit_edge
  %call5.i68 = call i32 @nv04_pll_calc(ptr noundef %subdev1.i, ptr noundef nonnull %pll.i57, i32 noundef %3, ptr noundef nonnull %N1, ptr noundef nonnull %M1, ptr noundef null, ptr noundef null, ptr noundef nonnull %log2P) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i68)
  %cmp6.i69 = icmp eq i32 %call5.i68, 0
  br i1 %cmp6.i69, label %nv40_clk_calc_pll.exit73.thread, label %if.end4.i71.nv40_clk_calc_pll.exit73_crit_edge

if.end4.i71.nv40_clk_calc_pll.exit73_crit_edge:   ; preds = %if.end4.i71
  call void @__sanitizer_cov_trace_pc() #8
  br label %nv40_clk_calc_pll.exit73

nv40_clk_calc_pll.exit73.thread:                  ; preds = %if.end4.i71
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pll.i57) #6
  br label %cleanup

nv40_clk_calc_pll.exit73:                         ; preds = %if.end4.i71.nv40_clk_calc_pll.exit73_crit_edge, %if.then19.nv40_clk_calc_pll.exit73_crit_edge
  %retval.0.i72 = phi i32 [ %call.i61, %if.then19.nv40_clk_calc_pll.exit73_crit_edge ], [ %call5.i68, %if.end4.i71.nv40_clk_calc_pll.exit73_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pll.i57) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i72)
  %cmp21 = icmp slt i32 %retval.0.i72, 0
  br i1 %cmp21, label %nv40_clk_calc_pll.exit73.cleanup_crit_edge, label %if.end23

nv40_clk_calc_pll.exit73.cleanup_crit_edge:       ; preds = %nv40_clk_calc_pll.exit73
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23:                                         ; preds = %nv40_clk_calc_pll.exit73
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %log2P to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %log2P, align 4
  %shl24 = shl i32 %44, 16
  %45 = ptrtoint ptr %N1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %N1, align 4
  %shl26 = shl i32 %46, 8
  %47 = ptrtoint ptr %M1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %M1, align 4
  %or25 = or i32 %shl24, %shl26
  %or27 = or i32 %or25, %48
  %or28 = or i32 %or27, -1073741824
  %spll = getelementptr inbounds %struct.nv40_clk, ptr %base, i32 0, i32 4
  %49 = ptrtoint ptr %spll to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %or28, ptr %spll, align 4
  %ctrl = getelementptr inbounds %struct.nv40_clk, ptr %base, i32 0, i32 1
  %50 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 547, ptr %ctrl, align 4
  br label %cleanup

if.else29:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %spll30 = getelementptr inbounds %struct.nv40_clk, ptr %base, i32 0, i32 4
  %51 = ptrtoint ptr %spll30 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %spll30, align 4
  %ctrl31 = getelementptr inbounds %struct.nv40_clk, ptr %base, i32 0, i32 1
  %52 = ptrtoint ptr %ctrl31 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 819, ptr %ctrl31, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else29, %if.end23, %nv40_clk_calc_pll.exit73.cleanup_crit_edge, %nv40_clk_calc_pll.exit73.thread, %nv40_clk_calc_pll.exit.cleanup_crit_edge, %nv40_clk_calc_pll.exit.thread
  %retval.0 = phi i32 [ %retval.0.i, %nv40_clk_calc_pll.exit.cleanup_crit_edge ], [ %retval.0.i72, %nv40_clk_calc_pll.exit73.cleanup_crit_edge ], [ 0, %if.else29 ], [ 0, %if.end23 ], [ -34, %nv40_clk_calc_pll.exit.thread ], [ -34, %nv40_clk_calc_pll.exit73.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %log2P) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %M2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %N2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %M1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %N1) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv40_clk_prog(ptr nocapture noundef readonly %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %3, i32 49216
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #6, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  %and = and i32 %4, -820
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr6 = getelementptr i8, ptr %6, i32 49216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %and) #6, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !33
  tail call void @arm_heavy_mb() #6
  %npll_coef = getelementptr inbounds %struct.nv40_clk, ptr %base, i32 0, i32 3
  %7 = ptrtoint ptr %npll_coef to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %npll_coef, align 4
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr12 = getelementptr i8, ptr %10, i32 16388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %8) #6, !srcloc !32
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr18 = getelementptr i8, ptr %12, i32 16384
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #6, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !35
  tail call void @arm_heavy_mb() #6
  %and24 = and i32 %13, 1073282815
  %npll_ctrl = getelementptr inbounds %struct.nv40_clk, ptr %base, i32 0, i32 2
  %14 = ptrtoint ptr %npll_ctrl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %npll_ctrl, align 4
  %or25 = or i32 %15, %and24
  %16 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pri, align 4
  %add.ptr27 = getelementptr i8, ptr %17, i32 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %or25) #6, !srcloc !32
  %18 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri, align 4
  %add.ptr34 = getelementptr i8, ptr %19, i32 16392
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #6, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  tail call void @arm_heavy_mb() #6
  %and40 = and i32 %20, 1073217536
  %spll = getelementptr inbounds %struct.nv40_clk, ptr %base, i32 0, i32 4
  %21 = ptrtoint ptr %spll to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %spll, align 4
  %or41 = or i32 %22, %and40
  %23 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri, align 4
  %add.ptr43 = getelementptr i8, ptr %24, i32 16392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 %or41) #6, !srcloc !32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #6
  %30 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pri, align 4
  %add.ptr50 = getelementptr i8, ptr %31, i32 49216
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50) #6, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %and56 = and i32 %32, -820
  %ctrl = getelementptr inbounds %struct.nv40_clk, ptr %base, i32 0, i32 1
  %33 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ctrl, align 4
  %or57 = or i32 %34, %and56
  %35 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pri, align 4
  %add.ptr59 = getelementptr i8, ptr %36, i32 49216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 %or57) #6, !srcloc !32
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @nv40_clk_tidy(ptr nocapture noundef %obj) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_clk(ptr nocapture noundef readonly %clk, i32 noundef %src) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %src to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %src, label %entry.return_crit_edge [
    i32 3, label %sw.bb
    i32 2, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %entry
  %device1.i = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %device1.i, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 16384
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  %6 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %7, i32 16388
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #6, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  %shr.i = lshr i32 %8, 24
  %and8.i = lshr i32 %8, 16
  %shr9.i = and i32 %and8.i, 255
  %and12.i = and i32 %8, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool.not.i = icmp sgt i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool17.not.i = icmp eq i32 %and12.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool17.not.i
  br i1 %or.cond.i, label %sw.bb.read_pll_2.exit_crit_edge, label %if.then.i

sw.bb.read_pll_2.exit_crit_edge:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_pll_2.exit

if.then.i:                                        ; preds = %sw.bb
  %and10.i = lshr i32 %8, 8
  %shr11.i = and i32 %and10.i, 255
  %mul.i = mul nuw nsw i32 %shr11.i, 27000
  %div.i = udiv i32 %mul.i, %and12.i
  %and18.i = and i32 %5, 1073742080
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %and18.i)
  %cmp.i = icmp eq i32 %and18.i, 1073741824
  br i1 %cmp.i, label %if.then19.i, label %if.then.i.read_pll_2.exit_crit_edge

if.then.i.read_pll_2.exit_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_pll_2.exit

if.then19.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr9.i)
  %tobool20.not.i = icmp eq i32 %shr9.i, 0
  br i1 %tobool20.not.i, label %if.then19.i.read_pll_2.exit_crit_edge, label %if.then21.i

if.then19.i.read_pll_2.exit_crit_edge:            ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_pll_2.exit

if.then21.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul22.i = mul nuw nsw i32 %div.i, %shr.i
  %div23.i = udiv i32 %mul22.i, %shr9.i
  br label %read_pll_2.exit

read_pll_2.exit:                                  ; preds = %if.then21.i, %if.then19.i.read_pll_2.exit_crit_edge, %if.then.i.read_pll_2.exit_crit_edge, %sw.bb.read_pll_2.exit_crit_edge
  %khz.0.i = phi i32 [ %div23.i, %if.then21.i ], [ %div.i, %if.then.i.read_pll_2.exit_crit_edge ], [ 0, %sw.bb.read_pll_2.exit_crit_edge ], [ 0, %if.then19.i.read_pll_2.exit_crit_edge ]
  %and14.i = lshr i32 %5, 16
  %shr15.i = and i32 %and14.i, 7
  %shr26.i = lshr i32 %khz.0.i, %shr15.i
  br label %return

sw.bb1:                                           ; preds = %entry
  %device1.i4 = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %device1.i4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device1.i4, align 4
  %pri.i5 = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %pri.i5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri.i5, align 4
  %add.ptr.i6 = getelementptr i8, ptr %12, i32 16392
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #6, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %tobool.not.i7 = icmp sgt i32 %13, -1
  br i1 %tobool.not.i7, label %sw.bb1.read_pll_1.exit_crit_edge, label %if.then.i10

sw.bb1.read_pll_1.exit_crit_edge:                 ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_pll_1.exit

if.then.i10:                                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %and4.i = and i32 %13, 255
  %and2.i = lshr i32 %13, 8
  %shr3.i = and i32 %and2.i, 255
  %mul.i8 = mul nuw nsw i32 %shr3.i, 27000
  %div.i9 = udiv i32 %mul.i8, %and4.i
  br label %read_pll_1.exit

read_pll_1.exit:                                  ; preds = %if.then.i10, %sw.bb1.read_pll_1.exit_crit_edge
  %khz.0.i11 = phi i32 [ %div.i9, %if.then.i10 ], [ 0, %sw.bb1.read_pll_1.exit_crit_edge ]
  %and.i = lshr i32 %13, 16
  %shr.i12 = and i32 %and.i, 7
  %shr7.i = lshr i32 %khz.0.i11, %shr.i12
  br label %return

return:                                           ; preds = %read_pll_1.exit, %read_pll_2.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %shr7.i, %read_pll_1.exit ], [ %shr26.i, %read_pll_2.exit ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_pll_parse(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_pll_calc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/nv40.c", i32 213, i32 34}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/nv40.c", i32 214, i32 34}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/nv40.c", i32 215, i32 34}
!6 = !{ptr @nv40_clk, !7, !"nv40_clk", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/nv40.c", i32 205, i32 1}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/nv40.c", i32 119, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @nv40_clk_read._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @nv40_clk_read._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i64 5390644}
!26 = !{i64 2156234359}
!27 = !{i64 2156232358}
!28 = !{i64 2156232749}
!29 = !{!"auto-init"}
!30 = !{i64 2156239974}
!31 = !{i64 2156240376}
!32 = !{i64 5390226}
!33 = !{i64 2156240829}
!34 = !{i64 2156241678}
!35 = !{i64 2156242088}
!36 = !{i64 2156242964}
!37 = !{i64 2156243364}
!38 = !{i64 2156245523}
!39 = !{i64 2156245923}
!40 = !{i64 2156231967}
