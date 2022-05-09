; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/gf100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/devinit/gf100.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_devinit_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvbios_pll = type { i32, i32, i32, i8, i8, i8, i8, %struct.anon.140, %struct.anon.140 }
%struct.anon.140 = type { i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.nvkm_devinit = type { ptr, %struct.nvkm_subdev, i8, i8 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@gf100_devinit_pll_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 58, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: %08x/%dKhz unimplemented\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gf100_devinit_pll_set\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/devinit/gf100.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gf100_devinit_pll_set._entry_ptr = internal global ptr @gf100_devinit_pll_set._entry, section ".printk_index", align 4
@gf100_devinit = internal constant { %struct.nvkm_devinit_func, [32 x i8] } { %struct.nvkm_devinit_func { ptr null, ptr @gf100_devinit_preinit, ptr @nv50_devinit_init, ptr @nv04_devinit_post, ptr null, ptr null, ptr @gf100_devinit_pll_set, ptr @gf100_devinit_disable }, [32 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 58, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant [14 x i8] c"gf100_devinit\00", align 1
@___asan_gen_.24 = private constant [55 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/devinit/gf100.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 108, i32 1 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @gf100_devinit_pll_set._entry, ptr @gf100_devinit_pll_set._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @gf100_devinit], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_devinit_pll_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_devinit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gf100_devinit_pll_set(ptr noundef %init, i32 noundef %type, i32 noundef %freq) #0 align 64 {
entry:
  %info = alloca %struct.nvbios_pll, align 4
  %N = alloca i32, align 4
  %fN = alloca i32, align 4
  %M = alloca i32, align 4
  %P = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_devinit, ptr %init, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %info) #4
  %2 = call ptr @memset(ptr %info, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %N) #4
  %3 = ptrtoint ptr %N to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %N, align 4, !annotation !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fN) #4
  %4 = ptrtoint ptr %fN to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %fN, align 4, !annotation !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %M) #4
  %5 = ptrtoint ptr %M to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %M, align 4, !annotation !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %P) #4
  %6 = ptrtoint ptr %P to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %P, align 4, !annotation !19
  %bios = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 21
  %7 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bios, align 8
  %call = call i32 @nvbios_pll_parse(ptr noundef %8, i32 noundef %type, ptr noundef nonnull %info) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %subdev1 = getelementptr inbounds %struct.nvkm_devinit, ptr %init, i32 0, i32 1
  %call3 = call i32 @gt215_pll_calc(ptr noundef %subdev1, ptr noundef nonnull %info, i32 noundef %freq, ptr noundef nonnull %N, ptr noundef nonnull %fN, ptr noundef nonnull %M, ptr noundef nonnull %P) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %9 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %info, align 4
  %11 = and i32 %10, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %11)
  %switch = icmp eq i32 %11, 128
  br i1 %switch, label %sw.bb, label %do.body29

sw.bb:                                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %reg = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 1
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg, align 4
  %add = add i32 %13, 12
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 %add
  %16 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  call void @arm_heavy_mb() #4
  %or = or i32 %16, 256
  %17 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri, align 4
  %add.ptr9 = getelementptr i8, ptr %18, i32 %add
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %or) #4, !srcloc !23
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  call void @arm_heavy_mb() #4
  %19 = ptrtoint ptr %P to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %P, align 4
  %shl = shl i32 %20, 16
  %21 = ptrtoint ptr %N to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %N, align 4
  %shl14 = shl i32 %22, 8
  %or15 = or i32 %shl14, %shl
  %23 = ptrtoint ptr %M to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %M, align 4
  %or16 = or i32 %or15, %24
  %25 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pri, align 4
  %27 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reg, align 4
  %add19 = add i32 %28, 4
  %add.ptr20 = getelementptr i8, ptr %26, i32 %add19
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %or16) #4, !srcloc !23
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  call void @arm_heavy_mb() #4
  %29 = ptrtoint ptr %fN to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fN, align 4
  %shl24 = shl i32 %30, 16
  %31 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pri, align 4
  %33 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %reg, align 4
  %add27 = add i32 %34, 16
  %add.ptr28 = getelementptr i8, ptr %32, i32 %add27
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %shl24) #4, !srcloc !23
  br label %cleanup

do.body29:                                        ; preds = %if.end5
  %debug = getelementptr inbounds %struct.nvkm_devinit, ptr %init, i32 0, i32 1, i32 5
  %35 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp30 = icmp ugt i32 %36, 1
  br i1 %cmp30, label %do.end34, label %do.body29.cleanup_crit_edge

do.body29.cleanup_crit_edge:                      ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end34:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #6
  %37 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %device2, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_devinit, ptr %init, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %40, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %type, i32 noundef %freq) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end34, %do.body29.cleanup_crit_edge, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call3, %sw.bb ], [ -22, %do.end34 ], [ -22, %do.body29.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %P) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %M) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fN) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %N) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %info) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_pll_parse(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gt215_pll_calc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_devinit_preinit(ptr nocapture noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device3 = getelementptr inbounds %struct.nvkm_devinit, ptr %base, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device3, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %3, i32 140300
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !26
  %post = getelementptr inbounds %struct.nvkm_devinit, ptr %base, i32 0, i32 2
  %5 = trunc i32 %4 to i8
  %6 = lshr i8 %5, 1
  %7 = and i8 %6, 1
  %8 = xor i8 %7, 1
  %9 = ptrtoint ptr %post to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %post, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gf100_devinit_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pinit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nv50_devinit_new_(ptr noundef nonnull @gf100_devinit, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pinit) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_devinit_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_devinit_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_devinit_post(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @gf100_devinit_disable(ptr nocapture noundef readonly %init) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_devinit, ptr %init, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 140544
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nvkm_subdev_disable(ptr noundef %1, i32 noundef 30, i32 noundef 0) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and2 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nvkm_subdev_disable(ptr noundef %1, i32 noundef 38, i32 noundef 0) #4
  tail call void @nvkm_subdev_disable(ptr noundef %1, i32 noundef 39, i32 noundef 0) #4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %and6 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end5.if.end9_crit_edge, label %if.then8

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nvkm_subdev_disable(ptr noundef %1, i32 noundef 40, i32 noundef 0) #4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end5.if.end9_crit_edge
  %and10 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.if.end13_crit_edge, label %if.then12

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nvkm_subdev_disable(ptr noundef %1, i32 noundef 37, i32 noundef 0) #4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end9.if.end13_crit_edge
  %and14 = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.if.end17_crit_edge, label %if.then16

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nvkm_subdev_disable(ptr noundef %1, i32 noundef 28, i32 noundef 0) #4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end13.if.end17_crit_edge
  %and18 = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.if.end21_crit_edge, label %if.then20

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nvkm_subdev_disable(ptr noundef %1, i32 noundef 28, i32 noundef 1) #4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end17.if.end21_crit_edge
  ret i64 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_disable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/devinit/gf100.c", i32 58, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @gf100_devinit_pll_set._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @gf100_devinit_pll_set._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @gf100_devinit, !9, !"gf100_devinit", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/devinit/gf100.c", i32 108, i32 1}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{!"auto-init"}
!20 = !{i64 5387504}
!21 = !{i64 2156227377}
!22 = !{i64 2156227779}
!23 = !{i64 5387086}
!24 = !{i64 2156228266}
!25 = !{i64 2156228703}
!26 = !{i64 2156233143}
!27 = !{i64 2156231496}
