; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/mga/mga_irq.c_pt.bc'
source_filename = "../drivers/gpu/drm/mga/mga_irq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.67, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.73, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.67 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.73 = type { i32, ptr }
%struct.drm_mga_private = type { %struct.drm_mga_primary_buffer, ptr, ptr, ptr, i32, [16 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.drm_mga_primary_buffer = type { ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_local_map = type { i32, i32, i32, i32, ptr, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"tried to enable vblank on non-existent crtc %u\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"tried to disable vblank on non-existent crtc %u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/mga/mga_irq.c\00", [34 x i8] zeroinitializer }, align 32
@mga_driver_irq_postinstall.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&dev_priv->fence_queue\00", [41 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 94, i32 3 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 107, i32 3 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 128, i32 2 }
@___asan_gen_.13 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private constant [33 x i8] c"../drivers/gpu/drm/mga/mga_irq.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 150, i32 2 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @mga_driver_irq_postinstall.__key, ptr @.str.3], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mga_driver_irq_postinstall.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mga_get_vblank_counter(ptr nocapture noundef readonly %dev, i32 noundef %pipe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pipe)
  %cmp.not = icmp eq i32 %pipe, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %vbl_received = getelementptr inbounds %struct.drm_mga_private, ptr %1, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %vbl_received, i32 noundef 4) #5
  %2 = ptrtoint ptr %vbl_received to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %vbl_received, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mga_driver_irq_handler(i32 noundef %irq, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %arg, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %mmio = getelementptr inbounds %struct.drm_mga_private, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handle, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 7700
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !18
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !19
  %and = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio, align 4
  %handle3 = getelementptr inbounds %struct.drm_local_map, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %handle3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %handle3, align 4
  %add.ptr4 = getelementptr i8, ptr %11, i32 7704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 536870912) #5, !srcloc !21
  %vbl_received = getelementptr inbounds %struct.drm_mga_private, ptr %1, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %vbl_received, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %vbl_received, i32 1, i32 3, i32 1) #5
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %vbl_received, ptr %vbl_received, i32 1, ptr elementtype(i32) %vbl_received) #5, !srcloc !22
  %call5 = tail call zeroext i1 @drm_handle_vblank(ptr noundef %arg, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %and6 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end41, label %if.then8

if.then8:                                         ; preds = %if.end
  %13 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio, align 4
  %handle12 = getelementptr inbounds %struct.drm_local_map, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %handle12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %handle12, align 4
  %add.ptr13 = getelementptr i8, ptr %16, i32 7768
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  %18 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio, align 4
  %handle20 = getelementptr inbounds %struct.drm_local_map, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %handle20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %handle20, align 4
  %add.ptr21 = getelementptr i8, ptr %21, i32 7772
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !25
  tail call void @arm_heavy_mb() #5
  %23 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio, align 4
  %handle29 = getelementptr inbounds %struct.drm_local_map, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %handle29 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %handle29, align 4
  %add.ptr30 = getelementptr i8, ptr %26, i32 7704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 16777216) #5, !srcloc !21
  %27 = xor i32 %22, %17
  %28 = and i32 %27, -50331649
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.not = icmp eq i32 %28, 0
  br i1 %cmp.not, label %if.then8.if.end41.thread_crit_edge, label %do.body34

if.then8.if.end41.thread_crit_edge:               ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41.thread

do.body34:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %29 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmio, align 4
  %handle38 = getelementptr inbounds %struct.drm_local_map, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %handle38 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %handle38, align 4
  %add.ptr39 = getelementptr i8, ptr %32, i32 7772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %22) #5, !srcloc !21
  br label %if.end41.thread

