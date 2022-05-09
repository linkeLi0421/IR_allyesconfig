; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/gt215.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/devinit/gt215.c"
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
%struct.nv50_devinit = type { %struct.nvkm_devinit, i32 }

@gt215_devinit_pll_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 57, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: %08x/%dKhz unimplemented\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gt215_devinit_pll_set\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/devinit/gt215.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gt215_devinit_pll_set._entry_ptr = internal global ptr @gt215_devinit_pll_set._entry, section ".printk_index", align 4
@gt215_devinit = internal constant { %struct.nvkm_devinit_func, [32 x i8] } { %struct.nvkm_devinit_func { ptr null, ptr @nv50_devinit_preinit, ptr @nv50_devinit_init, ptr @nv04_devinit_post, ptr @gt215_devinit_mmio, ptr null, ptr @gt215_devinit_pll_set, ptr @gt215_devinit_disable }, [32 x i8] zeroinitializer }, align 32
@gt215_devinit_mmio_part = internal constant { [25 x i32], [60 x i8] } { [25 x i32] [i32 1050400, i32 1050812, i32 4, i32 1051168, i32 1051356, i32 4, i32 1052032, i32 1052124, i32 4, i32 1114112, i32 1118108, i32 4, i32 1118208, i32 1118268, i32 8, i32 1118336, i32 1118460, i32 4, i32 1118496, i32 1118716, i32 4, i32 1118976, i32 1119420, i32 4, i32 0], [60 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 57, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant [14 x i8] c"gt215_devinit\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 139, i32 1 }
@___asan_gen_.26 = private unnamed_addr constant [24 x i8] c"gt215_devinit_mmio_part\00", align 1
@___asan_gen_.27 = private constant [55 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/devinit/gt215.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 89, i32 1 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @gt215_devinit_pll_set._entry, ptr @gt215_devinit_pll_set._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @gt215_devinit, ptr @gt215_devinit_mmio_part], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt215_devinit_pll_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt215_devinit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt215_devinit_mmio_part to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gt215_devinit_pll_set(ptr noundef %init, i32 noundef %type, i32 noundef %freq) #0 align 64 {
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
  store i32 -1, ptr %N, align 4, !annotation !21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fN) #4
  %4 = ptrtoint ptr %fN to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %fN, align 4, !annotation !21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %M) #4
  %5 = ptrtoint ptr %M to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %M, align 4, !annotation !21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %P) #4
  %6 = ptrtoint ptr %P to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %P, align 4, !annotation !21
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
  %11 = and i32 %10, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %11)
  %switch = icmp eq i32 %11, 128
  br i1 %switch, label %do.body, label %do.body28

do.body:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  call void @arm_heavy_mb() #4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %reg = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 1
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 %15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1342178832) #4, !srcloc !23
  %16 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg, align 4
  %add8 = add i32 %17, 4
  %18 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri, align 4
  %add.ptr10 = getelementptr i8, ptr %19, i32 %add8
  %20 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #4, !srcloc !24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !26
  call void @arm_heavy_mb() #4
  %and = and i32 %20, -4194304
  %21 = ptrtoint ptr %P to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %P, align 4
  %shl = shl i32 %22, 16
  %23 = ptrtoint ptr %M to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %M, align 4
  %shl15 = shl i32 %24, 8
  %25 = ptrtoint ptr %N to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %N, align 4
  %or = or i32 %shl, %and
  %or16 = or i32 %or, %shl15
  %or17 = or i32 %or16, %26
  %27 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pri, align 4
  %add.ptr19 = getelementptr i8, ptr %28, i32 %add8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %or17) #4, !srcloc !23
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  call void @arm_heavy_mb() #4
  %29 = ptrtoint ptr %fN to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fN, align 4
  %31 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pri, align 4
  %33 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %reg, align 4
  %add26 = add i32 %34, 8
  %add.ptr27 = getelementptr i8, ptr %32, i32 %add26
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %30) #4, !srcloc !23
  br label %cleanup

