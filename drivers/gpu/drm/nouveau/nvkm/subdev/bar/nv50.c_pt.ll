; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/bar/nv50.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bar/nv50.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nvkm_bar_func = type { ptr, ptr, ptr, %struct.anon.136, %struct.anon.136, ptr }
%struct.anon.136 = type { ptr, ptr, ptr, ptr }
%struct.nv50_bar = type { %struct.nvkm_bar, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_bar = type { ptr, %struct.nvkm_subdev, %struct.spinlock, i8, i8 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_gpuobj = type { %union.anon.157, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon.157 = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_mm_node = type { %struct.list_head, %struct.list_head, ptr, i8, i8, i32, i32 }
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nvkm_vmm = type { ptr, ptr, ptr, i32, %struct.kref, %struct.mutex, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_root, %struct.rb_root, i8, [51 x %struct.atomic_t], i32, ptr, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rb_root = type { ptr }
%struct.nvkm_gpuobj_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@nv50_bar_oneinit.bar1_lock = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@nv50_bar_oneinit.bar2_lock = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bar2\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bar1\00", [27 x i8] zeroinitializer }, align 32
@nv50_bar_func = internal constant { %struct.nvkm_bar_func, [48 x i8] } { %struct.nvkm_bar_func { ptr @nv50_bar_dtor, ptr @nv50_bar_oneinit, ptr @nv50_bar_init, %struct.anon.136 { ptr @nv50_bar_bar1_init, ptr @nv50_bar_bar1_fini, ptr @nv50_bar_bar1_wait, ptr @nv50_bar_bar1_vmm }, %struct.anon.136 { ptr @nv50_bar_bar2_init, ptr @nv50_bar_bar2_fini, ptr @nv50_bar_bar1_wait, ptr @nv50_bar_bar2_vmm }, ptr @nv50_bar_flush }, [48 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/bar/nv50.c\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s: timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [10 x i8] c"bar1_lock\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 110, i32 31 }
@___asan_gen_.7 = private unnamed_addr constant [10 x i8] c"bar2_lock\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 111, i32 31 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 136, i32 19 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 176, i32 19 }
@___asan_gen_.16 = private unnamed_addr constant [14 x i8] c"nv50_bar_func\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 235, i32 1 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/bar/nv50.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 39, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @nv50_bar_oneinit.bar1_lock, ptr @nv50_bar_oneinit.bar2_lock, ptr @.str, ptr @.str.1, ptr @nv50_bar_func, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_bar_oneinit.bar1_lock to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_bar_oneinit.bar2_lock to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_bar_func to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @nv50_bar_bar1_vmm(ptr nocapture noundef readonly %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bar1_vmm = getelementptr inbounds %struct.nv50_bar, ptr %base, i32 0, i32 5
  %0 = ptrtoint ptr %bar1_vmm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bar1_vmm, align 4
  ret ptr %1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_bar_bar1_wait(ptr noundef %base) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nvkm_bar_flush(ptr noundef %base) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_bar_flush(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_bar_bar1_fini(ptr nocapture noundef readonly %bar) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %device = getelementptr inbounds %struct.nvkm_bar, ptr %bar, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 5896
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_bar_bar1_init(ptr nocapture noundef readonly %base) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_bar, ptr %base, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !24
  tail call void @arm_heavy_mb() #6
  %bar1 = getelementptr inbounds %struct.nv50_bar, ptr %base, i32 0, i32 6
  %2 = ptrtoint ptr %bar1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bar1, align 4
  %node = getelementptr inbounds %struct.nvkm_gpuobj, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %node, align 4
  %offset = getelementptr inbounds %struct.nvkm_mm_node, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  %shr = lshr i32 %7, 4
  %or = or i32 %shr, -2147483648
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr2 = getelementptr i8, ptr %9, i32 5896
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %or) #6, !srcloc !23
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @nv50_bar_bar2_vmm(ptr nocapture noundef readonly %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bar2_vmm = getelementptr inbounds %struct.nv50_bar, ptr %base, i32 0, i32 7
  %0 = ptrtoint ptr %bar2_vmm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bar2_vmm, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_bar_bar2_fini(ptr nocapture noundef readonly %bar) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !25
  tail call void @arm_heavy_mb() #6
  %device = getelementptr inbounds %struct.nvkm_bar, ptr %bar, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 5900
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_bar_bar2_init(ptr nocapture noundef readonly %base) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_bar, ptr %base, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !26
  tail call void @arm_heavy_mb() #6
  %mem = getelementptr inbounds %struct.nv50_bar, ptr %base, i32 0, i32 2
  %2 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mem, align 4
  %addr = getelementptr inbounds %struct.nvkm_gpuobj, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %addr, align 8
  %shr = lshr i64 %5, 12
  %conv = trunc i64 %shr to i32
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr2 = getelementptr i8, ptr %7, i32 5892
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %conv) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mem, align 4
  %addr7 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %addr7 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %addr7, align 8
  %shr8 = lshr i64 %11, 12
  %12 = trunc i64 %shr8 to i32
  %conv10 = or i32 %12, 1073741824
  %13 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri, align 4
  %add.ptr12 = getelementptr i8, ptr %14, i32 5892
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %conv10) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  tail call void @arm_heavy_mb() #6
  %bar2 = getelementptr inbounds %struct.nv50_bar, ptr %base, i32 0, i32 8
  %15 = ptrtoint ptr %bar2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bar2, align 4
  %node = getelementptr inbounds %struct.nvkm_gpuobj, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %node, align 4
  %offset = getelementptr inbounds %struct.nvkm_mm_node, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset, align 4
  %shr16 = lshr i32 %20, 4
  %or17 = or i32 %shr16, -2147483648
  %21 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pri, align 4
  %add.ptr19 = getelementptr i8, ptr %22, i32 5900
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %or17) #6, !srcloc !23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_bar_init(ptr nocapture noundef readonly %base) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_bar, ptr %base, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  tail call void @arm_heavy_mb() #6
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %3, i32 6400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 0) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr3.1 = getelementptr i8, ptr %5, i32 6404
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.1, i32 0) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr3.2 = getelementptr i8, ptr %7, i32 6408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.2, i32 0) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr3.3 = getelementptr i8, ptr %9, i32 6412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.3, i32 0) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr3.4 = getelementptr i8, ptr %11, i32 6416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.4, i32 0) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add.ptr3.5 = getelementptr i8, ptr %13, i32 6420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.5, i32 0) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr3.6 = getelementptr i8, ptr %15, i32 6424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.6, i32 0) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pri, align 4
  %add.ptr3.7 = getelementptr i8, ptr %17, i32 6428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.7, i32 0) #6, !srcloc !23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_bar_oneinit(ptr noundef %base) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_bar, ptr %base, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %mem = getelementptr inbounds %struct.nv50_bar, ptr %base, i32 0, i32 2
  %call = tail call i32 @nvkm_gpuobj_new(ptr noundef %1, i32 noundef 131072, i32 noundef 0, i1 noundef zeroext false, ptr noundef null, ptr noundef %mem) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %pgd_addr = getelementptr inbounds %struct.nv50_bar, ptr %base, i32 0, i32 1
  %2 = ptrtoint ptr %pgd_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pgd_addr, align 4
  %4 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mem, align 4
  %pad = getelementptr inbounds %struct.nv50_bar, ptr %base, i32 0, i32 3
  %call4 = tail call i32 @nvkm_gpuobj_new(ptr noundef %1, i32 noundef %3, i32 noundef 0, i1 noundef zeroext false, ptr noundef %5, ptr noundef %pad) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %6 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mem, align 4
  %pgd = getelementptr inbounds %struct.nv50_bar, ptr %base, i32 0, i32 4
  %call9 = tail call i32 @nvkm_gpuobj_new(ptr noundef %1, i32 noundef 16384, i32 noundef 0, i1 noundef zeroext false, ptr noundef %7, ptr noundef %pgd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %resource_size = getelementptr inbounds %struct.nvkm_device_func, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %resource_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %resource_size, align 4
  %call13 = tail call i32 %11(ptr noundef %1, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %conv = zext i32 %call13 to i64
  %dec = add i32 %call13, -1
  %bar2_vmm = getelementptr inbounds %struct.nv50_bar, ptr %base, i32 0, i32 7
  %call17 = tail call i32 @nvkm_vmm_new(ptr noundef %1, i64 noundef 4294967296, i64 noundef %conv, ptr noundef null, i32 noundef 0, ptr noundef nonnull @nv50_bar_oneinit.bar2_lock, ptr noundef nonnull @.str, ptr noundef %bar2_vmm) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %12 = ptrtoint ptr %bar2_vmm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bar2_vmm, align 4
  %arrayidx = getelementptr %struct.nvkm_vmm, ptr %13, i32 0, i32 14, i32 16
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #6
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 1, ptr elementtype(i32) %arrayidx) #6, !srcloc !30
  %debug = getelementptr inbounds %struct.nvkm_bar, ptr %base, i32 0, i32 1, i32 5
  %15 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %debug, align 4
  %17 = ptrtoint ptr %bar2_vmm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bar2_vmm, align 4
  %debug25 = getelementptr inbounds %struct.nvkm_vmm, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %debug25 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %16, ptr %debug25, align 4
  %20 = load ptr, ptr %bar2_vmm, align 4
  %call27 = tail call i32 @nvkm_vmm_boot(ptr noundef %20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end30:                                         ; preds = %if.end20
  %21 = ptrtoint ptr %bar2_vmm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bar2_vmm, align 4
  %23 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mem, align 4
  %memory = getelementptr inbounds %struct.nvkm_gpuobj, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %memory, align 8
  %call33 = tail call i32 @nvkm_vmm_join(ptr noundef %22, ptr noundef %26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end36:                                         ; preds = %if.end30
  %27 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mem, align 4
  %bar2 = getelementptr inbounds %struct.nv50_bar, ptr %base, i32 0, i32 8
  %call38 = tail call i32 @nvkm_gpuobj_new(ptr noundef %1, i32 noundef 24, i32 noundef 16, i1 noundef zeroext false, ptr noundef %28, ptr noundef %bar2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end41:                                         ; preds = %if.end36
  %29 = ptrtoint ptr %bar2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bar2, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %call44 = tail call ptr %34(ptr noundef %30) #6
  %35 = ptrtoint ptr %bar2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bar2, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 8
  %wr32 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %wr32, align 4
  tail call void %40(ptr noundef %36, i32 noundef 0, i32 noundef 2143289344) #6
  %41 = ptrtoint ptr %bar2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bar2, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 8
  %wr3248 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %wr3248 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %wr3248, align 4
  tail call void %46(ptr noundef %42, i32 noundef 4, i32 noundef %dec) #6
  %47 = ptrtoint ptr %bar2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bar2, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 8
  %wr3252 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %wr3252 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %wr3252, align 4
  tail call void %52(ptr noundef %48, i32 noundef 8, i32 noundef 0) #6
  %53 = ptrtoint ptr %bar2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bar2, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 8
  %wr3257 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %wr3257 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %wr3257, align 4
  tail call void %58(ptr noundef %54, i32 noundef 12, i32 noundef 16777217) #6
  %59 = ptrtoint ptr %bar2 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bar2, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 8
  %wr3265 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %wr3265 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %wr3265, align 4
  tail call void %64(ptr noundef %60, i32 noundef 16, i32 noundef 0) #6
  %65 = ptrtoint ptr %bar2 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bar2, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 8
  %wr3268 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %wr3268 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %wr3268, align 4
  tail call void %70(ptr noundef %66, i32 noundef 20, i32 noundef 0) #6
  %71 = ptrtoint ptr %bar2 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bar2, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 8
  %release = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %release, align 4
  tail call void %76(ptr noundef %72) #6
  %oneinit = getelementptr inbounds %struct.nvkm_bar, ptr %base, i32 0, i32 1, i32 8
  %77 = ptrtoint ptr %oneinit to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %oneinit, align 4
  tail call void @nvkm_bar_bar2_init(ptr noundef %1) #6
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 8
  %resource_size75 = getelementptr inbounds %struct.nvkm_device_func, ptr %79, i32 0, i32 7
  %80 = ptrtoint ptr %resource_size75 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %resource_size75, align 4
  %call76 = tail call i32 %81(ptr noundef %1, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool78.not = icmp eq i32 %call76, 0
  br i1 %tobool78.not, label %if.end41.cleanup_crit_edge, label %if.end80

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end80:                                         ; preds = %if.end41
  %conv77 = zext i32 %call76 to i64
  %dec82 = add i32 %call76, -1
  %bar1_vmm = getelementptr inbounds %struct.nv50_bar, ptr %base, i32 0, i32 5
  %call84 = tail call i32 @nvkm_vmm_new(ptr noundef %1, i64 noundef 0, i64 noundef %conv77, ptr noundef null, i32 noundef 0, ptr noundef nonnull @nv50_bar_oneinit.bar1_lock, ptr noundef nonnull @.str.1, ptr noundef %bar1_vmm) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end87, label %if.end80.cleanup_crit_edge

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end87:                                         ; preds = %if.end80
  %82 = ptrtoint ptr %bar1_vmm to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %bar1_vmm, align 4
  %arrayidx90 = getelementptr %struct.nvkm_vmm, ptr %83, i32 0, i32 14, i32 16
  %call.i.i253 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx90, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %arrayidx90, i32 1, i32 3, i32 1) #6
  %84 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx90, ptr %arrayidx90, i32 1, ptr elementtype(i32) %arrayidx90) #6, !srcloc !30
  %85 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %debug, align 4
  %87 = ptrtoint ptr %bar1_vmm to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %bar1_vmm, align 4
  %debug95 = getelementptr inbounds %struct.nvkm_vmm, ptr %88, i32 0, i32 3
  %89 = ptrtoint ptr %debug95 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %86, ptr %debug95, align 4
  %90 = load ptr, ptr %bar1_vmm, align 4
  %91 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mem, align 4
  %memory98 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %memory98 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %memory98, align 8
  %call99 = tail call i32 @nvkm_vmm_join(ptr noundef %90, ptr noundef %94) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.end102, label %if.end87.cleanup_crit_edge

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end102:                                        ; preds = %if.end87
  %95 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mem, align 4
  %bar1 = getelementptr inbounds %struct.nv50_bar, ptr %base, i32 0, i32 6
  %call104 = tail call i32 @nvkm_gpuobj_new(ptr noundef %1, i32 noundef 24, i32 noundef 16, i1 noundef zeroext false, ptr noundef %96, ptr noundef %bar1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end107, label %if.end102.cleanup_crit_edge

if.end102.cleanup_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end107:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #8
  %97 = ptrtoint ptr %bar1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %bar1, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 8
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 4
  %call111 = tail call ptr %102(ptr noundef %98) #6
  %103 = ptrtoint ptr %bar1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %bar1, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 8
  %wr32113 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %106, i32 0, i32 3
  %107 = ptrtoint ptr %wr32113 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %wr32113, align 4
  tail call void %108(ptr noundef %104, i32 noundef 0, i32 noundef 2143289344) #6
  %109 = ptrtoint ptr %bar1 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %bar1, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %110, align 8
  %wr32116 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %112, i32 0, i32 3
  %113 = ptrtoint ptr %wr32116 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %wr32116, align 4
  tail call void %114(ptr noundef %110, i32 noundef 4, i32 noundef %dec82) #6
  %115 = ptrtoint ptr %bar1 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %bar1, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %116, align 8
  %wr32121 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %118, i32 0, i32 3
  %119 = ptrtoint ptr %wr32121 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %wr32121, align 4
  tail call void %120(ptr noundef %116, i32 noundef 8, i32 noundef 0) #6
  %121 = ptrtoint ptr %bar1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %bar1, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %122, align 8
  %wr32126 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %124, i32 0, i32 3
  %125 = ptrtoint ptr %wr32126 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %wr32126, align 4
  tail call void %126(ptr noundef %122, i32 noundef 12, i32 noundef 0) #6
  %127 = ptrtoint ptr %bar1 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %bar1, align 4
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %128, align 8
  %wr32137 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %130, i32 0, i32 3
  %131 = ptrtoint ptr %wr32137 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %wr32137, align 4
  tail call void %132(ptr noundef %128, i32 noundef 16, i32 noundef 0) #6
  %133 = ptrtoint ptr %bar1 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %bar1, align 4
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %134, align 8
  %wr32140 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %136, i32 0, i32 3
  %137 = ptrtoint ptr %wr32140 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %wr32140, align 4
  tail call void %138(ptr noundef %134, i32 noundef 20, i32 noundef 0) #6
  %139 = ptrtoint ptr %bar1 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %bar1, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %140, align 8
  %release143 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %142, i32 0, i32 1
  %143 = ptrtoint ptr %release143 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %release143, align 4
  tail call void %144(ptr noundef %140) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end107, %if.end102.cleanup_crit_edge, %if.end87.cleanup_crit_edge, %if.end80.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end107 ], [ %call, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ %call9, %if.end7.cleanup_crit_edge ], [ -12, %if.end12.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ], [ %call27, %if.end20.cleanup_crit_edge ], [ %call33, %if.end30.cleanup_crit_edge ], [ %call38, %if.end36.cleanup_crit_edge ], [ -12, %if.end41.cleanup_crit_edge ], [ %call84, %if.end80.cleanup_crit_edge ], [ %call99, %if.end87.cleanup_crit_edge ], [ %call104, %if.end102.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpuobj_new(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_new(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_boot(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_join(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_bar_bar2_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nv50_bar_dtor(ptr noundef returned %base) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mem = getelementptr inbounds %struct.nv50_bar, ptr %base, i32 0, i32 2
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bar1 = getelementptr inbounds %struct.nv50_bar, ptr %base, i32 0, i32 6
  tail call void @nvkm_gpuobj_del(ptr noundef %bar1) #6
  %bar1_vmm = getelementptr inbounds %struct.nv50_bar, ptr %base, i32 0, i32 5
  %2 = ptrtoint ptr %bar1_vmm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bar1_vmm, align 4
  %4 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mem, align 4
  %memory = getelementptr inbounds %struct.nvkm_gpuobj, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %memory, align 8
  tail call void @nvkm_vmm_part(ptr noundef %3, ptr noundef %7) #6
  tail call void @nvkm_vmm_unref(ptr noundef %bar1_vmm) #6
  %bar2 = getelementptr inbounds %struct.nv50_bar, ptr %base, i32 0, i32 8
  tail call void @nvkm_gpuobj_del(ptr noundef %bar2) #6
  %bar2_vmm = getelementptr inbounds %struct.nv50_bar, ptr %base, i32 0, i32 7
  %8 = ptrtoint ptr %bar2_vmm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bar2_vmm, align 4
  %10 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mem, align 4
  %memory4 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %memory4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %memory4, align 8
  tail call void @nvkm_vmm_part(ptr noundef %9, ptr noundef %13) #6
  tail call void @nvkm_vmm_unref(ptr noundef %bar2_vmm) #6
  %pgd = getelementptr inbounds %struct.nv50_bar, ptr %base, i32 0, i32 4
  tail call void @nvkm_gpuobj_del(ptr noundef %pgd) #6
  %pad = getelementptr inbounds %struct.nv50_bar, ptr %base, i32 0, i32 3
  tail call void @nvkm_gpuobj_del(ptr noundef %pad) #6
  tail call void @nvkm_gpuobj_del(ptr noundef %mem) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %base
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_gpuobj_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_part(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_unref(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_bar_new_(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i32 noundef %pgd_addr, ptr nocapture noundef writeonly %pbar) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 136) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nvkm_bar_ctor(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef nonnull %call7.i.i) #6
  %pgd_addr1 = getelementptr inbounds %struct.nv50_bar, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %pgd_addr1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %pgd_addr, ptr %pgd_addr1, align 8
  %2 = ptrtoint ptr %pbar to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %pbar, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_bar_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_bar_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pbar) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 136) #9
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.nv50_bar_new_.exit_crit_edge, label %if.end.i

entry.nv50_bar_new_.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %nv50_bar_new_.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nvkm_bar_ctor(ptr noundef nonnull @nv50_bar_func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef nonnull %call7.i.i.i) #6
  %pgd_addr1.i = getelementptr inbounds %struct.nv50_bar, ptr %call7.i.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %pgd_addr1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 5120, ptr %pgd_addr1.i, align 8
  %2 = ptrtoint ptr %pbar to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i.i, ptr %pbar, align 4
  br label %nv50_bar_new_.exit

nv50_bar_new_.exit:                               ; preds = %if.end.i, %entry.nv50_bar_new_.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -12, %entry.nv50_bar_new_.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_bar_flush(ptr noundef %base) #2 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_bar, ptr %base, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %lock = getelementptr inbounds %struct.nvkm_bar, ptr %base, i32 0, i32 2
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr12 = getelementptr i8, ptr %3, i32 13068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 1) #6, !srcloc !23
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #6
  %4 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %1, i64 noundef 2000000000, ptr noundef nonnull %_wait) #6
  br label %do.body13

do.body13:                                        ; preds = %do.cond18.do.body13_crit_edge, %entry
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr15 = getelementptr i8, ptr %6, i32 13068
  %7 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #6, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !33
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body13.if.end57_crit_edge, label %do.cond18

do.body13.if.end57_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

do.cond18:                                        ; preds = %do.body13
  %call19 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #6
  %cmp20 = icmp sgt i64 %call19, -1
  br i1 %cmp20, label %do.cond18.do.body13_crit_edge, label %do.end35

do.cond18.do.body13_crit_edge:                    ; preds = %do.cond18
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body13

do.end35:                                         ; preds = %do.cond18
  %8 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_wait, align 8
  %device37 = getelementptr inbounds %struct.nvkm_timer, ptr %9, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %device37 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device37, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %call38 = call ptr @dev_driver_string(ptr noundef %13) #6
  %14 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %_wait, align 8
  %device41 = getelementptr inbounds %struct.nvkm_timer, ptr %15, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %device41 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device41, align 4
  %dev42 = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev42, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end35.dev_name.exit_crit_edge

do.end35.dev_name.exit_crit_edge:                 ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end35.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %23, %if.end.i ], [ %21, %do.end35.dev_name.exit_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 42, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef %call38, ptr noundef %retval.0.i) #6
  br label %if.end57

if.end57:                                         ; preds = %dev_name.exit, %do.body13.if.end57_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #6
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @nv50_bar_oneinit.bar1_lock, !1, !"bar1_lock", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bar/nv50.c", i32 110, i32 31}
!2 = !{ptr @nv50_bar_oneinit.bar2_lock, !3, !"bar2_lock", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bar/nv50.c", i32 111, i32 31}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bar/nv50.c", i32 136, i32 19}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bar/nv50.c", i32 176, i32 19}
!8 = !{ptr @nv50_bar_func, !9, !"nv50_bar_func", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bar/nv50.c", i32 235, i32 1}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bar/nv50.c", i32 39, i32 2}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{i64 2156263950}
!23 = !{i64 5389585}
!24 = !{i64 2156265650}
!25 = !{i64 2156267343}
!26 = !{i64 2156269027}
!27 = !{i64 2156269509}
!28 = !{i64 2156270007}
!29 = !{i64 2156271696}
!30 = !{i64 2148598050, i64 2148598076, i64 2148598105, i64 2148598139, i64 2148598170, i64 2148598193}
!31 = !{i64 2156259585}
!32 = !{i64 5390003}
!33 = !{i64 2156261468}