if.end41.thread:                                  ; preds = %do.body34, %if.then8.if.end41.thread_crit_edge
  %last_fence_retired = getelementptr inbounds %struct.drm_mga_private, ptr %1, i32 0, i32 17
  %call.i.i59 = tail call zeroext i1 @__kasan_check_write(ptr noundef %last_fence_retired, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %last_fence_retired, i32 1, i32 3, i32 1) #5
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %last_fence_retired, ptr %last_fence_retired, i32 1, ptr elementtype(i32) %last_fence_retired) #5, !srcloc !22
  %fence_queue = getelementptr inbounds %struct.drm_mga_private, ptr %1, i32 0, i32 16
  tail call void @__wake_up(ptr noundef %fence_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  br label %34

if.end41:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %not.tobool.not = xor i1 %tobool.not, true
  %spec.select = zext i1 %not.tobool.not to i32
  br label %34

34:                                               ; preds = %if.end41, %if.end41.thread
  %35 = phi i32 [ 1, %if.end41.thread ], [ %spec.select, %if.end41 ]
  ret i32 %35
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_handle_vblank(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mga_enable_vblank(ptr nocapture noundef readonly %dev, i32 noundef %pipe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pipe)
  %cmp.not = icmp eq i32 %pipe, 0
  br i1 %cmp.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %pipe) #5
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %mmio = getelementptr inbounds %struct.drm_mga_private, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handle, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 7708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 553648128) #5, !srcloc !21
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mga_disable_vblank(ptr nocapture noundef readnone %dev, i32 noundef %pipe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pipe)
  %cmp.not = icmp eq i32 %pipe, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, i32 noundef %pipe) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mga_driver_fence_wait(ptr nocapture noundef readonly %dev, ptr nocapture noundef %sequence) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 131) #5
  %last_fence_retired = getelementptr inbounds %struct.drm_mga_private, ptr %1, i32 0, i32 17
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %last_fence_retired, i32 noundef 4) #5
  %2 = ptrtoint ptr %last_fence_retired to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %last_fence_retired, align 4
  %4 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sequence, align 4
  %sub = sub i32 %3, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388609, i32 %sub)
  %cmp = icmp ult i32 %sub, 8388609
  br i1 %cmp, label %entry.if.end37_crit_edge, label %if.then9

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then9:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #5
  %6 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #5
  %fence_queue = getelementptr inbounds %struct.drm_mga_private, ptr %1, i32 0, i32 16
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.then9
  %__ret10.0 = phi i32 [ 300, %if.then9 ], [ %call34, %cleanup ]
  %call12 = call i32 @prepare_to_wait_event(ptr noundef %fence_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #5
  %call.i.i52 = call zeroext i1 @__kasan_check_read(ptr noundef %last_fence_retired, i32 noundef 4) #5
  %7 = ptrtoint ptr %last_fence_retired to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %last_fence_retired, align 4
  %9 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sequence, align 4
  %sub16 = sub i32 %8, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388609, i32 %sub16)
  %cmp17 = icmp ult i32 %sub16, 8388609
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret10.0)
  %tobool21.not = icmp eq i32 %__ret10.0, 0
  %11 = select i1 %cmp17, i1 %tobool21.not, i1 false
  %__ret10.1 = select i1 %11, i32 1, i32 %__ret10.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret10.1)
  %tobool27.not = icmp eq i32 %__ret10.1, 0
  %12 = select i1 %cmp17, i1 true, i1 %tobool27.not
  br i1 %12, label %for.end, label %cleanup

cleanup:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  %call34 = call i32 @schedule_timeout(i32 noundef %__ret10.1) #5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  call void @finish_wait(ptr noundef %fence_queue, ptr noundef nonnull %__wq_entry) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #5
  br label %if.end37

if.end37:                                         ; preds = %for.end, %entry.if.end37_crit_edge
  %cur_fence.0 = phi i32 [ %3, %entry.if.end37_crit_edge ], [ %8, %for.end ]
  %13 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cur_fence.0, ptr %sequence, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mga_driver_irq_preinstall(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !28
  tail call void @arm_heavy_mb() #5
  %mmio = getelementptr inbounds %struct.drm_mga_private, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handle, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 7708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio, align 4
  %handle5 = getelementptr inbounds %struct.drm_local_map, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %handle5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %handle5, align 4
  %add.ptr6 = getelementptr i8, ptr %9, i32 7704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 -1) #5, !srcloc !21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mga_driver_irq_postinstall(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %fence_queue = getelementptr inbounds %struct.drm_mga_private, ptr %1, i32 0, i32 16
  tail call void @__init_waitqueue_head(ptr noundef %fence_queue, ptr noundef nonnull @.str.3, ptr noundef nonnull @mga_driver_irq_postinstall.__key) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %mmio = getelementptr inbounds %struct.drm_mga_private, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handle, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 7708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #5, !srcloc !21
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mga_driver_irq_uninstall(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  %mmio = getelementptr inbounds %struct.drm_mga_private, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handle, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 7708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !21
  %irq_enabled = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 55
  %6 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %irq_enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/mga/mga_irq.c", i32 94, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/mga/mga_irq.c", i32 107, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/mga/mga_irq.c", i32 128, i32 2}
!6 = !{ptr @mga_driver_irq_postinstall.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/mga/mga_irq.c", i32 150, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{i64 5002816}
!19 = !{i64 2155090020}
!20 = !{i64 2155090378}
!21 = !{i64 5002398}
!22 = !{i64 2148684490, i64 2148684516, i64 2148684545, i64 2148684579, i64 2148684610, i64 2148684633}
!23 = !{i64 2155091313}
!24 = !{i64 2155092013}
!25 = !{i64 2155092362}
!26 = !{i64 2155092928}
!27 = !{i64 2155093748}
!28 = !{i64 2155096856}
!29 = !{i64 2155097389}
!30 = !{i64 2155098134}
!31 = !{i64 2155098686}