do.body28:                                        ; preds = %if.end5
  %debug = getelementptr inbounds %struct.nvkm_devinit, ptr %init, i32 0, i32 1, i32 5
  %35 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp29 = icmp ugt i32 %36, 1
  br i1 %cmp29, label %do.end33, label %do.body28.cleanup_crit_edge

do.body28.cleanup_crit_edge:                      ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end33:                                         ; preds = %do.body28
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

cleanup:                                          ; preds = %do.end33, %do.body28.cleanup_crit_edge, %do.body, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call3, %do.body ], [ -22, %do.end33 ], [ -22, %do.body28.cleanup_crit_edge ]
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gt215_devinit_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pinit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nv50_devinit_new_(ptr noundef nonnull @gt215_devinit, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pinit) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_devinit_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_devinit_preinit(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_devinit_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_devinit_post(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gt215_devinit_mmio(ptr nocapture noundef %base, i32 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_devinit, ptr %base, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1050400, i32 %addr)
  %cmp.not = icmp ult i32 %addr, 1050400
  br i1 %cmp.not, label %entry.cleanup106_crit_edge, label %land.lhs.true

entry.cleanup106_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup106

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1050812, i32 %addr)
  %cmp5.not = icmp ugt i32 %addr, 1050812
  br i1 %cmp5.not, label %if.end104, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %if.end104.6.if.then_crit_edge, %land.lhs.true.6.if.then_crit_edge, %land.lhs.true.5.if.then_crit_edge, %land.lhs.true.4.if.then_crit_edge, %land.lhs.true.3.if.then_crit_edge, %land.lhs.true.2.if.then_crit_edge, %land.lhs.true.1.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %mmio.0130.lcssa = phi ptr [ @gt215_devinit_mmio_part, %land.lhs.true.if.then_crit_edge ], [ getelementptr inbounds ([25 x i32], ptr @gt215_devinit_mmio_part, i32 0, i32 3), %land.lhs.true.1.if.then_crit_edge ], [ getelementptr inbounds ([25 x i32], ptr @gt215_devinit_mmio_part, i32 0, i32 6), %land.lhs.true.2.if.then_crit_edge ], [ getelementptr inbounds ([25 x i32], ptr @gt215_devinit_mmio_part, i32 0, i32 9), %land.lhs.true.3.if.then_crit_edge ], [ getelementptr inbounds ([25 x i32], ptr @gt215_devinit_mmio_part, i32 0, i32 12), %land.lhs.true.4.if.then_crit_edge ], [ getelementptr inbounds ([25 x i32], ptr @gt215_devinit_mmio_part, i32 0, i32 15), %land.lhs.true.5.if.then_crit_edge ], [ getelementptr inbounds ([25 x i32], ptr @gt215_devinit_mmio_part, i32 0, i32 18), %land.lhs.true.6.if.then_crit_edge ], [ getelementptr inbounds ([25 x i32], ptr @gt215_devinit_mmio_part, i32 0, i32 21), %if.end104.6.if.then_crit_edge ]
  %arrayidx6 = getelementptr i32, ptr %mmio.0130.lcssa, i32 2
  %2 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx6, align 4
  %div = udiv i32 %addr, %3
  %and = and i32 %div, 7
  %r001540 = getelementptr inbounds %struct.nv50_devinit, ptr %base, i32 0, i32 1
  %4 = ptrtoint ptr %r001540 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %r001540, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not = icmp eq i32 %5, 0
  br i1 %tobool7.not, label %if.then8, label %if.then.cond.false_crit_edge

if.then.cond.false_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr9 = getelementptr i8, ptr %7, i32 5440
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #4, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !28
  %9 = ptrtoint ptr %r001540 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %r001540, align 4
  br label %cond.false

cond.false:                                       ; preds = %if.then8, %if.then.cond.false_crit_edge
  %10 = ptrtoint ptr %r001540 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %r001540, align 4
  %shr = lshr i32 %11, 16
  %and13 = and i32 %shr, 255
  %call.i = tail call i32 @__sw_hweight8(i32 noundef %and13) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %call.i)
  %cmp100.not = icmp ult i32 %and, %call.i
  %addr. = select i1 %cmp100.not, i32 %addr, i32 -1
  br label %cleanup106

