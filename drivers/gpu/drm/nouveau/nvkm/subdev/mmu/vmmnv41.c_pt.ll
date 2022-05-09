; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv41.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv41.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_vmm_desc = type { i32, i8, i8, i32, ptr }
%struct.nvkm_vmm_page = type { i8, ptr, i8 }
%struct.nvkm_vmm_desc_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_vmm = type { ptr, ptr, ptr, i32, %struct.kref, %struct.mutex, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_root, %struct.rb_root, i8, [51 x %struct.atomic_t], i32, ptr, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.nvkm_mmu = type { ptr, %struct.nvkm_subdev, i8, i32, [4 x %struct.anon.137], i32, [16 x %struct.anon.138], ptr, %struct.anon.139, %struct.anon.139, %struct.mutex, %struct.nvkm_device_oclass }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.137 = type { i8, i64 }
%struct.anon.138 = type { i8, i8 }
%struct.anon.139 = type { %struct.mutex, %struct.list_head }
%struct.nvkm_device_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.136, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.anon.136 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.nvkm_mmu_pt = type { %union.anon, ptr, i8, i16, i64, %struct.list_head }
%union.anon = type { ptr }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_vmm_map = type { ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, i64, i64, i64 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@nv41_vmm_desc_12 = internal constant { [2 x %struct.nvkm_vmm_desc], [32 x i8] } { [2 x %struct.nvkm_vmm_desc] [%struct.nvkm_vmm_desc { i32 1, i8 17, i8 4, i32 4096, ptr @nv41_vmm_desc_pgt }, %struct.nvkm_vmm_desc zeroinitializer], [32 x i8] zeroinitializer }, align 32
@nv41_vmm = internal constant { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [2 x %struct.nvkm_vmm_page] }, [32 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [2 x %struct.nvkm_vmm_page] } { ptr null, ptr null, ptr null, ptr @nv04_vmm_valid, ptr @nv41_vmm_flush, ptr null, ptr null, i64 0, [2 x %struct.nvkm_vmm_page] [%struct.nvkm_vmm_page { i8 12, ptr @nv41_vmm_desc_12, i8 4 }, %struct.nvkm_vmm_page zeroinitializer] }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv41.c\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s: timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@nv41_vmm_desc_pgt = internal constant { %struct.nvkm_vmm_desc_func, [56 x i8] } { %struct.nvkm_vmm_desc_func { ptr null, ptr @nv41_vmm_pgt_unmap, ptr null, ptr null, ptr null, ptr @nv41_vmm_pgt_dma, ptr @nv41_vmm_pgt_sgl, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [17 x i8] c"nv41_vmm_desc_12\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 75, i32 1 }
@___asan_gen_.6 = private unnamed_addr constant [9 x i8] c"nv41_vmm\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 96, i32 1 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 87, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant [18 x i8] c"nv41_vmm_desc_pgt\00", align 1
@___asan_gen_.16 = private constant [53 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv41.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 68, i32 1 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @nv41_vmm_desc_12, ptr @nv41_vmm, ptr @.str, ptr @.str.2, ptr @nv41_vmm_desc_pgt], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv41_vmm_desc_12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv41_vmm to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv41_vmm_desc_pgt to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv41_vmm_new(ptr noundef %mmu, i1 noundef zeroext %managed, i64 noundef %addr, i64 noundef %size, ptr noundef %argv, i32 noundef %argc, ptr noundef %key, ptr noundef %name, ptr noundef %pvmm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nv04_vmm_new_(ptr noundef nonnull @nv41_vmm, ptr noundef %mmu, i32 noundef 0, i1 noundef zeroext %managed, i64 noundef %addr, i64 noundef %size, ptr noundef %argv, i32 noundef %argc, ptr noundef %key, ptr noundef %name, ptr noundef %pvmm) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_vmm_new_(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_vmm_valid(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv41_vmm_flush(ptr nocapture noundef readonly %vmm, i32 noundef %level) #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mmu = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 1
  %0 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmu, align 4
  %device1 = getelementptr inbounds %struct.nvkm_mmu, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  %mutex = getelementptr inbounds %struct.nvkm_mmu, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 1050640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 34) #3, !srcloc !19
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #3
  %6 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %3, i64 noundef 2000000000, ptr noundef nonnull %_wait) #3
  br label %do.body3

do.body3:                                         ; preds = %do.cond6.do.body3_crit_edge, %entry
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr5 = getelementptr i8, ptr %8, i32 1050640
  %9 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #3, !srcloc !20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !21
  %and = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.cond6, label %do.body3.if.end41_crit_edge

do.body3.if.end41_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end41

do.cond6:                                         ; preds = %do.body3
  %call7 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #3
  %cmp = icmp sgt i64 %call7, -1
  br i1 %cmp, label %do.cond6.do.body3_crit_edge, label %do.end19

do.cond6.do.body3_crit_edge:                      ; preds = %do.cond6
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body3

do.end19:                                         ; preds = %do.cond6
  %10 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_wait, align 8
  %device21 = getelementptr inbounds %struct.nvkm_timer, ptr %11, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %device21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device21, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  %call22 = call ptr @dev_driver_string(ptr noundef %15) #3
  %16 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %_wait, align 8
  %device25 = getelementptr inbounds %struct.nvkm_timer, ptr %17, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %device25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device25, align 4
  %dev26 = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev26, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end19.dev_name.exit_crit_edge

do.end19.dev_name.exit_crit_edge:                 ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #5
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #5
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end19.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %25, %if.end.i ], [ %23, %do.end19.dev_name.exit_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 90, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef %call22, ptr noundef %retval.0.i) #3
  br label %if.end41

if.end41:                                         ; preds = %dev_name.exit, %do.body3.if.end41_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #3
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  call void @arm_heavy_mb() #3
  %26 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pri, align 4
  %add.ptr47 = getelementptr i8, ptr %27, i32 1050640
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 0) #3, !srcloc !19
  %28 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmu, align 4
  %mutex49 = getelementptr inbounds %struct.nvkm_mmu, ptr %29, i32 0, i32 10
  call void @mutex_unlock(ptr noundef %mutex49) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv41_vmm_pgt_unmap(ptr nocapture noundef readnone %vmm, ptr nocapture noundef readonly %pt, i32 noundef %ptei, i32 noundef %ptes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %ptei, 2
  %base = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %base, align 2
  %conv = zext i16 %1 to i32
  %add = add i32 %mul, %conv
  %memory = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 1
  %2 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %memory, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %acquire, align 4
  %call = tail call ptr %7(ptr noundef %3) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.cond.preheader, label %if.else, !prof !23

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ptes)
  %tobool21.not52 = icmp eq i32 %ptes, 0
  br i1 %tobool21.not52, label %for.cond.preheader.if.end27_crit_edge, label %for.body.preheader

for.cond.preheader.if.end27_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end27

for.body.preheader:                               ; preds = %for.cond.preheader
  %conv3 = zext i32 %add to i64
  %conv4 = zext i32 %ptes to i64
  br label %for.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %shl = shl i32 %ptes, 2
  %shr = lshr i32 %add, 2
  %arrayidx17 = getelementptr i32, ptr %call, i32 %shr
  tail call void @mmioset(ptr noundef %arrayidx17, i32 noundef 0, i32 noundef %shl) #3
  br label %if.end27

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %_c.154 = phi i64 [ %dec25, %for.body.for.body_crit_edge ], [ %conv4, %for.body.preheader ]
  %_a.053 = phi i64 [ %add26, %for.body.for.body_crit_edge ], [ %conv3, %for.body.preheader ]
  %8 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %memory, align 4
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wr32, align 4
  tail call void %13(ptr noundef %9, i64 noundef %_a.053, i32 noundef 0) #3
  %dec25 = add nsw i64 %_c.154, -1
  %add26 = add nuw nsw i64 %_a.053, 4
  %tobool21.not = icmp eq i64 %dec25, 0
  br i1 %tobool21.not, label %for.body.if.end27_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.body.if.end27_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end27

if.end27:                                         ; preds = %for.body.if.end27_crit_edge, %if.else, %for.cond.preheader.if.end27_crit_edge
  %14 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %memory, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %release, align 4
  tail call void %19(ptr noundef %15) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv41_vmm_pgt_dma(ptr nocapture noundef readnone %vmm, ptr nocapture noundef readonly %pt, i32 noundef %ptei, i32 noundef %ptes, ptr nocapture noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %memory = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 1
  %0 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %memory, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %acquire, align 4
  %call = tail call ptr %5(ptr noundef %1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ptes)
  %tobool.not17 = icmp eq i32 %ptes, 0
  br i1 %tobool.not17, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %dma = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 4
  %base = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %ptei.addr.019 = phi i32 [ %ptei, %while.body.lr.ph ], [ %inc, %while.body.while.body_crit_edge ]
  %ptes.addr.018 = phi i32 [ %ptes, %while.body.lr.ph ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add i32 %ptes.addr.018, -1
  %6 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma, align 8
  %incdec.ptr = getelementptr i32, ptr %7, i32 1
  store ptr %incdec.ptr, ptr %dma, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %shr = lshr i32 %9, 7
  %or = or i32 %shr, 1
  %inc = add i32 %ptei.addr.019, 1
  %mul = shl i32 %ptei.addr.019, 2
  %10 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %memory, align 4
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wr32, align 4
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %base, align 2
  %conv = zext i16 %17 to i32
  %add = add i32 %mul, %conv
  %conv5 = zext i32 %add to i64
  tail call void %15(ptr noundef %11, i64 noundef %conv5, i32 noundef %or) #3
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %18 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %memory, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %release, align 4
  tail call void %23(ptr noundef %19) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv41_vmm_pgt_sgl(ptr nocapture noundef readnone %vmm, ptr nocapture noundef readonly %pt, i32 noundef %ptei, i32 noundef %ptes, ptr nocapture noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %memory = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 1
  %0 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %memory, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %acquire, align 4
  %call = tail call ptr %5(ptr noundef %1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ptes)
  %tobool.not60 = icmp eq i32 %ptes, 0
  br i1 %tobool.not60, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %sgl = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 3
  %off = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 6
  %page = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 7
  %base.i = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %nv41_vmm_pgt_pte.exit.while.body_crit_edge, %while.body.lr.ph
  %ptei.addr.064 = phi i32 [ %ptei, %while.body.lr.ph ], [ %conv23, %nv41_vmm_pgt_pte.exit.while.body_crit_edge ]
  %ptes.addr.061 = phi i32 [ %ptes, %while.body.lr.ph ], [ %conv26, %nv41_vmm_pgt_pte.exit.while.body_crit_edge ]
  %6 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sgl, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_length, align 4
  %conv = zext i32 %9 to i64
  %10 = ptrtoint ptr %off to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %off, align 8
  %sub = sub i64 %conv, %11
  %12 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %page, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 4
  %sh_prom = zext i8 %15 to i64
  %shr = lshr i64 %sub, %sh_prom
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %7, i32 0, i32 3
  %16 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_address, align 4
  %conv4 = zext i32 %17 to i64
  %add = add i64 %11, %conv4
  %conv6 = zext i32 %ptes.addr.061 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %conv6)
  %cmp = icmp ugt i64 %shr, %conv6
  br i1 %cmp, label %do.body19.thread, label %do.body19

do.body19.thread:                                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  %conv2 = zext i8 %15 to i32
  %shl = shl i32 %ptes.addr.061, %conv2
  %conv11 = zext i32 %shl to i64
  %add13 = add i64 %11, %conv11
  %18 = ptrtoint ptr %off to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %add13, ptr %off, align 8
  br label %do.body.lr.ph.i

do.body19:                                        ; preds = %while.body
  %19 = ptrtoint ptr %off to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 0, ptr %off, align 8
  %call17 = tail call ptr @sg_next(ptr noundef %7) #3
  %20 = ptrtoint ptr %sgl to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call17, ptr %sgl, align 4
  %extract.t55 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extract.t55)
  %tobool.not1.i = icmp eq i32 %extract.t55, 0
  br i1 %tobool.not1.i, label %do.body19.nv41_vmm_pgt_pte.exit_crit_edge, label %do.body19.do.body.lr.ph.i_crit_edge

do.body19.do.body.lr.ph.i_crit_edge:              ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.lr.ph.i

do.body19.nv41_vmm_pgt_pte.exit_crit_edge:        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #5
  br label %nv41_vmm_pgt_pte.exit

do.body.lr.ph.i:                                  ; preds = %do.body19.do.body.lr.ph.i_crit_edge, %do.body19.thread
  %_ptes.0.off058 = phi i32 [ %ptes.addr.061, %do.body19.thread ], [ %extract.t55, %do.body19.do.body.lr.ph.i_crit_edge ]
  %shr.i = lshr i64 %add, 7
  %21 = trunc i64 %shr.i to i32
  %conv.i = or i32 %21, 1
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %ptei.addr.04.i = phi i32 [ %ptei.addr.064, %do.body.lr.ph.i ], [ %inc.i, %do.body.i.do.body.i_crit_edge ]
  %ptes.addr.03.i = phi i32 [ %_ptes.0.off058, %do.body.lr.ph.i ], [ %dec.i, %do.body.i.do.body.i_crit_edge ]
  %data.02.i = phi i32 [ %conv.i, %do.body.lr.ph.i ], [ %add7.i, %do.body.i.do.body.i_crit_edge ]
  %dec.i = add i32 %ptes.addr.03.i, -1
  %inc.i = add i32 %ptei.addr.04.i, 1
  %mul.i = shl i32 %ptei.addr.04.i, 2
  %22 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %memory, align 4
  %ptrs.i = getelementptr inbounds %struct.nvkm_memory, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %ptrs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ptrs.i, align 4
  %wr32.i = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %wr32.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wr32.i, align 4
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %base.i, align 2
  %conv3.i = zext i16 %29 to i32
  %add.i = add i32 %mul.i, %conv3.i
  %conv4.i = zext i32 %add.i to i64
  tail call void %27(ptr noundef %23, i64 noundef %conv4.i, i32 noundef %data.02.i) #3
  %add7.i = add i32 %data.02.i, 32
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.body.i.nv41_vmm_pgt_pte.exit_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i

do.body.i.nv41_vmm_pgt_pte.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %nv41_vmm_pgt_pte.exit

nv41_vmm_pgt_pte.exit:                            ; preds = %do.body.i.nv41_vmm_pgt_pte.exit_crit_edge, %do.body19.nv41_vmm_pgt_pte.exit_crit_edge
  %_ptes.0.off059 = phi i32 [ 0, %do.body19.nv41_vmm_pgt_pte.exit_crit_edge ], [ %_ptes.0.off058, %do.body.i.nv41_vmm_pgt_pte.exit_crit_edge ]
  %conv23 = add i32 %_ptes.0.off059, %ptei.addr.064
  %conv26 = sub i32 %ptes.addr.061, %_ptes.0.off059
  %tobool.not = icmp eq i32 %conv26, 0
  br i1 %tobool.not, label %nv41_vmm_pgt_pte.exit.while.end_crit_edge, label %nv41_vmm_pgt_pte.exit.while.body_crit_edge

nv41_vmm_pgt_pte.exit.while.body_crit_edge:       ; preds = %nv41_vmm_pgt_pte.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

nv41_vmm_pgt_pte.exit.while.end_crit_edge:        ; preds = %nv41_vmm_pgt_pte.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.end:                                        ; preds = %nv41_vmm_pgt_pte.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %30 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %memory, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %release, align 4
  tail call void %35(ptr noundef %31) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @nv41_vmm, !1, !"nv41_vmm", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv41.c", i32 96, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv41.c", i32 87, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @nv41_vmm_desc_12, !6, !"nv41_vmm_desc_12", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv41.c", i32 75, i32 1}
!7 = !{ptr @nv41_vmm_desc_pgt, !8, !"nv41_vmm_desc_pgt", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv41.c", i32 68, i32 1}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{i64 2156271005}
!19 = !{i64 5405669}
!20 = !{i64 5406087}
!21 = !{i64 2156272880}
!22 = !{i64 2156274115}
!23 = !{!"branch_weights", i32 1, i32 2000}
