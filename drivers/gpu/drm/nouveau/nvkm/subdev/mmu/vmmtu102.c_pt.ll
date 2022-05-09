; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmtu102.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmtu102.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_vmm_desc = type { i32, i8, i8, i32, ptr }
%struct.nvkm_vmm_page = type { i8, ptr, i8 }
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
%struct.nvkm_mmu_pt = type { %union.anon, ptr, i8, i16, i64, %struct.list_head }
%union.anon = type { ptr }
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

@gp100_vmm_desc_16 = external dso_local constant [0 x %struct.nvkm_vmm_desc], align 4
@gp100_vmm_desc_12 = external dso_local constant [0 x %struct.nvkm_vmm_desc], align 4
@tu102_vmm = internal constant { <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, [7 x %struct.nvkm_vmm_page] }>, [36 x i8] } { <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, [7 x %struct.nvkm_vmm_page] }> <{ ptr @gv100_vmm_join, ptr @gf100_vmm_part, ptr @gf100_vmm_aper, ptr @gp100_vmm_valid, ptr @tu102_vmm_flush, ptr @gp100_vmm_mthd, ptr null, [4 x i8] undef, i64 0, [7 x %struct.nvkm_vmm_page] [%struct.nvkm_vmm_page { i8 47, ptr getelementptr (i8, ptr @gp100_vmm_desc_16, i64 64), i8 1 }, %struct.nvkm_vmm_page { i8 38, ptr getelementptr (i8, ptr @gp100_vmm_desc_16, i64 48), i8 1 }, %struct.nvkm_vmm_page { i8 29, ptr getelementptr (i8, ptr @gp100_vmm_desc_16, i64 32), i8 1 }, %struct.nvkm_vmm_page { i8 21, ptr getelementptr (i8, ptr @gp100_vmm_desc_16, i64 16), i8 11 }, %struct.nvkm_vmm_page { i8 16, ptr @gp100_vmm_desc_16, i8 11 }, %struct.nvkm_vmm_page { i8 12, ptr @gp100_vmm_desc_12, i8 7 }, %struct.nvkm_vmm_page zeroinitializer] }>, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmtu102.c\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s: timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [10 x i8] c"tu102_vmm\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 52, i32 1 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private constant [54 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmtu102.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 43, i32 2 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @tu102_vmm, ptr @.str, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tu102_vmm to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tu102_vmm_new(ptr noundef %mmu, i1 noundef zeroext %managed, i64 noundef %addr, i64 noundef %size, ptr noundef %argv, i32 noundef %argc, ptr noundef %key, ptr noundef %name, ptr noundef %pvmm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gp100_vmm_new_(ptr noundef nonnull @tu102_vmm, ptr noundef %mmu, i1 noundef zeroext %managed, i64 noundef %addr, i64 noundef %size, ptr noundef %argv, i32 noundef %argc, ptr noundef %key, ptr noundef %name, ptr noundef %pvmm) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp100_vmm_new_(ptr noundef, ptr noundef, i1 noundef zeroext, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gv100_vmm_join(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_vmm_part(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_vmm_aper(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp100_vmm_valid(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tu102_vmm_flush(ptr noundef %vmm, i32 noundef %depth) #0 align 64 {
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
  %.neg = mul i32 %depth, 2130706432
  %shl = add i32 %.neg, 83886080
  %arrayidx = getelementptr %struct.nvkm_vmm, ptr %vmm, i32 0, i32 14, i32 16
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %spec.select.v = select i1 %tobool.not, i32 1, i32 5
  %spec.select = or i32 %spec.select.v, %shl
  %6 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmu, align 4
  %mutex = getelementptr inbounds %struct.nvkm_mmu, ptr %7, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  tail call void @arm_heavy_mb() #3
  %pd = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 8
  %8 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pd, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %addr = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %addr, align 8
  %shr = lshr i64 %13, 8
  %conv = trunc i64 %shr to i32
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 12071072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %conv) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %16 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pri, align 4
  %add.ptr9 = getelementptr i8, ptr %17, i32 12071076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 0) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void @arm_heavy_mb() #3
  %18 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri, align 4
  %add.ptr14 = getelementptr i8, ptr %19, i32 1052264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 0) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %or18 = or i32 %spec.select, -2147483648
  %20 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri, align 4
  %add.ptr20 = getelementptr i8, ptr %21, i32 12071088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %or18) #3, !srcloc !15
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #3
  %22 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %3, i64 noundef 2000000000, ptr noundef nonnull %_wait) #3
  br label %do.body21

do.body21:                                        ; preds = %do.cond28.do.body21_crit_edge, %entry
  %23 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri, align 4
  %add.ptr23 = getelementptr i8, ptr %24, i32 12071088
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #3, !srcloc !19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !20
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %tobool25.not = icmp sgt i32 %25, -1
  br i1 %tobool25.not, label %do.body21.if.end66_crit_edge, label %do.cond28

do.body21.if.end66_crit_edge:                     ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end66

do.cond28:                                        ; preds = %do.body21
  %call29 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #3
  %cmp = icmp sgt i64 %call29, -1
  br i1 %cmp, label %do.cond28.do.body21_crit_edge, label %do.end44

do.cond28.do.body21_crit_edge:                    ; preds = %do.cond28
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body21

do.end44:                                         ; preds = %do.cond28
  %26 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %_wait, align 8
  %device46 = getelementptr inbounds %struct.nvkm_timer, ptr %27, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %device46 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device46, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 8
  %call47 = call ptr @dev_driver_string(ptr noundef %31) #3
  %32 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %_wait, align 8
  %device50 = getelementptr inbounds %struct.nvkm_timer, ptr %33, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %device50 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device50, align 4
  %dev51 = getelementptr inbounds %struct.nvkm_device, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev51, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %39, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end44.dev_name.exit_crit_edge

do.end44.dev_name.exit_crit_edge:                 ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #5
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #5
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %37, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end44.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %41, %if.end.i ], [ %39, %do.end44.dev_name.exit_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 46, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef %call47, ptr noundef %retval.0.i) #3
  br label %if.end66

if.end66:                                         ; preds = %dev_name.exit, %do.body21.if.end66_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #3
  %42 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mmu, align 4
  %mutex69 = getelementptr inbounds %struct.nvkm_mmu, ptr %43, i32 0, i32 10
  call void @mutex_unlock(ptr noundef %mutex69) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp100_vmm_mthd(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @tu102_vmm, !1, !"tu102_vmm", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmtu102.c", i32 52, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmtu102.c", i32 43, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{i64 2156249844}
!15 = !{i64 5405082}
!16 = !{i64 2156250272}
!17 = !{i64 2156250685}
!18 = !{i64 2156251112}
!19 = !{i64 5405500}
!20 = !{i64 2156253002}