if.end104:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 1051168, i32 %addr)
  %cmp.not.1 = icmp ult i32 %addr, 1051168
  br i1 %cmp.not.1, label %if.end104.cleanup106_crit_edge, label %land.lhs.true.1

if.end104.cleanup106_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup106

land.lhs.true.1:                                  ; preds = %if.end104
  call void @__sanitizer_cov_trace_const_cmp4(i32 1051356, i32 %addr)
  %cmp5.not.1 = icmp ugt i32 %addr, 1051356
  br i1 %cmp5.not.1, label %if.end104.1, label %land.lhs.true.1.if.then_crit_edge

land.lhs.true.1.if.then_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.end104.1:                                      ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1052032, i32 %addr)
  %cmp.not.2 = icmp ult i32 %addr, 1052032
  br i1 %cmp.not.2, label %if.end104.1.cleanup106_crit_edge, label %land.lhs.true.2

if.end104.1.cleanup106_crit_edge:                 ; preds = %if.end104.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup106

land.lhs.true.2:                                  ; preds = %if.end104.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1052124, i32 %addr)
  %cmp5.not.2 = icmp ugt i32 %addr, 1052124
  br i1 %cmp5.not.2, label %if.end104.2, label %land.lhs.true.2.if.then_crit_edge

land.lhs.true.2.if.then_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.end104.2:                                      ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1114112, i32 %addr)
  %cmp.not.3 = icmp ult i32 %addr, 1114112
  br i1 %cmp.not.3, label %if.end104.2.cleanup106_crit_edge, label %land.lhs.true.3

if.end104.2.cleanup106_crit_edge:                 ; preds = %if.end104.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup106

land.lhs.true.3:                                  ; preds = %if.end104.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1118108, i32 %addr)
  %cmp5.not.3 = icmp ugt i32 %addr, 1118108
  br i1 %cmp5.not.3, label %if.end104.3, label %land.lhs.true.3.if.then_crit_edge

land.lhs.true.3.if.then_crit_edge:                ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.end104.3:                                      ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1118208, i32 %addr)
  %cmp.not.4 = icmp ult i32 %addr, 1118208
  br i1 %cmp.not.4, label %if.end104.3.cleanup106_crit_edge, label %land.lhs.true.4

if.end104.3.cleanup106_crit_edge:                 ; preds = %if.end104.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup106

land.lhs.true.4:                                  ; preds = %if.end104.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1118268, i32 %addr)
  %cmp5.not.4 = icmp ugt i32 %addr, 1118268
  br i1 %cmp5.not.4, label %if.end104.4, label %land.lhs.true.4.if.then_crit_edge

land.lhs.true.4.if.then_crit_edge:                ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.end104.4:                                      ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1118336, i32 %addr)
  %cmp.not.5 = icmp ult i32 %addr, 1118336
  br i1 %cmp.not.5, label %if.end104.4.cleanup106_crit_edge, label %land.lhs.true.5

if.end104.4.cleanup106_crit_edge:                 ; preds = %if.end104.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup106

land.lhs.true.5:                                  ; preds = %if.end104.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1118460, i32 %addr)
  %cmp5.not.5 = icmp ugt i32 %addr, 1118460
  br i1 %cmp5.not.5, label %if.end104.5, label %land.lhs.true.5.if.then_crit_edge

land.lhs.true.5.if.then_crit_edge:                ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.end104.5:                                      ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1118496, i32 %addr)
  %cmp.not.6 = icmp ult i32 %addr, 1118496
  br i1 %cmp.not.6, label %if.end104.5.cleanup106_crit_edge, label %land.lhs.true.6

if.end104.5.cleanup106_crit_edge:                 ; preds = %if.end104.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup106

land.lhs.true.6:                                  ; preds = %if.end104.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1118716, i32 %addr)
  %cmp5.not.6 = icmp ugt i32 %addr, 1118716
  br i1 %cmp5.not.6, label %if.end104.6, label %land.lhs.true.6.if.then_crit_edge

land.lhs.true.6.if.then_crit_edge:                ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.end104.6:                                      ; preds = %land.lhs.true.6
  %12 = add i32 %addr, -1119421
  call void @__sanitizer_cov_trace_const_cmp4(i32 -445, i32 %12)
  %13 = icmp ult i32 %12, -445
  br i1 %13, label %if.end104.6.cleanup106_crit_edge, label %if.end104.6.if.then_crit_edge

if.end104.6.if.then_crit_edge:                    ; preds = %if.end104.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.end104.6.cleanup106_crit_edge:                 ; preds = %if.end104.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup106

cleanup106:                                       ; preds = %if.end104.6.cleanup106_crit_edge, %if.end104.5.cleanup106_crit_edge, %if.end104.4.cleanup106_crit_edge, %if.end104.3.cleanup106_crit_edge, %if.end104.2.cleanup106_crit_edge, %if.end104.1.cleanup106_crit_edge, %if.end104.cleanup106_crit_edge, %cond.false, %entry.cleanup106_crit_edge
  %retval.1 = phi i32 [ %addr., %cond.false ], [ %addr, %if.end104.6.cleanup106_crit_edge ], [ %addr, %if.end104.5.cleanup106_crit_edge ], [ %addr, %if.end104.4.cleanup106_crit_edge ], [ %addr, %if.end104.3.cleanup106_crit_edge ], [ %addr, %if.end104.2.cleanup106_crit_edge ], [ %addr, %if.end104.1.cleanup106_crit_edge ], [ %addr, %if.end104.cleanup106_crit_edge ], [ %addr, %entry.cleanup106_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @gt215_devinit_disable(ptr nocapture noundef readonly %init) #0 align 64 {
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
  %add.ptr = getelementptr i8, ptr %3, i32 5440
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 5452
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #4, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  %and = and i32 %4, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nvkm_subdev_disable(ptr noundef %1, i32 noundef 38, i32 noundef 0) #4
  tail call void @nvkm_subdev_disable(ptr noundef %1, i32 noundef 39, i32 noundef 0) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and7 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.then9, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nvkm_subdev_disable(ptr noundef %1, i32 noundef 30, i32 noundef 0) #4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end.if.end10_crit_edge
  %and11 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.then13, label %if.end10.if.end14_crit_edge

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nvkm_subdev_disable(ptr noundef %1, i32 noundef 40, i32 noundef 0) #4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end10.if.end14_crit_edge
  %and15 = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.then17, label %if.end14.if.end18_crit_edge

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nvkm_subdev_disable(ptr noundef %1, i32 noundef 28, i32 noundef 0) #4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end14.if.end18_crit_edge
  ret i64 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_disable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/devinit/gt215.c", i32 57, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @gt215_devinit_pll_set._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @gt215_devinit_pll_set._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @gt215_devinit, !9, !"gt215_devinit", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/devinit/gt215.c", i32 139, i32 1}
!10 = !{ptr @gt215_devinit_mmio_part, !11, !"gt215_devinit_mmio_part", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/devinit/gt215.c", i32 89, i32 1}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"auto-init"}
!22 = !{i64 2156227917}
!23 = !{i64 5388053}
!24 = !{i64 5388471}
!25 = !{i64 2156228776}
!26 = !{i64 2156229206}
!27 = !{i64 2156229657}
!28 = !{i64 2156234479}
!29 = !{i64 2156232444}
!30 = !{i64 2156232829}
